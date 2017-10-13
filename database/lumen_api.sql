-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2017 at 12:30 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumen_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_10_11_215038_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `remember_token`, `api_token`, `created_at`, `updated_at`) VALUES
(4, 'Esmeralda', 'esmeralda', 'esmeralda@gmail.com', '$2y$10$2yleJFN4mUylEQdQa.YSnu.Z.Mo5R1CJrp/zYdhUDdHAOqQIrwj9O', NULL, 'd9SMNrSyLTAoyyJMK9Fg8fkrV8Ign5b8ZD3mSwzndbVJUh7GXYkA19GQbm3A', '2017-10-12 16:55:53', '2017-10-12 16:55:53'),
(5, 'Orlando', 'dtobar', 'dtobar@gmail.com', '$2y$10$Gy0Qc5npcPh1C5O0QJpzoO8vBL78cEdNFOFB9Q0MDhyMfAY76TJIy', NULL, 'OhsODs3KusethGDLeIwiZhHfoQBAXvdJqf3fSeABVLsVFNkianRCZO8w8xuc', '2017-10-12 19:50:14', '2017-10-12 20:53:00'),
(7, 'Alba', 'alba', 'alba@gmail.com', '$2y$10$ltV0YKxg66zaYK6yhfuUM.J8Kf4x/r5gKQUR2C4sv5tGj1cplB2wi', NULL, 'eAR7oy39UCAxx9OCyfsOOEZHHdJpYDQjlNgpPAhg8EbTEXKgZX4wSDEirs6j', '2017-10-12 20:53:48', '2017-10-12 20:53:48'),
(11, 'Fabi', 'fabi', 'fabi@gmail.com', '$2y$10$cqPjPy4FREqjPVDYrAgHWO1KC.QWgkcX/fX30hzcPIXnV//CdPwgW', NULL, '9JOE8uycBUK7Gq09XNLm2oT1DYwGRGtfbtxnRE0ZuR9T8vQ7aaXXLdd6DPru', '2017-10-12 23:31:32', '2017-10-12 23:31:32'),
(12, 'Ramon', 'ramon', 'ramon@gmail.com', '$2y$10$KaWkQ2vdO09dEX7KuOwqoeMYK9kkovbXtjssZAsPgDSD9.ElklMGm', NULL, 'h7B62QRXmf9EKriHz87AF3msx0nQgFCvpYZ6NPLdQZ49veCnQfJP6D141TvL', '2017-10-12 23:33:41', '2017-10-12 23:33:41'),
(13, 'potter', 'potter', 'potter@gmail.com', '$2y$10$s76NtXhIb4sxEn753dfwT.5/VXYLWCSRJnqqgrEAjaMZxp8tj7882', NULL, 'WsZwoO441UmyQqO1Ev4dj8JK6aKotVcz79aVcNFWdX5EMzuY3ljslr5BTeyS', '2017-10-12 23:35:59', '2017-10-12 23:35:59'),
(16, 'wick', 'wiky', 'wick@gmail.com', '$2y$10$5q3iexXwTyoDOlGSqeysyOAG4jfIzjuPAdY2pCYJcASuM0KYHGtqC', NULL, 'Ezr1AR8dwip1uxYXBoOE9wQYiVShRSklMSQlc08LsyJnvJxPLl6zpTlBnBKb', '2017-10-12 23:38:31', '2017-10-12 23:38:31'),
(17, 'Ruben Tobar', 'ruben', 'ruben@gmail.com', '$2y$10$ptKYAwCrhL0mvAtW78BKP.tP1KKJ7aWtABa3eqSlKwNMVq6ltXCCy', NULL, 'En0rD75mT4CUuugxMAiRb3ON0p0R0Nwld13r4iJihDdqsVKZYm3GEI1AdaGS', '2017-10-12 23:40:30', '2017-10-12 23:40:30'),
(23, 'maria', 'maria2', 'maria@gmail.com', '$2y$10$W7LG59nWMgDRFjQE4W78R.WeMSfx9wfVwkHlHMMzQoGrql9/4ZP8O', NULL, 'wfJQ2Hyh0BxktKiLVC3EAkm84KxXe36yLlaJ9ANE4evNoJCauQxePbOEglKI', '2017-10-13 00:23:01', '2017-10-13 16:46:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
