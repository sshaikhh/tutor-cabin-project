-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2020 at 08:58 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorcabin`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE tbl_city (
  cityid int(15) NOT NULL,
  cityname varchar(20) NOT NULL,
  stateid int(20) NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discussion`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedbackid` int(15) NOT NULL,
  `feedbackto` varchar(20) NOT NULL,
  `tutorid` int(20) NOT NULL,
  `username` varchar(20) NOT NULL
)

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `reviewid` int(15) NOT NULL,
  `reviewrate` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL
)

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `stateid` int(15) NOT NULL,
  `statename` varchar(20) NOT NULL
)

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `mobileno` int(20) NOT NULL,
  `class` varchar(20) NOT NULL,
  `subject` varchar(30) NOT NULL
)

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject_details`
--

CREATE TABLE `tbl_subject_details` (
  `subdetailid` int(15) NOT NULL,
  `subjectid` int(20) NOT NULL,
  `content` varchar(20) NOT NULL
) 

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject_master`
--

CREATE TABLE `tbl_subject_master` (
  `subjectid` int(15) NOT NULL,
  `subjectname` varchar(20) NOT NULL,
  `class` varchar(20) NOT NULL
)

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tutor_reg`
--

CREATE TABLE `tbl_tutor_reg` (
  `tutorid` int(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `mobileno` int(15) NOT NULL,
  `address` varchar(100) NOT NULL
) 

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tutor_subject_assignment`
--

CREATE TABLE `tbl_tutor_subject_assignment` (
  `assignid` int(15) NOT NULL,
  `subjectid` int(20) NOT NULL,
  `tutorid` int(20) NOT NULL,
  `fees` int(11) NOT NULL
) 

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`cityid`);

--
-- Indexes for table `tbl_discussion`
--
ALTER TABLE `tbl_discussion`
  ADD PRIMARY KEY (`discussionid`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedbackid`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`stateid`);

--
-- Indexes for table `tbl_subject_details`
--
ALTER TABLE `tbl_subject_details`
  ADD PRIMARY KEY (`subdetailid`);

--
-- Indexes for table `tbl_subject_master`
--
ALTER TABLE `tbl_subject_master`
  ADD PRIMARY KEY (`subjectid`);

--
-- Indexes for table `tbl_tutor_reg`
--
ALTER TABLE `tbl_tutor_reg`
  ADD PRIMARY KEY (`tutorid`);

--
-- Indexes for table `tbl_tutor_subject_assignment`
--
ALTER TABLE `tbl_tutor_subject_assignment`
  ADD PRIMARY KEY (`assignid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
