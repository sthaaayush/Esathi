-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 04:17 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `messsages`
--

CREATE TABLE `messsages` (
  `id` int(11) NOT NULL,
  `message` varchar(300) DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messsages`
--

INSERT INTO `messsages` (`id`, `message`, `created_on`, `updated_on`) VALUES
(33, 'Our behavioral health providers, as a part of your primary care team, work with your primary care provider to evaluate barriers to your total health and provide supportive, solution focused treatment. A behavioral health specialist is available to speak with you on the same day as your regular medic', '2023-02-02 20:54:40', NULL),
(34, 'Showing that you are comfortable with the discussion takes some of the power and “shock” out of thoughts of suicidality. Such thoughts may be normal for your loved one. If so, it will be reassuring that they can discuss the topic without upsetting you. If these thoughts are new, it may be scary for ', '2023-02-02 20:56:24', NULL),
(35, 'Your loved one may also need therapy around a recent crisis, like a break-up, job loss or other interpersonal problem. These interventions are an important part of treatment as they can decrease the pain from certain life events.', '2023-02-02 20:56:51', NULL),
(36, 'A mood disorder refers to a broad class of mental health conditions, including depression and bipolar disorder, that primarily impact emotional states. People may experience prolonged periods of a significantly depressed or sad mood, or they may have episodes of an abnormally elevated or irritable m', '2023-02-02 20:57:35', NULL),
(37, 'To feel dead inside is to find it difficult to process emotions like happiness and sadness. When you feel \"dead inside\" feelings take on the same dull tone and are hard to appreciate no matter the situation. Feeling dead inside might cause life to seem like a boring event, one that has no purpose or', '2023-02-02 20:58:10', NULL),
(38, 'I am sad', '2023-02-02 21:01:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(11) DEFAULT NULL,
  `response` varchar(300) DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp(),
  `updated_on` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messsages`
--
ALTER TABLE `messsages`
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
-- AUTO_INCREMENT for table `messsages`
--
ALTER TABLE `messsages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `response` FOREIGN KEY (`id`) REFERENCES `messsages` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
