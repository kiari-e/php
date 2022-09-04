-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2022 at 03:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer_detail`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `acc_no` int(15) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_no` int(15) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`acc_no`, `first_name`, `last_name`, `phone_no`, `address`) VALUES
(354, 'Leina', 'Gustavo', 134567893, 'London, United Kingdom'),
(1234, 'Kane', 'Bastos', 732456987, 'Auckland, New Zealand'),
(2399, 'Alexia', 'Shapira', 112567345, 'Berlin, Germany'),
(3456, 'Mabe', 'Sophia', 754337982, 'Nairobi, Kenya'),
(4803, 'Ako', 'Johanson', 745674321, 'Bern, Switzerland'),
(5478, 'Zack ', 'Michael', 136784333, 'Oakland, USA'),
(5530, 'Ben', 'Kim', 864523654, 'Lugano, Switzerland'),
(6547, 'Heina', 'Fisher', 1238645789, 'Johannesberg, South Africa'),
(7755, 'Kate', 'Kenigan', 154235487, 'Lagos, Nigeria'),
(8439, 'Chen', 'Kami', 289546224, 'Perth, Australia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`acc_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
