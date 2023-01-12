-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 12 日 16:27
-- サーバのバージョン： 10.5.10-MariaDB
-- PHP のバージョン: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `c9`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_kind` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `books`
--

INSERT INTO `books` (`id`, `item_name`, `item_url`, `item_kind`, `finished`, `created_at`, `updated_at`, `user_id`) VALUES
(22, 'いないいないばぁ', 'https://www.amazon.co.jp/%E3%81%8A%E3%81%A7%E3%81%8B%E3%81%91%E7%89%88-%E3%81%84%E3%81%AA%E3%81%84%E3%81%84%E3%81%AA%E3%81%84%E3%81%B0%E3%81%81%E3%81%82%E3%81%9D%E3%81%B3-%E3%81%82%E3%81%8B%E3%81%A1%E3%82%83%E3%82%93%E3%81%AE%E3%81%82%E3%81%9D%E3%81%B3%E3%81%88%E3%81%BB%E3%82%93-%E3%81%8D%E3%82%80%E3%82%89-%E3%82%86%E3%81%86%E3%81%84%E3%81%A1/dp/4031241100/ref=asc_df_4031241100/?tag=jpgo-22&linkCode=df0&hvadid=295639570026&hvpos=&hvnetw=g&hvrand=2444764633428974735&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1009507&hvtargid=pla-524256389747&psc=1&th=1&psc=1', '絵本', '2023-01-03 00:00:00', '2023-01-12 15:40:10', '2023-01-12 15:43:36', 4),
(23, 'パンどろぼう', 'https://www.amazon.co.jp/%E3%83%91%E3%83%B3%E3%81%A9%E3%82%8D%E3%81%BC%E3%81%86-%E6%9F%B4%E7%94%B0-%E3%82%B1%E3%82%A4%E3%82%B3/dp/4041090601/ref=sr_1_1_sspa?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=3UQRL31GXJ2C6&keywords=%E3%83%91%E3%83%B3%E3%81%A9%E3%82%8D%E3%81%BC%E3%81%86&qid=1673538175&s=books&sprefix=%E3%83%91%E3%83%B3%E3%81%A9%E3%82%8D%E3%81%BC%E3%81%86%2Cstripbooks%2C200&sr=1-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzUVZKTk5WOFNRMVVZJmVuY3J5cHRlZElkPUEwNzA3MDczMUkzNTBYWU1aNjU5NCZlbmNyeXB0ZWRBZElkPUExOVBQNE02VUZIQzVDJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==', '絵本', '2023-01-01 00:00:00', '2023-01-12 15:43:13', '2023-01-12 15:43:13', 4),
(26, 'Laravel', 'https://www.amazon.co.jp/%E3%83%97%E3%83%AD%E3%83%95%E3%82%A7%E3%83%83%E3%82%B7%E3%83%A7%E3%83%8A%E3%83%ABWeb%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0-Laravel%E3%80%88%E6%9C%80%E6%96%B0Laravel-9%E5%AF%BE%E5%BF%9C%E3%80%89-%E4%B9%85%E4%BF%9D%E7%94%B0-%E8%B3%A2%E4%BA%8C%E6%9C%97/dp/4295202835/ref=sr_1_3?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=8A9IP0PYZD5Q&keywords=laravel&qid=1673539509&s=books&sprefix=laravel%2Cstripbooks%2C183&sr=1-3', 'プログラミング', '2023-02-08 00:00:00', '2023-01-12 16:05:46', '2023-01-12 16:05:46', 6);

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
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
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(20, '2023_01_02_125410_create_books_table', 1),
(21, '2023_01_05_124851_create_tags_table', 2),
(22, '2023_01_10_224710_add_column_to_users_table', 2),
(23, '2023_01_12_034341_drop_column_user_id_column', 3),
(24, '2023_01_12_152130_drop_column_books_column', 4);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(4, '1', '1@1', NULL, '$2y$10$OjtTwvvmihpEqwaRd/O8l.jWve8a7h.0EdKNB7CUHsaIMSZNl1qja', NULL, '2023-01-12 15:39:41', '2023-01-12 15:39:41', 1),
(6, '2', '2@2', NULL, '$2y$10$4OqimFOy.5k8F2HNFgYdXueu1Tg1DwzF6luyVjwnR3s6dz1aUaKn2', NULL, '2023-01-12 16:04:57', '2023-01-12 16:04:57', 1);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- テーブルのインデックス `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- テーブルのインデックス `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- テーブルの AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
