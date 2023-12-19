-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 04:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinephile`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(40) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `messageid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `message`, `messageid`) VALUES
('sumina', 'assd@gmail.com', 'dsf', 1),
('bomkaji', 'bomkaji@gmail.com', 'nice', 3),
('bomkaji', 'bomkaji@gmail.com', 'bad badd ok bad', 4);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `name`, `image`) VALUES
(43, 'League', 'film3.jpeg'),
(48, 'US', 'film1.jpeg'),
(49, 'Assassin', 'film8.jpeg'),
(50, 'Name of Movie', 'film4.jpeg'),
(51, 'Make in India', 'film6.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `number` int(15) NOT NULL,
  `cardName` varchar(40) NOT NULL,
  `cardNumber` int(20) NOT NULL,
  `expM` date NOT NULL,
  `expYear` int(5) NOT NULL,
  `code` int(10) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `email`, `address`, `number`, `cardName`, `cardNumber`, `expM`, `expYear`, `code`, `amount`) VALUES
(8, 'harishyam', 'hari@gmail.com', 'ktm', 1233333, 'sd', 111111111, '0000-00-00', 2025, 12, 150),
(11, 'prazens shrestha', 'prazens@gmail.com', 'kirtipur', 2147483647, 'hero', 2147483647, '0000-00-00', 1, 3211, 150),
(12, 'alisha', 'alisha@gmail.com', 'banepa', 2147483647, 'alish', 2147483647, '0000-00-00', 2025, 1235, 150),
(13, 'sitta', 'sita@gmail.com', 'banepa', 2147483647, 'sita', 2147483647, '0000-00-00', 2025, 5959, 150);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `seatno` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` int(15) NOT NULL,
  `movie` varchar(40) NOT NULL,
  `timing` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `ticketno` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`seatno`, `name`, `number`, `movie`, `timing`, `email`, `ticketno`) VALUES
('13', 'samaira', 2147483647, 'US', 'Evening - 5pm', 'samairashrestha456@g', 8),
('45', 'piYush', 9845652, 'US', 'Morning - 11 am', 'piyush@gmail.com', 9),
('44', 'Nangye', 9865232, 'US', 'Morning - 11 am', 'nangye@gmail.com', 10),
('99', 'sita', 345324, 'LEAGUE', 'Morning - 11 am', 'sita@gmail.com', 12),
('78', 'sita', 986465652, 'US', 'Morning - 11 am', 'sita@gmail.com', 15),
('72', 'Nangye', 2147483647, 'LEAGUE', 'Morning - 11 am', 'nangye@gmail.com', 16),
('82', 'sumina', 2147483647, 'MAKE IN INDIA', 'Morning - 11 am', 'suminaawa123@gmail.c', 17),
('88', 'rita', 986465956, 'LEAGUE', 'Morning - 11 am', 'rita@gmail.com', 18);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `number`, `email`, `password`, `user_type`) VALUES
(6, 'sita', '9861651630', 'sita@gmail.com', '12345', 'user'),
(9, 'bomkaji', '9865986598', 'bomkaji@gmail.com', '12345', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticketno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
