-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 30, 2020 at 11:45 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atelier4_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Occaecati.', '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(4, 'Dolore.', '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(5, 'Repellat.', '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(6, 'Modi sint.', '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(7, 'Ut quis.', '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(8, 'Sunt.', '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(9, 'Aut est.', '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(10, 'Et est.', '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(12, 'Ordinateurs', '2020-10-27 18:52:54', '2020-10-27 18:52:54'),
(13, 'TELEPHONES', '2020-10-27 18:57:32', '2020-10-27 18:57:32'),
(15, 'LAPTOPS', '2020-10-27 19:35:17', '2020-10-27 19:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_26_081500_create_categories_table', 1),
(5, '2020_10_26_081504_create_products_table', 1),
(6, '2020_10_26_082006_create_user_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Neque ex.', 5, '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(3, 'Molestiae.', 5, '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(4, 'Rerum.', 4, '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(5, 'Et et qui.', 3, '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(6, 'Ut aut.', 3, '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(7, 'Quisquam.', 6, '2020-10-26 07:42:29', '2020-10-26 07:42:29'),
(10, 'Molestiae.', 9, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(11, 'Nihil qui.', 4, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(12, 'Saepe.', 5, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(15, 'Fugit.', 7, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(16, 'Ut quia.', 5, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(17, 'Quia.', 7, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(18, 'Vel unde.', 10, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(19, 'Laborum.', 6, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(20, 'Aut.', 6, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(21, 'Nesciunt.', 3, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(22, 'Repellat.', 10, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(23, 'Qui ut.', 4, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(24, 'Voluptas.', 6, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(25, 'Ut dolore.', 9, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(27, 'Hic.', 5, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(28, 'Omnis et.', 7, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(29, 'Debitis.', 10, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(31, 'Aliquam.', 7, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(32, 'Esse.', 8, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(34, 'Iste at.', 3, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(36, 'Quos.', 10, '2020-10-26 07:42:30', '2020-10-26 07:42:30'),
(37, 'Et unde.', 6, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(38, 'Possimus.', 8, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(41, 'Quis qui.', 6, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(42, 'Harum ex.', 7, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(44, 'Porro.', 9, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(48, 'Maxime.', 10, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(49, 'Harum.', 5, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(51, 'Sit.', 6, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(52, 'Sed.', 5, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(53, 'Hic at.', 8, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(54, 'Pariatur.', 7, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(55, 'Facilis.', 4, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(57, 'Corrupti.', 4, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(58, 'Omnis.', 8, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(59, 'Ut ipsa.', 3, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(60, 'Et ut aut.', 7, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(61, 'Numquam.', 6, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(63, 'Inventore.', 3, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(64, 'Ut odio.', 6, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(65, 'Vel.', 6, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(66, 'Quas non.', 8, '2020-10-26 07:42:31', '2020-10-26 07:42:31'),
(67, 'Esse.', 7, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(68, 'Non.', 10, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(69, 'Quod eius.', 7, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(70, 'Ex iusto.', 7, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(72, 'Explicabo.', 8, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(73, 'Officia.', 3, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(74, 'Est quod.', 7, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(75, 'Eum nihil.', 7, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(76, 'Et.', 4, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(78, 'Libero.', 9, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(79, 'Alias.', 9, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(80, 'Et.', 10, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(81, 'Quia.', 5, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(82, 'Quia.', 8, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(83, 'Assumenda.', 3, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(84, 'Aut ipsam.', 4, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(85, 'Nostrum.', 8, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(86, 'Et non et.', 5, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(87, 'Ducimus.', 4, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(88, 'Et.', 3, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(89, 'Ipsam ut.', 10, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(90, 'Id quidem.', 5, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(91, 'Natus ut.', 10, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(92, 'Beatae.', 7, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(93, 'Autem.', 3, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(94, 'Ad.', 4, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(95, 'Amet et.', 6, '2020-10-26 07:42:32', '2020-10-26 07:42:32'),
(96, 'Itaque.', 9, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(97, 'Nulla.', 5, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(98, 'Ducimus.', 9, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(99, 'Dolor qui.', 6, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(100, 'Ut enim.', 5, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(103, 'Eos sed.', 10, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(104, 'Saepe.', 4, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(105, 'Quia.', 10, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(106, 'Atque.', 6, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(107, 'Ad sed.', 10, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(108, 'Et non.', 6, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(109, 'Sed vel.', 4, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(110, 'Minima.', 10, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(111, 'Nam non.', 9, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(112, 'Illo.', 9, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(114, 'Numquam.', 10, '2020-10-26 07:42:33', '2020-10-26 07:42:33'),
(115, 'Iure.', 6, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(116, 'Nam.', 8, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(118, 'Veniam.', 3, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(119, 'Maiores.', 5, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(120, 'Expedita.', 4, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(121, 'Sequi.', 9, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(122, 'Quo.', 4, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(123, 'Atque.', 8, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(124, 'Itaque.', 3, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(125, 'Eaque.', 7, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(126, 'Quas sint.', 7, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(127, 'Dolor aut.', 7, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(128, 'Ut.', 9, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(130, 'Voluptas.', 3, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(131, 'Similique.', 7, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(132, 'Culpa.', 5, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(133, 'Molestias.', 6, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(134, 'Iste.', 3, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(135, 'Dolorum.', 4, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(136, 'Atque et.', 10, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(137, 'Ad.', 7, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(138, 'Excepturi.', 5, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(139, 'Dolores.', 3, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(140, 'Sunt ut.', 3, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(142, 'Veritatis.', 5, '2020-10-26 07:42:34', '2020-10-26 07:42:34'),
(143, 'Voluptas.', 5, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(144, 'Odit aut.', 4, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(145, 'Odit.', 3, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(147, 'Eos.', 10, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(148, 'Et ut nam.', 5, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(149, 'Dolorem.', 10, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(150, 'Placeat.', 10, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(151, 'Odio.', 8, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(152, 'Odio.', 9, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(153, 'Dolores.', 10, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(154, 'Quidem.', 8, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(155, 'Error.', 5, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(156, 'Aut esse.', 7, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(157, 'Magni quo.', 8, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(159, 'Hic.', 5, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(160, 'Aliquam.', 7, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(161, 'Itaque et.', 4, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(162, 'Inventore.', 5, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(163, 'Sunt.', 3, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(164, 'A ipsa.', 3, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(165, 'Dolorum.', 4, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(166, 'Magni.', 3, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(167, 'Nemo.', 9, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(168, 'Laborum.', 5, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(169, 'Est omnis.', 5, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(170, 'Nisi.', 6, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(171, 'Qui quis.', 4, '2020-10-26 07:42:35', '2020-10-26 07:42:35'),
(172, 'Suscipit.', 8, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(173, 'Qui error.', 4, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(174, 'Ipsam ea.', 7, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(175, 'Adipisci.', 10, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(176, 'In et.', 3, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(179, 'Sed.', 8, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(180, 'Et.', 10, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(182, 'Soluta.', 5, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(183, 'Placeat.', 6, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(184, 'Qui modi.', 9, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(186, 'Est nemo.', 8, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(187, 'Et velit.', 8, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(189, 'Tenetur.', 10, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(190, 'Vel vero.', 5, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(191, 'Nobis.', 6, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(192, 'Deserunt.', 10, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(193, 'Molestiae.', 9, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(194, 'Culpa.', 10, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(195, 'Quas.', 3, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(196, 'Sequi sit.', 3, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(197, 'Eum.', 9, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(198, 'Autem.', 4, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(199, 'Maiores.', 9, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(200, 'Ipsa.', 7, '2020-10-26 07:42:36', '2020-10-26 07:42:36'),
(201, 'Huawei', 13, '2020-10-27 21:07:40', '2020-10-27 21:07:40'),
(202, 'Herbert Morre', 13, '2020-10-30 08:59:29', '2020-10-30 08:59:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `service` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `service`) VALUES
(1, 'Dr. Ophelia McDermott MD', 'bode.dianna@example.com', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TNCKL6124YRv3xXv84KcqCHWSCt247ol08xYSkArQZLt96Ao1fqVhVJ6ozgO', '2020-10-26 07:42:28', '2020-10-26 07:42:28', 'In.'),
(2, 'Jerry Bartell', 'usauer@example.org', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i6vMycVqCN', '2020-10-26 07:42:28', '2020-10-26 07:42:28', 'Sed.'),
(3, 'Blaise Effertz', 'aliza98@example.net', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MlL2cC81Hg', '2020-10-26 07:42:28', '2020-10-26 07:42:28', 'Enim.'),
(4, 'Mr. Abdul Zemlak', 'skiles.emelie@example.net', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OeKjRFdcjQ', '2020-10-26 07:42:28', '2020-10-26 07:42:28', 'Nemo.'),
(5, 'Susanna Heaney', 'schuyler40@example.com', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F2aA6v60vA', '2020-10-26 07:42:28', '2020-10-26 07:42:28', 'Quam.'),
(6, 'Cathrine Fay Sr.', 'letitia.yost@example.com', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ls3DLzYDU2', '2020-10-26 07:42:28', '2020-10-26 07:42:28', 'Est.'),
(7, 'Walter Batz', 'clemens.powlowski@example.com', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rsSjRU3o5d', '2020-10-26 07:42:28', '2020-10-26 07:42:28', 'A.'),
(8, 'Omari Kshlerin', 'devonte.bartell@example.net', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AHBuYjsceq', '2020-10-26 07:42:28', '2020-10-26 07:42:28', 'Quos.'),
(9, 'Reed Connelly', 'senger.adam@example.com', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Urts2hfzbc2Jpfz9Vhp9Gjt9OhEpmE3WzMVBAnll3grVXEVeLHih7i83SYbm', '2020-10-26 07:42:29', '2020-10-26 07:42:29', 'Et.'),
(10, 'Dr. Leon Rosenbaum DDS', 'ybaumbach@example.org', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B0CDGZBhWC', '2020-10-26 07:42:29', '2020-10-26 07:42:29', 'Et.'),
(11, 'Prof. Dayne Champlin', 'price.scottie@example.com', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yUMnQ6enHF', '2020-10-26 07:42:29', '2020-10-26 07:42:29', 'Est.'),
(12, 'Ms. Loraine Klein', 'theodore.hartmann@example.com', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GIgb3jo5VN', '2020-10-26 07:42:29', '2020-10-26 07:42:29', 'A.'),
(13, 'Rubye Gutkowski V', 'hhartmann@example.com', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LY6pMxDLKp', '2020-10-26 07:42:29', '2020-10-26 07:42:29', 'Cum.'),
(14, 'Kailey Cruickshank', 'leone.jakubowski@example.org', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MBaW4mc081', '2020-10-26 07:42:29', '2020-10-26 07:42:29', 'Et.'),
(15, 'Imelda Cormier IV', 'dconroy@example.com', '2020-10-26 07:42:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BAcX9aUj2f4RJE0QipxiogxNHic6eauY0xdvMEMEvkIuB41L83lqJhaaLrjq', '2020-10-26 07:42:29', '2020-10-26 07:42:29', 'Ea.'),
(16, 'yassine', 'yassine@email.com', NULL, '$2y$10$PchpW8gCbHBTgHqjnMds5OewyfytZvdmkCeKRdjeYiruDClrrgHiq', NULL, '2020-10-27 17:56:45', '2020-10-27 17:56:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_products`
--

DROP TABLE IF EXISTS `user_products`;
CREATE TABLE IF NOT EXISTS `user_products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_products_user_id_foreign` (`user_id`),
  KEY `user_products_product_id_foreign` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_products`
--

INSERT INTO `user_products` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 9, 54, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(2, 7, 142, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(4, 9, 86, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(5, 7, 162, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(6, 2, 106, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(7, 7, 44, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(8, 15, 111, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(9, 4, 156, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(11, 1, 73, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(12, 15, 156, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(13, 12, 81, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(14, 3, 27, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(16, 12, 59, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(17, 4, 17, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(19, 4, 17, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(20, 9, 25, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(21, 10, 144, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(22, 9, 151, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(23, 5, 18, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(24, 3, 78, '2020-10-26 07:42:37', '2020-10-26 07:42:37'),
(26, 6, 84, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(28, 8, 109, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(29, 11, 15, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(30, 3, 11, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(31, 15, 145, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(32, 8, 5, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(33, 9, 59, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(34, 2, 55, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(35, 7, 80, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(36, 1, 147, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(37, 1, 139, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(38, 10, 82, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(40, 6, 3, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(41, 14, 111, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(42, 6, 95, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(44, 6, 189, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(45, 11, 88, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(46, 2, 61, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(47, 11, 128, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(48, 14, 79, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(49, 3, 144, '2020-10-26 07:42:38', '2020-10-26 07:42:38'),
(50, 7, 196, '2020-10-26 07:42:38', '2020-10-26 07:42:38');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_products`
--
ALTER TABLE `user_products`
  ADD CONSTRAINT `user_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
