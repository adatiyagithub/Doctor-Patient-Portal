-- phpMyAdmin SQL Dump
-- Modified with Indian Names

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

DROP DATABASE IF EXISTS `hospital`;
CREATE DATABASE `hospital`;
USE `hospital`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`username`, `password`) VALUES
('Rahul', 'Rahul'),
('admin', 'admin'),
('Amit', 'Amit'),
('Vikram', 'Vikram');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `dName` varchar(20) NOT NULL,
  `pName` varchar(15) NOT NULL,
  `room` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `appointment` (`dName`, `pName`, `room`) VALUES
('Rahul', 'Amit Verma', 987),
('Rohan', 'Rahul Sharma', 806);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) NOT NULL,
  `id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `room` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `doctor`
(`count`, `date`, `id`, `name`, `age`, `gender`, `blood`, `dept`, `phone`, `email`, `status`, `address`, `room`, `username`, `password`)
VALUES
(1, '02-04-2018', 'HMSD1', 'Rohan Sharma', 20, 'Male', 'A-', 'Medicine', '+919876543210', 'rohan@gmail.com', 'Single', 'Mumbai', 806, 'Rohan', 'Rohan'),

(2, '31-01-2018', 'HMSD2', 'Vikram Singh', 32, 'Male', 'A+', 'Dental', '+919812345678', 'vikram@gmail.com', 'Married', 'Delhi', 202, 'Vikram', 'Vikram'),

(3, '12-12-2016', 'HMSD3', 'Arjun Mehta', 34, 'Male', 'AB-', 'Neurology', '+919845612378', 'arjun@gmail.com', 'Divorced', 'Pune', 809, 'Arjun', 'Arjun'),

(4, '21-08-2015', 'HMSD4', 'Amit Verma', 43, 'Male', 'B+', 'Nutrition', '+919876541234', 'amit@gmail.com', 'Single', 'Nagpur', 44, 'Amit', 'Amit'),

(5, '09-08-2017', 'HMSD5', 'Priya Kapoor', 23, 'Female', 'O-', 'Gynaecology', '+919812349876', 'priya@gmail.com', 'Single', 'Jaipur', 909, 'Priya', 'Priya'),

(6, '06-03-2016', 'HMSD6', 'Karan Malhotra', 37, 'Male', 'B-', 'Cardiology', '+919854761230', 'karan@gmail.com', 'Married', 'Indore', 545, 'Karan', 'Karan'),

(7, '05-03-2015', 'HMSD7', 'Sneha Patil', 28, 'Female', 'O+', 'Haematology', '+919845612340', 'sneha@gmail.com', 'Married', 'Nashik', 23, 'Sneha', 'Sneha'),

(8, '21-12-2013', 'HMSD8', 'Rajat Deshmukh', 44, 'Male', 'B-', 'Microbiology', '+919876500123', 'rajat@gmail.com', 'Married', 'Aurangabad', 777, 'Rajat', 'Rajat'),

(9, '27-09-2009', 'HMSD9', 'Neha Joshi', 22, 'Female', 'O+', 'Gynaecology', '+919823456789', 'neha@gmail.com', 'Single', 'Surat', 555, 'Neha', 'Neha'),

(12, '12-23-2015', 'HMSD10', 'Rahul Sharma', 21, 'Male', 'O+', 'Microbiology', '+919899887766', 'rahul@gmail.com', 'Single', 'Bhopal', 987, 'Rahul', 'Rahul');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) NOT NULL,
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `disease` varchar(20) NOT NULL,
  `room` int(11) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `patient`
(`count`, `date`, `id`, `name`, `age`, `gender`, `address`, `phone`, `status`, `disease`, `room`)
VALUES
(2, '08-03-2018', 'HMS2', 'Rahul Sharma', 20, 'Male', 'Nagpur', '+919876543210', 'Single', 'Fever', 504),

(3, '09-06-2018', 'HMS3', 'Ajay Kulkarni', 21, 'Male', 'Pune', '+919812345678', 'Single', 'Dengue', 102),

(4, '03-05-2017', 'HMS4', 'Karan Patil', 78, 'Male', 'Mumbai', '+919823456123', 'Married', 'Jaundice', 653),

(5, '09-03-2016', 'HMS5', 'Rajat Deshmukh', 24, 'Male', 'Aurangabad', '+919876500123', 'Divorced', 'Malaria', 806),

(6, '22-12-2017', 'HMS6', 'Amit Verma', 27, 'Male', 'Nagpur', '+919812349999', 'Married', 'Typhoid', 122),

(8, '22-12-2017', 'HMS7', 'Nikhil Joshi', 22, 'Male', 'Chennai', '+919876777888', 'Single', 'Fever', 22);

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

DROP TABLE IF EXISTS `receptionist`;
CREATE TABLE `receptionist` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `joining` varchar(15) NOT NULL,
  `id` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(17) NOT NULL,
  `address` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO `receptionist`
(`count`, `joining`, `id`, `name`, `age`, `gender`, `blood`, `email`, `phone`, `address`, `status`, `username`, `password`)
VALUES
(3, '23-04-2013', 'HMSR3', 'Rahul Sharma', 21, 'Male', 'O+', 'rahul@gmail.com', '+919876543210', 'Nagpur', 'Single', 'Rahul', 'Rahul'),

(4, '23-06-2018', 'HMSR4', 'Vikram Singh', 24, 'Male', 'A-', 'vikram@gmail.com', '+919812341234', 'Delhi', 'Married', 'Vikram', 'Vikram'),

(6, '12-06-2018', 'HMSR5', 'Arjun Mehta', 24, 'Male', 'AB-', 'arjun@gmail.com', '+919845612378', 'Pune', 'Single', 'Arjun', 'Arjun'),

(9, '07-12-2018', 'HMSR7', 'Rohan Khanna', 34, 'Male', 'O+', 'rohan@gmail.com', '+919876556677', 'Mumbai', 'Married', 'Rohan', 'Rohan'),

(10, '23-12-2018', 'HMSR9', 'Amit Verma', 44, 'Male', 'AB-', 'amit@gmail.com', '+919899887766', 'Nagpur', 'Single', 'Amit', 'Amit');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `a` varchar(11) NOT NULL,
  `b` varchar(11) NOT NULL,
  `c` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `test` (`a`, `b`, `c`) VALUES
('5', '6', '6'),
('1', '2', '4'),
('abc', 'xyz', '123');

COMMIT;