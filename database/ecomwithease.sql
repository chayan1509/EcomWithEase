-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 05:54 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomwithease`
--

-- --------------------------------------------------------

--
-- Table structure for table `cardetails`
--

CREATE TABLE `cardetails` (
  `carNumber` varchar(15) NOT NULL,
  `carName` varchar(100) NOT NULL,
  `carBrand` varchar(100) NOT NULL,
  `carType` varchar(100) NOT NULL,
  `carColour` varchar(100) NOT NULL,
  `carSeat` int(2) NOT NULL,
  `carMileage` varchar(10) NOT NULL,
  `carPrice` varchar(10) NOT NULL,
  `carInsuarance` varchar(25) NOT NULL,
  `carPhoto` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `userId` varchar(10000) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userEmail` varchar(200) NOT NULL,
  `userPhone` varchar(12) NOT NULL,
  `userGender` varchar(12) NOT NULL,
  `userAddress` varchar(1000) NOT NULL,
  `userDOB` varchar(12) NOT NULL,
  `userImage` varchar(1500) NOT NULL,
  `userPassword` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
