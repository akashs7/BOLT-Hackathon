-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2020 at 11:56 AM
-- Server version: 8.0.16
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bolt`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `ClassID` smallint(4) NOT NULL,
  `ID` varchar(9) NOT NULL,
  `Regno` varchar(9) NOT NULL,
  `Sub` varchar(20) NOT NULL,
  `Start` time NOT NULL,
  `End` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `indoubt`
--

CREATE TABLE `indoubt` (
  `Regno` varchar(9) NOT NULL,
  `ID` varchar(9) NOT NULL,
  `Content` varchar(200) NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `outdoubts`
--

CREATE TABLE `outdoubts` (
  `Regno` varchar(9) NOT NULL,
  `ID` varchar(9) NOT NULL,
  `Content` varchar(200) NOT NULL,
  `File` varchar(200) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Regno` varchar(9) NOT NULL,
  `SPwd` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Picture` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID` varchar(9) NOT NULL,
  `TPwd` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Photo` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `indoubt`
--
ALTER TABLE `indoubt`
  ADD PRIMARY KEY (`Content`);

--
-- Indexes for table `outdoubts`
--
ALTER TABLE `outdoubts`
  ADD PRIMARY KEY (`Content`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Regno`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
