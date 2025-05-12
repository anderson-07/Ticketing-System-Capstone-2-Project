-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2025 at 05:57 AM
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
-- Database: `datapms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `requestable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `model_number` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accessories_users`
--

CREATE TABLE `accessories_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `action_logs`
--

CREATE TABLE `action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action_type` varchar(191) NOT NULL,
  `target_id` int(11) DEFAULT NULL,
  `target_type` varchar(191) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `filename` text DEFAULT NULL,
  `item_type` varchar(191) NOT NULL,
  `item_id` int(11) NOT NULL,
  `expected_checkin` date DEFAULT NULL,
  `accepted_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `accept_signature` varchar(100) DEFAULT NULL,
  `log_meta` text DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `stored_eula` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL,
  `api_keys` varchar(250) NOT NULL,
  `expiry_date` date NOT NULL,
  `status` enum('Active','Expirec','','') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `api_keys`
--

INSERT INTO `api_keys` (`id`, `api_keys`, `expiry_date`, `status`) VALUES
(1, '', '0000-00-00', ''),
(2, '43db0ed09ee03c9155a429aa1089cbf29dbf97ddb56092dbe01fca40928750db', '0000-00-00', 'Active'),
(3, 'f2289d12b1c08e4a8153f852483e68c27f50c59ace879e63dec0a59a47131043', '0000-00-00', ''),
(4, 'da52737f39adbc687107db8dbf3b018b8eae2ca517e01d82ccddb8438015af6d', '0000-00-00', ''),
(5, 'be98279a68a4f493fe8f509b7f2033fdcff276db77f77edc4792618e6317183d', '0000-00-00', ''),
(6, '57cc66bcf43fc149bf18b0244973ee44237d7a2aad48995abdc96b82299361f3', '0000-00-00', ''),
(7, '32b5af4ca17b1bf15dde8095c204d704e257dbe3fd0b6e684141cf8016aca2b7', '0000-00-00', 'Active'),
(8, '2f2787e3c46e389c57cfbe407c548c979a863a307465758b546b18718b363e69', '0000-00-00', 'Active'),
(9, '03d9fcb3e565cc4a089a843a5c41f0f83c201fd35651b7d5cf2052b3729498d0', '0000-00-00', 'Active'),
(10, 'bf07ff33040a1ec39497dc43b037092fac442c37096b6e71f6f0964e05d9726b', '0000-00-00', 'Active'),
(11, '94834503a8b9220300ac61c90fcbcd319d84dc749b92ae4e5ee7e3fab826fab7', '0000-00-00', 'Active'),
(12, '39406ffaf4b95b3a3bc5cab1e076d3613cb9f15c5df351e36fa9aa6ff0cbd976', '0000-00-00', 'Active'),
(13, 'df3e3840b6cebee814735a52e88de2d1f10e57b09f083562011826bae6629dc9', '0000-00-00', 'Active'),
(14, 'aadf1a000b4d9a1527165ac02f5da52f85d5b05b63483d64a39083d2261ff722', '0000-00-00', 'Active'),
(15, 'ffc00872a53dffb18a4a966b2111fab7e7446179d569d8de879d2a6464df1999', '0000-00-00', 'Active'),
(16, '44410a292216041429f745b0c7ca4ecd142c72e305839043733c3752e3cce850', '0000-00-00', 'Active'),
(17, '709ff5c6a58eff8537e52d4706f80620b6ead86581e2824e231f3e75b2197482', '0000-00-00', 'Active'),
(18, '048a6b93ccedc3c9093478b2bb9cdf6f5f34a058b0edeb37be209991172ded26', '0000-00-00', 'Active'),
(19, '6478490ead47434a83bf835f8d01cfec56815f4a15c6f6f38a1494941d19337b', '0000-00-00', 'Active'),
(20, 'dc2420dc2f2e3ce10ca16c76fa781fdc75bb974b8daf844f9da3caf6db5e3a7e', '0000-00-00', 'Active'),
(21, '4a68ac146d50359ddd4f49f4ca4883a6faa72e82247ada2c64958f2c3753e8f3', '0000-00-00', 'Active'),
(22, '70b064aca5f7c808ea161bf29589464aeda2052f8df54bdc8d628872986792a7', '0000-00-00', 'Active'),
(23, 'e9b19f682b04d853ee6b4763aa3a77e8c0b5ef37a965c4f51b4e48a897d5d8a2', '0000-00-00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `asset_tag` varchar(191) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `serial` varchar(191) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `physical` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `warranty_months` int(11) DEFAULT NULL,
  `depreciate` tinyint(1) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `requestable` tinyint(4) NOT NULL DEFAULT 0,
  `rtd_location_id` int(11) DEFAULT NULL,
  `accepted` varchar(191) DEFAULT NULL,
  `last_checkout` datetime DEFAULT NULL,
  `expected_checkin` date DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `assigned_type` varchar(191) DEFAULT NULL,
  `last_audit_date` datetime DEFAULT NULL,
  `next_audit_date` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `checkin_counter` int(11) NOT NULL DEFAULT 0,
  `checkout_counter` int(11) NOT NULL DEFAULT 0,
  `requests_counter` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `name`, `asset_tag`, `model_id`, `serial`, `purchase_date`, `purchase_cost`, `order_number`, `assigned_to`, `notes`, `image`, `user_id`, `created_at`, `updated_at`, `physical`, `deleted_at`, `status_id`, `archived`, `warranty_months`, `depreciate`, `supplier_id`, `requestable`, `rtd_location_id`, `accepted`, `last_checkout`, `expected_checkin`, `company_id`, `assigned_type`, `last_audit_date`, `next_audit_date`, `location_id`, `checkin_counter`, `checkout_counter`, `requests_counter`) VALUES
(44, 'DESKTOP1', NULL, 9876, '12356', '2025-05-01', 47999.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(45, 'DESKTOP2', NULL, 13251, 'qwer1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(617, '002Desktop004', NULL, 234567, 'SSD22111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(618, '002Desktop004', NULL, 234568, 'SSD22112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(619, '002Desktop004', NULL, 234567, 'SSD22111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(620, 'Desktop00001', NULL, 12345, 'qwerasd234', '2025-05-01', 9999.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 0, 0, 0),
(621, 'Desktop1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 0, 0, 0),
(622, 'Desktop2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 0, 0, 0),
(623, 'Desktop3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 0, 0, 0),
(624, 'Desktop4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 0, 0, 0),
(627, 'Desktop1', '12345', NULL, '1235678', '2020-06-05', 123456.00, '13456', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 0, 0, 0),
(628, 'Desktop1', '12345', NULL, '1235678', '2020-06-05', 123456.00, '13456', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 0, 0, 0),
(629, 'Desktop1', '12345', NULL, '1235678', '2020-06-05', 123456.00, '13456', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(630, 'Desktop1', '12345', NULL, '1235678', '2020-06-05', 123456.00, '13456', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(631, 'Desktop1', '12345', NULL, '1235678', '2020-06-05', 123456.00, '13456', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(632, 'Desktop1', '12345', NULL, '1235678', '2020-06-05', 123456.00, '13456', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(633, 'Desktop1', '12345', NULL, '1235678', '2020-06-05', 123456.00, '13456', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 0, 0, 0),
(634, 'Desktop1', '12345', NULL, '1235678', '2020-06-05', 123456.00, '13456', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 0, 0, 0),
(635, 'Desktop1', '12345', NULL, '1235678', '2020-06-05', 123456.00, '13456', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 0, 0, 0),
(636, 'Desktop1', '12345', NULL, '1235678', '2020-06-05', 123456.00, '13456', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(637, '12342', '12345', NULL, '1235678', '2020-06-05', 123456.00, '13456', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(638, 'Desktop1', '12345', NULL, '1235678', '2020-06-05', 123456.00, '13456', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(642, 'ujdj', NULL, 326471, 'qwertyu123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0),
(643, 'monitor', NULL, 42749, '2345678qwert', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `asset_logs`
--

CREATE TABLE `asset_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action_type` varchar(191) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `checkedout_to` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_type` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `filename` text DEFAULT NULL,
  `requested_at` datetime DEFAULT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `accepted_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `expected_checkin` date DEFAULT NULL,
  `component_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_maintenances`
--

CREATE TABLE `asset_maintenances` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `asset_maintenance_type` varchar(191) NOT NULL,
  `title` varchar(100) NOT NULL,
  `is_warranty` tinyint(1) NOT NULL,
  `start_date` date NOT NULL,
  `completion_date` date DEFAULT NULL,
  `asset_maintenance_time` int(11) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `cost` decimal(20,2) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_uploads`
--

CREATE TABLE `asset_uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `filename` varchar(191) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `filenotes` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backup_info`
--

CREATE TABLE `backup_info` (
  `id` int(11) NOT NULL,
  `app_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `eula_text` longtext DEFAULT NULL,
  `use_default_eula` tinyint(1) NOT NULL DEFAULT 0,
  `require_acceptance` tinyint(1) NOT NULL DEFAULT 0,
  `category_type` varchar(191) DEFAULT 'asset',
  `checkin_email` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `status` enum('Pending','Assigned') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `user_id`, `deleted_at`, `eula_text`, `use_default_eula`, `require_acceptance`, `category_type`, `checkin_email`, `image`, `status`) VALUES
(44, 'DESKTOP1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(45, 'DESKTOP2', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(617, '002Desktop004', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(618, '002Desktop004', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(619, '002Desktop004', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(620, 'Desktop00001', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(621, 'Desktop1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(622, 'Desktop2', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(623, 'Desktop3', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(624, 'System Unit', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(627, 'Desktop1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(628, 'Desktop1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(629, 'Desktop1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(630, 'Desktop1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(631, 'Desktop1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(632, 'Desktop1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(633, 'Desktop1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(634, 'Desktop1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(635, 'Desktop1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(636, 'Desktop1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(637, '12342', NULL, NULL, NULL, NULL, '', 0, 0, 'System Unit', 0, NULL, 'Pending'),
(638, 'Desktop1', NULL, NULL, NULL, NULL, NULL, 0, 0, 'System Unit', 0, NULL, 'Pending'),
(641, 'Desktop1002', NULL, NULL, NULL, NULL, NULL, 0, 0, 'system unit', 0, NULL, 'Pending'),
(642, 'ujdj', NULL, NULL, NULL, NULL, NULL, 0, 0, 'laptop', 0, NULL, 'Pending'),
(643, 'monitor', NULL, NULL, NULL, NULL, NULL, 0, 0, 'monitor', 0, NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `checkout_acceptances`
--

CREATE TABLE `checkout_acceptances` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkoutable_type` varchar(191) NOT NULL,
  `checkoutable_id` bigint(20) UNSIGNED NOT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `signature_filename` varchar(191) DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `declined_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `stored_eula` text DEFAULT NULL,
  `stored_eula_file` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checkout_requests`
--

CREATE TABLE `checkout_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `requestable_id` int(11) NOT NULL,
  `requestable_type` varchar(191) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `canceled_at` datetime DEFAULT NULL,
  `fulfilled_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `order_number` varchar(191) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `serial` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_assets`
--

CREATE TABLE `components_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `assigned_qty` int(11) DEFAULT 1,
  `component_id` int(11) DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consumables`
--

CREATE TABLE `consumables` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `requestable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(191) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `min_amt` int(11) DEFAULT NULL,
  `model_number` varchar(191) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `item_no` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consumables_users`
--

CREATE TABLE `consumables_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `format` varchar(191) NOT NULL,
  `element` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `field_values` text DEFAULT NULL,
  `field_encrypted` tinyint(1) NOT NULL DEFAULT 0,
  `db_column` varchar(191) DEFAULT NULL,
  `help_text` text DEFAULT NULL,
  `show_in_email` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) DEFAULT 0,
  `display_in_user_view` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fieldsets`
--

CREATE TABLE `custom_fieldsets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_custom_fieldset`
--

CREATE TABLE `custom_field_custom_fieldset` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_fieldset_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `notes` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `depreciations`
--

CREATE TABLE `depreciations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `months` int(11) NOT NULL,
  `depreciation_min` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `file_path` varchar(191) NOT NULL,
  `filesize` int(11) NOT NULL,
  `import_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `header_row` text DEFAULT NULL,
  `first_row` text DEFAULT NULL,
  `field_map` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kits`
--

CREATE TABLE `kits` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kits_accessories`
--

CREATE TABLE `kits_accessories` (
  `id` int(10) UNSIGNED NOT NULL,
  `kit_id` int(11) DEFAULT NULL,
  `accessory_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kits_consumables`
--

CREATE TABLE `kits_consumables` (
  `id` int(10) UNSIGNED NOT NULL,
  `kit_id` int(11) DEFAULT NULL,
  `consumable_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kits_licenses`
--

CREATE TABLE `kits_licenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `kit_id` int(11) DEFAULT NULL,
  `license_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kits_models`
--

CREATE TABLE `kits_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `kit_id` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `serial` text DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_cost` decimal(20,2) DEFAULT NULL,
  `order_number` varchar(50) DEFAULT NULL,
  `seats` int(11) NOT NULL DEFAULT 1,
  `notes` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `depreciation_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `license_name` varchar(120) DEFAULT NULL,
  `license_email` varchar(191) DEFAULT NULL,
  `depreciate` tinyint(1) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `purchase_order` varchar(191) DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `maintained` tinyint(1) DEFAULT NULL,
  `reassignable` tinyint(1) NOT NULL DEFAULT 1,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_seats`
--

CREATE TABLE `license_seats` (
  `id` int(10) UNSIGNED NOT NULL,
  `license_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT 'Meycauayan',
  `state` varchar(191) DEFAULT 'Bulacan',
  `country` varchar(191) DEFAULT 'Philippines',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `address2` varchar(191) DEFAULT NULL,
  `zip` varchar(10) DEFAULT '3020',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `ldap_ou` varchar(191) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `city`, `state`, `country`, `created_at`, `updated_at`, `user_id`, `address`, `address2`, `zip`, `deleted_at`, `parent_id`, `currency`, `ldap_ou`, `manager_id`, `image`) VALUES
(1, 'SDO-SDS Office', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(2, 'SDO-ASDS Office', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(3, 'SDO-CID Office', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(54, 'SDO-SGOD Office', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(55, 'SDO-ICT UNIT', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(56, 'SDO SHU', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(57, 'SDO-Budget Unit', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(58, 'SDO-Accounting Unit', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(59, 'SDO-Admin Unit', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(60, 'SDO-HR Unit', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(61, 'SDO-Records Unit', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(62, 'SDO-Payroll Section', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(63, 'SDO-Cashier Unit', 'Meycauayan', 'Bulacan', 'Philippines', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]'),
(64, 'SDO-Supply Unit', '[value-3]', '[value-4]', '[value-5]', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '[value-9]', '[value-10]', '[value-11]', '0000-00-00 00:00:00', 0, '[value-14]', '[value-15]', 0, '[value-17]');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) DEFAULT NULL,
  `remote_ip` varchar(45) DEFAULT NULL,
  `user_agent` varchar(191) DEFAULT NULL,
  `successful` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `support_url` varchar(191) DEFAULT NULL,
  `support_phone` varchar(191) DEFAULT NULL,
  `support_email` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `model_number` varchar(191) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `depreciation_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `eol` int(11) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `deprecated_mac_address` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `fieldset_id` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `requestable` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `models_custom_fields`
--

CREATE TABLE `models_custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_model_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `default_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `permissions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requested_assets`
--

CREATE TABLE `requested_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accepted_at` datetime DEFAULT NULL,
  `denied_at` datetime DEFAULT NULL,
  `notes` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `request_code` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `per_page` int(11) NOT NULL DEFAULT 20,
  `site_name` varchar(100) NOT NULL DEFAULT 'Snipe IT Asset Management',
  `qr_code` int(11) DEFAULT NULL,
  `qr_text` varchar(32) DEFAULT NULL,
  `display_asset_name` int(11) DEFAULT NULL,
  `display_checkout_date` int(11) DEFAULT NULL,
  `display_eol` int(11) DEFAULT NULL,
  `auto_increment_assets` int(11) NOT NULL DEFAULT 0,
  `auto_increment_prefix` varchar(191) DEFAULT NULL,
  `load_remote` tinyint(1) NOT NULL DEFAULT 1,
  `logo` varchar(191) DEFAULT NULL,
  `header_color` varchar(191) DEFAULT NULL,
  `alert_email` varchar(191) DEFAULT NULL,
  `alerts_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `default_eula_text` longtext DEFAULT NULL,
  `barcode_type` varchar(191) DEFAULT 'QRCODE',
  `slack_endpoint` varchar(191) DEFAULT NULL,
  `slack_channel` varchar(191) DEFAULT NULL,
  `slack_botname` varchar(191) DEFAULT NULL,
  `default_currency` varchar(10) DEFAULT NULL,
  `custom_css` text DEFAULT NULL,
  `brand` tinyint(4) NOT NULL DEFAULT 1,
  `ldap_enabled` varchar(191) DEFAULT NULL,
  `ldap_server` varchar(191) DEFAULT NULL,
  `ldap_uname` varchar(191) DEFAULT NULL,
  `ldap_pword` longtext DEFAULT NULL,
  `ldap_basedn` varchar(191) DEFAULT NULL,
  `ldap_filter` text DEFAULT NULL,
  `ldap_username_field` varchar(191) DEFAULT 'samaccountname',
  `ldap_lname_field` varchar(191) DEFAULT 'sn',
  `ldap_fname_field` varchar(191) DEFAULT 'givenname',
  `ldap_auth_filter_query` varchar(191) DEFAULT 'uid=',
  `ldap_version` int(11) DEFAULT 3,
  `ldap_active_flag` varchar(191) DEFAULT NULL,
  `ldap_dept` varchar(191) DEFAULT NULL,
  `ldap_emp_num` varchar(191) DEFAULT NULL,
  `ldap_email` varchar(191) DEFAULT NULL,
  `ldap_phone_field` varchar(191) DEFAULT NULL,
  `ldap_jobtitle` varchar(191) DEFAULT NULL,
  `ldap_manager` varchar(191) DEFAULT NULL,
  `ldap_country` varchar(191) DEFAULT NULL,
  `full_multiple_companies_support` tinyint(1) NOT NULL DEFAULT 0,
  `ldap_server_cert_ignore` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(5) DEFAULT 'en',
  `labels_per_page` tinyint(4) NOT NULL DEFAULT 30,
  `labels_width` decimal(6,5) NOT NULL DEFAULT 2.62500,
  `labels_height` decimal(6,5) NOT NULL DEFAULT 1.00000,
  `labels_pmargin_left` decimal(6,5) NOT NULL DEFAULT 0.21975,
  `labels_pmargin_right` decimal(6,5) NOT NULL DEFAULT 0.21975,
  `labels_pmargin_top` decimal(6,5) NOT NULL DEFAULT 0.50000,
  `labels_pmargin_bottom` decimal(6,5) NOT NULL DEFAULT 0.50000,
  `labels_display_bgutter` decimal(6,5) NOT NULL DEFAULT 0.07000,
  `labels_display_sgutter` decimal(6,5) NOT NULL DEFAULT 0.05000,
  `labels_fontsize` tinyint(4) NOT NULL DEFAULT 9,
  `labels_pagewidth` decimal(7,5) NOT NULL DEFAULT 8.50000,
  `labels_pageheight` decimal(7,5) NOT NULL DEFAULT 11.00000,
  `labels_display_name` tinyint(4) NOT NULL DEFAULT 0,
  `labels_display_serial` tinyint(4) NOT NULL DEFAULT 1,
  `labels_display_tag` tinyint(4) NOT NULL DEFAULT 1,
  `alt_barcode` varchar(191) DEFAULT 'C128',
  `alt_barcode_enabled` tinyint(1) DEFAULT 1,
  `alert_interval` int(11) DEFAULT 30,
  `alert_threshold` int(11) DEFAULT 5,
  `email_domain` varchar(191) DEFAULT NULL,
  `email_format` varchar(191) DEFAULT 'filastname',
  `username_format` varchar(191) DEFAULT 'filastname',
  `is_ad` tinyint(1) NOT NULL DEFAULT 0,
  `ad_domain` varchar(191) DEFAULT NULL,
  `ldap_port` varchar(5) NOT NULL DEFAULT '389',
  `ldap_tls` tinyint(1) NOT NULL DEFAULT 0,
  `zerofill_count` int(11) NOT NULL DEFAULT 5,
  `ldap_pw_sync` tinyint(1) NOT NULL DEFAULT 1,
  `two_factor_enabled` tinyint(4) DEFAULT NULL,
  `require_accept_signature` tinyint(1) NOT NULL DEFAULT 0,
  `date_display_format` varchar(191) NOT NULL DEFAULT 'Y-m-d',
  `time_display_format` varchar(191) NOT NULL DEFAULT 'h:i A',
  `next_auto_tag_base` bigint(20) NOT NULL DEFAULT 1,
  `login_note` text DEFAULT NULL,
  `thumbnail_max_h` int(11) DEFAULT 50,
  `pwd_secure_uncommon` tinyint(1) NOT NULL DEFAULT 0,
  `pwd_secure_complexity` varchar(191) DEFAULT NULL,
  `pwd_secure_min` int(11) NOT NULL DEFAULT 8,
  `audit_interval` int(11) DEFAULT NULL,
  `audit_warning_days` int(11) DEFAULT NULL,
  `show_url_in_emails` tinyint(1) NOT NULL DEFAULT 0,
  `custom_forgot_pass_url` varchar(191) DEFAULT NULL,
  `show_alerts_in_menu` tinyint(1) NOT NULL DEFAULT 1,
  `labels_display_company_name` tinyint(1) NOT NULL DEFAULT 0,
  `show_archived_in_list` tinyint(1) NOT NULL DEFAULT 0,
  `dashboard_message` text DEFAULT NULL,
  `support_footer` char(5) DEFAULT 'on',
  `footer_text` text DEFAULT NULL,
  `modellist_displays` char(191) DEFAULT 'image,category,manufacturer,model_number',
  `login_remote_user_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `login_common_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `login_remote_user_custom_logout_url` varchar(191) NOT NULL DEFAULT '',
  `skin` char(191) DEFAULT NULL,
  `show_images_in_email` tinyint(1) NOT NULL DEFAULT 1,
  `admin_cc_email` char(191) DEFAULT NULL,
  `labels_display_model` tinyint(1) NOT NULL DEFAULT 0,
  `privacy_policy_link` char(191) DEFAULT NULL,
  `version_footer` char(5) DEFAULT 'on',
  `unique_serial` tinyint(1) NOT NULL DEFAULT 0,
  `logo_print_assets` tinyint(1) NOT NULL DEFAULT 0,
  `depreciation_method` char(10) DEFAULT 'default',
  `favicon` char(191) DEFAULT NULL,
  `email_logo` char(191) DEFAULT NULL,
  `label_logo` char(191) DEFAULT NULL,
  `allow_user_skin` tinyint(1) NOT NULL DEFAULT 0,
  `show_assigned_assets` tinyint(1) NOT NULL DEFAULT 0,
  `login_remote_user_header_name` varchar(191) NOT NULL DEFAULT '',
  `ad_append_domain` tinyint(1) NOT NULL DEFAULT 0,
  `saml_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `saml_idp_metadata` text DEFAULT NULL,
  `saml_attr_mapping_username` varchar(191) DEFAULT NULL,
  `saml_forcelogin` tinyint(1) NOT NULL DEFAULT 0,
  `saml_slo` tinyint(1) NOT NULL DEFAULT 0,
  `saml_sp_x509cert` text DEFAULT NULL,
  `saml_sp_privatekey` text DEFAULT NULL,
  `saml_custom_settings` text DEFAULT NULL,
  `saml_sp_x509certNew` text DEFAULT NULL,
  `digit_separator` char(191) DEFAULT '1,234.56',
  `ldap_client_tls_cert` text DEFAULT NULL,
  `ldap_client_tls_key` text DEFAULT NULL,
  `dash_chart_type` varchar(191) DEFAULT 'name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status_labels`
--

CREATE TABLE `status_labels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deployable` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `notes` text DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `show_in_nav` tinyint(1) DEFAULT 0,
  `default_label` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `address2` varchar(250) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `phone` varchar(35) DEFAULT NULL,
  `fax` varchar(35) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `notes` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `permissions` text DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `activation_code` varchar(191) DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(191) DEFAULT NULL,
  `reset_password_code` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `gravatar` varchar(191) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `jobtitle` varchar(191) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `employee_num` text DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `username` varchar(191) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` text DEFAULT NULL,
  `ldap_import` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(10) DEFAULT 'en',
  `show_in_list` tinyint(1) NOT NULL DEFAULT 1,
  `two_factor_secret` varchar(32) DEFAULT NULL,
  `two_factor_enrolled` tinyint(1) NOT NULL DEFAULT 0,
  `two_factor_optin` tinyint(1) NOT NULL DEFAULT 0,
  `department_id` int(11) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `skin` varchar(191) DEFAULT NULL,
  `remote` tinyint(1) DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `scim_externalid` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accessories_company_id_index` (`company_id`);

--
-- Indexes for table `accessories_users`
--
ALTER TABLE `accessories_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action_logs`
--
ALTER TABLE `action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_logs_thread_id_index` (`thread_id`),
  ADD KEY `action_logs_created_at_index` (`created_at`),
  ADD KEY `action_logs_item_type_item_id_action_type_index` (`item_type`,`item_id`,`action_type`),
  ADD KEY `action_logs_target_type_target_id_action_type_index` (`target_type`,`target_id`,`action_type`),
  ADD KEY `action_logs_target_type_target_id_index` (`target_type`,`target_id`),
  ADD KEY `action_logs_company_id_index` (`company_id`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_rtd_location_id_index` (`rtd_location_id`),
  ADD KEY `assets_assigned_type_assigned_to_index` (`assigned_type`,`assigned_to`),
  ADD KEY `assets_created_at_index` (`created_at`),
  ADD KEY `assets_deleted_at_status_id_index` (`deleted_at`,`status_id`),
  ADD KEY `assets_deleted_at_model_id_index` (`deleted_at`,`model_id`),
  ADD KEY `assets_deleted_at_assigned_type_assigned_to_index` (`deleted_at`,`assigned_type`,`assigned_to`),
  ADD KEY `assets_deleted_at_supplier_id_index` (`deleted_at`,`supplier_id`),
  ADD KEY `assets_deleted_at_location_id_index` (`deleted_at`,`location_id`),
  ADD KEY `assets_deleted_at_rtd_location_id_index` (`deleted_at`,`rtd_location_id`),
  ADD KEY `assets_deleted_at_asset_tag_index` (`deleted_at`,`asset_tag`),
  ADD KEY `assets_deleted_at_name_index` (`deleted_at`,`name`),
  ADD KEY `assets_serial_index` (`serial`),
  ADD KEY `assets_company_id_index` (`company_id`);

--
-- Indexes for table `asset_logs`
--
ALTER TABLE `asset_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_maintenances`
--
ALTER TABLE `asset_maintenances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_uploads`
--
ALTER TABLE `asset_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_info`
--
ALTER TABLE `backup_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout_acceptances`
--
ALTER TABLE `checkout_acceptances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checkout_acceptances_checkoutable_type_checkoutable_id_index` (`checkoutable_type`,`checkoutable_id`);

--
-- Indexes for table `checkout_requests`
--
ALTER TABLE `checkout_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checkout_requests_user_id_requestable_id_requestable_type` (`user_id`,`requestable_id`,`requestable_type`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_name_unique` (`name`);

--
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_company_id_index` (`company_id`);

--
-- Indexes for table `components_assets`
--
ALTER TABLE `components_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumables`
--
ALTER TABLE `consumables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consumables_company_id_index` (`company_id`);

--
-- Indexes for table `consumables_users`
--
ALTER TABLE `consumables_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fieldsets`
--
ALTER TABLE `custom_fieldsets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_custom_fieldset`
--
ALTER TABLE `custom_field_custom_fieldset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_company_id_index` (`company_id`);

--
-- Indexes for table `depreciations`
--
ALTER TABLE `depreciations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kits`
--
ALTER TABLE `kits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kits_accessories`
--
ALTER TABLE `kits_accessories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kits_consumables`
--
ALTER TABLE `kits_consumables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kits_licenses`
--
ALTER TABLE `kits_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kits_models`
--
ALTER TABLE `kits_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `licenses_company_id_index` (`company_id`);

--
-- Indexes for table `license_seats`
--
ALTER TABLE `license_seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license_seats_license_id_index` (`license_id`),
  ADD KEY `license_seats_assigned_to_license_id_index` (`assigned_to`,`license_id`),
  ADD KEY `license_seats_asset_id_license_id_index` (`asset_id`,`license_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models_custom_fields`
--
ALTER TABLE `models_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requested_assets`
--
ALTER TABLE `requested_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_labels`
--
ALTER TABLE `status_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`),
  ADD KEY `users_company_id_index` (`company_id`),
  ADD KEY `users_username_deleted_at_index` (`username`,`deleted_at`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `accessories_users`
--
ALTER TABLE `accessories_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `action_logs`
--
ALTER TABLE `action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3565;

--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=644;

--
-- AUTO_INCREMENT for table `asset_logs`
--
ALTER TABLE `asset_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_maintenances`
--
ALTER TABLE `asset_maintenances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset_uploads`
--
ALTER TABLE `asset_uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backup_info`
--
ALTER TABLE `backup_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=644;

--
-- AUTO_INCREMENT for table `checkout_acceptances`
--
ALTER TABLE `checkout_acceptances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `checkout_requests`
--
ALTER TABLE `checkout_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `components`
--
ALTER TABLE `components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `components_assets`
--
ALTER TABLE `components_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `consumables`
--
ALTER TABLE `consumables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `consumables_users`
--
ALTER TABLE `consumables_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `custom_fieldsets`
--
ALTER TABLE `custom_fieldsets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `custom_field_custom_fieldset`
--
ALTER TABLE `custom_field_custom_fieldset`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `depreciations`
--
ALTER TABLE `depreciations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kits`
--
ALTER TABLE `kits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kits_accessories`
--
ALTER TABLE `kits_accessories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kits_consumables`
--
ALTER TABLE `kits_consumables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kits_licenses`
--
ALTER TABLE `kits_licenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kits_models`
--
ALTER TABLE `kits_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_seats`
--
ALTER TABLE `license_seats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `models_custom_fields`
--
ALTER TABLE `models_custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `requested_assets`
--
ALTER TABLE `requested_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status_labels`
--
ALTER TABLE `status_labels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
