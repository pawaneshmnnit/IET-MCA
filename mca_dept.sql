-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 12, 2021 at 10:50 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mca_dept`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `attentance`
--

DROP TABLE IF EXISTS `attentance`;
CREATE TABLE IF NOT EXISTS `attentance` (
  `attendance_id` int(10) NOT NULL AUTO_INCREMENT,
  `st_name` varchar(50) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `rollno` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attentance`
--

INSERT INTO `attentance` (`attendance_id`, `st_name`, `sem`, `rollno`, `date`) VALUES
(1, 'PAWANESH KUMAR VISHWAKARMA', 'Fourth Semester', '18663', '2021-10-04'),
(2, 'AYUSHI SRIVASTAVA', 'Second Semester', '18646', '2021-10-04'),
(3, 'PAWANESH KUMAR VISHWAKARMA', 'Fourth Semester', '18663', '2021-10-05'),
(4, 'AYUSHI SRIVASTAVA', 'Fourth Semester', '18646', '2021-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

DROP TABLE IF EXISTS `complain`;
CREATE TABLE IF NOT EXISTS `complain` (
  `cmpl_id` int(5) NOT NULL AUTO_INCREMENT,
  `cmpl_name` varchar(50) NOT NULL,
  `cmpl_roll` varchar(15) NOT NULL,
  `cmpl_email` varchar(60) NOT NULL,
  `cmpl_mobile` varchar(15) NOT NULL,
  `cmpl_subject` varchar(30) NOT NULL,
  `cmpl_problem` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`cmpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`cmpl_id`, `cmpl_name`, `cmpl_roll`, `cmpl_email`, `cmpl_mobile`, `cmpl_subject`, `cmpl_problem`, `date`) VALUES
(1, 'PAWANESH', '18663', 'pk75.info@gmail.com', '8707810308', 'Result Issue', 'Sir My Roll No is 18663.', '2021-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `title`, `link`) VALUES
(3, 'Application For Admission ', 'http://rmlauentrance.in/entrance/index.aspx');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `course` varchar(15) NOT NULL,
  `sem` varchar(30) NOT NULL,
  `enrollno` varchar(10) NOT NULL,
  `rollno` varchar(20) NOT NULL,
  `admno` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `cat` varchar(20) NOT NULL,
  `aadhar` varchar(14) NOT NULL,
  `address` varchar(150) NOT NULL,
  `password` varchar(30) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `examform` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `course`, `sem`, `enrollno`, `rollno`, `admno`, `name`, `fname`, `dob`, `gender`, `email`, `mobile`, `cat`, `aadhar`, `address`, `password`, `photo`, `examform`, `date`) VALUES
(7, 'MCA', 'Fourth Semester', 'NN-00517', '18663', 'ADM19006390', 'PAWANESH KUMAR VISHWAKARMA', 'SURESH PRASAD', '1999-06-08', 'Male', 'pk75.info@gmail.com', '8707810308', 'OBC', '487604611547', 'Naka Bypass , Ayodhya Uttar Pradesh', 'Pawanesh1999@', 'upload/BHUPIC.jpg', '', '2021-07-21'),
(15, 'MCA', 'Fourth Semester', 'NN-00558', '18652', 'ADM19006391', 'HARSHIT SINGH', 'KK SINGH', '2000-01-05', 'Male', 'dopeboyharshitsingh@gmail.com', '7007575268', 'General', '', '				CIVIL LINE AYODHYA UTTAR PRADESH', 'Harshit00@', 'upload/IMG_20210830_191710.jpg', '', '2021-09-18'),
(14, 'MCA', 'Fourth Semester', 'NN-00533', '18646', 'ADM1083002', 'AYUSHI SRIVASTAVA', 'ABC', '1998-01-05', 'Female', 'ayushisrivastava@gmail.com', '7007575268', 'General', '', '				AYODHYA', 'Ayushi00@', '../Login/upload/IMG_20180605_115918768.jpg', '', '2021-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE IF NOT EXISTS `teachers` (
  `t_id` varchar(10) NOT NULL,
  `t_name` varchar(50) NOT NULL,
  `t_designation` varchar(50) NOT NULL,
  `t_address` varchar(100) NOT NULL,
  `t_photo` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`t_id`, `t_name`, `t_designation`, `t_address`, `t_photo`, `date`) VALUES
('T202101', 'Dr Brijesh Kumar Bhardwaj', 'Associate Professor', 'IET, Dr Rammanohar Lohia Avadh University', 'upload/drbkb.jpg', '2021-10-08 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
