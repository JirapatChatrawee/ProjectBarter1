-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 06:09 PM
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
  `product_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `user_id`, `user_name`, `message`, `timestamp`, `product_user`) VALUES
(25, 12, 'nick66', 'ทำไร', '2024-06-09 15:19:48', 'nick55'),
(26, 9, 'nick55', 'ทำไร', '2024-06-09 15:21:11', 'nick66'),
(27, 9, 'nick55', '5555', '2024-06-09 15:23:05', 'nick66'),
(28, 9, 'nick55', '555', '2024-06-09 15:23:19', 'nick66'),
(29, 12, 'nick66', 'sss', '2024-06-09 15:33:05', 'nick55'),
(30, 12, 'nick66', 'sss', '2024-06-09 15:33:10', 'nick55'),
(31, 12, 'nick66', 'sss', '2024-06-09 15:33:16', 'nick55'),
(32, 12, 'nick66', 's', '2024-06-09 15:33:18', 'nick55'),
(33, 12, 'nick66', 'เทส', '2024-06-09 15:33:27', 'nick55'),
(34, 9, 'nick55', 'หหห', '2024-06-09 15:36:03', 'nick66'),
(35, 12, 'nick66', 'สวัสดีครับ', '2024-06-09 15:37:36', 'nick55'),
(36, 12, 'nick66', 'ด', '2024-06-09 16:01:20', 'nick55'),
(37, 12, 'nick66', 'ด', '2024-06-09 16:01:35', 'nick55'),
(38, 12, 'nick66', 'ด', '2024-06-09 16:01:38', 'nick55'),
(40, 9, 'nick55', '/', '2024-06-09 16:02:26', 'nick66'),
(41, 9, 'nick55', '--', '2024-06-09 16:02:29', 'nick66'),
(42, 12, 'nick66', '//', '2024-06-09 16:02:33', 'nick55'),
(43, 12, 'nick66', 'เทสๆจ้า', '2024-06-09 16:03:12', 'nick55'),
(44, 12, 'nick66', 'ทำไรๆๆๆ', '2024-06-09 16:03:16', 'nick55'),
(45, 9, 'nick55', 'นอนนน', '2024-06-09 16:03:22', 'nick66'),
(46, 9, 'nick55', 'ทำไม', '2024-06-09 16:03:25', 'nick66');

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
(51, 'ฟิกเกอร์', 'ฟิกเกอร์มือ 1 สนใจแลกเปลี่ยน', '/uploads/1717941023374.jpg', 'สุโขทัย', 'exchange', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'loom', 'puntawat2@gmail.com', '$2b$12$oEswfVRC.U3tDcL43BSIKeidClUp9g8UtOLU6J8q6DR5eZsVOj8pW'),
(2, 'puntawt', 'puntawat3@gmail.com', '$2b$12$AS.Elz/H/gdjiXhK0p6cKuU570uVG.EYszRrlHearbjn0hQu88d5W'),
(3, 'test2', 'test2@gmail.com', '$2b$12$emRX/B4PPd7FdnUufYFopuqSXGYd66ZF6GeEYB8R3hSPK9UY/qUdu'),
(4, 'test4', 'test4@gmail.com', '$2b$12$wAghCYuU0sEeiX67ntzeNubFtRxb51x77m3pRNnO27tnFJXCW60VG'),
(5, 'MrDraven', 'test5@gmail.com', '$2b$12$5q2UrqOCENg9KuEZRY0Rcunb82y8o7GUQw2g52e1Ia9oTI6mDUtlC'),
(6, 'test6', 'test6@gmail.com', '$2b$12$KeYlU7QvpWfEkHgDpelycedsHmCdgk/8XtuRtZo5uBRU8knckrI0y'),
(7, 'test7', 'test7@gmail.com', '$2b$12$Pxxrf/mC85Ug1Z5wi9/GseaNp6v0tGyh930h4rVCMYLnhINueukFy'),
(8, 'puntawat0406', 'puntawat04@gmail.com', '$2b$12$WR3GBbXZu2RoJwRrso1Hs.La0WrgKlYXXr4tqY39k8h77g6yNyH6S'),
(9, 'nick55', 'nick55@gmail.com', '$2b$12$qY4xgzdSrORYS9gRdick6uU7fXOkiNEl7uzD6aukmYyBHhoxFMrqm'),
(10, 'hovoer', 'nick001@gmail.com', '$2b$12$1cmPE4qt67QIXHa.MiUEKuvzc/ka05VhkTLFPL0FlHOcD4yGvonIu'),
(11, 'lookasme', 'nick0001@gmail.com', '$2b$12$S27.82AoC6E8rTAKrr/5F.4r0x8sx5TJRGTYppJ/Wbdkgh05NkL.C'),
(12, 'nick66', 'nick66@gmail.com', '$2b$12$iWlWMB83jxV5lb.j1bVO6.r6CPsIz1H9Ijc.i4hx9I7cDuLyfjdx6'),
(13, 'nick88', 'nick88@gmail.com', '$2b$12$3fjDlVFo52JFwA2XNHrKk.K/7rOFnh4C/FZMfWRmGJHNI3pIJhAqi'),
(14, 'nick99', 'nick99@gmail.com', '$2b$12$oIf6lyE8aGA37fJcMw5jpe5JjGDAThXAOxO6KnkAXmm9Z.mDNbAZu'),
(15, 'ืnick10', 'nick10@gmail.com', '$2b$12$NbX2WCqMZ9Cs5fIVYvqI7.t9VaySZ3B2VizCMvaX8C1HKzHdQxInK'),
(16, 'puntawat12', 'sdfsdfsdf@11.com', '$2b$12$dJ20JxxiE8aXsnTVjPY9me6tYhwOJ3WoqvR.Z4XyvEJWf6dBijOJW'),
(17, 'puntawat122', 'sdfsdfsdf@1111.com', '$2b$12$TSDAQFre.UFY9buVzm8eAeNpDwShO8lCErh/AF/IokHpDIWnPr32C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
