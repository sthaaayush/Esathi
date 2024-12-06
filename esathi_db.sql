-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 09:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esathi_db`
--
CREATE DATABASE IF NOT EXISTS `esathi_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `esathi_db`;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `message` varchar(300) DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `created_on`, `updated_on`) VALUES
(33, 'Our behavioral health providers, as a part of your primary care team, work with your primary care provider to evaluate barriers to your total health and provide supportive, solution focused treatment. A behavioral health specialist is available to speak with you on the same day as your regular medic', '2023-02-02 20:54:40', NULL),
(34, 'Showing that you are comfortable with the discussion takes some of the power and “shock” out of thoughts of suicidality. Such thoughts may be normal for your loved one. If so, it will be reassuring that they can discuss the topic without upsetting you. If these thoughts are new, it may be scary for ', '2023-02-02 20:56:24', NULL),
(35, 'Your loved one may also need therapy around a recent crisis, like a break-up, job loss or other interpersonal problem. These interventions are an important part of treatment as they can decrease the pain from certain life events.', '2023-02-02 20:56:51', NULL),
(36, 'A mood disorder refers to a broad class of mental health conditions, including depression and bipolar disorder, that primarily impact emotional states. People may experience prolonged periods of a significantly depressed or sad mood, or they may have episodes of an abnormally elevated or irritable m', '2023-02-02 20:57:35', NULL),
(37, 'To feel dead inside is to find it difficult to process emotions like happiness and sadness. When you feel \"dead inside\" feelings take on the same dull tone and are hard to appreciate no matter the situation. Feeling dead inside might cause life to seem like a boring event, one that has no purpose or', '2023-02-02 20:58:10', NULL),
(38, 'I am sad', '2023-02-02 21:01:11', NULL),
(39, 'For most people, a sense of purpose provides the drive to get up and go in the morning. Whether it\'s contributing to end global warming, helping the homeless population, or reaching the healthiest version of yourself possible—knowing that there are tasks to be carried out every day to draw closer to', '2024-12-06 14:14:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(11) DEFAULT NULL,
  `response` varchar(300) DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `response`, `created_on`, `updated_on`) VALUES
(35, 'just do ittttttttt', '2024-12-06 14:06:12', NULL),
(38, 'dont be', '2024-12-06 14:19:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD KEY `response` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `response` FOREIGN KEY (`id`) REFERENCES `messages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
