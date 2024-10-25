-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2024 at 11:37 PM
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
-- Database: `payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `registrant`
--

CREATE TABLE `registrant` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrant`
--

INSERT INTO `registrant` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Ely Gian GA', 'fake@gmail.com', '$2y$10$3Cooo8DyJ88zaBHpi1nRKuRo33gNiioOorUDix9WeJHG0G5/Uefaq', '2024-10-25 13:31:31', '2024-10-25 13:31:31'),
(2, 'Ely Gian GA', 'fake@gmail.com', '$2y$10$Cmm/SDO9h/O9FuFx6MfgheYvABD7xrAarH6.CJesOgvpGyZ46u4sy', '2024-10-25 13:38:56', '2024-10-25 13:38:56'),
(3, 'Jems Nigga', 'niggara@gmail.com', '$2y$10$sKpTdrzafG1csqFJL9Xqn.jXCZjOmOC6ESAcygehh81/S9.5oPfzG', '2024-10-25 13:59:39', '2024-10-25 13:59:39'),
(4, 'Ely Gian GA', 'real@gmail.com', '$2y$10$jxfxPBTbuJwWr/pYwviMmePQCsHW9IyTqH/Hnn50uJ9qxXJpl44pi', '2024-10-25 14:10:18', '2024-10-25 14:10:18'),
(5, 'Ely Gian GA', 'leo@gmail.com', '$2y$10$LFkjXlge/OSfWk6psb/PCuHBXfDpwy.R6q23bz/xDIgTM2C0Q2KVO', '2024-10-25 21:20:15', '2024-10-25 21:20:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registrant`
--
ALTER TABLE `registrant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registrant`
--
ALTER TABLE `registrant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
