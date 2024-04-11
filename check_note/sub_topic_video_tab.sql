-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 03:20 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alwaysonline_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `sub_topic_video_tab`
--

CREATE TABLE `sub_topic_video_tab` (
  `sn` int(11) NOT NULL,
  `topic_id` varchar(100) NOT NULL,
  `sub_topic_id` varchar(100) NOT NULL,
  `video_id` varchar(100) NOT NULL,
  `video_title` varchar(255) NOT NULL,
  `video_objective` longtext NOT NULL,
  `video_duration_id` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `video_passport` varchar(100) NOT NULL,
  `video_volume_id` varchar(100) NOT NULL,
  `subscription_pricing_id` varchar(100) NOT NULL,
  `status_id` varchar(50) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_topic_video_tab`
--

INSERT INTO `sub_topic_video_tab` (`sn`, `topic_id`, `sub_topic_id`, `video_id`, `video_title`, `video_objective`, `video_duration_id`, `video`, `video_passport`, `video_volume_id`, `subscription_pricing_id`, `status_id`, `created_time`, `updated_time`) VALUES
(1, 'TOPIC00120231006032153', 'SUBTOPIC00120231006032455', 'VIDEO00120231006072132', 'INTRODUCTION TO NUMBER BASES', '<p><br /><strong>At the end of the study in this video, students should be able to understand the following objectives;</strong><br /><br />1. Binary (base-2): which uses only two symbols, 0 and 1. It is extensively used in computer systems to represent and manipulate data using binary digits (bits).<br /><br />2. Octal (base-8): This number base uses eight symbols (0-7). Octal numbers are commonly used in computer programming, particularly when dealing with groups of bits or byte representations.<br /><br />3. Hexadecimal (base-16): This number base uses sixteen symbols (0-9 and A-F), where A represents 10, B represents 11, and so on up to F representing 15. Hexadecimal numbers are widely used in computer systems to represent binary data more compactly and conveniently.</p>', '00:02:32', 'VIDEO00120231006072132_6520421c4859e.mp4', 'VIDEO00120231006072132_6520421c48586.jpg', '1', '1', '1', '2023-10-06 18:21:32', '2023-10-07 07:02:06'),
(2, 'TOPIC00120231006032153', 'SUBTOPIC00120231006032455', 'VIDEO00220231006072432', 'HOW TO SIMPLIFY NUMBER BASES', 'At the end of the study in this video, students should be able to understand the following objectives;\r\nHow to Simplify Number Bases', '00:00:20', 'VIDEO00220231006072432_652042d08a1b6.mp4', 'VIDEO00220231006072432_652042d08a191.jpg', '2', '2', '1', '2023-10-06 18:24:32', '2023-10-06 17:24:32'),
(3, 'TOPIC00120231006032153', 'SUBTOPIC00120231006032455', 'VIDEO00320231007092057', 'INTRO', '<p><br /><strong>At the end of the study in this video, students should be able to understand the following objectives;</strong><br /><br />1. Binary (base-2): which uses only two symbols, 0 and 1. It is extensively used in computer systems to represent and manipulate data using binary digits (bits).<br /><br />2. Octal (base-8): This number base uses eight symbols (0-7). Octal numbers are commonly used in computer programming, particularly when dealing with groups of bits or byte representations.<br /><br />3. Hexadecimal (base-16): This number base uses sixteen symbols (0-9 and A-F), where A represents 10, B represents 11, and so on up to F representing 15. Hexadecimal numbers are widely used in computer systems to represent binary data more compactly and conveniently.</p>', '00:10:10', 'VIDEO00320231007092057_652106d945acf.mp4', 'VIDEO00320231007092057_652106d945ac1.jpg', '3', '2', '1', '2023-10-07 08:20:57', '2023-10-07 07:20:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sub_topic_video_tab`
--
ALTER TABLE `sub_topic_video_tab`
  ADD PRIMARY KEY (`sn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sub_topic_video_tab`
--
ALTER TABLE `sub_topic_video_tab`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
