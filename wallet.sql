-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2017 at 06:54 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wallet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '$2y$12$m02X9RSkCR6J.3SETSSKCe5SvMTX2ZVEunsEM9mtxmGv5qRgotWKK');

-- --------------------------------------------------------

--
-- Table structure for table `examsection`
--

CREATE TABLE `examsection` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examsection`
--

INSERT INTO `examsection` (`id`, `username`, `password`) VALUES
(1, 'examsection', '$2y$12$m02X9RSkCR6J.3SETSSKCe5SvMTX2ZVEunsEM9mtxmGv5qRgotWKK');

-- --------------------------------------------------------

--
-- Table structure for table `exam_transactions`
--

CREATE TABLE `exam_transactions` (
  `exam_id` varchar(500) NOT NULL,
  `s_id` varchar(50) NOT NULL,
  `is_regular` tinyint(1) NOT NULL,
  `subjects` varchar(700) NOT NULL,
  `amount` int(6) NOT NULL,
  `datetime` datetime NOT NULL,
  `t_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_transactions`
--

INSERT INTO `exam_transactions` (`exam_id`, `s_id`, `is_regular`, `subjects`, `amount`, `datetime`, `t_id`) VALUES
('1-1 reguler r16', '134G1A0565', 1, 'All', 750, '2017-03-02 09:18:48', 204);
-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(1) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `username`, `password`) VALUES
(1, 'faculty', '$2y$12$m02X9RSkCR6J.3SETSSKCe5SvMTX2ZVEunsEM9mtxmGv5qRgotWKK');

-- --------------------------------------------------------

--
-- Table structure for table `regular_exams`
--

CREATE TABLE `regular_exams` (
  `name` varchar(200) NOT NULL,
  `regulation` varchar(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `amount` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regular_exams`
--

INSERT INTO `regular_exams` (`name`, `regulation`, `semester`, `amount`) VALUES
('dsfsdfdssfs', 'r16', '2-2', '750');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `rollno` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch` varchar(6) NOT NULL,
  `regulation` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `amount` int(5) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`rollno`, `name`, `branch`, `regulation`, `email`, `amount`, `password`) VALUES
('134G1A0565', 'ROHITH', 'CSE', 'R13', '134g1a0565@srit.ac.in', 55850, '$2y$12$m02X9RSkCR6J.3SETSSKCe5SvMTX2ZVEunsEM9mtxmGv5qRgotWKK');
-- --------------------------------------------------------

--
-- Table structure for table `supply_exams`
--

CREATE TABLE `supply_exams` (
  `name` varchar(500) NOT NULL,
  `regulation` varchar(10) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `num_subjects` int(2) NOT NULL,
  `sub_names` varchar(1000) NOT NULL,
  `amounts` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supply_exams`
--

INSERT INTO `supply_exams` (`name`, `regulation`, `branch`, `semester`, `num_subjects`, `sub_names`, `amounts`) VALUES
('dasd', 'r16', 'cse', '2/-2', 1, 'rohith', '350');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `t_id` int(6) NOT NULL,
  `f_id` int(6) NOT NULL,
  `s_id` varchar(15) NOT NULL,
  `is_debited` tinyint(1) NOT NULL,
  `amount` int(6) NOT NULL,
  `datetime` datetime NOT NULL,
  `reason` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`t_id`, `f_id`, `s_id`, `is_debited`, `amount`, `datetime`, `reason`) VALUES
(181, 1, '134G1A0565', 0, 5000, '2017-02-28 17:29:38', 'Rs.5000 credited to 134G1A0565'),
(182, 1, '134G1A0565', 1, 200, '2017-02-28 17:29:42', 'Rs.200 debited from 134G1A0565'),
(183, 20, '134G1A0565', 1, 750, '2017-02-28 17:33:33', 'Rs.750 debited from 134G1A0565 for 1-1 reguler r16'),
(184, 20, '134G1A0565', 1, 650, '2017-02-28 17:33:59', 'Rs.650 debited from 134G1A0565 for 2-2 SUPPLY r17'),
(185, 1, '134G1A0565', 0, 500, '2017-03-01 09:53:03', 'Rs.500 credited to 134G1A0565');






--
-- Indexes for dumped tables
--

--
-- Indexes for table `examsection`
--
ALTER TABLE `examsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_transactions`
--
ALTER TABLE `exam_transactions`
  ADD PRIMARY KEY (`s_id`,`exam_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regular_exams`
--
ALTER TABLE `regular_exams`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollno`);

--
-- Indexes for table `supply_exams`
--
ALTER TABLE `supply_exams`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examsection`
--
ALTER TABLE `examsection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `t_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
