-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2021 at 08:58 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `created`) VALUES
(13, 'Sam', 'Karan', 'Sam', 'sam@gmail.com', '$2y$10$9EhhORWcbgFCyQZGGrSfiubi0I8g7liSK2b4N9c9WIRBaeyCdLg6O', '2021-08-16 09:25:13'),
(14, 'Tony', 'Graig', 'tony', 'tony2gmail.com', '$2y$10$FY8t0mpVTh6/3hjIYvyRSeNbxF7tQAOanF.sqBxuGlGfjdg6iD6HS', '2021-08-16 09:44:21'),
(21, 'k', 'v', 'kvh', 'kv@hgmail.com', '$2y$10$negEPfVwkEWZvnP051XVnewB5.YfmgLO0314eIISvZvfuHTsGIl26', '2021-08-30 05:25:33'),
(23, 'Khemit', 'verma', 'khemit25', 'khemit.verma25@gmail.com', '$2y$10$JQncf8pQ/taSks0EzEcz8uX70sA8wQgvUzIBDMohTwp//kl2dN/om', '2021-08-30 06:16:18'),
(24, 'Khemit', 'verma', 'khemit256', 'khemit.verma256@gmail.com', '$2y$10$2V.ZP94XvMIEbx7IEuaNn.bKm1diN2mFqRX3ghYEt0m5ioT1jGwW.', '2021-08-30 06:30:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
