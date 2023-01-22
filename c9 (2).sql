-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 22 日 01:25
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
  `user_id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `books`
--

INSERT INTO `books` (`id`, `item_name`, `item_url`, `item_kind`, `finished`, `created_at`, `updated_at`, `user_id`, `image`) VALUES
(37, 'いないいないばあ', 'https://www.amazon.co.jp/%E3%81%8A%E3%81%A7%E3%81%8B%E3%81%91%E7%89%88-%E3%81%84%E3%81%AA%E3%81%84%E3%81%84%E3%81%AA%E3%81%84%E3%81%B0%E3%81%81%E3%81%82%E3%81%9D%E3%81%B3-%E3%81%82%E3%81%8B%E3%81%A1%E3%82%83%E3%82%93%E3%81%AE%E3%81%82%E3%81%9D%E3%81%B3%E3%81%88%E3%81%BB%E3%82%93-%E3%81%8D%E3%82%80%E3%82%89-%E3%82%86%E3%81%86%E3%81%84%E3%81%A1/dp/4031241100/ref=asc_df_4031241100/?tag=jpgo-22&linkCode=df0&hvadid=295639570026&hvpos=&hvnetw=g&hvrand=7905070200221584805&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1009507&hvtargid=pla-524256389747&psc=1&th=1&psc=1', '絵本', '2023-01-18 00:00:00', '2023-01-21 04:35:51', '2023-01-21 04:35:51', 4, '20230121_043551_inai.jpg'),
(38, 'Laravel 9 実践入門', 'https://www.amazon.co.jp/Laravel-9-%E5%AE%9F%E8%B7%B5%E5%85%A5%E9%96%80-%EF%BD%9E%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83%E3%83%BB%E5%AE%9F%E8%A3%85%E3%83%BB%E3%82%A2%E3%83%97%E3%83%AA%E5%85%AC%E9%96%8B%E3%81%BE%E3%81%A7%E3%81%AE%E6%B5%81%E3%82%8C%E3%82%92%E5%AE%8C%E5%85%A8%E7%B6%B2%E7%BE%85%EF%BD%9E-%E5%8D%83%E8%8D%89/dp/B09XZMDW8J/ref=sr_1_1?keywords=laravel9&qid=1674275777&s=books&sprefix=larave%2Cstripbooks%2C181&sr=1-1', 'プログラミング', '2022-12-05 00:00:00', '2023-01-21 04:37:12', '2023-01-21 04:37:12', 4, '20230121_043712_laravel.jpg'),
(39, 'FACTFULNESS', 'https://www.amazon.co.jp/FACTFULNESS-%E3%83%95%E3%82%A1%E3%82%AF%E3%83%88%E3%83%95%E3%83%AB%E3%83%8D%E3%82%B9-10%E3%81%AE%E6%80%9D%E3%81%84%E8%BE%BC%E3%81%BF%E3%82%92%E4%B9%97%E3%82%8A%E8%B6%8A%E3%81%88%E3%80%81%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E5%9F%BA%E3%81%AB%E4%B8%96%E7%95%8C%E3%82%92%E6%AD%A3%E3%81%97%E3%81%8F%E8%A6%8B%E3%82%8B%E7%BF%92%E6%85%A3/dp/B084ZDYBSW?ref_=Oct_Oct_d_otopr_d_492064_4&pd_rd_w=kz2xp&content-id=amzn1.sym.a279499f-cc8c-45e8-91ac-489e146acf66&pf_rd_p=a279499f-cc8c-45e8-91ac-489e146acf66&pf_rd_r=SJZ5DQ38PX0ZKSG9CPPF&pd_rd_wg=YKvv8&pd_rd_r=aeb1d3d8-4da2-419e-ba8a-ed0736b39683&pd_rd_i=B084ZDYBSW', 'ビジネス書', '2022-10-04 00:00:00', '2023-01-21 04:39:32', '2023-01-21 04:39:32', 4, '20230121_043932_factfulness.jpg'),
(40, 'インスタ運用法', 'https://www.amazon.co.jp/%E5%B9%B3%E5%9D%874-2%E3%82%AB%E6%9C%88%E3%81%A71%E4%B8%87%E3%83%95%E3%82%A9%E3%83%AD%E3%83%AF%E3%83%BC%E3%82%92%E5%AE%9F%E7%8F%BE%E3%81%99%E3%82%8B-%E3%83%97%E3%83%AD%E7%9B%AE%E7%B7%9A%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%82%BF%E9%81%8B%E7%94%A8%E6%B3%95%EF%BC%88Instagram%E3%83%9E%E3%83%BC%E3%82%B1%E3%83%86%E3%82%A3%E3%83%B3%E3%82%B0%EF%BC%89-%E7%9F%B3%E5%B7%9D%E4%BE%91%E8%BC%9D/dp/4295407127?ref_=Oct_Oct_d_otopr_d_492064_1&pd_rd_w=kz2xp&content-id=amzn1.sym.a279499f-cc8c-45e8-91ac-489e146acf66&pf_rd_p=a279499f-cc8c-45e8-91ac-489e146acf66&pf_rd_r=SJZ5DQ38PX0ZKSG9CPPF&pd_rd_wg=YKvv8&pd_rd_r=aeb1d3d8-4da2-419e-ba8a-ed0736b39683&pd_rd_i=4295407127', 'その他', '2023-01-05 00:00:00', '2023-01-21 04:40:56', '2023-01-21 04:40:56', 6, '20230121_044056_insta.jpg'),
(41, 'この世の喜びよ', 'https://www.amazon.co.jp/%E3%81%93%E3%81%AE%E4%B8%96%E3%81%AE%E5%96%9C%E3%81%B3%E3%82%88-%E4%BA%95%E6%88%B8%E5%B7%9D%E5%B0%84%E5%AD%90-ebook/dp/B0BKZ2X9LQ/ref=sr_1_1?adgrpid=142833507323&hvadid=633345360388&hvdev=c&hvqmt=e&hvtargid=kwd-1878053427580&hydadcr=27002_14603878&jp-ad-ap=0&keywords=%E3%81%93%E3%81%AE%E4%B8%96%E3%81%AE%E5%96%9C%E3%81%B3%E3%82%88&qid=1674276125&sr=8-1', '小説', '2023-02-09 00:00:00', '2023-01-21 04:42:40', '2023-01-21 04:42:40', 6, '20230121_044240_konoyo.jpg'),
(42, 'ぽぽんぴぽんぽん', 'https://www.amazon.co.jp/%E3%81%BD%E3%81%BD%E3%82%93%E3%81%B4-%E3%81%BD%E3%82%93%E3%81%BD%E3%82%93-0-1-2-%E3%81%88%E3%81%BB%E3%82%93-%E6%9D%BE%E7%AB%B9-%E3%81%84%E3%81%AD%E5%AD%90/dp/483402704X/ref=sr_1_1?crid=2GN64604UPCNO&keywords=%E3%81%BD%E3%81%BD%E3%82%93%E3%81%B4%E3%81%BD%E3%82%93%E3%81%BD%E3%82%93+%E7%B5%B5%E6%9C%AC&qid=1674276174&sprefix=%E3%81%BD%E3%81%BD%E3%82%93%E3%81%B4%E3%81%BD%E3%82%93%2Caps%2C370&sr=8-1', '絵本', '2022-06-28 00:00:00', '2023-01-21 04:43:35', '2023-01-21 04:43:35', 6, '20230121_044335_popo.jpg');

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
(24, '2023_01_12_152130_drop_column_books_column', 4),
(25, '2023_01_19_145117_add_images_to_books_table', 5);

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
(4, 'たろう', '1@1', NULL, '$2y$10$OjtTwvvmihpEqwaRd/O8l.jWve8a7h.0EdKNB7CUHsaIMSZNl1qja', NULL, '2023-01-12 15:39:41', '2023-01-12 15:39:41', 1),
(6, 'はなこ', '2@2', NULL, '$2y$10$4OqimFOy.5k8F2HNFgYdXueu1Tg1DwzF6luyVjwnR3s6dz1aUaKn2', NULL, '2023-01-12 16:04:57', '2023-01-12 16:04:57', 1);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
