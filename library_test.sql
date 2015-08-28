-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 28, 2015 at 04:04 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_test`
--
CREATE DATABASE IF NOT EXISTS `library_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `library_test`;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `name` varchar(255) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `authors_books`
--

CREATE TABLE `authors_books` (
  `id` bigint(20) unsigned NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors_books`
--

INSERT INTO `authors_books` (`id`, `book_id`, `author_id`) VALUES
(0, 1, 11),
(0, 2, 12),
(0, 3, 12),
(0, 14, 13),
(0, 15, 14),
(0, 15, 15),
(0, 23, 26),
(0, 24, 27),
(0, 25, 27),
(0, 36, 28),
(0, 37, 29),
(0, 37, 30),
(0, 45, 41),
(0, 46, 42),
(0, 47, 42),
(0, 58, 43),
(0, 59, 44),
(0, 59, 45),
(0, 67, 56),
(0, 68, 57),
(0, 69, 57),
(0, 80, 58),
(0, 81, 59),
(0, 81, 60);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `title` varchar(255) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkouts`
--

CREATE TABLE `checkouts` (
  `patron_id` int(11) DEFAULT NULL,
  `copy_id` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkouts`
--

INSERT INTO `checkouts` (`patron_id`, `copy_id`, `id`) VALUES
(1, 12, 1),
(2, 13, 2),
(3, 13, 3),
(11, 14, 4),
(12, 15, 5),
(12, 16, 6),
(13, 28, 7),
(14, 29, 8),
(15, 29, 9),
(23, 30, 10),
(24, 31, 11),
(24, 32, 12),
(25, 44, 13),
(26, 45, 14),
(27, 45, 15),
(35, 46, 16),
(36, 47, 17),
(36, 48, 18),
(37, 60, 19),
(38, 61, 20),
(39, 61, 21),
(47, 62, 22),
(48, 63, 23),
(48, 64, 24);

-- --------------------------------------------------------

--
-- Table structure for table `copies`
--

CREATE TABLE `copies` (
  `id` bigint(20) unsigned NOT NULL,
  `count` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `copies`
--

INSERT INTO `copies` (`id`, `count`, `book_id`) VALUES
(62, 1, 1),
(63, 1, 1),
(64, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `patrons`
--

CREATE TABLE `patrons` (
  `name` varchar(255) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `copies`
--
ALTER TABLE `copies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `patrons`
--
ALTER TABLE `patrons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `checkouts`
--
ALTER TABLE `checkouts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `copies`
--
ALTER TABLE `copies`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `patrons`
--
ALTER TABLE `patrons`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
