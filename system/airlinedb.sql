-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 10:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airlinedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookId` int(10) NOT NULL,
  `ticketId` varchar(11) NOT NULL,
  `pName` varchar(20) NOT NULL,
  `flCode` varchar(20) NOT NULL,
  `pGender` varchar(10) NOT NULL,
  `pPassport` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `nationality` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookId`, `ticketId`, `pName`, `flCode`, `pGender`, `pPassport`, `amount`, `nationality`) VALUES
(5, '6', 'geeshyaSiri', 'fl1', 'Female', 'pass2006', 9500, 'South Africa'),
(6, '4', 'Hirushi', 'fl1', 'Female', 'pass700', 1500, 'Indian'),
(7, '7', 'hiru', 'fl1', 'Female', 'pass0320', 32000, 'Sri Lankan');

-- --------------------------------------------------------

--
-- Table structure for table `cancellation`
--

CREATE TABLE `cancellation` (
  `cancId` int(11) NOT NULL,
  `bookId` varchar(11) NOT NULL,
  `ticketId` varchar(11) NOT NULL,
  `flCode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cancellation`
--

INSERT INTO `cancellation` (`cancId`, `bookId`, `ticketId`, `flCode`) VALUES
(1, '4', '3', 'fl1'),
(2, '4', '3', 'fl1'),
(3, '1', '4', 'fl1'),
(4, '3', '4', 'fl1');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flCode` varchar(10) NOT NULL,
  `flSource` varchar(20) NOT NULL,
  `flDestination` varchar(20) NOT NULL,
  `flDate` varchar(50) NOT NULL,
  `flSeats` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flCode`, `flSource`, `flDestination`, `flDate`, `flSeats`) VALUES
('fl1', 'Sri Lanka', 'Ameria', 'Sat Jul 29 20:47:27 IST 2023', 1),
('fl123', 'Australia', 'Ameria', 'Wed Jul 19 ', 12),
('fl23', 'Sri Lanka', 'United Kindom', 'Thu Jul 27 14:54:43 IST 2023', 45),
('fl234', 'Bangaladesh', 'Sri Lanka', '02.09.2023', 45),
('fl555', 'Australia', 'Sri Lanka', '2023.09.12', 9);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `pId` int(11) NOT NULL,
  `pName` varchar(20) NOT NULL,
  `pNation` varchar(15) NOT NULL,
  `pGender` varchar(10) NOT NULL,
  `pPassport` varchar(20) NOT NULL,
  `pAddress` varchar(50) NOT NULL,
  `pPhone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`pId`, `pName`, `pNation`, `pGender`, `pPassport`, `pAddress`, `pPhone`) VALUES
(3, 'dilmi', 'Ameria', 'Female', 'pass123', 'fvf', '1234567890'),
(4, 'Hirushi', 'Indian', 'Female', 'pass700', 'kaluthara', '0715389328'),
(5, 'riyana', 'South Africa', 'Female', 'pass300', 'kaluthara', '0711223456'),
(6, 'geeshyaSiri', 'South Africa', 'Female', 'pass2006', 'nagoda', '0342229642'),
(7, 'hiru', 'Sri Lankan', 'Female', 'pass0320', 'Kaluthara', '0715389328');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `cancellation`
--
ALTER TABLE `cancellation`
  ADD PRIMARY KEY (`cancId`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flCode`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`pId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cancellation`
--
ALTER TABLE `cancellation`
  MODIFY `cancId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
