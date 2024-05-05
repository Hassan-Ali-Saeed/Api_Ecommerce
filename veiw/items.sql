-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 09:20 PM
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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `items_id` int(11) NOT NULL ,
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`items_id`),
  ADD KEY `items_cat` (`items_cat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`items_cat`) REFERENCES `categories` (`categories_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
