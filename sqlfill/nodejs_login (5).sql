-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 10:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodejs_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_user` varchar(255) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `user_id`, `user_name`, `message`, `timestamp`, `product_user`, `image_id`, `image_url`) VALUES
(404, 9, 'Graves', 'ห', '2024-06-21 20:13:28', 'Tobias', NULL, NULL),
(405, 9, 'Graves', 'ดกเกด', '2024-06-21 20:13:29', 'Tobias', NULL, NULL),
(406, 9, 'Graves', 'ฟหกฟห', '2024-06-21 20:13:30', 'Tobias', NULL, NULL),
(408, 9, 'Graves', 'หฟกหกฟ', '2024-06-21 20:13:33', 'Tobias', NULL, NULL),
(409, 9, 'Graves', 'ฟหกฟหก', '2024-06-21 20:13:34', 'Tobias', NULL, NULL),
(410, 12, 'Tobias', 'หฟกกหฟ', '2024-06-21 20:13:38', 'Graves', NULL, NULL),
(411, 12, 'Tobias', 'ฟหกหกฟ', '2024-06-21 20:13:39', 'Graves', NULL, NULL),
(413, 12, 'Tobias', 'หฟก', '2024-06-21 20:13:42', 'Graves', NULL, NULL),
(414, 12, 'Tobias', 'ฟหกฟห', '2024-06-21 20:13:43', 'Graves', NULL, NULL),
(416, 9, 'Graves', 'ฟหกฟ', '2024-06-21 20:13:51', 'Tobias', NULL, NULL),
(417, 9, 'Graves', 'ฟหกฟฟหก', '2024-06-21 20:13:51', 'Tobias', NULL, NULL),
(420, 9, 'Graves', 'ฟหกฟหก', '2024-06-21 20:14:04', 'Tobias', NULL, NULL),
(421, 12, 'Tobias', 'ห', '2024-06-21 20:16:21', 'Graves', NULL, NULL),
(422, 9, 'Graves', 'ห', '2024-06-21 20:16:53', 'Tobias', NULL, NULL),
(423, 9, 'Graves', '', '2024-06-21 20:16:56', 'Tobias', NULL, '/uploads/1719001016311-448890476_1039155504239859_827343970412446977_n.jpg'),
(424, 9, 'Graves', 'ss', '2024-06-21 20:22:20', 'Tobias', NULL, NULL),
(425, 9, 'Graves', 'afa', '2024-06-21 20:22:22', 'Tobias', NULL, NULL),
(426, 9, 'Graves', '', '2024-06-21 20:22:24', 'Tobias', NULL, '/uploads/1719001344631-Logoo2.png'),
(427, 12, 'Tobias', 'ff', '2024-06-21 20:22:34', 'Graves', NULL, NULL),
(428, 12, 'Tobias', '', '2024-06-21 20:22:36', 'Graves', NULL, '/uploads/1719001356656-448888027_1413749402629592_7569345513909444200_n.jpg'),
(429, 12, 'Tobias', '', '2024-06-21 20:22:40', 'Graves', NULL, '/uploads/1719001360169-448890476_1039155504239859_827343970412446977_n.jpg'),
(430, 12, 'Tobias', 'ff', '2024-06-21 20:22:41', 'Graves', NULL, NULL),
(431, 9, 'Graves', 'ff', '2024-06-21 20:22:44', 'Tobias', NULL, NULL),
(432, 9, 'Graves', '', '2024-06-21 20:22:47', 'Tobias', NULL, '/uploads/1719001367238-ssssdasd.PNG'),
(433, 9, 'Graves', 'afas', '2024-06-21 20:22:48', 'Tobias', NULL, NULL),
(434, 9, 'Graves', 'เทส', '2024-06-21 20:23:11', 'Tobias', NULL, NULL),
(435, 9, 'Graves', '', '2024-06-21 20:23:14', 'Tobias', NULL, '/uploads/1719001394867-448890476_1039155504239859_827343970412446977_n.jpg'),
(436, 9, 'Graves', 'ส่งรูปได้แล้วโว้ย', '2024-06-21 20:23:21', 'Tobias', NULL, NULL),
(437, 12, 'Tobias', 'ใช่แล้วล่ะเกรฟ', '2024-06-21 20:23:32', 'Graves', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_url`
--

CREATE TABLE `image_url` (
  `id` int(11) NOT NULL,
  `chat_message_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` enum('free','exchange') NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `location`, `status`, `user_id`, `image_url`) VALUES
(45, 'โทรศัพท์เก่าๆ', 'สนใจขายหรือแลกเป็นกล้องถ่ายรูปครับ สภาพดีเปิดไม่ติด แต่ถ้าเอาไปซ่อมน่าจะได้อยู๋ครับ สำหรับสายสะสมห้ามพลาดครับ', '/uploads/1717868496444.jpg', 'ชลบุรี', 'exchange', 9, ''),
(46, 'โน๊ตบุ้คสำหรับช่าง', 'โน๊ตบุ้คเสียครับ จอพังถ้าเปลี่ยนใหม่คงแพงมาก เลยอยากแบ่งปันให้ฟรีๆครับ สำหรับช่างคนไหนสนใจเอาไปซ่อมทักมาแชทมาได้เลยครับ เดี๋ยวจะส่งไปให้ฟรีๆ', '/uploads/1717868584058.jpg', 'กรุงเทพ', 'free', 9, ''),
(47, 'มังงะGolden kamuy ', 'มังงะ Golden kamuy สภาพดีเหมือนใหม่ เคยอ่านไปแค่รอบเดียวครับอยากหาแลกมังงะเรื่องอื่นๆไว้อ่าน อยากได้แนวโชเน็น หรือแนวแฟนตาซีก็ได้ครับ สนใจ Vinland saga เป็นพิเศษ', '/uploads/1717868718921.jpg', 'สุโขทัย', 'exchange', 9, ''),
(48, 'พวงกุญแจน่ารักๆ ', 'พวงกุญแจน่ารักๆ  แจกฟรีคนล่ะตัวเท่านั้นครับ ฉลองครบรอบวันเกิดผมอยากจะแจกพวงกุญแจครับ ทักมาได้เลยนะครับ', '/uploads/1717868838847.jpg', 'กรุงเทพ', 'free', 13, ''),
(49, 'คอนโดน้องแมวฟรี', 'แจกคอนโดน้องแมวสำหรับสายทาสแมวทุกคนค้าบบบบบบ ใครเร็วใครได้เด้ออ ', '/uploads/1717869424852.jpg', 'กรุงเทพ', 'free', 13, ''),
(51, 'ฟิกเกอร์', 'ฟิกเกอร์มือ 1 สนใจแลกเปลี่ยน', '/uploads/1717941023374.jpg', 'สุโขทัย', 'exchange', 12, ''),
(57, 'แก้วน้ำสุดเจ๋งแจ๋ว', 'แก้วน้ำวิเศษสุดเจ๋งแจ๋วค้าบบบบ', '/uploads/1718560052446.jpg', 'เทส', 'free', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `settinguser`
--

CREATE TABLE `settinguser` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `profile_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settinguser`
--

INSERT INTO `settinguser` (`id`, `user_id`, `address_line1`, `address_line2`, `city`, `state`, `postal_code`, `country`, `phone`, `gender`, `profile_image`) VALUES
(1, 9, 'บิลจ์วอเตอร์ ชลบุรี12', 'บิลจ์วอเตอร์ ชลบุรี12', 'ชลบุรี55', 'แม็กซิโก ซิตี้งับๅ5555', '555', 'ไทยแลน555', '55', 'male', '/uploads/1718544574992.jpg'),
(2, 12, 'รูเทอร่า666', 'รูเทอร่า666', 'บิลจวอเตอร์666', 'ไม่มี66', '6666', 'บิลจวอเตอร์66', '066', 'other', ''),
(3, 13, 'Noxus88', 'Noxus88', 'Noxus', 'Noxus88', '88888', 'Noxussssssssssssssssssssss', '088', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob_day` int(11) DEFAULT NULL,
  `dob_month` int(11) DEFAULT NULL,
  `dob_year` int(11) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `gender`, `dob_day`, `dob_month`, `dob_year`, `profile_image`, `address_line1`, `address_line2`) VALUES
(9, 'Graves', 'nick55@gmail.com', '$2b$12$qY4xgzdSrORYS9gRdick6uU7fXOkiNEl7uzD6aukmYyBHhoxFMrqm', '55', 'male', 5, 5, 1925, '/uploads/1718729582118.png', 'บิลจ์วอเตอร์ ชลบุรี12', 'บิลจ์วอเตอร์ ชลบุรี12'),
(12, 'Tobias', 'nick66@gmail.com', '$2b$12$iWlWMB83jxV5lb.j1bVO6.r6CPsIz1H9Ijc.i4hx9I7cDuLyfjdx6', '066', 'other', 3, 9, 1936, '/uploads/1718559228539.png', 'รูเทอร่า666', 'รูเทอร่า666'),
(13, 'Draven', 'nick88@gmail.com', '$2b$12$3fjDlVFo52JFwA2XNHrKk.K/7rOFnh4C/FZMfWRmGJHNI3pIJhAqi', '088', '', 8, 8, 2008, '/uploads/1718721967366.png', 'Noxus88', 'Noxus88'),
(14, 'nick99', 'nick99@gmail.com', '$2b$12$oIf6lyE8aGA37fJcMw5jpe5JjGDAThXAOxO6KnkAXmm9Z.mDNbAZu', NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(15, 'ืnick10', 'nick10@gmail.com', '$2b$12$NbX2WCqMZ9Cs5fIVYvqI7.t9VaySZ3B2VizCMvaX8C1HKzHdQxInK', NULL, NULL, NULL, NULL, NULL, NULL, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `fk_image_id` (`image_id`);

--
-- Indexes for table `image_url`
--
ALTER TABLE `image_url`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_message_id` (`chat_message_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settinguser`
--
ALTER TABLE `settinguser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- AUTO_INCREMENT for table `image_url`
--
ALTER TABLE `image_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `settinguser`
--
ALTER TABLE `settinguser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_image_id` FOREIGN KEY (`image_id`) REFERENCES `image_url` (`id`);

--
-- Constraints for table `image_url`
--
ALTER TABLE `image_url`
  ADD CONSTRAINT `image_url_ibfk_1` FOREIGN KEY (`chat_message_id`) REFERENCES `chat_messages` (`id`);

--
-- Constraints for table `settinguser`
--
ALTER TABLE `settinguser`
  ADD CONSTRAINT `settinguser_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
