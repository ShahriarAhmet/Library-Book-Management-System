-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2022 at 06:21 PM
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
('101', 'Ferter', 'Game', '32432', '1223'),
('111', 'jameres ere', 'Vertik noke', '343', '2008'),
('121', 'GASC ', 'WETEDFSD AEF', '4342', '2008'),
('131', 'TEAS', 'asfsa aasds', '5751', '3444'),
('141', 'Pake', 'Fass', '132', '1324'),
('181', 'kqem HAW', 'AHJAHdfjh', '1223', '29883'),
('191', 'Kame', 'Has nate', '2004', '2000'),
('20', 'Port', ' ere', ' 1344', '1444'),
('20001', 'Learning With MySQL', 'Northsouth', '1000', '2009'),
('20006', 'Geopolitics of Era', 'Shovon Books', '2000', '2005'),
('20009', 'Guide for Hikers', 'Lesengale Travels', '1999', '2010'),
('21', 'Another Book', 'Ebooks', '100', '2001'),
('211', 'yesa', 'vvw ews', '2234', '2006'),
('23', 'Hasfak', 'jame node', '854', '2001'),
('3', 'Surgery', 'AK', '2000', '2020'),
('30', 'Um,ai', 'Ple man', '22121', '2683'),
('3001', 'Ark of Fire', 'Amsterdam', '3000', '2010'),
('3002', 'Legend of Sparta', 'GeekforGreeks', '1500', '2006'),
('32', 'Emar Horse', 'Stephen', '200', '2005'),
('33', 'Surgery', 'AK', '2000', '2020'),
('38', 'ter', 'gade', 'aser', '222'),
('40', 'Pokemon', 'Kane', '450', '2022'),
('400', 'dfsfsd', 'asfsd', '23423', '1999'),
('41', 'history', 'Ovetonm', '550', '2014'),
('42', 'nam of Trive', 'Yong Sun', '330', '2016'),
('43', 'Teti', 'Hasan Mahmood', '440', '1977'),
('44', 'Hacine', 'hasnsa', '900', '1977'),
('45', 'james', 'jamer', '499', '1909'),
('46', 'Tin tin', 'Peter', '900', '1999'),
('48', 'Umi ka', 'Pok mon', '800', '1999'),
('49', 'test Papers', 'Jone mahmood', '700', '2018'),
('5', 'Fafss asdasf', 'asfder etez', '3242', ''),
('50', 'Circuite', 'pormax', '988', '2000'),
('55', 'hjyghj', 'jhhjhjk', '545', '2001'),
('6', 'DDfs', 'fsdddfg', '7686', '2005'),
('7', 'Tasdf', 'Sfasd sdafa', '2345', '1999'),
('9', 'DaS', 'SFAWS', '435', '2004');

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
('10', 'Freshers Pass'),
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
('10', 'Adib', 'Salahuddin', 'Business', 'Finance'),
('100', 'Sakayet', 'Chemon', 'Engineering', 'ECE'),
('111', 'akash', 'hasan', 'Engineering', 'ECE'),
('121', 'Manas', 'hosain', 'Engineering', 'ECE'),
('131', 'shamim', 'redwan', 'Engineering', 'ECE'),
('132', 'Shah', 'Robab', 'Engineering', 'ECE'),
('140', 'Shah', 'Robab', 'Engineering', 'ECE'),
('141', 'hemel', 'khaan', 'Engineering', 'ECE'),
('16', 'misal', 'akib', 'Engineering', 'ECE'),
('17', 'mintha', 'masum', 'Engineering', 'ICT'),
('18', 'Puja', 'tamal', 'Business', 'BBA'),
('2', 'Rohan', 'Uddin', 'Medical', 'Microbiology'),
('20', 'Janny', 'Robert', 'Medical', 'Surgery'),
('200', 'Rohan', 'Uddin', 'Medical', 'Microbiology'),
('2001', 'Tanjid Saleh', 'Rahat Saleh', 'Engineering', 'ICT'),
('2002', 'Kamal Ahsan', 'Rohit Ahsan', 'Engineering', 'ICT'),
('2003', 'Kiron Alom', 'Shifat Alom', 'Engineering', 'Mechanical'),
('2004', 'Josim Uddin', 'Chayan Uddin', 'Medical', 'Pharmacy'),
('2005', 'Rian Alam', 'Siam Alam', 'Medical', 'Surgery'),
('2006', 'Rafin Rahat', 'Jothun Rahat', 'Business', 'Finance'),
('2007', 'Jagat Singh', 'Kiron Singh', 'Medical', 'Microbiology'),
('2008', 'Singhala Bala', 'Ridhoy Bala', 'Business', 'BBA'),
('2009', 'Jagat Vat', 'Saleh Vat', 'Engineering', 'ECE'),
('2010', 'Jamal Khasoghi', 'Rahat Khasoghi', 'Business', 'BBA'),
('2011', 'Chanmoy Ghosh', 'Tonmoy Ghosh', 'Medical', 'Surgery'),
('2012', 'Ridhom Hasan', 'Rion Hasan', 'Engineering', 'Mechanical'),
('2013', 'Parag Arghwal', 'Jogesh Arghwal', 'Business', 'Finance'),
('2014', 'Saif Hasan', 'Arif Hasan', 'Medical', 'Pharmacy'),
('2015', 'Jogot Sheath', 'Horit Sheath', 'Medical', 'Microbiology'),
('2016', 'Chonmoy Chawala', 'Tonmoy Chawala', 'Engineering', 'ICT'),
('2017', 'Asif Sifat', 'Nasif Sifat', 'Medical', 'Surgery'),
('2018', 'Haran Ali', 'Shabek Ali', 'Business', 'BBA'),
('2019', 'Fatin Mahmud', 'Shifat Mahmud', 'Business', 'Finance'),
('2020', 'Alid Ahmad', 'Rohan Ahmad', 'Medical', 'Pharmacy'),
('2021', 'Rownok Hossain', 'Jahid Hossain', 'Engineering', 'ECE'),
('2022', 'Azad Ahnaf', 'Maruf Ahnaf', 'Engineering', 'ICT'),
('2023', 'Dharmaka Abrathal', 'Jakmakhal Abrthal', 'Business', 'BBA'),
('2024', 'Joachim Gomez', 'Soma Gomez', 'Medical', 'Microbiology'),
('2025', 'Mohon Sordar', 'Jobu Sordar', 'Engineering', 'Mechanical'),
('2026', 'Gautam Prasad', 'Johorlal Prasad', 'Engineering', 'ICT'),
('2027', 'Soham Siraz', 'Johan Siraz', 'Engineering', 'Mechanical'),
('2028', 'Ghoran Azad', 'Dihan Azad', 'Business', 'BBA'),
('2029', 'Mariam Alam', 'Borhan Alam', 'Medical', 'Civil'),
('2030', 'Mohona Alamgir', 'Hasan Alamgir', 'Engineering', 'ICT'),
('2031', 'Asifa Mahmood', 'Dihan Mahmood', 'Medical', 'Microbiology'),
('2032', 'Sreya Shuvashish', 'Adnan Shuvashish', 'Business', 'Finance'),
('2033', 'Pranzal Ahamd', 'Arafat Ahmad', 'Engineering', 'Mechanical'),
('2034', 'Sruti Bishsash', 'Gautam Bishshah', 'Engineering', 'Mechanical'),
('2035', 'Aman Arif', 'Zaman Arif', 'Medical', 'Pharmacy'),
('2036', 'Adam Azmi', 'Gouran Azmi', 'Engineering', 'ECE'),
('2037', 'Adhora Ahmed', 'Helal Ahmed', 'Engineering', 'ICT'),
('2038', 'Azrak Ahmad', 'Helal Ahmad', 'Medical', 'Pharmacy'),
('2039', 'Moshumi Hasan', 'Saif Hasan', 'Business', 'Finance'),
('2040', 'Nayema Karim', 'Sayed Karim', 'Business', 'BBA'),
('2041', 'Agatha Gomez', 'Solom Gomez', 'Medical', 'Surgery'),
('2042', 'Jimmy Young', 'Yang Young', 'Engineering', 'ICT'),
('2043', 'Horit Pal', 'Jogesh Pal', 'Medical', 'Pharmacy'),
('2044', 'Mahfuza Rahman', 'Afnan Rahman', 'Engineering', 'ECE'),
('2045', 'Afsana Ali', 'Josim Ali', 'Engineering', 'Mechanical'),
('2046', 'Tula Alam', 'Soron Alam', 'Medical', 'Pharmacy'),
('2048', 'Salman Azmi', 'Ademi Azmi', 'Business', 'BBA'),
('2049', 'Siam Ahmad ', 'Rohim Ahmad', 'Engineering', 'ECE'),
('2050', 'Mina Ahmad', 'Borhan Ahmad', 'Medical', 'Microbiology'),
('21', 'Jack', 'Robert', 'Engineering', 'ECE'),
('22', 'Peter', 'parker', 'Engineering', 'ECE'),
('24', 'Jack', 'Robert', 'Engineering', 'ECE'),
('25', 'Mike', 'peter', 'Engineering', 'Civil'),
('26', 'Miles', 'Jack', 'Engineering', 'ECE'),
('27', '', '', 'Engineering', 'ECE'),
('29', 'Harman', 'hector', 'Engineering', 'ECE'),
('3', 'benjir', 'Shah', 'Medical', 'Surgery'),
('31', 'Greenwood', 'Backham', 'Engineering', 'ECE'),
('333', 'benjir', 'Shah', 'Medical', 'Surgery'),
('34', 'stg', '', 'Engineering', 'ECE'),
('345', '3gdfg', '', 'Engineering', 'ECE'),
('38', 'Misa', 'Mike', 'Medical', 'ICT'),
('4', 'Sofwat', 'Ryan', 'Engineering', 'ICT'),
('420', 'Sofwat', 'Ryan', 'Engineering', 'ICT'),
('44', 'Tim', 'Wask', 'Engineering', 'ECE'),
('457', '', '', 'Engineering', 'ECE'),
('46', 'Mer', 'Merfas', 'Engineering', 'ECE'),
('47', 'Darwin', 'Dast', 'Engineering', 'ECE'),
('48', 'Dime', 'Dake', 'Engineering', 'ECE'),
('49', 'Dina', 'Lulu', 'Engineering', 'ECE'),
('50', 'SHarna', 'Jane', 'Engineering', 'Microbiology'),
('51', 'Sharnalika', 'Dane', 'Engineering', 'ECE'),
('53', 'Priuthula', 'Sake', 'Engineering', 'ECE'),
('54', 'Prithula', 'Sakayet', 'Engineering', 'ECE'),
('55', 'prayon', 'lol', 'Engineering', 'ECE'),
('56', 'kaej', 'kawaj', 'Engineering', 'Surgery'),
('60', 'Robert', 'hasn', 'Engineering', 'ECE'),
('61', 'nervetrt', 'uowerhjo', 'Engineering', 'ECE'),
('62', 'Nagersa', '', 'Engineering', 'ECE'),
('63', 'David', 'Fa', 'Engineering', 'ECE'),
('67', 'Date', 'Faskoe', 'Engineering', 'ECE'),
('675', '56', '', 'Engineering', 'ECE'),
('68', 'jkae', 'kets', 'Engineering', 'ECE'),
('69', 'Dane', 'Dake', 'Engineering', 'ECE'),
('70', 'afda', 'awrf', 'Engineering', 'ECE'),
('71', 'Jasm', 'Jasjk', 'Engineering', 'ECE'),
('72', 'Dane', 'Kasr', 'Business', 'ECE'),
('78', 'fsdg', 'sdfg', 'Engineering', 'ECE'),
('79', 'df', '', 'Engineering', 'ECE'),
('86', 'sad', 'faaas', 'Engineering', 'ECE'),
('87', 'Farhan', 'Harun', 'Business', 'BBA'),
('89', 'dfaas', '', 'Engineering', 'ECE'),
('97', 'fsaf', '', 'Engineering', 'ECE'),
('98', 'sadfa', 'asdas', 'Engineering', 'ECE'),
('99', 'afsa', 'sasf', 'Engineering', 'ECE');

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
