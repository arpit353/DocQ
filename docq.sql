-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2018 at 01:47 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `docq`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `ansid` int(255) NOT NULL AUTO_INCREMENT,
  `qid` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `answer` mediumtext NOT NULL,
  `upvote` int(255) NOT NULL DEFAULT '0',
  `downvote` int(255) NOT NULL DEFAULT '0',
  `upload_date` date NOT NULL,
  PRIMARY KEY (`ansid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `bid` int(255) NOT NULL AUTO_INCREMENT,
  `id` int(255) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `blog` mediumtext NOT NULL,
  `upvote` int(255) NOT NULL DEFAULT '0',
  `downvote` int(255) NOT NULL DEFAULT '0',
  `topic` varchar(10) NOT NULL,
  `upload_date` date NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `qid` int(255) NOT NULL AUTO_INCREMENT,
  `id` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `topic` varchar(20) NOT NULL,
  `no_ans` int(255) NOT NULL DEFAULT '0',
  `upload_date` date NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
