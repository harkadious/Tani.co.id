-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 12:29 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tani2`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `subject_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `subject_id`, `subject_type`, `type`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'App\\Thread', 'created_thread', '2017-05-21 15:05:13', '2017-05-21 15:05:13'),
(2, 2, 1, 'App\\Reply', 'created_reply', '2017-05-21 15:05:52', '2017-05-21 15:05:52'),
(4, 2, 3, 'App\\Reply', 'created_reply', '2017-05-21 15:06:35', '2017-05-21 15:06:35'),
(6, 3, 2, 'App\\Favorite', 'created_favorite', '2017-05-21 15:06:49', '2017-05-21 15:06:49'),
(7, 1, 4, 'App\\Reply', 'created_reply', '2017-05-21 15:08:12', '2017-05-21 15:08:12'),
(8, 1, 3, 'App\\Favorite', 'created_favorite', '2017-05-21 15:08:38', '2017-05-21 15:08:38'),
(9, 1, 2, 'App\\Thread', 'created_thread', '2017-05-21 15:11:03', '2017-05-21 15:11:03'),
(10, 3, 5, 'App\\Reply', 'created_reply', '2017-05-21 15:11:51', '2017-05-21 15:11:51'),
(11, 2, 4, 'App\\Favorite', 'created_favorite', '2017-05-21 15:12:28', '2017-05-21 15:12:28'),
(13, 2, 6, 'App\\Favorite', 'created_favorite', '2017-05-21 15:12:44', '2017-05-21 15:12:44'),
(14, 2, 6, 'App\\Reply', 'created_reply', '2017-05-21 15:15:33', '2017-05-21 15:15:33'),
(15, 1, 7, 'App\\Favorite', 'created_favorite', '2017-05-21 15:16:20', '2017-05-21 15:16:20'),
(16, 1, 8, 'App\\Favorite', 'created_favorite', '2017-05-21 15:16:21', '2017-05-21 15:16:21'),
(17, 1, 7, 'App\\Reply', 'created_reply', '2017-05-21 15:19:43', '2017-05-21 15:19:43'),
(18, 3, 9, 'App\\Favorite', 'created_favorite', '2017-05-21 15:20:11', '2017-05-21 15:20:11'),
(19, 3, 8, 'App\\Reply', 'created_reply', '2017-05-21 15:20:37', '2017-05-21 15:20:37'),
(20, 3, 9, 'App\\Reply', 'created_reply', '2017-05-21 15:21:04', '2017-05-21 15:21:04'),
(21, 1, 10, 'App\\Favorite', 'created_favorite', '2017-05-21 15:21:16', '2017-05-21 15:21:16'),
(22, 1, 11, 'App\\Favorite', 'created_favorite', '2017-05-21 15:21:17', '2017-05-21 15:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `favorited_id` int(10) UNSIGNED NOT NULL,
  `favorited_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `favorited_id`, `favorited_type`, `created_at`, `updated_at`) VALUES
(2, 3, 3, 'App\\Reply', '2017-05-21 15:06:49', '2017-05-21 15:06:49'),
(3, 1, 3, 'App\\Reply', '2017-05-21 15:08:38', '2017-05-21 15:08:38'),
(4, 2, 4, 'App\\Reply', '2017-05-21 15:12:28', '2017-05-21 15:12:28'),
(6, 2, 5, 'App\\Reply', '2017-05-21 15:12:44', '2017-05-21 15:12:44'),
(7, 1, 6, 'App\\Reply', '2017-05-21 15:16:20', '2017-05-21 15:16:20'),
(8, 1, 5, 'App\\Reply', '2017-05-21 15:16:21', '2017-05-21 15:16:21'),
(9, 3, 7, 'App\\Reply', '2017-05-21 15:20:11', '2017-05-21 15:20:11'),
(10, 1, 8, 'App\\Reply', '2017-05-21 15:21:16', '2017-05-21 15:21:16'),
(11, 1, 9, 'App\\Reply', '2017-05-21 15:21:17', '2017-05-21 15:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2016_09_04_000000_create_roles_table', 1),
(24, '2016_09_04_100000_create_role_user_table', 1),
(25, '2017_03_14_175959_create_threads_table', 1),
(26, '2017_03_14_180530_create_replies_table', 1),
(27, '2017_03_30_161938_create_favorites_table', 1),
(28, '2017_04_21_162429_create_activities_table', 1),
(29, '2017_05_19_141013_create_thread_subscriptions_table', 1),
(30, '2017_05_21_101720_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` int(11) NOT NULL,
  `post_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `slug`, `author`, `post_body`, `created_at`, `updated_at`) VALUES
(1, 'Bercocok Tanam yang Baik', 'cocok-tanam', 1, 'Hembuskan nafas yang paling sejuk', '2017-05-21 14:41:51', '2017-05-21 14:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `thread_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Saya kurang tau pak Iqbal', '2017-05-21 15:05:52', '2017-05-21 15:06:13'),
(3, 1, 2, 'Oh bisa dikoreksi ya. Tolong komentar saya diatasnya dihapus ya pak :D', '2017-05-21 15:06:35', '2017-05-21 15:06:35'),
(4, 1, 1, 'Saya kok masih belum bisa ngehapus komentar bapak ya? Padahal hak akses saya lebih tinggi daripada bapak Brama dan Iqbal....\nSepertinya fitur mention juga bakalan menarik pak... Ditunggu saja ya pak', '2017-05-21 15:08:12', '2017-05-21 15:08:12'),
(5, 2, 3, 'Apakah bisa menambahkan fitur Avatar untuk profil pak? Saya ingin ngeksis juga loh pak 8)', '2017-05-21 15:11:51', '2017-05-21 15:11:51'),
(6, 2, 2, 'Mention to user pak, biar masuk notifikasi gitu\nDashboard juga pak buat admin dan moderator\nWYSIWYG editor buat Post dan Thread juga dong pak, biar bisa HTML-able gitu pak, biar <strong>tulisan saya ini keren</strong>\nditunggu pak', '2017-05-21 15:15:33', '2017-05-21 15:15:33'),
(7, 2, 1, 'Ide bagus. Untuk WYSIWYG editor, masih dipikirin dulu ya. Soalnya saya juga barusan belajar Vue.js, dan belum seberapa paham betul dengan front-end framework satu ini hehe.', '2017-05-21 15:19:43', '2017-05-21 15:19:43'),
(8, 2, 3, 'Subscribe ini buat apa pak kalo ga muncul di notifikasi? Makanya, dikasih notifikasi dong pak :D', '2017-05-21 15:20:37', '2017-05-21 15:20:37'),
(9, 2, 3, 'Emoji juga boleh banget loh pak. Yang penting sih WYSIWYG pak :D', '2017-05-21 15:21:04', '2017-05-21 15:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `group`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Administrator', 'admin', '2017-05-21 14:37:18', '2017-05-21 14:37:18'),
(2, 'Forum Moderator', 'sitemods', 'Moderator', 'mods', '2017-05-21 14:37:18', '2017-05-21 14:37:18'),
(3, 'User', 'user', 'General User', 'user', '2017-05-21 14:37:18', '2017-05-21 14:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2017-05-21 14:37:43', '2017-05-21 14:37:43'),
(2, 3, 3, '2017-05-21 14:37:43', '2017-05-21 14:37:43'),
(3, 2, 2, '2017-05-21 17:00:00', '2017-05-21 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `replies_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `user_id`, `replies_count`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 'Kenapa saya ganteng?', 'Mau tanya nih. Kenapa ya saya selalu merasakan kalo saya ini ganteng?', '2017-05-21 15:05:13', '2017-05-21 15:08:12'),
(2, 1, 5, 'Humble Boy', 'Saya ingin bertanya. Adakah fitur lain yang ingin ditambahkan di sini?', '2017-05-21 15:11:03', '2017-05-21 15:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `thread_subscriptions`
--

CREATE TABLE `thread_subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `thread_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thread_subscriptions`
--

INSERT INTO `thread_subscriptions` (`id`, `user_id`, `thread_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '2017-05-21 15:08:25', '2017-05-21 15:08:25'),
(4, 2, 2, '2017-05-21 15:13:45', '2017-05-21 15:13:45'),
(6, 3, 2, '2017-05-21 15:19:57', '2017-05-21 15:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fajar Maulana Firdaus', NULL, 'fajarmf78@gmail.com', '$2y$10$9Hd5R9MNygzar37jlCLAWeGYxIRGOa/fCAnW6ibR2Ikfljai1QXti', 'qsjZhuqXIDD7JhjbZbt6UYRvIEeS1XOigjem0Ky67lGYAiQrfbfY5CtAis9M', '2017-05-21 14:37:43', '2017-05-21 14:37:43'),
(2, 'Brama Diwangkara', NULL, 'ndutank46@gmail.com', '$2y$10$CbXczXMu9aM/nqFitz3p2evsRjY3hfnKLtU6RScJtF91g6TAmUyGe', 'jaSGkAGj4UVDIQPDlFlW4xoHeQ7iLALu17u3xVvmevmOY8lZ9sRynyBApHY4', '2017-05-21 14:37:43', '2017-05-21 14:37:43'),
(3, 'Iqbal Mabruri', NULL, 'iqbalmabruri@gmail.com', '$2y$10$q9uOV25reNlbG9cfmTvF8.E4TTA7FkYPinxX.Vxl165dPx9hWRKMO', 'SWrMxmcl6bMudOO5RIy0XGZvya0t0lsDlnBUux30d3KkjTtF8rlwgJu6WGRJ', '2017-05-21 14:37:43', '2017-05-21 14:37:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_user_id_index` (`user_id`),
  ADD KEY `activities_subject_id_index` (`subject_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorites_user_id_favorited_id_favorited_type_unique` (`user_id`,`favorited_id`,`favorited_type`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thread_subscriptions`
--
ALTER TABLE `thread_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thread_subscriptions_user_id_thread_id_unique` (`user_id`,`thread_id`),
  ADD KEY `thread_subscriptions_thread_id_foreign` (`thread_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `thread_subscriptions`
--
ALTER TABLE `thread_subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `thread_subscriptions`
--
ALTER TABLE `thread_subscriptions`
  ADD CONSTRAINT `thread_subscriptions_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
