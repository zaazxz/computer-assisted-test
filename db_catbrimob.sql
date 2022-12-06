-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2022 pada 09.02
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_catbrimob`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `total_question` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `exams`
--

INSERT INTO `exams` (`id`, `name`, `time`, `total_question`, `status`, `start`, `end`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Percobaan 1', 15, 100, 'Ready', '2022-11-29 11:20:00', '2022-12-03 11:20:00', '1', '2022-11-29 04:21:49', '2022-12-01 04:37:52'),
(2, 'Percobaan 2', 10, 10, 'Ready', '2022-12-02 14:56:00', '2022-12-03 14:56:00', '1', '2022-12-02 07:57:02', '2022-12-02 07:57:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam_question`
--

CREATE TABLE `exam_question` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `exam_question`
--

INSERT INTO `exam_question` (`id`, `exam_id`, `question_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(2, 1, 2, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(3, 1, 3, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(4, 1, 4, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(5, 1, 5, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(6, 1, 6, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(7, 1, 7, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(8, 1, 8, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(9, 1, 9, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(10, 1, 10, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(11, 1, 11, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(12, 1, 12, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(13, 1, 13, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(14, 1, 14, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(15, 1, 15, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(16, 1, 16, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(17, 1, 17, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(18, 1, 18, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(19, 1, 19, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(20, 1, 20, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(21, 1, 21, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(22, 1, 22, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(23, 1, 23, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(24, 1, 24, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(25, 1, 25, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(26, 1, 26, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(27, 1, 27, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(28, 1, 28, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(29, 1, 29, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(30, 1, 30, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(31, 1, 31, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(32, 1, 32, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(33, 1, 33, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(34, 1, 34, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(35, 1, 35, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(36, 1, 36, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(37, 1, 37, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(38, 1, 38, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(39, 1, 39, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(40, 1, 40, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(41, 1, 41, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(42, 1, 42, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(43, 1, 43, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(44, 1, 44, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(45, 1, 45, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(46, 1, 46, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(47, 1, 47, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(48, 1, 48, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(49, 1, 49, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(50, 1, 50, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(51, 1, 51, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(52, 1, 52, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(53, 1, 53, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(54, 1, 54, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(55, 1, 55, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(56, 1, 56, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(57, 1, 57, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(58, 1, 58, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(59, 1, 59, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(60, 1, 60, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(61, 1, 61, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(62, 1, 62, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(63, 1, 63, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(64, 1, 64, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(65, 1, 65, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(66, 1, 66, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(67, 1, 67, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(68, 1, 68, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(69, 1, 69, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(70, 1, 70, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(71, 1, 71, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(72, 1, 72, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(73, 1, 73, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(74, 1, 74, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(75, 1, 75, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(76, 1, 76, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(77, 1, 77, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(78, 1, 78, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(79, 1, 79, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(80, 1, 80, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(81, 1, 81, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(82, 1, 82, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(83, 1, 83, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(84, 1, 84, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(85, 1, 85, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(86, 1, 86, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(87, 1, 87, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(88, 1, 88, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(89, 1, 89, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(90, 1, 90, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(91, 1, 91, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(92, 1, 92, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(93, 1, 93, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(94, 1, 94, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(95, 1, 95, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(96, 1, 96, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(97, 1, 97, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(98, 1, 98, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(99, 1, 99, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(100, 1, 100, '2022-11-29 04:21:49', '2022-11-29 04:21:49'),
(101, 2, 1, '2022-12-02 07:57:02', '2022-12-02 07:57:02'),
(102, 2, 2, '2022-12-02 07:57:02', '2022-12-02 07:57:02'),
(103, 2, 3, '2022-12-02 07:57:02', '2022-12-02 07:57:02'),
(104, 2, 4, '2022-12-02 07:57:02', '2022-12-02 07:57:02'),
(105, 2, 5, '2022-12-02 07:57:02', '2022-12-02 07:57:02'),
(106, 2, 6, '2022-12-02 07:57:02', '2022-12-02 07:57:02'),
(107, 2, 7, '2022-12-02 07:57:02', '2022-12-02 07:57:02'),
(108, 2, 8, '2022-12-02 07:57:02', '2022-12-02 07:57:02'),
(109, 2, 9, '2022-12-02 07:57:02', '2022-12-02 07:57:02'),
(110, 2, 10, '2022-12-02 07:57:02', '2022-12-02 07:57:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam_user`
--

CREATE TABLE `exam_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `history_answer` longtext NOT NULL,
  `score` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `exam_user`
--

INSERT INTO `exam_user` (`id`, `exam_id`, `user_id`, `history_answer`, `score`, `created_at`, `updated_at`) VALUES
(3, 2, 1, '{\"1\":\"1-ya\",\"2\":\"2-ya\",\"3\":\"3-ya\",\"4\":\"4-ya\",\"5\":\"5-ya\",\"6\":\"6-ya\",\"7\":\"7-ya\",\"8\":\"8-ya\",\"9\":\"9-ya\",\"10\":\"10-ya\"}', 100, '2022-12-02 07:57:50', '2022-12-02 07:57:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_24_095022_create_permission_tables', 1),
(5, '2021_04_24_105557_create_exams_table', 1),
(6, '2021_04_24_105611_create_questions_table', 1),
(7, '2021_04_24_105627_create_subjects_table', 1),
(8, '2021_04_24_165632_create_photos_table', 1),
(9, '2021_04_27_223454_create_images_table', 1),
(10, '2021_04_27_224752_create_exam_user_table', 1),
(11, '2021_04_27_225109_create_exam_question_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'exams.index', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(2, 'exams.create', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(3, 'exams.edit', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(4, 'exams.delete', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(5, 'subjects.index', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(6, 'subjects.create', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(7, 'subjects.edit', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(8, 'subjects.delete', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(9, 'questions.index', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(10, 'questions.create', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(11, 'questions.edit', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(12, 'questions.delete', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(13, 'images.index', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(14, 'images.create', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(15, 'images.delete', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(16, 'videos.index', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(17, 'videos.create', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(18, 'videos.edit', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(19, 'videos.delete', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(20, 'audios.index', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(21, 'audios.create', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(22, 'audios.edit', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(23, 'audios.delete', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(24, 'documents.index', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(25, 'documents.create', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(26, 'documents.edit', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(27, 'documents.delete', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(28, 'roles.index', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(29, 'roles.create', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(30, 'roles.edit', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(31, 'roles.delete', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(32, 'permissions.index', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(33, 'users.index', 'web', '2022-11-29 04:17:55', '2022-11-29 04:17:55'),
(34, 'users.create', 'web', '2022-11-29 04:17:55', '2022-11-29 04:17:55'),
(35, 'users.edit', 'web', '2022-11-29 04:17:55', '2022-11-29 04:17:55'),
(36, 'users.delete', 'web', '2022-11-29 04:17:55', '2022-11-29 04:17:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `detail` text NOT NULL,
  `image_id` varchar(255) DEFAULT NULL,
  `option_A` varchar(255) DEFAULT NULL,
  `option_B` varchar(255) DEFAULT NULL,
  `option_C` varchar(255) DEFAULT NULL,
  `option_D` varchar(255) DEFAULT NULL,
  `option_E` varchar(255) DEFAULT NULL,
  `answer` text NOT NULL,
  `explanation` text DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`id`, `detail`, `image_id`, `option_A`, `option_B`, `option_C`, `option_D`, `option_E`, `answer`, `explanation`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(2, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(3, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(4, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(5, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(6, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(7, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(8, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(9, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(10, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(11, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(12, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(13, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(14, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(15, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(16, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(17, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(18, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(19, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(20, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(21, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(22, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(23, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(24, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(25, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(26, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(27, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(28, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(29, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(30, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(31, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(32, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(33, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(34, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(35, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(36, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(37, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(38, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(39, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(40, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(41, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(42, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(43, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(44, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(45, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(46, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(47, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(48, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(49, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(50, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(51, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(52, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(53, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(54, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(55, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(56, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(57, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(58, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(59, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(60, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(61, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(62, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(63, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(64, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(65, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(66, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(67, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(68, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(69, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(70, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(71, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(72, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(73, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(74, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(75, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(76, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(77, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(78, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(79, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(80, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(81, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(82, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(83, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(84, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(85, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(86, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(87, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(88, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(89, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(90, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(91, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(92, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(93, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(94, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(95, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(96, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(97, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(98, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(99, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48'),
(100, 'ayam', NULL, 'ya', 'tidak', 'mungkin', 'jangan jangan', 'entah', 'ya', '.', '1', '2022-11-29 04:20:48', '2022-11-29 04:20:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54'),
(3, 'student', 'web', '2022-11-29 04:17:54', '2022-11-29 04:17:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$hKiJ0BinlAg3JH14GYkh8.3EimXgWHfqU.E5Mo4/HG4sJQdjwP/mG', NULL, '2022-11-29 04:17:55', '2022-11-29 04:17:55'),
(2, 'Rizky', 'rizky@gmail.com', NULL, '$2y$10$V6j..ob0xYSi7Q2crJho8uRVk6jU811hq//n3El5Hlj4cJLK4t5lG', NULL, '2022-12-01 06:05:08', '2022-12-01 06:05:08');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `exam_question`
--
ALTER TABLE `exam_question`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `exam_user`
--
ALTER TABLE `exam_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `exam_question`
--
ALTER TABLE `exam_question`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT untuk tabel `exam_user`
--
ALTER TABLE `exam_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
