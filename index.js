const express = require('express');
const http = require('http');
const path = require('path');
const cookieSession = require('cookie-session');
const bcrypt = require('bcrypt');
const { body, validationResult } = require('express-validator');
const multer = require('multer');
const dbConnection = require('./database');
const socketIo = require('socket.io');

const app = express();
const server = http.createServer(app);
const io = socketIo(server);

app.use(express.urlencoded({ extended: false }));

// Serve static files from the public directory
app.use(express.static(path.join(__dirname, 'public')));

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(cookieSession({
    name: 'session',
    keys: ['key1', 'key2'],
    maxAge: 3600 * 1000  // 1hr
}));

// Set storage engine
const storage = multer.diskStorage({
    destination: './public/uploads',
    filename: function (req, file, cb) {
        cb(null, Date.now() + path.extname(file.originalname));
    }
});

// Init upload
const upload = multer({
    storage: storage,
    limits: { fileSize: 100000000 }, // 100 MB
    fileFilter: function (req, file, cb) {
        checkFileType(file, cb);
    }
}).single('product_image');

// Check file type
function checkFileType(file, cb) {
    const filetypes = /jpeg|jpg|png|gif/;
    const extname = filetypes.test(path.extname(file.originalname).toLowerCase());
    const mimetype = filetypes.test(file.mimetype);

    if (mimetype && extname) {
        return cb(null, true);
    } else {
        cb('Error: Images Only!');
    }
}

// Middleware to check if user is logged in
const ifNotLoggedIn = (req, res, next) => {
    if (!req.session.isLoggedIn) {
        return res.render('login-register');
    }
    next();
};

const ifLoggedIn = (req, res, next) => {
    if (req.session.isLoggedIn) {
        return res.redirect('/home');
    }
    next();
};

// Root page
app.get('/', ifNotLoggedIn, (req, res) => {
    console.log('User name:', req.session.userName); // Log the username
    dbConnection.execute("SELECT products.*, users.name AS user_name FROM products JOIN users ON products.user_id = users.id")
        .then(([rows]) => {
            res.render('home', {
                name: req.session.userName,
                products: rows
            });
        })
        .catch(err => {
            console.log(err);
        });
});

// Upload product page
app.get('/upload', ifNotLoggedIn, (req, res) => {
    res.render('upload', {
        name: req.session.userName // ส่งค่าชื่อผู้ใช้ไปยังหน้า upload.ejs
    });
});

app.post('/upload', ifNotLoggedIn, (req, res) => {
    upload(req, res, (err) => {
        if (err) {
            return res.render('upload', {
                msg: err,
                name: req.session.userName
            });
        }

        if (!req.file) {
            return res.render('upload', {
                msg: 'Error: No File Selected!',
                name: req.session.userName
            });
        }

        const { product_name, product_description, product_location, product_status } = req.body;
        const product_image = `/uploads/${req.file.filename}`;

        dbConnection.execute(
            'INSERT INTO products (name, description, image, location, status, user_id) VALUES (?, ?, ?, ?, ?, ?)',
            [product_name, product_description, product_image, product_location, product_status, req.session.userID]
        ).then(result => {
            res.redirect('/');
        }).catch(err => {
            console.error(err);
            res.send('Error occurred while uploading the product.');
        });
    });
});

// Register page
app.post('/register', ifLoggedIn, [
    body('user_email', 'Invalid Email Address!').isEmail().custom((value) => {
        return dbConnection.execute('SELECT email FROM users WHERE email =?', [value])
            .then(([rows]) => {
                if (rows.length > 0) {
                    return Promise.reject('This email already in use!');
                }
                return true;
            });
    }),
    body('user_name', 'Username is empty!').trim().not().isEmpty(),
    body('user_pass', 'The password must be of minimum length 6 characters').trim().isLength({ min: 6 }),

], (req, res, next) => {
    const validation_result = validationResult(req);
    const { user_name, user_pass, user_email } = req.body;

    if (validation_result.isEmpty()) {
        bcrypt.hash(user_pass, 12).then((hash_pass) => {
            dbConnection.execute("INSERT INTO users (name, email, password) VALUES(?,?,?)", [user_name, user_email, hash_pass])
                .then(result => {
                    res.send('<div style="font-size: 2rem; text-align: center;">Your account has been created successfully, Now you can <a href="/">Login</a></div>');
                }).catch(err => {
                    if (err) throw err;
                });
        }).catch(err => {
            if (err) throw err;
        });

    } else {
        let allErrors = validation_result.errors.map((error) => {
            return error.msg;
        });

        res.render('register', {
            register_error: allErrors,
            old_data: req.body
        });
    }
});

// Login page
app.post('/', ifLoggedIn, [
    body('user_email').custom((value) => {
        return dbConnection.execute("SELECT email FROM users WHERE email =?", [value])
            .then(([rows]) => {
                if (rows.length == 1) {
                    return true;
                }
                return Promise.reject('Invalid Email Address!');
            });
    }),
    body('user_pass', 'Password is empty').trim().not().isEmpty(),

], (req, res) => {
    const validation_result = validationResult(req);
    const { user_pass, user_email } = req.body;
    if (validation_result.isEmpty()) {
        dbConnection.execute("SELECT * FROM users WHERE email = ?", [user_email])
            .then(([rows]) => {

                bcrypt.compare(user_pass, rows[0].password).then(compare_result => {
                    if (compare_result === true) {
                        req.session.isLoggedIn = true;
                        req.session.userID = rows[0].id; // Store userID in session
                        req.session.userName = rows[0].name; // Store username in session
                        res.redirect('/');
                    } else {
                        res.render('login-register', {
                            login_errors: ['Invalid Password']
                        });
                    }
                }).catch(err => {
                    if (err) throw err;
                });
            }).catch(err => {
                if (err) throw err;
            });
    } else {
        let allErrors = validation_result.errors.map((error) => {
            return error.msg;
        });

        res.render('login-register', {
            login_errors: allErrors
        });
    }
});

// Logout

app.get('/logout', (req, res) => {
    
    req.session = null;
    res.redirect('/');
});

// Product details page
app.get('/product/:id', (req, res) => {
    const productId = req.params.id;
    const userID = req.session.userID; // ดึง userID จากเซสชัน
    dbConnection.execute("SELECT products.*, users.name AS user_name FROM products JOIN users ON products.user_id = users.id WHERE products.id = ?", [productId])
        .then(([rows]) => {
            if (rows.length > 0) {
                res.render('product', {
                    product: rows[0],
                    name: req.session.userName, // ส่งค่าชื่อผู้ใช้ไปยังหน้า product.ejs
                    userID: userID // ส่งค่า userID ไปยังหน้า product.ejs
                });
            } else {
                res.status(404).send('Product not found');
            }
        }).catch(err => {
            console.error(err);
            res.status(500).send('Error occurred while fetching the product.');
        });
});
// Register page
app.get('/register', (req, res) => {
    res.render('register'); // Render the 'register.ejs' template
});




app.get('/settings', function (req, res) {
    res.render('settings', {
        name: req.session.userName // ส่งค่าชื่อผู้ใช้ไปยังหน้า notifications.ejs
    });
});


app.get('/notifications', function (req, res) {
    res.render('notifications', {
        name: req.session.userName // ส่งค่าชื่อผู้ใช้ไปยังหน้า notifications.ejs
    });
});


// Handle chat message
io.on('connection', (socket) => {
    console.log('A user connected');
    const userName = socket.handshake.query.userName;

    socket.on('disconnect', () => {
        console.log('User disconnected');
    });

    socket.on('chat message', (msg) => {
        const userID = msg.userID; // Assuming userID is sent from client side
        const messageData = {
            user_id: userID,
            user_name: userName,
            message: msg.message,
            product_user: msg.productUser,
            timestamp: new Date(), // Add timestamp to message data
            time: new Date().toLocaleTimeString()
        };
        // Save message to database
        dbConnection.execute(
            'INSERT INTO chat_messages (user_id, user_name, message, product_user, timestamp) VALUES (?, ?, ?, ?, ?)',
            [messageData.user_id, messageData.user_name, messageData.message, messageData.product_user, messageData.timestamp]
        ).then(result => {
            io.emit('chat message', messageData); // ส่ง messageData ที่มีข้อมูลเวลาไปยังไคลเอนต์
        }).catch(err => {
            console.error(err);
        });
    });
});

// Get chat history and render the save-offer page
app.get('/save-offer', ifNotLoggedIn, (req, res) => {
    dbConnection.execute(
        'SELECT * FROM chat_messages WHERE user_id = ? ORDER BY timestamp ASC',
        [req.session.userID] // เพิ่ม req.session.userID เป็นค่า parameter ใน SQL query
    ).then(([rows]) => {
        res.render('save-offer', {
            name: req.session.userName,
            messages: rows // Pass the messages data to the save-offer template
        });
    }).catch(err => {
        console.error(err);
        res.status(500).send('Error occurred while fetching chat history.');
    });
});

// Get chat history for specific user and product user

app.get('/chat-history/:productUser', ifNotLoggedIn, (req, res) => {
    const productUser = req.params.productUser;
    dbConnection.execute(
        'SELECT * FROM chat_messages WHERE (user_name = ? AND product_user = ?) OR (user_name = ? AND product_user = ?) ORDER BY timestamp ASC',
        [req.session.userName, productUser, productUser, req.session.userName]
    ).then(([rows]) => {
        // Format timestamp before sending to client
        const messages = rows.map(row => ({
            ...row,
            time: new Date(row.timestamp).toLocaleString()
        }));
        res.json(messages);
    }).catch(err => {
        console.error(err);
        res.status(500).send('Error occurred while fetching chat history.');
    });
});


// สร้างตัวแปร chatHistory เพื่อเก็บประวัติแชท
let chatHistory = {};

io.on('connection', function(socket) {
    socket.on('chat message', function(msg) {
        const userA = msg.name; // ชื่อผู้ใช้ที่ส่งข้อความ
        const userB = msg.productUser; // ผู้ใช้ที่ถูกส่งถึง
        const timestamp = new Date().toLocaleString(); // เวลาของข้อความ

        // ตรวจสอบว่าเป็นการสนทนาระหว่าง userA กับ userB หรือ userB กับ userA
        if (!chatHistory[userA]) {
            chatHistory[userA] = {};
        }
        if (!chatHistory[userB]) {
            chatHistory[userB] = {};
        }

        // เพิ่มข้อความลงในประวัติแชทของทั้งสองฝ่าย
        if (!chatHistory[userA][userB]) {
            chatHistory[userA][userB] = [];
        }
        if (!chatHistory[userB][userA]) {
            chatHistory[userB][userA] = [];
        }

        chatHistory[userA][userB].push({ message: msg.message, timestamp: timestamp });
        chatHistory[userB][userA].push({ message: msg.message, timestamp: timestamp });

        // ส่งข้อความกลับไปยังทุกคนในห้องแชท
        io.emit('chat message', msg);
    });
});

// Search products
app.get('/search', ifNotLoggedIn, (req, res) => {
    const query = req.query.query;
    if (!query) {
        return res.redirect('/');
    }
    dbConnection.execute(
        "SELECT products.*, users.name AS user_name FROM products JOIN users ON products.user_id = users.id WHERE products.name LIKE ? OR products.description LIKE ?",
        [`%${query}%`, `%${query}%`]
    ).then(([rows]) => {
        res.render('home', {
            name: req.session.userName,
            products: rows
        });
    }).catch(err => {
        console.error(err);
        res.status(500).send('Error occurred while searching for products.');
    });
});

// Start server
server.listen(3000, () => console.log("Server is running..."));
