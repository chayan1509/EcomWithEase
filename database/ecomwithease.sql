-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 12:36 PM
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
  `carColor` varchar(100) NOT NULL,
  `carSeat` int(2) NOT NULL,
  `carMileage` varchar(10) NOT NULL,
  `carPrice` varchar(10) NOT NULL,
  `carInsuarance` varchar(25) NOT NULL,
  `carPhoto` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cardetails`
--

INSERT INTO `cardetails` (`carNumber`, `carName`, `carBrand`, `carType`, `carColor`, `carSeat`, `carMileage`, `carPrice`, `carInsuarance`, `carPhoto`) VALUES
('WB100256', 'Hundai Creta', 'Hundai', 'SUV', 'RED', 6, '18', '450000', 'YES', 'images/carlist/car1.jpg'),
('WB100256444', 'Suzuki Swift', 'Maruti', 'Mini', 'RED', 4, '22', '180000', 'NO', 'images/carlist/car2.jpg'),
('WB14568', 'Hundai Verna', 'Hundai', 'MINI Sedan', 'Black', 4, '19', '320000', 'NO', 'images/carlist/car2.jpg'),
('WB1456878', 'Mahindra Xylo', 'Mahindra', 'XUV', 'WHITE', 7, '22', '670000', 'YES', 'images/carlist/car3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Sl_No` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userEmail` varchar(200) NOT NULL,
  `userPhone` varchar(12) NOT NULL,
  `userGender` varchar(12) NOT NULL,
  `userAddress` varchar(1000) NOT NULL,
  `userDOB` varchar(12) NOT NULL,
  `userImage` varchar(1500) DEFAULT NULL,
  `userPassword` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Sl_No`, `userName`, `userEmail`, `userPhone`, `userGender`, `userAddress`, `userDOB`, `userImage`, `userPassword`) VALUES
(1, 'Gagandeep', 'gagan.training@gmail.com', '743939835', 'male', 'Chandannagar', '1995-10-07', NULL, '526641bd710f0e083d38ed9a216391c3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cardetails`
--
ALTER TABLE `cardetails`
  ADD PRIMARY KEY (`carNumber`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`userEmail`),
  ADD UNIQUE KEY `Sl_No` (`Sl_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `Sl_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
