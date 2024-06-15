-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2024 at 09:21 PM
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
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `user_id`, `user_name`, `message`, `timestamp`, `product_user`, `image_id`) VALUES
(25, 12, 'nick66', 'ทำไร', '2024-06-09 15:19:48', 'nick55', NULL),
(26, 9, 'nick55', 'ทำไร', '2024-06-09 15:21:11', 'nick66', NULL),
(27, 9, 'nick55', '5555', '2024-06-09 15:23:05', 'nick66', NULL),
(28, 9, 'nick55', '555', '2024-06-09 15:23:19', 'nick66', NULL),
(29, 12, 'nick66', 'sss', '2024-06-09 15:33:05', 'nick55', NULL),
(30, 12, 'nick66', 'sss', '2024-06-09 15:33:10', 'nick55', NULL),
(31, 12, 'nick66', 'sss', '2024-06-09 15:33:16', 'nick55', NULL),
(32, 12, 'nick66', 's', '2024-06-09 15:33:18', 'nick55', NULL),
(33, 12, 'nick66', 'เทส', '2024-06-09 15:33:27', 'nick55', NULL),
(34, 9, 'nick55', 'หหห', '2024-06-09 15:36:03', 'nick66', NULL),
(35, 12, 'nick66', 'สวัสดีครับ', '2024-06-09 15:37:36', 'nick55', NULL),
(36, 12, 'nick66', 'ด', '2024-06-09 16:01:20', 'nick55', NULL),
(37, 12, 'nick66', 'ด', '2024-06-09 16:01:35', 'nick55', NULL),
(38, 12, 'nick66', 'ด', '2024-06-09 16:01:38', 'nick55', NULL),
(40, 9, 'nick55', '/', '2024-06-09 16:02:26', 'nick66', NULL),
(41, 9, 'nick55', '--', '2024-06-09 16:02:29', 'nick66', NULL),
(42, 12, 'nick66', '//', '2024-06-09 16:02:33', 'nick55', NULL),
(43, 12, 'nick66', 'เทสๆจ้า', '2024-06-09 16:03:12', 'nick55', NULL),
(44, 12, 'nick66', 'ทำไรๆๆๆ', '2024-06-09 16:03:16', 'nick55', NULL),
(45, 9, 'nick55', 'นอนนน', '2024-06-09 16:03:22', 'nick66', NULL),
(46, 9, 'nick55', 'ทำไม', '2024-06-09 16:03:25', 'nick66', NULL),
(47, 12, 'nick66', 'สวัสดีครับ', '2024-06-10 11:42:16', 'nick55', NULL),
(48, 12, 'nick66', 'สวัสดี', '2024-06-10 12:14:37', 'nick55', NULL),
(49, 9, 'nick55', 'เทส', '2024-06-15 13:48:34', 'nick66', NULL),
(50, 12, 'nick66', 'ห', '2024-06-15 13:58:10', 'nick55', NULL),
(51, 12, 'nick66', 'หห', '2024-06-15 14:06:03', 'nick55', NULL),
(52, 12, 'nick66', 'หห', '2024-06-15 14:10:10', 'nick55', NULL),
(53, 9, 'nick55', 'หห', '2024-06-15 14:10:21', 'nick66', NULL),
(54, 9, 'nick55', 'หห', '2024-06-15 14:10:33', 'nick66', NULL),
(55, 9, 'nick55', 'หหหห', '2024-06-15 14:10:35', 'nick66', NULL),
(56, 9, 'nick55', 'ดด', '2024-06-15 14:10:37', 'nick66', NULL),
(57, 9, 'nick55', 'หหห', '2024-06-15 14:10:40', 'nick66', NULL),
(58, 12, 'nick66', 'หห', '2024-06-15 14:27:02', 'nick55', NULL),
(59, 12, 'nick66', 's', '2024-06-15 14:34:23', 'nick55', NULL),
(60, 12, 'nick66', 'ห', '2024-06-15 14:37:09', 'nick55', NULL),
(61, 12, 'nick66', 'ห', '2024-06-15 14:38:14', 'nick55', NULL),
(62, 9, 'nick55', 'bb', '2024-06-15 14:41:05', 'nick66', NULL),
(68, 12, 'nick66', 's', '2024-06-15 14:55:50', 'nick55', NULL),
(69, 12, 'nick66', 'ss', '2024-06-15 14:55:52', 'nick55', NULL),
(70, 9, 'nick55', 's', '2024-06-15 14:56:13', 'nick66', NULL),
(71, 12, 'nick66', 'อ', '2024-06-15 14:59:02', 'nick55', NULL),
(72, 12, 'nick66', 'ห', '2024-06-15 15:02:26', 'nick55', NULL),
(73, 9, 'nick55', 'ห', '2024-06-15 15:19:43', 'nick66', NULL),
(74, 9, 'nick55', 'ด', '2024-06-15 15:19:44', 'nick66', NULL),
(75, 9, 'nick55', 'ห', '2024-06-15 15:19:46', 'nick66', NULL),
(76, 9, 'nick55', 'แแ', '2024-06-15 15:38:08', 'nick66', NULL),
(77, 9, 'nick55', 'ืืปกอป', '2024-06-15 15:38:23', 'nick66', NULL),
(78, 12, 'nick66', 'หห', '2024-06-15 15:42:59', 'nick55', NULL),
(79, 12, 'nick66', 'ด', '2024-06-15 15:51:23', 'nick55', NULL),
(80, 12, 'nick66', 'ททท', '2024-06-15 15:51:51', 'nick55', NULL),
(81, 12, 'nick66', 'sss', '2024-06-15 16:00:29', 'nick55', NULL),
(82, 12, 'nick66', 'หห', '2024-06-15 16:11:34', 'nick55', NULL),
(83, 12, 'nick66', '', '2024-06-15 16:15:59', 'nick55', NULL),
(84, 12, 'nick66', '', '2024-06-15 16:16:00', 'nick55', NULL),
(85, 12, 'nick66', '', '2024-06-15 16:16:11', 'nick55', NULL),
(88, 9, 'nick55', '', '2024-06-15 16:16:45', 'nick66', NULL),
(89, 12, 'nick66', 'sss', '2024-06-15 16:17:21', 'nick55', NULL),
(90, 12, 'nick66', 'หหห', '2024-06-15 16:21:12', 'nick55', NULL),
(91, 12, 'nick66', 'hn', '2024-06-15 16:24:45', 'nick55', NULL),
(92, 12, 'nick66', 'ก', '2024-06-15 16:33:26', 'nick55', NULL),
(93, 12, 'nick66', 'หหห', '2024-06-15 16:36:03', 'nick55', NULL),
(94, 12, 'nick66', 'หห', '2024-06-15 16:38:01', 'nick55', NULL),
(95, 12, 'nick66', 'หห', '2024-06-15 16:51:17', 'nick55', NULL),
(96, 12, 'nick66', 'หหห', '2024-06-15 16:51:19', 'nick55', NULL),
(97, 12, 'nick66', 'หหห', '2024-06-15 16:51:20', 'nick55', NULL),
(98, 9, 'nick55', 'ฟไำพเ', '2024-06-15 16:51:28', 'nick66', NULL),
(99, 9, 'nick55', 'หห', '2024-06-15 16:51:31', 'nick66', NULL),
(100, 9, 'Graves', 'ss', '2024-06-15 18:26:13', 'nick66', NULL),
(101, 9, 'Graves', 'ss', '2024-06-15 18:26:22', 'nick66', NULL),
(102, 9, 'Graves', 'ss', '2024-06-15 18:26:25', 'nick66', NULL),
(103, 12, 'nick66', 'ไง', '2024-06-15 18:27:27', 'Graves', NULL),
(104, 12, 'nick66', 'หห', '2024-06-15 18:28:07', 'Graves', NULL),
(105, 12, 'Tobias', 'กด', '2024-06-15 18:46:16', 'Graves', NULL),
(106, 9, 'Graves', 'ก', '2024-06-15 18:46:29', 'Tobias', NULL),
(107, 9, 'Graves', 'เทส', '2024-06-15 18:47:27', 'Tobias', NULL),
(108, 9, 'Graves', 's', '2024-06-15 19:08:37', 'Tobias', NULL),
(109, 9, 'Graves', 'af', '2024-06-15 19:08:38', 'Tobias', NULL),
(110, 9, 'Graves', 'sdfsdf', '2024-06-15 19:08:40', 'Tobias', NULL),
(111, 9, 'Graves', 'ss', '2024-06-15 19:11:26', 'Tobias', NULL),
(112, 12, 'Tobias', 'fff', '2024-06-15 19:11:36', 'Graves', NULL),
(113, 9, 'Gravess', '555', '2024-06-15 19:19:23', 'Tobias', NULL),
(114, 9, 'Graves', '555', '2024-06-15 19:19:40', 'Tobias', NULL);

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
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `location`, `status`, `user_id`) VALUES
(45, 'โทรศัพท์เก่าๆ', 'สนใจขายหรือแลกเป็นกล้องถ่ายรูปครับ สภาพดีเปิดไม่ติด แต่ถ้าเอาไปซ่อมน่าจะได้อยู๋ครับ สำหรับสายสะสมห้ามพลาดครับ', '/uploads/1717868496444.jpg', 'ชลบุรี', 'exchange', 9),
(46, 'โน๊ตบุ้คสำหรับช่าง', 'โน๊ตบุ้คเสียครับ จอพังถ้าเปลี่ยนใหม่คงแพงมาก เลยอยากแบ่งปันให้ฟรีๆครับ สำหรับช่างคนไหนสนใจเอาไปซ่อมทักมาแชทมาได้เลยครับ เดี๋ยวจะส่งไปให้ฟรีๆ', '/uploads/1717868584058.jpg', 'กรุงเทพ', 'free', 9),
(47, 'มังงะGolden kamuy ', 'มังงะ Golden kamuy สภาพดีเหมือนใหม่ เคยอ่านไปแค่รอบเดียวครับอยากหาแลกมังงะเรื่องอื่นๆไว้อ่าน อยากได้แนวโชเน็น หรือแนวแฟนตาซีก็ได้ครับ สนใจ Vinland saga เป็นพิเศษ', '/uploads/1717868718921.jpg', 'สุโขทัย', 'exchange', 9),
(48, 'พวงกุญแจน่ารักๆ ', 'พวงกุญแจน่ารักๆ  แจกฟรีคนล่ะตัวเท่านั้นครับ ฉลองครบรอบวันเกิดผมอยากจะแจกพวงกุญแจครับ ทักมาได้เลยนะครับ', '/uploads/1717868838847.jpg', 'กรุงเทพ', 'free', 13),
(49, 'คอนโดน้องแมวฟรี', 'แจกคอนโดน้องแมวสำหรับสายทาสแมวทุกคนค้าบบบบบบ ใครเร็วใครได้เด้ออ ', '/uploads/1717869424852.jpg', 'กรุงเทพ', 'free', 13),
(51, 'ฟิกเกอร์', 'ฟิกเกอร์มือ 1 สนใจแลกเปลี่ยน', '/uploads/1717941023374.jpg', 'สุโขทัย', 'exchange', 12),
(53, 'เทส', 'เทส', '/uploads/1718021526091.jpg', 'เทส', 'free', 12),
(54, 'ssss', 'sss', '/uploads/1718467116028.jpg', 'ss', 'free', 12),
(55, 'ดินสอสีss', 'ss', '/uploads/1718478530940.jfif', 'ss', 'free', 9);

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
(1, 9, 'ชลบุรี', 'บางแสน', 'ชลบุรี', 'แม็กซิโก ซิตี้งับ', '20000', 'ไทยแลน', '06160545', 'other', ''),
(2, 12, 'ชลบุรี', 'เทส', 'เทส', 'เทสๅ', 'เทส', 'เทสๅ', '5523423423234', 'male', '');

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
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `gender`, `dob_day`, `dob_month`, `dob_year`, `profile_image`) VALUES
(1, 'loom', 'puntawat2@gmail.com', '$2b$12$oEswfVRC.U3tDcL43BSIKeidClUp9g8UtOLU6J8q6DR5eZsVOj8pW', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'puntawt', 'puntawat3@gmail.com', '$2b$12$AS.Elz/H/gdjiXhK0p6cKuU570uVG.EYszRrlHearbjn0hQu88d5W', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'test2', 'test2@gmail.com', '$2b$12$emRX/B4PPd7FdnUufYFopuqSXGYd66ZF6GeEYB8R3hSPK9UY/qUdu', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'test4', 'test4@gmail.com', '$2b$12$wAghCYuU0sEeiX67ntzeNubFtRxb51x77m3pRNnO27tnFJXCW60VG', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'MrDraven', 'test5@gmail.com', '$2b$12$5q2UrqOCENg9KuEZRY0Rcunb82y8o7GUQw2g52e1Ia9oTI6mDUtlC', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'test6', 'test6@gmail.com', '$2b$12$KeYlU7QvpWfEkHgDpelycedsHmCdgk/8XtuRtZo5uBRU8knckrI0y', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'test7', 'test7@gmail.com', '$2b$12$Pxxrf/mC85Ug1Z5wi9/GseaNp6v0tGyh930h4rVCMYLnhINueukFy', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'puntawat0406', 'puntawat04@gmail.com', '$2b$12$WR3GBbXZu2RoJwRrso1Hs.La0WrgKlYXXr4tqY39k8h77g6yNyH6S', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Graves', 'nick55@gmail.com', '$2b$12$qY4xgzdSrORYS9gRdick6uU7fXOkiNEl7uzD6aukmYyBHhoxFMrqm', '06160545', 'other', NULL, NULL, NULL, NULL),
(10, 'hovoer', 'nick001@gmail.com', '$2b$12$1cmPE4qt67QIXHa.MiUEKuvzc/ka05VhkTLFPL0FlHOcD4yGvonIu', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'lookasme', 'nick0001@gmail.com', '$2b$12$S27.82AoC6E8rTAKrr/5F.4r0x8sx5TJRGTYppJ/Wbdkgh05NkL.C', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Tobias', 'nick66@gmail.com', '$2b$12$iWlWMB83jxV5lb.j1bVO6.r6CPsIz1H9Ijc.i4hx9I7cDuLyfjdx6', '5523423423234', 'male', NULL, NULL, NULL, NULL),
(13, 'nick88', 'nick88@gmail.com', '$2b$12$3fjDlVFo52JFwA2XNHrKk.K/7rOFnh4C/FZMfWRmGJHNI3pIJhAqi', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'nick99', 'nick99@gmail.com', '$2b$12$oIf6lyE8aGA37fJcMw5jpe5JjGDAThXAOxO6KnkAXmm9Z.mDNbAZu', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ืnick10', 'nick10@gmail.com', '$2b$12$NbX2WCqMZ9Cs5fIVYvqI7.t9VaySZ3B2VizCMvaX8C1HKzHdQxInK', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'puntawat12', 'sdfsdfsdf@11.com', '$2b$12$dJ20JxxiE8aXsnTVjPY9me6tYhwOJ3WoqvR.Z4XyvEJWf6dBijOJW', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'puntawat122', 'sdfsdfsdf@1111.com', '$2b$12$TSDAQFre.UFY9buVzm8eAeNpDwShO8lCErh/AF/IokHpDIWnPr32C', NULL, NULL, NULL, NULL, NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `image_url`
--
ALTER TABLE `image_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `settinguser`
--
ALTER TABLE `settinguser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
