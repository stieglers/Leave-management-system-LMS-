-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 11:53 AM
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
-- Database: `elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-11-03 05:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(6, 'Information and Communication Technology ', 'ICT', '1', '2021-07-06 10:19:06'),
(7, 'Business Administration', 'BBA', '2', '2021-07-06 10:20:07'),
(8, 'Procurement and Supply', 'PS', '3', '2021-07-06 10:20:59'),
(9, 'Sociology and Social Work', 'SSW', '4', '2021-07-06 10:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(4, '00', 'DEOGRATIUS', 'KIMARYO', 'deogratius@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Male', '4 September, 2014', 'Information and Communication Technology ', '1233-MOSHI', 'KILIMANJARO', 'TANZANIA', '0766776677', 1, '2021-07-06 10:26:28'),
(5, '11', 'ESTER', 'JISENA', 'ester@gmail.com', 'c81e728d9d4c2f636f067f89cc14862c', 'Female', '5 January, 2000', 'Business Administration', '12233-NAIROBI', 'NAIROBI', 'KENYA', '0746255663', 1, '2021-07-06 10:29:54'),
(7, '22', 'SIMON', 'SAKALANI', 'simon@gmail.com', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'Male', '8 November, 1996', 'Sociology and Social Work', '1111-Dodoma', 'DODOMA', 'TANZANIA', '0766554433', 1, '2021-07-06 10:34:13'),
(9, '33', 'MOGORI', 'MWITA', 'johnes@gmail.com', 'a87ff679a2f3e71d9181a67b7542122c', 'Male', '1 January, 1990', 'Information and Communication Technology ', '1223-Kagera', 'KAGERA', 'TANZANIA', '0765654333', 0, '2021-07-06 10:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(7, 'Casual Leave', '30/11/2017', '29/10/2017', 'test description test descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest description', '2017-11-19 13:11:21', 'Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.\r\n', '2017-12-02 23:26:27 ', 2, 1, 1),
(8, 'Medical Leave test', '21/10/2017', '25/10/2017', 'test description test descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest description', '2017-11-20 11:14:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-12-02 23:24:39 ', 1, 1, 1),
(9, 'Medical Leave test', '08/12/2017', '12/12/2017', 'Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.\r\n', '2017-12-02 18:26:01', NULL, NULL, 0, 1, 2),
(10, 'Restricted Holiday(RH)', '25/12/2017', '25/12/2017', 'Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', '2017-12-03 08:29:07', 'Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', '2017-12-03 14:06:12 ', 1, 1, 1),
(11, 'Casual Leave', '22/02/2022', '22/02/2022', 'sad', '2020-11-03 05:20:58', NULL, NULL, 0, 0, 1),
(12, 'Casual Leave', '22/02/2022', '22/02/2022', 'sad', '2020-11-03 05:52:49', NULL, NULL, 0, 0, 1),
(13, 'Medical Leave test', '2 July, 2014', '7 July, 2015', 'Yes', '2021-07-05 16:06:32', 'jj\r\n', '2021-07-05 21:59:40 ', 2, 1, 3),
(14, 'Medical Leave', '18 January, 2018', '1 January, 2019', 'I am going to take head/brain operation', '2021-07-06 10:53:21', 'Date errror', '2021-07-06 16:38:02 ', 2, 1, 4),
(15, 'Annual Leave', '1 September, 2020', '1 January, 2021', 'I request this leave, I wan\'t to go abroad', '2021-07-06 10:54:56', 'Allowed ', '2021-07-06 16:42:24 ', 1, 1, 4),
(16, '', '2 January, 2021', '2 September, 2021', 'aa', '2021-07-06 10:56:12', 'error date state', '2021-07-06 16:37:11 ', 2, 1, 4),
(17, 'Medical Leave', '3 November, 2022', '5 July, 2023', 'i am going to take  the head operation', '2021-07-06 10:58:05', 'Go', '2021-07-06 16:41:26 ', 1, 1, 5),
(18, 'Casual Leave', '2 March, 2021', '3 February, 2022', 'PLEASE APPROVE THIS', '2021-07-06 11:00:29', 'm', '2021-07-07 11:28:00 ', 1, 1, 7),
(19, 'Restricted Holiday', '7 July, 2021', '2 September, 2021', 'This is restricted holiday request', '2021-07-06 11:02:49', 'date error', '2021-07-06 16:38:46 ', 2, 1, 9),
(20, 'Restricted Holiday', '6 July, 2021', '9 July, 2021', 'deeeee', '2021-07-06 11:03:47', 'Your allowed\r\n', '2021-07-06 16:40:51 ', 1, 1, 9),
(21, 'Annual Leave', '20 July, 2021', '20 July, 2022', 'nnnnn', '2021-07-06 11:04:55', 'Allowed', '2021-07-06 16:40:14 ', 1, 1, 8),
(22, 'Annual Leave', '23 July, 2021', '11 April, 2024', 'hfdhjvcfdhewbqnjb', '2021-07-06 11:17:11', NULL, NULL, 0, 1, 10),
(23, 'Medical Leave', '5 July, 2021', '5 April, 2022', 'sdfghjkl;lkjhgvfcxghkl', '2021-07-06 11:34:12', NULL, NULL, 0, 0, 10),
(24, 'Medical Leave', '11 March, 2020', '3 March, 2021', 'kllll', '2021-07-07 06:03:26', NULL, NULL, 0, 1, 4),
(25, 'Annual Leave', '6 April, 2017', '8 July, 2021', 'ttt', '2021-07-08 08:54:30', 'kk', '2021-07-08 14:33:53 ', 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(4, 'Annual Leave', 'Normal leave', '2021-07-06 10:22:22'),
(6, 'Medical Leave', 'Medical Test Leave', '2021-07-06 10:22:50'),
(7, 'Restricted Holiday', 'Restricted Holiday', '2021-07-06 10:23:08'),
(8, 'Casual Leave', 'Casual Leave\r\n', '2021-07-06 10:23:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
