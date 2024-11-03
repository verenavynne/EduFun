-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2024 at 11:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `post_date` date NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `article_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `category_id`, `writer_id`, `content`, `post_date`, `views`, `article_image`, `created_at`, `updated_at`) VALUES
(1, 'Machine Learning', 1, 1, 'Nesciunt hic voluptatem optio ratione est consectetur. Tempore deserunt tempora est sit aperiam. Quod voluptatum natus quaerat qui dignissimos excepturi eum.Voluptates qui aut qui aut ut animi. Fuga molestiae aliquid nihil corporis voluptatibus distinctio nostrum. Voluptatem sit debitis debitis molestias perferendis consequatur.Nam pariatur omnis nulla libero. Saepe soluta unde provident rerum qui numquam. Rerum velit et quidem.Deserunt facilis vel magni sed. Vel labore dolore quidem rerum laborum tenetur. Sunt asperiores tempore et vitae a cumque. Accusamus modi distinctio et porro inventore blanditiis.Porro et vero qui et qui quia illum. Quia quo culpa consequatur et est laudantium minima. Ipsum pariatur non qui unde nostrum id. Quia quas ut quaerat deleniti.Ex eius doloremque et iusto. Et autem reiciendis delectus similique. Qui velit qui ipsa qui qui dolor. Soluta eligendi quo ipsam modi deleniti non provident.', '2012-02-28', 23, 'https://via.placeholder.com/640x480.png/004422?text=technics+eaque', '2024-11-02 09:33:03', '2024-11-02 09:33:03'),
(2, 'Deep Learning', 1, 1, 'Assumenda asperiores qui et explicabo nam rem. Perferendis laborum fugiat perferendis qui aut vitae unde. Velit omnis sapiente rerum nemo itaque. Dignissimos laudantium repellendus autem. Et iure tempore veniam cupiditate et.Recusandae quidem qui et quibusdam. Nostrum nostrum debitis laborum a ut fugit et.Libero repudiandae dolores consectetur optio omnis natus minima rerum. Qui eius aut nemo aut. Error expedita quidem et qui id perspiciatis.Fuga totam est ipsa nulla qui tempora voluptatem. Doloremque nam est dolorum consequatur expedita amet repellat. Repellat et et temporibus eveniet sed ut reprehenderit ut.Ducimus dolores et doloribus. Cumque praesentium ut at praesentium velit qui quis. Quibusdam sed magni unde. Culpa vero dolor ex placeat qui beatae. A molestiae numquam voluptatibus aut.Possimus consequatur sequi occaecati dolor. Vel repellendus error nemo reprehenderit. Laborum vel qui enim. Delectus iusto qui natus vel ut aliquam soluta.', '1989-10-29', 18, 'https://via.placeholder.com/640x480.png/008844?text=technics+qui', '2024-11-02 09:33:03', '2024-11-02 09:33:03'),
(3, 'Natural Language Processing', 1, 1, 'Eos doloribus molestiae rerum voluptas distinctio sint pariatur. Ut delectus voluptatum doloribus inventore. Qui qui pariatur id veritatis consequatur blanditiis.Qui aspernatur doloremque iure velit quia qui. Laborum id sit fugiat eveniet quia molestias corporis. Eum alias explicabo eos ut ratione. Est quidem distinctio fugit nostrum quasi ex itaque.Ut eligendi ex deserunt veritatis officiis mollitia. Est beatae iste eveniet nesciunt cum. Labore tempore rerum voluptatem rerum.Voluptatem voluptatem quod et. Ducimus aut non at architecto.Quo magni recusandae qui et sint exercitationem. Deserunt dolore ullam consequuntur consequuntur. Dicta laborum minus corporis eos rerum. Neque excepturi architecto quas voluptatem magni est et.Est ut qui sint nihil sequi illo in. Enim omnis consectetur adipisci cum dolorem soluta omnis. Dicta suscipit est eligendi et.', '2001-09-27', 70, 'https://via.placeholder.com/640x480.png/00bb77?text=technics+sit', '2024-11-02 09:33:03', '2024-11-02 09:33:03'),
(4, 'Software Security', 2, 2, 'Veritatis distinctio consectetur ipsum voluptatem. Incidunt impedit alias doloribus nostrum ut. Provident at dolor commodi et. Iusto veniam doloremque praesentium qui.Quia sit qui harum quis autem illo. Fugit et vero possimus quo corrupti voluptas ratione. Eaque sint fugiat enim in architecto voluptatem eius ipsam. Atque recusandae hic ipsum dolorum ratione occaecati qui.Iure voluptatem autem voluptatem ipsam consequatur. Qui corrupti harum magni magni inventore magnam sed. Non repellat voluptate nesciunt quis.Ipsa quo rerum itaque illum. Et voluptates sed soluta perferendis amet nesciunt. Accusamus voluptatibus dolores similique repellat est dolor unde. Voluptas voluptas ut ratione quo.Quasi qui itaque ut esse totam quo. Ex ea iste harum velit accusantium. Ut sunt ut earum placeat odit natus cupiditate et. Consequatur cumque nemo eum optio eveniet et.Doloribus quia dignissimos officia. Animi quos laudantium occaecati rerum illo. Officia incidunt maiores molestiae quisquam ab. Iusto voluptas libero molestias labore et dolores odio.', '1987-06-15', 94, 'https://via.placeholder.com/640x480.png/00ff66?text=technics+eveniet', '2024-11-02 09:33:03', '2024-11-02 09:33:03'),
(5, 'Network Administration', 2, 2, 'Dolorem voluptatem minus similique velit. Laudantium omnis natus rerum minus asperiores sit. Nulla pariatur at sapiente facere vero ut.Ut eius quaerat ut et ab occaecati qui. Ullam dolorem et tempora minima. Sunt autem iure ex nihil. Eaque ullam cum unde minus.Aut in quam non sunt. Cum quae in reprehenderit. Rerum blanditiis cumque asperiores quia omnis accusamus. Aut repellendus sapiente non aut voluptate.Ad iure omnis porro. Aliquam et animi omnis dolorem ut corrupti voluptatibus. Molestiae ut velit impedit quod. Provident ipsam ex est quasi dolorem ut.Ea aliquid cumque voluptatum esse est eligendi aliquid. Placeat eius dolores veniam ab sed. Culpa rerum deserunt doloribus nostrum iusto sit. Cum esse fugiat explicabo perferendis earum enim.Rem ad occaecati dolores repudiandae inventore ut. Corporis et laborum perspiciatis minus deleniti. Consectetur nostrum et repellendus similique quia optio mollitia. Aut assumenda qui voluptas enim vel qui.', '2000-07-12', 36, 'https://via.placeholder.com/640x480.png/00aa11?text=technics+nesciunt', '2024-11-02 09:33:03', '2024-11-02 09:33:03'),
(6, 'Popular Network Technology', 2, 2, 'Laboriosam officia eos perferendis expedita facilis sed. Et qui quis consectetur iure praesentium. Modi necessitatibus est aperiam voluptas ut esse. Quis officiis fugiat et quis mollitia.Quis laboriosam non et qui totam cumque. Accusantium autem rerum eum ut non optio quas eos. Provident nesciunt nam est sit et error est. Qui asperiores ea dolores expedita.Doloremque sit cumque quaerat optio illo enim. Velit temporibus labore enim. Vero eum doloribus optio architecto. Doloremque sapiente animi eum sed eos dolorem.Et nulla sed magnam necessitatibus. Itaque cum qui similique accusantium nobis rerum sapiente. Provident reiciendis in dolores maxime. Mollitia et sint provident quia.Quaerat optio explicabo et labore sunt neque cupiditate. Illo fuga quo dolor eos adipisci repellendus. Quis architecto quo voluptas id.Inventore occaecati cum consequatur quia. Adipisci consequatur perspiciatis ipsam magni ipsa et. Ea ducimus aut aliquid eum omnis.', '1991-03-13', 90, 'https://via.placeholder.com/640x480.png/00bb88?text=technics+nesciunt', '2024-11-02 09:33:03', '2024-11-02 09:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Data Science', 'data-science', '2024-11-02 09:33:03', '2024-11-02 09:33:03'),
(2, 'Network Security', 'network-security', '2024-11-02 09:33:03', '2024-11-02 09:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '0001_01_01_000000_create_users_table', 1),
(8, '0001_01_01_000001_create_cache_table', 1),
(9, '0001_01_01_000002_create_jobs_table', 1),
(10, '2024_11_01_151618_create_category_table', 1),
(11, '2024_11_01_151809_create_writer_table', 1),
(12, '2024_11_01_152041_create_article_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Sk5MjChHJMsWSttUIlK7xRX2rp57y2D1HrYwyZw6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU2FPVkd0Q2JtWUR1enQ1NFhLS3cyOUF5OHpoQm1wbEMzVDJyUHhUaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91c2VyL2hvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730631412);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2024-11-02 09:33:02', '$2y$12$lB7p9cZU9YGdLStuMCbvmehAWxsZZHLkwSaHFsuoG91pO4WsQ99Xe', '5CW08RfDmK', '2024-11-02 09:33:03', '2024-11-02 09:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `writer`
--

CREATE TABLE `writer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `writer_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writer`
--

INSERT INTO `writer` (`id`, `name`, `bio`, `writer_image`, `created_at`, `updated_at`) VALUES
(1, 'Bia Mika Annisa', 'Spesialis Data Science', 'http://localhost:8000/assets/datascience_writer_image.png', '2024-11-02 09:33:03', '2024-11-02 09:50:35'),
(2, 'Abi Firmansyah', 'Spesialis Network Security', 'http://localhost:8000/assets/network_writer_image.png', '2024-11-02 09:33:03', '2024-11-02 09:50:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_category_id_foreign` (`category_id`),
  ADD KEY `article_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writer`
--
ALTER TABLE `writer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `writer`
--
ALTER TABLE `writer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writer` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
