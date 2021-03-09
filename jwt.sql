-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2021 at 03:52 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `publisher`, `description`) VALUES
(1, 'html', 'plugin', 'plugin', 'wow');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`) VALUES
(1, 'adesugiantoro', 'adesug', 'adesug@gmail.com', '12345'),
(2, 'adesugiantoro', 'adesug', 'adesug@gmail.com', '12345'),
(3, 'adesugiantoro', 'adesug', 'adesug@gmail.com', '12345'),
(4, 'ahmad', 'ahmad', 'ahmad@gmail.com', '$2b$04$RoMT40ujAy7KsjOz20l5BOklTk77XsfoTkBtAWdrpQWC6mp6qORG6'),
(5, 'ahmad', 'ahmad', 'ahmad@gmail.com', '$2b$10$x5NdfyFIJD1QW2hRWX6sueTds9FAsRH936z/AuFuLpfhKcYVNnMni'),
(6, 'ahmad', 'ahmad', 'ahmad@gmail.com', '$2b$10$Pb6r4hRyMbCRz9882kqKdO0Wi/jhkHPofepCGE.kqJ/1haDfF8Rkq'),
(7, 'ahmad', 'ahmad', 'ahmad@gmail.com', '$2b$10$0MTziezZP.5.7qdJYvTaQOp5KmP2mpyq5QHD2VVqDkCGG8DJ9y1b2'),
(8, 'ahmad', 'ahmad', 'ahmad@gmail.com', '$2b$10$aK.uaJi51LfO6s2u0etYRuDvMtcY7sUUfAKKkcIX1KKCNngKmLLQO'),
(9, 'ahmad', 'ahmad', 'ahmad@gmail.com', '$2b$10$VaWAwZFRvt4v1MLs8rXY1e9ph30bcDs/MhH3mMytQnGj0hoHQ7vcC'),
(10, 'ahmad', 'ahmad', 'ahmad@gmail.com', '$2b$10$PqUSKkkXYMeXNZ.dkZ/fJOGEaimZCBVjcwYoWF9cu6kxUvwGSbg6G'),
(11, 'test', 'test', 'test@gmail.com', '$2b$10$mCy4mgGJwcZ.M4fPitugBuDOUvfZNi4mt904ijGXkx3sDmhVFNyGq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
