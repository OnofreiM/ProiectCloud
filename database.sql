-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:52275
-- Generation Time: Jan 20, 2019 at 02:03 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proiect`
--

-- --------------------------------------------------------

--
-- Table structure for table `date_user`
--

CREATE TABLE `date_user` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `prenume` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `adresa` varchar(50) DEFAULT NULL,
  `tara` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `date_user`
--

INSERT INTO `date_user` (`ID`, `username`, `password`, `email`, `nume`, `prenume`, `sex`, `adresa`, `tara`) VALUES
(12, 'vlad', 'd701fde59d74f76803087b6632186caf', 'vlad', '-', '-', '-', '-', '-'),
(13, 'geo', 'd8589714e1c22f1678b347829747f5f0', 'geo@yahoo.com', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `url` varchar(100) NOT NULL,
  `answer` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`url`, `answer`) VALUES
('https://goo.gl/JdaUWH', 'turnul eiffel'),
('https://goo.gl/PHLmue', 'turnul din pisa'),
('https://goo.gl/SkVUEc', 'colosseum'),
('https://goo.gl/xZSsJG', 'cascada niagara');

-- --------------------------------------------------------

--
-- Table structure for table `loggedcounter`
--

CREATE TABLE `loggedcounter` (
  `counter` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loggedusers`
--

CREATE TABLE `loggedusers` (
  `USERNAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loggedusers`
--

INSERT INTO `loggedusers` (`USERNAME`) VALUES
('geo');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `coins` int(11) DEFAULT '0',
  `last_game` date DEFAULT NULL,
  `strike` int(11) DEFAULT '0',
  `strike_record` int(11) DEFAULT '0',
  `correct_answers` int(11) DEFAULT '0',
  `wrong_answer` int(11) DEFAULT '0',
  `correct_answers_per_game` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`ID`, `username`, `coins`, `last_game`, `strike`, `strike_record`, `correct_answers`, `wrong_answer`, `correct_answers_per_game`) VALUES
(1, 'vlad', 110, NULL, 0, 0, 1, 0, 0),
(2, 'geo', 110, NULL, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `date_user`
--
ALTER TABLE `date_user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`url`);

--
-- Indexes for table `loggedusers`
--
ALTER TABLE `loggedusers`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `date_user`
--
ALTER TABLE `date_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
