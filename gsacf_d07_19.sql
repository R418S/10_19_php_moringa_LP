-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2021 年 1 朁E28 日 14:42
-- サーバのバージョン： 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gsacf_d07_19`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `contact_table`
--

CREATE TABLE `contact_table` (
  `id` int(12) NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `contact_table`
--

INSERT INTO `contact_table` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(3, '進藤理恵', 'shindo@ohga-ph.com', '【大賀薬局】木馬館OPEN!!', 'うｓ５６ｈｙｓ５ｒ６ｔ', '0000-00-00 00:00:00'),
(4, '進藤理恵', 'shindo@ohga-ph.com', '【大賀薬局】木馬館OPEN!!', 'うｓ５６ｈｙｓ５ｒ６ｔ', '0000-00-00 00:00:00'),
(5, 'たなか', 'ばｆｍヴぁｐｋｒ', 'あｆｂかｒｋｇ', 'あいうえお', '0000-00-00 00:00:00'),
(6, 'さよう', 'g@gmail.com', 'sbbjmo', 'あいうえお', '0000-00-00 00:00:00'),
(7, 'afbzafgbv', ' b dfb', 'aefrgae', 'abfaerg', '0000-00-00 00:00:00'),
(8, '進藤理恵', 'shindo@ohga-ph.com', 'こんにちは', 'sacasdweaws\r\n\r\nzwzatay', '0000-00-00 00:00:00'),
(9, 'sgvs', 'gawegf', 'aedga', 'dfbfdzb', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `hobby_table`
--

CREATE TABLE `hobby_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hobby` char(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `hobby_table`
--

INSERT INTO `hobby_table` (`id`, `name`, `sex`, `hobby`) VALUES
(24, '阿部　絵里', '女', '旅行'),
(25, '進藤 理恵', '男', '音楽'),
(26, '田中', '男', '読書'),
(27, '田中', '男', '読書'),
(28, '佐藤', '男', '仕事'),
(29, '佐藤', '男', '音楽'),
(30, '佐藤', '男', '音楽'),
(31, '', '女', '旅行'),
(32, 'シンドウリエ', '女', '旅行'),
(33, '近藤', '男', '映画'),
(34, 'タナベ', '男', '仕事'),
(35, 'タナベ', '男', '仕事'),
(36, 'タナベ', '男', '仕事'),
(37, 'シンドウリエ', '男', '旅行'),
(38, '栄えｒが絵ｒｇ', '女', '音楽'),
(39, '高橋', '男', '旅行'),
(40, '田中', '女', '音楽'),
(41, '進藤理恵', '男', '音楽'),
(42, '進藤 理恵', '女', '読書');

-- --------------------------------------------------------

--
-- テーブルの構造 `iine_table`
--

CREATE TABLE `iine_table` (
  `id` int(12) DEFAULT NULL,
  `user_id` int(12) NOT NULL,
  `kanso_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `kanso_table`
--

CREATE TABLE `kanso_table` (
  `id` int(12) NOT NULL,
  `user` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `like_table`
--

CREATE TABLE `like_table` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `todo_id` int(12) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `like_table`
--

INSERT INTO `like_table` (`id`, `user_id`, `todo_id`, `created_at`) VALUES
(6, 1, 9, '2021-01-16 17:17:44'),
(8, 1, 15, '2021-01-16 17:17:45'),
(9, 1, 17, '2021-01-16 17:17:46'),
(12, 1, 7, '2021-01-16 17:26:54'),
(13, 1, 8, '2021-01-16 17:26:55'),
(15, 1, 13, '2021-01-16 17:26:58'),
(16, 1, 16, '2021-01-16 17:27:00'),
(23, 1, 12, '2021-01-16 19:58:32'),
(24, 1, 11, '2021-01-16 19:58:33'),
(27, 1, 6, '2021-01-27 16:45:45');

-- --------------------------------------------------------

--
-- テーブルの構造 `manage_table`
--

CREATE TABLE `manage_table` (
  `id` int(12) NOT NULL,
  `manager` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `score_table`
--

CREATE TABLE `score_table` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `weather` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_score` int(10) NOT NULL,
  `in_score` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `score_table`
--

INSERT INTO `score_table` (`id`, `date`, `weather`, `place`, `name_1`, `name_2`, `name_3`, `out_score`, `in_score`, `total`, `updated_at`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`) VALUES
(3, '2021-01-20', '大雨', '伊都ゴルフ', '進藤', '田中', '大山', 50, 60, 110, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00'),
(5, '0000-00-00', 'みぞれ', '小郡カントリークラブ', '佐々木', '汐待', '児島', 60, 50, 110, '2021-01-06 22:38:17', '', '', 0, 0, '0000-00-00 00:00:00'),
(7, '2021-01-14', '曇り', '大博多', '進藤理恵', '進藤理恵', '進藤理恵', 30, 70, 100, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00'),
(8, '0000-00-00', '曇り', '大博多', '進藤理恵', '進藤理恵', '進藤理恵', 20, 79, 99, '2021-01-06 22:37:59', '', '', 0, 0, '0000-00-00 00:00:00'),
(9, '2021-01-27', '曇り', '麻生飯塚', '田中', '那珂川', '山田', 30, 50, 80, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00'),
(10, '2020-11-11', '大雨', 'レイクサイド', '田端', 'タナベ', '山田', 45, 60, 105, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(6, '①ゴルフ', '2020-12-29', '2020-12-19 16:01:24', '2020-12-19 16:01:24'),
(7, 'Makuake終了', '2021-01-11', '2020-12-19 16:03:18', '2020-12-19 16:03:18'),
(8, 'kosgub', '2020-12-06', '2020-12-19 16:47:47', '2020-12-19 16:47:47'),
(11, 'ｚれほｓｓ', '2020-12-16', '2020-12-23 19:44:48', '2020-12-23 19:44:48'),
(12, 'kokumin', '2020-12-22', '2020-12-26 15:09:10', '2020-12-26 17:35:23'),
(13, 'kosgub', '2020-12-02', '2020-12-26 15:09:16', '2020-12-26 15:09:16'),
(14, 'kaub', '2020-02-26', '2020-12-26 15:09:33', '2020-12-26 15:09:33'),
(15, 'aiueo', '2020-12-08', '2020-12-26 17:03:20', '2020-12-26 17:03:20'),
(16, 'zxvzxdvf', '2020-12-08', '2020-12-26 17:10:49', '2020-12-26 17:10:49'),
(17, 'geragta', '2020-12-31', '2020-12-26 17:13:19', '2020-12-26 17:13:19'),
(18, 'geragta', '2020-12-02', '2020-12-26 17:26:20', '2020-12-26 17:26:20'),
(19, 'sasisu', '2020-12-27', '2020-12-26 17:35:40', '2020-12-26 17:35:56'),
(20, 'geragta', '2020-12-29', '2021-01-01 14:28:49', '2021-01-01 14:28:49'),
(21, 'kosgub', '2021-01-20', '2021-01-01 15:59:19', '2021-01-01 15:59:19'),
(22, 'kosgub', '2020-12-29', '2021-01-03 19:26:50', '2021-01-03 19:26:50'),
(23, '提出物', '2021-01-28', '2021-01-27 16:46:17', '2021-01-27 16:46:17');

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'shindo', '0418', 0, 0, '2021-01-09 16:32:47', '2021-01-09 16:32:47'),
(2, '', '', 0, 0, '2021-01-09 16:33:30', '2021-01-09 16:33:30'),
(3, '6', '6', 0, 0, '2021-01-16 15:31:55', '2021-01-16 15:31:55'),
(4, 'i', 'i', 0, 0, '2021-01-16 15:55:16', '2021-01-16 15:55:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_table`
--
ALTER TABLE `contact_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hobby_table`
--
ALTER TABLE `hobby_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kanso_table`
--
ALTER TABLE `kanso_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_table`
--
ALTER TABLE `like_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_table`
--
ALTER TABLE `manage_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score_table`
--
ALTER TABLE `score_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_table`
--
ALTER TABLE `contact_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hobby_table`
--
ALTER TABLE `hobby_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `kanso_table`
--
ALTER TABLE `kanso_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `like_table`
--
ALTER TABLE `like_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `manage_table`
--
ALTER TABLE `manage_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `score_table`
--
ALTER TABLE `score_table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
