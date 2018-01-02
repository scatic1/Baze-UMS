-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 02, 2018 at 09:57 PM
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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2017-12-27 23:43:04', '2017-12-27 23:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
CREATE TABLE IF NOT EXISTS `exams` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `exam_time` datetime DEFAULT NULL,
  `exam_place` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_exams_on_subject_id` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `exam_time`, `exam_place`, `subject_id`) VALUES
(2, '2017-12-29 00:03:00', 'VA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_applications`
--

DROP TABLE IF EXISTS `exam_applications`;
CREATE TABLE IF NOT EXISTS `exam_applications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apply` tinyint(1) DEFAULT NULL,
  `exam_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_exam_applications_on_exam_id` (`exam_id`),
  KEY `index_exam_applications_on_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_applications`
--

INSERT INTO `exam_applications` (`id`, `apply`, `exam_id`, `student_id`) VALUES
(1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20171226155834'),
('20171226160305'),
('20171228143534'),
('20171228143734'),
('20171228152203'),
('20171228152330'),
('20171228152357'),
('20171228153838'),
('20171228154345'),
('20171228192412'),
('20171228192655'),
('20171228193135'),
('20171228193553'),
('20171228193655'),
('20171228205727'),
('20171228210529'),
('20171228221018'),
('20171228230540'),
('20171228231100'),
('20171228231624'),
('20180102170853');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `index` int(11) DEFAULT NULL,
  `ects` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_students_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `index`, `ects`, `year`, `user_id`) VALUES
(1, 17043, 20, 2, 1),
(2, 12345, 50, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `ECTS` int(11) DEFAULT NULL,
  `cycle` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `title`, `ECTS`, `cycle`, `semester`, `subject_type`) VALUES
(1, 'Baze podataka', 5, 2, 1, 'Obavezni');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `JMBG` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `JMBG`, `date_of_birth`, `place_of_birth`, `phone`, `email`, `gender`, `username`, `password_digest`, `category`, `salary`) VALUES
(1, 'Amina', 'Mahmutovic', 1234567, '1995-11-03', 'Konjic', '062518676', 'amina@gmail.com', 'zensko', 'amina', '$2a$10$rViZ7Qmg7RzRsFeZQ9oMIewQHMnVLK6gJUQHxo6WXDMmPgx/nC//i', 'pravnik', NULL),
(2, 'Delila', 'Halilovic', 145673, '1995-12-01', 'Sarajevo', '062345189', 'delila@gmail.com', 'zensko', 'delila', '$2a$10$rViZ7Qmg7RzRsFeZQ9oMIewQHMnVLK6gJUQHxo6WXDMmPgx/nC//i', 'studentskasluzba', 3000),
(3, 'Selsebil', 'Catic', 6578123, '1996-12-07', 'Aman', '061218565', 'selsebil@gmail.com', 'zensko', 'selsebil', '$2a$10$rViZ7Qmg7RzRsFeZQ9oMIewQHMnVLK6gJUQHxo6WXDMmPgx/nC//i', 'student', NULL),
(4, 'Delila', NULL, 12345, '2017-12-28', 'Sarajevo', '62134456', 'delila@gmail.com', 'zensko', 'novo', '$2a$10$F6NKw//B3LQfH8zTLWt1wua5ohejVBKJmgqpWzgmRuh/WWo.S1/46', NULL, NULL),
(5, 'Huse', 'Fatkic', 12365478, '1944-01-03', 'Sarajevo', '061368965', 'huse@gmail.com', 'musko', 'huse', '$2a$10$rViZ7Qmg7RzRsFeZQ9oMIewQHMnVLK6gJUQHxo6WXDMmPgx/nC//i', 'pravnik', 4000);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `fk_rails_2b8bcc5100` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `exam_applications`
--
ALTER TABLE `exam_applications`
  ADD CONSTRAINT `fk_rails_cff08ed05f` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `fk_rails_ede882cad9` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_rails_148c9e88f4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
