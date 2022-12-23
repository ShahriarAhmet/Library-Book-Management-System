-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 10:25 PM
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
-- Database: `library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookID` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `publishYear` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookID`, `name`, `publisher`, `price`, `publishYear`) VALUES
('1', 'Extra Book', 'Ebooks', '100', '2009'),
('100', 'Test Book', 'Test Publisher', '2000', '2022'),
('3', 'Surgery', 'AK', '2000', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `bookID` varchar(10) DEFAULT NULL,
  `studentID` varchar(10) DEFAULT NULL,
  `issueDate` varchar(20) DEFAULT NULL,
  `dueDate` varchar(20) DEFAULT NULL,
  `returnBook` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`bookID`, `studentID`, `issueDate`, `dueDate`, `returnBook`) VALUES
('1', '2', '04-12-2022', '14-12-2022', 'YES'),
('3', '3', '04-12-2022', '20-12-2022', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `passID` varchar(10) DEFAULT NULL,
  `studentID` varchar(10) DEFAULT NULL,
  `issueDate` varchar(20) DEFAULT NULL,
  `expiryDate` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`passID`, `studentID`, `issueDate`, `expiryDate`) VALUES
('1', '2', '04-12-2022', '21-12-2022');

-- --------------------------------------------------------

--
-- Table structure for table `mempass`
--

CREATE TABLE `mempass` (
  `passID` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mempass`
--

INSERT INTO `mempass` (`passID`, `name`) VALUES
('1', 'Prototype Pass'),
('432467', 'Test Pass');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `fatherName` varchar(100) DEFAULT NULL,
  `courseName` varchar(20) DEFAULT NULL,
  `brunchName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `name`, `fatherName`, `courseName`, `brunchName`) VALUES
('132', 'Shah', 'Robab', 'Engineering', 'ECE'),
('2', 'Rohan', 'Uddin', 'Medical', 'Microbiology'),
('3', 'benjir', 'Shah', 'Medical', 'Surgery'),
('4', 'Sofwat', 'Ryan', 'Engineering', 'ICT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `mempass`
--
ALTER TABLE `mempass`
  ADD PRIMARY KEY (`passID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
