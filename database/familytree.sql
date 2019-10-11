-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2019 at 06:06 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `familytree`
--

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`id`, `user_id`) VALUES
(8, 9),
(10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `family_id` int(11) NOT NULL,
  `father_id` int(11) DEFAULT NULL,
  `mother_id` int(11) DEFAULT NULL,
  `spouse_id` int(11) DEFAULT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` text NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `family_id`, `father_id`, `mother_id`, `spouse_id`, `fname`, `lname`, `gender`, `dob`, `profile`) VALUES
(1, 8, 3, 4, NULL, 'yash', 'trivedi', 'male', '1996-10-17', 'user-profiles/testimonial-4.jpg'),
(2, 8, NULL, NULL, 5, 'wife 1', 'trivedi', 'male', '1992-06-17', 'user-profiles/call-to-action.jpg'),
(3, 8, 6, 7, 4, 'yogesh', 'trivedi', 'male', '1963-01-25', 'user-profiles/testimonial-4.jpg'),
(4, 8, NULL, NULL, 3, 'ila', 'trivedi', 'female', '1965-09-14', 'user-profiles/call-to-action.jpg'),
(5, 8, 3, 4, 2, 'dhaivat', 'trivedi', 'male', '1992-06-17', 'avatar.png'),
(6, 8, NULL, NULL, 7, 'lalshankar', 'trivedi', 'male', '1963-07-28', 'avatar.png'),
(7, 8, NULL, NULL, 6, 'vijyaben', 'trivedi', 'male', '1974-03-02', 'avatar.png'),
(13, 8, 6, 7, 14, 'Manish', 'Trivedi', 'male', '1979-10-29', 'avatar.png'),
(14, 8, NULL, NULL, 13, 'bhavika', 'trivedi', 'female', '2003-05-07', 'avatar.png'),
(15, 8, 13, 14, NULL, 'prathna', 'trivedi', 'female', '2000-04-01', 'avatar.png'),
(16, 8, 13, 14, NULL, 'Nihar', 'Trivedi', 'male', '2013-02-04', 'avatar.png'),
(18, 10, 23, 24, NULL, 'user', 'name', 'male', '1997-09-30', 'user-profiles/call-to-action-3.jpg'),
(19, 10, NULL, NULL, 20, 'grand ', 'father', 'male', '2010-09-27', 'avatar.png'),
(20, 10, NULL, NULL, 19, 'grand', 'mother', 'female', '2013-10-27', 'avatar.png'),
(21, 10, NULL, NULL, 22, 'father', '1', 'male', '2014-10-27', 'user-profiles/call-to-action.jpg'),
(22, 10, 19, 20, 21, 'mother', '1', 'female', '2013-10-29', 'avatar.png'),
(23, 10, 19, 20, 24, 'father', '2', 'male', '2016-09-29', 'avatar.png'),
(24, 10, NULL, NULL, 23, 'mother', '2', 'female', '2018-06-30', 'avatar.png'),
(25, 10, 21, 22, NULL, 'child', '1', 'male', '2016-10-29', 'avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` char(6) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` char(5) NOT NULL,
  `status` int(1) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `gender`, `profile`, `email`, `password`, `role`, `status`, `created_date`) VALUES
(9, 'yash', 'trivedi', 'male', 'user-profiles/person-3.png', 'yash@gmail.com', '$2y$10$bdyTNFfUgsG/QLmKEtsFsOIoh7a8iRTsJC2LsjVSJm1jjY/ksXski', 'user', 1, '2019-10-10 16:03:15'),
(11, 'user', 'name', 'male', 'user-profiles/person-3.png', 'username@gmail.com', '$2y$10$hpkF7n9ia.lRM9EsWOBgD.e28rEL/3Ag4BruD/umWSUWfxYCZMRx.', 'user', 1, '2019-10-10 15:51:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
