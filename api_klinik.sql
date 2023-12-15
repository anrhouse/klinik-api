-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 03:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_klinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2023_10_10_084320_create_poli_table', 1),
(2, '2023_11_17_034242_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `nomor_rm` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nomor_telepon` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nomor_rm`, `nama`, `tanggal_lahir`, `nomor_telepon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, '1', 'raihan', '2023-11-14', '', 'tegal', '2023-11-14 08:02:39', NULL),
(3, '3', 'testing', '2020-11-12', '08999121', 'tegalqqqq', '2023-11-14 08:13:31', '2023-11-14 08:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nomor_telepon` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `tanggal_lahir`, `nomor_telepon`, `email`, `password`, `created_at`, `updated_at`) VALUES
(2, '1213', 'raihan', '2023-11-14', '123', 'a@a.com', '123', '2023-11-14 08:27:29', NULL),
(3, '2222222', 'asd', '2020-01-12', '234', 'a@a.com', '23', '2023-11-14 08:29:40', '2023-11-14 08:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poli` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`id`, `poli`, `created_at`, `updated_at`) VALUES
(1, 'TES poli', NULL, '2023-10-27 02:53:03'),
(2, 'Poli THT', NULL, NULL),
(5, 'Poli Anak', '2023-10-24 09:44:13', '2023-10-24 09:44:13'),
(8, 'xy', '2023-11-16 09:16:08', '2023-11-16 09:25:27'),
(9, 'jaaaaaa', '2023-11-16 09:25:38', '2023-11-16 09:32:26'),
(10, 'a', '2023-11-16 10:14:22', '2023-11-16 10:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Laravelia', 'laravelia@web.com', '$2y$12$h1XeprSy2KinVeCizbuMSuyG1occNeFp1rfWf.cGM5aTRWelRD246', NULL, '2023-11-17 03:56:11', '2023-11-17 03:56:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `poli`
--
ALTER TABLE `poli`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
