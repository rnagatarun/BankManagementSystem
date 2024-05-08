-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 09:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `pin` varchar(10) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`pin`, `date`, `type`, `amount`) VALUES
('', 'Thu May 09 00:00:55 IST 2024', 'Deposit', '4555'),
('5003', 'Thu May 09 00:21:17 IST 2024', 'Deposit', '50000'),
('5003', 'Thu May 09 00:23:31 IST 2024', 'Withdrawl', '8000'),
('5003', 'Thu May 09 00:23:39 IST 2024', 'withdrawl', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `form_no` varchar(30) DEFAULT NULL,
  `card_number` varchar(30) DEFAULT NULL,
  `pin` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`form_no`, `card_number`, `pin`) VALUES
('null', '1409962950095645', '5003');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `form_no` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `father_name` varchar(30) DEFAULT NULL,
  `DOB` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `married_status` varchar(30) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `pincode` varchar(30) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`form_no`, `name`, `father_name`, `DOB`, `gender`, `email`, `married_status`, `address`, `city`, `pincode`, `state`) VALUES
(' 5193', 'Tarun', 'Rvn', '01-May-2000', 'Male', 'rnagatarun@gmail.com', 'UnMarried', '1-1', 'Ongole', '523190', 'Andhra Pradesh'),
(' 5628', 'nagatarun', 'veera', '01-May-1999', 'Male', 'rnt@gmail.com', 'UnMarried', '11-78', 'Vellore', '632014', 'TamilNadu');

-- --------------------------------------------------------

--
-- Table structure for table `signupthree`
--

CREATE TABLE `signupthree` (
  `form_no` varchar(30) DEFAULT NULL,
  `account_Type` varchar(40) DEFAULT NULL,
  `card_number` varchar(30) DEFAULT NULL,
  `pin` varchar(30) DEFAULT NULL,
  `facility` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signupthree`
--

INSERT INTO `signupthree` (`form_no`, `account_Type`, `card_number`, `pin`, `facility`) VALUES
('null', 'Saving Account', '1409962950095645', '5003', 'ATM CARD ');

-- --------------------------------------------------------

--
-- Table structure for table `signuptwo`
--

CREATE TABLE `signuptwo` (
  `form_no` varchar(30) DEFAULT NULL,
  `religion` varchar(30) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `income` varchar(30) DEFAULT NULL,
  `education` varchar(30) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `pan` varchar(30) DEFAULT NULL,
  `aadhar` varchar(60) DEFAULT NULL,
  `seniorcitizen` varchar(30) DEFAULT NULL,
  `existing_account` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signuptwo`
--

INSERT INTO `signuptwo` (`form_no`, `religion`, `category`, `income`, `education`, `occupation`, `pan`, `aadhar`, `seniorcitizen`, `existing_account`) VALUES
('null', 'Hindu', 'General', 'Null', 'Graduate', 'Student', 'EVUCN4466H', '123164974656', 'No', 'No');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
