-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2020 at 04:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

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
('WB021AAA', 'Nisan Magnite', 'Nisaan', 'SUV', 'Red', 5, '18.33', '490000', 'YES', 'images/carlist/car1.jpg'),
('WB03984kgdlv', 'Kia Sonet', 'Kia', 'SUV', 'Red', 5, '18.33', '620000', 'YES', 'images/carlist/car2.jpg\r\n'),
('WB100256', 'Hundai Creta', 'Hundai', 'SUV', 'RED', 6, '18', '450000', 'YES', 'images/carlist/car1.jpg'),
('WB100256444', 'Suzuki Swift', 'Maruti', 'Mini', 'RED', 4, '22', '180000', 'NO', 'images/carlist/car2.jpg'),
('WB1455679', 'Renault kwid', 'Renault', 'XUV', 'BLACK', 5, '28', '570000', 'YES', 'images/carlist/car2.jpg'),
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
(5, 'Chayan Mukherjee', 'chayanru98@gmail.com', '8001266418', 'male', 'Jagalgori, Betai', '1999-06-09', NULL, '526641bd710f0e083d38ed9a216391c3'),
(3, 'Chayan Mukherjee', 'chayanru99@gmail.com', '8001266418', 'male', 'Jagalgori, Betai', '1999-06-09', NULL, '526641bd710f0e083d38ed9a216391c3'),
(1, 'Gagandeep', 'gagan.training@gmail.com', '743939835', 'male', 'Chandannagar', '1995-10-07', NULL, '526641bd710f0e083d38ed9a216391c3');

-- --------------------------------------------------------

--
-- Table structure for table `usercartable`
--

CREATE TABLE `usercartable` (
  `sl_no` int(100) NOT NULL,
  `carName` varchar(50) NOT NULL,
  `carBrand` varchar(50) NOT NULL,
  `carType` varchar(50) NOT NULL,
  `carNumber` varchar(50) NOT NULL,
  `carColor` varchar(50) NOT NULL,
  `carFuel` varchar(50) DEFAULT NULL,
  `carOwners` int(50) DEFAULT NULL,
  `carDesc` varchar(5000) NOT NULL,
  `carPrice` varchar(50) NOT NULL,
  `carKM` int(50) NOT NULL,
  `carImages` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usercartable`
--

INSERT INTO `usercartable` (`sl_no`, `carName`, `carBrand`, `carType`, `carNumber`, `carColor`, `carFuel`, `carOwners`, `carDesc`, `carPrice`, `carKM`, `carImages`) VALUES
(1, 'honda city', 'honda', 'suv', 'wb907263', 'red', NULL, NULL, 'new car', '', 45686543, NULL),
(2, 'Honda Amaze', 'Honda', 'XUV', 'WB 08 1234', 'Black', NULL, NULL, 'Brand New ', '10000', 123, NULL),
(3, 'Mercedes Benz', 'Mercedes', 'SPORTS', 'GK 9876 BB', 'Black', NULL, NULL, 'Sports Car', '1000000', 123, NULL);

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
-- Indexes for table `usercartable`
--
ALTER TABLE `usercartable`
  ADD PRIMARY KEY (`sl_no`),
  ADD UNIQUE KEY `carNumber` (`carNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `Sl_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usercartable`
--
ALTER TABLE `usercartable`
  MODIFY `sl_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
