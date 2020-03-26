-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2020 at 03:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Titlle` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Photo` varchar(50) NOT NULL,
  `Text` text NOT NULL,
  `Autor` varchar(30) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Meta_k` varchar(200) NOT NULL,
  `Meta_d` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`ID`, `Titlle`, `Date`, `Type`, `Photo`, `Text`, `Autor`, `Description`, `Meta_k`, `Meta_d`) VALUES
(1, 'Satauri1', '2020-03-01', 'Type1', 'Photo1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Luka1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ummy ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the '),
(2, 'Satauri2', '2020-03-02', 'Type2', 'Photo2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Luka2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the '),
(3, 'Satauri3', '2020-03-03', 'Type3', 'Photo3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Luka3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID` int(6) UNSIGNED NOT NULL,
  `Titlle` varchar(50) NOT NULL,
  `Meta_k` varchar(200) NOT NULL,
  `Meta_d` varchar(200) NOT NULL,
  `Text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID`, `Titlle`, `Meta_k`, `Meta_d`, `Text`) VALUES
(1, 'Satauri1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and ', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
(2, 'Satauri2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard '),
(3, 'Satauri3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has k a galley of type and scrambled it to make a type specimen book.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(6) UNSIGNED NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Age` int(11) NOT NULL,
  `Birthday` date NOT NULL,
  `Reg_Date` date NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Last_Name`, `Age`, `Birthday`, `Reg_Date`, `Password`, `Gender`) VALUES
(1, 'Luka1', 'Nebieridze1', 20, '2019-11-05', '2020-03-03', '12345', 'male'),
(2, 'Luka2', 'Nebieridze2', 20, '2020-01-14', '2020-03-04', '12345', 'male'),
(3, 'Luka3', 'Nebieridze3', 20, '2019-11-06', '2020-03-02', '12345', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
