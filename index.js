const express = require('express');
const path = require('path');
const cookieSession = require('cookie-session');
const bcrypt = require('bcrypt');
const dbConnection = require('./database');
const { body, validationResult } = require('express-validator');
const multer = require('multer');

const app = express();
app.use(express.urlencoded({ extended: false }));

// เสิร์ฟไฟล์สาธารณะจากโฟลเดอร์ public
app.use(express.static(path.join(__dirname, 'public')));

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(cookieSession({
    name: 'session',
    keys: ['key1', 'key2'],
    maxAge: 3600 * 100  // 1hr
}));

// Setting up storage for uploaded images
const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'public/uploads/');
    },
    filename: function (req, file, cb) {
        cb(null, Date.now() + path.extname(file.originalname)); // Rename the file to avoid conflicts
    }
});

const upload = multer({ storage: storage });

// ตรวจสอบการล็อกอิน
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

// root page
app.get('/', ifNotLoggedIn, (req, res, next) => {
    dbConnection.execute("SELECT name FROM users WHERE id = ?", [req.session.userID])
        .then(([rows]) => {
            res.render('home', {
                name: rows[0].name
            });
        });
});

// อัพโหลดสินค้า
app.get('/upload', ifNotLoggedIn, (req, res) => {
    res.render('upload');
});

app.post('/upload', ifNotLoggedIn, upload.single('product_image'), (req, res) => {
    const { product_name, product_description } = req.body;
    const product_image = '/uploads/' + req.file.filename; // URL for the image

    dbConnection.execute(
        "INSERT INTO products (name, description, image_url) VALUES (?, ?, ?)",
        [product_name, product_description, product_image]
    ).then(result => {
        res.send('Product uploaded successfully!');
    }).catch(err => {
        if (err) throw err;
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
            })
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
                    res.send('Your account has been created successfully, Now you can <a href="/">Login</a>');
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
                return Promise.reject('Invalid Email Address!')
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
                        req.session.userID = rows[0].id;
                        res.redirect('/');
                    } else {
                        res.render('login-register', {
                            login_errors: ['Invalid Password']
                        })
                    }
                }).catch(err => {
                    if (err) throw err;
                })
            }).catch(err => {
                if (err) throw err;
            })
    } else {
        let allErrors = validation_result.errors.map((error) => {
            return error.msg;
        })

        res.render('login-register', {
            login_errors: allErrors
        })
    }
})

// Logout
app.get('/logout', (req, res) => {

    req.session = null;
    res.redirect('/');
})



app.get('/register', (req, res) => {
    
    res.render('register'); // ส่งไฟล์เทมเพลต 'register.ejs' ไปแสดงผล
});

app.get('/save-offer', function (req, res) {
    res.render('save-offer')
})

app.get('/settings', function (req, res) {
    res.render('settings')
})

app.get('/notifications', function (req, res) {
    res.render('notifications')
})

app.listen(3000, () => console.log("Server is running..."))
