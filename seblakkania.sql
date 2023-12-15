-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 06:53 PM
-- Server version: 10.4.27-MariaDB-log
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seblakkania`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
('9adb334c-886c-4386-a270-8d6fb590bf73', 'eum', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-8a1f-4e1c-bbfd-3fcd9d8dfd3f', 'fugiat', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-8b99-4e90-8105-0f0652528e9d', 'expedita', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-8d10-4ae3-bde5-52de10d10ec2', 'incidunt', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-8e93-4e50-abf1-366560da2f43', 'ut', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-9047-4a46-b13c-54e41f403bc7', 'repellat', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-91fe-456a-8d0c-8b9801088803', 'quisquam', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-93f3-4e91-81a8-3183ed432db5', 'magnam', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-95c1-4320-974e-b7f574708866', 'qui', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-9783-4b8a-8ca9-e81410fb394d', 'assumenda', '2023-12-15 10:48:11', '2023-12-15 10:48:11');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_30_153237_create_categories_table', 1),
(6, '2023_11_30_153707_create_products_table', 1),
(7, '2023_11_30_153900_create_transactions_table', 1),
(8, '2023_11_30_154400_create_transaction__details_table', 1),
(9, '2023_11_30_155109_create_orders_table', 1),
(10, '2023_11_30_155932_create_order__details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Dine-in','Take Away','Dine-in and Take Away','Delivery') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
('9adb334e-0c2a-43ec-a465-f9ed2995498a', 'Taurean Muller DDS', 'Dine-in', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-0e67-4c8e-b213-50c32999ffc9', 'Jeremy Reynolds', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-1095-46a3-a6d1-f290e5cd8eca', 'Golden Denesik', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-12a7-48cc-93dd-178619d4acad', 'Mack Rice', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-1492-47c1-891f-c9fe11c355ee', 'Mrs. Katheryn Thiel', 'Dine-in and Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-1693-4345-98ac-db0c0d6df527', 'Prof. Berta Fahey', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-189e-482a-b76c-97b90ab38582', 'Brenda Hahn', 'Dine-in and Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-1a91-4bbc-8030-13ac810f6a4f', 'Jasmin Stoltenberg', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-1c5c-4315-a1b8-42cb52c8db20', 'Coby Bednar', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-1e68-4b59-a823-878147a892f8', 'Heaven Corwin', 'Dine-in and Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-2056-4c4f-8781-6ebe5b4f8f7e', 'Felicita Hirthe', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-21f3-4bd8-aeb2-bba8490784ec', 'Deborah Stehr', 'Dine-in', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-23a0-44af-bc88-d36af9bb9d22', 'Mr. Percy Rodriguez', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-2552-44fd-a593-086900ebd0a9', 'Adella Beier Jr.', 'Dine-in', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-2728-4601-8405-7c010baaed62', 'Adrienne Wisoky', 'Dine-in', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-28e6-4a98-a19d-0d8d223ccc06', 'Malinda Bernhard', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-2acb-4213-9e5f-86a63d314d38', 'Rosalinda Koelpin', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-2ca7-4239-a961-bedfd418a299', 'Bertha Shields', 'Dine-in and Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-2e6d-42d0-b575-6d7ecbe3bd4d', 'Dr. Garett Considine Jr.', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-303c-40be-8afe-855ac9143f75', 'Francis Labadie', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-31e4-4ff8-93a1-0a6a9541faed', 'Miss Raphaelle Oberbrunner DVM', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-3394-4663-b624-55865d750619', 'Dr. Maynard Bradtke', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-3569-46e2-9273-d945ca8b17d5', 'Sarina Greenfelder', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-372f-4273-86c9-8b9db3ac9b9d', 'Rebeka Wilkinson', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-38fe-4a3e-a2ba-2a857e23c829', 'Claude Dickinson', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-3ac2-4146-b41a-8ad4f726ac53', 'Arianna Rempel Sr.', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-3cc9-44d0-9e4d-649851f6fe95', 'Harley Nitzsche DDS', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-3ef7-4739-836b-9a80ae0120f9', 'Forest Moen', 'Dine-in', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-4111-4847-b582-2c5648b493ac', 'Prof. Ferne Thompson DDS', 'Dine-in and Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-42d3-40e2-811a-b6b08dab1fef', 'Virginia Mills', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-44da-45ee-bc21-5bf10dd681a5', 'Elian Witting', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-470e-46b1-ad62-88a2fe784276', 'Conor Mills', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-494b-44e7-aaa0-4e6fedcb5870', 'Ignacio Waelchi DVM', 'Dine-in and Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-4b55-4923-a05c-7f2fca36194d', 'Braxton Osinski', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-4db6-4458-bd64-9920a44190bd', 'Dr. Kelli Gaylord MD', 'Dine-in', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-4fef-4d1d-b40a-de8923d8ec81', 'Prof. Aiden Mueller', 'Dine-in and Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-5224-4ffe-9723-3123f8a711aa', 'Miss Daisy Altenwerth', 'Dine-in and Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-545c-4ff8-8637-523a52325104', 'Freda Mills', 'Dine-in', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-5693-4cb2-ab8f-c16f2ca4d66c', 'Angelica Stamm', 'Dine-in and Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-58d4-45a2-b0b8-dd27bbda0ce9', 'Carleton Fahey', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-5b0d-4b5a-8067-552777edf506', 'Haylie Homenick', 'Dine-in', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-5d33-45f4-b160-530f29c49815', 'Dr. Zita Grimes DVM', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-5f59-4672-9d5c-9d0e81d3ea10', 'Prof. Garfield Stroman PhD', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-617f-4adf-a0cf-db58a0d7ceaf', 'Elvis Collins PhD', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-63a1-4c25-ae9b-b1923e4bc393', 'Bette Langosh', 'Dine-in', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-65d4-4af7-99dd-4bfa5e4c98eb', 'Reyna McLaughlin', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-67f8-4c5c-a437-ef166d8b6dd2', 'Ms. Emelia Schuppe', 'Dine-in and Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-6a14-430c-9b30-167d4acfe15a', 'Mathias Mante', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-6c34-47ea-a30e-5cc065deaae4', 'Mrs. Theresia Mann MD', 'Take Away', '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-6e74-4f30-a875-6130d270ea87', 'Ms. Natalia Willms', 'Delivery', '2023-12-15 10:48:12', '2023-12-15 10:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `order__details`
--

CREATE TABLE `order__details` (
  `id` char(36) NOT NULL,
  `order_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order__details`
--

INSERT INTO `order__details` (`id`, `order_id`, `product_id`, `amount`, `note`, `created_at`, `updated_at`) VALUES
('9adb334e-c42c-4805-b19d-a4b0b0775be9', '9adb334e-4db6-4458-bd64-9920a44190bd', '9adb334c-b477-4a44-9edd-6995c0af2312', 5, 'Qui placeat rem eos quo officia eum ea. Repudiandae quibusdam et velit impedit repellat dignissimos fugiat. Necessitatibus unde unde quis labore veniam maxime omnis.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-d19a-4562-84e6-cd351a5775f7', '9adb334e-4fef-4d1d-b40a-de8923d8ec81', '9adb334c-a727-4b45-9e79-77d8df0563bb', 5, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-d351-417c-bd43-db2db5cc1769', '9adb334e-617f-4adf-a0cf-db58a0d7ceaf', '9adb334c-a727-4b45-9e79-77d8df0563bb', 9, 'Nihil consequatur consequatur et recusandae fugiat. Accusamus aliquid at ab quia. Voluptas sunt quibusdam tempore earum sunt dolorem cupiditate.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-d509-4f60-a9ed-dc38ba9e4124', '9adb334e-2e6d-42d0-b575-6d7ecbe3bd4d', '9adb334c-a30c-42f3-83e0-0edb5a673167', 7, 'Est consequuntur et fugit possimus voluptatem nihil. Mollitia quo nobis odio explicabo rerum quasi. Excepturi accusamus sunt consectetur.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-d7aa-4f5e-a4c6-4a99eff4e973', '9adb334e-4db6-4458-bd64-9920a44190bd', '9adb334c-b477-4a44-9edd-6995c0af2312', 7, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-d9c2-4248-9532-f8efc729640e', '9adb334e-1492-47c1-891f-c9fe11c355ee', '9adb334c-addf-429e-9b18-9dd8ce06b91f', 3, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-dbca-451c-864f-df59d9c23879', '9adb334e-617f-4adf-a0cf-db58a0d7ceaf', '9adb334c-b011-44a6-9530-2200b94af5d4', 5, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-ddbc-4fad-93ba-d21e432e93ba', '9adb334e-189e-482a-b76c-97b90ab38582', '9adb334c-a30c-42f3-83e0-0edb5a673167', 8, 'Dolores fugit corporis ut aperiam laudantium. Assumenda ut recusandae eligendi optio excepturi. Est totam error natus consequatur placeat. Dolorem ipsam ipsum autem molestiae.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-dfab-4a0d-aadc-bd847a267ef4', '9adb334e-21f3-4bd8-aeb2-bba8490784ec', '9adb334c-b235-4156-9256-dad2084f5c09', 5, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-e188-414f-9212-481a554f0a43', '9adb334e-189e-482a-b76c-97b90ab38582', '9adb334c-a727-4b45-9e79-77d8df0563bb', 7, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-e38a-43e2-9b3b-ad26b71392ef', '9adb334e-38fe-4a3e-a2ba-2a857e23c829', '9adb334c-a941-4f0f-a10d-a763919c3a2b', 2, 'Repellendus in et quam voluptatum quaerat. Ipsum dolorem ea odio quos fugiat nisi ipsa corporis. Aut optio reiciendis molestias temporibus recusandae et sit.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-e572-4f6e-873a-087c9dac9c15', '9adb334e-189e-482a-b76c-97b90ab38582', '9adb334c-addf-429e-9b18-9dd8ce06b91f', 7, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-e75a-47f4-9c7d-c66a35bab511', '9adb334e-2056-4c4f-8781-6ebe5b4f8f7e', '9adb334c-addf-429e-9b18-9dd8ce06b91f', 5, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-e960-42fe-8ff2-6cb4f7e896ac', '9adb334e-6a14-430c-9b30-167d4acfe15a', '9adb334c-a30c-42f3-83e0-0edb5a673167', 6, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-eb45-4fc7-9501-eae43c560abd', '9adb334e-1c5c-4315-a1b8-42cb52c8db20', '9adb334c-b477-4a44-9edd-6995c0af2312', 6, 'Aliquam qui tempora doloribus ab sit aliquid. Praesentium est autem vero laborum. Beatae distinctio inventore sit atque.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-ed1c-4480-8aa9-284553f4c2dc', '9adb334e-2acb-4213-9e5f-86a63d314d38', '9adb334c-b235-4156-9256-dad2084f5c09', 9, 'Et eum repellendus quis perspiciatis sed. Delectus aut eveniet deserunt. Nisi dolorem dolores hic.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-eee5-4af2-888c-d21237ae7ece', '9adb334e-494b-44e7-aaa0-4e6fedcb5870', '9adb334c-b235-4156-9256-dad2084f5c09', 7, 'Laboriosam quaerat labore provident non repellendus. Velit quia aut molestiae nesciunt dolor numquam consequatur. Alias qui suscipit earum consequuntur et.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-f0c4-4e90-af9d-7ae9dba9444d', '9adb334e-42d3-40e2-811a-b6b08dab1fef', '9adb334c-a941-4f0f-a10d-a763919c3a2b', 1, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-f27d-4742-88a0-e7ce6c1c12ad', '9adb334e-545c-4ff8-8637-523a52325104', '9adb334c-ab72-46e1-aa96-57170bedd7db', 2, 'Alias nobis delectus nam eligendi exercitationem tempora quo. Consequuntur amet debitis quia officia non earum. Libero ipsum porro consectetur consequuntur sit tenetur ducimus sit. Labore molestias magnam doloremque modi quis.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-f457-477e-bafe-807bebb38ffc', '9adb334e-4111-4847-b582-2c5648b493ac', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', 1, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-f60c-4047-809d-253c736d7cc4', '9adb334e-2ca7-4239-a961-bedfd418a299', '9adb334c-b011-44a6-9530-2200b94af5d4', 8, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-f7cc-4311-9850-18251ef59b42', '9adb334e-0e67-4c8e-b213-50c32999ffc9', '9adb334c-b235-4156-9256-dad2084f5c09', 9, 'Velit soluta adipisci ipsam eum dolores sit. Itaque sapiente in corporis ut. Eum porro sit incidunt sunt harum.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-f980-4c52-a730-b7ae86421f66', '9adb334e-5b0d-4b5a-8067-552777edf506', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', 10, 'Commodi et ipsum sit possimus quisquam error. Id sequi nihil quasi quis. Accusantium placeat harum et ut debitis dolorem est. A est perspiciatis impedit vel et soluta neque.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-fb40-40f3-a09e-1253c85a238d', '9adb334e-5693-4cb2-ab8f-c16f2ca4d66c', '9adb334c-ab72-46e1-aa96-57170bedd7db', 3, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-fd07-4c4d-afc7-78e974cf71a9', '9adb334e-617f-4adf-a0cf-db58a0d7ceaf', '9adb334c-b477-4a44-9edd-6995c0af2312', 2, 'Quis et nostrum voluptatem quasi ea nemo ipsa. Cumque dignissimos perferendis quod id omnis ex. Perferendis facilis atque est iusto ad.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334e-fed0-4961-89fd-aeca67c9d75e', '9adb334e-1c5c-4315-a1b8-42cb52c8db20', '9adb334c-addf-429e-9b18-9dd8ce06b91f', 5, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-009e-4949-a6a8-cc34b8f20159', '9adb334e-372f-4273-86c9-8b9db3ac9b9d', '9adb334c-a941-4f0f-a10d-a763919c3a2b', 1, 'Qui omnis consectetur eos fuga dicta et. Quia culpa vero officia aperiam consequatur. Earum ut magnam est sit. Ut non aperiam eius consequuntur necessitatibus labore necessitatibus.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-0269-4004-a934-8412fc042d12', '9adb334e-617f-4adf-a0cf-db58a0d7ceaf', '9adb334c-a941-4f0f-a10d-a763919c3a2b', 7, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-0436-42d7-8390-ebd400890183', '9adb334e-21f3-4bd8-aeb2-bba8490784ec', '9adb334c-ab72-46e1-aa96-57170bedd7db', 4, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-0601-41c3-ba5f-ff98a6f5bebd', '9adb334e-2acb-4213-9e5f-86a63d314d38', '9adb334c-b235-4156-9256-dad2084f5c09', 5, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-07ea-429a-b0e9-f847119747b0', '9adb334e-372f-4273-86c9-8b9db3ac9b9d', '9adb334c-ab72-46e1-aa96-57170bedd7db', 6, 'Et voluptatem ea non fugiat praesentium quidem. Aut repudiandae eum occaecati illo dicta eligendi. Est eveniet atque dignissimos et iure expedita numquam quasi. Et molestiae quis hic voluptatibus.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-09d7-4d05-88da-c2d01c859a31', '9adb334e-42d3-40e2-811a-b6b08dab1fef', '9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', 9, 'Voluptatem facilis eos sed fuga. Dolor non ut dolores voluptatem.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-0ba0-4e1e-bd64-4d9e357dbaf5', '9adb334e-545c-4ff8-8637-523a52325104', '9adb334c-b011-44a6-9530-2200b94af5d4', 1, 'Omnis qui voluptas libero sed non accusantium dolor. Nihil magni debitis et. Mollitia voluptates assumenda ad voluptatem excepturi. Aut nihil sed reprehenderit qui rerum aliquam.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-0d7c-4064-9f2d-0f91e0b3c4d4', '9adb334e-12a7-48cc-93dd-178619d4acad', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', 7, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-0f71-4f4c-bf6b-5642637db939', '9adb334e-1c5c-4315-a1b8-42cb52c8db20', '9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', 6, 'Omnis libero totam necessitatibus cumque rerum ea corporis. Dolore est quo ut consequatur fuga doloremque. Magnam qui aut ut facilis. Aliquid placeat cum voluptatem in ab est.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-1154-48d1-a361-a885a0cf07c7', '9adb334e-3ac2-4146-b41a-8ad4f726ac53', '9adb334c-addf-429e-9b18-9dd8ce06b91f', 7, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-133b-4bb6-ad3f-53eb7a4fa974', '9adb334e-6e74-4f30-a875-6130d270ea87', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', 9, 'Autem delectus sed sunt quo sunt minima architecto. Rem recusandae ratione quo et nobis error. Nesciunt veritatis quis doloremque debitis eligendi. Aspernatur error et numquam omnis totam.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-14f9-4719-86ff-1717ccef9962', '9adb334e-303c-40be-8afe-855ac9143f75', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', 2, 'Porro mollitia architecto rem quo repellendus. Temporibus dolor hic saepe quia eligendi tempore. Qui debitis iure quasi qui nihil qui omnis modi.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-16d7-41db-b298-105a10f783b1', '9adb334e-12a7-48cc-93dd-178619d4acad', '9adb334c-a30c-42f3-83e0-0edb5a673167', 2, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-18b6-4348-afef-38c53c88427c', '9adb334e-44da-45ee-bc21-5bf10dd681a5', '9adb334c-ab72-46e1-aa96-57170bedd7db', 4, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-1a5b-4825-8fa6-8aaeaf316034', '9adb334e-4db6-4458-bd64-9920a44190bd', '9adb334c-b235-4156-9256-dad2084f5c09', 7, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-1c18-4085-87b0-612b3c87f3c3', '9adb334e-42d3-40e2-811a-b6b08dab1fef', '9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', 10, 'Porro officia et nostrum enim omnis tempora. Distinctio est cupiditate libero et et adipisci ea. Iusto consectetur perspiciatis voluptatem dicta maiores magni quo quia. Quia voluptatem consectetur modi iste.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-1de3-4732-b2a6-3ab8743f84ea', '9adb334e-31e4-4ff8-93a1-0a6a9541faed', '9adb334c-ab72-46e1-aa96-57170bedd7db', 8, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-1fec-43bb-b0fd-1b1d52a9ebcd', '9adb334e-21f3-4bd8-aeb2-bba8490784ec', '9adb334c-a941-4f0f-a10d-a763919c3a2b', 8, 'Et cumque porro aut. Impedit quos omnis asperiores dolor sed. Enim consequatur aut accusamus. Quasi consequuntur dicta numquam sed dicta vel veniam.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-21f4-4827-b612-bf5fa6f0b1be', '9adb334e-1a91-4bbc-8030-13ac810f6a4f', '9adb334c-a30c-42f3-83e0-0edb5a673167', 1, 'Recusandae perspiciatis consequatur laboriosam numquam rerum provident deserunt. Minima dolorem dicta voluptatem exercitationem quibusdam neque ullam qui. Inventore et praesentium commodi. Accusamus sed doloremque ullam vel et possimus. Et et ut fuga officia culpa sit officiis.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-23fa-4199-b7e5-8cb350eeedcc', '9adb334e-67f8-4c5c-a437-ef166d8b6dd2', '9adb334c-b477-4a44-9edd-6995c0af2312', 7, 'Itaque ut ratione deserunt ex adipisci. Aliquid eligendi occaecati omnis omnis culpa modi. Reiciendis dolores exercitationem nemo id. Doloribus rerum odit incidunt nemo. Fuga voluptatem sapiente ea aut ducimus.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-2607-4b5e-a3bd-e9341763a11c', '9adb334e-470e-46b1-ad62-88a2fe784276', '9adb334c-b477-4a44-9edd-6995c0af2312', 4, 'Est asperiores tenetur soluta nesciunt fuga quo et quis. Minima nesciunt fugit accusamus. Pariatur animi doloremque magnam vitae nulla qui et. Nihil veritatis velit et et dolorem itaque.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-2817-4275-839e-16c997304cee', '9adb334e-63a1-4c25-ae9b-b1923e4bc393', '9adb334c-ab72-46e1-aa96-57170bedd7db', 7, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-2a2d-4129-bf17-ed11849531f7', '9adb334e-2e6d-42d0-b575-6d7ecbe3bd4d', '9adb334c-addf-429e-9b18-9dd8ce06b91f', 4, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-2c2b-4d3c-a964-84b5973a31f1', '9adb334e-44da-45ee-bc21-5bf10dd681a5', '9adb334c-a727-4b45-9e79-77d8df0563bb', 3, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-2e2d-4876-9b4d-8239b8b4bd11', '9adb334e-2acb-4213-9e5f-86a63d314d38', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', 5, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-3041-478d-8bfb-41f2c9ff43e2', '9adb334e-67f8-4c5c-a437-ef166d8b6dd2', '9adb334c-a727-4b45-9e79-77d8df0563bb', 3, 'Eaque voluptatem id voluptatem sequi et. Autem dolor eos quis eos rerum corporis. Sit aliquid in ut officia at.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-323f-4c4c-bf64-aed2e0369eac', '9adb334e-44da-45ee-bc21-5bf10dd681a5', '9adb334c-b477-4a44-9edd-6995c0af2312', 1, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-345d-40f1-9cc6-379c1147409f', '9adb334e-189e-482a-b76c-97b90ab38582', '9adb334c-a727-4b45-9e79-77d8df0563bb', 2, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-3683-46b4-9757-60cc8b5f9522', '9adb334e-2acb-4213-9e5f-86a63d314d38', '9adb334c-b477-4a44-9edd-6995c0af2312', 9, 'Quae quod iste mollitia et voluptate. Illo quo voluptatem et accusamus iure sit veritatis. Recusandae alias cupiditate sunt exercitationem deleniti. Voluptas rerum officiis ducimus.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-38a8-462a-b9a8-09e1588a8bd5', '9adb334e-12a7-48cc-93dd-178619d4acad', '9adb334c-b235-4156-9256-dad2084f5c09', 8, 'Ad voluptatem omnis voluptates iure ducimus officia. Culpa inventore odio cum exercitationem. Autem similique aperiam ipsam voluptatem dolorum. Quia quos deserunt vel ut reprehenderit voluptas.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-3ac8-447d-b358-2c7bef8e90ae', '9adb334e-2acb-4213-9e5f-86a63d314d38', '9adb334c-ab72-46e1-aa96-57170bedd7db', 7, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-3cf7-4781-89cd-fcfdd54f1706', '9adb334e-372f-4273-86c9-8b9db3ac9b9d', '9adb334c-a727-4b45-9e79-77d8df0563bb', 9, 'Quaerat omnis aut rem similique neque. Ut quidem quia repudiandae illo eligendi id ea neque. Quisquam ad doloribus quis quia quasi deleniti.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-3f2b-4237-90b9-c774002090e9', '9adb334e-617f-4adf-a0cf-db58a0d7ceaf', '9adb334c-a30c-42f3-83e0-0edb5a673167', 8, 'Fuga quos commodi adipisci accusantium quia ut. Harum qui non provident mollitia perspiciatis quas sit. Nihil autem dolor dolor sint doloribus voluptates enim voluptatum. Excepturi quidem dolorem id commodi dignissimos.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-4162-4556-858a-22f123e5c9e3', '9adb334e-0e67-4c8e-b213-50c32999ffc9', '9adb334c-ab72-46e1-aa96-57170bedd7db', 4, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-438d-41c2-b170-c0186ad3efe9', '9adb334e-5f59-4672-9d5c-9d0e81d3ea10', '9adb334c-a727-4b45-9e79-77d8df0563bb', 9, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-45c5-4c19-8aad-abbd90f7b6d5', '9adb334e-470e-46b1-ad62-88a2fe784276', '9adb334c-b235-4156-9256-dad2084f5c09', 5, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-47ef-490e-904e-9e2d1ef0c3fb', '9adb334e-42d3-40e2-811a-b6b08dab1fef', '9adb334c-ab72-46e1-aa96-57170bedd7db', 1, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-4a29-4ac5-8e9a-456e9b475afe', '9adb334e-5224-4ffe-9723-3123f8a711aa', '9adb334c-a941-4f0f-a10d-a763919c3a2b', 3, 'Rem voluptatem consequuntur nam ea. Deserunt enim consequatur ipsam laboriosam in quod natus. Qui a id accusantium dolorem laboriosam eum eos.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-4c5e-4e19-9495-35f68c4f6032', '9adb334e-58d4-45a2-b0b8-dd27bbda0ce9', '9adb334c-a727-4b45-9e79-77d8df0563bb', 8, 'Amet temporibus sed corrupti qui debitis error voluptate. Sit sunt id temporibus eaque. Quia voluptas autem voluptas incidunt voluptas facere.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-4e91-425c-8cb2-8f83ac8568cc', '9adb334e-6e74-4f30-a875-6130d270ea87', '9adb334c-b477-4a44-9edd-6995c0af2312', 5, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-50c6-4733-8790-15af61d9659b', '9adb334e-67f8-4c5c-a437-ef166d8b6dd2', '9adb334c-a727-4b45-9e79-77d8df0563bb', 9, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-5312-4f7d-a296-1f20f3375242', '9adb334e-5224-4ffe-9723-3123f8a711aa', '9adb334c-b235-4156-9256-dad2084f5c09', 4, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-555b-4357-aadf-bfa0f61fdd8b', '9adb334e-4b55-4923-a05c-7f2fca36194d', '9adb334c-b235-4156-9256-dad2084f5c09', 8, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-58e0-44de-99d4-51bf9ffce59f', '9adb334e-470e-46b1-ad62-88a2fe784276', '9adb334c-ab72-46e1-aa96-57170bedd7db', 9, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-5d07-4568-a572-502c5cd9d7c1', '9adb334e-5d33-45f4-b160-530f29c49815', '9adb334c-b477-4a44-9edd-6995c0af2312', 2, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-63f8-453f-8f04-f43d07b9f987', '9adb334e-6a14-430c-9b30-167d4acfe15a', '9adb334c-b477-4a44-9edd-6995c0af2312', 10, 'Doloremque quaerat dolor sunt fuga atque voluptas incidunt. Ullam ullam reiciendis repellendus rerum numquam aut delectus omnis. Voluptates quod autem illum et ullam consequuntur molestiae laboriosam.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-6637-4ddb-baf7-d505877e545f', '9adb334e-21f3-4bd8-aeb2-bba8490784ec', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', 9, 'Alias magnam ad blanditiis voluptas. Veritatis excepturi cum quia eaque minima sequi impedit. Doloribus est eos aut et. Quidem aut facilis aut impedit voluptas ad.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-6862-4a76-8908-979497283953', '9adb334e-0e67-4c8e-b213-50c32999ffc9', '9adb334c-a727-4b45-9e79-77d8df0563bb', 7, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-6a96-40b7-a203-cf206f80f1ad', '9adb334e-1095-46a3-a6d1-f290e5cd8eca', '9adb334c-b235-4156-9256-dad2084f5c09', 8, 'Sit sunt pariatur quia earum quas earum. Corrupti deleniti dicta aut consequatur qui ut deleniti. Distinctio quis quo odio esse vel amet.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-6cd6-4860-be96-34736946ff5f', '9adb334e-58d4-45a2-b0b8-dd27bbda0ce9', '9adb334c-ab72-46e1-aa96-57170bedd7db', 3, 'Et possimus eius rerum recusandae doloremque alias. Perspiciatis iusto doloremque adipisci dicta alias nulla. Velit enim illo corporis incidunt autem veritatis enim.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-6f00-4657-852c-cac123dd0062', '9adb334e-5224-4ffe-9723-3123f8a711aa', '9adb334c-addf-429e-9b18-9dd8ce06b91f', 1, 'Vero ut ut autem et. Dolorem tempora odit fugiat. Rerum tempora ipsum ratione qui. Dolores itaque iste voluptas accusantium. Est dolor quia labore vel ut voluptatem.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-7134-4e92-b0d3-4d65844a72ef', '9adb334e-31e4-4ff8-93a1-0a6a9541faed', '9adb334c-a941-4f0f-a10d-a763919c3a2b', 4, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-7370-4e00-9590-e539a226e375', '9adb334e-3569-46e2-9273-d945ca8b17d5', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', 7, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-75b0-4cb2-b4ba-da70c304f6cd', '9adb334e-2e6d-42d0-b575-6d7ecbe3bd4d', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', 9, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-7800-4013-9cfa-46be53b002b6', '9adb334e-0e67-4c8e-b213-50c32999ffc9', '9adb334c-b235-4156-9256-dad2084f5c09', 7, 'Dolor quidem sit officiis voluptatem qui sit quaerat. Sed quia non numquam rerum. Quibusdam ut ad architecto placeat perferendis qui ipsum. Nam ut rem distinctio cum.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-7a3c-48f8-ab82-9c3c8b71f398', '9adb334e-6c34-47ea-a30e-5cc065deaae4', '9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', 8, 'Ut aspernatur laudantium consequatur natus. Corrupti quisquam est ad. Voluptatem dignissimos hic deserunt adipisci ea blanditiis et. Voluptatem voluptas delectus natus tenetur sint distinctio velit.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-7c8e-407f-b6a9-dc323bfc9473', '9adb334e-2728-4601-8405-7c010baaed62', '9adb334c-b235-4156-9256-dad2084f5c09', 3, 'Architecto neque fugit ad voluptatum eos sint. Inventore dolorem sit saepe ad deserunt eos. Architecto non quos unde qui consequatur reiciendis id. Itaque expedita voluptatem et dolor maiores enim.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-7ebd-422d-ba5d-6cadc42c3ba2', '9adb334e-0e67-4c8e-b213-50c32999ffc9', '9adb334c-ab72-46e1-aa96-57170bedd7db', 4, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-80f6-4543-8fc5-9409bccf3d7c', '9adb334e-6e74-4f30-a875-6130d270ea87', '9adb334c-a941-4f0f-a10d-a763919c3a2b', 6, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-8310-49a2-9b67-27e61c704d49', '9adb334e-21f3-4bd8-aeb2-bba8490784ec', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', 4, 'Qui esse accusamus molestias pariatur quos quia quaerat. Earum dignissimos deleniti aliquam voluptas minus reprehenderit velit. Qui et maxime quo et.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-855e-4b8b-b7ed-1d8eaa62480d', '9adb334e-5b0d-4b5a-8067-552777edf506', '9adb334c-a941-4f0f-a10d-a763919c3a2b', 6, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-878b-41a4-aa45-21f554629bd8', '9adb334e-3ac2-4146-b41a-8ad4f726ac53', '9adb334c-b011-44a6-9530-2200b94af5d4', 8, 'Ab dolorum cum in aut ut doloribus omnis. Nihil rerum placeat inventore velit. Voluptate ab omnis nulla eos quisquam eum.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-8a0c-4f52-ad24-ba7e970fa67e', '9adb334e-3394-4663-b624-55865d750619', '9adb334c-a30c-42f3-83e0-0edb5a673167', 2, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-8c45-481a-b7cb-687e057f6c5d', '9adb334e-2acb-4213-9e5f-86a63d314d38', '9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', 10, 'Expedita tempora quia impedit amet atque rerum quis non. Cumque aperiam repudiandae dolor. Neque hic dolorum eius ipsa ipsa quia.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-8e62-489b-9a27-4db1d5e82d46', '9adb334e-12a7-48cc-93dd-178619d4acad', '9adb334c-b235-4156-9256-dad2084f5c09', 8, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-907b-4c9e-9b29-77f7b379e468', '9adb334e-303c-40be-8afe-855ac9143f75', '9adb334c-a941-4f0f-a10d-a763919c3a2b', 2, 'Illum quia cum cupiditate. Minus fugiat nisi qui cum repellendus magnam in placeat. Et in quas inventore quae. Vitae quod eos animi pariatur aut.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-9299-4313-8f60-b98c4eb83f2e', '9adb334e-372f-4273-86c9-8b9db3ac9b9d', '9adb334c-a941-4f0f-a10d-a763919c3a2b', 6, 'Qui unde est recusandae excepturi sunt dolorem voluptates. Eius ipsa aut sint non quos dolorem. Assumenda assumenda aut voluptas voluptas deserunt cumque commodi enim. Omnis est quia neque.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-94a2-4918-a874-9dbf8349f803', '9adb334e-23a0-44af-bc88-d36af9bb9d22', '9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', 10, 'Veritatis consequatur quibusdam vel voluptatibus aliquam tempore. Rerum illo est fugit architecto magnam. Et earum quisquam sapiente voluptatibus dolore culpa temporibus ad.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-96e5-4d90-87d6-c7f4b52290b6', '9adb334e-5224-4ffe-9723-3123f8a711aa', '9adb334c-b011-44a6-9530-2200b94af5d4', 2, 'Nulla aut soluta et iusto ipsam ea. Provident enim sequi dolorum inventore eius et. Omnis facilis est adipisci et.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-98f1-4320-8e2b-5959b76187c9', '9adb334e-28e6-4a98-a19d-0d8d223ccc06', '9adb334c-b235-4156-9256-dad2084f5c09', 3, 'Incidunt repellendus quas soluta beatae. Et delectus recusandae dolores laboriosam est. Expedita nam optio eius vitae. Eaque delectus quis architecto quidem.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-9b5f-4517-b95d-be46dce23aa0', '9adb334e-65d4-4af7-99dd-4bfa5e4c98eb', '9adb334c-b235-4156-9256-dad2084f5c09', 3, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-9da1-4416-9bf6-7c57733ee04b', '9adb334e-2056-4c4f-8781-6ebe5b4f8f7e', '9adb334c-b477-4a44-9edd-6995c0af2312', 5, '-', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-9fe4-47ce-8cd7-8cbe6dcef0d0', '9adb334e-2056-4c4f-8781-6ebe5b4f8f7e', '9adb334c-a30c-42f3-83e0-0edb5a673167', 7, 'Aut eum minus autem sit. Laudantium illum magni id maxime qui tempora neque consequatur. Dolorem autem id sit ullam quas. Repellendus facere et voluptatem et qui non. Ab vero explicabo voluptate ut provident.', '2023-12-15 10:48:13', '2023-12-15 10:48:13'),
('9adb334f-a224-4067-b97d-d45e657bc0fb', '9adb334e-6e74-4f30-a875-6130d270ea87', '9adb334c-a30c-42f3-83e0-0edb5a673167', 5, 'Vitae molestiae eum ipsum. Fuga voluptas ratione autem deserunt.', '2023-12-15 10:48:13', '2023-12-15 10:48:13');

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
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` char(36) NOT NULL,
  `category_id` char(36) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `picture`, `name`, `price`, `stock`, `created_at`, `updated_at`) VALUES
('9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', '9adb334c-8a1f-4e1c-bbfd-3fcd9d8dfd3f', 'purple.jpg', 'purple', '26000.00', 21, '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-a30c-42f3-83e0-0edb5a673167', '9adb334c-9047-4a46-b13c-54e41f403bc7', 'silver.jpg', 'silver', '10000.00', 75, '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', '9adb334c-91fe-456a-8d0c-8b9801088803', 'maroon.jpg', 'maroon', '7000.00', 5, '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-a727-4b45-9e79-77d8df0563bb', '9adb334c-8d10-4ae3-bde5-52de10d10ec2', 'blue.jpg', 'blue', '22000.00', 50, '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-a941-4f0f-a10d-a763919c3a2b', '9adb334c-93f3-4e91-81a8-3183ed432db5', 'black.jpeg', 'black', '4000.00', 91, '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-ab72-46e1-aa96-57170bedd7db', '9adb334c-8b99-4e90-8105-0f0652528e9d', 'fuchsia.jpeg', 'fuchsia', '14000.00', 99, '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-addf-429e-9b18-9dd8ce06b91f', '9adb334c-886c-4386-a270-8d6fb590bf73', 'olive.png', 'olive', '22000.00', 46, '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-b011-44a6-9530-2200b94af5d4', '9adb334c-95c1-4320-974e-b7f574708866', 'aqua.png', 'aqua', '3000.00', 70, '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-b235-4156-9256-dad2084f5c09', '9adb334c-93f3-4e91-81a8-3183ed432db5', 'yellow.jpeg', 'yellow', '21000.00', 70, '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-b477-4a44-9edd-6995c0af2312', '9adb334c-8a1f-4e1c-bbfd-3fcd9d8dfd3f', 'gray.jpeg', 'gray', '6000.00', 85, '2023-12-15 10:48:11', '2023-12-15 10:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `created_at`, `updated_at`) VALUES
('9adb334c-b86f-4b1e-b0f4-af4a8db1b934', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-bb12-4855-bf70-d879f04f5e58', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-bd39-4796-a1d9-c0ac045c83d7', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-bf5b-4169-9f83-81f48693310f', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-c18d-4096-923f-bc547fa52918', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-c400-49fd-85a5-27826b50848e', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-c631-4425-ba0e-c7ba100e11bd', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-c852-453c-935c-1badd8941070', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-ca6c-4919-9ff3-c37378f9d6ad', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-ccae-40de-896e-121db6f9a553', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-ceec-46f2-a6b3-dbc625e70b84', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-d106-4a21-91dc-22ea64489ab8', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-d30c-4c4a-b461-e0697a5e0e98', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-d51b-49d8-9185-13687c771982', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-d776-451e-b236-6fbde8941446', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-d9e4-4bc4-a2b8-923d51b89a43', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-dc1e-4bd0-b504-e16b402839ab', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-de4f-4390-97b8-4260523053df', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-e06f-4aef-98a6-e6356e3b9fe2', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-e2cc-4bf8-8a00-9a4a2df099a5', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-e50a-4be9-bd78-8cdcbef3dc85', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-e6fd-412f-9cad-69dce7d0ae87', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-e90c-47af-8221-040ad3cb3e77', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-eaf9-4376-9c63-f9e6cc3bdbe1', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-ed21-45f1-bcb4-0d87f90acd57', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-ef0d-41cf-b07d-ef0a662c5d99', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-f145-4bad-9611-74e902777522', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-f362-4f13-9db3-c29ba9fac21d', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-f580-4677-9aeb-625e17587940', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-f7fb-409d-ad05-01f85eee93dd', '2023-12-15 10:48:11', '2023-12-15 10:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `transaction__details`
--

CREATE TABLE `transaction__details` (
  `id` char(36) NOT NULL,
  `transaction_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction__details`
--

INSERT INTO `transaction__details` (`id`, `transaction_id`, `product_id`, `price`, `amount`, `created_at`, `updated_at`) VALUES
('9adb334d-3161-4474-8c44-8c66f1f205d9', '9adb334c-c400-49fd-85a5-27826b50848e', '9adb334c-b477-4a44-9edd-6995c0af2312', '11000.00', 28, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-4666-4ced-b063-e6f2f86c3c08', '9adb334c-e90c-47af-8221-040ad3cb3e77', '9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', '7000.00', 26, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-487e-40ed-8686-4a8e7b55639c', '9adb334c-b86f-4b1e-b0f4-af4a8db1b934', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', '18000.00', 12, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-4a23-427c-9e68-510f90a0d86e', '9adb334c-dc1e-4bd0-b504-e16b402839ab', '9adb334c-b477-4a44-9edd-6995c0af2312', '13000.00', 15, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-4c2a-41d2-9c7c-55af096fdb9c', '9adb334c-e06f-4aef-98a6-e6356e3b9fe2', '9adb334c-ab72-46e1-aa96-57170bedd7db', '24000.00', 67, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-4dce-49dd-ab88-bbe45f443241', '9adb334c-bd39-4796-a1d9-c0ac045c83d7', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '23000.00', 75, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-4f8e-471c-a53f-d6a3043157a3', '9adb334c-e50a-4be9-bd78-8cdcbef3dc85', '9adb334c-b477-4a44-9edd-6995c0af2312', '15000.00', 39, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-514d-4d4b-b6c8-882764062213', '9adb334c-bd39-4796-a1d9-c0ac045c83d7', '9adb334c-addf-429e-9b18-9dd8ce06b91f', '21000.00', 2, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-5339-46cd-ba60-6f1d30704781', '9adb334c-e6fd-412f-9cad-69dce7d0ae87', '9adb334c-ab72-46e1-aa96-57170bedd7db', '22000.00', 37, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-5532-4a0e-b0f2-3924987b538e', '9adb334c-eaf9-4376-9c63-f9e6cc3bdbe1', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '23000.00', 95, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-5723-4cdf-9371-88aa64090383', '9adb334c-f7fb-409d-ad05-01f85eee93dd', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', '29000.00', 50, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-5918-461e-8721-d503a24e189f', '9adb334c-ed21-45f1-bcb4-0d87f90acd57', '9adb334c-b011-44a6-9530-2200b94af5d4', '8000.00', 20, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-5b12-4378-ab78-9a7a9c1fbc1c', '9adb334c-e2cc-4bf8-8a00-9a4a2df099a5', '9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', '4000.00', 43, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-5d4b-4076-b685-16f501c194fc', '9adb334c-bd39-4796-a1d9-c0ac045c83d7', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '20000.00', 38, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-5f84-465d-942c-46fef9090724', '9adb334c-dc1e-4bd0-b504-e16b402839ab', '9adb334c-addf-429e-9b18-9dd8ce06b91f', '2000.00', 38, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-61c8-46d0-9ea6-4f01c8214fc6', '9adb334c-f362-4f13-9db3-c29ba9fac21d', '9adb334c-ab72-46e1-aa96-57170bedd7db', '6000.00', 14, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-6421-4a25-b2a1-5c640a3e6889', '9adb334c-b86f-4b1e-b0f4-af4a8db1b934', '9adb334c-b235-4156-9256-dad2084f5c09', '9000.00', 93, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-6671-42c1-a314-bcadba68575f', '9adb334c-d776-451e-b236-6fbde8941446', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', '19000.00', 42, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-68c2-4404-994a-e8afc38b7feb', '9adb334c-f362-4f13-9db3-c29ba9fac21d', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '27000.00', 87, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-6afe-4736-a6d1-bc5950a7e92f', '9adb334c-dc1e-4bd0-b504-e16b402839ab', '9adb334c-a30c-42f3-83e0-0edb5a673167', '29000.00', 94, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-6d40-4497-922f-17082c3dc806', '9adb334c-f145-4bad-9611-74e902777522', '9adb334c-b477-4a44-9edd-6995c0af2312', '28000.00', 93, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-6f97-4e70-9fc0-51552bec5e45', '9adb334c-f580-4677-9aeb-625e17587940', '9adb334c-a727-4b45-9e79-77d8df0563bb', '30000.00', 67, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-7208-41e2-a175-071a727a1d74', '9adb334c-de4f-4390-97b8-4260523053df', '9adb334c-a727-4b45-9e79-77d8df0563bb', '17000.00', 96, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-746b-40ed-a91c-baeb167145d7', '9adb334c-ccae-40de-896e-121db6f9a553', '9adb334c-b235-4156-9256-dad2084f5c09', '7000.00', 31, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-76e3-4928-9238-192a7aaccf81', '9adb334c-d51b-49d8-9185-13687c771982', '9adb334c-a30c-42f3-83e0-0edb5a673167', '19000.00', 79, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-7936-4cd3-9bdb-2402eb1dbbf4', '9adb334c-bd39-4796-a1d9-c0ac045c83d7', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', '30000.00', 88, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-7b71-439b-bba4-70f2d706a898', '9adb334c-c18d-4096-923f-bc547fa52918', '9adb334c-ab72-46e1-aa96-57170bedd7db', '24000.00', 41, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-7dc8-4be6-ba15-a0ee4a8b09eb', '9adb334c-f7fb-409d-ad05-01f85eee93dd', '9adb334c-b011-44a6-9530-2200b94af5d4', '12000.00', 14, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-8030-4d7b-8e80-ff0ad0e9431d', '9adb334c-ed21-45f1-bcb4-0d87f90acd57', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '20000.00', 79, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-829d-4d8a-966e-841ce0ad3f23', '9adb334c-e90c-47af-8221-040ad3cb3e77', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '17000.00', 36, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-8568-42ee-a4f5-f105a8763c06', '9adb334c-c400-49fd-85a5-27826b50848e', '9adb334c-b477-4a44-9edd-6995c0af2312', '24000.00', 25, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-87d6-4bf4-b02a-a9471ca6361e', '9adb334c-de4f-4390-97b8-4260523053df', '9adb334c-b235-4156-9256-dad2084f5c09', '9000.00', 87, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-8a34-4afd-baa4-5aec273e2d48', '9adb334c-c400-49fd-85a5-27826b50848e', '9adb334c-a727-4b45-9e79-77d8df0563bb', '21000.00', 19, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-8c70-459a-92af-56885d68a6ca', '9adb334c-d776-451e-b236-6fbde8941446', '9adb334c-b235-4156-9256-dad2084f5c09', '13000.00', 95, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-8edc-432c-86bf-f312bd8cf114', '9adb334c-d776-451e-b236-6fbde8941446', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', '14000.00', 43, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-9139-4195-afce-ec6faccaac6d', '9adb334c-c631-4425-ba0e-c7ba100e11bd', '9adb334c-b235-4156-9256-dad2084f5c09', '28000.00', 11, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-9377-4676-880b-450a41eae339', '9adb334c-f580-4677-9aeb-625e17587940', '9adb334c-b011-44a6-9530-2200b94af5d4', '6000.00', 82, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-95db-4144-b317-6e0872c42b55', '9adb334c-e06f-4aef-98a6-e6356e3b9fe2', '9adb334c-b011-44a6-9530-2200b94af5d4', '5000.00', 7, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-9843-4b28-9c8d-0f702547d337', '9adb334c-c852-453c-935c-1badd8941070', '9adb334c-a727-4b45-9e79-77d8df0563bb', '28000.00', 3, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-9aad-47ab-99b2-146f3895d4d9', '9adb334c-de4f-4390-97b8-4260523053df', '9adb334c-b235-4156-9256-dad2084f5c09', '26000.00', 33, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-9d2b-4300-b1c8-f58045add618', '9adb334c-ef0d-41cf-b07d-ef0a662c5d99', '9adb334c-b011-44a6-9530-2200b94af5d4', '6000.00', 2, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-9f8b-4817-ac63-2e1080b4e9f2', '9adb334c-ceec-46f2-a6b3-dbc625e70b84', '9adb334c-addf-429e-9b18-9dd8ce06b91f', '12000.00', 78, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-a220-4368-9548-1e59ae52afe8', '9adb334c-bf5b-4169-9f83-81f48693310f', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '23000.00', 100, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-a492-453a-8b4f-f80c2e06b3b1', '9adb334c-c852-453c-935c-1badd8941070', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '20000.00', 15, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-a713-40ed-9f2c-15bca9b3fc18', '9adb334c-ca6c-4919-9ff3-c37378f9d6ad', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '1000.00', 73, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-a97f-498e-bf74-4b08dc8bb629', '9adb334c-b86f-4b1e-b0f4-af4a8db1b934', '9adb334c-a30c-42f3-83e0-0edb5a673167', '12000.00', 82, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-abda-43e8-9d6c-e17d72df1a0a', '9adb334c-c18d-4096-923f-bc547fa52918', '9adb334c-b477-4a44-9edd-6995c0af2312', '15000.00', 84, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-ae3c-4248-811c-e0bcc54cc13a', '9adb334c-f145-4bad-9611-74e902777522', '9adb334c-b477-4a44-9edd-6995c0af2312', '12000.00', 33, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-b07c-4cb6-9c65-1ec4240e84e6', '9adb334c-f580-4677-9aeb-625e17587940', '9adb334c-addf-429e-9b18-9dd8ce06b91f', '27000.00', 47, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-b2c0-4eb1-9904-d45b3d6f9aa6', '9adb334c-ca6c-4919-9ff3-c37378f9d6ad', '9adb334c-a30c-42f3-83e0-0edb5a673167', '14000.00', 80, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-b4d7-4001-bb9d-2e4f2ccebb5b', '9adb334c-bd39-4796-a1d9-c0ac045c83d7', '9adb334c-a30c-42f3-83e0-0edb5a673167', '16000.00', 15, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-b70e-450e-9723-640271df0197', '9adb334c-b86f-4b1e-b0f4-af4a8db1b934', '9adb334c-addf-429e-9b18-9dd8ce06b91f', '6000.00', 98, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-b94c-40e2-9c26-bd28d546e022', '9adb334c-c400-49fd-85a5-27826b50848e', '9adb334c-a30c-42f3-83e0-0edb5a673167', '6000.00', 24, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-bb97-4b55-a40d-9a737337c2e4', '9adb334c-f580-4677-9aeb-625e17587940', '9adb334c-b235-4156-9256-dad2084f5c09', '4000.00', 53, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-bdcf-447a-ac15-fd44a1f39fa5', '9adb334c-d9e4-4bc4-a2b8-923d51b89a43', '9adb334c-b011-44a6-9530-2200b94af5d4', '7000.00', 96, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-c01c-4d3b-a8fc-650bd343dd82', '9adb334c-e06f-4aef-98a6-e6356e3b9fe2', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', '22000.00', 80, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-c2fd-4744-bf6a-b9cf9623a7eb', '9adb334c-e6fd-412f-9cad-69dce7d0ae87', '9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', '24000.00', 11, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-c560-44d5-a19b-b38f1e0c3794', '9adb334c-ef0d-41cf-b07d-ef0a662c5d99', '9adb334c-ab72-46e1-aa96-57170bedd7db', '8000.00', 87, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-cf3a-4121-8cd9-2c9830bf1dc2', '9adb334c-de4f-4390-97b8-4260523053df', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', '24000.00', 47, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-d200-42ee-a87c-37bb12c9adb8', '9adb334c-e2cc-4bf8-8a00-9a4a2df099a5', '9adb334c-addf-429e-9b18-9dd8ce06b91f', '4000.00', 88, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-d478-4fa2-9453-8351cfd558b5', '9adb334c-c631-4425-ba0e-c7ba100e11bd', '9adb334c-addf-429e-9b18-9dd8ce06b91f', '28000.00', 52, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-d724-473d-9452-77108468aa37', '9adb334c-eaf9-4376-9c63-f9e6cc3bdbe1', '9adb334c-a727-4b45-9e79-77d8df0563bb', '18000.00', 76, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-d95a-4012-8559-4e155cc3328b', '9adb334c-e2cc-4bf8-8a00-9a4a2df099a5', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '18000.00', 83, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-dbc9-4775-814b-e7d6fa7f24f2', '9adb334c-e6fd-412f-9cad-69dce7d0ae87', '9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', '8000.00', 92, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-de1f-4d8c-89c7-09ab6a03b902', '9adb334c-e06f-4aef-98a6-e6356e3b9fe2', '9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', '20000.00', 52, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-e08d-41f3-80b9-e31be33485f9', '9adb334c-d106-4a21-91dc-22ea64489ab8', '9adb334c-b235-4156-9256-dad2084f5c09', '18000.00', 36, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-e30d-4d24-88c5-7e76c18670d7', '9adb334c-e2cc-4bf8-8a00-9a4a2df099a5', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '15000.00', 37, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-e56d-446d-ae66-1349b1aa04a4', '9adb334c-ed21-45f1-bcb4-0d87f90acd57', '9adb334c-a727-4b45-9e79-77d8df0563bb', '6000.00', 74, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-e7c7-4e2d-b190-9616565f6c1a', '9adb334c-b86f-4b1e-b0f4-af4a8db1b934', '9adb334c-ab72-46e1-aa96-57170bedd7db', '4000.00', 75, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-ea70-4e08-bb51-a0f54eb92283', '9adb334c-f7fb-409d-ad05-01f85eee93dd', '9adb334c-a727-4b45-9e79-77d8df0563bb', '13000.00', 29, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-ed36-4758-8a4b-18a868453c34', '9adb334c-d30c-4c4a-b461-e0697a5e0e98', '9adb334c-a4d2-4fff-bbf4-af2b02bfe1fc', '1000.00', 11, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-efd8-42eb-a595-d4b9e304f8e6', '9adb334c-c400-49fd-85a5-27826b50848e', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '24000.00', 29, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-f282-46bb-8601-cc26b4009734', '9adb334c-d30c-4c4a-b461-e0697a5e0e98', '9adb334c-a941-4f0f-a10d-a763919c3a2b', '3000.00', 43, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-f4e3-4931-a98e-a08fb79b6157', '9adb334c-e2cc-4bf8-8a00-9a4a2df099a5', '9adb334c-a0cc-4c49-8afa-bb8b2dbccf31', '27000.00', 62, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-f73c-4e05-8416-5c1e9a1eeec8', '9adb334c-f580-4677-9aeb-625e17587940', '9adb334c-a30c-42f3-83e0-0edb5a673167', '5000.00', 52, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-fa00-49bd-8fe1-1364e83de65f', '9adb334c-bf5b-4169-9f83-81f48693310f', '9adb334c-ab72-46e1-aa96-57170bedd7db', '27000.00', 6, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-fc80-41b0-a6e3-6ba04f9d6ab5', '9adb334c-c400-49fd-85a5-27826b50848e', '9adb334c-ab72-46e1-aa96-57170bedd7db', '28000.00', 75, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334d-fefa-4c6b-98a9-cd9f817e81df', '9adb334c-f580-4677-9aeb-625e17587940', '9adb334c-ab72-46e1-aa96-57170bedd7db', '6000.00', 97, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-011b-42d6-aaa1-679a9b568526', '9adb334c-e90c-47af-8221-040ad3cb3e77', '9adb334c-b235-4156-9256-dad2084f5c09', '23000.00', 36, '2023-12-15 10:48:12', '2023-12-15 10:48:12'),
('9adb334e-037a-41bb-b210-fadab6123bad', '9adb334c-e50a-4be9-bd78-8cdcbef3dc85', '9adb334c-addf-429e-9b18-9dd8ce06b91f', '18000.00', 23, '2023-12-15 10:48:12', '2023-12-15 10:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Owner','Kasir','Koki') DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('9adb334c-714a-444d-a563-310b6979563c', 'Jaquan Dicki', 'senger.dorcas@example.net', 'Koki', '2023-12-15 10:48:08', '$2y$12$6LL5Ij77GQUGFYZ2WD6dTOPbhxjY39ANqR88wTAldCvHw4BKxKt2m', '7B4JINTBHq', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-774f-49d6-8564-e915743eee8d', 'Willis Kuhic', 'alda94@example.com', 'Koki', '2023-12-15 10:48:08', '$2y$12$w9FrJiMaPi73fg4G37ZA1eOdZR0w9ruccplqJFalA1ACPrBTVo4.S', 'C7vmTDdGcd', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-7901-4696-ba9a-03b1053f08a1', 'Dr. Sharon Haley', 'lzboncak@example.com', 'Koki', '2023-12-15 10:48:08', '$2y$12$tGjKho5bB9AomRrvBSodpO6eH0xeFA0kbpHO4SKqxsJ7MQyayAbA2', '87mqWnsgEP', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-7a84-4868-a4b6-2ae81ce54c21', 'Dr. Garth Kunze II', 'gage64@example.org', 'Koki', '2023-12-15 10:48:09', '$2y$12$TGhYzgR6EVOBUvYeW1lZIuqvNLBBqY4pp2WkU6FsQFhpiJeSjD3J.', 'b4y5F2PhJh', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-7bf3-4d5a-b034-239af227ad76', 'Elijah Walsh', 'sid79@example.com', 'Owner', '2023-12-15 10:48:09', '$2y$12$d2tTQwl0aTDFBQeQ4j5tHO/N5hQuc3obTQm.MpDUax9yUBmVTCMLe', 'h8NsY6XQf4', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-7d8d-4f6e-9a2b-56327a61b4f9', 'Phoebe Walsh', 'madilyn72@example.net', 'Owner', '2023-12-15 10:48:09', '$2y$12$vKCoY/6/c9B.EX7CogokteYtF47wbUagTl45mk2OSGazzzffcQtOy', 'wN6KB8l0pZ', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-7f26-49bd-8ba0-c299c18a8f60', 'Beatrice Kshlerin', 'littel.gaylord@example.org', 'Owner', '2023-12-15 10:48:10', '$2y$12$SzG.OM4Qe/DMXfyfvDl.2u6i2PGp1irNZ7mOVNpYOzFvA52e9oFx.', 'Mj7qf0DkAb', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-80b2-4ade-96aa-a0a5830813c4', 'Dr. Cortez Crooks', 'raquel.johns@example.net', 'Owner', '2023-12-15 10:48:10', '$2y$12$Fc5GX.utgF0RPpj8GN5P4uEMkCajydF7hYD4FudgosT5lXLCyLCEu', 'jk5klCe5Wf', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-8235-49e6-aee9-8fb8636937f7', 'Mr. Harley Roberts V', 'ortiz.gage@example.net', 'Owner', '2023-12-15 10:48:10', '$2y$12$.btKUAOefQd8nJKpZxuMouE9b56Ma1lY0W5ysWrz4hLIVYvFaXtAm', 'miHMiDcuKH', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb334c-83b0-471a-9469-90cfe2e4e624', 'Nina Jenkins Sr.', 'lframi@example.com', 'Owner', '2023-12-15 10:48:11', '$2y$12$g4USbYpLfCP/TOmBMSu0oebU8NpTZDgDhmEbnh/nAdIk.aAKNLVx6', '7Ipdihn0JT', '2023-12-15 10:48:11', '2023-12-15 10:48:11'),
('9adb338e-1554-45b0-aced-dd6faac75b36', 'Rendy', 'user@gmail.com', 'Kasir', '2023-12-15 10:48:53', '$2y$12$ma5ShW4GdpguU9/VYkjlDuZqvAhgvNO.cQ0vfuztnPOiU6jVDQsJm', 'WQ6opUL7JW', '2023-12-15 10:48:54', '2023-12-15 10:48:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order__details`
--
ALTER TABLE `order__details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order__details_order_id_foreign` (`order_id`),
  ADD KEY `order__details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction__details`
--
ALTER TABLE `transaction__details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction__details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction__details_product_id_foreign` (`product_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order__details`
--
ALTER TABLE `order__details`
  ADD CONSTRAINT `order__details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order__details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction__details`
--
ALTER TABLE `transaction__details`
  ADD CONSTRAINT `transaction__details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction__details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
