-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2017 at 12:07 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2017-11-09 14:40:02', '2017-11-09 14:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `confirmations`
--

CREATE TABLE `confirmations` (
  `id` bigint(20) NOT NULL,
  `svrha` varchar(255) DEFAULT NULL,
  `ime` varchar(255) DEFAULT NULL,
  `prezime` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `confirmations`
--

INSERT INTO `confirmations` (`id`, `svrha`, `ime`, `prezime`, `created_at`, `updated_at`) VALUES
(1, 'znanje', 'amina', 'mah', '2017-12-01 00:00:00', '2017-12-27 00:00:00'),
(2, 'zdravlje', 'delila', 'halilovic', '2017-12-01 00:00:00', '2017-12-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `job_advertisements`
--

CREATE TABLE `job_advertisements` (
  `id` bigint(20) NOT NULL,
  `work_position` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_advertisements`
--

INSERT INTO `job_advertisements` (`id`, `work_position`, `created_at`, `updated_at`) VALUES
(1, 'nastavnik matematike 2', '2017-11-12 11:17:58', '2017-12-27 21:31:42'),
(2, 'nastavnik biologije', '2017-11-12 11:18:25', '2017-11-12 11:18:52'),
(7, 'nastavnik baza', '2017-12-10 15:16:53', '2017-12-10 15:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `JBMG` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `telephone_number` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `CV` text,
  `motivation_letter` text,
  `job_advertisements_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `name`, `surname`, `JBMG`, `date_of_birth`, `place_of_birth`, `telephone_number`, `email`, `gender`, `CV`, `motivation_letter`, `job_advertisements_id`, `created_at`, `updated_at`) VALUES
(19, 'Delila', 'Halilovic', 12345, '2017-12-10', 'Sarajevo', 62134456, 'delila@gmail.com', 'zensko', 'haha', 'blabla', 1, '2017-12-10 15:17:37', '2017-12-10 20:48:26'),
(20, 'Amina', 'Mahmutovic', 12324, '2017-12-10', 'Konjic', 1234567, 'amina@gmail.com', 'zensko', 'haah', 'bla', 7, '2017-12-10 15:44:45', '2017-12-10 15:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `jmbg` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `placebirth` varchar(255) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `ects` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `points` float DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `subject_id` bigint(20) DEFAULT NULL,
  `proba` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20171109150306'),
('20171109220934'),
('20171111123053'),
('20171112111541'),
('20171112121553'),
('20171211015822'),
('20171215221535'),
('20171215223836'),
('20171215235454'),
('20171222203300'),
('20171224210845'),
('20171224210922'),
('20171226161248'),
('20171227234605'),
('20171228140419'),
('20171228232209'),
('20171228232320');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `ECTS` int(11) DEFAULT NULL,
  `cycle` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `title`, `ECTS`, `cycle`, `semester`, `subject_type`, `created_at`, `updated_at`) VALUES
(1, 'PRS', 5, 1, 1, 'obavezni', '2017-12-17 16:03:38', '2017-12-17 16:05:30'),
(2, 'TP', 6, 1, 1, 'Obavezni', '2017-12-28 23:28:59', '2017-12-28 23:28:59'),
(3, 'OR', 5, 1, 1, 'Obavezni', '2017-12-28 23:33:04', '2017-12-28 23:33:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `confirmations`
--
ALTER TABLE `confirmations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_advertisements`
--
ALTER TABLE `job_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_job_applications_on_job_advertisements_id` (`job_advertisements_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_results_on_subject_id` (`subject_id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `confirmations`
--
ALTER TABLE `confirmations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `job_advertisements`
--
ALTER TABLE `job_advertisements`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `fk_rails_50734fd3c1` FOREIGN KEY (`job_advertisements_id`) REFERENCES `job_advertisements` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `fk_rails_a6f81d1959` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
