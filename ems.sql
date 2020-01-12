-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2020 at 10:55 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id` bigint(20) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_name`, `national_id`, `phone_number`, `email`, `date_of_birth`, `status`, `position`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'manishimwe emmanuel', 1199423231294190, 781194127, 'manishimweemmanuel8@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 09:13:53', '2020-01-12 09:25:55', '2020-01-12 09:25:55'),
(2, 'manishimwe emmanuel', 1199423231294190, 781194127, 'manishimweemmanuel8@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 09:24:48', '2020-01-12 09:28:37', '2020-01-12 09:28:37'),
(3, 'kaka jean', 1199423231294190, 781194127, 'manishimweemmanuel8@gmail.com', '1994-06-28', 'suspend', 'developer', '2020-01-12 09:24:48', '2020-01-12 09:53:14', NULL),
(4, 'irera diedonne', 1237384723847273, 982378598, 'irera@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 10:11:05', '2020-01-12 10:11:05', NULL),
(5, 'irera diedonne', 1237384723847273, 982378598, 'irera@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 14:26:15', '2020-01-12 14:26:15', NULL),
(6, 'irera diedonne', 1237384723847273, 982378598, 'irera@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 14:26:44', '2020-01-12 14:26:44', NULL),
(7, 'irera diedonne', 1237384723847273, 982378598, 'irera@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 14:27:23', '2020-01-12 14:27:23', NULL),
(8, 'irera diedonne', 1237384723847273, 982378598, 'irera@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 14:29:22', '2020-01-12 14:29:22', NULL),
(9, 'irera diedonne', 1237384723847273, 982378598, 'irera@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 14:31:54', '2020-01-12 14:31:54', NULL),
(10, 'irera diedonne', 1237384723847273, 982378598, 'blaiseirakoze50@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 14:39:55', '2020-01-12 14:39:55', NULL),
(11, 'irera diedonne', 1237384723847273, 982378598, 'blaiseirakoze50@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 14:40:38', '2020-01-12 14:40:38', NULL),
(12, 'irera diedonne', 1237384723847273, 982378598, 'blaiseirakoze50@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 14:42:41', '2020-01-12 14:42:41', NULL),
(13, 'irera diedonne', 1237384723847273, 982378598, 'blaiseirakoze50@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 14:46:27', '2020-01-12 14:46:27', NULL),
(14, 'irera diedonne', 1237384723847273, 982378598, 'blaiseirakoze50@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 14:47:51', '2020-01-12 14:47:51', NULL),
(15, 'irera diedonne', 1237384723847273, 982378598, 'blaiseirakoze50@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 14:48:47', '2020-01-12 14:48:47', NULL),
(16, 'irera diedonne', 1237384723847273, 982378598, 'blaiseirakoze50@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 14:49:18', '2020-01-12 14:49:18', NULL),
(17, 'irera diedonne', 1237384723847273, 982378598, 'blaiseirakoze50@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 18:22:49', '2020-01-12 18:22:49', NULL),
(18, 'irera diedonne', 1237384723847273, 982378598, 'ireradodos@gmail.com', '1994-06-28', 'active', 'developer', '2020-01-12 19:21:06', '2020-01-12 19:21:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_01_12_101202_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
