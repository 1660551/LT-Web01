-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2018 at 07:53 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbh`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `CatID` int(11) NOT NULL,
  `CatName` varchar(4000) NOT NULL,
  `Price` int(11) NOT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `Hinh` varchar(4000) NOT NULL,
  `SoLuongCon` int(11) NOT NULL,
  `SoLuongBan` int(11) NOT NULL,
  `SoLuocXem` int(11) NOT NULL,
  PRIMARY KEY (`CatID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CatID`, `CatName`, `Price`, `NgayNhap`, `Hinh`, `SoLuongCon`, `SoLuongBan`, `SoLuocXem`) VALUES
(1, 'Huawei Mate 20 Pro Green', 3000000, '2018-11-22 00:00:00', 'huawei-mate-20-pro-green-600x600.jpg', 10, 50, 200),
(2, 'Samsung Galaxy A9 2018 Blue', 10000000, '2018-11-14 00:00:00', 'samsung-galaxy-a9-2018-blue-600x600.jpg', 15, 100, 100),
(3, 'Samsung Galaxy J6 Plus Bf 1', 7000000, '2018-11-26 00:00:00', 'samsung-galaxy-j6-plus-bf-1-600x600.jpg', 20, 150, 700),
(4, 'Samsung Galaxy Note 9 512Gb blue', 30000000, '2018-11-21 00:00:00', 'samsung-galaxy-note-9-512gb-blue-600x600.jpg', 120, 150, 350),
(5, 'Dell Inspiron 3576', 120000000, '2018-11-28 00:00:00', 'dell-inspiron-3576-p63f002n76f-450-400x400.png', 15, 100, 50);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
