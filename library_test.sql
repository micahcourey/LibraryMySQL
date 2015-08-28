-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Aug 27, 2015 at 06:15 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;

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
(0, 16, 26),
(0, 17, 27),
(0, 18, 27),
(0, 29, 28),
(0, 30, 29),
(0, 30, 30),
(0, 31, 41),
(0, 32, 42),
(0, 33, 42),
(0, 44, 43),
(0, 45, 44),
(0, 45, 45),
(0, 46, 56),
(0, 47, 57),
(0, 48, 57),
(0, 59, 58),
(0, 60, 59),
(0, 60, 60),
(0, 61, 71),
(0, 62, 72),
(0, 63, 72),
(0, 74, 73),
(0, 75, 74),
(0, 75, 75),
(0, 76, 86),
(0, 77, 87),
(0, 78, 87),
(0, 89, 88),
(0, 90, 89),
(0, 90, 90),
(0, 91, 101),
(0, 92, 102),
(0, 93, 102),
(0, 104, 103),
(0, 105, 104),
(0, 105, 105),
(0, 106, 116),
(0, 107, 117),
(0, 108, 117),
(0, 119, 118),
(0, 120, 119),
(0, 120, 120),
(0, 121, 131),
(0, 122, 132),
(0, 123, 132),
(0, 134, 133),
(0, 135, 134),
(0, 135, 135),
(0, 136, 146),
(0, 137, 147),
(0, 138, 147),
(0, 149, 148),
(0, 150, 149),
(0, 150, 150),
(0, 151, 161),
(0, 152, 162),
(0, 153, 162),
(0, 164, 163),
(0, 165, 164),
(0, 165, 165),
(0, 166, 176),
(0, 167, 177),
(0, 168, 177),
(0, 179, 178),
(0, 180, 179),
(0, 180, 180);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `title` varchar(255) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `copies`
--

CREATE TABLE `copies` (
  `id` bigint(20) unsigned NOT NULL,
  `count` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

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
-- Indexes for table `copies`
--
ALTER TABLE `copies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT for table `copies`
--
ALTER TABLE `copies`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
