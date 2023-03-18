-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 07, 2023 at 12:50 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beeswap`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `sale_amount` int NOT NULL,
  `saled_amount` int NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `eth_rate` int NOT NULL,
  `matic_rate` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`sale_amount`, `saled_amount`, `start_date`, `end_date`, `eth_rate`, `matic_rate`) VALUES
(1000, 0, '2023-02-24 11:10:28', '2023-02-24 11:10:28', 100, 15);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wallet` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `eth_amount` int NOT NULL,
  `matic_amount` int NOT NULL,
  `token_amount` int NOT NULL,
  `tx_date` datetime NOT NULL,
  `tx_id` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `wallet`, `eth_amount`, `matic_amount`, `token_amount`, `tx_date`, `tx_id`, `status`) VALUES
(1, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 1, 2, 500, '2023-02-24 00:00:00', '0x5c6f90e52284726a7276d6a20a3df94a4532a8fa4c921233a301e95673ad0255 ', 0),
(2, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 11, 21, 500, '2023-02-24 00:00:00', '0x5c6f90e52284726a7276d6a20a3df94a4532a8fa4c921233a301e95673ad0255 ', 1),
(3, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 12, 22, 501, '2023-02-24 00:00:00', '0x5c6f90e52284726a7276d6a20a3df94a4532a8fa4c921233a301e95673ad0255 ', 2),
(4, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 13, 23, 502, '2023-02-24 00:00:00', '0x5c6f90e52284726a7276d6a20a3df94a4532a8fa4c921233a301e95673ad0255 ', 2),
(5, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 14, 24, 503, '2023-02-24 00:00:00', '0x5c6f90e52284726a7276d6a20a3df94a4532a8fa4c921233a301e95673ad0255 ', 1),
(6, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 15, 25, 504, '2023-02-24 00:00:00', '0x5c6f90e52284726a7276d6a20a3df94a4532a8fa4c921233a301e95673ad0255 ', 0),
(7, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 16, 26, 505, '2023-02-24 00:00:00', '0x5c6f90e52284726a7276d6a20a3df94a4532a8fa4c921233a301e95673ad0255 ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wallet` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `eth_amount` int NOT NULL DEFAULT '0',
  `matic_amount` int NOT NULL DEFAULT '0',
  `token_amount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `wallet`, `eth_amount`, `matic_amount`, `token_amount`) VALUES
(1, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 1, 2, 501),
(2, '0xef174f8c00abADa7632Eeea0548c063c0dEC1ddB', 11, 21, 502),
(3, '0xef174f8c00abADa7632Eeea0548c063c0dEC2ddB', 12, 22, 503),
(4, '0xef174f8c00abADa7632Eeea0548c063c0dEC3ddB', 13, 23, 504),
(5, '0xef174f8c00abADa7632Eeea0548c063c0dEC4ddB', 14, 24, 505),
(6, '0xef174f8c00abADa7632Eeea0548c063c0dEC5ddB', 15, 25, 506),
(7, '0xef174f8c00abADa7632Eeea0548c063c0dEC6ddB', 16, 26, 507),
(8, '0xef174f8c00abADa7632Eeea0548c063c0dEC7ddB', 17, 27, 508),
(9, '0xef174f8c00abADa7632Eeea0548c063c0dEC8ddB', 18, 28, 500),
(10, '0xef174f8c00abADa7632Eeea0548c063c0dEC89dB', 1, 29, 500),
(11, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 1, 2, 500),
(12, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 1, 2, 500),
(13, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 1, 2, 500),
(14, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 1, 2, 500),
(15, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 1, 2, 500),
(16, '0xef174f8c00abADa7632Eeea0548c063c0dEC9ddB', 1, 2, 500);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
