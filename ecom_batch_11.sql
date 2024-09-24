-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2024 at 11:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_batch_11`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active and 0 = in active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HP', 'admin/image/brand/42.png', 1, '2024-06-05 05:54:48', '2024-06-05 05:54:48'),
(2, 'Nike', 'admin/image/brand/927.jpg', 1, '2024-06-05 05:54:58', '2024-06-05 05:54:58'),
(3, 'Easy', 'admin/image/brand/873.jpg', 1, '2024-06-05 05:55:11', '2024-06-05 05:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1718196668),
('c525a5357e97fef8d3db25841c86da1a:timer', 'i:1718196668;', 1718196668),
('eef95f658febcee12b41ea8ec1bace29', 'i:1;', 1720255668),
('eef95f658febcee12b41ea8ec1bace29:timer', 'i:1720255668;', 1720255668);

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active and 0= in active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'admin/image/category/1037467734.jpg', 1, '2024-06-05 05:51:54', '2024-06-05 05:51:54'),
(2, 'Man Fashion', 'admin/image/category/1854579432.jpg', 1, '2024-06-05 05:52:09', '2024-06-05 05:52:09'),
(3, 'Kids', 'admin/image/category/129816269.jpg', 1, '2024-06-05 05:52:24', '2024-06-05 05:52:24'),
(4, 'Women Fashion', 'admin/image/category/2081781201.jpg', 1, '2024-06-05 05:53:08', '2024-06-05 05:53:08'),
(5, 'Fashion', 'admin/image/category/1250987645.jpg', 1, '2024-06-05 06:23:30', '2024-06-05 06:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Black', '#000000', 'Black', '2024-06-05 05:56:17', '2024-06-05 05:56:17'),
(2, 'Red', '#ff0000', 'Red', '2024-06-05 05:56:40', '2024-06-05 05:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_of_birth` text DEFAULT NULL,
  `blood_group` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `nid` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `date_of_birth`, `blood_group`, `image`, `nid`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Sumiya Toma', 'admin@gmail.com', '01915472456', '$2y$12$ztD66zrAADON8GDHBE7vOu9e94iEF1mD56RzE3ja1ft40yQkAxZa.', NULL, NULL, NULL, NULL, NULL, '2024-06-08 07:55:55', '2024-06-08 07:55:55'),
(3, 'Man Fashion', 'sojib@gmail.com', '01684925066', '$2y$12$SSY3cw64PbojWDYvqyTIa.r3o1ltr4nZbefKe15IldkKrnRXUMuGy', NULL, NULL, NULL, NULL, NULL, '2024-06-08 08:01:19', '2024-06-08 08:01:19'),
(6, 'tariqul', 'tariqul@gmail.com', '456745756', '$2y$12$Yr7gh7DIlX9Camw/VKDhEuBcZmhyk0oipQZN8mmeTO2F1RotpENem', NULL, NULL, NULL, NULL, NULL, '2024-06-12 06:21:01', '2024-06-12 06:21:01'),
(7, 'Monir', 'admind@gmail.com', '5345346', '$2y$12$mZ7ACmG/FQdFX5EgAjsQGO4O8RAt2hi6SIkQmBh6SZASz.lmMJvoC', NULL, NULL, NULL, NULL, NULL, '2024-06-12 06:42:42', '2024-06-12 06:42:42'),
(8, 'Emran', 'emran@gmail.com', '5346654654', '$2y$12$FTl2o9bI0.nbUmcc/qFpouG9zSgcloKJrvCkWjUFxZLkufRZsDnKC', NULL, NULL, NULL, NULL, NULL, '2024-06-12 06:49:25', '2024-06-12 06:49:25'),
(11, 'tariqul', 'dddddd@gmail.com', '01915472454', '$2y$12$jYnVluj5t..GGGPKPudXi.SY.0r4IvgjMQriSV02OJu3bdxKnhove', NULL, NULL, NULL, NULL, NULL, '2024-07-01 06:49:59', '2024-07-01 06:49:59'),
(12, 'zaman', 'zamanbd19@gmail.com', '012485423534', '$2y$12$Si1tjCIYdHTyR3m9OSJQvuKjB6bSW4PFuw1hFdq2RrjtJFML709Ni', NULL, NULL, NULL, NULL, NULL, '2024-07-01 06:51:26', '2024-07-01 06:51:26'),
(13, 'Jaman', 'kamrulbd13@gmail.com', '5453653645654643', '$2y$12$Tx21lcLZYhDBCef2Ya.N8.N6PMmtRSpANiH3e2hff3wphzzfceUpu', NULL, NULL, NULL, NULL, NULL, '2024-07-01 07:24:30', '2024-07-01 07:24:30');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_22_135103_add_two_factor_columns_to_users_table', 1),
(5, '2024_04_22_135141_create_personal_access_tokens_table', 1),
(6, '2024_04_27_144132_create_categories_table', 1),
(7, '2024_05_04_122222_create_sub_categories_table', 1),
(8, '2024_05_06_123741_create_brands_table', 1),
(9, '2024_05_11_122920_create_products_table', 1),
(10, '2024_05_12_083630_create_reviews_table', 1),
(11, '2024_05_15_123140_create_product_images_table', 1),
(12, '2024_05_20_131910_create_customers_table', 1),
(13, '2024_05_29_123457_create_units_table', 1),
(14, '2024_05_29_141910_create_product_colors_table', 1),
(15, '2024_05_29_141927_create_product_sizes_table', 1),
(16, '2024_06_01_130038_create_colors_table', 1),
(17, '2024_06_01_130044_create_sizes_table', 1),
(18, '2024_06_08_112701_create_orders_table', 2),
(19, '2024_06_08_112708_create_order_details_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `courier_id` int(10) NOT NULL DEFAULT 0,
  `order_total` int(11) NOT NULL,
  `tax_total` int(11) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `order_date` text NOT NULL,
  `order_timestamp` text NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_address` text NOT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_date` text DEFAULT NULL,
  `delivery_timestamp` text DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_date` text DEFAULT NULL,
  `payment_timestamp` text DEFAULT NULL,
  `currency` varchar(255) NOT NULL DEFAULT 'BDT',
  `transaction_id` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `courier_id`, `order_total`, `tax_total`, `shipping_total`, `order_date`, `order_timestamp`, `order_status`, `delivery_address`, `delivery_status`, `delivery_date`, `delivery_timestamp`, `payment_method`, `payment_status`, `payment_date`, `payment_timestamp`, `currency`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 14681, 1902, 100, '2024-06-08', '1717804800', 'Complete', 'House No-10 (L-4), Road No-20, Block-C, Banani, Dhaka 1215', 'Complete', '2024-06-29', '1719619200', 'Cash', 'Complete', '2024-06-29', '1719619200', 'BDT', NULL, '2024-06-08 07:55:55', '2024-06-29 04:57:12'),
(2, 3, 0, 45156, 5877, 100, '2024-06-08', '1717804800', 'Cancel', 'asdasdas', 'Cancel', NULL, NULL, 'Cash', 'Cancel', NULL, NULL, 'BDT', NULL, '2024-06-08 08:01:19', '2024-06-29 05:01:59'),
(3, 6, 0, 13899, 1800, 100, '2024-06-12', '1718150400', 'Pending', 'dhaka', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-06-12 06:21:01', '2024-06-12 06:21:01'),
(4, 7, 0, 811, 93, 100, '2024-06-12', '1718150400', 'Pending', 'ddfgdghggfjhjh', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-06-12 06:42:42', '2024-06-12 06:42:42'),
(6, 12, 0, 13899, 1800, 100, '2024-07-01', '1719792000', 'Pending', 'Dhaka', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-07-01 07:17:51', '2024-07-01 07:17:51'),
(7, 12, 0, 30575, 3975, 100, '2024-07-01', '1719792000', 'Pending', 'dhaka', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-07-01 07:22:45', '2024-07-01 07:22:45'),
(8, 13, 0, 661, 73, 100, '2024-07-01', '1719792000', 'Pending', 'Dhaka', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-07-01 07:24:41', '2024-07-01 07:24:41'),
(9, 3, 0, 400, 100, 300, '2024-07-01', '1719792000', 'Pending', 'sadasdasd', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '6682bf02ee824', NULL, NULL),
(10, 3, 0, 400, 100, 300, '2024-07-01', '1719792000', 'Pending', 'sadasdasd', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '6682bf48b137e', NULL, NULL),
(11, 3, 0, 400, 100, 300, '2024-07-01', '1719792000', 'Pending', 'sadasdasd', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '6682bf66d97e9', NULL, NULL),
(12, 3, 0, 400, 100, 300, '2024-07-01', '1719792000', 'Pending', 'sadasdasd', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '6682c028591fc', NULL, NULL),
(13, 3, 0, 400, 100, 300, '2024-07-01', '1719792000', 'Pending', 'sadasdasd', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '6682c0ca78b1f', NULL, NULL),
(14, 3, 0, 400, 100, 300, '2024-07-01', '1719792000', 'Pending', 'sadasdasd', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '6682c1374a14e', NULL, NULL),
(15, 3, 0, 400, 100, 300, '2024-07-01', '1719792000', 'Pending', 'sadasdasd', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '6682c197ca65b', NULL, NULL),
(16, 13, 0, 30575, 3975, 100, '2024-07-01', '1719792000', 'Pending', 'Sonir Akhra', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '6682c4482cd1d', NULL, NULL),
(21, 3, 0, 12312, 100, 200, '2024-07-06', '1720224000', 'Processing', 'Dhaka', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '66890437b2b96', NULL, NULL),
(23, 1, 0, 14610, 1893, 100, '2024-07-06', '1720224000', 'Processing', 'Vuter Goli', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '668908ea095bc', NULL, NULL),
(24, 1, 0, 776, 88, 100, '2024-07-06', '1720224000', 'Processing', 'Sonir Akhra', 'Pending', NULL, NULL, 'Online', 'Pending', NULL, NULL, 'BDT', '66890a89c84a0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_size` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_code`, `product_price`, `product_qty`, `product_color`, `product_size`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Motorola e22s 4GB/64GB 4G Smartphone', '02', '11999', '1', 'Black', 'Standard', '2024-06-08 07:55:55', '2024-06-08 07:55:55'),
(2, 1, 9, 'Rain Coats for Men Waterproof Jacket and Pant with Bag blue', '09', '680', '1', 'Black', 'Standard', '2024-06-08 07:55:55', '2024-06-08 07:55:55'),
(3, 2, 2, 'Motorola e22s 4GB/64GB 4G Smartphone', '02', '11999', '1', 'Black', 'Standard', '2024-06-08 08:01:19', '2024-06-08 08:01:19'),
(4, 2, 9, 'Rain Coats for Men Waterproof Jacket and Pant with Bag blue', '09', '680', '1', 'Black', 'Standard', '2024-06-08 08:01:19', '2024-06-08 08:01:19'),
(5, 2, 1, 'Hp Thinkpad core i5 Laptop gen 6th ram 8gb core i5 Ssd 256 gb', '01', '26500', '1', 'Black', 'Standard', '2024-06-08 08:01:19', '2024-06-08 08:01:19'),
(6, 3, 2, 'Motorola e22s 4GB/64GB 4G Smartphone', '02', '11999', '1', 'Black', 'Standard', '2024-06-12 06:21:01', '2024-06-12 06:21:01'),
(7, 4, 3, 'Watch', '03', '309', '2', 'Black', 'Standard', '2024-06-12 06:42:42', '2024-06-12 06:42:42'),
(9, 6, 2, 'Motorola e22s 4GB/64GB 4G Smartphone', '02', '11999', '1', 'Black', 'Standard', '2024-07-01 07:17:51', '2024-07-01 07:17:51'),
(10, 7, 1, 'Hp Thinkpad core i5 Laptop gen 6th ram 8gb core i5 Ssd 256 gb', '01', '26500', '1', 'Black', 'Standard', '2024-07-01 07:22:45', '2024-07-01 07:22:45'),
(11, 8, 6, 'Panjabe', '06', '488', '1', 'Black', 'Standard', '2024-07-01 07:24:41', '2024-07-01 07:24:41'),
(12, 8, 1, 'Hp Thinkpad core i5 Laptop gen 6th ram 8gb core i5 Ssd 256 gb', '01', '26500', '1', 'Black', 'Standard', '2024-07-06 03:01:46', '2024-07-06 03:01:46'),
(13, 8, 3, 'Watch', '03', '309', '2', 'Black', 'Standard', '2024-07-06 03:05:46', '2024-07-06 03:05:46'),
(14, 8, 2, 'Motorola e22s 4GB/64GB 4G Smartphone', '02', '11999', '1', 'Black', 'Standard', '2024-07-06 03:05:46', '2024-07-06 03:05:46'),
(15, 24, 4, 'Eid Special T-shirt | Ek diner kosai ( এক দিনের কসাই) | Men’s T-shirts | 100% polyester fabric | Ak diner koshai t-shirt for men', '04', '100', '1', 'Black', 'Small', '2024-07-06 03:12:41', '2024-07-06 03:12:41'),
(16, 24, 6, 'Panjabe', '06', '488', '1', 'Black', 'Standard', '2024-07-06 03:12:41', '2024-07-06 03:12:41');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `regular_price` float NOT NULL,
  `selling_price` float NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `featured_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 = featured and 0= not featured',
  `image` text NOT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active and 0= inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `slug`, `code`, `regular_price`, `selling_price`, `stock_amount`, `short_description`, `long_description`, `sales_count`, `hit_count`, `featured_status`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'Hp Thinkpad core i5 Laptop gen 6th ram 8gb core i5 Ssd 256 gb', 'hp-thinkpad-core-i5-laptop-gen-6th-ram-8gb-core-i5-ssd-256-gb', '01', 36000, 26500, 12, 'HP Thinkpad core i5 Laptop gen 6th ram 8gb core i5 Ssd 256 gb', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i3.496f490dJmdTZa\">Product\r\n details of Lenovo Thinkpad core i5  Laptop gen 6th ram 8gb core i5  Ssd\r\n 256 gb full fresh and  fast laptop ..7 days garanty..1 years servise \r\nwarranty  (used)</h2><div class=\"pdp-product-desc \" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.496f490dJmdTZa\"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Fingerprint Reader: Yes</li><li class=\"\">I/O Port3 x USB 3.1 Gen 1</li><li class=\"\">3.5 mm Combo Audio Jack</li><li class=\"\">1 x HDMI 1.4b</li><li class=\"\">1 x RJ45 Gigabit LAN</li><li class=\"\">Color: Black</li><li class=\"\">Body MaterialTop ABS</li><li class=\"\">Bottom PC + ABS </li></ul></div><div class=\"html-content detail-content\"><h2>Full Specification</h2><table><tbody><tr><th>Brand</th><td>Lenovo</td></tr><tr><th>Condition</th><td>Used</td></tr><tr><th>Laptop Type</th><td data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.496f490dJmdTZa\">Standard</td></tr><tr><th>Processor Type</th><td>Intel Core i5 6th Generation</td></tr><tr><th>Processor Speed</th><td>Base Frequency 2.30 GHz, up to 2.80 GHz with Turbo Boost, 2 Cores, 4 Threads, 3MB Cache</td></tr><tr><th>Screen Size</th><td>14.0\" FHD Anti-Glare, 220 Nits Display</td></tr><tr><th>RAM</th><td>8GB DDR4 2400 BUS</td></tr><tr><th>Hard Disk</th><td>256GB NVMe</td></tr><tr><th>Disk Type</th><td>SSD</td></tr><tr><th>Graphics Card</th><td>Intel HD 5500 Series</td></tr><tr><th>Audio/Speaker</th><td>Dolby Advanced Audio / Stereo Speakers</td></tr><tr><th>Networking</th><td>Intel 8260 802.11AC (2 x 2) Wi-Fi / LAN / Bluetooth 4.1</td></tr><tr><th>Webcam</th><td>720p HD</td></tr><tr><th>Card Reader</th><td>1 x Media Card Reader</td></tr><tr><th>Battery</th><td>6 Cell 48Wh</td></tr><tr><th>Keyboard</th><td>Backlit</td></tr><tr><th>Software</th><td>Windows</td></tr><tr><th>Dimensions (W x D x H)</th><td>13.25 x 9.15 x 0.79 inch</td></tr><tr><th>Product Weight (Kg)</th><td>1.58Kg</td></tr><tr><th>Series</th><td>Lenovo Thinkpad</td></tr></tbody></table><ul><li>Fingerprint Reader: Yes</li><li>I/O Port<ul><li>3 x USB 3.1 Gen 1</li><li>3.5 mm Combo Audio Jack</li><li>1 x HDMI 1.4b</li><li>1 x RJ45 Gigabit LAN</li></ul></li><li>Color: Black</li><li>Body Material<ul><li>Top ABS</li><li>Bottom PC + ABS&nbsp;</li></ul></li></ul><h2>Description</h2><p>Lenovo\r\n ThinkPad T470 business series Ultrabook has 256GB SSD storage capacity,\r\n 8GB DDR4 RAM, 14\" FHD display, 1920 x 1080 pixel screen resolution, \r\nsolid-state storage and secure fingerprint reading, 3 to 4 hour battery \r\nbackup, 336.6 x 232.5 x 19.95mm dimension.</p><h6>Similar Used Laptop</h6><p><a href=\"https://www.bdstall.com/details/lenovo-thinkpad-t490s-core-i5-8th-gen-8gb-ram-laptop-102830/\"></a></p><p><a href=\"https://www.bdstall.com/details/lenovo-thinkpad-t490s-core-i5-8th-gen-8gb-ram-laptop-102830/\"><img src=\"https://www.bdstall.com/asset/product-image/big_253671.jpeg\"></a></p><p><a href=\"https://www.bdstall.com/details/lenovo-thinkpad-t490s-core-i5-8th-gen-8gb-ram-laptop-102830/\">Lenovo</a></p><p><a href=\"https://www.bdstall.com/details/lenovo-thinkpad-t490s-core-i5-8th-gen-8gb-ram-laptop-102830/\">৳ 32,500</a></p><p><a href=\"https://www.bdstall.com/details/lenovo-thinkpad-t490s-core-i5-8th-gen-8gb-ram-laptop-102830/\">Details</a></p><a href=\"https://www.bdstall.com/details/lenovo-thinkpad-t14s-core-i5-10th-gen-16gb-ram-92312/\"><p><img src=\"https://www.bdstall.com/asset/product-image/big_221353.jpg\"></p><p>Lenovo</p><p>৳ 51,500</p><p><s>৳ 55,000</s>&nbsp;-6%</p><p>Details</p></a><a href=\"https://www.bdstall.com/details/lenovo-thinkpad-t490-core-i5-8th-gen-256gb-m2-ssd-102831/\"><p><img src=\"https://www.bdstall.com/asset/product-image/big_253694.jpg\"></p><p>Lenovo</p><p>৳ 33,000</p><p>Details</p></a><a href=\"https://www.bdstall.com/details/hp-15-dw3xxx-core-i5-11th-gen-laptop-83369/\"><p><img src=\"https://www.bdstall.com/asset/product-image/big_252848.jpg\"></p><p>HP 15S-DU3XXX</p><p>৳ 55,000</p><p><s>৳ 60,000</s>&nbsp;-8%</p><p>Details</p></a><h6>Popular Used Laptop Brand</h6><p><a href=\"https://www.bdstall.com/used-laptop/hp/\"></a></p><p><a href=\"https://www.bdstall.com/used-laptop/hp/\"><img src=\"https://www.bdstall.com/asset/brand-image/15.jpg\" alt=\"HP Used Laptop\"></a></p><a href=\"https://www.bdstall.com/used-laptop/dell/\"><p><img src=\"https://www.bdstall.com/asset/brand-image/9.jpg\" alt=\"Dell Used Laptop\"></p></a><a href=\"https://www.bdstall.com/used-laptop/asus/\"><p><img src=\"https://www.bdstall.com/asset/brand-image/4.jpg\" alt=\"Asus Used Laptop\"></p></a><p><a href=\"https://www.bdstall.com/details/lenovo-thinkpad-t470-core-i5-6th-gen-laptop-62116/#compare\"><u>View Price</u></a></p><form><h6>Write Review / Question</h6><p><a href=\"https://www.bdstall.com/userLogin/set_url_login/\">Write a question or review</a></p><h6>Question</h6>0 Question<h6>User Review</h6>(0 Review)&nbsp;<img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\">&nbsp;<img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\">&nbsp;<img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\">&nbsp;<img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\">&nbsp;<img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\"></form><br><div></div></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications\r\n of Lenovo Thinkpad core i5  Laptop gen 6th ram 8gb core i5  Ssd 256 gb \r\nfull fresh and  fast laptop ..7 days garanty..1 years servise warranty  \r\n(used)</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"html-content key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"html-content key-value\">343992669_BD-1708581229</div></li><li class=\"key-li\"><span class=\"key-title\"> Warranty Policy EN  </span><div class=\"html-content key-value\">servise warranty</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"html-content box-content-html\">12+</div></div></div></div><p></p>', 0, 0, 0, 'admin/image/product/1159414334.png', 'HP Thinkpad core i5 Laptop gen 6th ram 8gb core i5 Ssd 256 gb', 'HP Thinkpad core i5 Laptop gen 6th ram 8gb core i5 Ssd 256 gb', 1, '2024-06-05 06:02:08', '2024-06-05 06:02:08'),
(2, 1, 2, 2, 1, 'Motorola e22s 4GB/64GB 4G Smartphone', 'motorola-e22s-4gb64gb-4g-smartphone', '02', 15000, 11999, 12, 'Motorola e22s 4GB/64GB 4G Smartphone', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.44266c91lyLhtR\">Product details of Motorola e22s 4GB/64GB 4G Smartphone</h2><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Display: 6.5\" HD+ IPS 90Hz Punch Hole LCD Display</li><li class=\"\">CPU ~ GPU: 2.3GHz Octa Core Processor  PowerVR GE8320</li><li class=\"\">OS: Android 12</li><li class=\"\">Chipset: Mediatek Helio G37 (12 nm)</li><li class=\"\">Camera [Rear &amp; Front]: 16MP PDAF + 2MP Depth &amp; 8MP</li><li class=\"\">Memory [RAM + ROM]: 4GB + 64GB</li><li class=\"\">Battery: 5000mAh (Non-removable Li-po)</li><li class=\"\">Charger: 10W (Type - C)</li><li class=\"\">External Memory: Expandable Up to 1TB</li><li class=\"\">Connectivity: Bluetooth 5.0, Wi-Fi, GPS-AGPS, OTG</li><li class=\"\">Networks: 4G  3G  2G</li><li class=\"\">Sensors: Fingerprint, Proximity, Light, Accelerometer &amp; Gravity Sensor</li></ul></div><div class=\"html-content detail-content\"><img style=\"width: 100.0%;display: block;\" src=\"https://static-01.daraz.com.bd/p/ddf160b368f7c57e5f5c5a07a8f97152.jpg\"><img style=\"width: 100.0%;display: block;\" src=\"https://static-01.daraz.com.bd/p/4824c1c8f227a335eeff88179f51ebbb.jpg\"><img style=\"width: 100.0%;display: block;\" src=\"https://static-01.daraz.com.bd/p/67e3f8a135e44419c8b7a1c35eac55ed.jpg\"><img style=\"width: 100.0%;display: block;\" src=\"https://static-01.daraz.com.bd/p/f750683d954c4e3fba3bbaafe992ba54.jpg\"><img style=\"width: 100.0%;display: block;\" src=\"https://static-01.daraz.com.bd/p/a4402fd6f298029ac2783cb4320f66a0.jpg\"><img style=\"width: 100.0%;display: block;\" src=\"https://static-01.daraz.com.bd/p/d22311d47712cfdef55e961ef97a10e1.jpg\"><div></div></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of Motorola e22s 4GB/64GB 4G Smartphone</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"html-content key-value\">Motorola</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"html-content key-value\">313508142_BD-1405619222</div></li><li class=\"key-li\"><span class=\"key-title\"> Battery Capacity (mAh)  </span><div class=\"html-content key-value\">5000 - 5999 mAh</div></li><li class=\"key-li\"><span class=\"key-title\"> Screen Size (inches)  </span><div class=\"html-content key-value\">6 Inch and Above</div></li><li class=\"key-li\"><span class=\"key-title\"> Operating System  </span><div class=\"html-content key-value\">Android</div></li><li class=\"key-li\"><span class=\"key-title\"> Camera Front (Megapixels)  </span><div class=\"html-content key-value\">6 - 10MP</div></li><li class=\"key-li\"><span class=\"key-title\"> RAM Memory  </span><div class=\"html-content key-value\">4 GB</div></li><li class=\"key-li\"><span class=\"key-title\"> Camera Back (Megapixels)  </span><div class=\"html-content key-value\">16 - 20 MP</div></li><li class=\"key-li\"><span class=\"key-title\"> Number of SIM  </span><div class=\"html-content key-value\">Dual SIM</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"html-content box-content-html\">1 x Motorola e22s 4GB/64GB 4G Smartphone</div></div></div></div><p></p>', 0, 0, 0, 'admin/image/product/1953545385.webp', 'Motorola e22s 4GB/64GB 4G Smartphone', 'Motorola e22s 4GB/64GB 4G Smartphone', 1, '2024-06-05 06:07:12', '2024-06-05 06:07:12'),
(3, 2, 4, 2, 1, 'Watch', 'watch', '03', 1200, 309, 12, 'TRSOYE Brand New luxury fashion leather belt watche wrist-watche for men', '<div id=\"block-pJYzWPb3ErH\" class=\"pdp-block fixed-width-full block-margin-top background-2\"><div id=\"module_product_detail\" class=\"pdp-block module\"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.1e9f1a5btrTpAS\">Product details of TRSOYE Brand New luxury fashion leather belt watche wrist-watche for men</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\"><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Dial Window Material Type: Glass</li><li class=\"\">Dial Diameter: 42mm</li><li class=\"\">Case Shape: Round</li><li class=\"\">Band Width: 21mm</li><li class=\"\">Band Length: 24cm</li><li class=\"\">Clasp Type: Buckle</li><li class=\"\">Water Resistance Depth: 3BAR</li><li class=\"\">Case Thickness: 10mm</li><li class=\"\">Brand Name: POEDAGAR</li><li class=\"\">Place of Origin: Guangdong, China</li><li class=\"\">Type:\r\n CHARM, Fashion, Luxury, sport, Business Feature: Auto Date, , Complete \r\nCalendar, Day/Date, Perpetual Calendar, Luminous Hands, Shock Resistant,\r\n Back Light</li><li class=\"\">Material: Stainless Steel</li><li class=\"\">Band Material Type: PU Leather</li><li class=\"\">Case Material: ALLOY</li><li class=\"\">Dial Display: Pointer</li><li class=\"\">Battery Life: 24monthes</li><li class=\"\">User: Men</li><li class=\"\">Movement Band: CHENLONG</li><li class=\"\">Gender: men</li><li class=\"\">Colors: 4Colors</li><li class=\"\">Style: Fashion/sports/business</li><li class=\"\">Movement: Quartz Movement</li><li class=\"\">Keywords: Wristwatch Men</li><li class=\"\">Water resistant: 3bar Waterproof</li><li class=\"\">Strap material: Cowhide</li><li class=\"\">Item Type: Brand Stainless Steel Men Watch</li><li class=\"\">Weight : 68g</li><li class=\"\">#watche</li><li class=\"\">#watche for men</li></ul></div><div class=\"html-content detail-content\"><ul><li>Dial Window Material Type: Glass</li><li>Dial Diameter: 42mm</li><li>Case Shape: Round</li><li>Band Width: 21mm</li><li>Band Length: 24cm</li><li>Clasp Type: Buckle</li><li>Water Resistance Depth: 3BAR</li><li>Case Thickness: 10mm</li><li>Brand Name: POEDAGAR</li><li>Place of Origin: Guangdong, China</li><li>Type:\r\n CHARM, Fashion, Luxury, sport, Business Feature: Auto Date, , Complete \r\nCalendar, Day/Date, Perpetual Calendar, Luminous Hands, Shock Resistant,\r\n Back Light</li><li>Material: Stainless Steel</li><li>Band Material Type: PU Leather</li><li>Case Material: ALLOY</li><li>Dial Display: Pointer</li><li>Battery Life: 24monthes</li><li>User: Men</li><li>Movement Band: CHENLONG</li><li>Gender: men</li><li>Colors: 4Colors</li><li>Style: Fashion/sports/business</li><li>Movement: Quartz Movement</li><li>Keywords: Wristwatch Men</li><li>Water resistant: 3bar Waterproof</li><li>Strap material: Cowhide</li><li>Item Type: Brand Stainless Steel Men Watch</li><li>Weight : 68g</li><li>#watche</li><li>#watche for men</li></ul><img style=\"width:100%;display:block\" src=\"https://static-01.daraz.com.bd/p/c4c52518e24a982a3a87abf164b6bf41.jpg\"><img style=\"width:100%;display:block\" src=\"https://static-01.daraz.com.bd/p/0197d82a9a731f6555d063ad526a7adc.jpg\"><img style=\"width:100%;display:block\" src=\"https://static-01.daraz.com.bd/p/6a15aefa8926749e8828f81fb5255b5f.jpg\"><img style=\"width:100%;display:block\" src=\"https://static-01.daraz.com.bd/p/67221dd446e0dcf7c36ce3e37556d5ab.jpg\"><img style=\"width:100%;display:block\" src=\"https://static-01.daraz.com.bd/p/a6588fac482b1fa756de8b6c352584b6.jpg\" data-spm-anchor-id=\"0.0.0.i107.33b77463ZnVsOo\"><div></div></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of TRSOYE Brand New luxury fashion leather belt watche wrist-watche for men</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"html-content key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"html-content key-value\">322312304_BD-1670193773</div></li><li class=\"key-li\"><span class=\"key-title\"> Strap Material  </span><div class=\"html-content key-value\">Artificial Leather</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"html-content box-content-html\">watch</div></div></div></div><div class=\"expand-button\"><br></div></div></div></div><p></p>', 0, 0, 0, 'admin/image/product/768403565.webp', 'TRSOYE Brand New luxury fashion leather belt watche wrist-watche for men', 'TRSOYE Brand New luxury fashion leather belt watche wrist-watche for men', 1, '2024-06-05 06:16:18', '2024-06-05 06:16:18'),
(4, 2, 3, 3, 1, 'Eid Special T-shirt | Ek diner kosai ( এক দিনের কসাই) | Men’s T-shirts | 100% polyester fabric | Ak diner koshai t-shirt for men', 'eid-special-t-shirt-ek-diner-kosai-ek-diner-ksai-mens-t-shirts-100-polyester-fabric-ak-diner-koshai-t-shirt-for-men', '04', 355, 100, 124, 'Eid Special T-shirt | Ek diner kosai ( এক দিনের কসাই) | Men’s T-shirts | 100% polyester fabric | Ak diner koshai t-shirt for men', '<div id=\"block-pJYzWPb3ErH\" class=\"pdp-block fixed-width-full block-margin-top background-2\"><div id=\"module_product_detail\" class=\"pdp-block module\"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.293a75a4WMxL1v\">Product\r\n details of Eid Special T-shirt | Ek diner kosai ( এক দিনের কসাই) | \r\nMen’s T-shirts | 100% polyester fabric | Ak diner koshai t-shirt for men</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\"><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Fabric: 100% cotton t-shirt</li><li class=\"\">Print : sublimation print</li><li class=\"\">Color: White</li><li class=\"\">Measurement size: International size chart</li><li class=\"\">100% quality check</li><li class=\"\">Color Guaranteed</li><li class=\"\">High Quality Fabric</li><li class=\"\">7 Days Easy Return</li></ul></div><div class=\"html-content detail-content\"><p>Fabric: 100% cotton t-shirt<br>Print : sublimation print<br>Color: White<br>Measurement size: International size chart<br>100% quality check<br>Color Guaranteed<br>High Quality Fabric<br>7 Days Easy Return</p></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications\r\n of Eid Special T-shirt | Ek diner kosai ( এক দিনের কসাই) | Men’s \r\nT-shirts | 100% polyester fabric | Ak diner koshai t-shirt for men</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"html-content key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"html-content key-value\">368091172_BD-1837726056</div></li><li class=\"key-li\"><span class=\"key-title\"> Main Material  </span><div class=\"html-content key-value\">Polyester</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"html-content box-content-html\">1* ak din er kosai tshirt</div></div></div></div></div></div></div><p></p>', 0, 0, 0, 'admin/image/product/27423545.webp', 'Eid Special T-shirt | Ek diner kosai ( এক দিনের কসাই) | Men’s T-shirts | 100% polyester fabric | Ak diner koshai t-shirt for men', 'Eid Special T-shirt | Ek diner kosai ( এক দিনের কসাই) | Men’s T-shirts | 100% polyester fabric | Ak diner koshai t-shirt for men', 1, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(5, 5, 5, 3, 1, 'Sharee', 'sharee', '05', 1500, 353, 234, 'Japani Soft Silk Green Color Comfortable Saree For Women Without Blouse Piece - Home Office Partywear Suitable for Every Occasion', '<div id=\"block-pJYzWPb3ErH\" class=\"pdp-block fixed-width-full block-margin-top background-2\"><div id=\"module_product_detail\" class=\"pdp-block module\"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.6d8962bfdCWKRv\">Product\r\n details of Japani Soft Silk Green Color Comfortable Saree For Women \r\nWithout Blouse Piece - Home Office Partywear Suitable for Every Occasion</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\"><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Product Type: Saree</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.6d8962bfdCWKRv\">Color : Army Green</li><li class=\"\">Main Material: Silk</li><li class=\"\">Bohor:12 Haat ( 6.5 Miter )</li><li class=\"\">Bohor 41inchi ( 2.28 Haat )</li><li class=\"\">Solid Colour</li><li class=\"\">Only Sharee</li><li class=\"\">No lace will be fitted</li><li class=\"\">Perfect wear for formal occasions</li></ul></div><div class=\"html-content detail-content\"><span style=\"color: #000000;font-family: helvetica;font-size: 14.0px;font-style: normal;font-variant-ligatures: normal;font-variant-caps: normal;font-weight: 400;letter-spacing: normal;orphans: 2;text-align: start;text-indent: 0.0px;text-transform: none;white-space: normal;widows: 2;word-spacing: 0.0px;-webkit-text-stroke-width: 0.0px;background-color: #ffffff;text-decoration-style: initial;text-decoration-color: initial;display: inline;float: none;\">Saree\r\n is a very common dress in this subcontinental area like Bangladesh. \r\nThis saree is made of silk fabrics and also including a matching blouse \r\npiece. It is also extremely versatile as it can be successfully \r\nincorporated into any look. It is one of the most popular wears for \r\ndifferent festivals and weddings occasion. Women look very gorgeous in \r\ncolorful saree, and so they love to wear and have luxurious and colorful\r\n saree for different social and cultural functions. It will keep you \r\nlooking and feeling good all day long. The young lady to an elderly \r\nperson every woman is fascinated about saree just because of our \r\nculture.</span></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications\r\n of Japani Soft Silk Green Color Comfortable Saree For Women Without \r\nBlouse Piece - Home Office Partywear Suitable for Every Occasion</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"html-content key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"html-content key-value\">132168846_BD-1052966065</div></li><li class=\"key-li\"><span class=\"key-title\"> Main Material  </span><div class=\"html-content key-value\">Silk</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"html-content box-content-html\">1 pis sharee</div></div></div></div></div></div></div><p></p>', 0, 0, 0, 'admin/image/product/606912600.webp', 'Japani Soft Silk Green Color Comfortable Saree For Women Without Blouse Piece - Home Office Partywear Suitable for Every Occasion', 'Japani Soft Silk Green Color Comfortable Saree For Women Without Blouse Piece - Home Office Partywear Suitable for Every Occasion', 1, '2024-06-05 06:27:56', '2024-06-05 06:27:56'),
(6, 2, 6, 3, 1, 'Panjabe', 'panjabe', '06', 670, 488, 125, 'White Panjabi with Chest Contrast. Soft Cotton, Panjabi for men Brand new design. Stylish and trendy Item', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.1a131f8bVEjmHT\">Product details of White Panjabi with Chest Contrast. Soft Cotton, Panjabi for men Brand new design. Stylish and trendy Item</h2><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Product Type: Panjabi</li><li class=\"\">Color: Color.Same as Picture</li><li class=\"\">Gender: Men</li><li class=\"\">Main Material: Silk</li><li class=\"\">Best Production quality,</li><li class=\"\">Unique design,</li><li class=\"\">Stylish and Fashionable</li><li class=\"\">#panjabi</li><li class=\"\">#panjabi for men</li></ul></div><div class=\"html-content detail-content\"><img style=\"width:100%;display:block\" src=\"https://static-01.daraz.com.bd/p/a9d5a45f44e49bbb40927d5906cdf86f.jpg\"><div></div></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of White Panjabi with Chest Contrast. Soft Cotton, Panjabi for men Brand new design. Stylish and trendy Item</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"html-content key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"html-content key-value\">325269082_BD-1871293755</div></li><li class=\"key-li\"><span class=\"key-title\"> Main Material  </span><div class=\"html-content key-value\">Cotton</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"html-content box-content-html\">White Panjabi with Chest Contrast. Soft Cotton, Panjabi for men Brand new design. Stylish and trendy Item</div></div></div></div><p></p>', 0, 0, 0, 'admin/image/product/844527559.webp', 'White Panjabi with Chest Contrast. Soft Cotton, Panjabi for men Brand new design. Stylish and trendy Item', 'White Panjabi with Chest Contrast. Soft Cotton, Panjabi for men Brand new design. Stylish and trendy Item', 1, '2024-06-05 06:31:46', '2024-06-05 06:31:46'),
(7, 5, 7, 2, 1, 'Night Vision Glass & HD Polarized Anti-Fog Sun Glass For Biker', 'night-vision-glass-hd-polarized-anti-fog-sun-glass-for-biker', '07', 300, 111, 10, 'Night Vision Glass & HD Polarized Anti-Fog Sun Glass For Biker', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.72d24f80aRQQh7\">Product details of Night Vision Glass  &amp; HD Polarized Anti-Fog Sun Glass For Biker</h2><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Product Name: Night vision Glass</li><li class=\"\">Material: Chas</li><li class=\"\">Color: Yellow </li><li class=\"\">Model: Night Vision 01</li><li class=\"\">Size: Regular Size </li><li class=\"\">Type 1: Biker Glass or cycling </li><li class=\"\">Use for:  Motorcycle Rider </li><li class=\"\">Quantity: 1 Pis / Set</li></ul></div><div class=\"html-content detail-content\"><ul><li><img src=\"https://static-01.daraz.com.bd/p/f3a4fb3b706ed2414b89354bb95b5d58.jpg\"></li></ul></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of Night Vision Glass  &amp; HD Polarized Anti-Fog Sun Glass For Biker</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"html-content key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"html-content key-value\">220779617_BD-1167895640</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"html-content box-content-html\">1 Pis Sun Glass Night vision</div></div></div></div><p></p>', 0, 0, 0, 'admin/image/product/1814687354.jpg', 'Night Vision Glass & HD Polarized Anti-Fog Sun Glass For Biker', 'Night Vision Glass & HD Polarized Anti-Fog Sun Glass For Biker', 1, '2024-06-05 06:34:42', '2024-06-05 06:34:42'),
(8, 2, 8, 3, 1, 'Shirt', 'shirt', '08', 980, 329, 123, 'Black & White Check Shirt For Men - Denim Shirt For Men', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.16096041tfv3qu\">Product details of Black &amp; White Check Shirt For Men - Denim Shirt For Men</h2><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Material : Cotton</li><li class=\"\">Fabric Classification</li><li class=\"\">Pattern : Solid Color</li><li class=\"\">Collar : Square Neck</li><li class=\"\">Colour :Black</li><li class=\"\">Sleeve Length : Long Sleeve</li><li class=\"\">Plate Type : Slim</li><li class=\"\">Sales Channel Type : E-commerce Only Sells Online</li><li class=\"\">Material Composition : 100% Cotton</li><li class=\"\">Size : M,L,XL</li><li class=\"\">M- long: 29\", body: 40\"</li><li class=\"\">L- long: 30 \", body: 42\"</li><li class=\"\">XL- long: 31\", body: 44</li><li class=\"\">#DenimShirtforMen</li></ul></div><div class=\"html-content detail-content\"><img style=\"width:100%;display:block\" src=\"https://static-01.daraz.com.bd/p/be8bfe052acaceebf4833806ca3ebf47.png\"><img style=\"width:100%;display:block\" src=\"https://static-01.daraz.com.bd/p/66dd3f37965f757a91ad20e65dc60ca8.jpg\"><div></div></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of Black &amp; White Check Shirt For Men - Denim Shirt For Men</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"html-content key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"html-content key-value\">291298976_BD-1296113540</div></li><li class=\"key-li\"><span class=\"key-title\"> Main Material  </span><div class=\"html-content key-value\">Nylon,Cotton</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"html-content box-content-html\">1 Piece Shirt for men</div></div></div></div><p></p>', 0, 0, 0, 'admin/image/product/887633192.webp', 'Black & White Check Shirt For Men - Denim Shirt For Men', 'Black & White Check Shirt For Men - Denim Shirt For Men', 1, '2024-06-05 06:38:17', '2024-06-05 06:38:17'),
(9, 5, 9, 3, 1, 'Rain Coats for Men Waterproof Jacket and Pant with Bag blue', 'rain-coats-for-men-waterproof-jacket-and-pant-with-bag-blue', '09', 2000, 680, 324, 'Rain Coats for Men Waterproof Jacket and Pant with Bag blue', '<div id=\"block-pJYzWPb3ErH\" class=\"pdp-block fixed-width-full block-margin-top background-2\"><div id=\"module_product_detail\" class=\"pdp-block module\"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.39565624ZRe3s2\">Product details of Rain Coats for Men Waterproof Jacket and Pant with Bag  blue</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\"><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Product Type: Raincoat</li><li class=\"\">Color: Dark blue</li><li class=\"\">Main Material: Naylon</li><li class=\"\">Stylish and fashionable</li><li class=\"\">Gender: Men</li><li class=\"\">Good Quality</li><li class=\"\">First Delivery</li></ul></div><div class=\"html-content detail-content\"><ul><li>Product Type: Raincoat</li><li>Color: Dark blue</li><li>Main Material: Naylon</li><li>Stylish and fashionable</li><li>Gender: Men</li><li>Good Quality</li><li>First Delivery</li></ul></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of Rain Coats for Men Waterproof Jacket and Pant with Bag  blue</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"html-content key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"html-content key-value\">183833690_BD-1128413270</div></li><li class=\"key-li\"><span class=\"key-title\"> Main Material  </span><div class=\"html-content key-value\">PVC</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"html-content box-content-html\">Rain Coats for Men Waterproof Jacket and Pant with Bag  blue</div></div></div></div></div></div></div><p></p>', 0, 0, 0, 'admin/image/product/1636954983.jpg', 'Rain Coats for Men Waterproof Jacket and Pant with Bag blue', 'Rain Coats for Men Waterproof Jacket and Pant with Bag blue', 1, '2024-06-05 06:41:17', '2024-06-05 06:41:17'),
(10, 2, 10, 3, 1, 'Elevate Your Style With Our Premium Cotton Casual Polo T-Shirt For Men - Perfect For All Seasons And Occasions', 'elevate-your-style-with-our-premium-cotton-casual-polo-t-shirt-for-men-perfect-for-all-seasons-and-occasions', '10', 350, 242, 1223, 'Elevate Your Style With Our Premium Cotton Casual Polo T-Shirt For Men - Perfect For All Seasons And Occasions', '<div id=\"block-pJYzWPb3ErH\" class=\"pdp-block fixed-width-full block-margin-top background-2\"><div id=\"module_product_detail\" class=\"pdp-block module\"><h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i2.6a9572492riTED\">Product\r\n details of Elevate Your Style With Our Premium Cotton Casual Polo \r\nT-Shirt For Men - Perfect For All Seasons And Occasions</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\"><div class=\"pdp-product-desc \"><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Highlights·\r\n        ProductType: Polo T-shirt·        Material: cotton·        \r\nGender: Men·        Fit Type: Regular Fit·        Stylish Design·       \r\n 100% QC Pass.·        Export Quality Swing·        GSM: 170 (+-10)·    \r\n    Occasion: Casual Summer Wear and sports.·        7 days Return Easy \r\nReturn·        Made in: Bangladesh·        All-Over Printed·        \r\nPrint QC Passed·        Brand: Ahmed Lifestyle·      Size Chart:·       \r\n M - Chest - 38\", Length – 28”·        L - Chest - 40\"Length - 29\"·     \r\n   XL- Chest - 42\", Length – 30\"</li></ul></div><div class=\"html-content detail-content\"><p><strong>Premium quality Polo Shirt\r\nwith 100% QC pass product. Fabric and swing is very high quality. This Polo\r\nShirt is suitable for any condition of winter. It\'s casual looking and also\r\nvery stylish. </strong></p>\r\n\r\n<p><b></b></p>\r\n\r\n<p><b>About </b><b>:</b></p>\r\n\r\n<p data-spm-anchor-id=\"0.0.0.i15.73c17463b9URzg\"><b>Ahmed Lifestyle is a trusted and reliable fashion product seller\r\nin all over the Bangladesh. Ahmed lifestyle </b><strong>manufactures quality products. </strong><b>Always we follow our quality. We Provides\r\npremium quality 100% QC pass product &amp; always remind that “a return\r\ncustomer is our business asset”.</b><span style=\"font-size: 14px;\"></span><b style=\"font-size: 14px;\">&nbsp;</b></p><p data-spm-anchor-id=\"0.0.0.i15.73c17463b9URzg\"><img style=\"width:100%;display:block\" src=\"https://static-01.daraz.com.bd/p/e7a32d2228b38987c64d90d7bcf413c6.jpg\"></p><p data-spm-anchor-id=\"0.0.0.i15.73c17463b9URzg\"><img style=\"width:100%;display:block\" src=\"https://static-01.daraz.com.bd/p/2d73b111286562215867b1dcde666874.jpg\"></p><div></div></div><div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \">Specifications of Elevate Your Style With Our Premium Cotton Casual Polo T-Shirt For Men - Perfect For All Seasons And Occasions</h2><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"html-content key-value\">No Brand</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"html-content key-value\">315409493_BD-1708124813</div></li><li class=\"key-li\"><span class=\"key-title\"> Main Material  </span><div class=\"html-content key-value\">Cotton</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"html-content box-content-html\">1 pcs</div></div></div></div><div class=\"expand-button\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.6a9572492riTED\"><br></div></div></div></div><p></p>', 0, 0, 0, 'admin/image/product/1714322849.jpg', 'Elevate Your Style With Our Premium Cotton Casual Polo T-Shirt For Men - Perfect For All Seasons And Occasions', 'Elevate Your Style With Our Premium Cotton Casual Polo T-Shirt For Men - Perfect For All Seasons And Occasions', 1, '2024-06-05 06:44:08', '2024-06-05 06:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-06-05 06:02:08', '2024-06-05 06:02:08'),
(2, 2, 1, '2024-06-05 06:07:12', '2024-06-05 06:07:12'),
(3, 2, 2, '2024-06-05 06:07:12', '2024-06-05 06:07:12'),
(4, 3, 1, '2024-06-05 06:16:18', '2024-06-05 06:16:18'),
(5, 4, 1, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(6, 4, 2, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(7, 5, 1, '2024-06-05 06:27:56', '2024-06-05 06:27:56'),
(8, 5, 2, '2024-06-05 06:27:56', '2024-06-05 06:27:56'),
(9, 6, 1, '2024-06-05 06:31:46', '2024-06-05 06:31:46'),
(10, 6, 2, '2024-06-05 06:31:46', '2024-06-05 06:31:46'),
(11, 7, 1, '2024-06-05 06:34:42', '2024-06-05 06:34:42'),
(12, 8, 1, '2024-06-05 06:38:17', '2024-06-05 06:38:17'),
(13, 8, 2, '2024-06-05 06:38:17', '2024-06-05 06:38:17'),
(14, 9, 1, '2024-06-05 06:41:17', '2024-06-05 06:41:17'),
(15, 9, 2, '2024-06-05 06:41:17', '2024-06-05 06:41:17'),
(16, 10, 1, '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(17, 10, 2, '2024-06-05 06:44:08', '2024-06-05 06:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin/image/other-images/548.jpeg', '2024-06-05 06:02:08', '2024-06-05 06:02:08'),
(2, 1, 'admin/image/other-images/1374.jpeg', '2024-06-05 06:02:08', '2024-06-05 06:02:08'),
(3, 2, 'admin/image/other-images/208.webp', '2024-06-05 06:07:12', '2024-06-05 06:07:12'),
(4, 2, 'admin/image/other-images/1159.webp', '2024-06-05 06:07:12', '2024-06-05 06:07:12'),
(5, 3, 'admin/image/other-images/4653.webp', '2024-06-05 06:16:18', '2024-06-05 06:16:18'),
(6, 3, 'admin/image/other-images/1886.webp', '2024-06-05 06:16:18', '2024-06-05 06:16:18'),
(7, 4, 'admin/image/other-images/870.webp', '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(8, 4, 'admin/image/other-images/4246.webp', '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(9, 5, 'admin/image/other-images/2321.webp', '2024-06-05 06:27:56', '2024-06-05 06:27:56'),
(10, 5, 'admin/image/other-images/3286.webp', '2024-06-05 06:27:56', '2024-06-05 06:27:56'),
(11, 6, 'admin/image/other-images/4673.jpeg', '2024-06-05 06:31:46', '2024-06-05 06:31:46'),
(12, 6, 'admin/image/other-images/3185.webp', '2024-06-05 06:31:46', '2024-06-05 06:31:46'),
(13, 6, 'admin/image/other-images/1271.webp', '2024-06-05 06:31:46', '2024-06-05 06:31:46'),
(14, 7, 'admin/image/other-images/4727.jpeg', '2024-06-05 06:34:42', '2024-06-05 06:34:42'),
(15, 7, 'admin/image/other-images/1903.jpeg', '2024-06-05 06:34:42', '2024-06-05 06:34:42'),
(16, 8, 'admin/image/other-images/1145.jpeg', '2024-06-05 06:38:17', '2024-06-05 06:38:17'),
(17, 8, 'admin/image/other-images/1120.webp', '2024-06-05 06:38:17', '2024-06-05 06:38:17'),
(18, 9, 'admin/image/other-images/1426.jpeg', '2024-06-05 06:41:17', '2024-06-05 06:41:17'),
(19, 9, 'admin/image/other-images/474.jpeg', '2024-06-05 06:41:17', '2024-06-05 06:41:17'),
(20, 10, 'admin/image/other-images/1877.jpeg', '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(21, 10, 'admin/image/other-images/1867.jpeg', '2024-06-05 06:44:08', '2024-06-05 06:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-06-05 06:02:08', '2024-06-05 06:02:08'),
(2, 1, 2, '2024-06-05 06:02:08', '2024-06-05 06:02:08'),
(3, 1, 3, '2024-06-05 06:02:08', '2024-06-05 06:02:08'),
(4, 2, 1, '2024-06-05 06:07:12', '2024-06-05 06:07:12'),
(5, 2, 3, '2024-06-05 06:07:12', '2024-06-05 06:07:12'),
(6, 3, 1, '2024-06-05 06:16:18', '2024-06-05 06:16:18'),
(7, 3, 6, '2024-06-05 06:16:18', '2024-06-05 06:16:18'),
(8, 4, 3, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(9, 4, 4, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(10, 4, 5, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(11, 4, 6, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(12, 5, 1, '2024-06-05 06:27:56', '2024-06-05 06:27:56'),
(13, 6, 1, '2024-06-05 06:31:46', '2024-06-05 06:31:46'),
(14, 6, 5, '2024-06-05 06:31:46', '2024-06-05 06:31:46'),
(15, 7, 1, '2024-06-05 06:34:42', '2024-06-05 06:34:42'),
(16, 8, 1, '2024-06-05 06:38:17', '2024-06-05 06:38:17'),
(17, 9, 1, '2024-06-05 06:41:17', '2024-06-05 06:41:17'),
(18, 10, 1, '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(19, 10, 3, '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(20, 10, 4, '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(21, 10, 5, '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(22, 10, 6, '2024-06-05 06:44:08', '2024-06-05 06:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
('8gRIR0R7ThsKQZogHLkURwVYcaUNtcmb2ErdRySm', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6IlhmRUhPWFFSd0tVbkVMazFmT3JGeERoWEY4SVdLcXJocXlNSDllVUwiO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ2OiJodHRwOi8vbG9jYWxob3N0L2Vjb20tYmF0Y2gtMTEvcHVibGljL2NoZWNrb3V0Ijt9czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozMjoiZjRmZjg5NDhjYzY3OGNiNGRjODRiMWVhOWUyNTE1MmMiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiZjRmZjg5NDhjYzY3OGNiNGRjODRiMWVhOWUyNTE1MmMiO3M6MjoiaWQiO3M6MToiMyI7czozOiJxdHkiO3M6MToiMiI7czo0OiJuYW1lIjtzOjU6IldhdGNoIjtzOjU6InByaWNlIjtkOjMwOTtzOjY6IndlaWdodCI7ZDo1NTA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6NDp7czo0OiJzaXplIjtzOjg6IlN0YW5kYXJkIjtzOjU6ImNvbG9yIjtzOjU6IkJsYWNrIjtzOjU6ImltYWdlIjtzOjM0OiJhZG1pbi9pbWFnZS9wcm9kdWN0Lzc2ODQwMzU2NS53ZWJwIjtzOjQ6ImNvZGUiO3M6MjoiMDMiO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NzoidGF4UmF0ZSI7aToyMTtzOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtOO3M6NDY6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBkaXNjb3VudFJhdGUiO2k6MDtzOjg6Imluc3RhbmNlIjtzOjc6ImRlZmF1bHQiO31zOjMyOiI5ZjY1OWY3NmYxN2NiNDBkOWFiNjUyZDY1ZTQ2OTU0OSI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjExOntzOjU6InJvd0lkIjtzOjMyOiI5ZjY1OWY3NmYxN2NiNDBkOWFiNjUyZDY1ZTQ2OTU0OSI7czoyOiJpZCI7czoxOiIyIjtzOjM6InF0eSI7czoxOiIxIjtzOjQ6Im5hbWUiO3M6MzY6Ik1vdG9yb2xhIGUyMnMgNEdCLzY0R0IgNEcgU21hcnRwaG9uZSI7czo1OiJwcmljZSI7ZDoxMTk5OTtzOjY6IndlaWdodCI7ZDo1NTA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6NDp7czo0OiJzaXplIjtzOjg6IlN0YW5kYXJkIjtzOjU6ImNvbG9yIjtzOjU6IkJsYWNrIjtzOjU6ImltYWdlIjtzOjM1OiJhZG1pbi9pbWFnZS9wcm9kdWN0LzE5NTM1NDUzODUud2VicCI7czo0OiJjb2RlIjtzOjI6IjAyIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjc6InRheFJhdGUiO2k6MjE7czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQ2OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AZGlzY291bnRSYXRlIjtpOjA7czo4OiJpbnN0YW5jZSI7czo3OiJkZWZhdWx0Ijt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6ODoiY2hlY2tvdXQiO3M6ODoiY2hlY2tvdXQiO3M6MTA6ImN1c3RvbWVySWQiO2k6MTtzOjEyOiJjdXN0b21lck5hbWUiO3M6MTE6IlN1bWl5YSBUb21hIjtzOjExOiJvcmRlcl90b3RhbCI7ZDoxNDYxMDtzOjk6InRheF90b3RhbCI7ZDoxODkzO3M6MTQ6InNoaXBwaW5nX3RvdGFsIjtpOjEwMDt9', 1720256728),
('9o7AGT1HStASZwW0Z4xKN4GZq4gYmdcXIQw6rJzZ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXN3QUtKS3pqUDJDQzdiYTVCcUJqaXRkS3pBNHc4YkRYZnVRWlhHMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaC0xMS9wdWJsaWMvZXhhbXBsZTIiO319', 1720254776),
('hXPLprNnkWkDbew3M0j9UXQkST4HMj51c5LulpA1', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0RHckZDMjNENnQ5Sm5HS1FpOG5NaHp0ZVFacVdxcERDVTlBbDVnTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaC0xMS9wdWJsaWMvZXhhbXBsZTIiO319', 1720254620),
('jyHZ38qGuf8nEdZ6sBTzq8t6B8D0OkhoFhTeWug3', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekNkYlhRNVp4bGY3RTVBTk5aTjRFRTYzTHFWN3JOSkJCYjhIQ01LaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaC0xMS9wdWJsaWMvY29tcGxldGUtb3JkZXIiO319', 1720257173),
('M17zqeMaPvcrneNWlRovArBCHBVgZxX6cnsnDAIJ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXV3NHFNc05oRjEwRUlVZnpsV3hJMDU0dEVwRkFBb2YyaUYyYWhBbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaC0xMS9wdWJsaWMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720252076),
('q4rUUnrFKZlZsUkDDFooFbd9W2hGkk0ilfseydsJ', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXJRVXFVaUVab1dxQmVsdEpqV0ltOTJRb2c5TGJjbnNRSnZiZ1dTeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaC0xMS9wdWJsaWMvZXhhbXBsZTIiO319', 1720255533),
('uStjGxXFqEmZnjC4kY0vgCdYFJReXWDO0F6IyamP', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiencyU0VCM29VN3FlbjZLdU1jb2ZEbWZDVG83SHNVTjZNMGJjejZVVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720254795),
('WPszQJJputJyp7T8oMajxzLTV8k6Kgrbn03CI7fE', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6ImI2R3hnZmVvRDB5UURld0RXYU9hRTR5RnppdjdwV1czMDlhTENSSGUiO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ2OiJodHRwOi8vbG9jYWxob3N0L2Vjb20tYmF0Y2gtMTEvcHVibGljL2NoZWNrb3V0Ijt9czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Mjp7czozMjoiM2Q1OGZhMWNjOTQ5N2ZkOTYwZjgyNTNiMDQ0NDZhNWMiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiM2Q1OGZhMWNjOTQ5N2ZkOTYwZjgyNTNiMDQ0NDZhNWMiO3M6MjoiaWQiO3M6MToiNCI7czozOiJxdHkiO3M6MToiMSI7czo0OiJuYW1lIjtzOjE1MjoiRWlkIFNwZWNpYWwgVC1zaGlydCB8IEVrIGRpbmVyIGtvc2FpICgg4KaP4KaVIOCmpuCmv+CmqOCnh+CmsCDgppXgprjgpr7gpocpIHwgTWVu4oCZcyBULXNoaXJ0cyB8IDEwMCUgcG9seWVzdGVyIGZhYnJpYyB8IEFrIGRpbmVyIGtvc2hhaSB0LXNoaXJ0IGZvciBtZW4iO3M6NToicHJpY2UiO2Q6MTAwO3M6Njoid2VpZ2h0IjtkOjU1MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTo0OntzOjQ6InNpemUiO3M6NToiU21hbGwiO3M6NToiY29sb3IiO3M6NToiQmxhY2siO3M6NToiaW1hZ2UiO3M6MzM6ImFkbWluL2ltYWdlL3Byb2R1Y3QvMjc0MjM1NDUud2VicCI7czo0OiJjb2RlIjtzOjI6IjA0Ijt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjc6InRheFJhdGUiO2k6MjE7czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7TjtzOjQ2OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AZGlzY291bnRSYXRlIjtpOjA7czo4OiJpbnN0YW5jZSI7czo3OiJkZWZhdWx0Ijt9czozMjoiNDMxZDg4Yjc1ODY1MzA5MDIyYmMyYWJmYmRmZTQzZWMiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiNDMxZDg4Yjc1ODY1MzA5MDIyYmMyYWJmYmRmZTQzZWMiO3M6MjoiaWQiO3M6MToiNiI7czozOiJxdHkiO3M6MToiMSI7czo0OiJuYW1lIjtzOjc6IlBhbmphYmUiO3M6NToicHJpY2UiO2Q6NDg4O3M6Njoid2VpZ2h0IjtkOjU1MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTo0OntzOjQ6InNpemUiO3M6ODoiU3RhbmRhcmQiO3M6NToiY29sb3IiO3M6NToiQmxhY2siO3M6NToiaW1hZ2UiO3M6MzQ6ImFkbWluL2ltYWdlL3Byb2R1Y3QvODQ0NTI3NTU5LndlYnAiO3M6NDoiY29kZSI7czoyOiIwNiI7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo3OiJ0YXhSYXRlIjtpOjIxO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO3M6ODoiaW5zdGFuY2UiO3M6NzoiZGVmYXVsdCI7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjg6ImNoZWNrb3V0IjtzOjg6ImNoZWNrb3V0IjtzOjEwOiJjdXN0b21lcklkIjtpOjE7czoxMjoiY3VzdG9tZXJOYW1lIjtzOjExOiJTdW1peWEgVG9tYSI7czoxMToib3JkZXJfdG90YWwiO2Q6Nzc2O3M6OToidGF4X3RvdGFsIjtkOjg4O3M6MTQ6InNoaXBwaW5nX3RvdGFsIjtpOjEwMDt9', 1720257155),
('xlURNu3UdrptwdUrwFrrQ4s2yvaVvLBcCjbY1eVx', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1lXaFVIR01vdHhHREpZQUNXTnJJWFlSN2ZJbjNpTGg4Zkk3STYzRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaC0xMS9wdWJsaWMvZXhhbXBsZTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720254230),
('XWIX0WDwwayFUM34tCnKc7dM6y9TSzCIpCyosZcs', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGswOHlabkliUFNkMG9vYmVmZzhqaWdhUFpkZTFZZUxSNWxDSVdEZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvZWNvbS1iYXRjaC0xMS9wdWJsaWMvZXhhbXBsZTIiO319', 1720254432),
('Y4yJgZUmrt6F84relsQy6GOjoEslH3ZiEW0zPYD6', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YToxMjp7czo2OiJfdG9rZW4iO3M6NDA6ImNnZHQ3SG1ScUxsV0pTVU1maDBwUUVKc3J4Z2VOMXBJYUFEWmVmaDYiO3M6NjoiX2ZsYXNoIjthOjI6e3M6MzoibmV3IjthOjA6e31zOjM6Im9sZCI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ2OiJodHRwOi8vbG9jYWxob3N0L2Vjb20tYmF0Y2gtMTEvcHVibGljL2NoZWNrb3V0Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRPdE5IT3o4VkZjVEl3YnZzekZMaUguQVdHMU4xQkN3Ui5lOS9OWDNnUG84czBTY3BPNVNHSyI7czo0OiJjYXJ0IjthOjE6e3M6NzoiZGVmYXVsdCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiZDI2NTljMGM0ZWRlZjI0ZmU1YmFiZDM2MDMwMDU3Y2MiO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjoxMTp7czo1OiJyb3dJZCI7czozMjoiZDI2NTljMGM0ZWRlZjI0ZmU1YmFiZDM2MDMwMDU3Y2MiO3M6MjoiaWQiO3M6MToiMSI7czozOiJxdHkiO3M6MToiMSI7czo0OiJuYW1lIjtzOjYxOiJIcCBUaGlua3BhZCBjb3JlIGk1IExhcHRvcCBnZW4gNnRoIHJhbSA4Z2IgY29yZSBpNSBTc2QgMjU2IGdiIjtzOjU6InByaWNlIjtkOjI2NTAwO3M6Njoid2VpZ2h0IjtkOjU1MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTo0OntzOjQ6InNpemUiO3M6ODoiU3RhbmRhcmQiO3M6NToiY29sb3IiO3M6NToiQmxhY2siO3M6NToiaW1hZ2UiO3M6MzQ6ImFkbWluL2ltYWdlL3Byb2R1Y3QvMTE1OTQxNDMzNC5wbmciO3M6NDoiY29kZSI7czoyOiIwMSI7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo3OiJ0YXhSYXRlIjtpOjIxO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO3M6ODoiaW5zdGFuY2UiO3M6NzoiZGVmYXVsdCI7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjg6ImNoZWNrb3V0IjtzOjg6ImNoZWNrb3V0IjtzOjEwOiJjdXN0b21lcklkIjtpOjE7czoxMjoiY3VzdG9tZXJOYW1lIjtzOjExOiJTdW1peWEgVG9tYSI7czoxMToib3JkZXJfdG90YWwiO2Q6MzA1NzU7czo5OiJ0YXhfdG90YWwiO2Q6Mzk3NTtzOjE0OiJzaGlwcGluZ190b3RhbCI7aToxMDA7fQ==', 1720256491);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Standard', 'Standard', 'Standard', '2024-06-05 05:56:56', '2024-06-05 05:56:56'),
(2, 'Normal', 'Normal', 'Normal', '2024-06-05 05:57:06', '2024-06-05 05:57:06'),
(3, 'Small', 'Small', 'Small', '2024-06-05 05:57:22', '2024-06-05 05:57:22'),
(4, 'Medium', 'Medium', 'Medium', '2024-06-05 05:57:36', '2024-06-05 05:57:36'),
(5, 'Large', 'Large', 'Large', '2024-06-05 05:57:46', '2024-06-05 05:57:46'),
(6, 'XL', 'XL', 'XL', '2024-06-05 05:57:57', '2024-06-05 05:57:57'),
(7, 'XXL', 'XXL', 'XXL', '2024-06-05 05:58:06', '2024-06-05 05:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Laptop', 'Laptop', 'admin/image/sub-category/427379957.jpg', 1, '2024-06-05 05:53:40', '2024-06-05 05:53:40'),
(2, 1, 'Mobile', 'Mobile', 'admin/image/sub-category/1167007373.jpg', 1, '2024-06-05 05:54:07', '2024-06-05 05:54:07'),
(3, 2, 'T shirt', 'T shirt', 'admin/image/sub-category/1252406816.jpg', 1, '2024-06-05 05:54:29', '2024-06-05 05:54:29'),
(4, 2, 'Watch', 'Watch', 'admin/image/sub-category/344606346.jpg', 1, '2024-06-05 06:08:16', '2024-06-05 06:08:16'),
(5, 5, 'Women Fashion', 'Women Fashion', 'admin/image/sub-category/159971191.jpg', 1, '2024-06-05 06:23:56', '2024-06-05 06:23:56'),
(6, 2, 'Panjabi', 'Panjabi', 'admin/image/sub-category/142624813.jpg', 1, '2024-06-05 06:28:31', '2024-06-05 06:28:31'),
(7, 5, 'Sun Glass', 'Sun Glass', 'admin/image/sub-category/1698245136.jpg', 1, '2024-06-05 06:32:26', '2024-06-05 06:32:26'),
(8, 5, 'Shirt', 'Shirt', 'admin/image/sub-category/176100756.jpg', 1, '2024-06-05 06:35:37', '2024-06-05 06:35:37'),
(9, 5, 'Coat', 'Coat', 'admin/image/sub-category/1772227526.jpg', 1, '2024-06-05 06:39:23', '2024-06-05 06:39:23'),
(10, 5, 'Polo Shirt', 'Polo Shirt', 'admin/image/sub-category/1774972270.webp', 1, '2024-06-05 06:42:03', '2024-06-05 06:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pice', 'Pice', 'Pice', 1, '2024-06-05 05:55:31', '2024-06-05 05:55:31'),
(2, 'Kilogram', 'KG', 'Kilogram', 1, '2024-06-05 05:55:54', '2024-06-05 05:55:54');

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
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$OtNHOz8VFcTIwbvszFLiH.AWG1N1BCwR.e9/NX3gPo8s0ScpO5SGK', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-05 05:51:21', '2024-06-05 05:51:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_name_unique` (`name`),
  ADD UNIQUE KEY `colors_code_unique` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`) USING HASH;

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_name_unique` (`name`),
  ADD UNIQUE KEY `sizes_code_unique` (`code`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_unique` (`name`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
