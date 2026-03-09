-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2026 at 04:13 PM
-- Server version: 8.0.44
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classcode`
--

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE `citizen` (
  `id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`id`, `username`, `password`, `name`, `address`, `contact`) VALUES
(1, 'citizen1', '123', 'Rahul Sharma', 'Alkapuri, Vadodara', '9876543210'),
(2, 'citizen2', '123', 'Priya Patel', 'Manjalpur, Vadodara', '9876543211'),
(3, 'citizen3', '123', 'Amit Shah', 'Gotri, Vadodara', '9876543212');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int NOT NULL,
  `citizen_name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `complaint_type` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `driver_id` int DEFAULT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `driver_contact` varchar(15) DEFAULT NULL,
  `pickup_time` varchar(50) DEFAULT NULL,
  `citizen_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `citizen_name`, `address`, `contact`, `complaint_type`, `status`, `driver_id`, `driver_name`, `driver_contact`, `pickup_time`, `citizen_id`) VALUES
(13, 'Yash', 'bvn', '436436', 'Waste scattered after collection', 'Assigned', 1, 'Ramesh Kumar', '9876543220', '12:00 AM', 1),
(14, 'vih', 'erger', '345', 'Wrong waste type placed in bin', 'Assigned', 1, 'Ramesh Kumar', '9876543220', '11:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `username`, `password`, `name`, `contact`, `status`) VALUES
(1, 'driver1', '123', 'Ramesh Kumar', '9876543220', 'available'),
(2, 'driver2', '123', 'Suresh Patel', '9876543221', 'available'),
(3, 'driver3', '123', 'Mahesh Singh', '9876543222', 'available');

-- --------------------------------------------------------
--
-- Indexes for dumped tables
--

--
-- Indexes for table `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `citizen`
--
ALTER TABLE `citizen`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
