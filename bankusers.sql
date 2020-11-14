-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2020 at 07:57 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id15377728_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `bankusers`
--

CREATE TABLE `bankusers` (
  `CustomerID` int(5) NOT NULL,
  `AccountNumber` int(10) NOT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `BranchName` varchar(50) DEFAULT NULL,
  `TotalWithdrawal` int(20) NOT NULL,
  `TotalDeposist` int(11) NOT NULL,
  `AvailableBalance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bankusers`
--

INSERT INTO `bankusers` (`CustomerID`, `AccountNumber`, `CustomerName`, `Email`, `BranchName`, `TotalWithdrawal`, `TotalDeposist`, `AvailableBalance`) VALUES
(1, 1005462, 'Aman Mehra', 'aman.mehra@gmail.com', 'Garia', 504, 436, 52601),
(2, 2006478, 'Pooja Mishra', 'poomishra98@gmail.com', 'Lake Gardens', 75, 167, 64875),
(3, 3006567, 'Ishani Chakraborty', 'ishu_chk@gmail.com', 'Howrah', 89, 801, 673180),
(4, 4001526, 'Tina Saha', 'saha.tina3@gmail.com', 'DumDum', 1262, 67, 1715),
(5, 5003459, 'Tinni Singh', 'singhh21@gmail.com', 'Park Street', 24, 0, 23835),
(6, 6001676, 'Ankit Dutta', 'duttaankit@gmail.com', 'Narendrapur', 10, 78, 1940),
(7, 7008467, 'Isha Mallick', 'ishhaa24@yahoo.com', 'Central', 43, 295, 6144),
(8, 8003758, 'Sudhir Roy', 'sudhir56@gmail.com', 'Gariahut', 34, 99, 366403),
(9, 9008467, 'Somi Guha', 'guhasoma@gmail.com', 'Salt Lake', 0, 113, 843737),
(10, 10005678, 'Siman Parveen', 'simanparveen87@gmail.com', 'Sonarpur', 0, 34, 34155);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bankusers`
--
ALTER TABLE `bankusers`
  ADD PRIMARY KEY (`AccountNumber`,`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
