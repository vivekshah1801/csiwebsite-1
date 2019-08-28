-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2019 at 08:23 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csiwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_master`
--

CREATE TABLE `event_master` (
  `id` int(6) NOT NULL,
  `name` varchar(70) NOT NULL,
  `type` varchar(20) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `description` varchar(700) NOT NULL,
  `photo_link` varchar(500) DEFAULT NULL,
  `blog_link` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_master`
--

INSERT INTO `event_master` (`id`, `name`, `type`, `date`, `description`, `photo_link`, `blog_link`) VALUES
(2, 'Tips and Tricks 2017', 'Seminar', '2017-08-15', 'Tips and Tricks of 2017. Put more desc text here.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque sit amet porttitor eget dolor morbi non arcu risus. Pulvinar neque laoreet suspendisse interdum consectetur libero id. ', 'assets/images/1.png', NULL),
(3, 'AWS Cloud Expert Talk', 'Expert Talk', '2019-02-14', 'Expert lecture on AWS cloud given by sanket bhimani.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque sit amet porttitor eget dolor morbi non arcu risus. Pulvinar neque laoreet suspendisse interdum consectetur libero id. In ferment', 'assets/images/3.jpg', NULL),
(4, 'Tips and Tricks 2019', 'Seminar', '2019-08-15', 'tips and tricks of 2019.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque sit amet porttitor eget dolor morbi non arcu risus. Pulvinar neque laoreet suspendisse interdum consectetur libero id. In ferment', 'assets/images/4.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`username`, `password`, `role`) VALUES
('vivek', 'vivek123', 'admin'),
('smit', 'smit123', 'admin2'),
('admin', 'admin123', 'admin'),
('mrugnayani', 'mrugnayani123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_master`
--
ALTER TABLE `event_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_master`
--
ALTER TABLE `event_master`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
