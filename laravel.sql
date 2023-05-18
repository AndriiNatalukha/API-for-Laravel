-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 18 2023 г., 18:17
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `currency_rates`
--

CREATE TABLE `currency_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `currency_rates`
--

INSERT INTO `currency_rates` (`id`, `currency`, `amount`, `date`, `created_at`, `updated_at`) VALUES
(1, 'EUR', 0.22, '2023-05-19', '2023-05-17 13:24:18', '2023-05-17 13:24:18'),
(2, 'USD', 3.80, '2023-05-01', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(3, 'USD', 6.60, '2023-05-02', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(4, 'USD', 5.40, '2023-05-03', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(5, 'USD', 8.00, '2023-05-04', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(6, 'USD', 1.00, '2023-05-05', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(7, 'USD', 6.10, '2023-05-06', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(8, 'USD', 4.30, '2023-05-07', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(9, 'USD', 4.80, '2023-05-08', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(10, 'USD', 4.70, '2023-05-09', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(11, 'USD', 6.30, '2023-05-10', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(12, 'USD', 3.50, '2023-05-11', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(13, 'USD', 4.90, '2023-05-12', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(14, 'USD', 3.80, '2023-05-13', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(15, 'USD', 8.50, '2023-05-14', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(16, 'USD', 1.00, '2023-05-15', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(17, 'USD', 9.70, '2023-05-16', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(18, 'USD', 6.70, '2023-05-17', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(19, 'USD', 2.80, '2023-05-18', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(20, 'USD', 9.90, '2023-05-19', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(21, 'USD', 3.80, '2023-05-20', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(22, 'USD', 4.00, '2023-05-21', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(23, 'USD', 4.60, '2023-05-22', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(24, 'USD', 7.20, '2023-05-23', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(25, 'USD', 5.40, '2023-05-24', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(26, 'USD', 8.50, '2023-05-25', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(27, 'USD', 9.20, '2023-05-26', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(28, 'USD', 7.10, '2023-05-27', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(29, 'USD', 3.30, '2023-05-28', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(30, 'USD', 9.30, '2023-05-29', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(31, 'USD', 6.70, '2023-05-30', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(32, 'USD', 3.90, '2023-05-31', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(33, 'EUR', 3.70, '2023-05-01', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(34, 'EUR', 3.60, '2023-05-02', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(35, 'EUR', 5.30, '2023-05-03', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(36, 'EUR', 2.00, '2023-05-04', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(37, 'EUR', 2.90, '2023-05-05', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(38, 'EUR', 8.00, '2023-05-06', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(39, 'EUR', 4.60, '2023-05-07', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(40, 'EUR', 7.90, '2023-05-08', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(41, 'EUR', 1.50, '2023-05-09', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(42, 'EUR', 2.80, '2023-05-10', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(43, 'EUR', 7.10, '2023-05-11', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(44, 'EUR', 3.00, '2023-05-12', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(45, 'EUR', 1.40, '2023-05-13', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(46, 'EUR', 9.70, '2023-05-14', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(47, 'EUR', 3.50, '2023-05-15', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(48, 'EUR', 6.40, '2023-05-16', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(49, 'EUR', 3.70, '2023-05-17', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(50, 'EUR', 6.50, '2023-05-18', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(51, 'EUR', 9.00, '2023-05-19', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(52, 'EUR', 7.00, '2023-05-20', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(53, 'EUR', 4.50, '2023-05-21', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(54, 'EUR', 7.00, '2023-05-22', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(55, 'EUR', 6.30, '2023-05-23', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(56, 'EUR', 8.80, '2023-05-24', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(57, 'EUR', 7.20, '2023-05-25', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(58, 'EUR', 9.00, '2023-05-26', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(59, 'EUR', 1.40, '2023-05-27', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(60, 'EUR', 7.40, '2023-05-28', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(61, 'EUR', 5.00, '2023-05-29', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(62, 'EUR', 9.50, '2023-05-30', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(63, 'EUR', 5.10, '2023-05-31', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(64, 'GBP', 5.30, '2023-05-01', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(65, 'GBP', 6.50, '2023-05-02', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(66, 'GBP', 6.40, '2023-05-03', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(67, 'GBP', 6.30, '2023-05-04', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(68, 'GBP', 3.70, '2023-05-05', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(69, 'GBP', 2.80, '2023-05-06', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(70, 'GBP', 2.90, '2023-05-07', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(71, 'GBP', 2.60, '2023-05-08', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(72, 'GBP', 9.70, '2023-05-09', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(73, 'GBP', 3.80, '2023-05-10', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(74, 'GBP', 7.60, '2023-05-11', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(75, 'GBP', 6.90, '2023-05-12', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(76, 'GBP', 4.20, '2023-05-13', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(77, 'GBP', 2.00, '2023-05-14', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(78, 'GBP', 7.10, '2023-05-15', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(79, 'GBP', 8.00, '2023-05-16', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(80, 'GBP', 3.20, '2023-05-17', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(81, 'GBP', 7.70, '2023-05-18', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(82, 'GBP', 6.30, '2023-05-19', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(83, 'GBP', 4.20, '2023-05-20', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(84, 'GBP', 2.50, '2023-05-21', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(85, 'GBP', 6.20, '2023-05-22', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(86, 'GBP', 1.80, '2023-05-23', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(87, 'GBP', 8.20, '2023-05-24', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(88, 'GBP', 3.50, '2023-05-25', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(89, 'GBP', 1.30, '2023-05-26', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(90, 'GBP', 8.20, '2023-05-27', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(91, 'GBP', 1.10, '2023-05-28', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(92, 'GBP', 2.20, '2023-05-29', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(93, 'GBP', 8.10, '2023-05-30', '2023-05-17 16:27:20', '2023-05-17 16:27:20'),
(94, 'GBP', 8.00, '2023-05-31', '2023-05-17 16:27:20', '2023-05-17 16:27:20');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_07_072623_create_currency_rates_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(10) NOT NULL DEFAULT '1234567890',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'qwerty', 'qwerty@we.we', NULL, '$2y$10$XhlrsU/KLzeS.y2o2NiMXeI3CWeEhXsBG3vBZXwx1F5byq3zwmMd.', 'aBcDeFgHiJ', NULL, '2023-05-16 16:29:07', '2023-05-16 16:29:07');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `currency_rates`
--
ALTER TABLE `currency_rates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `currency_rates`
--
ALTER TABLE `currency_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
