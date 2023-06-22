-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2023 at 05:32 PM
-- Server version: 8.0.29
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hosteldb`
--
create database hosteldb;
use hosteldb;
-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int NOT NULL,
  `userid` varchar(50) NOT NULL,
  `bdate` date NOT NULL,
  `btime` varchar(20) NOT NULL,
  `room` varchar(30) NOT NULL,
  `roomno` int NOT NULL,
  `rent` int NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` varchar(50) NOT NULL,
  `institution` varchar(50) DEFAULT NULL,
  `bk_period` varchar(50)  DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `uname` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `pwd` varchar(20) NOT NULL,
  `isactive` bit(1) NOT NULL DEFAULT b'0',
  `isadmin` bit(1) NOT NULL DEFAULT b'0'
);

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `institution`, `bk_period`, `gender`, `uname`, `dob`, `pwd`, `isactive`, `isadmin`) VALUES
('admin', NULL, NULL, NULL, 'Administrator', NULL, 'admin', b'1', b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
