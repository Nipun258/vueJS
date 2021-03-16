-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2021 at 06:58 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_image`, `created_at`, `updated_at`) VALUES
(4, 'hello', 'image/brand/1692544280977500.jpg', '2021-02-23 13:57:35', '2021-02-23 21:36:50'),
(5, 'hello23', 'image/brand/1692544299726965.jpg', '2021-02-23 21:37:08', NULL),
(6, 'hello235', 'image/brand/1692545920954110.jpg', '2021-02-23 22:02:54', NULL),
(7, 'hello238', 'image/brand/1692547174038421.jpg', '2021-02-23 22:22:49', NULL),
(9, 'ggggggg', 'image/brand/1693367718846035.jpg', '2021-03-04 23:45:02', NULL),
(10, 'ghhggg', 'image/brand/1693367788074658.jpg', '2021-03-04 23:46:08', NULL),
(11, 'hello888', 'image/brand/1693368120011928.jpg', '2021-03-04 23:51:24', NULL),
(12, 'hello2388', 'image/brand/1693368341292629.jpg', '2021-03-04 23:54:55', NULL),
(13, 'hello2389', 'image/brand/1693369876215888.jpg', '2021-03-05 00:19:19', NULL),
(14, 'hello23874', 'image/brand/1693369992644957.jpg', '2021-03-05 00:21:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `category_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 'local', '2021-02-22 03:49:56', '2021-03-01 05:22:24', NULL),
(3, 2, 'sport23', '2021-02-22 04:03:36', '2021-02-25 03:01:45', NULL),
(4, 2, 'sport258', '2021-02-22 04:16:14', NULL, NULL),
(5, 2, 'local23', '2021-02-22 04:26:36', NULL, NULL),
(6, 1, 'temp', '2021-02-22 10:26:11', NULL, NULL),
(7, 1, 'local581', '2021-02-22 21:45:19', '2021-02-23 02:34:15', NULL),
(8, 1, 'nipun25', '2021-02-23 02:44:36', NULL, NULL),
(9, 2, 'hello', '2021-02-23 04:00:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, '1-4 Mudunawatta,Ketanwila,Maliduwa,Akuressa', 'nipunsachinda@gmail.com', '+94766453075', '2021-03-04 02:19:41', '2021-03-04 02:44:17'),
(3, '1-4 Mudunawatta,Ketanwila,Maliduwa,Akuressa', 'nipunsachinda@gmail.com', '+94766453075', '2021-03-04 02:36:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_forms`
--

CREATE TABLE IF NOT EXISTS `contact_forms` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Nipun Sachinda', 'nipunsachinda@gmail.com', 'university of Sri Jayawardhanapura', 'this is sample message', '2021-03-04 03:48:40', NULL),
(2, 'Nipun Sachinda', 'nipunsachinda@gmail.com', 'university of Sri Jayawardhanapura', 'sa', '2021-03-04 03:50:09', NULL),
(3, 'Nipun Sachinda', 'nipunsachinda@gmail.com', 'university of Sri Jayawardhanapura', 'test3', '2021-03-04 03:53:50', NULL),
(4, 'Nipun Sachinda', 'nipunsachinda@gmail.com', 'university of Sri Jayawardhanapura', 'test 4', '2021-03-04 03:54:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_abouts`
--

CREATE TABLE IF NOT EXISTS `home_abouts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_dis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_dis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_abouts`
--

INSERT INTO `home_abouts` (`id`, `title`, `short_dis`, `log_dis`, `created_at`, `updated_at`) VALUES
(1, '258EUM IPSAM LABORUM DELENITI VELITENA', 'Voluptatem dignissimos provident quasi corporis voluptates sit assum perenda sruen jonee trave', 'Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2021-03-03 22:32:58', '2021-03-03 23:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_02_21_170935_create_sessions_table', 1),
(7, '2021_02_22_034643_create_categories_table', 2),
(8, '2021_02_23_082634_create_brands_table', 3),
(9, '2021_02_24_033745_create_multipics_table', 4),
(10, '2021_03_02_111713_create_sliders_table', 5),
(11, '2021_03_03_112915_create_home_abouts_table', 6),
(12, '2021_03_04_060427_create_contacts_table', 7),
(13, '2021_03_04_084212_create_contact_forms_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `multipics`
--

CREATE TABLE IF NOT EXISTS `multipics` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multipics`
--

INSERT INTO `multipics` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'image/multipic/1692550422382239.jpg', '2021-02-23 23:14:27', NULL),
(2, 'image/multipic/1692550468069271.jpg', '2021-02-23 23:15:10', NULL),
(3, 'image/multipic/1692550468371244.jpg', '2021-02-23 23:15:11', NULL),
(4, 'image/multipic/1692550468697591.jpg', '2021-02-23 23:15:11', NULL),
(5, 'image/multipic/1692550468958448.jpg', '2021-02-23 23:15:11', NULL),
(6, 'image/multipic/1692550469219223.jpg', '2021-02-23 23:15:11', NULL),
(7, 'image/multipic/1692551657677788.jpg', '2021-02-23 23:34:05', NULL),
(8, 'image/multipic/1692655225331387.png', '2021-02-25 03:00:19', NULL),
(9, 'image/multipic/1693276085007455.jpg', '2021-03-03 23:28:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('nipunsachinda258@gmail.com', '$2y$10$XolmS5ofgzEzxPoizBXbyev5i326ZuwTzO6adBeKx0taFCv5xMbTS', '2021-02-24 05:27:07'),
('sachinda_ps14258@stu.kln.ac.lk', '$2y$10$CXMjwjIQ5xe4cRp8o762Ku17XNMtk7wkC1R/T3rPi0XLsa0L4mfrq', '2021-02-24 06:14:45'),
('nipunsachinda@gmail.com', '$2y$10$CBL6B0FDjrNAPiXkNh24x.0vR9wlNtTAnp3vGEDBLGWPVN9TszvNO', '2021-02-24 20:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'Nipun Sachinda', 'fbae882563b5f909ed89cdef77402d5e645f3e3a64063de396ef091431e15b06', '[\"read\"]', NULL, '2021-03-01 05:05:04', '2021-03-01 05:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('81JavETKcikZ68Vju6B9GGJemutYT5yLSFY4dZys', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.72 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzdKaHRzelBUaVpnUjNTcFA1eGNhMUxWZTNnSDN2c2ZFUTR5WXk2NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1614913243),
('EEFHOrmfofJfDAbzUNBaSs3JqujoLwNQNCpodhYC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.72 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiRExkaU5XeHN1M0NuWlVnQTRRalFOOU1RSEpCQVluMUFlM1pSWmdIcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9icmFuZC9hbGw/cGFnZT0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRRVzNKRVd5MzJyQVNjYWYuMGJyaksubk5nM05hZUZpNjV6eUFobUoxTDlydHVsTlBDSG92eSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkUVczSkVXeTMyckFTY2FmLjBicmpLLm5OZzNOYWVGaTY1enlBaG1KMUw5cnR1bE5QQ0hvdnkiO3M6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1614923853);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'slider two', 'As i told you this complete project course which beings you to Beginner to Advance level by creating complete most advanced Inventory management System Project. You will able to understand how to complete one project, how to handle project bugs, Core structures of MVC. This complete project will help you to get a job with this new skill. You will be able to start work for your client. Add this project in your profolio and university assignment And most', 'image/slider/1693203218113628.jpg', '2021-03-03 04:10:22', '2021-03-03 05:52:00'),
(3, 'slider three', 'As i told you this complete project course which beings you to Beginner to Advance level by creating complete most advanced Inventory management System Project.', 'image/slider/1693209454963560.jpg', '2021-03-03 04:19:36', '2021-03-04 00:03:28'),
(4, 'slide four', 'As i told you this complete project course which beings you to Beginner to Advance level by creating complete most advanced Inventory management System Project.', 'image/slider/1693209656463631.jpg', '2021-03-03 05:52:43', '2021-03-04 00:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Nipun Sachinda', 'nipunsachinda258@gmail.com', NULL, '$2y$10$QW3JEWy32rAScaf.0brjK.nNg3NaeFi65zyAhmJ1L9rtulNPCHovy', NULL, NULL, NULL, NULL, NULL, '2021-02-21 12:09:14', '2021-03-04 23:09:49'),
(2, 'Nipun Tharinda', 'nipunsachinda@gmail.com', NULL, '$2y$10$eQBYgU9CRQ2JRs1KsNdXPevh43l/3xd81txmuvRXjOJ4U7GxsAk7C', NULL, NULL, NULL, NULL, 'profile-photos/aeJvRJSNljUdIKIOmgT0UMMBtzSH2QeR49Yrm7yJ.jpg', '2021-02-21 21:45:47', '2021-03-04 06:10:35'),
(3, 'Nipun Sachinda', 'sachinda_ps14258@stu.kln.ac.lk', NULL, '$2y$10$G6BdZoVfeOKGpNapUn9g5uMS1q5VpMU48oVKaM9uZfbYBxXJ19R/W', NULL, NULL, NULL, NULL, NULL, '2021-02-24 06:14:22', '2021-02-24 06:14:22'),
(4, 'Nipun Sachinda', 'nipunsachinda256@gmail.com', NULL, '$2y$10$M7mOxvM8VGoG1WeIrkUN5eboaEIeYEJqjqSD1mjQ9nEs0/TXNinj2', NULL, NULL, NULL, NULL, 'profile-photos/YkEXvq5eMlruFTvplz8rlmlBC2810fR4gcMf1Vd7.jpg', '2021-03-04 11:10:07', '2021-03-04 11:12:11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
