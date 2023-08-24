-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 23, 2023 at 09:02 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `education`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission_form`
--

DROP TABLE IF EXISTS `admission_form`;
CREATE TABLE IF NOT EXISTS `admission_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Name_Of_Applicant` varchar(20) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Father_Name` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Mobile_No` bigint NOT NULL,
  `Address` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_term`
--

DROP TABLE IF EXISTS `exam_term`;
CREATE TABLE IF NOT EXISTS `exam_term` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(450) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_term`
--

INSERT INTO `exam_term` (`id`, `name`) VALUES
(6, 'mid_term_1'),
(5, 'first_term');

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

DROP TABLE IF EXISTS `general_setting`;
CREATE TABLE IF NOT EXISTS `general_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `website_name` varchar(400) NOT NULL,
  `website_address` varchar(500) NOT NULL,
  `website_phone1` varchar(30) NOT NULL,
  `website_phone2` varchar(30) NOT NULL,
  `website_email1` varchar(200) NOT NULL,
  `website_email2` varchar(200) NOT NULL,
  `website_start` varchar(25) NOT NULL,
  `web_about` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `website_name`, `website_address`, `website_phone1`, `website_phone2`, `website_email1`, `website_email2`, `website_start`, `web_about`) VALUES
(5, 'Lokanthali Business', 'Kausaltar', '12345678', '1222222', 'lokanthalikhabar@gmail.com', 'llllllll@gmail.com', '2000', 'welcome to our company. lokanthali khabar one of the popular news portal in bhaktapur........');

-- --------------------------------------------------------

--
-- Table structure for table `meadmin`
--

DROP TABLE IF EXISTS `meadmin`;
CREATE TABLE IF NOT EXISTS `meadmin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `t_staff_type` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meadmin`
--

INSERT INTO `meadmin` (`id`, `admin_username`, `admin_password`, `t_staff_type`) VALUES
(1, 'ravi@ravi', 'ravi', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_name` varchar(250) DEFAULT NULL,
  `student_grade` varchar(10) DEFAULT NULL,
  `english` varchar(250) DEFAULT NULL,
  `english2` varchar(250) DEFAULT NULL,
  `math` varchar(250) DEFAULT NULL,
  `math2` varchar(250) DEFAULT NULL,
  `Social` varchar(250) DEFAULT NULL,
  `Health` varchar(250) DEFAULT NULL,
  `GK` varchar(250) DEFAULT NULL,
  `Computer` varchar(250) DEFAULT NULL,
  `Science` varchar(250) DEFAULT NULL,
  `Nepali` varchar(250) DEFAULT NULL,
  `first_term` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `st_info`
--

DROP TABLE IF EXISTS `st_info`;
CREATE TABLE IF NOT EXISTS `st_info` (
  `st_id` int NOT NULL AUTO_INCREMENT,
  `st_fullname` varchar(100) NOT NULL,
  `st_username` varchar(30) NOT NULL,
  `st_password` varchar(100) NOT NULL,
  `st_grade` int NOT NULL,
  `roll_no` int NOT NULL,
  `st_dob` varchar(20) NOT NULL,
  `st_address` varchar(100) NOT NULL,
  `st_district` varchar(100) NOT NULL,
  `st_gender` varchar(12) NOT NULL,
  `st_father` varchar(100) NOT NULL,
  `st_mother` varchar(100) NOT NULL,
  `st_parents_contact` varchar(15) NOT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_info`
--

INSERT INTO `st_info` (`st_id`, `st_fullname`, `st_username`, `st_password`, `st_grade`, `roll_no`, `st_dob`, `st_address`, `st_district`, `st_gender`, `st_father`, `st_mother`, `st_parents_contact`) VALUES
(1, 'Ravi Khadka', 'ravi2056', 'ravi', 10, 2, '11/17/2056', 'lokanthali', 'Bhaktapur', 'Male', 'Abc Xyz', 'Bcd Xyz', '9800000'),
(2, 'Hari Thapa', 'hari2055', 'asdf', 10, 12, '11/17/2055', 'Kausaltar', 'Bhaktapur', 'Male', 'Ram Thapa', 'Sita Thapa', '9812222200'),
(5, 'Saugat Gautam', 'saugat2055', 'saugat2055', 7, 12, '12 Jan 1999', 'Jadibuti', 'Kathmandu', 'Male', 'John Gautam', 'Sita Gautam', '9802212222'),
(3, 'qwe', 'asdf', 'asdf', 8, 11, '27 Dec 1998', 'Banepa', 'Kavre', 'Male', 'aasd', 'aasdf', '9812222'),
(4, 'Robin Dhakal', 'robin2053', '123456', 10, 1, '20 Jan 1994', 'Patan', 'Lalitpur', 'Male', 'Rajan Dhakal', 'Rama Dhakal', '9841111'),
(9, 'rajkumar xyz', 'rajkumar', 'abcdef', 10, 5, '13 Jan 2000', 'Kausaltar', 'Bhaktapur', 'Male', 'Abc xyz', 'Bcd xyz', '98000000'),
(8, 'Your Name', 'yourname', 'yourname1', 5, 1, '27 Jan 2000', 'Lokanthali', 'Bhaktapur', 'Male', 'John Cena', 'Sita Cena', '9811111111'),
(10, 'dsdsdsd', 'aaaa', 'abc', 2, 1, '1 Jan 2000', 'Tinkune', 'Kathmandu', 'Male', 'abbb', 'acc', '123456'),
(12, 'dsdsds', 'qq', '123', 3, 1, '28 jan 2000', 'adsd', 'dsdsd', 'Male', 'dsds', 'ddsds', '12121');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_info`
--

DROP TABLE IF EXISTS `subjects_info`;
CREATE TABLE IF NOT EXISTS `subjects_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(200) NOT NULL,
  `t_fullname` varchar(200) NOT NULL,
  `t_email` varchar(200) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `time` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_class_name`
--

DROP TABLE IF EXISTS `sub_class_name`;
CREATE TABLE IF NOT EXISTS `sub_class_name` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_class_name`
--

INSERT INTO `sub_class_name` (`id`, `subject`, `class`) VALUES
(1, 'English', '1'),
(2, 'Nepali', '2'),
(3, 'Social', '3'),
(4, 'Computer ', '4'),
(5, 'Math', '5'),
(6, 'Optional Math', '6'),
(7, 'Health', '7'),
(8, 'Grammar', '8'),
(9, 'GK', '9'),
(10, 'Science', '10');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE IF NOT EXISTS `teacher_info` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `t_fullname` varchar(150) NOT NULL,
  `t_address` varchar(200) NOT NULL,
  `t_email` varchar(100) NOT NULL,
  `t_username` varchar(150) NOT NULL,
  `t_pass` varchar(50) NOT NULL,
  `t_father` varchar(150) NOT NULL,
  `t_mother` varchar(150) NOT NULL,
  `t_dob` varchar(50) NOT NULL,
  `t_qualification` varchar(800) NOT NULL,
  `t_contact` int NOT NULL,
  `t_staff_type` varchar(200) NOT NULL,
  `t_gender` varchar(25) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
