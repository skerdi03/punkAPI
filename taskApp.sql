-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2022 at 10:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('055c84aabd185e9d60893a308f290da70a72b73cdfbcf836100bba24a0fc54c92e76d3a2420bfce3', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:04:26', '2022-02-09 08:04:26', '2023-02-09 09:04:26'),
('0e3f252c164fb36f193557c6466300f35e6c32177d4241965302313f1ae1940ee7736656db5b1a5e', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:26:54', '2022-02-09 08:26:54', '2023-02-09 09:26:54'),
('1c46610967e00806892b136d3809a30d6bcbda100752e92271a693a2e3f12b9a34fedfb26e9cdbee', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:33:10', '2022-02-09 08:33:10', '2023-02-09 09:33:10'),
('22cab8a67461e0470b64f1f6184532ab2be367dc5dd40ccba2a4922baa001787ae18a451d590412b', 6, 2, NULL, '[]', 0, '2022-02-09 08:04:13', '2022-02-09 08:04:13', '2023-02-09 09:04:13'),
('23c82e0e97d5f6f85be7173dc03d2b4a0054c259a795f2b27609af6a62858c1c269e5a59581219b4', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:14:50', '2022-02-09 08:14:50', '2023-02-09 09:14:50'),
('3a5fab5b53346133699911b958d467b88104dc0dce6230d0bed1de6e1b3e5c23b7d475414458adfa', 6, 2, NULL, '[]', 0, '2022-02-09 08:09:36', '2022-02-09 08:09:36', '2023-02-09 09:09:36'),
('50b02b1d69270bcedd8daf596dee60b16802a9ca4db4a7a1f14cb1f0e15c83fc9bca1cb0512639fe', 6, 2, NULL, '[]', 0, '2022-02-09 08:03:34', '2022-02-09 08:03:34', '2023-02-09 09:03:34'),
('5325f04ce3f1c37bb7606b710635540265aa44857cb7c0f17dae7aee988a33b228abc3fdf5f9dc8a', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:16:37', '2022-02-09 08:16:37', '2023-02-09 09:16:37'),
('5fc63aa7c02aca1a307b921541d7a23a599a0d63214a9b8deb1e889e1a8112a054367f4979858e9c', 6, 2, NULL, '[]', 0, '2022-02-09 08:04:15', '2022-02-09 08:04:15', '2023-02-09 09:04:15'),
('6378616d613df2f44be01bf33f3b632900857a9ef2b01b1d66d02be6f0d34a08fd099db408be891d', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:17:12', '2022-02-09 08:17:12', '2023-02-09 09:17:12'),
('6701bda45cfc4aa859849000d85180d9e55ed509976cf2990f0cd1007422013507ed4252ac3fb8b8', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:04:52', '2022-02-09 08:04:52', '2023-02-09 09:04:52'),
('778290cce78a08a5344a6bf2c74d6ca80bc4ba9d28b0f11a5e696b7163813a54ffc8df0c626acab5', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:21:59', '2022-02-09 08:21:59', '2023-02-09 09:21:59'),
('97a1732afa9a228ad6dd9a2c0cf20971666035532f5a09e8d0b3e287359ea93abec3ec71becb30f8', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:32:47', '2022-02-09 08:32:47', '2023-02-09 09:32:47'),
('b2efb6dfde18884b1084fff17c58cf346abcf44ab4b23c4ac48f691692a5dc0ec1caa585b1c95f8f', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:04:34', '2022-02-09 08:04:34', '2023-02-09 09:04:34'),
('b43d43f9d7ea1535d8e677b139cf68585bb6b6eb132774f7e2cd4af7b49eb087a240e7350aa4e00d', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:05:13', '2022-02-09 08:05:13', '2023-02-09 09:05:13'),
('c048f6600a98bc4fe3f22f74c7e4beb1617eae3d91d8be4a06240da76aabde1e3119679ac5c89326', 6, 2, NULL, '[]', 0, '2022-02-09 08:09:33', '2022-02-09 08:09:33', '2023-02-09 09:09:33'),
('e8bfda9ccebc418c4e2e82842cadd7a1a2144dc98c3700654ead8a94e5033061f0163d259eebc850', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:16:43', '2022-02-09 08:16:43', '2023-02-09 09:16:43'),
('eff915b18f56a39839eb774f6dbfc74376be349912efb6c4fcbb61153f5643a5b815746a59238390', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:05:16', '2022-02-09 08:05:16', '2023-02-09 09:05:16'),
('f2e085ea473147ab8d4519d6e71cc1c715d19c0003a0668dbc8ee1e2d190d57a8e1dc7a0417b45fb', 6, 1, 'authToken', '[]', 0, '2022-02-09 08:34:17', '2022-02-09 08:34:17', '2023-02-09 09:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'uwWVXO8dUYEMMCtm1bb376YMk7ZWVqnqGt7j3cHp', NULL, 'http://localhost', 1, 0, 0, '2022-02-09 07:54:38', '2022-02-09 07:54:38'),
(2, NULL, 'Laravel Password Grant Client', 'hZgTzjK9yVWATIlK1bMZER5VxhZPB8zwgcveei7t', 'users', 'http://localhost', 0, 1, 0, '2022-02-09 07:54:38', '2022-02-09 07:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-02-09 07:54:38', '2022-02-09 07:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('56857be04897072915a31c3bf1bf01ee5149aeeb2b66e0e17cb6f22b551991eecb69d4d8ec60fcda', '5fc63aa7c02aca1a307b921541d7a23a599a0d63214a9b8deb1e889e1a8112a054367f4979858e9c', 0, '2023-02-09 09:04:15'),
('5bd5d10f9f50ab6842c524002743b7d0aaf32cde50908cd64fa3945a1fe8185d2d7848028fea235c', 'c048f6600a98bc4fe3f22f74c7e4beb1617eae3d91d8be4a06240da76aabde1e3119679ac5c89326', 0, '2023-02-09 09:09:33'),
('a34e4d82121c6b01c7b89609e46a98a342e9c048e28ceb5a06fe1d32a38118ccbf3abd8ff6011ac6', '22cab8a67461e0470b64f1f6184532ab2be367dc5dd40ccba2a4922baa001787ae18a451d590412b', 0, '2023-02-09 09:04:13'),
('b56f19aa4b8ab38d9b50d23ba7bfeb98fb70cc1629062d7b4011b4a1e261673fa809e79374ab4eaf', '3a5fab5b53346133699911b958d467b88104dc0dce6230d0bed1de6e1b3e5c23b7d475414458adfa', 0, '2023-02-09 09:09:36'),
('fc8901798ab5ffbc32f330f08408186dd61efa86bcc85487ef600222f559719257559c2bbd5143c8', '50b02b1d69270bcedd8daf596dee60b16802a9ca4db4a7a1f14cb1f0e15c83fc9bca1cb0512639fe', 0, '2023-02-09 09:03:34');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\User', 2, 'api-call', '8165a379169070c57768a5a2e8a2e1780b3c7600ef9d643013a6106f956ab9f6', '[\"*\"]', NULL, '2022-02-08 09:51:48', '2022-02-08 09:51:48'),
(11, 'App\\Models\\User', 6, 'authToken', '92a9fc74dfc3579dd374dd25eed90e610f68f9c10f5440825de341e757f9174a', '[\"*\"]', NULL, '2022-02-09 07:16:05', '2022-02-09 07:16:05'),
(12, 'App\\Models\\User', 6, 'authToken', 'd37d9ba1181ba42d028241c4b2a75c5c0bea2393247ee80a77aa0ca7b1270197', '[\"*\"]', NULL, '2022-02-09 07:17:44', '2022-02-09 07:17:44'),
(13, 'App\\Models\\User', 6, 'authToken', '6ce7028f32f8470cdd7dfcac5b944b1b0f05d82abb0396c134d8c03f779e856c', '[\"*\"]', NULL, '2022-02-09 07:18:38', '2022-02-09 07:18:38'),
(14, 'App\\Models\\User', 6, 'authToken', '68619e1e2336e83319bae7f4c1b321c4347aa3dc6fc978b8ee06fb5eb5b666fb', '[\"*\"]', NULL, '2022-02-09 07:22:05', '2022-02-09 07:22:05'),
(15, 'App\\Models\\User', 6, 'authToken', '9685b1391a059a571a5eab4a7d3610e4314e4cd964487880cbfd4245cf51b099', '[\"*\"]', NULL, '2022-02-09 07:33:42', '2022-02-09 07:33:42'),
(16, 'App\\Models\\User', 6, 'authToken', '7af263638dadc7068b407c1df9f5ee62db7a5a0a85239c53bfdb7600a75fda3c', '[\"*\"]', NULL, '2022-02-09 07:33:42', '2022-02-09 07:33:42'),
(17, 'App\\Models\\User', 6, 'authToken', 'a193dd4494957de110e82c73e1bb5026562d285aa62c29539c9961011e33b7c3', '[\"*\"]', NULL, '2022-02-09 07:35:04', '2022-02-09 07:35:04'),
(18, 'App\\Models\\User', 6, 'authToken', '05cd6f2ac83983e69bd4b2eea5ef8b504e3a9be28f776573d4b7fc4719caad17', '[\"*\"]', NULL, '2022-02-09 07:40:24', '2022-02-09 07:40:24'),
(19, 'App\\Models\\User', 6, 'authToken', 'dd4aced22adfe14ead8f7f18724e74634c65d062ca3fc452ac5585c163d8708a', '[\"*\"]', NULL, '2022-02-09 07:52:25', '2022-02-09 07:52:25');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Admin', 'admin@gmail.com', NULL, '$2y$10$wTuFb2tOqmp0y.OMFXAhauA4nmTD6FMS8ml5vDAzuRDVssE.zoDHG', NULL, '2022-02-08 13:40:36', '2022-02-08 13:40:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
