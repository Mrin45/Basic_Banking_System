-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 08, 2021 at 09:22 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Alo', 'Sajid', 300, '2021-06-25 17:45:18'),
(2, 'Deep', 'Musta', 100, '2021-07-06 00:26:29'),
(3, 'Kaushik', 'Jyoti', 100, '2021-07-07 12:06:24'),
(4, 'Angshu', 'Niku', 500, '2021-07-07 12:08:20'),
(5, 'Chandan', 'Sajid', 200, '2021-07-07 12:09:00'),
(6, 'Alo', 'Umor', 600, '2021-07-07 12:10:52'),
(7, 'Jyoti', 'Deep', 700, '2021-07-07 23:38:46'),
(8, 'Umor', 'Sajid', 350, '2021-07-07 23:39:22'),
(9, 'Niku', 'Musta', 120, '2021-07-07 23:39:44'),
(10, 'Musta', 'Alo', 440, '2021-07-07 23:40:43'),
(11, 'Deep', 'Alo', 500, '2021-07-08 00:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1055, 'Deep', 'deep@gmail.com', 50100),
(2765, 'Umor', 'umor@gmail.com', 47283),
(3457, 'Musta', 'musta@gmail.com', 39800),
(4678, 'Kaushik', 'kaushik@gmail.com', 44900),
(5243, 'Sajid', 'sajid@gmail.com', 40403),
(5871, 'Chandan', 'chand@gmail.com', 49299),
(6445, 'Niku', 'nik@gmail.com', 47429),
(7135, 'Angshu', 'angshu@gmail.com', 49090),
(8981, 'Jyoti', 'kumar@gmail.com', 40400),
(9531, 'Alo', 'alo@gmail.com', 35340);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
