-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2020 at 07:49 PM
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
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TransactionID` int(11) NOT NULL,
  `from_cust_id` int(20) NOT NULL,
  `transferername` varchar(50) NOT NULL,
  `to_cust_id` int(11) NOT NULL,
  `receivername` varchar(50) NOT NULL,
  `cashtransfer` int(20) NOT NULL,
  `transfererbalance` int(11) NOT NULL,
  `receiverbalance` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `msgforreceiver` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TransactionID`, `from_cust_id`, `transferername`, `to_cust_id`, `receivername`, `cashtransfer`, `transfererbalance`, `receiverbalance`, `date`, `msgforreceiver`) VALUES
(1, 5, 'Tinni Singh', 8, 'Sudhir Roy', 2, 23851, 366346, '2020-11-11 01:57:55', ''),
(2, 5, 'Tinni Singh', 8, 'Sudhir Roy', 2, 23849, 366348, '2020-11-11 02:19:12', ''),
(3, 3, 'Ishani Chakraborty', 8, 'Sudhir Roy', 89, 672379, 366437, '2020-11-11 03:35:46', 'project'),
(4, 8, 'Sudhir Roy', 10, 'Siman Parveen', 34, 366403, 34155, '2020-11-12 08:57:07', 'proj'),
(5, 2, 'Pooja Mishra', 9, 'Somi Guha', 45, 64740, 843669, '2020-11-12 09:35:58', 'work'),
(6, 1, 'Aman Mehra', 7, 'Isha Mallick', 78, 52638, 5970, '2020-11-12 10:29:23', 'uii'),
(7, 1, 'Aman Mehra', 7, 'Isha Mallick', 78, 52560, 6048, '2020-11-12 10:30:17', 'uii'),
(8, 1, 'Aman Mehra', 7, 'Isha Mallick', 78, 52482, 6126, '2020-11-12 10:30:39', 'uii'),
(9, 7, 'Isha Mallick', 9, 'Somi Guha', 43, 6083, 843712, '2020-11-12 12:06:53', 'work'),
(10, 7, 'Isha Mallick', 9, 'Somi Guha', 43, 6083, 843712, '2020-11-12 12:06:53', 'work'),
(11, 1, 'Aman Mehra', 2, 'Pooja Mishra', 67, 52415, 64807, '2020-11-12 01:15:48', 'rt'),
(12, 1, 'Aman Mehra', 2, 'Pooja Mishra', 67, 52415, 64807, '2020-11-12 01:15:48', 'rt'),
(13, 1, 'Aman Mehra', 7, 'Isha Mallick', 56, 52359, 6139, '2020-11-12 05:37:37', 'hii'),
(14, 1, 'Aman Mehra', 4, 'Tina Saha', 67, 52292, 2977, '2020-11-12 07:38:40', ''),
(15, 4, 'Tina Saha', 1, 'Aman Mehra', 78, 2899, 52370, '2020-11-12 07:49:14', ''),
(16, 4, 'Tina Saha', 2, 'Pooja Mishra', 78, 2821, 64885, '2020-11-12 07:49:31', ''),
(17, 1, 'Aman Mehra', 6, 'Ankit Dutta', 78, 52292, 1950, '2020-11-13 08:03:44', 'Donation');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TransactionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TransactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
