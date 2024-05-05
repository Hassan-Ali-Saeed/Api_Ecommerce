-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 07:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saeed`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name_en` varchar(100) NOT NULL,
  `categories_name_ar` varchar(100) NOT NULL,
  `categories_image` varchar(255) NOT NULL,
  `categories_datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name_en`, `categories_name_ar`, `categories_image`, `categories_datetime`) VALUES
(1, 'coffee', 'القهوة', 'coffee.svg', '2024-04-14 23:13:54'),
(2, 'vegetables', 'خضروات ', 'coffee.svg', '2024-04-14 23:16:44'),
(3, 'fruits', 'فواكه', 'bharat.svg', '2024-04-14 23:41:23'),
(4, 'mokasarat', 'مكسرات', 'coffee.svg', '2024-04-20 06:07:33'),
(5, 'oil', 'زيوت', 'bharat.svg', '2024-04-20 06:17:53'),
(6, 'water', 'مياه', 'coffee.svg', '2024-04-20 06:21:04'),
(7, 'bharat', 'بهارات', 'bharat.svg', '2024-04-23 12:28:26'),
(8, 'sweets', 'حلويات ', 'coffee.svg', '2024-04-26 21:31:15'),
(9, 'Dates', 'تمور وطحينية', 'coffee.svg', '2024-04-26 21:34:10'),
(10, 'Rice', 'ارز', 'coffee.svg', '2024-04-27 08:15:33'),
(11, 'fahm', 'الفحم ', 'coffee.svg', '2024-04-27 22:03:57');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `favorite_id` int(11) NOT NULL,
  `favorite_usersid` int(11) NOT NULL,
  `favorite_itemsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `items_id` int(11) NOT NULL,
  `items_name` varchar(100) NOT NULL,
  `items_name_ar` varchar(100) NOT NULL,
  `items_desc` varchar(255) NOT NULL,
  `items_desc_ar` varchar(255) NOT NULL,
  `items_counts` int(11) NOT NULL,
  `items_image` varchar(255) NOT NULL,
  `items_price` float NOT NULL,
  `items_active` tinyint(4) NOT NULL DEFAULT 1,
  `items_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `items_discount` smallint(6) NOT NULL,
  `items_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`items_id`, `items_name`, `items_name_ar`, `items_desc`, `items_desc_ar`, `items_counts`, `items_image`, `items_price`, `items_active`, `items_date`, `items_discount`, `items_cat`) VALUES
(1, 'Hail', 'هيل ', 'free good', 'هيل درجة اولى ', 20, 'hail.png', 200, 1, '2024-04-20 10:47:51', 20, 1),
(6, 'Coffe ', 'قهوة كيف الاصالة ', 'goood', 'افضل انواع القهوة', 0, 'coffee_1_1.jpg', 180, 1, '2024-04-23 09:51:25', 20, 1),
(7, 'coffe', ' قهوة النعمان', ' قهوة درجة اولى ', '', 40, 'coffee_noman.png', 90, 1, '2024-04-23 11:08:59', 10, 1),
(8, 'frutes', 'فواكه مجففة ', 'good', 'جيد', 10, 'frutes.png', 10, 1, '2024-04-23 13:39:42', 2, 3),
(9, 'lose', 'لوز امريكي 1كيلو ', '', 'درجة اولى ', 20, 'mokasarat.png', 60, 1, '2024-04-23 13:39:42', 10, 4),
(10, 'mokasarat', 'مكسرات _هيل _شاي', '', '', 10, 'moksarat_noman.png', 30, 1, '2024-04-26 14:59:40', 10, 4),
(11, 'water', 'مياه سكاي او نفل ', '', '', 10, 'water.png', 9, 1, '2024-04-26 21:41:49', 2, 6),
(12, 'Dates', 'تمر جالكسي', '\"Enjoy our fresh and delicious dates now!\"\r\n', 'تمر خلاص القصيم ', 20, 'tamr.jpg', 29, 1, '2024-04-26 21:41:49', 0, 9),
(13, 'Rice Alnoaman', 'أرز النعمان', '', '', 10, 'rice.png', 49, 1, '2024-04-27 08:20:25', 0, 10),
(14, 'coffee kaif alasalah', 'قهوة كيف الاصالة ', '', 'تُعتبر قهوتنا فريدة من نوعها، حيث تأتي من أجود أصناف البن وتمتاز بطعمها الغني والمتوازن ورائحتها الفريدة. تتميز قهوتنا بالجودة العالية والطعم الرائع، مما يجعلها تجربة لا تُنسى لعشاق القهوة', 10, 'coffee_1_5.PNG', 90, 1, '2024-04-27 08:26:16', 2, 1),
(16, 'coffee', 'قهوة 1كيلو ', '', '', 40, 'coffee_1_4.png', 40, 1, '2024-04-27 08:35:54', 2, 1),
(17, 'sweets', 'مشكل حلويات ', '', '', 10, 'halwa.jpg', 30, 1, '2024-04-27 08:47:00', 2, 8),
(18, 'zaiton', 'زيت زيتون ', '', '', 20, 'oil.jpg', 40, 1, '2024-04-27 08:47:00', 10, 5),
(19, 'fahm', 'فحم الجود', 'good', 'افضل الانواع ', 33, 'fahm_good.jpg', 50, 1, '2024-04-28 11:07:43', 2, 11),
(20, 'samposah', 'سمبوسة', '', 'الطعم لذيذ', 2, 'samposah_noman.png', 200, 1, '2024-05-01 15:12:30', 2, 7);

-- --------------------------------------------------------

--
-- Stand-in structure for view `itemsview`
-- (See below for the actual view)
--
CREATE TABLE `itemsview` (
`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_counts` int(11)
,`items_image` varchar(255)
,`items_price` float
,`items_active` tinyint(4)
,`items_date` timestamp
,`items_discount` smallint(6)
,`items_cat` int(11)
,`categories_id` int(11)
,`categories_name_en` varchar(100)
,`categories_name_ar` varchar(100)
,`categories_image` varchar(255)
,`categories_datetime` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `myfavorite`
-- (See below for the actual view)
--
CREATE TABLE `myfavorite` (
`favorite_id` int(11)
,`favorite_usersid` int(11)
,`favorite_itemsid` int(11)
,`items_id` int(11)
,`items_name` varchar(100)
,`items_name_ar` varchar(100)
,`items_desc` varchar(255)
,`items_desc_ar` varchar(255)
,`items_counts` int(11)
,`items_image` varchar(255)
,`items_price` float
,`items_active` tinyint(4)
,`items_date` timestamp
,`items_discount` smallint(6)
,`items_cat` int(11)
,`users_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(100) NOT NULL,
  `users_email` varchar(100) NOT NULL,
  `users_phone` varchar(1000) NOT NULL,
  `users_verify` int(11) NOT NULL,
  `users_approve` tinyint(4) NOT NULL DEFAULT 0,
  `users_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `users_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `users_name`, `users_email`, `users_phone`, `users_verify`, `users_approve`, `users_create`, `users_password`) VALUES
(160, 'j', 'j', 'j', 80470, 1, '2024-04-30 17:51:10', '5c2dd944dde9e08881bef0894fe7b22a5c9c4b06'),
(161, 'y', 'y', 'y', 37839, 1, '2024-04-30 17:54:35', '95cb0bfd2977c761298d9624e4b4d4c72a39974a'),
(163, 'Hasan Ali', 'Hasan@gmail.com', '051726257', 92141, 1, '2024-05-01 19:59:52', '37becb6cd5d0f5d540386b3db2a91e322c637646');

-- --------------------------------------------------------

--
-- Structure for view `itemsview`
--
DROP TABLE IF EXISTS `itemsview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `itemsview`  AS SELECT `items`.`items_id` AS `items_id`, `items`.`items_name` AS `items_name`, `items`.`items_name_ar` AS `items_name_ar`, `items`.`items_desc` AS `items_desc`, `items`.`items_desc_ar` AS `items_desc_ar`, `items`.`items_counts` AS `items_counts`, `items`.`items_image` AS `items_image`, `items`.`items_price` AS `items_price`, `items`.`items_active` AS `items_active`, `items`.`items_date` AS `items_date`, `items`.`items_discount` AS `items_discount`, `items`.`items_cat` AS `items_cat`, `categories`.`categories_id` AS `categories_id`, `categories`.`categories_name_en` AS `categories_name_en`, `categories`.`categories_name_ar` AS `categories_name_ar`, `categories`.`categories_image` AS `categories_image`, `categories`.`categories_datetime` AS `categories_datetime` FROM (`items` join `categories` on(`categories`.`categories_id` = `items`.`items_cat`)) ;

-- --------------------------------------------------------

--
-- Structure for view `myfavorite`
--
DROP TABLE IF EXISTS `myfavorite`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `myfavorite`  AS SELECT `favorite`.`favorite_id` AS `favorite_id`, `favorite`.`favorite_usersid` AS `favorite_usersid`, `favorite`.`favorite_itemsid` AS `favorite_itemsid`, `items`.`items_id` AS `items_id`, `items`.`items_name` AS `items_name`, `items`.`items_name_ar` AS `items_name_ar`, `items`.`items_desc` AS `items_desc`, `items`.`items_desc_ar` AS `items_desc_ar`, `items`.`items_counts` AS `items_counts`, `items`.`items_image` AS `items_image`, `items`.`items_price` AS `items_price`, `items`.`items_active` AS `items_active`, `items`.`items_date` AS `items_date`, `items`.`items_discount` AS `items_discount`, `items`.`items_cat` AS `items_cat`, `users`.`users_id` AS `users_id` FROM ((`favorite` join `items` on(`items`.`items_id` = `favorite`.`favorite_itemsid`)) join `users` on(`users`.`users_id` = `favorite`.`favorite_usersid`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `favorite_usersid` (`favorite_usersid`),
  ADD KEY `favorite_itemsid` (`favorite_itemsid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`items_id`),
  ADD KEY `items_cat` (`items_cat`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`favorite_usersid`) REFERENCES `users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`favorite_itemsid`) REFERENCES `items` (`items_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`items_cat`) REFERENCES `categories` (`categories_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
