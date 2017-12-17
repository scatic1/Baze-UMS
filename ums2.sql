-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 17, 2017 at 05:54 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums2`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `JMBG` int(13) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `phone` int(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `JMBG`, `date_of_birth`, `place_of_birth`, `phone`, `email`, `gender`, `username`, `password_digest`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Amina', 'Mahmutovic', 1234567, '1995-11-03', 'Konjic', 62410231, 'amina@gmail.com', 'zensko', 'amina', '$2a$10$rViZ7Qmg7RzRsFeZQ9oMIewQHMnVLK6gJUQHxo6WXDMmPgx/nC//i', 'pravnik', '2017-12-17 00:00:00', '2017-12-17 00:00:00'),
(2, 'Delila', 'Halilovic', 12345, '2017-12-17', 'Sarajevo', 62134456, 'delila@gmail.com', 'zensko', 'delila', '$2a$10$Mht.iAPPzD/Ycua9Btvu9uM2y1vGB66t0TLyHfe1sIf9oTGz8pG2C', 'studentskasluzba', '2017-12-17 17:34:10', '2017-12-17 17:34:10'),
(3, 'Selsebil', 'Catic', 1234567, '2017-12-10', 'Aman', 12345678, 'selsa@gmail.com', 'zensko', 'selsebil', '$2a$10$rViZ7Qmg7RzRsFeZQ9oMIewQHMnVLK6gJUQHxo6WXDMmPgx/nC//i', 'student', '2017-12-10 20:28:04', '2017-12-10 20:28:04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
