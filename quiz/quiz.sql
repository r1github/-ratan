-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2021 at 06:29 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `aid` int(11) NOT NULL,
  `answers` varchar(250) NOT NULL,
  `answer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answers`, `answer_id`) VALUES
(1, '3', 1),
(2, '9', 1),
(3, '7', 1),
(4, '2', 1),
(5, 'Kochi', 2),
(6, 'Lucknow', 2),
(7, 'Chennai', 2),
(8, 'Mumbai', 2),
(9, '28', 3),
(10, '26', 3),
(11, '29', 3),
(12, '27', 3);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'ENTERTAINMENT & POP CULTURE '),
(2, 'GEOGRAPHY & TRAVEL'),
(3, 'HEALTH & MEDICINE'),
(4, 'LIFESTYLES & SOCIAL ISSUES'),
(5, 'LITERATURE'),
(6, 'PHILOSOPHY & RELIGION'),
(7, 'POLITICS, LAW & GOVERNMENT'),
(8, 'SCIENCE'),
(9, 'SPORTS & RECREATION'),
(10, 'TECHNOLOGY'),
(11, 'VISUAL ARTS');

-- --------------------------------------------------------

--
-- Table structure for table `queans`
--

CREATE TABLE `queans` (
  `qid` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `op1` varchar(250) NOT NULL,
  `op2` varchar(250) NOT NULL,
  `op3` varchar(250) NOT NULL,
  `op4` varchar(250) NOT NULL,
  `correct` varchar(250) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `queans`
--

INSERT INTO `queans` (`qid`, `question`, `op1`, `op2`, `op3`, `op4`, `correct`, `quiz_id`) VALUES
(1, 'what is the solution of 4*4?', '8', '12', '16', '22', '16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `answer` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `answer`, `quiz_id`) VALUES
(1, 'what is the value of 4+5?', 2, 2),
(2, 'What is the Capital of Tamil Nadu?', 7, 2),
(3, 'How many states are there in India?', 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `qname` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `qname`, `category_id`) VALUES
(1, 'MOVIES', 1),
(2, 'MUSIC', 1),
(4, 'COMEDY', 1),
(5, 'DANCE', 1),
(6, 'SOLO TRAVEL', 2),
(7, 'FAMILY VACATION', 2),
(8, 'BUSINESS TRAVEL', 2),
(9, 'PHYSICAL ', 3),
(10, 'EMOTIONAL', 3),
(11, 'SOCIAL', 3),
(12, 'SPIRITUAL', 3),
(13, 'INTELLECTUAL', 3),
(14, 'EPISTEMOLOGY', 6),
(15, 'AXIOLOGY', 6),
(16, 'MONOTHEISM', 0),
(17, 'MONOTHEISM', 6),
(18, 'XYZ', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queans`
--
ALTER TABLE `queans`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `queans`
--
ALTER TABLE `queans`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
