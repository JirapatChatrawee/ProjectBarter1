-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2024 at 08:02 PM
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
(101, 9, 'Graves', 'ss', '2024-06-15 18:26:22', 'nick66', NULL, NULL),
(102, 9, 'Graves', 'ss', '2024-06-15 18:26:25', 'nick66', NULL, NULL),
(103, 12, 'nick66', 'ไง', '2024-06-15 18:27:27', 'Graves', NULL, NULL),
(104, 12, 'nick66', 'หห', '2024-06-15 18:28:07', 'Graves', NULL, NULL),
(105, 12, 'Tobias', 'กด', '2024-06-15 18:46:16', 'Graves', NULL, NULL),
(106, 9, 'Graves', 'ก', '2024-06-15 18:46:29', 'Tobias', NULL, NULL),
(107, 9, 'Graves', 'เทส', '2024-06-15 18:47:27', 'Tobias', NULL, NULL),
(108, 9, 'Graves', 's', '2024-06-15 19:08:37', 'Tobias', NULL, NULL),
(109, 9, 'Graves', 'af', '2024-06-15 19:08:38', 'Tobias', NULL, NULL),
(110, 9, 'Graves', 'sdfsdf', '2024-06-15 19:08:40', 'Tobias', NULL, NULL),
(111, 9, 'Graves', 'ss', '2024-06-15 19:11:26', 'Tobias', NULL, NULL),
(112, 12, 'Tobias', 'fff', '2024-06-15 19:11:36', 'Graves', NULL, NULL),
(113, 9, 'Gravess', '555', '2024-06-15 19:19:23', 'Tobias', NULL, NULL),
(114, 9, 'Graves', '555', '2024-06-15 19:19:40', 'Tobias', NULL, NULL),
(115, 9, 'Graves', 'สวัสดีนะ', '2024-06-16 17:18:02', 'Tobias', NULL, NULL),
(116, 12, 'Tobias', 'สวัสดีครับ', '2024-06-16 17:18:40', 'Graves', NULL, NULL),
(117, 9, 'Graves', 'ห', '2024-06-16 17:52:11', 'Tobias', NULL, NULL),
(118, 9, 'Graves', 'โย่ว', '2024-06-18 14:46:36', 'nick88', NULL, NULL),
(119, 13, 'nick88', 'ไงจ๊ะ', '2024-06-18 14:46:46', 'Graves', NULL, NULL),
(120, 9, 'Graves', 'หห', '2024-06-18 14:53:47', 'Tobias', NULL, NULL),
(121, 9, 'Graves', 'หห', '2024-06-18 14:58:42', 'Tobias', NULL, NULL),
(122, 9, 'Graves', 'ss', '2024-06-18 15:03:05', 'Tobias', NULL, NULL),
(123, 9, 'Graves', 'หหห', '2024-06-18 15:20:41', 'Tobias', NULL, NULL),
(124, 9, 'Graves', 'ห', '2024-06-18 15:22:38', 'Tobias', NULL, NULL),
(125, 9, 'Graves', 'ฟหกแฟห', '2024-06-18 15:24:29', 'Tobias', NULL, NULL),
(126, 9, 'Graves', 'ดก', '2024-06-18 15:29:04', 'Tobias', NULL, NULL),
(127, 9, 'Graves', 'หห', '2024-06-18 15:33:52', 'Tobias', NULL, NULL),
(128, 9, 'Graves', 'หห', '2024-06-18 15:35:04', 'Tobias', NULL, NULL),
(130, 9, 'Graves', '1212', '2024-06-18 15:41:19', 'Tobias', NULL, NULL),
(131, 9, 'Graves', '1212', '2024-06-18 15:41:22', 'Tobias', NULL, NULL),
(132, 9, 'Graves', '423452477สส', '2024-06-18 15:41:29', 'Tobias', NULL, NULL),
(133, 9, 'Graves', 'ฟหก', '2024-06-18 15:44:11', 'Tobias', NULL, NULL),
(134, 13, 'nick88', 'ไงละ', '2024-06-18 15:44:37', 'Graves', NULL, NULL),
(135, 9, 'Graves', 'ห', '2024-06-18 15:49:57', 'nick88', NULL, NULL),
(136, 9, 'Graves', 'ห', '2024-06-18 16:06:28', 'Tobias', NULL, NULL),
(137, 9, 'Graves', 'หหห', '2024-06-18 16:27:54', 'nick88', NULL, NULL),
(138, 9, 'Graves', 'ฟหดฟ', '2024-06-18 16:28:56', 'nick88', NULL, NULL),
(139, 9, 'Graves', 'ฟหดฟหด', '2024-06-18 16:29:04', 'nick88', NULL, NULL),
(140, 13, 'nick88', 'ฟดหฟห', '2024-06-18 16:29:07', 'Graves', NULL, NULL),
(141, 9, 'Graves', 'กหด', '2024-06-18 16:51:57', 'Tobias', NULL, NULL),
(142, 9, 'Graves', 'สวีสดี', '2024-06-18 16:53:24', 'Tobias', NULL, NULL),
(143, 13, 'nick88', 'สวัสดี', '2024-06-18 16:53:51', 'Graves', NULL, NULL),
(144, 13, 'nick88', 'ทำไร', '2024-06-18 16:54:06', 'Graves', NULL, NULL),
(145, 9, 'Graves', 'ทำไร', '2024-06-18 16:54:17', 'nick88', NULL, NULL),
(146, 9, 'Graves', 'หห', '2024-06-18 17:04:13', 'nick88', NULL, NULL),
(147, 9, 'Graves', 'ฟหดฟห', '2024-06-18 17:04:15', 'nick88', NULL, NULL),
(148, 13, 'nick88', 'ฟหดฟห', '2024-06-18 17:04:19', 'Graves', NULL, NULL),
(149, 13, 'nick88', 'หกดหกด', '2024-06-18 17:04:32', 'Graves', NULL, NULL),
(150, 9, 'Graves', 'ฟกฟห', '2024-06-18 17:04:35', 'nick88', NULL, NULL),
(151, 9, 'Graves', 'ฟกฟห', '2024-06-18 17:04:40', 'nick88', NULL, NULL),
(152, 13, 'nick88', 'ฟหกฟหฟ', '2024-06-18 17:04:42', 'Graves', NULL, NULL),
(153, 9, 'Graves', 'ฟกฟห', '2024-06-18 17:04:51', 'nick88', NULL, NULL),
(154, 9, 'Graves', 'ฟหก', '2024-06-18 17:04:54', 'nick88', NULL, NULL),
(155, 9, 'Graves', 'ฟกฟห', '2024-06-18 17:04:59', 'nick88', NULL, NULL),
(156, 9, 'Graves', 'ฟฟฟ', '2024-06-18 17:05:04', 'nick88', NULL, NULL),
(157, 9, 'Graves', '1', '2024-06-18 17:05:07', 'nick88', NULL, NULL),
(158, 9, 'Graves', '2', '2024-06-18 17:05:08', 'nick88', NULL, NULL),
(159, 9, 'Graves', '3', '2024-06-18 17:05:11', 'nick88', NULL, NULL),
(160, 9, 'Graves', '4', '2024-06-18 17:05:13', 'nick88', NULL, NULL),
(161, 9, 'Graves', '5', '2024-06-18 17:05:15', 'nick88', NULL, NULL),
(162, 13, 'nick88', '6', '2024-06-18 17:05:19', 'Graves', NULL, NULL),
(163, 13, 'nick88', '7', '2024-06-18 17:05:20', 'Graves', NULL, NULL),
(164, 13, 'nick88', '8', '2024-06-18 17:05:21', 'Graves', NULL, NULL),
(165, 13, 'nick88', '9', '2024-06-18 17:05:22', 'Graves', NULL, NULL),
(166, 13, 'nick88', '2', '2024-06-18 17:05:24', 'Graves', NULL, NULL),
(167, 9, 'Graves', '1', '2024-06-18 17:05:27', 'nick88', NULL, NULL),
(168, 9, 'Graves', '2', '2024-06-18 17:05:28', 'nick88', NULL, NULL),
(169, 9, 'Graves', '3', '2024-06-18 17:05:29', 'nick88', NULL, NULL),
(170, 9, 'Graves', '1', '2024-06-18 17:05:32', 'nick88', NULL, NULL),
(171, 9, 'Graves', '1', '2024-06-18 17:05:40', 'nick88', NULL, NULL),
(172, 9, 'Graves', '1234', '2024-06-18 17:05:42', 'nick88', NULL, NULL),
(173, 9, 'Graves', '123', '2024-06-18 17:05:42', 'nick88', NULL, NULL),
(174, 9, 'Graves', '123', '2024-06-18 17:05:44', 'nick88', NULL, NULL),
(175, 9, 'Graves', '12', '2024-06-18 17:06:38', 'nick88', NULL, NULL),
(176, 9, 'Graves', '123', '2024-06-18 17:06:39', 'nick88', NULL, NULL),
(177, 9, 'Graves', '213423', '2024-06-18 17:06:40', 'nick88', NULL, NULL),
(178, 9, 'Graves', '23432', '2024-06-18 17:06:41', 'nick88', NULL, NULL),
(179, 9, 'Graves', '3453433', '2024-06-18 17:06:41', 'nick88', NULL, NULL),
(180, 9, 'Graves', '345634', '2024-06-18 17:06:42', 'nick88', NULL, NULL),
(181, 9, 'Graves', '1', '2024-06-18 17:06:57', 'Tobias', NULL, NULL),
(182, 9, 'Graves', '1', '2024-06-18 17:07:06', 'nick88', NULL, NULL),
(183, 9, 'Graves', '2', '2024-06-18 17:07:07', 'nick88', NULL, NULL),
(184, 9, 'Graves', '3', '2024-06-18 17:07:08', 'nick88', NULL, NULL),
(185, 9, 'Graves', '4', '2024-06-18 17:07:08', 'nick88', NULL, NULL),
(186, 9, 'Graves', '5', '2024-06-18 17:07:09', 'nick88', NULL, NULL),
(187, 9, 'Graves', '2', '2024-06-18 17:07:19', 'nick88', NULL, NULL),
(188, 9, 'Graves', '2', '2024-06-18 17:07:20', 'nick88', NULL, NULL),
(189, 9, 'Graves', '2', '2024-06-18 17:07:20', 'nick88', NULL, NULL),
(190, 9, 'Graves', '3', '2024-06-18 17:07:28', 'nick88', NULL, NULL),
(191, 9, 'Graves', '4', '2024-06-18 17:07:29', 'nick88', NULL, NULL),
(192, 9, 'Graves', '55', '2024-06-18 17:07:30', 'nick88', NULL, NULL),
(193, 9, 'Graves', '6', '2024-06-18 17:07:30', 'nick88', NULL, NULL),
(194, 9, 'Graves', '11', '2024-06-18 17:08:44', 'nick88', NULL, NULL),
(195, 9, 'Graves', '11', '2024-06-18 17:08:50', 'nick88', NULL, NULL),
(196, 13, 'nick88', '2', '2024-06-18 17:08:55', 'Graves', NULL, NULL),
(197, 13, 'nick88', '3', '2024-06-18 17:08:56', 'Graves', NULL, NULL),
(198, 13, 'nick88', '4', '2024-06-18 17:08:57', 'Graves', NULL, NULL),
(199, 13, 'nick88', '5', '2024-06-18 17:08:58', 'Graves', NULL, NULL),
(200, 9, 'Graves', 'sdfds', '2024-06-18 17:09:25', 'nick88', NULL, NULL),
(201, 9, 'Graves', 'sfds', '2024-06-18 17:09:27', 'nick88', NULL, NULL),
(202, 9, 'Graves', 'sdfsd', '2024-06-18 17:09:28', 'nick88', NULL, NULL),
(203, 13, 'nick88', 'สวัสดั', '2024-06-18 17:10:33', 'Graves', NULL, NULL),
(204, 13, 'nick88', 'ทำไรครับ', '2024-06-18 17:10:37', 'Graves', NULL, NULL),
(205, 9, 'Graves', 'นอนครับ', '2024-06-18 17:10:43', 'nick88', NULL, NULL),
(206, 13, 'Draven', 'ss', '2024-06-18 17:55:56', 'Graves', NULL, NULL),
(207, 13, 'Draven', 'ss', '2024-06-18 17:55:57', 'Graves', NULL, NULL),
(208, 9, 'Graves', '55', '2024-06-18 17:59:43', 'Tobias', NULL, NULL),
(209, 9, 'Graves', '555', '2024-06-18 17:59:52', 'Draven', NULL, NULL);

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
(55, 'ดินสอสีss', 'ss', '/uploads/1718478530940.jfif', 'ss', 'free', 9),
(56, 'ดินสอสี', 'หกด', '/uploads/1718548897152.jpg', 'หฟกฟหหฟ', 'free', 9),
(57, 'แก้วน้ำสุดเจ๋งแจ๋ว', 'แก้วน้ำวิเศษสุดเจ๋งแจ๋วค้าบบบบ', '/uploads/1718560052446.jpg', 'เทส', 'free', 9);

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
(1, 9, 'บิลจ์วอเตอร์ ชลบุรี12', 'บิลจ์วอเตอร์ ชลบุรี12', 'ชลบุรี55', 'แม็กซิโก ซิตี้งับๅ5555', '555', 'ไทยแลน55', '55', 'male', '/uploads/1718544574992.jpg'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `image_url`
--
ALTER TABLE `image_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
