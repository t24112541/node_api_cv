-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2022 at 08:02 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `t_shirt_store`
--
CREATE DATABASE IF NOT EXISTS `t_shirt_store` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `t_shirt_store`;

-- --------------------------------------------------------

--
-- Table structure for table `t_customer`
--

DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE IF NOT EXISTS `t_customer` (
  `c_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'รหัสลูกค้า',
  `c_name` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อลูกค้า',
  `c_tel` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'ติดต่อ',
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_customer`
--

INSERT INTO `t_customer` (`c_id`, `c_name`, `c_tel`) VALUES
(1, 'cv', '0852114119'),
(2, 'OLA', '0987654321'),
(3, 'alpha', '1111111111'),
(7, 'undefined', '08'),
(8, 'alpaca', '1111111111'),
(9, 'alpaca', '1111111111'),
(10, 'Tion', '022222'),
(11, 'alpaca', '1111111111'),
(12, 'alpaca', '1111111111'),
(13, 'alpaca', '1111111111'),
(14, 'alpaca', '1111111111'),
(15, 'alpaca', '1111111111'),
(16, 'alpaca', '1111111111'),
(17, 'alpaca', '1111111111'),
(18, 'alpaca', '1111111111'),
(19, 'alpaca', '1111111111'),
(21, 'alpaca', '1111111111'),
(22, 'alpaca', '1111111111'),
(23, 'alpaca', '1111111111'),
(24, 'alpaca', '1111111111'),
(25, 'alpaca', '1111111111'),
(26, 'alpaca', '1111111111'),
(27, 'alpaca', '1111111111'),
(28, 'alpaca', '1111111111'),
(29, 'alpaca', '1111111111'),
(30, 'alpaca', '1111111111'),
(31, 'alpaca', '1111111111'),
(32, 'alpaca', '1111111111'),
(33, 'alpaca', '1111111111'),
(34, 'alpaca', '1111111111'),
(35, 'alpaca', '1111111111'),
(36, 'alpaca', '1111111111'),
(37, 'alpaca', '1111111111'),
(38, 'alpaca', '1111111111'),
(39, 'alpaca', '1111111111'),
(40, 'alpaca', '1111111111'),
(41, 'alpaca', '1111111111'),
(42, 'alpaca', '1111111111'),
(43, 'alpaca', '1111111111'),
(44, 'alpaca', '1111111111'),
(45, 'alpaca', '1111111111'),
(46, 'alpaca', '1111111111'),
(47, 'alpaca', '1111111111'),
(48, 'alpaca', '1111111111'),
(49, 'alpaca', '1111111111'),
(50, 'alpaca', '1111111111'),
(51, 'alpaca', '1111111111'),
(52, 'alpaca', '1111111111'),
(53, 'alpaca', '1111111111'),
(54, 'alpaca', '1111111111'),
(55, 'alpaca', '1111111111'),
(56, 'alpaca', '1111111111'),
(57, 'alpaca', '1111111111'),
(58, 'alpaca', '1111111111'),
(59, 'alpaca', '1111111111'),
(60, 'alpaca', '1111111111'),
(61, 'alpaca', '1111111111'),
(62, 'alpaca', '1111111111'),
(63, 'myname:0', 'tel:0'),
(64, 'myname:1', 'tel:1'),
(65, 'myname:2', 'tel:2'),
(66, 'myname:3', 'tel:3'),
(67, 'myname:4', 'tel:4'),
(68, 'myname:5', 'tel:5'),
(69, 'myname:6', 'tel:6'),
(70, 'myname:7', 'tel:7'),
(71, 'myname:8', 'tel:8'),
(72, 'myname:9', 'tel:9'),
(73, 'myname:10', 'tel:10'),
(74, 'myname:11', 'tel:11'),
(75, 'myname:12', 'tel:12'),
(76, 'myname:13', 'tel:13'),
(77, 'myname:14', 'tel:14'),
(78, 'myname:15', 'tel:15'),
(79, 'myname:16', 'tel:16'),
(80, 'myname:17', 'tel:17'),
(81, 'myname:18', 'tel:18'),
(82, 'myname:19', 'tel:19'),
(83, 'myname:20', 'tel:20'),
(84, 'myname:21', 'tel:21'),
(85, 'myname:22', 'tel:22'),
(86, 'myname:23', 'tel:23'),
(87, 'myname:24', 'tel:24'),
(88, 'myname:25', 'tel:25'),
(89, 'myname:26', 'tel:26'),
(90, 'myname:27', 'tel:27'),
(91, 'myname:28', 'tel:28'),
(92, 'myname:29', 'tel:29'),
(93, 'myname:30', 'tel:30'),
(94, 'myname:31', 'tel:31'),
(95, 'myname:32', 'tel:32'),
(96, 'myname:33', 'tel:33'),
(97, 'myname:34', 'tel:34'),
(98, 'myname:35', 'tel:35'),
(99, 'myname:36', 'tel:36'),
(164, 'alpaca', '1111111111'),
(101, 'myname:38', 'tel:38'),
(102, 'myname:39', 'tel:39'),
(103, 'myname:40', 'tel:40'),
(104, 'myname:41', 'tel:41'),
(105, 'myname:42', 'tel:42'),
(106, 'myname:43', 'tel:43'),
(107, 'myname:44', 'tel:44'),
(108, 'myname:45', 'tel:45'),
(109, 'myname:46', 'tel:46'),
(110, 'myname:47', 'tel:47'),
(111, 'myname:48', 'tel:48'),
(112, 'myname:49', 'tel:49'),
(113, 'myname:50', 'tel:50'),
(114, 'myname:51', 'tel:51'),
(115, 'myname:52', 'tel:52'),
(116, 'myname:53', 'tel:53'),
(117, 'myname:54', 'tel:54'),
(118, 'myname:55', 'tel:55'),
(119, 'myname:56', 'tel:56'),
(120, 'myname:57', 'tel:57'),
(121, 'myname:58', 'tel:58'),
(122, 'myname:59', 'tel:59'),
(123, 'myname:60', 'tel:60'),
(124, 'myname:61', 'tel:61'),
(125, 'myname:62', 'tel:62'),
(126, 'myname:63', 'tel:63'),
(127, 'myname:64', 'tel:64'),
(128, 'myname:65', 'tel:65'),
(129, 'myname:66', 'tel:66'),
(130, 'myname:67', 'tel:67'),
(131, 'myname:68', 'tel:68'),
(132, 'myname:69', 'tel:69'),
(133, 'myname:70', 'tel:70'),
(134, 'myname:71', 'tel:71'),
(135, 'myname:72', 'tel:72'),
(136, 'myname:73', 'tel:73'),
(137, 'myname:74', 'tel:74'),
(138, 'myname:75', 'tel:75'),
(139, 'myname:76', 'tel:76'),
(140, 'myname:77', 'tel:77'),
(141, 'myname:78', 'tel:78'),
(142, 'myname:79', 'tel:79'),
(143, 'myname:80', 'tel:80'),
(144, 'myname:81', 'tel:81'),
(145, 'myname:82', 'tel:82'),
(146, 'myname:83', 'tel:83'),
(147, 'myname:84', 'tel:84'),
(148, 'myname:85', 'tel:85'),
(149, 'myname:86', 'tel:86'),
(150, 'myname:87', 'tel:87'),
(151, 'myname:88', 'tel:88'),
(152, 'myname:89', 'tel:89'),
(153, 'myname:90', 'tel:90'),
(154, 'myname:91', 'tel:91'),
(155, 'myname:92', 'tel:92'),
(156, 'myname:93', 'tel:93'),
(157, 'myname:94', 'tel:94'),
(158, 'myname:95', 'tel:95'),
(159, 'myname:96', 'tel:96'),
(160, 'myname:97', 'tel:97'),
(161, 'myname:98', 'tel:98'),
(162, 'myname:99', 'tel:99'),
(163, 'myname:100', 'tel:100');

-- --------------------------------------------------------

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
CREATE TABLE IF NOT EXISTS `t_order` (
  `o_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'รหัสคำสั่งซื้อ',
  `o_date_paid` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'วันที่จ่าย',
  `o_shipping_address` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'ที่อยู่จัดส่ง',
  `p_id` int(5) NOT NULL COMMENT 'รหัสสินค้า',
  `os_id` int(5) NOT NULL COMMENT 'รหัสสถานะ',
  `c_id` int(5) NOT NULL COMMENT 'รหัสลูกค้า',
  PRIMARY KEY (`o_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_order`
--

INSERT INTO `t_order` (`o_id`, `o_date_paid`, `o_shipping_address`, `p_id`, `os_id`, `c_id`) VALUES
(1, '2022-09-01 12:28:15', 'chaiyaphum ', 20, 1, 1),
(2, '2022-08-30 12:29:06', 'Korat', 20, 2, 2),
(3, '2022-08-30 12:29:06', 'Korat', 20, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_order_status`
--

DROP TABLE IF EXISTS `t_order_status`;
CREATE TABLE IF NOT EXISTS `t_order_status` (
  `os_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสถานะ',
  `os_status` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'สถานะจัดส่ง',
  PRIMARY KEY (`os_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_order_status`
--

INSERT INTO `t_order_status` (`os_id`, `os_status`) VALUES
(1, 'placed_order'),
(2, 'paid'),
(3, 'out of shipping'),
(4, 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `t_product`
--

DROP TABLE IF EXISTS `t_product`;
CREATE TABLE IF NOT EXISTS `t_product` (
  `p_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสินค้า',
  `p_gender` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'เพศ',
  `p_size` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'ขนาด',
  `p_price` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'ราคา',
  `s_id` int(5) NOT NULL COMMENT 'รหัส style',
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_product`
--

INSERT INTO `t_product` (`p_id`, `p_gender`, `p_size`, `p_price`, `s_id`) VALUES
(20, 'Women', 'XL', '320', 2),
(19, 'Women', 'L', '320', 2),
(18, 'Women', 'M', '290', 2),
(17, 'Women', 'S', '290', 2),
(16, 'Women', 'XS', '290', 2),
(15, 'Men', 'XL', '450', 1),
(14, 'Men', 'L', '430', 1),
(13, 'Men', 'M', '420', 1),
(12, 'Men', 'S', '400', 1),
(11, 'Men', 'XS', '400', 1),
(21, 'Men', 'XS', '200', 1),
(22, 'Women', 'S', '300', 2),
(23, 'Men', 'M', '200', 1),
(24, 'Women', 'L', '300', 2),
(25, 'Men', 'XL', '200', 1),
(26, 'Women', 'XS', '300', 2),
(27, 'Men', 'S', '200', 1),
(28, 'Women', 'M', '300', 2),
(29, 'Men', 'L', '200', 1),
(30, 'Women', 'XL', '300', 2),
(31, 'Men', 'XS', '200', 1),
(32, 'Men', 'XL', '500', 106),
(33, 'Men', 'XL', '500', 106);

-- --------------------------------------------------------

--
-- Table structure for table `t_style`
--

DROP TABLE IF EXISTS `t_style`;
CREATE TABLE IF NOT EXISTS `t_style` (
  `s_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'รหัส style',
  `s_style` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'style',
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_style`
--

INSERT INTO `t_style` (`s_id`, `s_style`) VALUES
(1, 'Plain color / Red'),
(2, 'Plain color / Black'),
(3, 'mystyle:0'),
(4, 'mystyle:1'),
(5, 'mystyle:2'),
(6, 'mystyle:3'),
(7, 'mystyle:4'),
(8, 'mystyle:5'),
(9, 'mystyle:6'),
(11, 'mystyle:8'),
(12, 'mystyle:9'),
(13, 'mystyle:10'),
(14, 'mystyle:11'),
(15, 'mystyle:12'),
(16, 'mystyle:13'),
(17, 'mystyle:14'),
(18, 'mystyle:15'),
(19, 'mystyle:16'),
(20, 'mystyle:17'),
(21, 'mystyle:18'),
(22, 'mystyle:19'),
(23, 'mystyle:20'),
(24, 'mystyle:21'),
(25, 'mystyle:22'),
(26, 'mystyle:23'),
(27, 'mystyle:24'),
(28, 'mystyle:25'),
(29, 'mystyle:26'),
(30, 'mystyle:27'),
(31, 'mystyle:28'),
(32, 'mystyle:29'),
(33, 'mystyle:30'),
(34, 'mystyle:31'),
(35, 'mystyle:32'),
(36, 'mystyle:33'),
(37, 'mystyle:34'),
(38, 'mystyle:35'),
(39, 'mystyle:36'),
(40, 'mystyle:37'),
(41, 'mystyle:38'),
(42, 'mystyle:39'),
(43, 'mystyle:40'),
(44, 'mystyle:41'),
(45, 'mystyle:42'),
(46, 'mystyle:43'),
(47, 'mystyle:44'),
(48, 'mystyle:45'),
(49, 'mystyle:46'),
(50, 'mystyle:47'),
(51, 'mystyle:48'),
(52, 'mystyle:49'),
(53, 'mystyle:50'),
(54, 'mystyle:51'),
(55, 'mystyle:52'),
(56, 'mystyle:53'),
(57, 'mystyle:54'),
(58, 'mystyle:55'),
(59, 'mystyle:56'),
(60, 'mystyle:57'),
(61, 'mystyle:58'),
(62, 'mystyle:59'),
(63, 'mystyle:60'),
(64, 'mystyle:61'),
(65, 'mystyle:62'),
(66, 'mystyle:63'),
(67, 'mystyle:64'),
(68, 'mystyle:65'),
(69, 'mystyle:66'),
(70, 'mystyle:67'),
(71, 'mystyle:68'),
(72, 'mystyle:69'),
(73, 'mystyle:70'),
(74, 'mystyle:71'),
(75, 'mystyle:72'),
(76, 'mystyle:73'),
(77, 'mystyle:74'),
(78, 'mystyle:75'),
(79, 'mystyle:76'),
(80, 'mystyle:77'),
(81, 'mystyle:78'),
(82, 'mystyle:79'),
(83, 'mystyle:80'),
(84, 'mystyle:81'),
(85, 'mystyle:82'),
(86, 'mystyle:83'),
(87, 'mystyle:84'),
(88, 'mystyle:85'),
(89, 'mystyle:86'),
(90, 'mystyle:87'),
(91, 'mystyle:88'),
(92, 'mystyle:89'),
(93, 'mystyle:90'),
(94, 'mystyle:91'),
(95, 'mystyle:92'),
(96, 'mystyle:93'),
(97, 'mystyle:94'),
(98, 'mystyle:95'),
(99, 'mystyle:96'),
(100, 'mystyle:97'),
(101, 'mystyle:98'),
(102, 'mystyle:99'),
(103, 'mystyle:100'),
(104, 'Figures / Batman'),
(105, 'Patterns / drawing'),
(106, 'Figures / Thor');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
