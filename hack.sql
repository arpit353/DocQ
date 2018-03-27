-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2018 at 02:47 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hack`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `ansid` int(255) NOT NULL,
  `qid` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `answer` mediumtext NOT NULL,
  `upvote` int(255) NOT NULL DEFAULT '0',
  `downvote` int(255) NOT NULL DEFAULT '0',
  `upload_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `bid` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `blog` mediumtext NOT NULL,
  `upvote` int(255) NOT NULL DEFAULT '0',
  `downvote` int(255) NOT NULL DEFAULT '0',
  `topic` varchar(10) NOT NULL,
  `upload_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `docters_details`
--

CREATE TABLE `docters_details` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `liscense` varchar(100) NOT NULL,
  `bio` varchar(1000) NOT NULL,
  `image1` longblob NOT NULL,
  `experience1` varchar(100) NOT NULL,
  `experience2` varchar(100) NOT NULL,
  `experience3` varchar(100) NOT NULL,
  `university1` varchar(100) NOT NULL,
  `university2` varchar(100) NOT NULL,
  `university3` varchar(100) NOT NULL,
  `year_passout1` varchar(100) NOT NULL,
  `year_passout2` varchar(100) NOT NULL,
  `year_passout3` varchar(100) NOT NULL,
  `specialization1` varchar(100) NOT NULL,
  `specialization2` varchar(100) NOT NULL,
  `specialization3` varchar(100) NOT NULL,
  `award1` varchar(100) NOT NULL,
  `award2` varchar(100) NOT NULL,
  `award3` varchar(100) NOT NULL,
  `clinic_mobile` varchar(100) NOT NULL,
  `clinic_address` varchar(1000) NOT NULL,
  `research_title` varchar(100) NOT NULL,
  `abstract` varchar(1000) NOT NULL,
  `topic` varchar(1000) NOT NULL,
  `started` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipaddress_likes_map`
--

CREATE TABLE `ipaddress_likes_map` (
  `id` int(8) NOT NULL,
  `tutorial_id` int(8) NOT NULL,
  `ip_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `qid` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `topic` varchar(20) NOT NULL,
  `no_ans` int(255) NOT NULL DEFAULT '0',
  `upload_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `research_details`
--

CREATE TABLE `research_details` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `abstract` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tutorial`
--

CREATE TABLE `tutorial` (
  `id` int(8) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `likes` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`ansid`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `docters_details`
--
ALTER TABLE `docters_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ipaddress_likes_map`
--
ALTER TABLE `ipaddress_likes_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `research_details`
--
ALTER TABLE `research_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorial`
--
ALTER TABLE `tutorial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `ansid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `bid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `docters_details`
--
ALTER TABLE `docters_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ipaddress_likes_map`
--
ALTER TABLE `ipaddress_likes_map`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `qid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `research_details`
--
ALTER TABLE `research_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tutorial`
--
ALTER TABLE `tutorial`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
