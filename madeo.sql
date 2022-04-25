-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2022 at 12:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `madeo`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Reconfigure Module:Share', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-09-15 10:09:29', '2020-09-15 10:09:29'),
(2, 'default', 'Reconfigure Module:Share', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-09-15 10:10:46', '2020-09-15 10:10:46'),
(3, 'default', 'Create Share Charge', 1, 'Modules\\Share\\Entities\\ShareCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-15 10:54:01', '2020-09-15 10:54:01'),
(4, 'default', 'Update Share Charge', 1, 'Modules\\Share\\Entities\\ShareCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-15 10:54:21', '2020-09-15 10:54:21'),
(5, 'default', 'Create Share Products', 1, 'Modules\\Share\\Entities\\ShareProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-15 11:57:59', '2020-09-15 11:57:59'),
(6, 'default', 'Update Share Products', 1, 'Modules\\Share\\Entities\\ShareProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-15 12:07:17', '2020-09-15 12:07:17'),
(7, 'default', 'Update Share Products', 1, 'Modules\\Share\\Entities\\ShareProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-15 12:09:21', '2020-09-15 12:09:21'),
(8, 'default', 'Create Fund', 1, 'Modules\\Loan\\Entities\\Fund', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-22 13:58:56', '2020-09-22 13:58:56'),
(9, 'default', 'Create Client Type', 1, 'Modules\\Client\\Entities\\ClientType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-22 13:59:21', '2020-09-22 13:59:21'),
(10, 'default', 'Create Client Identification Type', 1, 'Modules\\Client\\Entities\\ClientIdentificationType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-22 13:59:45', '2020-09-22 13:59:45'),
(11, 'default', 'Create Payment Type', 1, 'Modules\\Core\\Entities\\PaymentType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-22 14:00:09', '2020-09-22 14:00:09'),
(12, 'default', 'Create Loan Purpose', 1, 'Modules\\Loan\\Entities\\LoanPurpose', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-22 14:00:30', '2020-09-22 14:00:30'),
(13, 'default', 'Create Loan Product', 1, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-22 14:04:21', '2020-09-22 14:04:21'),
(14, 'default', 'Create Client', 1, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-22 14:05:08', '2020-09-22 14:05:08'),
(15, 'default', 'Update Client Status', 1, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-22 14:05:24', '2020-09-22 14:05:24'),
(16, 'default', 'Create Loan', 1, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-22 14:06:02', '2020-09-22 14:06:02'),
(17, 'default', 'Approve Loan', 1, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-22 14:06:08', '2020-09-22 14:06:08'),
(18, 'default', 'Disburse Loan', 1, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-09-22 14:06:16', '2020-09-22 14:06:16'),
(19, 'default', 'Create Savings Products', 1, 'Modules\\Savings\\Entities\\SavingsProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-02 06:28:23', '2020-10-02 06:28:23'),
(20, 'default', 'Create Savings', 1, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-02 06:28:35', '2020-10-02 06:28:35'),
(21, 'default', 'Approve Savings', 1, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-02 06:28:40', '2020-10-02 06:28:40'),
(22, 'default', 'Activate Savings', 1, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-02 06:28:44', '2020-10-02 06:28:44'),
(23, 'default', 'Create Share', 1, 'Modules\\Share\\Entities\\Share', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-02 07:49:36', '2020-10-02 07:49:36'),
(24, 'default', 'Update Share', 1, 'Modules\\Share\\Entities\\Share', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-02 10:38:40', '2020-10-02 10:38:40'),
(25, 'default', 'Approve Shares', 1, 'Modules\\Share\\Entities\\Share', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-03 16:22:08', '2020-10-03 16:22:08'),
(26, 'default', 'Activate Share', 1, 'Modules\\Share\\Entities\\Share', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-07 11:15:10', '2020-10-07 11:15:10'),
(27, 'default', 'Create Income Type', 1, 'Modules\\Income\\Entities\\IncomeType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-07 16:49:33', '2020-10-07 16:49:33'),
(28, 'default', 'Redeem Share', 1, 'Modules\\Share\\Entities\\Share', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-08 13:15:09', '2020-10-08 13:15:09'),
(29, 'default', 'Purchase Share', 1, 'Modules\\Share\\Entities\\Share', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-08 13:19:35', '2020-10-08 13:19:35'),
(30, 'default', 'Reconfigure Module:Core', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-11 10:42:55', '2020-10-11 10:42:55'),
(31, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:23', '2020-10-13 08:27:23'),
(32, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:23', '2020-10-13 08:27:23'),
(33, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:23', '2020-10-13 08:27:23'),
(34, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:24', '2020-10-13 08:27:24'),
(35, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:24', '2020-10-13 08:27:24'),
(36, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:24', '2020-10-13 08:27:24'),
(37, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:24', '2020-10-13 08:27:24'),
(38, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:24', '2020-10-13 08:27:24'),
(39, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:25', '2020-10-13 08:27:25'),
(40, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:25', '2020-10-13 08:27:25'),
(41, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:25', '2020-10-13 08:27:25'),
(42, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:25', '2020-10-13 08:27:25'),
(43, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:25', '2020-10-13 08:27:25'),
(44, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:25', '2020-10-13 08:27:25'),
(45, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:26', '2020-10-13 08:27:26'),
(46, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:26', '2020-10-13 08:27:26'),
(47, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:26', '2020-10-13 08:27:26'),
(48, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:26', '2020-10-13 08:27:26'),
(49, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:26', '2020-10-13 08:27:26'),
(50, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:27', '2020-10-13 08:27:27'),
(51, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:28', '2020-10-13 08:27:28'),
(52, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:28', '2020-10-13 08:27:28'),
(53, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:28', '2020-10-13 08:27:28'),
(54, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:29', '2020-10-13 08:27:29'),
(55, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:29', '2020-10-13 08:27:29'),
(56, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:29', '2020-10-13 08:27:29'),
(57, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:30', '2020-10-13 08:27:30'),
(58, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:30', '2020-10-13 08:27:30'),
(59, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:30', '2020-10-13 08:27:30'),
(60, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:30', '2020-10-13 08:27:30'),
(61, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:31', '2020-10-13 08:27:31'),
(62, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:31', '2020-10-13 08:27:31'),
(63, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:31', '2020-10-13 08:27:31'),
(64, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:32', '2020-10-13 08:27:32'),
(65, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:32', '2020-10-13 08:27:32'),
(66, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:32', '2020-10-13 08:27:32'),
(67, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:33', '2020-10-13 08:27:33'),
(68, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:33', '2020-10-13 08:27:33'),
(69, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:34', '2020-10-13 08:27:34'),
(70, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:34', '2020-10-13 08:27:34'),
(71, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:40', '2020-10-13 08:27:40'),
(72, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:40', '2020-10-13 08:27:40'),
(73, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:40', '2020-10-13 08:27:40'),
(74, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:40', '2020-10-13 08:27:40'),
(75, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:40', '2020-10-13 08:27:40'),
(76, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:41', '2020-10-13 08:27:41'),
(77, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:41', '2020-10-13 08:27:41'),
(78, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:41', '2020-10-13 08:27:41'),
(79, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:42', '2020-10-13 08:27:42'),
(80, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:42', '2020-10-13 08:27:42'),
(81, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:42', '2020-10-13 08:27:42'),
(82, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:43', '2020-10-13 08:27:43'),
(83, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:43', '2020-10-13 08:27:43'),
(84, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:44', '2020-10-13 08:27:44'),
(85, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:44', '2020-10-13 08:27:44'),
(86, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:44', '2020-10-13 08:27:44'),
(87, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:45', '2020-10-13 08:27:45'),
(88, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 08:27:45', '2020-10-13 08:27:45'),
(89, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 09:02:47', '2020-10-13 09:02:47'),
(90, 'default', 'Reconfigure Module:Dashboard', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-13 11:48:46', '2020-10-13 11:48:46'),
(91, 'default', 'Create User', 2, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-14 07:36:47', '2020-10-14 07:36:47'),
(92, 'default', 'Create User', 3, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-10-14 07:37:30', '2020-10-14 07:37:30'),
(93, 'default', 'Create User', 4, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2020-10-15 12:41:00', '2020-10-15 12:41:00'),
(94, 'default', 'Create User', 5, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2020-10-15 13:09:08', '2020-10-15 13:09:08'),
(95, 'default', 'Create User', 6, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2020-10-15 13:11:20', '2020-10-15 13:11:20'),
(96, 'default', 'Delete User', 4, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2020-10-15 13:27:18', '2020-10-15 13:27:18'),
(97, 'default', 'Delete User', 6, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2020-10-15 13:32:35', '2020-10-15 13:32:35'),
(98, 'default', 'Update User', 2, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-15 14:23:11', '2020-10-15 14:23:11'),
(99, 'default', 'Update User', 1, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-15 14:25:11', '2020-10-15 14:25:11'),
(100, 'default', 'Update User', 1, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-15 14:26:46', '2020-10-15 14:26:46'),
(101, 'default', 'Create Role', 3, 'Spatie\\Permission\\Models\\Role', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-10-18 09:54:50', '2020-10-18 09:54:50'),
(102, 'default', 'Update Role', 3, 'Spatie\\Permission\\Models\\Role', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-10-18 09:59:39', '2020-10-18 09:59:39'),
(103, 'default', 'Update Settings', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-18 17:34:34', '2020-10-18 17:34:34'),
(104, 'default', 'Update Settings', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-18 17:34:43', '2020-10-18 17:34:43'),
(105, 'default', 'Create Currency', 2, 'Modules\\Core\\Entities\\Currency', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-19 07:15:21', '2020-10-19 07:15:21'),
(106, 'default', 'Update Currency', 1, 'Modules\\Core\\Entities\\Currency', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-19 07:32:24', '2020-10-19 07:32:24'),
(107, 'default', 'Create Payment Type', 2, 'Modules\\Core\\Entities\\PaymentType', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-19 07:57:26', '2020-10-19 07:57:26'),
(108, 'default', 'Update Payment Type', 2, 'Modules\\Core\\Entities\\PaymentType', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-19 08:17:20', '2020-10-19 08:17:20'),
(109, 'default', 'Create Branch', 2, 'Modules\\Branch\\Entities\\Branch', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-20 07:51:37', '2020-10-20 07:51:37'),
(110, 'default', 'Update Branch', 2, 'Modules\\Branch\\Entities\\Branch', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-20 07:57:09', '2020-10-20 07:57:09'),
(111, 'default', 'Create Chart Of Account', 1, 'Modules\\Accounting\\Entities\\ChartOfAccount', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-20 10:28:11', '2020-10-20 10:28:11'),
(112, 'default', 'Update Chart Of Account', 1, 'Modules\\Accounting\\Entities\\ChartOfAccount', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-20 10:31:25', '2020-10-20 10:31:25'),
(113, 'default', 'Create Journal Entry', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-20 12:22:55', '2020-10-20 12:22:55'),
(114, 'default', 'Create Client', 2, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-20 14:18:38', '2020-10-20 14:18:38'),
(115, 'default', 'Update Client Status', 2, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-21 11:48:29', '2020-10-21 11:48:29'),
(116, 'default', 'Update Client Status', 2, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-21 11:48:45', '2020-10-21 11:48:45'),
(117, 'default', 'Create Client File', 1, 'Modules\\Client\\Entities\\ClientFile', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-21 12:05:36', '2020-10-21 12:05:36'),
(118, 'default', 'Create Client Identification', 1, 'Modules\\Client\\Entities\\ClientIdentification', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-21 12:06:02', '2020-10-21 12:06:02'),
(119, 'default', 'Update Client Identification', 1, 'Modules\\Client\\Entities\\ClientIdentification', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-21 12:06:16', '2020-10-21 12:06:16'),
(120, 'default', 'Create Client Identification', 2, 'Modules\\Client\\Entities\\ClientIdentification', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-21 13:39:24', '2020-10-21 13:39:24'),
(121, 'default', 'Update Client Identification', 2, 'Modules\\Client\\Entities\\ClientIdentification', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-21 13:44:46', '2020-10-21 13:44:46'),
(122, 'default', 'Update Client Identification', 1, 'Modules\\Client\\Entities\\ClientIdentification', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-21 13:44:59', '2020-10-21 13:44:59'),
(123, 'default', 'Create Client File', 2, 'Modules\\Client\\Entities\\ClientFile', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-21 13:52:40', '2020-10-21 13:52:40'),
(124, 'default', 'Update Client File', 1, 'Modules\\Client\\Entities\\ClientFile', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-21 13:55:03', '2020-10-21 13:55:03'),
(125, 'default', 'Create Client User', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-10-21 14:23:51', '2020-10-21 14:23:51'),
(126, 'default', 'Create Client Type', 2, 'Modules\\Client\\Entities\\ClientType', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-21 14:53:25', '2020-10-21 14:53:25'),
(127, 'default', 'Update Client Type', 2, 'Modules\\Client\\Entities\\ClientType', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-21 14:55:16', '2020-10-21 14:55:16'),
(128, 'default', 'Create Client Title', 1, 'Modules\\Client\\Entities\\Title', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 10:29:05', '2020-10-22 10:29:05'),
(129, 'default', 'Update Client Title', 1, 'Modules\\Client\\Entities\\Title', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 10:30:20', '2020-10-22 10:30:20'),
(130, 'default', 'Create Profession', 1, 'Modules\\Client\\Entities\\Profession', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 10:45:11', '2020-10-22 10:45:11'),
(131, 'default', 'Update Profession', 1, 'Modules\\Client\\Entities\\Profession', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 10:45:21', '2020-10-22 10:45:21'),
(132, 'default', 'Create Client Relationship', 1, 'Modules\\Client\\Entities\\ClientRelationship', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 10:49:55', '2020-10-22 10:49:55'),
(133, 'default', 'Update Client Relationship', 1, 'Modules\\Client\\Entities\\ClientRelationship', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 10:50:07', '2020-10-22 10:50:07'),
(134, 'default', 'Create Client Identification Type', 2, 'Modules\\Client\\Entities\\ClientIdentificationType', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-22 10:56:57', '2020-10-22 10:56:57'),
(135, 'default', 'Update Client Identification Type', 2, 'Modules\\Client\\Entities\\ClientIdentificationType', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-22 10:57:07', '2020-10-22 10:57:07'),
(136, 'default', 'Create Client Next Of Kin', 1, 'Modules\\Client\\Entities\\ClientNextOfKin', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 11:18:43', '2020-10-22 11:18:43'),
(137, 'default', 'Update Client Next Of Kin', 1, 'Modules\\Client\\Entities\\ClientNextOfKin', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 11:26:55', '2020-10-22 11:26:55'),
(138, 'default', 'Create SMS Gateway', 1, 'Modules\\Communication\\Entities\\SmsGateway', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 12:16:41', '2020-10-22 12:16:41'),
(139, 'default', 'Update SMS Gateway', 1, 'Modules\\Communication\\Entities\\SmsGateway', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 12:19:39', '2020-10-22 12:19:39'),
(140, 'default', 'Update SMS Gateway', 1, 'Modules\\Communication\\Entities\\SmsGateway', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 12:19:57', '2020-10-22 12:19:57'),
(141, 'default', 'Create Communication Campaign', 1, 'Modules\\Communication\\Entities\\CommunicationCampaign', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 13:45:51', '2020-10-22 13:45:51'),
(142, 'default', 'Update Communication Campaign', 1, 'Modules\\Communication\\Entities\\CommunicationCampaign', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 13:50:06', '2020-10-22 13:50:06'),
(143, 'default', 'Update Communication Campaign', 1, 'Modules\\Communication\\Entities\\CommunicationCampaign', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 13:59:09', '2020-10-22 13:59:09'),
(144, 'default', 'Create Custom Field', 1, 'Modules\\CustomField\\Entities\\CustomField', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 15:05:01', '2020-10-22 15:05:01'),
(145, 'default', 'Update Custom Field', 1, 'Modules\\CustomField\\Entities\\CustomField', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 15:07:05', '2020-10-22 15:07:05'),
(146, 'default', 'Create Chart Of Account', 2, 'Modules\\Accounting\\Entities\\ChartOfAccount', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-22 16:26:48', '2020-10-22 16:26:48'),
(147, 'default', 'Update Chart Of Account', 2, 'Modules\\Accounting\\Entities\\ChartOfAccount', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-22 16:27:07', '2020-10-22 16:27:07'),
(148, 'default', 'Create Chart Of Account', 3, 'Modules\\Accounting\\Entities\\ChartOfAccount', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-10-22 16:27:26', '2020-10-22 16:27:26'),
(149, 'default', 'Create Chart Of Account', 4, 'Modules\\Accounting\\Entities\\ChartOfAccount', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2020-10-22 16:27:53', '2020-10-22 16:27:53'),
(150, 'default', 'Create Chart Of Account', 5, 'Modules\\Accounting\\Entities\\ChartOfAccount', 1, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2020-10-22 16:28:11', '2020-10-22 16:28:11'),
(151, 'default', 'Create Expense Type', 1, 'Modules\\Expense\\Entities\\ExpenseType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 16:32:47', '2020-10-22 16:32:47'),
(152, 'default', 'Update Expense Type', 1, 'Modules\\Expense\\Entities\\ExpenseType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 16:34:18', '2020-10-22 16:34:18'),
(153, 'default', 'Create Expense', 1, 'Modules\\Expense\\Entities\\Expense', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 16:56:56', '2020-10-22 16:56:56'),
(154, 'default', 'Update Expense', 1, 'Modules\\Expense\\Entities\\Expense', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-22 16:57:14', '2020-10-22 16:57:14'),
(155, 'default', 'Create Income Type', 2, 'Modules\\Income\\Entities\\IncomeType', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-23 07:10:19', '2020-10-23 07:10:19'),
(156, 'default', 'Update Income Type', 2, 'Modules\\Income\\Entities\\IncomeType', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-10-23 07:12:16', '2020-10-23 07:12:16'),
(157, 'default', 'Update Income Type', 1, 'Modules\\Income\\Entities\\IncomeType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-23 07:12:31', '2020-10-23 07:12:31'),
(158, 'default', 'Create Income', 1, 'Modules\\Income\\Entities\\Income', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-23 08:08:29', '2020-10-23 08:08:29'),
(159, 'default', 'Update Income', 1, 'Modules\\Income\\Entities\\Income', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-23 08:12:43', '2020-10-23 08:12:43'),
(160, 'default', 'Create Asset Type', 1, 'Modules\\Asset\\Entities\\AssetType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-26 10:50:25', '2020-10-26 10:50:25'),
(161, 'default', 'Update Asset Type', 1, 'Modules\\Asset\\Entities\\AssetType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-26 11:03:01', '2020-10-26 11:03:01'),
(162, 'default', 'Create Asset', 1, 'Modules\\Asset\\Entities\\Asset', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-27 15:32:59', '2020-10-27 15:32:59'),
(163, 'default', 'Update Asset', 1, 'Modules\\Asset\\Entities\\Asset', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-27 15:38:22', '2020-10-27 15:38:22'),
(164, 'default', 'Create Payroll Item', 1, 'Modules\\Payroll\\Entities\\PayrollItem', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-27 16:19:42', '2020-10-27 16:19:42'),
(165, 'default', 'Update Payroll Item', 1, 'Modules\\Payroll\\Entities\\PayrollItem', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-27 16:21:43', '2020-10-27 16:21:43'),
(166, 'default', 'Update Payroll Item', 1, 'Modules\\Payroll\\Entities\\PayrollItem', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-10-27 16:21:49', '2020-10-27 16:21:49'),
(167, 'default', 'Create Payroll Template', 1, 'Modules\\Payroll\\Entities\\PayrollTemplate', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-11-23 06:56:09', '2020-11-23 06:56:09'),
(168, 'default', 'Update Payroll Template', 1, 'Modules\\Payroll\\Entities\\PayrollTemplate', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-11-23 07:08:20', '2020-11-23 07:08:20'),
(169, 'default', 'Create Payroll', 2, 'Modules\\Payroll\\Entities\\Payroll', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-11-27 07:52:06', '2020-11-27 07:52:06'),
(170, 'default', 'Delete Payroll', 1, 'Modules\\Payroll\\Entities\\Payroll', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-11-27 07:52:20', '2020-11-27 07:52:20'),
(171, 'default', 'Update Payroll', 2, 'Modules\\Payroll\\Entities\\Payroll', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-11-27 07:57:40', '2020-11-27 07:57:40'),
(172, 'default', 'Create Payroll Payment', 1, 'Modules\\Payroll\\Entities\\PayrollPayment', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-11-27 08:35:07', '2020-11-27 08:35:07'),
(173, 'default', 'Update Payroll Payment', 1, 'Modules\\Payroll\\Entities\\PayrollPayment', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-11-27 08:42:16', '2020-11-27 08:42:16'),
(174, 'default', 'Create Fund', 2, 'Modules\\Loan\\Entities\\Fund', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-11-30 08:11:15', '2020-11-30 08:11:15'),
(175, 'default', 'Update Fund', 2, 'Modules\\Loan\\Entities\\Fund', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-11-30 08:12:43', '2020-11-30 08:12:43'),
(176, 'default', 'Create Loan Collateral Type', 1, 'Modules\\Loan\\Entities\\LoanCollateralType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-11-30 08:33:28', '2020-11-30 08:33:28'),
(177, 'default', 'Update Loan Collateral Type', 1, 'Modules\\Loan\\Entities\\LoanCollateralType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-11-30 08:41:17', '2020-11-30 08:41:17'),
(178, 'default', 'Update Loan Collateral Type', 1, 'Modules\\Loan\\Entities\\LoanCollateralType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-11-30 08:41:17', '2020-11-30 08:41:17'),
(179, 'default', 'Create Loan Purpose', 2, 'Modules\\Loan\\Entities\\LoanPurpose', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-11-30 08:51:58', '2020-11-30 08:51:58'),
(180, 'default', 'Update Loan Purpose', 1, 'Modules\\Loan\\Entities\\LoanPurpose', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-11-30 08:52:52', '2020-11-30 08:52:52'),
(181, 'default', 'Create Loan Charge', 1, 'Modules\\Loan\\Entities\\LoanCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-11-30 10:31:04', '2020-11-30 10:31:04'),
(182, 'default', 'Update Loan Charge', 1, 'Modules\\Loan\\Entities\\LoanCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-11-30 10:35:30', '2020-11-30 10:35:30'),
(183, 'default', 'Create Loan Product', 3, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-11-30 14:40:07', '2020-11-30 14:40:07'),
(184, 'default', 'Update Loan Product', 3, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-11-30 14:57:26', '2020-11-30 14:57:26'),
(185, 'default', 'Update Loan Product', 1, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-11-30 15:05:53', '2020-11-30 15:05:53'),
(186, 'default', 'Create Loan', 2, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-02 12:19:06', '2020-12-02 12:19:06'),
(187, 'default', 'Update Loan', 2, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-02 14:21:04', '2020-12-02 14:21:04'),
(188, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-02 15:42:58', '2020-12-02 15:42:58'),
(189, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-02 15:43:17', '2020-12-02 15:43:17'),
(190, 'default', 'Approve Loan', 2, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-02 16:07:50', '2020-12-02 16:07:50'),
(191, 'default', 'Disburse Loan', 2, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-02 16:11:09', '2020-12-02 16:11:09'),
(192, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-02 16:14:32', '2020-12-02 16:14:32'),
(193, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-02 16:14:41', '2020-12-02 16:14:41'),
(194, 'default', 'Create Loan File', 1, 'Modules\\Loan\\Entities\\LoanFile', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-03 07:10:42', '2020-12-03 07:10:42'),
(195, 'default', 'Create Loan File', 2, 'Modules\\Loan\\Entities\\LoanFile', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-03 07:11:32', '2020-12-03 07:11:32'),
(196, 'default', 'Update Loan File', 1, 'Modules\\Loan\\Entities\\LoanFile', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-03 07:31:52', '2020-12-03 07:31:52'),
(197, 'default', 'Update Loan File', 2, 'Modules\\Loan\\Entities\\LoanFile', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-03 07:32:06', '2020-12-03 07:32:06'),
(198, 'default', 'Create Loan Collateral', 1, 'Modules\\Loan\\Entities\\LoanCollateral', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-03 07:54:16', '2020-12-03 07:54:16'),
(199, 'default', 'Update Loan Collateral', 1, 'Modules\\Loan\\Entities\\LoanCollateral', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-03 07:57:13', '2020-12-03 07:57:13'),
(200, 'default', 'Create Loan Note', 1, 'Modules\\Loan\\Entities\\LoanNote', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-03 08:04:09', '2020-12-03 08:04:09'),
(201, 'default', 'Create Loan Note', 2, 'Modules\\Loan\\Entities\\LoanNote', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-03 08:14:23', '2020-12-03 08:14:23'),
(202, 'default', 'Create Loan Guarantor', 1, 'Modules\\Loan\\Entities\\LoanGuarantor', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-03 09:06:32', '2020-12-03 09:06:32'),
(203, 'default', 'Create Loan Guarantor', 2, 'Modules\\Loan\\Entities\\LoanGuarantor', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-03 09:13:47', '2020-12-03 09:13:47'),
(204, 'default', 'Update Loan Guarantor', 1, 'Modules\\Loan\\Entities\\LoanGuarantor', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-03 09:22:57', '2020-12-03 09:22:57'),
(205, 'default', 'Update Loan Guarantor', 2, 'Modules\\Loan\\Entities\\LoanGuarantor', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-03 09:24:04', '2020-12-03 09:24:04'),
(206, 'default', 'Create Loan Repayment', 5, 'Modules\\Loan\\Entities\\LoanTransaction', 1, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2020-12-03 09:59:34', '2020-12-03 09:59:34'),
(207, 'default', 'Update Loan Repayment', 5, 'Modules\\Loan\\Entities\\LoanTransaction', 1, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2020-12-03 10:11:24', '2020-12-03 10:11:24'),
(208, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-03 10:33:48', '2020-12-03 10:33:48'),
(209, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-03 10:34:16', '2020-12-03 10:34:16'),
(210, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-03 10:39:25', '2020-12-03 10:39:25'),
(211, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-03 10:39:39', '2020-12-03 10:39:39'),
(212, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-03 10:39:52', '2020-12-03 10:39:52'),
(213, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-03 10:40:01', '2020-12-03 10:40:01'),
(214, 'default', 'Update User', 2, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-04 07:22:33', '2020-12-04 07:22:33'),
(215, 'default', 'Create Client User', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-04 07:22:42', '2020-12-04 07:22:42'),
(216, 'default', 'Create Wallet', 1, 'Modules\\Wallet\\Entities\\Wallet', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-04 17:48:10', '2020-12-04 17:48:10'),
(217, 'default', 'Create Wallet Deposit', 1, 'Modules\\Wallet\\Entities\\Wallet', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-04 18:16:07', '2020-12-04 18:16:07'),
(218, 'default', 'Update Wallet Transaction', 1, 'Modules\\Wallet\\Entities\\WalletTransaction', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-04 18:20:06', '2020-12-04 18:20:06'),
(219, 'default', 'Create Savings Charge', 1, 'Modules\\Savings\\Entities\\SavingsCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-05 07:37:27', '2020-12-05 07:37:27'),
(220, 'default', 'Update Savings Charge', 1, 'Modules\\Savings\\Entities\\SavingsCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-05 07:40:37', '2020-12-05 07:40:37'),
(221, 'default', 'Create Savings Products', 2, 'Modules\\Savings\\Entities\\SavingsProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-05 09:06:44', '2020-12-05 09:06:44'),
(222, 'default', 'Update Savings Products', 2, 'Modules\\Savings\\Entities\\SavingsProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-05 09:16:39', '2020-12-05 09:16:39'),
(223, 'default', 'Update Savings Products', 2, 'Modules\\Savings\\Entities\\SavingsProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-05 09:16:49', '2020-12-05 09:16:49'),
(224, 'default', 'Create Savings', 2, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-06 17:11:55', '2020-12-06 17:11:55'),
(225, 'default', 'Create Savings', 3, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-06 17:27:08', '2020-12-06 17:27:08'),
(226, 'default', 'Update Savings', 3, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-06 17:45:36', '2020-12-06 17:45:36'),
(227, 'default', 'Approve Savings', 3, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-06 17:58:25', '2020-12-06 17:58:25'),
(228, 'default', 'Activate Savings', 3, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-06 18:01:10', '2020-12-06 18:01:10'),
(229, 'default', 'Create Savings Deposit', 3, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-06 18:09:38', '2020-12-06 18:09:38'),
(230, 'default', 'Update Savings Transaction', 3, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-06 18:10:56', '2020-12-06 18:10:56'),
(231, 'default', 'Create Savings Withdrawal', 3, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-06 18:13:21', '2020-12-06 18:13:21'),
(232, 'default', 'Create Share Charge', 2, 'Modules\\Share\\Entities\\ShareCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-06 18:33:57', '2020-12-06 18:33:57'),
(233, 'default', 'Update Share Charge', 2, 'Modules\\Share\\Entities\\ShareCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-06 18:36:00', '2020-12-06 18:36:00'),
(234, 'default', 'Update Share Products', 1, 'Modules\\Share\\Entities\\ShareProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-07 07:46:16', '2020-12-07 07:46:16'),
(235, 'default', 'Create Share', 2, 'Modules\\Share\\Entities\\Share', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-07 10:07:48', '2020-12-07 10:07:48'),
(236, 'default', 'Update Share', 2, 'Modules\\Share\\Entities\\Share', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-07 10:28:54', '2020-12-07 10:28:54'),
(237, 'default', 'Approve Shares', 2, 'Modules\\Share\\Entities\\Share', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-07 12:32:21', '2020-12-07 12:32:21'),
(238, 'default', 'Change Share Officer', 2, 'Modules\\Share\\Entities\\Share', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-07 12:32:37', '2020-12-07 12:32:37'),
(239, 'default', 'Activate Share', 2, 'Modules\\Share\\Entities\\Share', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-07 12:49:45', '2020-12-07 12:49:45'),
(240, 'default', 'Update Share Transaction', 2, 'Modules\\Share\\Entities\\Share', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-07 15:47:28', '2020-12-07 15:47:28'),
(241, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-09 10:47:51', '2020-12-09 10:47:51'),
(242, 'default', 'Create Loan', 3, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-10 08:55:21', '2020-12-10 08:55:21'),
(243, 'default', 'Approve Loan', 3, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-10 08:55:35', '2020-12-10 08:55:35'),
(244, 'default', 'Disburse Loan', 3, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-10 08:56:07', '2020-12-10 08:56:07'),
(245, 'default', 'Undo Loan Disbursement', 3, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-10 08:56:38', '2020-12-10 08:56:38'),
(246, 'default', 'Disburse Loan', 3, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-10 08:56:55', '2020-12-10 08:56:55'),
(247, 'default', 'Undo Loan Disbursement', 3, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-10 09:11:54', '2020-12-10 09:11:54'),
(248, 'default', 'Disburse Loan', 3, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-10 09:12:10', '2020-12-10 09:12:10'),
(249, 'default', 'Update Chart Of Account', 1, 'Modules\\Accounting\\Entities\\ChartOfAccount', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-13 11:00:12', '2020-12-13 11:00:12'),
(250, 'default', 'Update Branch', 2, 'Modules\\Branch\\Entities\\Branch', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-13 12:48:33', '2020-12-13 12:48:33'),
(251, 'default', 'Update Branch', 2, 'Modules\\Branch\\Entities\\Branch', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-13 12:49:22', '2020-12-13 12:49:22'),
(252, 'default', 'Update Branch', 2, 'Modules\\Branch\\Entities\\Branch', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-13 12:50:02', '2020-12-13 12:50:02'),
(253, 'default', 'Update Branch', 2, 'Modules\\Branch\\Entities\\Branch', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-13 12:50:47', '2020-12-13 12:50:47'),
(254, 'default', 'Update Branch', 2, 'Modules\\Branch\\Entities\\Branch', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-13 12:51:23', '2020-12-13 12:51:23'),
(255, 'default', 'Update Branch', 2, 'Modules\\Branch\\Entities\\Branch', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-13 12:52:39', '2020-12-13 12:52:39'),
(256, 'default', 'Add Branch User', 1, 'Modules\\Branch\\Entities\\BranchUser', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-13 13:19:33', '2020-12-13 13:19:33'),
(257, 'default', 'Update Asset Type', 1, 'Modules\\Asset\\Entities\\AssetType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-13 13:53:30', '2020-12-13 13:53:30'),
(258, 'default', 'Update Asset Type', 1, 'Modules\\Asset\\Entities\\AssetType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-13 13:55:01', '2020-12-13 13:55:01'),
(259, 'default', 'Update Asset', 1, 'Modules\\Asset\\Entities\\Asset', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-13 15:01:00', '2020-12-13 15:01:00'),
(260, 'default', 'Update Payroll Item', 1, 'Modules\\Payroll\\Entities\\PayrollItem', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-13 15:51:17', '2020-12-13 15:51:17'),
(261, 'default', 'Update Payroll Template', 1, 'Modules\\Payroll\\Entities\\PayrollTemplate', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-13 16:24:29', '2020-12-13 16:24:29'),
(262, 'default', 'Update Payroll', 2, 'Modules\\Payroll\\Entities\\Payroll', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-13 16:48:39', '2020-12-13 16:48:39'),
(263, 'default', 'Update Payroll Payment', 1, 'Modules\\Payroll\\Entities\\PayrollPayment', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-13 17:24:18', '2020-12-13 17:24:18'),
(264, 'default', 'Update Client', 1, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-13 18:31:15', '2020-12-13 18:31:15'),
(265, 'default', 'Update Client Type', 1, 'Modules\\Client\\Entities\\ClientType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-14 07:29:56', '2020-12-14 07:29:56'),
(266, 'default', 'Update Client Relationship', 1, 'Modules\\Client\\Entities\\ClientRelationship', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-14 08:07:51', '2020-12-14 08:07:51'),
(267, 'default', 'Update Client Identification Type', 1, 'Modules\\Client\\Entities\\ClientIdentificationType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-14 08:13:14', '2020-12-14 08:13:14'),
(268, 'default', 'Update SMS Gateway', 1, 'Modules\\Communication\\Entities\\SmsGateway', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-14 10:13:31', '2020-12-14 10:13:31'),
(269, 'default', 'Update Communication Campaign', 1, 'Modules\\Communication\\Entities\\CommunicationCampaign', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-14 15:20:16', '2020-12-14 15:20:16'),
(270, 'default', 'Update Loan Charge', 1, 'Modules\\Loan\\Entities\\LoanCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-14 16:03:42', '2020-12-14 16:03:42'),
(271, 'default', 'Update Loan Product', 1, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-14 17:42:16', '2020-12-14 17:42:16'),
(272, 'default', 'Update Loan Note', 2, 'Modules\\Loan\\Entities\\LoanNote', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2020-12-15 00:07:15', '2020-12-15 00:07:15'),
(273, 'default', 'Update Fund', 1, 'Modules\\Loan\\Entities\\Fund', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-15 00:32:48', '2020-12-15 00:32:48'),
(274, 'default', 'Update Loan Collateral Type', 1, 'Modules\\Loan\\Entities\\LoanCollateralType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-15 00:39:51', '2020-12-15 00:39:51'),
(275, 'default', 'Update Loan Purpose', 1, 'Modules\\Loan\\Entities\\LoanPurpose', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-15 00:43:06', '2020-12-15 00:43:06'),
(276, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-15 01:03:41', '2020-12-15 01:03:41'),
(277, 'default', 'Update Expense Type', 1, 'Modules\\Expense\\Entities\\ExpenseType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-15 02:06:02', '2020-12-15 02:06:02'),
(278, 'default', 'Update Income Type', 1, 'Modules\\Income\\Entities\\IncomeType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-15 09:34:46', '2020-12-15 09:34:46'),
(279, 'default', 'Update Custom Field', 1, 'Modules\\CustomField\\Entities\\CustomField', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-15 11:01:38', '2020-12-15 11:01:38'),
(280, 'default', 'Update Currency', 1, 'Modules\\Core\\Entities\\Currency', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-15 12:31:37', '2020-12-15 12:31:37'),
(281, 'default', 'Update Savings Charge', 1, 'Modules\\Savings\\Entities\\SavingsCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-15 15:07:00', '2020-12-15 15:07:00'),
(282, 'default', 'Update Savings Products', 1, 'Modules\\Savings\\Entities\\SavingsProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-15 15:41:34', '2020-12-15 15:41:34'),
(283, 'default', 'Update Savings Transaction', 3, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-15 16:20:53', '2020-12-15 16:20:53'),
(284, 'default', 'Update User', 1, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-16 06:05:41', '2020-12-16 06:05:41'),
(285, 'default', 'Update Share Charge', 1, 'Modules\\Share\\Entities\\ShareCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-16 07:44:14', '2020-12-16 07:44:14'),
(286, 'default', 'Update Share Products', 1, 'Modules\\Share\\Entities\\ShareProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-16 07:50:01', '2020-12-16 07:50:01'),
(287, 'default', 'Reconfigure Module:Wallet', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 09:20:50', '2020-12-16 09:20:50'),
(288, 'default', 'Reconfigure Module:Wallet', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 09:21:30', '2020-12-16 09:21:30'),
(289, 'default', 'Reconfigure Module:Wallet', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 09:22:14', '2020-12-16 09:22:14'),
(290, 'default', 'Reconfigure Module:Setting', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 09:43:42', '2020-12-16 09:43:42'),
(291, 'default', 'Reconfigure Module:Dashboard', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:05:12', '2020-12-16 10:05:12'),
(292, 'default', 'Reconfigure Module:Dashboard', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:06:14', '2020-12-16 10:06:14'),
(293, 'default', 'Reconfigure Module:Dashboard', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:07:59', '2020-12-16 10:07:59'),
(294, 'default', 'Reconfigure Module:Core', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:09:22', '2020-12-16 10:09:22'),
(295, 'default', 'Reconfigure Module:Core', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:11:09', '2020-12-16 10:11:09'),
(296, 'default', 'Reconfigure Module:Core', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:12:43', '2020-12-16 10:12:43'),
(297, 'default', 'Reconfigure Module:Core', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:13:29', '2020-12-16 10:13:29'),
(298, 'default', 'Reconfigure Module:Accounting', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:14:53', '2020-12-16 10:14:53'),
(299, 'default', 'Reconfigure Module:Branch', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:16:00', '2020-12-16 10:16:00'),
(300, 'default', 'Reconfigure Module:Payroll', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:19:04', '2020-12-16 10:19:04'),
(301, 'default', 'Reconfigure Module:Core', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:20:25', '2020-12-16 10:20:25'),
(302, 'default', 'Reconfigure Module:Payroll', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:21:48', '2020-12-16 10:21:48'),
(303, 'default', 'Reconfigure Module:Payroll', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:22:53', '2020-12-16 10:22:53');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(304, 'default', 'Reconfigure Module:Loan', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:24:35', '2020-12-16 10:24:35'),
(305, 'default', 'Reconfigure Module:Loan', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:26:27', '2020-12-16 10:26:27'),
(306, 'default', 'Reconfigure Module:Communication', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:28:00', '2020-12-16 10:28:00'),
(307, 'default', 'Reconfigure Module:Communication', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:29:01', '2020-12-16 10:29:01'),
(308, 'default', 'Reconfigure Module:Expense', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:30:24', '2020-12-16 10:30:24'),
(309, 'default', 'Reconfigure Module:Report', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:31:30', '2020-12-16 10:31:30'),
(310, 'default', 'Reconfigure Module:Report', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:32:37', '2020-12-16 10:32:37'),
(311, 'default', 'Reconfigure Module:CustomField', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:34:09', '2020-12-16 10:34:09'),
(312, 'default', 'Reconfigure Module:Savings', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:36:25', '2020-12-16 10:36:25'),
(313, 'default', 'Reconfigure Module:Income', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:38:36', '2020-12-16 10:38:36'),
(314, 'default', 'Reconfigure Module:User', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:41:40', '2020-12-16 10:41:40'),
(315, 'default', 'Reconfigure Module:Share', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:42:57', '2020-12-16 10:42:57'),
(316, 'default', 'Reconfigure Module:Share', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:43:29', '2020-12-16 10:43:29'),
(317, 'default', 'Reconfigure Module:Setting', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:44:59', '2020-12-16 10:44:59'),
(318, 'default', 'Reconfigure Module:Asset', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-16 10:46:22', '2020-12-16 10:46:22'),
(319, 'default', 'Reconfigure Module:Client', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-17 08:03:48', '2020-12-17 08:03:48'),
(320, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-17 15:27:14', '2020-12-17 15:27:14'),
(321, 'default', 'Change Theme', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2020-12-19 02:37:11', '2020-12-19 02:37:11'),
(322, 'default', 'Create Client', 3, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2020-12-21 08:25:40', '2020-12-21 08:25:40'),
(323, 'default', 'Undo Loan Disbursement', 1, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-21 08:55:51', '2020-12-21 08:55:51'),
(324, 'default', 'Disburse Loan', 1, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2020-12-21 08:55:59', '2020-12-21 08:55:59'),
(325, 'default', 'Reconfigure Module:User', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2021-01-15 11:25:39', '2021-01-15 11:25:39'),
(326, 'default', 'Update Settings', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2021-01-15 15:28:29', '2021-01-15 15:28:29'),
(327, 'default', 'Update Savings', 3, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2021-01-15 15:30:42', '2021-01-15 15:30:42'),
(328, 'default', 'Update Savings', 2, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2021-01-15 15:34:02', '2021-01-15 15:34:02'),
(329, 'default', 'Create Savings', 5, 'Modules\\Savings\\Entities\\Savings', 1, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2021-01-15 18:15:05', '2021-01-15 18:15:05'),
(330, 'default', 'Create User', 8, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-15 15:07:40', '2022-04-15 15:07:40'),
(331, 'default', 'Update Settings', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-15 15:27:38', '2022-04-15 15:27:38'),
(332, 'default', 'Update Settings', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-15 15:29:08', '2022-04-15 15:29:08'),
(333, 'default', 'Update Client Type', 2, 'Modules\\Client\\Entities\\ClientType', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-15 15:31:36', '2022-04-15 15:31:36'),
(334, 'default', 'Update Payment Type', 2, 'Modules\\Core\\Entities\\PaymentType', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-15 15:36:17', '2022-04-15 15:36:17'),
(335, 'default', 'Update Currency', 1, 'Modules\\Core\\Entities\\Currency', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2022-04-15 15:41:10', '2022-04-15 15:41:10'),
(336, 'default', 'Delete Currency', 2, 'Modules\\Core\\Entities\\Currency', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-15 15:45:39', '2022-04-15 15:45:39'),
(337, 'default', 'Update Fund', 1, 'Modules\\Loan\\Entities\\Fund', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2022-04-15 15:50:40', '2022-04-15 15:50:40'),
(338, 'default', 'Update Fund', 1, 'Modules\\Loan\\Entities\\Fund', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2022-04-15 15:51:02', '2022-04-15 15:51:02'),
(339, 'default', 'Update Loan Collateral Type', 1, 'Modules\\Loan\\Entities\\LoanCollateralType', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2022-04-15 15:52:49', '2022-04-15 15:52:49'),
(340, 'default', 'Create Loan Collateral Type', 2, 'Modules\\Loan\\Entities\\LoanCollateralType', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-15 15:53:42', '2022-04-15 15:53:42'),
(341, 'default', 'Create Loan Collateral Type', 3, 'Modules\\Loan\\Entities\\LoanCollateralType', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-15 15:54:25', '2022-04-15 15:54:25'),
(342, 'default', 'Update Loan Purpose', 1, 'Modules\\Loan\\Entities\\LoanPurpose', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2022-04-15 15:56:47', '2022-04-15 15:56:47'),
(343, 'default', 'Update Loan Purpose', 2, 'Modules\\Loan\\Entities\\LoanPurpose', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-15 15:57:59', '2022-04-15 15:57:59'),
(344, 'default', 'Create Client Title', 2, 'Modules\\Client\\Entities\\Title', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-15 16:01:57', '2022-04-15 16:01:57'),
(345, 'default', 'Update Settings', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-15 17:43:25', '2022-04-15 17:43:25'),
(346, 'default', 'Update Settings', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-15 18:02:48', '2022-04-15 18:02:48'),
(347, 'default', 'Update Settings', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-15 18:02:49', '2022-04-15 18:02:49'),
(348, 'default', 'Update Settings', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-15 18:03:34', '2022-04-15 18:03:34'),
(349, 'default', 'Create Loan Product', 4, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-15 18:21:08', '2022-04-15 18:21:08'),
(350, 'default', 'Create Loan Product', 5, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-15 18:26:53', '2022-04-15 18:26:53'),
(351, 'default', 'Delete Loan Product', 3, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-15 18:27:11', '2022-04-15 18:27:11'),
(352, 'default', 'Delete Loan Product', 1, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2022-04-15 18:27:20', '2022-04-15 18:27:20'),
(353, 'default', 'Create Role', 4, 'Spatie\\Permission\\Models\\Role', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-15 18:57:28', '2022-04-15 18:57:28'),
(354, 'default', 'Delete Role', 3, 'Spatie\\Permission\\Models\\Role', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-15 19:03:50', '2022-04-15 19:03:50'),
(355, 'default', 'Create User', 9, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-15 21:44:56', '2022-04-15 21:44:56'),
(356, 'default', 'Create User', 10, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-15 21:50:18', '2022-04-15 21:50:18'),
(357, 'default', 'Delete User', 2, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-15 21:50:47', '2022-04-15 21:50:47'),
(358, 'default', 'Create Role', 5, 'Spatie\\Permission\\Models\\Role', 1, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-15 21:58:42', '2022-04-15 21:58:42'),
(359, 'default', 'Update User', 1, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2022-04-15 22:07:37', '2022-04-15 22:07:37'),
(360, 'default', 'Update User', 1, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2022-04-15 22:31:50', '2022-04-15 22:31:50'),
(361, 'default', 'Create Branch', 3, 'Modules\\Branch\\Entities\\Branch', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-16 02:23:48', '2022-04-16 02:23:48'),
(362, 'default', 'Create Branch', 4, 'Modules\\Branch\\Entities\\Branch', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-16 02:25:22', '2022-04-16 02:25:22'),
(363, 'default', 'Update User', 10, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-18 14:26:51', '2022-04-18 14:26:51'),
(364, 'default', 'Add Branch User', 2, 'Modules\\Branch\\Entities\\BranchUser', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-18 14:27:42', '2022-04-18 14:27:42'),
(365, 'default', 'Create Role', 6, 'Spatie\\Permission\\Models\\Role', 1, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-18 14:38:21', '2022-04-18 14:38:21'),
(366, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-18 14:54:04', '2022-04-18 14:54:04'),
(367, 'default', 'Update Savings Products', 1, 'Modules\\Savings\\Entities\\SavingsProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2022-04-18 15:04:46', '2022-04-18 15:04:46'),
(368, 'default', 'Update User', 10, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-18 15:09:28', '2022-04-18 15:09:28'),
(369, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-18 15:16:14', '2022-04-18 15:16:14'),
(370, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-18 15:19:35', '2022-04-18 15:19:35'),
(371, 'default', 'Add Branch User', 3, 'Modules\\Branch\\Entities\\BranchUser', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-18 15:22:07', '2022-04-18 15:22:07'),
(372, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-18 15:54:20', '2022-04-18 15:54:20'),
(373, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-18 15:58:24', '2022-04-18 15:58:24'),
(374, 'default', 'Create Client', 4, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-18 16:25:39', '2022-04-18 16:25:39'),
(375, 'default', 'Create Client', 5, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-18 16:46:45', '2022-04-18 16:46:45'),
(376, 'default', 'Create Client', 6, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-18 16:50:52', '2022-04-18 16:50:52'),
(377, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-18 16:54:02', '2022-04-18 16:54:02'),
(378, 'default', 'Create Client', 7, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-18 16:54:54', '2022-04-18 16:54:54'),
(379, 'default', 'Delete Client', 4, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-18 16:56:59', '2022-04-18 16:56:59'),
(380, 'default', 'Delete Client', 5, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-18 16:57:11', '2022-04-18 16:57:11'),
(381, 'default', 'Delete Client', 6, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-18 16:58:31', '2022-04-18 16:58:31'),
(382, 'default', 'Update Client Status', 7, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-18 17:00:35', '2022-04-18 17:00:35'),
(383, 'default', 'Create Loan', 4, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-18 17:04:06', '2022-04-18 17:04:06'),
(384, 'default', 'Create Loan', 5, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-18 17:07:23', '2022-04-18 17:07:23'),
(385, 'default', 'Update Loan Product', 5, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-18 17:10:51', '2022-04-18 17:10:51'),
(386, 'default', 'Create Loan', 6, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-18 17:11:00', '2022-04-18 17:11:00'),
(387, 'default', 'Create Loan', 7, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-18 17:13:03', '2022-04-18 17:13:03'),
(388, 'default', 'Create Loan', 8, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-18 17:16:27', '2022-04-18 17:16:27'),
(389, 'default', 'Approve Loan', 4, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-18 17:23:30', '2022-04-18 17:23:30'),
(390, 'default', 'Disburse Loan', 4, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-18 17:25:42', '2022-04-18 17:25:42'),
(391, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 17:36:12', '2022-04-18 17:36:12'),
(392, 'default', 'Create Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-18 17:47:22', '2022-04-18 17:47:22'),
(393, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-18 17:47:54', '2022-04-18 17:47:54'),
(394, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 17:49:05', '2022-04-18 17:49:05'),
(395, 'default', 'Update User', 9, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-18 18:41:55', '2022-04-18 18:41:55'),
(396, 'default', 'Update Income Type', 2, 'Modules\\Income\\Entities\\IncomeType', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-18 18:51:29', '2022-04-18 18:51:29'),
(397, 'default', 'Create Loan Product', 6, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-18 18:57:18', '2022-04-18 18:57:18'),
(398, 'default', 'Create Client', 8, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-18 19:06:35', '2022-04-18 19:06:35'),
(399, 'default', 'Update Client Status', 8, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-18 19:07:11', '2022-04-18 19:07:11'),
(400, 'default', 'Update Client Status', 8, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-18 19:07:24', '2022-04-18 19:07:24'),
(401, 'default', 'Create Loan', 9, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-18 19:13:51', '2022-04-18 19:13:51'),
(402, 'default', 'Approve Loan', 9, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-18 19:14:27', '2022-04-18 19:14:27'),
(403, 'default', 'Disburse Loan', 9, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-18 19:15:50', '2022-04-18 19:15:50'),
(404, 'default', 'Undo Loan Disbursement', 9, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-18 19:16:55', '2022-04-18 19:16:55'),
(405, 'default', 'Undo Loan Approval', 9, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-18 19:17:44', '2022-04-18 19:17:44'),
(406, 'default', 'Create Loan', 10, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-18 19:21:25', '2022-04-18 19:21:25'),
(407, 'default', 'Reject Loan', 10, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-18 19:22:09', '2022-04-18 19:22:09'),
(408, 'default', 'Undo Loan Rejection', 10, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-18 19:22:19', '2022-04-18 19:22:19'),
(409, 'default', 'Approve Loan', 10, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-18 19:22:45', '2022-04-18 19:22:45'),
(410, 'default', 'Disburse Loan', 10, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-18 19:23:35', '2022-04-18 19:23:35'),
(411, 'default', 'Create Loan', 11, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":11}', '2022-04-18 19:27:21', '2022-04-18 19:27:21'),
(412, 'default', 'Approve Loan', 11, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":11}', '2022-04-18 19:28:42', '2022-04-18 19:28:42'),
(413, 'default', 'Disburse Loan', 11, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":11}', '2022-04-18 19:28:57', '2022-04-18 19:28:57'),
(414, 'default', 'Create Loan', 12, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":12}', '2022-04-18 19:34:32', '2022-04-18 19:34:32'),
(415, 'default', 'Approve Loan', 12, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":12}', '2022-04-18 19:34:53', '2022-04-18 19:34:53'),
(416, 'default', 'Disburse Loan', 12, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":12}', '2022-04-18 19:35:47', '2022-04-18 19:35:47'),
(417, 'default', 'Update Loan Product', 6, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-18 19:47:47', '2022-04-18 19:47:47'),
(418, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 19:48:46', '2022-04-18 19:48:46'),
(419, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 19:51:00', '2022-04-18 19:51:00'),
(420, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 19:57:35', '2022-04-18 19:57:35'),
(421, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 19:59:48', '2022-04-18 19:59:48'),
(422, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 20:00:38', '2022-04-18 20:00:38'),
(423, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 20:02:10', '2022-04-18 20:02:10'),
(424, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 20:04:39', '2022-04-18 20:04:39'),
(425, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 20:05:46', '2022-04-18 20:05:46'),
(426, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 20:06:38', '2022-04-18 20:06:38'),
(427, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 20:07:07', '2022-04-18 20:07:07'),
(428, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 20:08:23', '2022-04-18 20:08:23'),
(429, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 20:09:38', '2022-04-18 20:09:38'),
(430, 'default', 'Update Loan Product', 6, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-18 20:11:29', '2022-04-18 20:11:29'),
(431, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 20:11:51', '2022-04-18 20:11:51'),
(432, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 20:12:32', '2022-04-18 20:12:32'),
(433, 'default', 'Use Loan Calculator', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 20:13:24', '2022-04-18 20:13:24'),
(434, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-18 20:16:24', '2022-04-18 20:16:24'),
(435, 'default', 'Update Loan Product', 6, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-18 20:22:16', '2022-04-18 20:22:16'),
(436, 'default', 'Delete Loan Product', 5, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-18 20:22:29', '2022-04-18 20:22:29'),
(437, 'default', 'Delete Client', 8, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-18 20:28:05', '2022-04-18 20:28:05'),
(438, 'default', 'Delete Client', 7, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-18 20:29:28', '2022-04-18 20:29:28'),
(439, 'default', 'Create Client', 9, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-18 20:33:14', '2022-04-18 20:33:14'),
(440, 'default', 'Update Client Status', 9, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-18 20:34:10', '2022-04-18 20:34:10'),
(441, 'default', 'Update Client Status', 9, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-18 20:34:11', '2022-04-18 20:34:11'),
(442, 'default', 'Create Loan', 13, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":13}', '2022-04-18 20:37:10', '2022-04-18 20:37:10'),
(443, 'default', 'Update Settings', NULL, NULL, 1, 'Modules\\User\\Entities\\User', '[]', '2022-04-18 20:41:10', '2022-04-18 20:41:10'),
(444, 'default', 'Approve Loan', 13, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":13}', '2022-04-18 20:42:29', '2022-04-18 20:42:29'),
(445, 'default', 'Disburse Loan', 13, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":13}', '2022-04-18 20:42:57', '2022-04-18 20:42:57'),
(446, 'default', 'Create Client', 10, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-18 20:42:59', '2022-04-18 20:42:59'),
(447, 'default', 'Update Client Status', 10, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-18 20:44:02', '2022-04-18 20:44:02'),
(448, 'default', 'Create Loan', 14, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":14}', '2022-04-18 20:45:30', '2022-04-18 20:45:30'),
(449, 'default', 'Approve Loan', 14, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":14}', '2022-04-18 20:48:51', '2022-04-18 20:48:51'),
(450, 'default', 'Disburse Loan', 14, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":14}', '2022-04-18 20:49:07', '2022-04-18 20:49:07'),
(451, 'default', 'Create Client', 11, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":11}', '2022-04-18 20:52:07', '2022-04-18 20:52:07'),
(452, 'default', 'Update Client Status', 11, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":11}', '2022-04-18 20:52:38', '2022-04-18 20:52:38'),
(453, 'default', 'Create Loan', 15, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":15}', '2022-04-18 20:54:10', '2022-04-18 20:54:10'),
(454, 'default', 'Approve Loan', 15, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":15}', '2022-04-18 20:58:45', '2022-04-18 20:58:45'),
(455, 'default', 'Disburse Loan', 15, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":15}', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(456, 'default', 'Create Client', 12, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":12}', '2022-04-18 21:05:13', '2022-04-18 21:05:13'),
(457, 'default', 'Update Client Status', 12, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":12}', '2022-04-18 21:05:41', '2022-04-18 21:05:41'),
(458, 'default', 'Create Loan', 16, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":16}', '2022-04-18 21:07:03', '2022-04-18 21:07:03'),
(459, 'default', 'Approve Loan', 16, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":16}', '2022-04-18 21:13:23', '2022-04-18 21:13:23'),
(460, 'default', 'Disburse Loan', 16, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":16}', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(461, 'default', 'Create Client', 13, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":13}', '2022-04-18 21:22:44', '2022-04-18 21:22:44'),
(462, 'default', 'Update Client Status', 13, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":13}', '2022-04-18 21:23:20', '2022-04-18 21:23:20'),
(463, 'default', 'Create Loan', 17, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":17}', '2022-04-18 21:24:29', '2022-04-18 21:24:29'),
(464, 'default', 'Approve Loan', 17, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":17}', '2022-04-18 21:26:15', '2022-04-18 21:26:15'),
(465, 'default', 'Disburse Loan', 17, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":17}', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(466, 'default', 'Create Communication Campaign', 2, 'Modules\\Communication\\Entities\\CommunicationCampaign', 1, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-19 00:19:22', '2022-04-19 00:19:22'),
(467, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-19 15:01:53', '2022-04-19 15:01:53'),
(468, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-19 15:08:24', '2022-04-19 15:08:24'),
(469, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:08:39', '2022-04-19 15:08:39'),
(470, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:09:57', '2022-04-19 15:09:57'),
(471, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:10:46', '2022-04-19 15:10:46'),
(472, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-19 15:15:52', '2022-04-19 15:15:52'),
(473, 'default', 'Create Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-19 15:22:29', '2022-04-19 15:22:29'),
(474, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:23:15', '2022-04-19 15:23:15'),
(475, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:27:09', '2022-04-19 15:27:09'),
(476, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:27:48', '2022-04-19 15:27:48'),
(477, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:30:08', '2022-04-19 15:30:08'),
(478, 'default', 'Update Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-19 15:30:55', '2022-04-19 15:30:55'),
(479, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:31:14', '2022-04-19 15:31:14'),
(480, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:31:49', '2022-04-19 15:31:49'),
(481, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:32:45', '2022-04-19 15:32:45'),
(482, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:33:20', '2022-04-19 15:33:20'),
(483, 'default', 'Update Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-19 15:33:54', '2022-04-19 15:33:54'),
(484, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:35:43', '2022-04-19 15:35:43'),
(485, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:38:12', '2022-04-19 15:38:12'),
(486, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:40:03', '2022-04-19 15:40:03'),
(487, 'default', 'Update Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-19 15:41:17', '2022-04-19 15:41:17'),
(488, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:46:22', '2022-04-19 15:46:22'),
(489, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:48:21', '2022-04-19 15:48:21'),
(490, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:50:17', '2022-04-19 15:50:17'),
(491, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:51:15', '2022-04-19 15:51:15'),
(492, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:52:39', '2022-04-19 15:52:39'),
(493, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:53:34', '2022-04-19 15:53:34'),
(494, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:54:20', '2022-04-19 15:54:20'),
(495, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 15:55:20', '2022-04-19 15:55:20'),
(496, 'default', 'Create Client', 14, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":14}', '2022-04-19 18:42:35', '2022-04-19 18:42:35'),
(497, 'default', 'Update Client Status', 14, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":14}', '2022-04-19 18:43:10', '2022-04-19 18:43:10'),
(498, 'default', 'Create Loan', 18, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":18}', '2022-04-19 18:44:10', '2022-04-19 18:44:10'),
(499, 'default', 'Approve Loan', 18, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":18}', '2022-04-19 18:58:16', '2022-04-19 18:58:16'),
(500, 'default', 'Disburse Loan', 18, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":18}', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(501, 'default', 'Update Client Status', 14, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":14}', '2022-04-19 19:02:58', '2022-04-19 19:02:58'),
(502, 'default', 'Create Client', 15, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":15}', '2022-04-19 19:07:04', '2022-04-19 19:07:04'),
(503, 'default', 'Update Client Status', 15, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":15}', '2022-04-19 19:07:52', '2022-04-19 19:07:52'),
(504, 'default', 'Create Loan', 19, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":19}', '2022-04-19 19:09:34', '2022-04-19 19:09:34'),
(505, 'default', 'Approve Loan', 19, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":19}', '2022-04-19 19:16:52', '2022-04-19 19:16:52'),
(506, 'default', 'Disburse Loan', 19, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":19}', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(507, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-19 19:25:37', '2022-04-19 19:25:37'),
(508, 'default', 'Create Loan', 20, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 19:26:18', '2022-04-19 19:26:18'),
(509, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-19 19:26:31', '2022-04-19 19:26:31'),
(510, 'default', 'Approve Loan', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 19:27:00', '2022-04-19 19:27:00'),
(511, 'default', 'Disburse Loan', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 19:27:17', '2022-04-19 19:27:17'),
(512, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 19:28:51', '2022-04-19 19:28:51'),
(513, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 19:32:37', '2022-04-19 19:32:37'),
(514, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-19 19:38:33', '2022-04-19 19:38:33'),
(515, 'default', 'Undo Loan Disbursement', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 19:40:08', '2022-04-19 19:40:08'),
(516, 'default', 'Undo Loan Approval', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 19:40:24', '2022-04-19 19:40:24'),
(517, 'default', 'Update Loan', 20, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 19:42:26', '2022-04-19 19:42:26'),
(518, 'default', 'Approve Loan', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 19:43:33', '2022-04-19 19:43:33'),
(519, 'default', 'Disburse Loan', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 19:43:50', '2022-04-19 19:43:50'),
(520, 'default', 'Use Loan Calculator', NULL, NULL, 8, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 19:47:32', '2022-04-19 19:47:32'),
(521, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 19:48:18', '2022-04-19 19:48:18'),
(522, 'default', 'Update Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-19 19:51:16', '2022-04-19 19:51:16'),
(523, 'default', 'Use Loan Calculator', NULL, NULL, 10, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 19:53:31', '2022-04-19 19:53:31'),
(524, 'default', 'Update Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-19 19:58:38', '2022-04-19 19:58:38'),
(525, 'default', 'Undo Loan Disbursement', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 20:00:04', '2022-04-19 20:00:04'),
(526, 'default', 'Undo Loan Approval', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 20:00:31', '2022-04-19 20:00:31'),
(527, 'default', 'Update Loan', 20, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 20:02:50', '2022-04-19 20:02:50'),
(528, 'default', 'Update Loan', 20, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 20:02:59', '2022-04-19 20:02:59'),
(529, 'default', 'Approve Loan', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 20:03:51', '2022-04-19 20:03:51'),
(530, 'default', 'Approve Loan', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 20:04:00', '2022-04-19 20:04:00'),
(531, 'default', 'Approve Loan', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 20:04:27', '2022-04-19 20:04:27'),
(532, 'default', 'Disburse Loan', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 20:05:28', '2022-04-19 20:05:28'),
(533, 'default', 'Undo Loan Disbursement', 20, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-19 20:07:25', '2022-04-19 20:07:25'),
(534, 'default', 'Use Loan Calculator', NULL, NULL, 8, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 20:08:31', '2022-04-19 20:08:31'),
(535, 'default', 'Update Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-19 20:11:01', '2022-04-19 20:11:01'),
(536, 'default', 'Update Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-19 20:13:21', '2022-04-19 20:13:21'),
(537, 'default', 'Create Loan', 21, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":21}', '2022-04-19 20:15:28', '2022-04-19 20:15:28'),
(538, 'default', 'Approve Loan', 21, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":21}', '2022-04-19 20:17:10', '2022-04-19 20:17:10'),
(539, 'default', 'Disburse Loan', 21, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":21}', '2022-04-19 20:17:37', '2022-04-19 20:17:37'),
(540, 'default', 'Writeoff Loan', 21, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":21}', '2022-04-19 20:19:32', '2022-04-19 20:19:32'),
(541, 'default', 'Update Settings', NULL, NULL, 8, 'Modules\\User\\Entities\\User', '[]', '2022-04-19 20:23:23', '2022-04-19 20:23:23'),
(542, 'default', 'Update Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-19 20:29:11', '2022-04-19 20:29:11'),
(543, 'default', 'Update Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-19 20:29:59', '2022-04-19 20:29:59'),
(544, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-19 20:34:22', '2022-04-19 20:34:22'),
(545, 'default', 'Create Client', 16, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":16}', '2022-04-19 20:40:08', '2022-04-19 20:40:08'),
(546, 'default', 'Update Client Status', 16, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":16}', '2022-04-19 20:40:45', '2022-04-19 20:40:45'),
(547, 'default', 'Update Client Status', 16, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":16}', '2022-04-19 20:40:45', '2022-04-19 20:40:45'),
(548, 'default', 'Delete Client', 15, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":15}', '2022-04-19 20:41:20', '2022-04-19 20:41:20'),
(549, 'default', 'Create Loan', 22, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":22}', '2022-04-19 20:42:43', '2022-04-19 20:42:43'),
(550, 'default', 'Create Loan', 23, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":23}', '2022-04-19 20:42:48', '2022-04-19 20:42:48'),
(551, 'default', 'Approve Loan', 22, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":22}', '2022-04-19 20:43:56', '2022-04-19 20:43:56'),
(552, 'default', 'Disburse Loan', 22, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":22}', '2022-04-19 20:44:11', '2022-04-19 20:44:11'),
(553, 'default', 'Delete Client', 16, 'Modules\\Client\\Entities\\Client', 1, 'Modules\\User\\Entities\\User', '{\"id\":16}', '2022-04-19 20:45:07', '2022-04-19 20:45:07'),
(554, 'default', 'Update Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-19 21:21:49', '2022-04-19 21:21:49'),
(555, 'default', 'Update Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-19 21:22:41', '2022-04-19 21:22:41'),
(556, 'default', 'Create Loan Product', 8, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-19 21:33:13', '2022-04-19 21:33:13'),
(557, 'default', 'Update Loan Product', 8, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-19 21:34:31', '2022-04-19 21:34:31'),
(558, 'default', 'Update Loan Product', 8, 'Modules\\Loan\\Entities\\LoanProduct', 1, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-19 21:36:34', '2022-04-19 21:36:34'),
(559, 'default', 'Create Loan', 24, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":24}', '2022-04-19 21:37:56', '2022-04-19 21:37:56'),
(560, 'default', 'Approve Loan', 24, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":24}', '2022-04-19 21:38:48', '2022-04-19 21:38:48'),
(561, 'default', 'Disburse Loan', 24, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":24}', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(562, 'default', 'Update Loan Product', 8, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-20 14:13:34', '2022-04-20 14:13:34'),
(563, 'default', 'Create Loan', 25, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":25}', '2022-04-20 14:15:43', '2022-04-20 14:15:43'),
(564, 'default', 'Approve Loan', 25, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":25}', '2022-04-20 14:17:25', '2022-04-20 14:17:25'),
(565, 'default', 'Disburse Loan', 25, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":25}', '2022-04-20 14:17:44', '2022-04-20 14:17:44'),
(566, 'default', 'Undo Loan Disbursement', 25, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":25}', '2022-04-20 14:19:53', '2022-04-20 14:19:53'),
(567, 'default', 'Undo Loan Approval', 25, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":25}', '2022-04-20 14:20:03', '2022-04-20 14:20:03'),
(568, 'default', 'Undo Loan writeoff', 21, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":21}', '2022-04-20 14:24:41', '2022-04-20 14:24:41'),
(569, 'default', 'Update Loan Product', 8, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-20 14:30:24', '2022-04-20 14:30:24'),
(570, 'default', 'Update Loan', 25, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":25}', '2022-04-20 14:32:40', '2022-04-20 14:32:40'),
(571, 'default', 'Approve Loan', 25, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":25}', '2022-04-20 14:32:54', '2022-04-20 14:32:54'),
(572, 'default', 'Disburse Loan', 25, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":25}', '2022-04-20 14:33:08', '2022-04-20 14:33:08'),
(573, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-20 14:37:39', '2022-04-20 14:37:39'),
(574, 'default', 'Create Loan Repayment', 64, 'Modules\\Loan\\Entities\\LoanTransaction', 8, 'Modules\\User\\Entities\\User', '{\"id\":64}', '2022-04-20 19:13:12', '2022-04-20 19:13:12'),
(575, 'default', 'Undo Loan Disbursement', 25, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":25}', '2022-04-20 19:19:41', '2022-04-20 19:19:41'),
(576, 'default', 'Update Loan Product', 4, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-20 19:24:52', '2022-04-20 19:24:52'),
(577, 'default', 'Update Loan Product', 4, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-20 19:26:13', '2022-04-20 19:26:13'),
(578, 'default', 'Create Loan', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:29:12', '2022-04-20 19:29:12'),
(579, 'default', 'Approve Loan', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:29:24', '2022-04-20 19:29:24'),
(580, 'default', 'Disburse Loan', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:29:43', '2022-04-20 19:29:43'),
(581, 'default', 'Undo Loan Disbursement', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:31:36', '2022-04-20 19:31:36'),
(582, 'default', 'Undo Loan Approval', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:31:49', '2022-04-20 19:31:49'),
(583, 'default', 'Update Loan', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:32:16', '2022-04-20 19:32:16'),
(584, 'default', 'Approve Loan', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:32:27', '2022-04-20 19:32:27'),
(585, 'default', 'Disburse Loan', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:32:43', '2022-04-20 19:32:43'),
(586, 'default', 'Undo Loan Disbursement', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:33:55', '2022-04-20 19:33:55'),
(587, 'default', 'Undo Loan Approval', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:34:07', '2022-04-20 19:34:07'),
(588, 'default', 'Update Loan', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:36:53', '2022-04-20 19:36:53'),
(589, 'default', 'Approve Loan', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:37:07', '2022-04-20 19:37:07'),
(590, 'default', 'Disburse Loan', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:37:22', '2022-04-20 19:37:22'),
(591, 'default', 'Undo Loan Disbursement', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:38:35', '2022-04-20 19:38:35'),
(592, 'default', 'Undo Loan Approval', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:38:43', '2022-04-20 19:38:43'),
(593, 'default', 'Create Loan Charge', 3, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-20 19:41:02', '2022-04-20 19:41:02'),
(594, 'default', 'Update Loan Product', 4, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-20 19:44:11', '2022-04-20 19:44:11'),
(595, 'default', 'Delete Loan Product', 8, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-20 19:44:39', '2022-04-20 19:44:39'),
(596, 'default', 'Update Loan Product', 4, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-20 19:45:21', '2022-04-20 19:45:21'),
(597, 'default', 'Update Loan Product', 4, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-20 19:47:49', '2022-04-20 19:47:49'),
(598, 'default', 'Approve Loan', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:50:37', '2022-04-20 19:50:37'),
(599, 'default', 'Disburse Loan', 26, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(600, 'default', 'Create Client', 17, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":17}', '2022-04-20 19:59:36', '2022-04-20 19:59:36'),
(601, 'default', 'Delete Client', 14, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":14}', '2022-04-20 19:59:57', '2022-04-20 19:59:57'),
(602, 'default', 'Update Client', 17, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":17}', '2022-04-20 20:02:04', '2022-04-20 20:02:04'),
(603, 'default', 'Update Client Status', 17, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":17}', '2022-04-20 20:04:13', '2022-04-20 20:04:13'),
(604, 'default', 'Update Client Status', 17, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":17}', '2022-04-20 20:04:15', '2022-04-20 20:04:15'),
(605, 'default', 'Create Loan', 27, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":27}', '2022-04-20 20:05:26', '2022-04-20 20:05:26'),
(606, 'default', 'Approve Loan', 27, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":27}', '2022-04-20 20:05:45', '2022-04-20 20:05:45'),
(607, 'default', 'Undo Loan Approval', 27, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":27}', '2022-04-20 20:06:01', '2022-04-20 20:06:01');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(608, 'default', 'Update Loan', 27, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":27}', '2022-04-20 20:06:46', '2022-04-20 20:06:46'),
(609, 'default', 'Approve Loan', 27, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":27}', '2022-04-20 20:06:58', '2022-04-20 20:06:58'),
(610, 'default', 'Disburse Loan', 27, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":27}', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(611, 'default', 'Update Loan Charge', 3, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-20 20:19:50', '2022-04-20 20:19:50'),
(612, 'default', 'Update Loan Charge', 3, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-20 20:21:02', '2022-04-20 20:21:02'),
(613, 'default', 'Create Loan', 28, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":28}', '2022-04-20 20:21:55', '2022-04-20 20:21:55'),
(614, 'default', 'Update Loan', 28, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":28}', '2022-04-20 20:22:35', '2022-04-20 20:22:35'),
(615, 'default', 'Approve Loan', 28, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":28}', '2022-04-20 20:22:54', '2022-04-20 20:22:54'),
(616, 'default', 'Disburse Loan', 28, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":28}', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(617, 'default', 'Update Loan Charge', 3, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-20 20:25:16', '2022-04-20 20:25:16'),
(618, 'default', 'Update Loan Charge', 3, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-20 20:30:51', '2022-04-20 20:30:51'),
(619, 'default', 'Update Loan Product', 4, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-20 20:32:07', '2022-04-20 20:32:07'),
(620, 'default', 'Create Loan', 29, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-20 20:35:19', '2022-04-20 20:35:19'),
(621, 'default', 'Approve Loan', 29, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-20 20:35:33', '2022-04-20 20:35:33'),
(622, 'default', 'Disburse Loan', 29, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-20 20:35:50', '2022-04-20 20:35:50'),
(623, 'default', 'Undo Loan Disbursement', 29, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-20 20:36:24', '2022-04-20 20:36:24'),
(624, 'default', 'Undo Loan Approval', 29, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-20 20:36:33', '2022-04-20 20:36:33'),
(625, 'default', 'Update Loan', 29, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-20 20:37:14', '2022-04-20 20:37:14'),
(626, 'default', 'Approve Loan', 29, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-20 20:37:26', '2022-04-20 20:37:26'),
(627, 'default', 'Disburse Loan', 29, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-20 20:37:40', '2022-04-20 20:37:40'),
(628, 'default', 'Undo Loan Disbursement', 29, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-20 20:41:19', '2022-04-20 20:41:19'),
(629, 'default', 'Undo Loan Approval', 29, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-20 21:00:24', '2022-04-20 21:00:24'),
(630, 'default', 'Update Loan Charge', 3, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-20 21:12:59', '2022-04-20 21:12:59'),
(631, 'default', 'Create Loan', 30, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":30}', '2022-04-20 21:14:08', '2022-04-20 21:14:08'),
(632, 'default', 'Approve Loan', 30, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":30}', '2022-04-20 21:14:41', '2022-04-20 21:14:41'),
(633, 'default', 'Disburse Loan', 30, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":30}', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(634, 'default', 'Update Loan Charge', 3, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-20 21:16:54', '2022-04-20 21:16:54'),
(635, 'default', 'Approve Loan', 29, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-20 21:18:03', '2022-04-20 21:18:03'),
(636, 'default', 'Disburse Loan', 29, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(637, 'default', 'Create Loan', 31, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":31}', '2022-04-20 21:21:03', '2022-04-20 21:21:03'),
(638, 'default', 'Approve Loan', 31, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":31}', '2022-04-20 21:21:31', '2022-04-20 21:21:31'),
(639, 'default', 'Disburse Loan', 31, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":31}', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(640, 'default', 'Update Loan Product', 6, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-21 11:30:15', '2022-04-21 11:30:15'),
(641, 'default', 'Update Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-21 11:32:49', '2022-04-21 11:32:49'),
(642, 'default', 'Update Loan Product', 6, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-21 11:33:41', '2022-04-21 11:33:41'),
(643, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-21 11:36:30', '2022-04-21 11:36:30'),
(644, 'default', 'Update Loan Product', 6, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-21 11:37:19', '2022-04-21 11:37:19'),
(645, 'default', 'Create Loan', 32, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-21 11:39:19', '2022-04-21 11:39:19'),
(646, 'default', 'Approve Loan', 32, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-21 11:39:33', '2022-04-21 11:39:33'),
(647, 'default', 'Disburse Loan', 32, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-21 11:40:03', '2022-04-21 11:40:03'),
(648, 'default', 'Undo Loan Disbursement', 32, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-21 11:43:29', '2022-04-21 11:43:29'),
(649, 'default', 'Undo Loan Approval', 32, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-21 11:43:37', '2022-04-21 11:43:37'),
(650, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-21 11:45:11', '2022-04-21 11:45:11'),
(651, 'default', 'Approve Loan', 32, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-21 11:47:03', '2022-04-21 11:47:03'),
(652, 'default', 'Disburse Loan', 32, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-21 11:47:34', '2022-04-21 11:47:34'),
(653, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-21 11:48:58', '2022-04-21 11:48:58'),
(654, 'default', 'Undo Loan Disbursement', 32, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-21 11:49:29', '2022-04-21 11:49:29'),
(655, 'default', 'Undo Loan Approval', 32, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-21 11:49:36', '2022-04-21 11:49:36'),
(656, 'default', 'Approve Loan', 32, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-21 11:49:52', '2022-04-21 11:49:52'),
(657, 'default', 'Disburse Loan', 32, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(658, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-21 11:50:58', '2022-04-21 11:50:58'),
(659, 'default', 'Create Loan', 33, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":33}', '2022-04-21 11:51:46', '2022-04-21 11:51:46'),
(660, 'default', 'Approve Loan', 33, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":33}', '2022-04-21 11:51:59', '2022-04-21 11:51:59'),
(661, 'default', 'Disburse Loan', 33, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":33}', '2022-04-21 11:52:13', '2022-04-21 11:52:13'),
(662, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-21 11:55:11', '2022-04-21 11:55:11'),
(663, 'default', 'Create Loan', 34, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":34}', '2022-04-21 11:56:33', '2022-04-21 11:56:33'),
(664, 'default', 'Approve Loan', 34, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":34}', '2022-04-21 11:56:45', '2022-04-21 11:56:45'),
(665, 'default', 'Disburse Loan', 34, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":34}', '2022-04-21 11:57:00', '2022-04-21 11:57:00'),
(666, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-21 13:08:25', '2022-04-21 13:08:25'),
(667, 'default', 'Create Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:09:29', '2022-04-21 13:09:29'),
(668, 'default', 'Approve Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:09:48', '2022-04-21 13:09:48'),
(669, 'default', 'Disburse Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:10:09', '2022-04-21 13:10:09'),
(670, 'default', 'Undo Loan Disbursement', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:10:37', '2022-04-21 13:10:37'),
(671, 'default', 'Undo Loan Approval', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:10:46', '2022-04-21 13:10:46'),
(672, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-21 13:11:52', '2022-04-21 13:11:52'),
(673, 'default', 'Update Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:13:06', '2022-04-21 13:13:06'),
(674, 'default', 'Approve Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:13:20', '2022-04-21 13:13:20'),
(675, 'default', 'Disburse Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:13:30', '2022-04-21 13:13:30'),
(676, 'default', 'Undo Loan Disbursement', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:14:14', '2022-04-21 13:14:14'),
(677, 'default', 'Undo Loan Approval', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:14:25', '2022-04-21 13:14:25'),
(678, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-21 13:15:09', '2022-04-21 13:15:09'),
(679, 'default', 'Update Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:16:20', '2022-04-21 13:16:20'),
(680, 'default', 'Approve Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:16:36', '2022-04-21 13:16:36'),
(681, 'default', 'Disburse Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:16:51', '2022-04-21 13:16:51'),
(682, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-21 13:17:50', '2022-04-21 13:17:50'),
(683, 'default', 'Undo Loan Disbursement', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:19:11', '2022-04-21 13:19:11'),
(684, 'default', 'Undo Loan Approval', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:19:21', '2022-04-21 13:19:21'),
(685, 'default', 'Update Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:19:45', '2022-04-21 13:19:45'),
(686, 'default', 'Approve Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:20:01', '2022-04-21 13:20:01'),
(687, 'default', 'Disburse Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:20:13', '2022-04-21 13:20:13'),
(688, 'default', 'Undo Loan Disbursement', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:20:50', '2022-04-21 13:20:50'),
(689, 'default', 'Undo Loan Approval', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:20:59', '2022-04-21 13:20:59'),
(690, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-21 13:21:36', '2022-04-21 13:21:36'),
(691, 'default', 'Update Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:22:46', '2022-04-21 13:22:46'),
(692, 'default', 'Approve Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:22:56', '2022-04-21 13:22:56'),
(693, 'default', 'Disburse Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:23:10', '2022-04-21 13:23:10'),
(694, 'default', 'Update Loan Charge', 2, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-21 13:24:00', '2022-04-21 13:24:00'),
(695, 'default', 'Undo Loan Disbursement', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:24:53', '2022-04-21 13:24:53'),
(696, 'default', 'Undo Loan Approval', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:25:01', '2022-04-21 13:25:01'),
(697, 'default', 'Update Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:25:21', '2022-04-21 13:25:21'),
(698, 'default', 'Approve Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:25:32', '2022-04-21 13:25:32'),
(699, 'default', 'Disburse Loan', 35, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-21 13:25:45', '2022-04-21 13:25:45'),
(700, 'default', 'Delete Loan Product', 7, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-21 13:26:44', '2022-04-21 13:26:44'),
(701, 'default', 'Update Loan Product', 4, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-21 13:28:06', '2022-04-21 13:28:06'),
(702, 'default', 'Update Loan Charge', 3, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-21 13:29:07', '2022-04-21 13:29:07'),
(703, 'default', 'Delete Loan Charge', 1, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":1}', '2022-04-21 13:29:27', '2022-04-21 13:29:27'),
(704, 'default', 'Create Loan Charge', 4, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-21 13:31:23', '2022-04-21 13:31:23'),
(705, 'default', 'Update Loan Product', 2, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-21 13:44:06', '2022-04-21 13:44:06'),
(706, 'default', 'Delete Role', 6, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-21 23:18:13', '2022-04-21 23:18:13'),
(707, 'default', 'Delete Role', 7, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-21 23:18:28', '2022-04-21 23:18:28'),
(708, 'default', 'Delete Role', 8, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":8}', '2022-04-21 23:18:41', '2022-04-21 23:18:41'),
(709, 'default', 'Update Role', 9, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-21 23:56:57', '2022-04-21 23:56:57'),
(710, 'default', 'Update Role', 9, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-21 23:57:35', '2022-04-21 23:57:35'),
(711, 'default', 'Update Role', 9, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-22 00:02:19', '2022-04-22 00:02:19'),
(712, 'default', 'Update Role', 9, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-22 00:10:34', '2022-04-22 00:10:34'),
(713, 'default', 'Create Branch', 5, 'Modules\\Branch\\Entities\\Branch', 8, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-22 00:12:49', '2022-04-22 00:12:49'),
(714, 'default', 'Update User', 10, 'Modules\\User\\Entities\\User', 8, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-22 00:16:11', '2022-04-22 00:16:11'),
(715, 'default', 'Add Branch User', 4, 'Modules\\Branch\\Entities\\BranchUser', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-22 00:17:50', '2022-04-22 00:17:50'),
(716, 'default', 'Update User', 9, 'Modules\\User\\Entities\\User', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-22 00:21:51', '2022-04-22 00:21:51'),
(717, 'default', 'Remove Branch User', NULL, NULL, 8, 'Modules\\User\\Entities\\User', '[]', '2022-04-22 00:25:36', '2022-04-22 00:25:36'),
(718, 'default', 'Update Role', 5, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-22 00:35:41', '2022-04-22 00:35:41'),
(719, 'default', 'Create Client', 18, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":18}', '2022-04-22 12:29:27', '2022-04-22 12:29:27'),
(720, 'default', 'Create Client', 19, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":19}', '2022-04-22 12:32:17', '2022-04-22 12:32:17'),
(721, 'default', 'Create Client', 20, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-22 12:34:07', '2022-04-22 12:34:07'),
(722, 'default', 'Create Client', 21, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":21}', '2022-04-22 12:38:06', '2022-04-22 12:38:06'),
(723, 'default', 'Update Role', 9, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-22 12:41:06', '2022-04-22 12:41:06'),
(724, 'default', 'Create Client', 22, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":22}', '2022-04-22 12:43:23', '2022-04-22 12:43:23'),
(725, 'default', 'Create Client', 23, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":23}', '2022-04-22 12:46:22', '2022-04-22 12:46:22'),
(726, 'default', 'Create Client', 24, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":24}', '2022-04-22 12:50:38', '2022-04-22 12:50:38'),
(727, 'default', 'Update Role', 9, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-22 12:50:59', '2022-04-22 12:50:59'),
(728, 'default', 'Update Role', 9, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-22 12:55:54', '2022-04-22 12:55:54'),
(729, 'default', 'Delete Client', 24, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":24}', '2022-04-22 12:56:47', '2022-04-22 12:56:47'),
(730, 'default', 'Delete Client', 23, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":23}', '2022-04-22 12:57:06', '2022-04-22 12:57:06'),
(731, 'default', 'Delete Client', 22, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":22}', '2022-04-22 12:57:09', '2022-04-22 12:57:09'),
(732, 'default', 'Delete Client', 21, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":21}', '2022-04-22 12:57:24', '2022-04-22 12:57:24'),
(733, 'default', 'Delete Client', 20, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":20}', '2022-04-22 12:57:38', '2022-04-22 12:57:38'),
(734, 'default', 'Delete Client', 19, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":19}', '2022-04-22 12:57:57', '2022-04-22 12:57:57'),
(735, 'default', 'Delete Client', 18, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":18}', '2022-04-22 12:58:12', '2022-04-22 12:58:12'),
(736, 'default', 'Create Client', 25, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":25}', '2022-04-22 13:00:53', '2022-04-22 13:00:53'),
(737, 'default', 'Update Role', 9, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-22 13:05:24', '2022-04-22 13:05:24'),
(738, 'default', 'Create Client', 26, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-22 13:07:36', '2022-04-22 13:07:36'),
(739, 'default', 'Delete Client', 26, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":26}', '2022-04-22 13:08:36', '2022-04-22 13:08:36'),
(740, 'default', 'Update Role', 9, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-22 13:10:22', '2022-04-22 13:10:22'),
(741, 'default', 'Delete Client', 25, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":25}', '2022-04-22 13:10:51', '2022-04-22 13:10:51'),
(742, 'default', 'Delete Client', 17, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":17}', '2022-04-22 13:11:20', '2022-04-22 13:11:20'),
(743, 'default', 'Create Client', 27, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":27}', '2022-04-22 13:11:42', '2022-04-22 13:11:42'),
(744, 'default', 'Update Role', 9, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-22 13:14:07', '2022-04-22 13:14:07'),
(745, 'default', 'Delete Branch', 4, 'Modules\\Branch\\Entities\\Branch', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-22 13:32:57', '2022-04-22 13:32:57'),
(746, 'default', 'Delete Client', 27, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":27}', '2022-04-22 13:33:41', '2022-04-22 13:33:41'),
(747, 'default', 'Create Client', 28, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":28}', '2022-04-22 13:35:44', '2022-04-22 13:35:44'),
(748, 'default', 'Delete Client', 9, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-22 13:41:07', '2022-04-22 13:41:07'),
(749, 'default', 'Delete Client', 10, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-22 13:41:16', '2022-04-22 13:41:16'),
(750, 'default', 'Delete Client', 12, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":12}', '2022-04-22 13:41:27', '2022-04-22 13:41:27'),
(751, 'default', 'Update Client Status', 28, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":28}', '2022-04-22 14:00:56', '2022-04-22 14:00:56'),
(752, 'default', 'Create Loan', 36, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":36}', '2022-04-22 14:05:28', '2022-04-22 14:05:28'),
(753, 'default', 'Create Loan', 37, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":37}', '2022-04-22 14:07:10', '2022-04-22 14:07:10'),
(754, 'default', 'Create Loan', 38, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":38}', '2022-04-22 15:06:18', '2022-04-22 15:06:18'),
(755, 'default', 'Create Loan', 39, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":39}', '2022-04-22 15:18:24', '2022-04-22 15:18:24'),
(756, 'default', 'Update Role', 9, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-22 15:52:02', '2022-04-22 15:52:02'),
(757, 'default', 'Create Loan', 40, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":40}', '2022-04-22 15:53:08', '2022-04-22 15:53:08'),
(758, 'default', 'Create Loan Collateral', 2, 'Modules\\Loan\\Entities\\LoanCollateral', 10, 'Modules\\User\\Entities\\User', '{\"id\":2}', '2022-04-22 15:59:18', '2022-04-22 15:59:18'),
(759, 'default', 'Create Loan Guarantor', 3, 'Modules\\Loan\\Entities\\LoanGuarantor', 10, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-22 16:00:41', '2022-04-22 16:00:41'),
(760, 'default', 'Update Role', 9, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-22 16:04:32', '2022-04-22 16:04:32'),
(761, 'default', 'Update Loan', 40, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":40}', '2022-04-22 16:05:02', '2022-04-22 16:05:02'),
(762, 'default', 'Approve Loan', 40, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":40}', '2022-04-22 16:08:56', '2022-04-22 16:08:56'),
(763, 'default', 'Disburse Loan', 40, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":40}', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(764, 'default', 'Update Settings', NULL, NULL, 8, 'Modules\\User\\Entities\\User', '[]', '2022-04-22 16:43:44', '2022-04-22 16:43:44'),
(765, 'default', 'Create Role', 10, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-22 16:53:01', '2022-04-22 16:53:01'),
(766, 'default', 'Create User', 11, 'Modules\\User\\Entities\\User', 8, 'Modules\\User\\Entities\\User', '{\"id\":11}', '2022-04-22 16:57:33', '2022-04-22 16:57:33'),
(767, 'default', 'Update Role', 10, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-22 17:06:43', '2022-04-22 17:06:43'),
(768, 'default', 'Create Client', 29, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-22 18:36:47', '2022-04-22 18:36:47'),
(769, 'default', 'Update Client Status', 29, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":29}', '2022-04-22 18:37:18', '2022-04-22 18:37:18'),
(770, 'default', 'Create Loan', 41, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":41}', '2022-04-22 18:38:28', '2022-04-22 18:38:28'),
(771, 'default', 'Create Loan Collateral', 3, 'Modules\\Loan\\Entities\\LoanCollateral', 10, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-22 18:40:00', '2022-04-22 18:40:00'),
(772, 'default', 'Create Loan Guarantor', 4, 'Modules\\Loan\\Entities\\LoanGuarantor', 10, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-22 18:40:37', '2022-04-22 18:40:37'),
(773, 'default', 'Approve Loan', 41, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":41}', '2022-04-22 18:43:41', '2022-04-22 18:43:41'),
(774, 'default', 'Disburse Loan', 41, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":41}', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(775, 'default', 'Create Client', 30, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":30}', '2022-04-22 18:44:03', '2022-04-22 18:44:03'),
(776, 'default', 'Create Client', 31, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":31}', '2022-04-22 18:44:29', '2022-04-22 18:44:29'),
(777, 'default', 'Update Client Status', 30, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":30}', '2022-04-22 18:46:10', '2022-04-22 18:46:10'),
(778, 'default', 'Create Loan', 42, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":42}', '2022-04-22 18:48:53', '2022-04-22 18:48:53'),
(779, 'default', 'Create Loan Collateral', 4, 'Modules\\Loan\\Entities\\LoanCollateral', 10, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-22 18:50:08', '2022-04-22 18:50:08'),
(780, 'default', 'Create Loan Guarantor', 5, 'Modules\\Loan\\Entities\\LoanGuarantor', 10, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-22 18:51:05', '2022-04-22 18:51:05'),
(781, 'default', 'Approve Loan', 42, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":42}', '2022-04-22 18:51:40', '2022-04-22 18:51:40'),
(782, 'default', 'Disburse Loan', 42, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":42}', '2022-04-22 18:52:03', '2022-04-22 18:52:03'),
(783, 'default', 'Undo Loan Disbursement', 42, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":42}', '2022-04-22 18:52:49', '2022-04-22 18:52:49'),
(784, 'default', 'Undo Loan Approval', 42, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":42}', '2022-04-22 18:52:59', '2022-04-22 18:52:59'),
(785, 'default', 'Create Client', 32, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-22 18:54:18', '2022-04-22 18:54:18'),
(786, 'default', 'Update Client Status', 32, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":32}', '2022-04-22 18:54:54', '2022-04-22 18:54:54'),
(787, 'default', 'Create Loan', 43, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":43}', '2022-04-22 18:57:41', '2022-04-22 18:57:41'),
(788, 'default', 'Create Loan Collateral', 5, 'Modules\\Loan\\Entities\\LoanCollateral', 10, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-22 18:59:08', '2022-04-22 18:59:08'),
(789, 'default', 'Create Loan Guarantor', 6, 'Modules\\Loan\\Entities\\LoanGuarantor', 10, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-22 18:59:48', '2022-04-22 18:59:48'),
(790, 'default', 'Update Loan', 43, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":43}', '2022-04-22 19:00:24', '2022-04-22 19:00:24'),
(791, 'default', 'Update Loan', 43, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":43}', '2022-04-22 19:02:57', '2022-04-22 19:02:57'),
(792, 'default', 'Update Loan', 43, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":43}', '2022-04-22 19:03:17', '2022-04-22 19:03:17'),
(793, 'default', 'Approve Loan', 43, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":43}', '2022-04-22 19:03:24', '2022-04-22 19:03:24'),
(794, 'default', 'Approve Loan', 43, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":43}', '2022-04-22 19:04:04', '2022-04-22 19:04:04'),
(795, 'default', 'Disburse Loan', 43, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":43}', '2022-04-22 19:04:32', '2022-04-22 19:04:32'),
(796, 'default', 'Create Client', 33, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":33}', '2022-04-22 19:07:33', '2022-04-22 19:07:33'),
(797, 'default', 'Update Client Status', 33, 'Modules\\Client\\Entities\\Client', 10, 'Modules\\User\\Entities\\User', '{\"id\":33}', '2022-04-22 19:08:04', '2022-04-22 19:08:04'),
(798, 'default', 'Approve Loan', 42, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":42}', '2022-04-22 19:08:19', '2022-04-22 19:08:19'),
(799, 'default', 'Create Loan', 44, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":44}', '2022-04-22 19:09:31', '2022-04-22 19:09:31'),
(800, 'default', 'Disburse Loan', 42, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":42}', '2022-04-22 19:09:55', '2022-04-22 19:09:55'),
(801, 'default', 'Undo Loan Disbursement', 42, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":42}', '2022-04-22 19:11:09', '2022-04-22 19:11:09'),
(802, 'default', 'Create Loan Collateral', 6, 'Modules\\Loan\\Entities\\LoanCollateral', 10, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-22 19:11:09', '2022-04-22 19:11:09'),
(803, 'default', 'Undo Loan Disbursement', 42, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":42}', '2022-04-22 19:11:37', '2022-04-22 19:11:37'),
(804, 'default', 'Undo Loan Approval', 42, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":42}', '2022-04-22 19:12:01', '2022-04-22 19:12:01'),
(805, 'default', 'Create Loan Guarantor', 7, 'Modules\\Loan\\Entities\\LoanGuarantor', 10, 'Modules\\User\\Entities\\User', '{\"id\":7}', '2022-04-22 19:12:02', '2022-04-22 19:12:02'),
(806, 'default', 'Update Loan', 42, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":42}', '2022-04-22 19:13:52', '2022-04-22 19:13:52'),
(807, 'default', 'Create Loan', 45, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":45}', '2022-04-22 19:14:33', '2022-04-22 19:14:33'),
(808, 'default', 'Approve Loan', 45, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":45}', '2022-04-22 19:15:19', '2022-04-22 19:15:19'),
(809, 'default', 'Disburse Loan', 45, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":45}', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(810, 'default', 'Update Loan', 44, 'Modules\\Loan\\Entities\\Loan', 10, 'Modules\\User\\Entities\\User', '{\"id\":44}', '2022-04-22 19:19:01', '2022-04-22 19:19:01'),
(811, 'default', 'Approve Loan', 44, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":44}', '2022-04-22 19:19:29', '2022-04-22 19:19:29'),
(812, 'default', 'Approve Loan', 44, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":44}', '2022-04-22 19:19:36', '2022-04-22 19:19:36'),
(813, 'default', 'Disburse Loan', 44, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":44}', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(814, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-22 19:34:42', '2022-04-22 19:34:42'),
(815, 'default', 'Create User', 12, 'Modules\\User\\Entities\\User', 8, 'Modules\\User\\Entities\\User', '{\"id\":12}', '2022-04-22 19:40:39', '2022-04-22 19:40:39'),
(816, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-22 19:56:38', '2022-04-22 19:56:38'),
(817, 'default', 'Update Role', 4, 'Spatie\\Permission\\Models\\Role', 8, 'Modules\\User\\Entities\\User', '{\"id\":4}', '2022-04-22 20:03:02', '2022-04-22 20:03:02'),
(818, 'default', 'Undo Loan Disbursement', 3, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-22 20:07:14', '2022-04-22 20:07:14'),
(819, 'default', 'Undo Loan Approval', 3, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":3}', '2022-04-22 20:07:24', '2022-04-22 20:07:24'),
(820, 'default', 'Undo Loan Disbursement', 10, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-22 20:09:04', '2022-04-22 20:09:04'),
(821, 'default', 'Undo Loan Approval', 10, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":10}', '2022-04-22 20:09:14', '2022-04-22 20:09:14'),
(822, 'default', 'Undo Loan Disbursement', 11, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":11}', '2022-04-22 20:10:20', '2022-04-22 20:10:20'),
(823, 'default', 'Undo Loan Approval', 11, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":11}', '2022-04-22 20:10:47', '2022-04-22 20:10:47'),
(824, 'default', 'Undo Loan Disbursement', 35, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-22 20:15:09', '2022-04-22 20:15:09'),
(825, 'default', 'Undo Loan Approval', 35, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":35}', '2022-04-22 20:15:26', '2022-04-22 20:15:26'),
(826, 'default', 'Create Branch', 6, 'Modules\\Branch\\Entities\\Branch', 12, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-22 20:16:38', '2022-04-22 20:16:38'),
(827, 'default', 'Undo Loan Disbursement', 34, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":34}', '2022-04-22 20:17:14', '2022-04-22 20:17:14'),
(828, 'default', 'Undo Loan Approval', 34, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":34}', '2022-04-22 20:17:26', '2022-04-22 20:17:26'),
(829, 'default', 'Undo Loan Approval', 34, 'Modules\\Loan\\Entities\\Loan', 1, 'Modules\\User\\Entities\\User', '{\"id\":34}', '2022-04-22 20:17:36', '2022-04-22 20:17:36'),
(830, 'default', 'Undo Loan Disbursement', 33, 'Modules\\Loan\\Entities\\Loan', 12, 'Modules\\User\\Entities\\User', '{\"id\":33}', '2022-04-22 21:44:10', '2022-04-22 21:44:10'),
(831, 'default', 'Undo Loan Approval', 33, 'Modules\\Loan\\Entities\\Loan', 12, 'Modules\\User\\Entities\\User', '{\"id\":33}', '2022-04-22 21:44:19', '2022-04-22 21:44:19'),
(832, 'default', 'Undo Loan Disbursement', 12, 'Modules\\Loan\\Entities\\Loan', 12, 'Modules\\User\\Entities\\User', '{\"id\":12}', '2022-04-22 21:45:14', '2022-04-22 21:45:14'),
(833, 'default', 'Undo Loan Approval', 12, 'Modules\\Loan\\Entities\\Loan', 12, 'Modules\\User\\Entities\\User', '{\"id\":12}', '2022-04-22 21:45:24', '2022-04-22 21:45:24'),
(834, 'default', 'Undo Loan Disbursement', 13, 'Modules\\Loan\\Entities\\Loan', 12, 'Modules\\User\\Entities\\User', '{\"id\":13}', '2022-04-22 21:47:56', '2022-04-22 21:47:56'),
(835, 'default', 'Undo Loan Approval', 13, 'Modules\\Loan\\Entities\\Loan', 12, 'Modules\\User\\Entities\\User', '{\"id\":13}', '2022-04-22 21:48:08', '2022-04-22 21:48:08'),
(836, 'default', 'Undo Loan Disbursement', 14, 'Modules\\Loan\\Entities\\Loan', 12, 'Modules\\User\\Entities\\User', '{\"id\":14}', '2022-04-22 21:49:57', '2022-04-22 21:49:57'),
(837, 'default', 'Undo Loan Approval', 14, 'Modules\\Loan\\Entities\\Loan', 12, 'Modules\\User\\Entities\\User', '{\"id\":14}', '2022-04-22 21:50:06', '2022-04-22 21:50:06'),
(838, 'default', 'Update User', 11, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":11}', '2022-04-22 23:46:32', '2022-04-22 23:46:32'),
(839, 'default', 'Update User', 11, 'Modules\\User\\Entities\\User', 1, 'Modules\\User\\Entities\\User', '{\"id\":11}', '2022-04-22 23:49:06', '2022-04-22 23:49:06'),
(840, 'default', 'Update User', 11, 'Modules\\User\\Entities\\User', 8, 'Modules\\User\\Entities\\User', '{\"id\":11}', '2022-04-24 15:35:20', '2022-04-24 15:35:20'),
(841, 'default', 'Create Loan Product', 9, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-24 16:00:56', '2022-04-24 16:00:56'),
(842, 'default', 'Create Loan Charge', 5, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-24 16:02:37', '2022-04-24 16:02:37'),
(843, 'default', 'Update Loan Product', 9, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-24 16:04:23', '2022-04-24 16:04:23'),
(844, 'default', 'Delete Client', 11, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":11}', '2022-04-24 16:15:29', '2022-04-24 16:15:29'),
(845, 'default', 'Update Client', 13, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":13}', '2022-04-24 16:16:29', '2022-04-24 16:16:29'),
(846, 'default', 'Delete Branch', 6, 'Modules\\Branch\\Entities\\Branch', 8, 'Modules\\User\\Entities\\User', '{\"id\":6}', '2022-04-24 16:17:18', '2022-04-24 16:17:18'),
(847, 'default', 'Update Client', 13, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":13}', '2022-04-24 16:18:27', '2022-04-24 16:18:27'),
(848, 'default', 'Update Client', 13, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":13}', '2022-04-24 16:18:51', '2022-04-24 16:18:51'),
(849, 'default', 'Add Branch User', 5, 'Modules\\Branch\\Entities\\BranchUser', 8, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-24 16:19:43', '2022-04-24 16:19:43'),
(850, 'default', 'Update Client', 13, 'Modules\\Client\\Entities\\Client', 8, 'Modules\\User\\Entities\\User', '{\"id\":13}', '2022-04-24 16:20:41', '2022-04-24 16:20:41'),
(851, 'default', 'Create Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:22:11', '2022-04-24 16:22:11'),
(852, 'default', 'Approve Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:22:39', '2022-04-24 16:22:39'),
(853, 'default', 'Disburse Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:22:57', '2022-04-24 16:22:57'),
(854, 'default', 'Undo Loan Disbursement', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:32:49', '2022-04-24 16:32:49'),
(855, 'default', 'Undo Loan Approval', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:33:01', '2022-04-24 16:33:01'),
(856, 'default', 'Update Loan Product', 9, 'Modules\\Loan\\Entities\\LoanProduct', 8, 'Modules\\User\\Entities\\User', '{\"id\":9}', '2022-04-24 16:34:23', '2022-04-24 16:34:23'),
(857, 'default', 'Update Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:37:16', '2022-04-24 16:37:16'),
(858, 'default', 'Approve Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:37:34', '2022-04-24 16:37:34'),
(859, 'default', 'Disburse Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:37:49', '2022-04-24 16:37:49'),
(860, 'default', 'Undo Loan Disbursement', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:38:51', '2022-04-24 16:38:51'),
(861, 'default', 'Undo Loan Approval', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:39:02', '2022-04-24 16:39:02'),
(862, 'default', 'Update Loan Charge', 5, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-24 16:52:56', '2022-04-24 16:52:56'),
(863, 'default', 'Update Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:53:58', '2022-04-24 16:53:58'),
(864, 'default', 'Approve Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:54:24', '2022-04-24 16:54:24'),
(865, 'default', 'Disburse Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:55:02', '2022-04-24 16:55:02'),
(866, 'default', 'Update Loan Charge', 5, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-24 16:55:55', '2022-04-24 16:55:55'),
(867, 'default', 'Undo Loan Disbursement', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:57:19', '2022-04-24 16:57:19'),
(868, 'default', 'Undo Loan Approval', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:57:30', '2022-04-24 16:57:30'),
(869, 'default', 'Update Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:57:51', '2022-04-24 16:57:51'),
(870, 'default', 'Approve Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:58:08', '2022-04-24 16:58:08'),
(871, 'default', 'Disburse Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:58:28', '2022-04-24 16:58:28'),
(872, 'default', 'Undo Loan Disbursement', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:59:18', '2022-04-24 16:59:18'),
(873, 'default', 'Undo Loan Approval', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 16:59:28', '2022-04-24 16:59:28'),
(874, 'default', 'Update Loan Charge', 5, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-24 17:00:14', '2022-04-24 17:00:14'),
(875, 'default', 'Update Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 17:01:09', '2022-04-24 17:01:09'),
(876, 'default', 'Approve Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 17:01:22', '2022-04-24 17:01:22'),
(877, 'default', 'Disburse Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 17:01:35', '2022-04-24 17:01:35'),
(878, 'default', 'Update Loan Charge', 5, 'Modules\\Loan\\Entities\\LoanCharge', 8, 'Modules\\User\\Entities\\User', '{\"id\":5}', '2022-04-24 17:02:25', '2022-04-24 17:02:25'),
(879, 'default', 'Undo Loan Disbursement', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 17:03:43', '2022-04-24 17:03:43'),
(880, 'default', 'Undo Loan Approval', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 17:03:53', '2022-04-24 17:03:53'),
(881, 'default', 'Approve Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 17:15:20', '2022-04-24 17:15:20'),
(882, 'default', 'Approve Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 17:16:15', '2022-04-24 17:16:15'),
(883, 'default', 'Disburse Loan', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 17:16:33', '2022-04-24 17:16:33'),
(884, 'default', 'Undo Loan Disbursement', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 17:17:48', '2022-04-24 17:17:48'),
(885, 'default', 'Undo Loan Approval', 46, 'Modules\\Loan\\Entities\\Loan', 8, 'Modules\\User\\Entities\\User', '{\"id\":46}', '2022-04-24 17:18:21', '2022-04-24 17:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `asset_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_price` decimal(65,2) DEFAULT NULL,
  `replacement_value` decimal(65,2) DEFAULT NULL,
  `value` decimal(65,2) DEFAULT NULL,
  `life_span` int(11) DEFAULT NULL,
  `salvage_value` decimal(65,2) DEFAULT NULL,
  `serial_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bought_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive','sold','damaged','written_off') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `created_by_id`, `asset_type_id`, `branch_id`, `name`, `purchase_date`, `purchase_price`, `replacement_value`, `value`, `life_span`, `salvage_value`, `serial_number`, `bought_from`, `purchase_year`, `notes`, `status`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Test', '2020-10-02', '6000.00', NULL, '6000.00', 2, '3000.00', NULL, NULL, NULL, 'ggg', NULL, 0, '2020-10-27 15:32:59', '2020-10-27 15:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `asset_depreciation`
--

CREATE TABLE `asset_depreciation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beginning_value` decimal(65,2) DEFAULT NULL,
  `depreciation_value` decimal(65,2) DEFAULT NULL,
  `rate` decimal(65,2) DEFAULT NULL,
  `cost` decimal(65,2) DEFAULT NULL,
  `accumulated` decimal(65,2) DEFAULT NULL,
  `ending_value` decimal(65,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_files`
--

CREATE TABLE `asset_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_maintenance`
--

CREATE TABLE `asset_maintenance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `asset_maintenance_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `asset_id` bigint(20) UNSIGNED DEFAULT NULL,
  `performed_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(65,2) DEFAULT NULL,
  `mileage` decimal(65,2) DEFAULT NULL,
  `record_expense` tinyint(4) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_maintenance_types`
--

CREATE TABLE `asset_maintenance_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_notes`
--

CREATE TABLE `asset_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `asset_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_pictures`
--

CREATE TABLE `asset_pictures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `primary_picture` tinyint(4) NOT NULL DEFAULT 0,
  `picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_taken` date DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_types`
--

CREATE TABLE `asset_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('current','fixed','intangible','investment','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chart_of_account_fixed_asset_id` int(11) DEFAULT NULL,
  `chart_of_account_asset_id` int(11) DEFAULT NULL,
  `chart_of_account_contra_asset_id` int(11) DEFAULT NULL,
  `chart_of_account_expense_id` int(11) DEFAULT NULL,
  `chart_of_account_liability_id` int(11) DEFAULT NULL,
  `chart_of_account_income_id` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_types`
--

INSERT INTO `asset_types` (`id`, `name`, `type`, `chart_of_account_fixed_asset_id`, `chart_of_account_asset_id`, `chart_of_account_contra_asset_id`, `chart_of_account_expense_id`, `chart_of_account_liability_id`, `chart_of_account_income_id`, `notes`) VALUES
(1, 'Test', NULL, 1, 1, 2, 2, NULL, 3, 'ff');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_date` date DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `is_system` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `created_by_id`, `parent_id`, `manager_id`, `name`, `open_date`, `notes`, `active`, `is_system`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'Default', '2020-09-02', NULL, 1, 1, '2020-09-02 06:59:25', '2020-09-02 06:59:25'),
(2, NULL, NULL, NULL, 'Test', '2020-10-20', 'ff', 1, 0, '2020-10-20 07:51:37', '2020-10-20 07:51:37'),
(3, NULL, NULL, NULL, 'MADEO TIPTOP', '2022-04-15', 'Group', 1, 0, '2022-04-16 02:23:48', '2022-04-16 02:23:48'),
(5, NULL, NULL, NULL, 'BONDENI', '2022-04-21', 'New b', 1, 0, '2022-04-22 00:12:49', '2022-04-22 00:12:49');

-- --------------------------------------------------------

--
-- Table structure for table `branch_users`
--

CREATE TABLE `branch_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch_users`
--

INSERT INTO `branch_users` (`id`, `created_by_id`, `user_id`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, NULL, NULL),
(3, 1, 9, 4, NULL, NULL),
(4, 8, 10, 5, NULL, NULL),
(5, 8, 8, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gl_code` int(11) DEFAULT NULL,
  `account_type` enum('asset','expense','equity','liability','income') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'asset',
  `allow_manual` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`id`, `parent_id`, `name`, `gl_code`, `account_type`, `allow_manual`, `active`, `notes`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Asset', 100, 'asset', 1, 1, 'test', '2020-10-20 10:28:10', '2020-10-20 10:31:25'),
(2, NULL, 'Expense', 200, 'expense', 1, 1, NULL, '2020-10-22 16:26:48', '2020-10-22 16:27:07'),
(3, NULL, 'Income', 300, 'income', 1, 1, NULL, '2020-10-22 16:27:26', '2020-10-22 16:27:26'),
(4, NULL, 'Liability', 400, 'liability', 1, 1, NULL, '2020-10-22 16:27:53', '2020-10-22 16:27:53'),
(5, NULL, 'Equity', 500, 'equity', 1, 1, NULL, '2020-10-22 16:28:11', '2020-10-22 16:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_officer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','other','unspecified') COLLATE utf8mb4_unicode_ci DEFAULT 'unspecified',
  `status` enum('pending','active','inactive','deceased','unspecified','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `marital_status` enum('married','single','divorced','widowed','unspecified','other') COLLATE utf8mb4_unicode_ci DEFAULT 'unspecified',
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profession_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `joined_date` date DEFAULT NULL,
  `activation_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `created_by_id`, `branch_id`, `loan_officer_id`, `reference`, `account_number`, `first_name`, `middle_name`, `last_name`, `gender`, `status`, `marital_status`, `country_id`, `title_id`, `profession_id`, `client_type_id`, `mobile`, `phone`, `email`, `external_id`, `dob`, `address`, `city`, `state`, `zip`, `employer`, `photo`, `notes`, `signature`, `created_date`, `joined_date`, `activation_date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, 'Tererai', NULL, 'Mugova', 'male', 'active', NULL, 246, 1, NULL, 1, '+263774175438', NULL, 'tjmugova@localhost.com', 'vg56', '2019-03-29', '933 13th street\r\nGlenview 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-22', NULL, NULL, '2020-09-22 14:05:08', '2020-12-13 18:31:14'),
(2, 1, 1, 1, NULL, NULL, 'Maclaven', NULL, 'Mugova', 'male', 'active', 'single', 1, NULL, NULL, 1, '0774175438', NULL, 'tjmugova@gmail.com', 'm123', '2020-10-20', '933 13th street, Glenview 1', NULL, NULL, NULL, NULL, NULL, 'eee', NULL, '2020-10-20', NULL, NULL, '2020-10-20 14:18:38', '2020-10-21 11:48:45'),
(3, 1, 1, NULL, NULL, NULL, 'Tererai', NULL, 'Mugova', 'male', 'pending', NULL, 246, 1, 1, NULL, '+263774175438', NULL, 'tjmugova@webstudio.co.zw', NULL, '2020-12-07', '933 13th street\r\nGlenview 1', NULL, NULL, NULL, NULL, 'OvAlvTbvlyy7gKejJVEt1klvuCtFvHDoeTrIbg48.png', NULL, NULL, '2020-12-21', NULL, NULL, '2020-12-21 08:25:40', '2020-12-21 08:25:40'),
(13, 10, 4, 10, NULL, NULL, 'LUMINATA', NULL, 'NCHELU', 'female', 'active', 'single', 216, 2, 1, 2, '0767389389', NULL, 'nunnahoppa@gmail.com', '1', '1972-04-10', 'NANKANGA-RUKWA', NULL, NULL, NULL, NULL, 'bAUsbhDt5RZrU8SMUEzMOd8goUwMiNOnaqC6Bohk.jpeg', 'GROUP MEMBER', NULL, '2022-04-18', NULL, NULL, '2022-04-18 21:22:44', '2022-04-24 16:18:27'),
(28, 10, 5, 10, NULL, NULL, 'IBRAHIM ERNEST', NULL, 'SIMFUKWE', 'male', 'active', 'single', 216, 1, 1, 2, '0757711221', NULL, 'nunnahoppa@gmail.com', '1', '1982-10-07', 'BONDENI RUKWA', NULL, NULL, NULL, NULL, 't4h9IM2y23VAUh7RJotkPt4jvRhCrfldwFBpXPFD.jpeg', 'GROUP CHAIRMAN', NULL, '2022-04-22', NULL, NULL, '2022-04-22 13:35:44', '2022-04-22 14:00:56'),
(29, 10, 5, 10, NULL, NULL, 'FROLIAN JOSEPH', NULL, 'KAPUFI', 'male', 'active', 'single', 216, 1, 1, 2, '0744807794', NULL, 'nunnahoppa@gmail.com', '1', '1996-02-25', 'BONDENI - RUKWA', NULL, NULL, NULL, NULL, 'blKl8hGAUptSQuTl2IAaJgMp7TfGdPTIDvMCRMpG.jpeg', 'UMOJA GROUP VICE', NULL, '2022-04-22', NULL, NULL, '2022-04-22 18:36:47', '2022-04-22 18:37:18'),
(30, 10, 5, 10, NULL, NULL, 'ANAKLETA ADAMU', NULL, 'KAUCHUNGU', 'female', 'active', 'widowed', 216, 2, 1, 2, '0745289908', NULL, 'nunnahoppa@gmail.com', '1', '1974-12-12', 'BONDENI -RUKWA', NULL, NULL, NULL, NULL, 'Wi0pyRlPmAvL82jfWZwMhQhHLZwXzlAxcIaQCND9.jpeg', 'UMOJA GROUP MEMBER', NULL, '2022-04-22', NULL, NULL, '2022-04-22 18:44:03', '2022-04-22 18:46:10'),
(31, 10, 5, 10, NULL, NULL, 'ANAKLETA ADAMU', NULL, 'KAUCHUNGU', 'female', 'pending', 'widowed', 216, 2, 1, 2, '0745289908', NULL, 'nunnahoppa@gmail.com', '1', '1974-12-12', 'BONDENI -RUKWA', NULL, NULL, NULL, NULL, 'DVu1M1BNP6XibKMGCWbIqnYpYoF52vhv5CQG67WY.jpeg', 'UMOJA GROUP MEMBER', NULL, '2022-04-22', NULL, NULL, '2022-04-22 18:44:29', '2022-04-22 18:44:29'),
(32, 10, 5, 10, NULL, NULL, 'AGANO  CHIPEZYA', NULL, 'SHALANGU', 'male', 'active', 'divorced', 216, 1, 1, 2, '0745761359', NULL, 'nunnahoppa@gmail.com', '1', '1994-04-03', 'BONDENI - RUKWA', NULL, NULL, NULL, NULL, 'OzyLnftV6rlbhKt2OmaxV3iolFPJKczHLetsofsD.jpeg', 'UMOJA GROUP MEMBER', NULL, '2022-04-22', NULL, NULL, '2022-04-22 18:54:18', '2022-04-22 18:54:54'),
(33, 10, 5, 10, NULL, NULL, 'GAUDIOZA FRANCISCO', NULL, 'NCHELU', 'female', 'active', 'divorced', 216, 2, 1, 2, '0762993089', NULL, 'nunnahoppa@gmail.com', '1', '1972-04-10', 'BONDENI - RUKWA', NULL, NULL, NULL, NULL, 'eVn4n3diEURiwfGlKPpDSpLoGj67Pvy67sjyokDz.jpeg', 'UMOJA GROUP MEMBER', NULL, '2022-04-22', NULL, NULL, '2022-04-22 19:07:33', '2022-04-22 19:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `client_files`
--

CREATE TABLE `client_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_files`
--

INSERT INTO `client_files` (`id`, `created_by_id`, `client_id`, `name`, `description`, `size`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Test', 'ff', NULL, '3DiV1KowryCzUR6mxt9Alxve9cHguYjo2FCdZT9m.jpeg', '2020-10-21 12:05:36', '2020-10-21 12:05:36'),
(2, 1, 2, 'Test', 'gg', NULL, 'vwPvOzuisqwSkBdw7uBR42zUrudfFnejz1PmBfkN.jpeg', '2020-10-21 13:52:40', '2020-10-21 13:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `client_identification`
--

CREATE TABLE `client_identification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_identification_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `identification_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_identification`
--

INSERT INTO `client_identification` (`id`, `created_by_id`, `client_id`, `client_identification_type_id`, `identification_value`, `description`, `size`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '14-199697', 'dd', NULL, 'P2neJqyTEw0lezkhGGGF8A503gLZm8UdpWRj0Qa4.jpeg', '2020-10-21 12:06:02', '2020-10-21 12:06:02'),
(2, 1, 2, 1, '14-199697c18', 'rr', NULL, NULL, '2020-10-21 13:39:24', '2020-10-21 13:39:24');

-- --------------------------------------------------------

--
-- Table structure for table `client_identification_types`
--

CREATE TABLE `client_identification_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_identification_types`
--

INSERT INTO `client_identification_types` (`id`, `name`) VALUES
(1, 'National'),
(2, 'Passport');

-- --------------------------------------------------------

--
-- Table structure for table `client_next_of_kin`
--

CREATE TABLE `client_next_of_kin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_relationship_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','other','unspecified') COLLATE utf8mb4_unicode_ci DEFAULT 'unspecified',
  `marital_status` enum('married','single','divorced','widowed','unspecified','other') COLLATE utf8mb4_unicode_ci DEFAULT 'unspecified',
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profession_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_next_of_kin`
--

INSERT INTO `client_next_of_kin` (`id`, `created_by_id`, `client_id`, `client_relationship_id`, `first_name`, `middle_name`, `last_name`, `gender`, `marital_status`, `country_id`, `title_id`, `profession_id`, `mobile`, `phone`, `email`, `dob`, `address`, `city`, `state`, `zip`, `employer`, `photo`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'Tererai', NULL, 'Mugova', 'male', 'single', 1, 1, 1, '0774175438', NULL, 'tjmugova@gmail.com', '2020-10-22', '1110 11th crescent glenview 1\r\nGlenview 1', NULL, NULL, NULL, NULL, NULL, 'ff', '2020-10-22 11:18:43', '2020-10-22 11:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `client_relationships`
--

CREATE TABLE `client_relationships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_relationships`
--

INSERT INTO `client_relationships` (`id`, `name`) VALUES
(1, 'Father');

-- --------------------------------------------------------

--
-- Table structure for table `client_types`
--

CREATE TABLE `client_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_types`
--

INSERT INTO `client_types` (`id`, `name`) VALUES
(1, 'Individual'),
(2, 'Group');

-- --------------------------------------------------------

--
-- Table structure for table `client_users`
--

CREATE TABLE `client_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_users`
--

INSERT INTO `client_users` (`id`, `created_by_id`, `client_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 7, '2020-10-21 14:23:51', '2020-10-21 14:23:51'),
(2, 1, 1, 2, '2020-12-04 07:22:42', '2020-12-04 07:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `communication_campaigns`
--

CREATE TABLE `communication_campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sms_gateway_id` bigint(20) UNSIGNED DEFAULT NULL,
  `communication_campaign_business_rule_id` bigint(20) UNSIGNED DEFAULT NULL,
  `communication_campaign_attachment_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_officer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_type` enum('sms','email') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `trigger_type` enum('direct','schedule','triggered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'direct',
  `scheduled_date` date DEFAULT NULL,
  `scheduled_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule_frequency` int(11) DEFAULT NULL,
  `schedule_frequency_type` enum('days','weeks','months','years') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduled_next_run_date` date DEFAULT NULL,
  `scheduled_last_run_date` date DEFAULT NULL,
  `from_x` int(11) DEFAULT NULL,
  `to_y` int(11) DEFAULT NULL,
  `cycle_x` int(11) DEFAULT NULL,
  `cycle_y` int(11) DEFAULT NULL,
  `overdue_x` int(11) DEFAULT NULL,
  `overdue_y` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `status` enum('pending','active','inactive','closed','done') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communication_campaigns`
--

INSERT INTO `communication_campaigns` (`id`, `created_by_id`, `sms_gateway_id`, `communication_campaign_business_rule_id`, `communication_campaign_attachment_type_id`, `branch_id`, `loan_officer_id`, `loan_product_id`, `subject`, `name`, `campaign_type`, `trigger_type`, `scheduled_date`, `scheduled_time`, `schedule_frequency`, `schedule_frequency_type`, `scheduled_next_run_date`, `scheduled_last_run_date`, `from_x`, `to_y`, `cycle_x`, `cycle_y`, `overdue_x`, `overdue_y`, `active`, `status`, `description`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 15, NULL, 1, 1, 1, NULL, 'Test', 'sms', 'triggered', NULL, NULL, NULL, 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'active', 'fff', NULL, '2020-10-22 13:45:51', '2020-10-22 13:59:09'),
(2, 1, 1, 6, NULL, 4, 10, 6, NULL, 'REMINDER', 'sms', 'schedule', '2022-04-18', '06:05', 7, 'days', NULL, NULL, 1, 120, NULL, NULL, NULL, NULL, 0, 'active', 'Ndugu Mteja Rejsho Lako halijapokelewa Hatua KALI zitachukuliwa.', NULL, '2022-04-19 00:19:22', '2022-04-19 00:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `communication_campaign_attachment_types`
--

CREATE TABLE `communication_campaign_attachment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_trigger` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communication_campaign_attachment_types`
--

INSERT INTO `communication_campaign_attachment_types` (`id`, `name`, `translated_name`, `is_trigger`, `active`) VALUES
(1, 'Loan Schedule', NULL, 0, 1),
(2, 'Client Statement', NULL, 0, 1),
(3, 'Saving Mini Statement', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `communication_campaign_business_rules`
--

CREATE TABLE `communication_campaign_business_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `is_trigger` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communication_campaign_business_rules`
--

INSERT INTO `communication_campaign_business_rules` (`id`, `name`, `translated_name`, `description`, `active`, `is_trigger`) VALUES
(1, 'Active Clients', NULL, 'All clients with the status ‘Active’', 1, 0),
(2, 'Prospective Clients', NULL, 'All clients with the status ‘Active’ who have never had a loan before', 1, 0),
(3, 'Active Loan Clients', NULL, 'All clients with an outstanding loan', 1, 0),
(4, 'Loans in arrears', NULL, 'All clients with an outstanding loan in arrears between X and Y days', 1, 0),
(5, 'Loans disbursed to clients', NULL, 'All clients who have had a loan disbursed to them in the last X to Y days', 1, 0),
(6, 'Loan payments due', NULL, 'All clients with an unpaid installment due on their loan between X and Y days', 1, 0),
(7, 'Dormant Prospects', NULL, 'All individuals who have not yet received a loan but were also entered into the system more than 3 months', 0, 0),
(8, 'Loan Payments Due (Overdue Loans)', NULL, 'Loan Payments Due between X to Y days for clients in arrears between X and Y days', 0, 0),
(9, 'Loan Payments Received (Active Loans)', NULL, 'Payments received in the last X to Y days for any loan with the status Active (on-time)', 0, 0),
(10, 'Loan Payments Received (Overdue Loans) ', NULL, 'Payments received in the last X to Y days for any loan with the status Overdue (arrears) between X and Y days', 0, 0),
(11, 'Happy Birthday', NULL, 'This sends a message to all clients with the status Active on their Birthday', 0, 0),
(12, 'Loan Fully Repaid', NULL, 'All loans that have been fully repaid (Closed or Overpaid) in the last X to Y days', 0, 0),
(13, 'Loans Outstanding after final instalment date', NULL, 'All active loans (with an outstanding balance) between X to Y days after the final instalment date on their loan schedule', 0, 0),
(14, 'Past Loan Clients', NULL, 'Past Loan Clients who have previously had a loan but do not currently have one and finished repaying their most recent loan in the last X to Y days.', 0, 0),
(15, 'Loan Submitted', NULL, 'Loan and client data of submitted loan', 1, 1),
(16, 'Loan Rejected', NULL, 'Loan and client data of rejected loan', 1, 1),
(17, 'Loan Approved', NULL, 'Loan and client data of approved loan', 1, 1),
(18, 'Loan Disbursed', NULL, 'Loan Disbursed', 1, 1),
(19, 'Loan Rescheduled', NULL, 'Loan Rescheduled', 1, 1),
(20, 'Loan Closed', NULL, 'Loan Closed', 1, 1),
(21, 'Loan Repayment', NULL, 'Loan Repayment', 1, 1),
(22, 'Savings Submitted', NULL, 'Savings and client data of submitted savings', 1, 1),
(23, 'Savings Rejected', NULL, 'Savings and client data of rejected savings', 1, 1),
(24, 'Savings Approved', NULL, 'Savings and client data of approved savings', 1, 1),
(25, 'Savings Activated', NULL, 'Savings Activated', 1, 1),
(26, 'Savings Dormant', NULL, 'Savings Dormant', 1, 1),
(27, 'Savings Inactive', NULL, 'Savings Inactive', 1, 1),
(28, 'Savings Closed', NULL, 'Savings Closed', 1, 1),
(29, 'Savings Deposit', NULL, 'Savings Deposit', 1, 1),
(30, 'Savings Withdrawal', NULL, 'Savings Withdrawal', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `communication_campaign_logs`
--

CREATE TABLE `communication_campaign_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sms_gateway_id` bigint(20) DEFAULT NULL,
  `communication_campaign_id` bigint(20) DEFAULT NULL,
  `campaign_type` enum('sms','email') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_to` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','sent','delivered','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communication_campaign_logs`
--

INSERT INTO `communication_campaign_logs` (`id`, `created_by_id`, `client_id`, `sms_gateway_id`, `communication_campaign_id`, `campaign_type`, `description`, `send_to`, `campaign_name`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, NULL, 1, 'sms', 'fff', '0774175438', 'Test', 'sent', '2020-12-02 12:19:11', '2020-12-02 12:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sortname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', NULL, NULL),
(2, 'AL', 'Albania', NULL, NULL),
(3, 'DZ', 'Algeria', NULL, NULL),
(4, 'AS', 'American Samoa', NULL, NULL),
(5, 'AD', 'Andorra', NULL, NULL),
(6, 'AO', 'Angola', NULL, NULL),
(7, 'AI', 'Anguilla', NULL, NULL),
(8, 'AQ', 'Antarctica', NULL, NULL),
(9, 'AG', 'Antigua And Barbuda', NULL, NULL),
(10, 'AR', 'Argentina', NULL, NULL),
(11, 'AM', 'Armenia', NULL, NULL),
(12, 'AW', 'Aruba', NULL, NULL),
(13, 'AU', 'Australia', NULL, NULL),
(14, 'AT', 'Austria', NULL, NULL),
(15, 'AZ', 'Azerbaijan', NULL, NULL),
(16, 'BS', 'Bahamas The', NULL, NULL),
(17, 'BH', 'Bahrain', NULL, NULL),
(18, 'BD', 'Bangladesh', NULL, NULL),
(19, 'BB', 'Barbados', NULL, NULL),
(20, 'BY', 'Belarus', NULL, NULL),
(21, 'BE', 'Belgium', NULL, NULL),
(22, 'BZ', 'Belize', NULL, NULL),
(23, 'BJ', 'Benin', NULL, NULL),
(24, 'BM', 'Bermuda', NULL, NULL),
(25, 'BT', 'Bhutan', NULL, NULL),
(26, 'BO', 'Bolivia', NULL, NULL),
(27, 'BA', 'Bosnia and Herzegovina', NULL, NULL),
(28, 'BW', 'Botswana', NULL, NULL),
(29, 'BV', 'Bouvet Island', NULL, NULL),
(30, 'BR', 'Brazil', NULL, NULL),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL),
(32, 'BN', 'Brunei', NULL, NULL),
(33, 'BG', 'Bulgaria', NULL, NULL),
(34, 'BF', 'Burkina Faso', NULL, NULL),
(35, 'BI', 'Burundi', NULL, NULL),
(36, 'KH', 'Cambodia', NULL, NULL),
(37, 'CM', 'Cameroon', NULL, NULL),
(38, 'CA', 'Canada', NULL, NULL),
(39, 'CV', 'Cape Verde', NULL, NULL),
(40, 'KY', 'Cayman Islands', NULL, NULL),
(41, 'CF', 'Central African Republic', NULL, NULL),
(42, 'TD', 'Chad', NULL, NULL),
(43, 'CL', 'Chile', NULL, NULL),
(44, 'CN', 'China', NULL, NULL),
(45, 'CX', 'Christmas Island', NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'CO', 'Colombia', NULL, NULL),
(48, 'KM', 'Comoros', NULL, NULL),
(49, 'CG', 'Congo', NULL, NULL),
(50, 'CD', 'Congo The Democratic Republic Of The', NULL, NULL),
(51, 'CK', 'Cook Islands', NULL, NULL),
(52, 'CR', 'Costa Rica', NULL, NULL),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', NULL, NULL),
(54, 'HR', 'Croatia (Hrvatska)', NULL, NULL),
(55, 'CU', 'Cuba', NULL, NULL),
(56, 'CY', 'Cyprus', NULL, NULL),
(57, 'CZ', 'Czech Republic', NULL, NULL),
(58, 'DK', 'Denmark', NULL, NULL),
(59, 'DJ', 'Djibouti', NULL, NULL),
(60, 'DM', 'Dominica', NULL, NULL),
(61, 'DO', 'Dominican Republic', NULL, NULL),
(62, 'TP', 'East Timor', NULL, NULL),
(63, 'EC', 'Ecuador', NULL, NULL),
(64, 'EG', 'Egypt', NULL, NULL),
(65, 'SV', 'El Salvador', NULL, NULL),
(66, 'GQ', 'Equatorial Guinea', NULL, NULL),
(67, 'ER', 'Eritrea', NULL, NULL),
(68, 'EE', 'Estonia', NULL, NULL),
(69, 'ET', 'Ethiopia', NULL, NULL),
(70, 'XA', 'External Territories of Australia', NULL, NULL),
(71, 'FK', 'Falkland Islands', NULL, NULL),
(72, 'FO', 'Faroe Islands', NULL, NULL),
(73, 'FJ', 'Fiji Islands', NULL, NULL),
(74, 'FI', 'Finland', NULL, NULL),
(75, 'FR', 'France', NULL, NULL),
(76, 'GF', 'French Guiana', NULL, NULL),
(77, 'PF', 'French Polynesia', NULL, NULL),
(78, 'TF', 'French Southern Territories', NULL, NULL),
(79, 'GA', 'Gabon', NULL, NULL),
(80, 'GM', 'Gambia The', NULL, NULL),
(81, 'GE', 'Georgia', NULL, NULL),
(82, 'DE', 'Germany', NULL, NULL),
(83, 'GH', 'Ghana', NULL, NULL),
(84, 'GI', 'Gibraltar', NULL, NULL),
(85, 'GR', 'Greece', NULL, NULL),
(86, 'GL', 'Greenland', NULL, NULL),
(87, 'GD', 'Grenada', NULL, NULL),
(88, 'GP', 'Guadeloupe', NULL, NULL),
(89, 'GU', 'Guam', NULL, NULL),
(90, 'GT', 'Guatemala', NULL, NULL),
(91, 'XU', 'Guernsey and Alderney', NULL, NULL),
(92, 'GN', 'Guinea', NULL, NULL),
(93, 'GW', 'Guinea-Bissau', NULL, NULL),
(94, 'GY', 'Guyana', NULL, NULL),
(95, 'HT', 'Haiti', NULL, NULL),
(96, 'HM', 'Heard and McDonald Islands', NULL, NULL),
(97, 'HN', 'Honduras', NULL, NULL),
(98, 'HK', 'Hong Kong S.A.R.', NULL, NULL),
(99, 'HU', 'Hungary', NULL, NULL),
(100, 'IS', 'Iceland', NULL, NULL),
(101, 'IN', 'India', NULL, NULL),
(102, 'ID', 'Indonesia', NULL, NULL),
(103, 'IR', 'Iran', NULL, NULL),
(104, 'IQ', 'Iraq', NULL, NULL),
(105, 'IE', 'Ireland', NULL, NULL),
(106, 'IL', 'Israel', NULL, NULL),
(107, 'IT', 'Italy', NULL, NULL),
(108, 'JM', 'Jamaica', NULL, NULL),
(109, 'JP', 'Japan', NULL, NULL),
(110, 'XJ', 'Jersey', NULL, NULL),
(111, 'JO', 'Jordan', NULL, NULL),
(112, 'KZ', 'Kazakhstan', NULL, NULL),
(113, 'KE', 'Kenya', NULL, NULL),
(114, 'KI', 'Kiribati', NULL, NULL),
(115, 'KP', 'Korea North', NULL, NULL),
(116, 'KR', 'Korea South', NULL, NULL),
(117, 'KW', 'Kuwait', NULL, NULL),
(118, 'KG', 'Kyrgyzstan', NULL, NULL),
(119, 'LA', 'Laos', NULL, NULL),
(120, 'LV', 'Latvia', NULL, NULL),
(121, 'LB', 'Lebanon', NULL, NULL),
(122, 'LS', 'Lesotho', NULL, NULL),
(123, 'LR', 'Liberia', NULL, NULL),
(124, 'LY', 'Libya', NULL, NULL),
(125, 'LI', 'Liechtenstein', NULL, NULL),
(126, 'LT', 'Lithuania', NULL, NULL),
(127, 'LU', 'Luxembourg', NULL, NULL),
(128, 'MO', 'Macau S.A.R.', NULL, NULL),
(129, 'MK', 'Macedonia', NULL, NULL),
(130, 'MG', 'Madagascar', NULL, NULL),
(131, 'MW', 'Malawi', NULL, NULL),
(132, 'MY', 'Malaysia', NULL, NULL),
(133, 'MV', 'Maldives', NULL, NULL),
(134, 'ML', 'Mali', NULL, NULL),
(135, 'MT', 'Malta', NULL, NULL),
(136, 'XM', 'Man (Isle of)', NULL, NULL),
(137, 'MH', 'Marshall Islands', NULL, NULL),
(138, 'MQ', 'Martinique', NULL, NULL),
(139, 'MR', 'Mauritania', NULL, NULL),
(140, 'MU', 'Mauritius', NULL, NULL),
(141, 'YT', 'Mayotte', NULL, NULL),
(142, 'MX', 'Mexico', NULL, NULL),
(143, 'FM', 'Micronesia', NULL, NULL),
(144, 'MD', 'Moldova', NULL, NULL),
(145, 'MC', 'Monaco', NULL, NULL),
(146, 'MN', 'Mongolia', NULL, NULL),
(147, 'MS', 'Montserrat', NULL, NULL),
(148, 'MA', 'Morocco', NULL, NULL),
(149, 'MZ', 'Mozambique', NULL, NULL),
(150, 'MM', 'Myanmar', NULL, NULL),
(151, 'NA', 'Namibia', NULL, NULL),
(152, 'NR', 'Nauru', NULL, NULL),
(153, 'NP', 'Nepal', NULL, NULL),
(154, 'AN', 'Netherlands Antilles', NULL, NULL),
(155, 'NL', 'Netherlands The', NULL, NULL),
(156, 'NC', 'New Caledonia', NULL, NULL),
(157, 'NZ', 'New Zealand', NULL, NULL),
(158, 'NI', 'Nicaragua', NULL, NULL),
(159, 'NE', 'Niger', NULL, NULL),
(160, 'NG', 'Nigeria', NULL, NULL),
(161, 'NU', 'Niue', NULL, NULL),
(162, 'NF', 'Norfolk Island', NULL, NULL),
(163, 'MP', 'Northern Mariana Islands', NULL, NULL),
(164, 'NO', 'Norway', NULL, NULL),
(165, 'OM', 'Oman', NULL, NULL),
(166, 'PK', 'Pakistan', NULL, NULL),
(167, 'PW', 'Palau', NULL, NULL),
(168, 'PS', 'Palestinian Territory Occupied', NULL, NULL),
(169, 'PA', 'Panama', NULL, NULL),
(170, 'PG', 'Papua new Guinea', NULL, NULL),
(171, 'PY', 'Paraguay', NULL, NULL),
(172, 'PE', 'Peru', NULL, NULL),
(173, 'PH', 'Philippines', NULL, NULL),
(174, 'PN', 'Pitcairn Island', NULL, NULL),
(175, 'PL', 'Poland', NULL, NULL),
(176, 'PT', 'Portugal', NULL, NULL),
(177, 'PR', 'Puerto Rico', NULL, NULL),
(178, 'QA', 'Qatar', NULL, NULL),
(179, 'RE', 'Reunion', NULL, NULL),
(180, 'RO', 'Romania', NULL, NULL),
(181, 'RU', 'Russia', NULL, NULL),
(182, 'RW', 'Rwanda', NULL, NULL),
(183, 'SH', 'Saint Helena', NULL, NULL),
(184, 'KN', 'Saint Kitts And Nevis', NULL, NULL),
(185, 'LC', 'Saint Lucia', NULL, NULL),
(186, 'PM', 'Saint Pierre and Miquelon', NULL, NULL),
(187, 'VC', 'Saint Vincent And The Grenadines', NULL, NULL),
(188, 'WS', 'Samoa', NULL, NULL),
(189, 'SM', 'San Marino', NULL, NULL),
(190, 'ST', 'Sao Tome and Principe', NULL, NULL),
(191, 'SA', 'Saudi Arabia', NULL, NULL),
(192, 'SN', 'Senegal', NULL, NULL),
(193, 'RS', 'Serbia', NULL, NULL),
(194, 'SC', 'Seychelles', NULL, NULL),
(195, 'SL', 'Sierra Leone', NULL, NULL),
(196, 'SG', 'Singapore', NULL, NULL),
(197, 'SK', 'Slovakia', NULL, NULL),
(198, 'SI', 'Slovenia', NULL, NULL),
(199, 'XG', 'Smaller Territories of the UK', NULL, NULL),
(200, 'SB', 'Solomon Islands', NULL, NULL),
(201, 'SO', 'Somalia', NULL, NULL),
(202, 'ZA', 'South Africa', NULL, NULL),
(203, 'GS', 'South Georgia', NULL, NULL),
(204, 'SS', 'South Sudan', NULL, NULL),
(205, 'ES', 'Spain', NULL, NULL),
(206, 'LK', 'Sri Lanka', NULL, NULL),
(207, 'SD', 'Sudan', NULL, NULL),
(208, 'SR', 'Suriname', NULL, NULL),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', NULL, NULL),
(210, 'SZ', 'Swaziland', NULL, NULL),
(211, 'SE', 'Sweden', NULL, NULL),
(212, 'CH', 'Switzerland', NULL, NULL),
(213, 'SY', 'Syria', NULL, NULL),
(214, 'TW', 'Taiwan', NULL, NULL),
(215, 'TJ', 'Tajikistan', NULL, NULL),
(216, 'TZ', 'Tanzania', NULL, NULL),
(217, 'TH', 'Thailand', NULL, NULL),
(218, 'TG', 'Togo', NULL, NULL),
(219, 'TK', 'Tokelau', NULL, NULL),
(220, 'TO', 'Tonga', NULL, NULL),
(221, 'TT', 'Trinidad And Tobago', NULL, NULL),
(222, 'TN', 'Tunisia', NULL, NULL),
(223, 'TR', 'Turkey', NULL, NULL),
(224, 'TM', 'Turkmenistan', NULL, NULL),
(225, 'TC', 'Turks And Caicos Islands', NULL, NULL),
(226, 'TV', 'Tuvalu', NULL, NULL),
(227, 'UG', 'Uganda', NULL, NULL),
(228, 'UA', 'Ukraine', NULL, NULL),
(229, 'AE', 'United Arab Emirates', NULL, NULL),
(230, 'GB', 'United Kingdom', NULL, NULL),
(231, 'US', 'United States', NULL, NULL),
(232, 'UM', 'United States Minor Outlying Islands', NULL, NULL),
(233, 'UY', 'Uruguay', NULL, NULL),
(234, 'UZ', 'Uzbekistan', NULL, NULL),
(235, 'VU', 'Vanuatu', NULL, NULL),
(236, 'VA', 'Vatican City State (Holy See)', NULL, NULL),
(237, 'VE', 'Venezuela', NULL, NULL),
(238, 'VN', 'Vietnam', NULL, NULL),
(239, 'VG', 'Virgin Islands (British)', NULL, NULL),
(240, 'VI', 'Virgin Islands (US)', NULL, NULL),
(241, 'WF', 'Wallis And Futuna Islands', NULL, NULL),
(242, 'EH', 'Western Sahara', NULL, NULL),
(243, 'YE', 'Yemen', NULL, NULL),
(244, 'YU', 'Yugoslavia', NULL, NULL),
(245, 'ZM', 'Zambia', NULL, NULL),
(246, 'ZW', 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `rate` decimal(65,8) DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` enum('left','right') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `created_by_id`, `rate`, `code`, `name`, `symbol`, `position`, `created_at`, `updated_at`) VALUES
(1, NULL, '1.00000000', 'TZS', 'Tanzanian Shilings', 'Tshs.', 'left', NULL, '2022-04-15 15:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_columns` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `created_by_id`, `category`, `type`, `name`, `label`, `options`, `class`, `db_columns`, `rules`, `default_values`, `required`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'add_client', 'textfield', 'system reference', 'system reference', NULL, NULL, NULL, NULL, NULL, 0, 1, '2020-10-22 15:05:01', '2020-10-22 15:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields_meta`
--

CREATE TABLE `custom_fields_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields_meta`
--

INSERT INTO `custom_fields_meta` (`id`, `category`, `parent_id`, `custom_field_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'add_client', 1, 1, NULL, '2020-12-13 18:31:15', '2020-12-13 18:31:15'),
(2, 'add_client', 3, 1, NULL, '2020-12-21 08:25:40', '2020-12-21 08:25:40'),
(3, 'add_client', 4, 1, NULL, '2022-04-18 16:25:39', '2022-04-18 16:25:39'),
(4, 'add_client', 5, 1, NULL, '2022-04-18 16:46:45', '2022-04-18 16:46:45'),
(5, 'add_client', 6, 1, '12', '2022-04-18 16:50:52', '2022-04-18 16:50:52'),
(6, 'add_client', 7, 1, '12', '2022-04-18 16:54:54', '2022-04-18 16:54:54'),
(7, 'add_client', 8, 1, '1', '2022-04-18 19:06:35', '2022-04-18 19:06:35'),
(8, 'add_client', 9, 1, '3', '2022-04-18 20:33:14', '2022-04-18 20:33:14'),
(9, 'add_client', 10, 1, '4', '2022-04-18 20:42:59', '2022-04-18 20:42:59'),
(10, 'add_client', 11, 1, '4', '2022-04-18 20:52:07', '2022-04-18 20:52:07'),
(11, 'add_client', 12, 1, '4', '2022-04-18 21:05:13', '2022-04-18 21:05:13'),
(12, 'add_client', 13, 1, NULL, '2022-04-18 21:22:44', '2022-04-24 16:16:29'),
(13, 'add_client', 14, 1, '12', '2022-04-19 18:42:35', '2022-04-19 18:42:35'),
(14, 'add_client', 15, 1, '12', '2022-04-19 19:07:04', '2022-04-19 19:07:04'),
(15, 'add_client', 16, 1, '12', '2022-04-19 20:40:08', '2022-04-19 20:40:08'),
(16, 'add_client', 17, 1, NULL, '2022-04-20 19:59:36', '2022-04-20 19:59:36'),
(17, 'add_client', 18, 1, '12', '2022-04-22 12:29:27', '2022-04-22 12:29:27'),
(18, 'add_client', 19, 1, '12', '2022-04-22 12:32:17', '2022-04-22 12:32:17'),
(19, 'add_client', 20, 1, '12', '2022-04-22 12:34:07', '2022-04-22 12:34:07'),
(20, 'add_client', 21, 1, '12', '2022-04-22 12:38:06', '2022-04-22 12:38:06'),
(21, 'add_client', 22, 1, '1', '2022-04-22 12:43:23', '2022-04-22 12:43:23'),
(22, 'add_client', 23, 1, '1', '2022-04-22 12:46:22', '2022-04-22 12:46:22'),
(23, 'add_client', 24, 1, '1', '2022-04-22 12:50:38', '2022-04-22 12:50:38'),
(24, 'add_client', 25, 1, '1', '2022-04-22 13:00:53', '2022-04-22 13:00:53'),
(25, 'add_client', 26, 1, '1', '2022-04-22 13:07:36', '2022-04-22 13:07:36'),
(26, 'add_client', 27, 1, '1', '2022-04-22 13:11:42', '2022-04-22 13:11:42'),
(27, 'add_client', 28, 1, '1', '2022-04-22 13:35:44', '2022-04-22 13:35:44'),
(28, 'add_client', 29, 1, '12', '2022-04-22 18:36:47', '2022-04-22 18:36:47'),
(29, 'add_client', 30, 1, '1', '2022-04-22 18:44:03', '2022-04-22 18:44:03'),
(30, 'add_client', 31, 1, '1', '2022-04-22 18:44:29', '2022-04-22 18:44:29'),
(31, 'add_client', 32, 1, '1', '2022-04-22 18:54:18', '2022-04-22 18:54:18'),
(32, 'add_client', 33, 1, '1', '2022-04-22 19:07:33', '2022-04-22 19:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expense_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expense_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `asset_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(65,2) NOT NULL DEFAULT 0.00,
  `date` date DEFAULT NULL,
  `recurring` tinyint(4) NOT NULL DEFAULT 0,
  `recur_frequency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '31',
  `recur_start_date` date DEFAULT NULL,
  `recur_end_date` date DEFAULT NULL,
  `recur_next_date` date DEFAULT NULL,
  `recur_type` enum('day','week','month','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `created_by_id`, `expense_type_id`, `expense_chart_of_account_id`, `currency_id`, `branch_id`, `asset_chart_of_account_id`, `amount`, `date`, `recurring`, `recur_frequency`, `recur_start_date`, `recur_end_date`, `recur_next_date`, `recur_type`, `notes`, `description`, `files`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, 1, 1, '20.00', '2020-10-22', 0, '31', NULL, NULL, NULL, 'month', NULL, 'ff', NULL, '2020-10-22 16:56:55', '2020-10-22 16:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `asset_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_types`
--

INSERT INTO `expense_types` (`id`, `name`, `expense_chart_of_account_id`, `asset_chart_of_account_id`, `created_at`, `updated_at`) VALUES
(1, 'Test', 2, 1, '2020-10-22 16:32:47', '2020-10-22 16:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'database', 'default', '{\"uuid\":\"c29c4b8d-c242-4c94-a9de-dd4ae076d9f9\",\"displayName\":\"Modules\\\\Savings\\\\Listeners\\\\SavingsStatusChangedCampaigns\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:55:\\\"Modules\\\\Savings\\\\Listeners\\\\SavingsStatusChangedCampaigns\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:43:\\\"Modules\\\\Savings\\\\Events\\\\SavingsStatusChanged\\\":2:{s:7:\\\"savings\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:32:\\\"Modules\\\\Savings\\\\Entities\\\\Savings\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:15:\\\"previous_status\\\";s:9:\\\"submitted\\\";}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 'PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'savings_product_id\' in \'where clause\' in /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php:64\nStack trace:\n#0 /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php(64): PDO->prepare(\'select * from `...\', Array)\n#1 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(331): Doctrine\\DBAL\\Driver\\PDOConnection->prepare(\'select * from `...\')\n#2 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(664): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'select * from `...\', Array)\n#3 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(631): Illuminate\\Database\\Connection->runQueryCallback(\'select * from `...\', Array, Object(Closure))\n#4 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(339): Illuminate\\Database\\Connection->run(\'select * from `...\', Array, Object(Closure))\n#5 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2202): Illuminate\\Database\\Connection->select(\'select * from `...\', Array, true)\n#6 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2190): Illuminate\\Database\\Query\\Builder->runSelect()\n#7 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2685): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#8 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2191): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#9 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(539): Illuminate\\Database\\Query\\Builder->get(Array)\n#10 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(523): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#11 /var/www/html/projects/loan.local/Modules/Savings/Listeners/SavingsStatusChangedCampaigns.php(62): Illuminate\\Database\\Eloquent\\Builder->get()\n#12 [internal function]: Modules\\Savings\\Listeners\\SavingsStatusChangedCampaigns->handle(Object(Modules\\Savings\\Events\\SavingsStatusChanged))\n#13 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Events/CallQueuedListener.php(93): call_user_func_array(Array, Array)\n#14 [internal function]: Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#15 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array(Array, Array)\n#16 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#21 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#22 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#23 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#25 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#26 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#27 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#29 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array(Array, Array)\n#37 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#42 /var/www/html/projects/loan.local/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 /var/www/html/projects/loan.local/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 {main}\n\nNext Doctrine\\DBAL\\Driver\\PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'savings_product_id\' in \'where clause\' in /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php:66\nStack trace:\n#0 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(331): Doctrine\\DBAL\\Driver\\PDOConnection->prepare(\'select * from `...\')\n#1 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(664): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'select * from `...\', Array)\n#2 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(631): Illuminate\\Database\\Connection->runQueryCallback(\'select * from `...\', Array, Object(Closure))\n#3 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(339): Illuminate\\Database\\Connection->run(\'select * from `...\', Array, Object(Closure))\n#4 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2202): Illuminate\\Database\\Connection->select(\'select * from `...\', Array, true)\n#5 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2190): Illuminate\\Database\\Query\\Builder->runSelect()\n#6 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2685): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#7 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2191): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#8 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(539): Illuminate\\Database\\Query\\Builder->get(Array)\n#9 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(523): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#10 /var/www/html/projects/loan.local/Modules/Savings/Listeners/SavingsStatusChangedCampaigns.php(62): Illuminate\\Database\\Eloquent\\Builder->get()\n#11 [internal function]: Modules\\Savings\\Listeners\\SavingsStatusChangedCampaigns->handle(Object(Modules\\Savings\\Events\\SavingsStatusChanged))\n#12 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Events/CallQueuedListener.php(93): call_user_func_array(Array, Array)\n#13 [internal function]: Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#14 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array(Array, Array)\n#15 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#20 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#21 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#22 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#24 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#25 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#26 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#28 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array(Array, Array)\n#36 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#41 /var/www/html/projects/loan.local/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/html/projects/loan.local/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 {main}\n\nNext Illuminate\\Database\\QueryException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'savings_product_id\' in \'where clause\' (SQL: select * from `communication_campaigns` where `trigger_type` = triggered and `status` = active and `savings_product_id` = 1 and `communication_campaign_business_rule_id` = 24) in /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php:671\nStack trace:\n#0 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(631): Illuminate\\Database\\Connection->runQueryCallback(\'select * from `...\', Array, Object(Closure))\n#1 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(339): Illuminate\\Database\\Connection->run(\'select * from `...\', Array, Object(Closure))\n#2 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2202): Illuminate\\Database\\Connection->select(\'select * from `...\', Array, true)\n#3 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2190): Illuminate\\Database\\Query\\Builder->runSelect()\n#4 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2685): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#5 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2191): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#6 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(539): Illuminate\\Database\\Query\\Builder->get(Array)\n#7 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(523): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#8 /var/www/html/projects/loan.local/Modules/Savings/Listeners/SavingsStatusChangedCampaigns.php(62): Illuminate\\Database\\Eloquent\\Builder->get()\n#9 [internal function]: Modules\\Savings\\Listeners\\SavingsStatusChangedCampaigns->handle(Object(Modules\\Savings\\Events\\SavingsStatusChanged))\n#10 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Events/CallQueuedListener.php(93): call_user_func_array(Array, Array)\n#11 [internal function]: Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#12 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array(Array, Array)\n#13 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#18 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#19 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#20 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#22 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#23 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#24 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#26 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array(Array, Array)\n#34 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#39 /var/www/html/projects/loan.local/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/projects/loan.local/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-10-02 06:28:41');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(2, 'database', 'default', '{\"uuid\":\"ef7e1f7f-0ed3-4006-97a6-3cc443af6cef\",\"displayName\":\"Modules\\\\Savings\\\\Listeners\\\\SavingsStatusChangedCampaigns\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:55:\\\"Modules\\\\Savings\\\\Listeners\\\\SavingsStatusChangedCampaigns\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:43:\\\"Modules\\\\Savings\\\\Events\\\\SavingsStatusChanged\\\":2:{s:7:\\\"savings\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:32:\\\"Modules\\\\Savings\\\\Entities\\\\Savings\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:1:{i:0;s:7:\\\"charges\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:15:\\\"previous_status\\\";s:8:\\\"approved\\\";}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;}\"}}', 'PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'savings_product_id\' in \'where clause\' in /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php:64\nStack trace:\n#0 /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php(64): PDO->prepare(\'select * from `...\', Array)\n#1 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(331): Doctrine\\DBAL\\Driver\\PDOConnection->prepare(\'select * from `...\')\n#2 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(664): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'select * from `...\', Array)\n#3 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(631): Illuminate\\Database\\Connection->runQueryCallback(\'select * from `...\', Array, Object(Closure))\n#4 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(339): Illuminate\\Database\\Connection->run(\'select * from `...\', Array, Object(Closure))\n#5 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2202): Illuminate\\Database\\Connection->select(\'select * from `...\', Array, true)\n#6 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2190): Illuminate\\Database\\Query\\Builder->runSelect()\n#7 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2685): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#8 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2191): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#9 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(539): Illuminate\\Database\\Query\\Builder->get(Array)\n#10 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(523): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#11 /var/www/html/projects/loan.local/Modules/Savings/Listeners/SavingsStatusChangedCampaigns.php(62): Illuminate\\Database\\Eloquent\\Builder->get()\n#12 [internal function]: Modules\\Savings\\Listeners\\SavingsStatusChangedCampaigns->handle(Object(Modules\\Savings\\Events\\SavingsStatusChanged))\n#13 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Events/CallQueuedListener.php(93): call_user_func_array(Array, Array)\n#14 [internal function]: Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#15 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array(Array, Array)\n#16 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#21 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#22 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#23 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#25 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#26 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#27 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#29 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array(Array, Array)\n#37 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#42 /var/www/html/projects/loan.local/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 /var/www/html/projects/loan.local/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 {main}\n\nNext Doctrine\\DBAL\\Driver\\PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'savings_product_id\' in \'where clause\' in /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php:66\nStack trace:\n#0 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(331): Doctrine\\DBAL\\Driver\\PDOConnection->prepare(\'select * from `...\')\n#1 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(664): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'select * from `...\', Array)\n#2 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(631): Illuminate\\Database\\Connection->runQueryCallback(\'select * from `...\', Array, Object(Closure))\n#3 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(339): Illuminate\\Database\\Connection->run(\'select * from `...\', Array, Object(Closure))\n#4 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2202): Illuminate\\Database\\Connection->select(\'select * from `...\', Array, true)\n#5 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2190): Illuminate\\Database\\Query\\Builder->runSelect()\n#6 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2685): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#7 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2191): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#8 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(539): Illuminate\\Database\\Query\\Builder->get(Array)\n#9 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(523): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#10 /var/www/html/projects/loan.local/Modules/Savings/Listeners/SavingsStatusChangedCampaigns.php(62): Illuminate\\Database\\Eloquent\\Builder->get()\n#11 [internal function]: Modules\\Savings\\Listeners\\SavingsStatusChangedCampaigns->handle(Object(Modules\\Savings\\Events\\SavingsStatusChanged))\n#12 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Events/CallQueuedListener.php(93): call_user_func_array(Array, Array)\n#13 [internal function]: Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#14 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array(Array, Array)\n#15 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#17 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#18 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#19 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#20 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#21 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#22 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#24 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#25 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#26 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#28 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#29 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#31 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#34 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array(Array, Array)\n#36 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#41 /var/www/html/projects/loan.local/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /var/www/html/projects/loan.local/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 {main}\n\nNext Illuminate\\Database\\QueryException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'savings_product_id\' in \'where clause\' (SQL: select * from `communication_campaigns` where `trigger_type` = triggered and `status` = active and `savings_product_id` = 1 and `communication_campaign_business_rule_id` = 25) in /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php:671\nStack trace:\n#0 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(631): Illuminate\\Database\\Connection->runQueryCallback(\'select * from `...\', Array, Object(Closure))\n#1 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(339): Illuminate\\Database\\Connection->run(\'select * from `...\', Array, Object(Closure))\n#2 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2202): Illuminate\\Database\\Connection->select(\'select * from `...\', Array, true)\n#3 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2190): Illuminate\\Database\\Query\\Builder->runSelect()\n#4 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2685): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#5 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2191): Illuminate\\Database\\Query\\Builder->onceWithColumns(Array, Object(Closure))\n#6 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(539): Illuminate\\Database\\Query\\Builder->get(Array)\n#7 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(523): Illuminate\\Database\\Eloquent\\Builder->getModels(Array)\n#8 /var/www/html/projects/loan.local/Modules/Savings/Listeners/SavingsStatusChangedCampaigns.php(62): Illuminate\\Database\\Eloquent\\Builder->get()\n#9 [internal function]: Modules\\Savings\\Listeners\\SavingsStatusChangedCampaigns->handle(Object(Modules\\Savings\\Events\\SavingsStatusChanged))\n#10 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Events/CallQueuedListener.php(93): call_user_func_array(Array, Array)\n#11 [internal function]: Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#12 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array(Array, Array)\n#13 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#18 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#19 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#20 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#22 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#23 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#24 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Events\\CallQueuedListener))\n#26 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(306): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(132): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(33): call_user_func_array(Array, Array)\n#34 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(91): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(592): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(134): Illuminate\\Container\\Container->call(Array)\n#39 /var/www/html/projects/loan.local/vendor/symfony/console/Command/Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(912): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(264): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(140): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /var/www/html/projects/loan.local/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2020-10-02 06:28:47');
INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(3, 'database', 'default', '{\"uuid\":\"ed5feebb-b3f6-4038-90d0-d3c22cc9d976\",\"displayName\":\"Modules\\\\Savings\\\\Listeners\\\\SavingsStatusChangedCampaigns\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":16:{s:5:\\\"class\\\";s:55:\\\"Modules\\\\Savings\\\\Listeners\\\\SavingsStatusChangedCampaigns\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:43:\\\"Modules\\\\Savings\\\\Events\\\\SavingsStatusChanged\\\":2:{s:7:\\\"savings\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:32:\\\"Modules\\\\Savings\\\\Entities\\\\Savings\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:15:\\\"previous_status\\\";s:9:\\\"submitted\\\";}}s:5:\\\"tries\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'savings_product_id\' in \'where clause\' in /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php:77\nStack trace:\n#0 /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php(77): PDO->prepare()\n#1 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(331): Doctrine\\DBAL\\Driver\\PDOConnection->prepare()\n#2 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(664): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}()\n#3 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(631): Illuminate\\Database\\Connection->runQueryCallback()\n#4 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(339): Illuminate\\Database\\Connection->run()\n#5 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2302): Illuminate\\Database\\Connection->select()\n#6 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2290): Illuminate\\Database\\Query\\Builder->runSelect()\n#7 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2785): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#8 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2291): Illuminate\\Database\\Query\\Builder->onceWithColumns()\n#9 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(547): Illuminate\\Database\\Query\\Builder->get()\n#10 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(531): Illuminate\\Database\\Eloquent\\Builder->getModels()\n#11 /var/www/html/projects/loan.local/Modules/Savings/Listeners/SavingsStatusChangedCampaigns.php(62): Illuminate\\Database\\Eloquent\\Builder->get()\n#12 [internal function]: Modules\\Savings\\Listeners\\SavingsStatusChangedCampaigns->handle()\n#13 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Events/CallQueuedListener.php(94): call_user_func_array()\n#14 [internal function]: Illuminate\\Events\\CallQueuedListener->handle()\n#15 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): call_user_func_array()\n#16 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#20 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then()\n#28 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Worker->process()\n#32 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(158): Illuminate\\Queue\\Worker->runJob()\n#33 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(116): Illuminate\\Queue\\Worker->daemon()\n#34 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): call_user_func_array()\n#37 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#39 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#40 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#41 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#42 /var/www/html/projects/loan.local/vendor/symfony/console/Command/Command.php(258): Illuminate\\Console\\Command->execute()\n#43 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#44 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(920): Illuminate\\Console\\Command->run()\n#45 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand()\n#46 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(142): Symfony\\Component\\Console\\Application->doRun()\n#47 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#48 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#49 /var/www/html/projects/loan.local/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#50 {main}\n\nNext Doctrine\\DBAL\\Driver\\PDO\\Exception: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'savings_product_id\' in \'where clause\' in /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDO/Exception.php:18\nStack trace:\n#0 /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php(82): Doctrine\\DBAL\\Driver\\PDO\\Exception::new()\n#1 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(331): Doctrine\\DBAL\\Driver\\PDOConnection->prepare()\n#2 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(664): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}()\n#3 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(631): Illuminate\\Database\\Connection->runQueryCallback()\n#4 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(339): Illuminate\\Database\\Connection->run()\n#5 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2302): Illuminate\\Database\\Connection->select()\n#6 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2290): Illuminate\\Database\\Query\\Builder->runSelect()\n#7 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2785): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#8 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2291): Illuminate\\Database\\Query\\Builder->onceWithColumns()\n#9 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(547): Illuminate\\Database\\Query\\Builder->get()\n#10 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(531): Illuminate\\Database\\Eloquent\\Builder->getModels()\n#11 /var/www/html/projects/loan.local/Modules/Savings/Listeners/SavingsStatusChangedCampaigns.php(62): Illuminate\\Database\\Eloquent\\Builder->get()\n#12 [internal function]: Modules\\Savings\\Listeners\\SavingsStatusChangedCampaigns->handle()\n#13 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Events/CallQueuedListener.php(94): call_user_func_array()\n#14 [internal function]: Illuminate\\Events\\CallQueuedListener->handle()\n#15 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): call_user_func_array()\n#16 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#20 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then()\n#28 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Worker->process()\n#32 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(158): Illuminate\\Queue\\Worker->runJob()\n#33 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(116): Illuminate\\Queue\\Worker->daemon()\n#34 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): call_user_func_array()\n#37 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#39 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#40 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#41 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#42 /var/www/html/projects/loan.local/vendor/symfony/console/Command/Command.php(258): Illuminate\\Console\\Command->execute()\n#43 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#44 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(920): Illuminate\\Console\\Command->run()\n#45 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand()\n#46 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(142): Symfony\\Component\\Console\\Application->doRun()\n#47 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#48 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#49 /var/www/html/projects/loan.local/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#50 {main}\n\nNext Illuminate\\Database\\QueryException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'savings_product_id\' in \'where clause\' (SQL: select * from `communication_campaigns` where `trigger_type` = triggered and `status` = active and `savings_product_id` = 2 and `communication_campaign_business_rule_id` = 24) in /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php:671\nStack trace:\n#0 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(631): Illuminate\\Database\\Connection->runQueryCallback()\n#1 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(339): Illuminate\\Database\\Connection->run()\n#2 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2302): Illuminate\\Database\\Connection->select()\n#3 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2290): Illuminate\\Database\\Query\\Builder->runSelect()\n#4 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2785): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#5 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2291): Illuminate\\Database\\Query\\Builder->onceWithColumns()\n#6 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(547): Illuminate\\Database\\Query\\Builder->get()\n#7 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(531): Illuminate\\Database\\Eloquent\\Builder->getModels()\n#8 /var/www/html/projects/loan.local/Modules/Savings/Listeners/SavingsStatusChangedCampaigns.php(62): Illuminate\\Database\\Eloquent\\Builder->get()\n#9 [internal function]: Modules\\Savings\\Listeners\\SavingsStatusChangedCampaigns->handle()\n#10 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Events/CallQueuedListener.php(94): call_user_func_array()\n#11 [internal function]: Illuminate\\Events\\CallQueuedListener->handle()\n#12 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): call_user_func_array()\n#13 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#15 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#16 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#17 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#18 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#19 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#20 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#21 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#22 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#23 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#24 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then()\n#25 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#26 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#27 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Worker->process()\n#29 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(158): Illuminate\\Queue\\Worker->runJob()\n#30 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(116): Illuminate\\Queue\\Worker->daemon()\n#31 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): call_user_func_array()\n#34 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#36 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#37 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#38 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#39 /var/www/html/projects/loan.local/vendor/symfony/console/Command/Command.php(258): Illuminate\\Console\\Command->execute()\n#40 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#41 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(920): Illuminate\\Console\\Command->run()\n#42 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand()\n#43 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(142): Symfony\\Component\\Console\\Application->doRun()\n#44 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#45 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#46 /var/www/html/projects/loan.local/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#47 {main}', '2020-12-06 17:58:27'),
(4, 'database', 'default', '{\"uuid\":\"c7232cbb-94f6-49ca-a510-423339f2a621\",\"displayName\":\"Modules\\\\Savings\\\\Listeners\\\\SavingsStatusChangedCampaigns\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":16:{s:5:\\\"class\\\";s:55:\\\"Modules\\\\Savings\\\\Listeners\\\\SavingsStatusChangedCampaigns\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:43:\\\"Modules\\\\Savings\\\\Events\\\\SavingsStatusChanged\\\":2:{s:7:\\\"savings\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:32:\\\"Modules\\\\Savings\\\\Entities\\\\Savings\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:2:{i:0;s:7:\\\"charges\\\";i:1;s:15:\\\"savings_product\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:15:\\\"previous_status\\\";s:8:\\\"approved\\\";}}s:5:\\\"tries\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'savings_product_id\' in \'where clause\' in /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php:77\nStack trace:\n#0 /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php(77): PDO->prepare()\n#1 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(331): Doctrine\\DBAL\\Driver\\PDOConnection->prepare()\n#2 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(664): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}()\n#3 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(631): Illuminate\\Database\\Connection->runQueryCallback()\n#4 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(339): Illuminate\\Database\\Connection->run()\n#5 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2302): Illuminate\\Database\\Connection->select()\n#6 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2290): Illuminate\\Database\\Query\\Builder->runSelect()\n#7 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2785): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#8 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2291): Illuminate\\Database\\Query\\Builder->onceWithColumns()\n#9 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(547): Illuminate\\Database\\Query\\Builder->get()\n#10 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(531): Illuminate\\Database\\Eloquent\\Builder->getModels()\n#11 /var/www/html/projects/loan.local/Modules/Savings/Listeners/SavingsStatusChangedCampaigns.php(62): Illuminate\\Database\\Eloquent\\Builder->get()\n#12 [internal function]: Modules\\Savings\\Listeners\\SavingsStatusChangedCampaigns->handle()\n#13 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Events/CallQueuedListener.php(94): call_user_func_array()\n#14 [internal function]: Illuminate\\Events\\CallQueuedListener->handle()\n#15 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): call_user_func_array()\n#16 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#20 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then()\n#28 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Worker->process()\n#32 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(158): Illuminate\\Queue\\Worker->runJob()\n#33 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(116): Illuminate\\Queue\\Worker->daemon()\n#34 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): call_user_func_array()\n#37 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#39 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#40 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#41 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#42 /var/www/html/projects/loan.local/vendor/symfony/console/Command/Command.php(258): Illuminate\\Console\\Command->execute()\n#43 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#44 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(920): Illuminate\\Console\\Command->run()\n#45 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand()\n#46 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(142): Symfony\\Component\\Console\\Application->doRun()\n#47 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#48 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#49 /var/www/html/projects/loan.local/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#50 {main}\n\nNext Doctrine\\DBAL\\Driver\\PDO\\Exception: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'savings_product_id\' in \'where clause\' in /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDO/Exception.php:18\nStack trace:\n#0 /var/www/html/projects/loan.local/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php(82): Doctrine\\DBAL\\Driver\\PDO\\Exception::new()\n#1 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(331): Doctrine\\DBAL\\Driver\\PDOConnection->prepare()\n#2 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(664): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}()\n#3 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(631): Illuminate\\Database\\Connection->runQueryCallback()\n#4 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(339): Illuminate\\Database\\Connection->run()\n#5 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2302): Illuminate\\Database\\Connection->select()\n#6 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2290): Illuminate\\Database\\Query\\Builder->runSelect()\n#7 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2785): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#8 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2291): Illuminate\\Database\\Query\\Builder->onceWithColumns()\n#9 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(547): Illuminate\\Database\\Query\\Builder->get()\n#10 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(531): Illuminate\\Database\\Eloquent\\Builder->getModels()\n#11 /var/www/html/projects/loan.local/Modules/Savings/Listeners/SavingsStatusChangedCampaigns.php(62): Illuminate\\Database\\Eloquent\\Builder->get()\n#12 [internal function]: Modules\\Savings\\Listeners\\SavingsStatusChangedCampaigns->handle()\n#13 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Events/CallQueuedListener.php(94): call_user_func_array()\n#14 [internal function]: Illuminate\\Events\\CallQueuedListener->handle()\n#15 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): call_user_func_array()\n#16 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#20 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then()\n#28 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Worker->process()\n#32 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(158): Illuminate\\Queue\\Worker->runJob()\n#33 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(116): Illuminate\\Queue\\Worker->daemon()\n#34 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): call_user_func_array()\n#37 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#39 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#40 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#41 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#42 /var/www/html/projects/loan.local/vendor/symfony/console/Command/Command.php(258): Illuminate\\Console\\Command->execute()\n#43 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#44 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(920): Illuminate\\Console\\Command->run()\n#45 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand()\n#46 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(142): Symfony\\Component\\Console\\Application->doRun()\n#47 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#48 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#49 /var/www/html/projects/loan.local/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#50 {main}\n\nNext Illuminate\\Database\\QueryException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'savings_product_id\' in \'where clause\' (SQL: select * from `communication_campaigns` where `trigger_type` = triggered and `status` = active and `savings_product_id` = 2 and `communication_campaign_business_rule_id` = 25) in /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php:671\nStack trace:\n#0 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(631): Illuminate\\Database\\Connection->runQueryCallback()\n#1 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Connection.php(339): Illuminate\\Database\\Connection->run()\n#2 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2302): Illuminate\\Database\\Connection->select()\n#3 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2290): Illuminate\\Database\\Query\\Builder->runSelect()\n#4 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2785): Illuminate\\Database\\Query\\Builder->Illuminate\\Database\\Query\\{closure}()\n#5 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Query/Builder.php(2291): Illuminate\\Database\\Query\\Builder->onceWithColumns()\n#6 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(547): Illuminate\\Database\\Query\\Builder->get()\n#7 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Database/Eloquent/Builder.php(531): Illuminate\\Database\\Eloquent\\Builder->getModels()\n#8 /var/www/html/projects/loan.local/Modules/Savings/Listeners/SavingsStatusChangedCampaigns.php(62): Illuminate\\Database\\Eloquent\\Builder->get()\n#9 [internal function]: Modules\\Savings\\Listeners\\SavingsStatusChangedCampaigns->handle()\n#10 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Events/CallQueuedListener.php(94): call_user_func_array()\n#11 [internal function]: Illuminate\\Events\\CallQueuedListener->handle()\n#12 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): call_user_func_array()\n#13 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#15 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#16 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#17 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#18 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#19 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#20 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#21 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#22 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#23 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#24 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then()\n#25 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#26 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#27 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(356): Illuminate\\Queue\\Worker->process()\n#29 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(158): Illuminate\\Queue\\Worker->runJob()\n#30 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(116): Illuminate\\Queue\\Worker->daemon()\n#31 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#32 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): call_user_func_array()\n#34 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure()\n#36 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#37 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Container/Container.php(596): Illuminate\\Container\\BoundMethod::call()\n#38 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#39 /var/www/html/projects/loan.local/vendor/symfony/console/Command/Command.php(258): Illuminate\\Console\\Command->execute()\n#40 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#41 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(920): Illuminate\\Console\\Command->run()\n#42 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand()\n#43 /var/www/html/projects/loan.local/vendor/symfony/console/Application.php(142): Symfony\\Component\\Console\\Application->doRun()\n#44 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Console/Application.php(93): Symfony\\Component\\Console\\Application->run()\n#45 /var/www/html/projects/loan.local/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#46 /var/www/html/projects/loan.local/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#47 {main}', '2020-12-06 18:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`id`, `name`) VALUES
(1, 'MADEO FUND'),
(2, 'Donor Fund');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `income_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `income_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `asset_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(65,2) NOT NULL DEFAULT 0.00,
  `date` date DEFAULT NULL,
  `recurring` tinyint(4) NOT NULL DEFAULT 0,
  `recur_frequency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '31',
  `recur_start_date` date DEFAULT NULL,
  `recur_end_date` date DEFAULT NULL,
  `recur_next_date` date DEFAULT NULL,
  `recur_type` enum('day','week','month','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `created_by_id`, `income_type_id`, `currency_id`, `branch_id`, `income_chart_of_account_id`, `asset_chart_of_account_id`, `amount`, `date`, `recurring`, `recur_frequency`, `recur_start_date`, `recur_end_date`, `recur_next_date`, `recur_type`, `notes`, `description`, `files`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 3, 1, '40.00', '2020-10-23', 0, '31', NULL, NULL, NULL, 'month', NULL, 'test', NULL, '2020-10-23 08:08:29', '2020-10-23 08:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `income_types`
--

CREATE TABLE `income_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `income_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `asset_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_types`
--

INSERT INTO `income_types` (`id`, `name`, `income_chart_of_account_id`, `asset_chart_of_account_id`, `created_at`, `updated_at`) VALUES
(1, 'Test', 3, 1, '2020-10-07 16:49:33', '2020-10-23 07:12:31'),
(2, 'Maombi', 3, 1, '2020-10-23 07:10:19', '2022-04-18 18:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journal_entries`
--

CREATE TABLE `journal_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_sub_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `debit` decimal(65,4) DEFAULT NULL,
  `credit` decimal(65,4) DEFAULT NULL,
  `balance` decimal(65,4) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `reversed` tinyint(4) NOT NULL DEFAULT 0,
  `reversible` tinyint(4) NOT NULL DEFAULT 1,
  `manual_entry` tinyint(4) NOT NULL DEFAULT 0,
  `receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journal_entries`
--

INSERT INTO `journal_entries` (`id`, `created_by_id`, `transaction_number`, `payment_detail_id`, `branch_id`, `currency_id`, `chart_of_account_id`, `transaction_type`, `transaction_sub_type`, `name`, `date`, `month`, `year`, `reference`, `client_id`, `debit`, `credit`, `balance`, `active`, `reversed`, `reversible`, `manual_entry`, `receipt`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, '5f8ed69f3776b', 2, 1, 1, 1, 'manual_entry', NULL, NULL, '2020-10-20', '10', '2020', 'ff', NULL, '50.0000', NULL, NULL, 1, 0, 1, 1, NULL, 'ff', '2020-10-20 12:22:55', '2020-10-20 12:22:55'),
(2, 1, '5f8ed69f3776b', 2, 1, 1, 1, 'manual_entry', NULL, NULL, '2020-10-20', '10', '2020', 'ff', NULL, NULL, '50.0000', NULL, 1, 0, 1, 1, NULL, 'ff', '2020-10-20 12:22:55', '2020-10-20 12:22:55'),
(5, 1, '1', 4, 1, 1, 2, 'expense', NULL, NULL, '2020-10-22', '10', '2020', '1', NULL, '20.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2020-10-22 16:57:14', '2020-10-22 16:57:14'),
(6, 1, '1', 4, 1, 1, 1, 'expense', NULL, NULL, '2020-10-22', '10', '2020', '1', NULL, NULL, '20.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2020-10-22 16:57:14', '2020-10-22 16:57:14'),
(9, 1, '1', 6, 1, 1, 3, 'income', NULL, NULL, '2020-10-23', '10', '2020', '1', NULL, NULL, '40.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2020-10-23 08:12:43', '2020-10-23 08:12:43'),
(10, 1, '1', 6, 1, 1, 1, 'income', NULL, NULL, '2020-10-23', '10', '2020', '1', NULL, '40.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2020-10-23 08:12:43', '2020-10-23 08:12:43'),
(11, 1, 'L', 17, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '4', NULL, NULL, '200000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-18 17:25:42', '2022-04-18 17:25:42'),
(12, 1, 'L', 17, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '4', NULL, '200000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-18 17:25:42', '2022-04-18 17:25:42'),
(13, 1, 'L', 18, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-18', '04', '2022', '9', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-18 19:15:50', '2022-04-18 19:16:55'),
(14, 1, 'L', 18, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-18', '04', '2022', '9', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-18 19:15:50', '2022-04-18 19:16:55'),
(15, 1, 'L', 19, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-18', '04', '2022', '10', NULL, NULL, '200000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-18 19:23:35', '2022-04-22 20:09:04'),
(16, 1, 'L', 19, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-18', '04', '2022', '10', NULL, '200000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-18 19:23:35', '2022-04-22 20:09:04'),
(17, 1, 'L', 20, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-18', '04', '2022', '11', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-18 19:28:57', '2022-04-22 20:10:20'),
(18, 1, 'L', 20, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-18', '04', '2022', '11', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-18 19:28:57', '2022-04-22 20:10:20'),
(19, 1, 'L', 21, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-18', '04', '2022', '12', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-18 19:35:47', '2022-04-22 21:45:14'),
(20, 1, 'L', 21, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-18', '04', '2022', '12', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-18 19:35:47', '2022-04-22 21:45:14'),
(21, 1, 'L', 22, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '13', NULL, NULL, '200000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-18 20:42:57', '2022-04-22 21:47:56'),
(22, 1, 'L', 22, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '13', NULL, '200000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-18 20:42:57', '2022-04-22 21:47:56'),
(23, 1, 'L', 23, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '14', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-18 20:49:07', '2022-04-22 21:49:57'),
(24, 1, 'L', 23, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '14', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-18 20:49:07', '2022-04-22 21:49:57'),
(25, 1, 'L', 24, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '15', NULL, NULL, '200000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(26, 1, 'L', 24, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '15', NULL, '200000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(27, 1, 'L', 25, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '16', NULL, NULL, '150000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(28, 1, 'L', 25, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '16', NULL, '150000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(29, 1, 'L', 26, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '17', NULL, NULL, '150000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(30, 1, 'L', 26, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '17', NULL, '150000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(31, 8, 'L', 38, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '26', NULL, NULL, '100000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-20 19:29:43', '2022-04-20 19:38:35'),
(32, 8, 'L', 38, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '26', NULL, '100000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-20 19:29:43', '2022-04-20 19:38:35'),
(33, 8, 'L', 39, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '26', NULL, NULL, '100000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-20 19:32:43', '2022-04-20 19:38:35'),
(34, 8, 'L', 39, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '26', NULL, '100000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-20 19:32:43', '2022-04-20 19:38:35'),
(35, 8, 'L', 40, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '26', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-20 19:37:22', '2022-04-20 19:38:35'),
(36, 8, 'L', 40, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '26', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-20 19:37:22', '2022-04-20 19:38:35'),
(37, 8, 'L', 41, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '26', NULL, NULL, '150000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(38, 8, 'L', 41, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '26', NULL, '150000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(39, 8, 'L', 42, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '27', NULL, NULL, '150000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(40, 8, 'L', 42, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '27', NULL, '150000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(41, 8, 'L', 43, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '28', NULL, NULL, '150000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(42, 8, 'L', 43, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '28', NULL, '150000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(43, 8, 'L', 44, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '29', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-20 20:35:50', '2022-04-20 20:41:19'),
(44, 8, 'L', 44, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '29', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-20 20:35:50', '2022-04-20 20:41:19'),
(45, 8, 'L', 45, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '29', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-20 20:37:40', '2022-04-20 20:41:19'),
(46, 8, 'L', 45, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '29', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-20 20:37:40', '2022-04-20 20:41:19'),
(47, 8, 'L', 46, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '30', NULL, NULL, '150000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(48, 8, 'L', 46, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '30', NULL, '150000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(49, 8, 'L', 47, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '29', NULL, NULL, '150000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(50, 8, 'L', 47, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '29', NULL, '150000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(51, 8, 'L', 48, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '31', NULL, NULL, '200000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(52, 8, 'L', 48, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-20', '04', '2022', '31', NULL, '200000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(53, 8, 'L', 49, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '32', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 11:40:03', '2022-04-21 11:49:29'),
(54, 8, 'L', 49, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '32', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 11:40:03', '2022-04-21 11:49:29'),
(55, 8, 'L', 50, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '32', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 11:47:34', '2022-04-21 11:49:29'),
(56, 8, 'L', 50, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '32', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 11:47:34', '2022-04-21 11:49:29'),
(57, 8, 'L', 51, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '32', NULL, NULL, '150000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(58, 8, 'L', 51, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '32', NULL, '150000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(59, 8, 'L', 52, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '33', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 11:52:13', '2022-04-22 21:44:10'),
(60, 8, 'L', 52, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '33', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 11:52:13', '2022-04-22 21:44:10'),
(61, 8, 'L', 53, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '34', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 11:57:00', '2022-04-22 20:17:14'),
(62, 8, 'L', 53, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '34', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 11:57:00', '2022-04-22 20:17:14'),
(63, 8, 'L', 54, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '35', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 13:10:08', '2022-04-22 20:15:09'),
(64, 8, 'L', 54, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '35', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 13:10:08', '2022-04-22 20:15:09'),
(65, 8, 'L', 55, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '35', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 13:13:30', '2022-04-22 20:15:09'),
(66, 8, 'L', 55, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '35', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 13:13:30', '2022-04-22 20:15:09'),
(67, 8, 'L', 56, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '35', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 13:16:51', '2022-04-22 20:15:09'),
(68, 8, 'L', 56, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '35', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 13:16:51', '2022-04-22 20:15:09'),
(69, 8, 'L', 57, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '35', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 13:20:13', '2022-04-22 20:15:09'),
(70, 8, 'L', 57, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '35', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 13:20:13', '2022-04-22 20:15:09'),
(71, 8, 'L', 58, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '35', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 13:23:10', '2022-04-22 20:15:09'),
(72, 8, 'L', 58, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '35', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 13:23:10', '2022-04-22 20:15:09'),
(73, 8, 'L', 59, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '35', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 13:25:45', '2022-04-22 20:15:09'),
(74, 8, 'L', 59, 3, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-21', '04', '2022', '35', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-21 13:25:45', '2022-04-22 20:15:09'),
(75, 8, 'L', 60, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '40', NULL, NULL, '200000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(76, 8, 'L', 60, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '40', NULL, '200000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(77, 8, 'L', 61, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '41', NULL, NULL, '150000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(78, 8, 'L', 61, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '41', NULL, '150000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(79, 8, 'L', 62, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '42', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-22 18:52:03', '2022-04-22 19:11:37'),
(80, 8, 'L', 62, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '42', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-22 18:52:03', '2022-04-22 19:11:37'),
(81, 8, 'L', 63, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '43', NULL, NULL, '200000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-22 19:04:32', '2022-04-22 19:04:32'),
(82, 8, 'L', 63, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '43', NULL, '200000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-22 19:04:32', '2022-04-22 19:04:32'),
(83, 8, 'L', 64, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '42', NULL, NULL, '150000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-22 19:09:55', '2022-04-22 19:11:37'),
(84, 8, 'L', 64, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '42', NULL, '150000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-22 19:09:55', '2022-04-22 19:11:37'),
(85, 8, 'L', 65, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '45', NULL, NULL, '150000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(86, 8, 'L', 65, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '45', NULL, '150000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(87, 8, 'L', 66, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '44', NULL, NULL, '150000.0000', NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(88, 8, 'L', 66, 5, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-16', '04', '2022', '44', NULL, '150000.0000', NULL, NULL, 1, 0, 1, 0, NULL, NULL, '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(89, 8, 'L', 67, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-24', '04', '2022', '46', NULL, NULL, '100000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-24 16:22:57', '2022-04-24 17:17:48'),
(90, 8, 'L', 67, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-24', '04', '2022', '46', NULL, '100000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-24 16:22:57', '2022-04-24 17:17:48'),
(91, 8, 'L', 68, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-24', '04', '2022', '46', NULL, NULL, '100000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-24 16:37:49', '2022-04-24 17:17:48'),
(92, 8, 'L', 68, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-24', '04', '2022', '46', NULL, '100000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-24 16:37:49', '2022-04-24 17:17:48'),
(93, 8, 'L', 69, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-24', '04', '2022', '46', NULL, NULL, '100000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-24 16:55:02', '2022-04-24 17:17:48'),
(94, 8, 'L', 69, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-24', '04', '2022', '46', NULL, '100000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-24 16:55:02', '2022-04-24 17:17:48'),
(95, 8, 'L', 70, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-24', '04', '2022', '46', NULL, NULL, '100000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-24 16:58:28', '2022-04-24 17:17:48'),
(96, 8, 'L', 70, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-24', '04', '2022', '46', NULL, '100000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-24 16:58:28', '2022-04-24 17:17:48'),
(97, 8, 'L', 71, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-24', '04', '2022', '46', NULL, NULL, '100000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-24 17:01:35', '2022-04-24 17:17:48'),
(98, 8, 'L', 71, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-24', '04', '2022', '46', NULL, '100000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-24 17:01:35', '2022-04-24 17:17:48'),
(99, 8, 'L', 72, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-24', '04', '2022', '46', NULL, NULL, '100000.0000', NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-24 17:16:33', '2022-04-24 17:17:48'),
(100, 8, 'L', 72, 4, 1, 1, 'loan_disbursement', NULL, NULL, '2022-04-24', '04', '2022', '46', NULL, '100000.0000', NULL, NULL, 1, 1, 1, 0, NULL, NULL, '2022-04-24 17:16:33', '2022-04-24 17:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_type` enum('client','group') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'client',
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `loan_product_id` bigint(20) UNSIGNED NOT NULL,
  `loan_transaction_processing_strategy_id` bigint(20) UNSIGNED NOT NULL,
  `fund_id` bigint(20) UNSIGNED NOT NULL,
  `loan_purpose_id` bigint(20) UNSIGNED NOT NULL,
  `loan_officer_id` bigint(20) UNSIGNED NOT NULL,
  `linked_savings_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_disbursement_channel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `submitted_on_date` date DEFAULT NULL,
  `submitted_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_on_date` date DEFAULT NULL,
  `approved_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_disbursement_date` date DEFAULT NULL,
  `expected_first_payment_date` date DEFAULT NULL,
  `first_payment_date` date DEFAULT NULL,
  `expected_maturity_date` date DEFAULT NULL,
  `disbursed_on_date` date DEFAULT NULL,
  `disbursed_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `disbursed_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rejected_on_date` date DEFAULT NULL,
  `rejected_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rejected_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `written_off_on_date` date DEFAULT NULL,
  `written_off_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `written_off_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed_on_date` date DEFAULT NULL,
  `closed_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `closed_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rescheduled_on_date` date DEFAULT NULL,
  `rescheduled_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rescheduled_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawn_on_date` date DEFAULT NULL,
  `withdrawn_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawn_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `principal` decimal(65,6) NOT NULL,
  `applied_amount` decimal(65,6) DEFAULT NULL,
  `approved_amount` decimal(65,6) DEFAULT NULL,
  `interest_rate` decimal(65,6) NOT NULL,
  `decimals` int(11) DEFAULT NULL,
  `instalment_multiple_of` int(11) DEFAULT 1,
  `loan_term` int(11) NOT NULL,
  `repayment_frequency` int(11) NOT NULL,
  `repayment_frequency_type` enum('days','weeks','months','years') COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest_rate_type` enum('day','week','month','year') COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_balloon_payments` tinyint(4) NOT NULL DEFAULT 0,
  `allow_schedule_adjustments` tinyint(4) NOT NULL DEFAULT 0,
  `grace_on_principal_paid` int(11) NOT NULL DEFAULT 0,
  `grace_on_interest_paid` int(11) NOT NULL DEFAULT 0,
  `grace_on_interest_charged` int(11) NOT NULL DEFAULT 0,
  `allow_custom_grace_period` tinyint(4) NOT NULL DEFAULT 0,
  `allow_topup` tinyint(4) NOT NULL DEFAULT 0,
  `interest_methodology` enum('flat','declining_balance') COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest_recalculation` tinyint(4) NOT NULL DEFAULT 0,
  `amortization_method` enum('equal_installments','equal_principal_payments') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest_calculation_period_type` enum('daily','same') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days_in_year` enum('actual','360','365','364') COLLATE utf8mb4_unicode_ci DEFAULT 'actual',
  `days_in_month` enum('actual','30','31') COLLATE utf8mb4_unicode_ci DEFAULT 'actual',
  `include_in_loan_cycle` tinyint(4) NOT NULL DEFAULT 0,
  `lock_guarantee_funds` tinyint(4) NOT NULL DEFAULT 0,
  `auto_allocate_overpayments` tinyint(4) NOT NULL DEFAULT 0,
  `allow_additional_charges` tinyint(4) NOT NULL DEFAULT 0,
  `auto_disburse` tinyint(4) NOT NULL DEFAULT 0,
  `status` enum('pending','approved','active','withdrawn','rejected','closed','rescheduled','written_off','overpaid','submitted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'submitted',
  `disbursement_charges` decimal(65,6) DEFAULT NULL,
  `principal_disbursed_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `principal_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `principal_written_off_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `principal_outstanding_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `interest_disbursed_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `interest_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `interest_written_off_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `interest_waived_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `interest_outstanding_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `fees_disbursed_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `fees_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `fees_written_off_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `fees_waived_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `fees_outstanding_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `penalties_disbursed_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `penalties_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `penalties_written_off_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `penalties_waived_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `penalties_outstanding_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `total_disbursed_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `total_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `total_written_off_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `total_waived_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `total_outstanding_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `created_by_id`, `client_type`, `client_id`, `group_id`, `branch_id`, `currency_id`, `loan_product_id`, `loan_transaction_processing_strategy_id`, `fund_id`, `loan_purpose_id`, `loan_officer_id`, `linked_savings_id`, `loan_disbursement_channel_id`, `submitted_on_date`, `submitted_by_user_id`, `approved_on_date`, `approved_by_user_id`, `approved_notes`, `expected_disbursement_date`, `expected_first_payment_date`, `first_payment_date`, `expected_maturity_date`, `disbursed_on_date`, `disbursed_by_user_id`, `disbursed_notes`, `rejected_on_date`, `rejected_by_user_id`, `rejected_notes`, `written_off_on_date`, `written_off_by_user_id`, `written_off_notes`, `closed_on_date`, `closed_by_user_id`, `closed_notes`, `rescheduled_on_date`, `rescheduled_by_user_id`, `rescheduled_notes`, `withdrawn_on_date`, `withdrawn_by_user_id`, `withdrawn_notes`, `external_id`, `account_number`, `principal`, `applied_amount`, `approved_amount`, `interest_rate`, `decimals`, `instalment_multiple_of`, `loan_term`, `repayment_frequency`, `repayment_frequency_type`, `interest_rate_type`, `enable_balloon_payments`, `allow_schedule_adjustments`, `grace_on_principal_paid`, `grace_on_interest_paid`, `grace_on_interest_charged`, `allow_custom_grace_period`, `allow_topup`, `interest_methodology`, `interest_recalculation`, `amortization_method`, `interest_calculation_period_type`, `days_in_year`, `days_in_month`, `include_in_loan_cycle`, `lock_guarantee_funds`, `auto_allocate_overpayments`, `allow_additional_charges`, `auto_disburse`, `status`, `disbursement_charges`, `principal_disbursed_derived`, `principal_repaid_derived`, `principal_written_off_derived`, `principal_outstanding_derived`, `interest_disbursed_derived`, `interest_repaid_derived`, `interest_written_off_derived`, `interest_waived_derived`, `interest_outstanding_derived`, `fees_disbursed_derived`, `fees_repaid_derived`, `fees_written_off_derived`, `fees_waived_derived`, `fees_outstanding_derived`, `penalties_disbursed_derived`, `penalties_repaid_derived`, `penalties_written_off_derived`, `penalties_waived_derived`, `penalties_outstanding_derived`, `total_disbursed_derived`, `total_repaid_derived`, `total_written_off_derived`, `total_waived_derived`, `total_outstanding_derived`, `created_at`, `updated_at`) VALUES
(1, 1, 'client', 1, NULL, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2020-09-22', 1, '2020-09-22', 1, NULL, '2020-09-22', '2020-10-22', '2020-10-22', '2021-04-22', '2020-09-22', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000000.000000', '1000000.000000', '1000000.000000', '20.000000', NULL, 1, 6, 1, 'months', 'year', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'active', '0.000000', '1000000.000000', '0.000000', '0.000000', '0.000000', '100002.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2020-09-22 14:06:02', '2020-12-21 08:55:59'),
(2, 1, 'client', 2, NULL, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2020-12-02', 1, '2020-12-02', 1, 'cc ff', '2020-12-02', '2021-01-02', '2021-01-02', '2021-07-02', '2020-12-02', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000000.000000', '1000000.000000', '1000000.000000', '20.000000', NULL, 1, 6, 1, 'months', 'year', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'active', '0.000000', '1000000.000000', '0.000000', '0.000000', '0.000000', '100002.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2020-12-02 12:19:06', '2020-12-02 16:11:09'),
(3, 1, 'client', 1, NULL, 1, 1, 2, 1, 1, 1, 1, NULL, NULL, '2020-12-10', 1, NULL, NULL, NULL, '2020-12-10', '2020-01-29', '2021-01-29', '2021-06-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000.000000', '1000.000000', NULL, '10.000000', NULL, 1, 5, 1, 'months', 'year', 0, 0, 0, 0, 0, 0, 0, 'declining_balance', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', '0.000000', '1000.000000', '0.000000', '0.000000', '0.000000', '25.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2020-12-10 08:55:21', '2022-04-22 20:07:24'),
(4, 10, 'client', 7, NULL, 4, 1, 5, 2, 1, 1, 10, NULL, NULL, '2022-04-18', 10, '2022-04-18', 1, 'the LOAN is Group', '2022-04-16', '2022-04-23', '2022-04-23', '2022-05-21', '2022-04-16', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200000.000000', '200000.000000', '200000.000000', '27.000000', NULL, 1, 4, 1, 'weeks', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'active', '0.000000', '200000.000000', '0.000000', '0.000000', '0.000000', '54000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 17:04:06', '2022-04-18 17:25:42'),
(5, 10, 'client', 7, NULL, 4, 1, 5, 2, 1, 1, 10, NULL, NULL, '2022-04-18', 10, NULL, NULL, NULL, '2022-04-16', '2022-04-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000000', '200000.000000', NULL, '27.000000', NULL, 1, 4, 4, 'months', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'submitted', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 17:07:23', '2022-04-18 17:07:23'),
(6, 10, 'client', 7, NULL, 4, 1, 5, 2, 1, 1, 10, NULL, NULL, '2022-04-18', 10, NULL, NULL, NULL, '2022-04-16', '2022-04-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000000', '200000.000000', NULL, '27.000000', NULL, 1, 4, 16, 'weeks', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 17:11:00', '2022-04-18 17:11:00'),
(7, 10, 'client', 7, NULL, 4, 1, 5, 2, 1, 1, 10, NULL, NULL, '2022-04-18', 10, NULL, NULL, NULL, '2022-04-16', '2022-04-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000000', '200000.000000', NULL, '27.000000', NULL, 1, 4, 1, 'weeks', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 17:13:02', '2022-04-18 17:13:02'),
(8, 10, 'client', 7, NULL, 4, 1, 5, 2, 1, 1, 10, NULL, NULL, '2022-04-18', 10, NULL, NULL, NULL, '2022-04-16', '2022-04-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000000', '200000.000000', NULL, '27.000000', NULL, 1, 16, 1, 'weeks', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 17:16:27', '2022-04-18 17:16:27'),
(9, 1, 'client', 8, NULL, 4, 1, 6, 2, 1, 1, 8, NULL, NULL, '2022-04-18', 1, NULL, NULL, NULL, '2022-04-18', '2022-05-18', '2022-05-18', '2022-09-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', NULL, '0.900000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'declining_balance', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '409.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 19:13:51', '2022-04-18 19:17:44'),
(10, 1, 'client', 8, NULL, 4, 1, 6, 2, 1, 1, 8, NULL, NULL, '2022-04-18', 1, NULL, NULL, NULL, '2022-04-18', '2022-05-18', '2022-05-18', '2022-05-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200000.000000', '200000.000000', NULL, '27.000000', NULL, 1, 4, 16, 'weeks', 'month', 0, 0, 0, 0, 0, 0, 0, 'declining_balance', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 19:21:25', '2022-04-22 20:09:14'),
(11, 1, 'client', 8, NULL, 4, 1, 6, 2, 1, 1, 8, NULL, NULL, '2022-04-18', 1, NULL, NULL, NULL, '2022-04-18', '2022-05-18', '2022-05-18', '2022-09-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', NULL, '0.900000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'declining_balance', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '409.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 19:27:21', '2022-04-22 20:10:47'),
(12, 1, 'client', 8, NULL, 4, 1, 6, 2, 1, 1, 8, NULL, NULL, '2022-04-18', 1, NULL, NULL, NULL, '2022-04-18', '2022-05-18', '2022-05-18', '2022-09-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', NULL, '30.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'declining_balance', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '13604.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 19:34:32', '2022-04-22 21:45:24'),
(13, 10, 'client', 9, NULL, 4, 1, 6, 2, 1, 1, 10, NULL, NULL, '2022-04-18', 10, NULL, NULL, NULL, '2022-04-16', '2022-04-23', '2022-04-23', '2022-08-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200000.000000', '200000.000000', NULL, '5.780000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', '0.000000', '198339.000000', '0.000000', '0.000000', '0.000000', '6545.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 20:37:10', '2022-04-22 21:48:08'),
(14, 10, 'client', 10, NULL, 4, 1, 6, 2, 1, 1, 10, NULL, NULL, '2022-04-18', 10, NULL, NULL, NULL, '2022-04-16', '2022-04-23', '2022-04-23', '2022-08-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', NULL, '5.780000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '4913.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 20:45:30', '2022-04-22 21:50:06'),
(15, 10, 'client', 11, NULL, 4, 1, 6, 2, 1, 1, 10, NULL, NULL, '2022-04-18', 10, '2022-04-18', 1, 'MKOPO WA KWANZA WA VIKUNDI NANAKANGA', '2022-04-16', '2022-04-23', '2022-04-23', '2022-08-20', '2022-04-16', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200000.000000', '200000.000000', '200000.000000', '5.780000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'active', '0.000000', '198339.000000', '0.000000', '0.000000', '0.000000', '6545.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 20:54:10', '2022-04-18 20:59:09'),
(16, 10, 'client', 12, NULL, 4, 1, 6, 2, 1, 1, 10, NULL, NULL, '2022-04-18', 10, '2022-04-18', 1, 'MKOPO WA KWANZA WA VIKUNDI NANAKANGA', '2022-04-16', '2022-04-23', '2022-04-23', '2022-08-20', '2022-04-16', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '5.780000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '4913.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 21:07:03', '2022-04-18 21:13:36'),
(17, 10, 'client', 13, NULL, 4, 1, 6, 2, 1, 1, 10, NULL, NULL, '2022-04-18', 10, '2022-04-18', 1, 'MKOPO WA KWANZA WA VIKUNDI NANAKANGA', '2022-04-16', '2022-04-23', '2022-04-23', '2022-08-20', '2022-04-16', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '5.780000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '4913.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-18 21:24:29', '2022-04-18 21:26:53'),
(18, 10, 'client', 14, NULL, 4, 1, 7, 2, 1, 1, 10, NULL, NULL, '2022-04-19', 10, '2022-04-19', 8, 'test', '2022-04-19', '2022-05-19', '2022-05-19', '2022-09-15', '2022-04-19', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '9.780000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '8313.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-19 18:44:10', '2022-04-19 18:58:59'),
(19, 10, 'client', 15, NULL, 4, 1, 7, 2, 1, 1, 10, NULL, NULL, '2022-04-19', 10, '2022-04-19', 8, NULL, '2022-04-19', '2022-05-19', '2022-05-19', '2022-09-15', '2022-04-19', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '9.780000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '8313.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-19 19:09:34', '2022-04-19 19:17:10'),
(20, 10, 'client', 15, NULL, 4, 1, 7, 2, 1, 1, 10, NULL, NULL, '2022-04-19', 10, '2022-04-19', 8, 'thh', '2022-04-19', '2022-05-19', '2022-05-19', '2022-09-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100000.000000', '100000.000000', '100000.000000', '9.780000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'approved', '0.000000', '99161.000000', '0.000000', '0.000000', '0.000000', '5542.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-19 19:26:17', '2022-04-19 20:07:25'),
(21, 10, 'client', 15, NULL, 4, 1, 7, 2, 1, 1, 10, NULL, NULL, '2022-04-19', 10, '2022-04-19', 8, NULL, '2022-04-19', '2022-05-19', '2022-05-19', '2022-05-19', '2022-04-19', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '9.780000', NULL, 1, 4, 16, 'months', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'active', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-19 20:15:28', '2022-04-20 14:24:41'),
(22, 10, 'client', 16, NULL, 4, 1, 7, 2, 1, 1, 10, NULL, NULL, '2022-04-19', 10, '2022-04-19', 1, NULL, '2022-04-19', '2022-05-19', '2022-05-19', '2022-05-19', '2022-04-19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '9.780000', NULL, 1, 4, 16, 'months', 'year', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'active', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-19 20:42:43', '2022-04-19 20:44:11'),
(23, 10, 'client', 16, NULL, 4, 1, 7, 2, 1, 1, 10, NULL, NULL, '2022-04-19', 10, NULL, NULL, NULL, '2022-04-19', '2022-05-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000000', '150000.000000', NULL, '9.780000', NULL, 1, 4, 16, 'months', 'year', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-19 20:42:48', '2022-04-19 20:42:48'),
(24, 1, 'client', 14, NULL, 4, 1, 8, 2, 1, 1, 10, NULL, NULL, '2022-04-19', 1, '2022-04-19', 1, 'fd', '2022-04-19', '2022-05-19', '2022-05-19', '2022-09-15', '2022-04-19', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '295.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '250750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-19 21:37:55', '2022-04-19 21:39:06'),
(25, 8, 'client', 14, NULL, 4, 1, 8, 2, 1, 1, 10, NULL, NULL, '2022-04-20', 8, '2022-04-20', 8, 't', '2022-04-20', '2022-05-20', '2022-05-20', '2022-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '295.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'approved', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '250750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-20 14:15:43', '2022-04-20 19:19:41'),
(26, 8, 'client', 14, NULL, 4, 1, 4, 2, 1, 1, 10, NULL, NULL, '2022-04-20', 8, '2022-04-20', 8, 'f', '2022-04-20', '2022-05-20', '2022-05-20', '2022-09-16', '2022-04-20', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '35.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '29750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-20 19:29:12', '2022-04-20 19:50:52'),
(27, 8, 'client', 17, NULL, 3, 1, 4, 2, 1, 1, 8, NULL, NULL, '2022-04-20', 8, '2022-04-20', 8, 'gg', '2022-04-20', '2022-05-20', '2022-05-20', '2022-09-16', '2022-04-20', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '35.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '29750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-20 20:05:26', '2022-04-20 20:07:13'),
(28, 8, 'client', 17, NULL, 3, 1, 4, 2, 1, 1, 8, NULL, NULL, '2022-04-20', 8, '2022-04-20', 8, 'h', '2022-04-20', '2022-05-20', '2022-05-20', '2022-09-16', '2022-04-20', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '35.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '29750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-20 20:21:55', '2022-04-20 20:23:19'),
(29, 8, 'client', 17, NULL, 3, 1, 4, 2, 1, 1, 8, NULL, NULL, '2022-04-20', 8, '2022-04-20', 8, 'f', '2022-04-20', '2022-05-20', '2022-05-20', '2022-09-16', '2022-04-20', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-20 20:35:19', '2022-04-20 21:18:23'),
(30, 8, 'client', 17, NULL, 3, 1, 4, 2, 1, 1, 8, NULL, NULL, '2022-04-20', 8, '2022-04-20', 8, 'f', '2022-04-20', '2022-05-20', '2022-05-20', '2022-09-16', '2022-04-20', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-20 21:14:08', '2022-04-20 21:14:55'),
(31, 8, 'client', 17, NULL, 3, 1, 4, 2, 1, 1, 8, NULL, NULL, '2022-04-20', 8, '2022-04-20', 8, 'f', '2022-04-20', '2022-05-20', '2022-05-20', '2022-09-16', '2022-04-20', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200000.000000', '200000.000000', '200000.000000', '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'active', '0.000000', '198339.000000', '0.000000', '0.000000', '0.000000', '19261.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-20 21:21:03', '2022-04-20 21:21:42'),
(32, 8, 'client', 17, NULL, 3, 1, 6, 2, 1, 1, 8, NULL, NULL, '2022-04-21', 8, '2022-04-21', 8, 'v', '2022-04-21', '2022-05-21', '2022-05-21', '2022-09-17', '2022-04-21', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-21 11:39:19', '2022-04-21 11:50:05'),
(33, 8, 'client', 17, NULL, 3, 1, 6, 2, 1, 1, 8, NULL, NULL, '2022-04-21', 8, NULL, NULL, NULL, '2022-04-21', '2022-05-21', '2022-05-21', '2022-09-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', NULL, '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-21 11:51:46', '2022-04-22 21:44:19'),
(34, 8, 'client', 17, NULL, 3, 1, 6, 2, 1, 1, 8, NULL, NULL, '2022-04-21', 8, NULL, NULL, NULL, '2022-04-21', '2022-05-21', '2022-05-21', '2022-09-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', NULL, '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-21 11:56:33', '2022-04-22 20:17:26'),
(35, 8, 'client', 17, NULL, 3, 1, 6, 2, 1, 1, 8, NULL, NULL, '2022-04-21', 8, NULL, NULL, NULL, '2022-04-21', '2022-05-21', '2022-05-21', '2022-09-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', NULL, '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 'submitted', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-21 13:09:29', '2022-04-22 20:15:26'),
(36, 10, 'client', 28, NULL, 5, 1, 4, 2, 1, 1, 10, NULL, NULL, '2022-04-22', 10, NULL, NULL, NULL, '2022-04-22', '2022-04-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000000', '150000.000000', NULL, '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'submitted', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-22 14:05:27', '2022-04-22 14:05:27'),
(37, 10, 'client', 28, NULL, 5, 1, 4, 2, 1, 1, 10, NULL, NULL, '2022-04-22', 10, NULL, NULL, NULL, '2022-04-16', '2022-04-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000000', '150000.000000', NULL, '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'submitted', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-22 14:07:10', '2022-04-22 14:07:10'),
(38, 10, 'client', 28, NULL, 5, 1, 4, 2, 1, 1, 10, NULL, NULL, '2022-04-22', 10, NULL, NULL, NULL, '2022-04-16', '2022-04-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000000', '150000.000000', NULL, '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'submitted', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-22 15:06:18', '2022-04-22 15:06:18'),
(39, 10, 'client', 28, NULL, 5, 1, 4, 2, 1, 1, 10, NULL, NULL, '2022-04-22', 10, NULL, NULL, NULL, '2022-04-16', '2022-04-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000000', '150000.000000', NULL, '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'submitted', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-22 15:18:24', '2022-04-22 15:18:24'),
(40, 10, 'client', 28, NULL, 5, 1, 4, 2, 1, 1, 10, NULL, NULL, '2022-04-22', 10, '2022-04-22', 8, 'DF', '2022-04-16', '2022-04-23', '2022-04-23', '2022-08-20', '2022-04-16', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200000.000000', '200000.000000', '200000.000000', '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'active', '0.000000', '198339.000000', '0.000000', '0.000000', '0.000000', '19261.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-22 15:53:08', '2022-04-22 16:12:28'),
(41, 10, 'client', 29, NULL, 5, 1, 4, 2, 1, 1, 10, NULL, NULL, '2022-04-22', 10, '2022-04-22', 8, 'Ok', '2022-04-16', '2022-04-23', '2022-04-23', '2022-08-20', '2022-04-16', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-22 18:38:28', '2022-04-22 18:43:57'),
(42, 10, 'client', 30, NULL, 5, 1, 4, 2, 1, 1, 10, NULL, NULL, '2022-04-22', 10, NULL, NULL, NULL, '2022-04-16', '2022-04-23', '2022-04-23', '2022-08-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '0.000000', NULL, '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'submitted', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-22 18:48:53', '2022-04-22 19:13:52'),
(43, 10, 'client', 32, NULL, 5, 1, 4, 2, 1, 1, 10, NULL, NULL, '2022-04-22', 10, '2022-04-22', 8, 'OK', '2022-04-16', '2022-04-23', '2022-04-23', '2022-08-20', '2022-04-16', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '200000.000000', '200000.000000', '200000.000000', '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'active', '0.000000', '198339.000000', '0.000000', '0.000000', '0.000000', '19261.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-22 18:57:41', '2022-04-22 19:04:32'),
(44, 10, 'client', 33, NULL, 5, 1, 4, 2, 1, 1, 10, NULL, NULL, '2022-04-22', 10, '2022-04-22', 8, 'OK', '2022-04-16', '2022-04-23', '2022-04-23', '2022-08-20', '2022-04-16', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-22 19:09:30', '2022-04-22 19:19:56'),
(45, 10, 'client', 30, NULL, 5, 1, 4, 2, 1, 1, 10, NULL, NULL, '2022-04-22', 10, '2022-04-22', 8, 'OK', '2022-04-16', '2022-04-23', '2022-04-23', '2022-08-20', '2022-04-16', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150000.000000', '150000.000000', '150000.000000', '17.000000', NULL, 1, 120, 7, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'active', '0.000000', '148750.000000', '0.000000', '0.000000', '0.000000', '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-22 19:14:33', '2022-04-22 19:15:44'),
(46, 8, 'client', 13, NULL, 4, 1, 9, 1, 1, 1, 10, NULL, NULL, '2022-04-24', 8, NULL, NULL, NULL, '2022-04-24', '2022-05-24', '2022-05-24', '2022-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100000.000000', '100000.000000', NULL, '4.000000', NULL, 1, 30, 1, 'days', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 'submitted', '0.000000', '100000.000000', '0.000000', '0.000000', '0.000000', '3990.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '2022-04-24 16:22:11', '2022-04-24 17:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `loan_applications`
--

CREATE TABLE `loan_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_product_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(65,4) NOT NULL DEFAULT 0.0000,
  `status` enum('approved','pending','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_applications`
--

INSERT INTO `loan_applications` (`id`, `branch_id`, `created_by_id`, `client_id`, `loan_id`, `loan_product_id`, `amount`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, NULL, 2, '1000.0000', 'pending', 'dd', '2020-12-04 17:11:51', '2020-12-04 17:11:51'),
(2, 1, 2, 1, NULL, 2, '1000.0000', 'pending', 'ff f', '2020-12-04 17:13:11', '2020-12-04 17:13:11'),
(3, 1, 2, 1, NULL, 1, '1000.0000', 'pending', 'sd', '2020-12-04 17:13:18', '2020-12-04 17:13:18');

-- --------------------------------------------------------

--
-- Table structure for table `loan_charges`
--

CREATE TABLE `loan_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `loan_charge_type_id` bigint(20) UNSIGNED NOT NULL,
  `loan_charge_option_id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(65,6) NOT NULL,
  `min_amount` decimal(65,6) DEFAULT NULL,
  `max_amount` decimal(65,6) DEFAULT NULL,
  `payment_mode` enum('regular','account_transfer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'regular',
  `schedule` tinyint(4) DEFAULT 0,
  `schedule_frequency` int(11) DEFAULT NULL,
  `schedule_frequency_type` enum('days','weeks','months','years') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_penalty` tinyint(4) DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `allow_override` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_charges`
--

INSERT INTO `loan_charges` (`id`, `created_by_id`, `currency_id`, `loan_charge_type_id`, `loan_charge_option_id`, `name`, `amount`, `min_amount`, `max_amount`, `payment_mode`, `schedule`, `schedule_frequency`, `schedule_frequency_type`, `is_penalty`, `active`, `allow_override`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 3, 3, 'LOeTFFE', '104.000000', NULL, NULL, 'regular', 0, NULL, NULL, 1, 1, 1, '2022-04-18 17:47:22', '2022-04-21 13:24:00'),
(3, 8, 1, 3, 3, 'NAIFeF', '164.000000', NULL, NULL, 'regular', 0, NULL, NULL, 1, 1, 0, '2022-04-20 19:41:02', '2022-04-21 13:29:07'),
(4, 8, 1, 4, 3, 'ZIDIMDAFEE', '17.000000', NULL, NULL, 'regular', 0, NULL, NULL, 1, 0, 0, '2022-04-21 13:31:23', '2022-04-21 13:31:23'),
(5, 8, 1, 3, 3, 'PLCharge', '35.000000', NULL, NULL, 'regular', 0, NULL, NULL, 1, 1, 0, '2022-04-24 16:02:37', '2022-04-24 17:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `loan_charge_options`
--

CREATE TABLE `loan_charge_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_charge_options`
--

INSERT INTO `loan_charge_options` (`id`, `name`, `translated_name`, `active`) VALUES
(1, 'Flat', 'Flat', 1),
(2, 'Principal due on installment', 'Principal due on installment', 1),
(3, 'Principal + Interest due on installment', 'Principal + Interest due on installment', 1),
(4, 'Interest due on installment', 'Interest due on installment', 1),
(5, 'Total Outstanding Loan Principal', 'Total Outstanding Loan Principal', 1),
(6, 'Percentage of Original Loan Principal per Installment', 'Percentage of Original Loan Principal per Installment', 1),
(7, 'Original Loan Principal', 'Original Loan Principal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_charge_types`
--

CREATE TABLE `loan_charge_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_charge_types`
--

INSERT INTO `loan_charge_types` (`id`, `name`, `translated_name`, `active`) VALUES
(1, 'Disbursement', 'Disbursement', 1),
(2, 'Specified Due Date', 'Specified Due Date', 1),
(3, 'Installment Fees', 'Installment Fees', 1),
(4, 'Overdue Installment Fee', 'Overdue Installment Fee', 1),
(5, 'Disbursement - Paid With Repayment', 'Disbursement - Paid With Repayment', 1),
(6, 'Loan Rescheduling Fee', 'Loan Rescheduling Fee', 1),
(7, 'Overdue On Loan Maturity', 'Overdue On Loan Maturity', 1),
(8, 'Last installment fee', 'Last installment fee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_collateral`
--

CREATE TABLE `loan_collateral` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `loan_collateral_type_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` decimal(65,6) DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','repossessed','sold','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_collateral`
--

INSERT INTO `loan_collateral` (`id`, `created_by_id`, `loan_id`, `loan_collateral_type_id`, `description`, `value`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'jfjf', '1000.000000', 'wG0cgBgyEPriiDQ7cA0DNAJgkuBiH2PzkdEjnzH3.png', 'active', '2020-12-03 07:54:16', '2020-12-03 07:54:16'),
(2, 10, 40, 2, 'DHAMANA YA NYUMBA YA MKOPAJI, IMEWEKWA NA MKOPAJI MWENYEWE', '3000000.000000', 'PWObgoAI5rBfzqZtEWr8gPPEAYDvDSjFprqa6Cyu.jpeg', 'active', '2022-04-22 15:59:18', '2022-04-22 15:59:18'),
(3, 10, 41, 2, 'NYAMANA YA NYUMBA IMEWEKWA NA MKOPAJI', '3000000.000000', 'wNyxz0BUTovuk0MHaUKb3fWsSvniu0gSwgWrZSPz.jpeg', 'active', '2022-04-22 18:40:00', '2022-04-22 18:40:00'),
(4, 10, 42, 2, 'NYUMBA IMEWEKWA DHAMANA NA MKOPAJI', '3000000.000000', 'IX0K17JiRg8jZZymb8R6eUVT00trGyhBZqtASZgP.jpeg', 'active', '2022-04-22 18:50:08', '2022-04-22 18:50:08'),
(5, 10, 43, 2, 'DHAMANA YA NYUMBA IMEKWA NA MKOPAJI', '3000000.000000', 'pUM3OvjhP0yFmiFFo1J2xNcqoguYu3HPvhkVfhp2.jpeg', 'active', '2022-04-22 18:59:08', '2022-04-22 18:59:08'),
(6, 10, 44, 2, 'DHAMANA IMEWEKWA  NA MKOPAJI', '3000000.000000', '78LEa2x9Uzq5uqMUjUTgS70AYGS1TED6xGpbimX4.jpeg', 'active', '2022-04-22 19:11:09', '2022-04-22 19:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `loan_collateral_types`
--

CREATE TABLE `loan_collateral_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_collateral_types`
--

INSERT INTO `loan_collateral_types` (`id`, `name`) VALUES
(1, 'TV Set, HOME FUNITURES'),
(2, 'LAND -Title Deed'),
(3, 'Car, BaJaj, Bodaboda');

-- --------------------------------------------------------

--
-- Table structure for table `loan_credit_checks`
--

CREATE TABLE `loan_credit_checks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security_level` enum('block','pass','warning') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'warning',
  `rating_type` enum('boolean','score') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'boolean',
  `pass_min_amount` decimal(65,6) DEFAULT NULL,
  `pass_max_amount` decimal(65,6) DEFAULT NULL,
  `warn_min_amount` decimal(65,6) DEFAULT NULL,
  `warn_max_amount` decimal(65,6) DEFAULT NULL,
  `fail_min_amount` decimal(65,6) DEFAULT NULL,
  `fail_max_amount` decimal(65,6) DEFAULT NULL,
  `general_error_msg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_friendly_error_msg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `general_warning_msg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_friendly_warning_msg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `general_success_msg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_friendly_success_msg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_credit_checks`
--

INSERT INTO `loan_credit_checks` (`id`, `created_by_id`, `name`, `translated_name`, `security_level`, `rating_type`, `pass_min_amount`, `pass_max_amount`, `warn_min_amount`, `warn_max_amount`, `fail_min_amount`, `fail_max_amount`, `general_error_msg`, `user_friendly_error_msg`, `general_warning_msg`, `user_friendly_warning_msg`, `general_success_msg`, `user_friendly_success_msg`, `active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Client Written-Off Loans Check', 'Client Written-Off Loans Check', 'block', 'boolean', NULL, NULL, NULL, NULL, NULL, NULL, 'The client has one or more written-off loans', 'The client has one or more written-off loans', 'The client has one or more written-off loans', 'The client has one or more written-off loans', 'The client has one or more written-off loans', 'The client has one or more written-off loans', 0, NULL, NULL),
(2, NULL, 'Same Product Outstanding', 'Same Product Outstanding', 'block', 'boolean', NULL, NULL, NULL, NULL, NULL, NULL, 'The client has an active loan for the same product', 'The client has an active loan for the same product', 'The client has an active loan for the same product', 'The client has an active loan for the same product', 'The client has an active loan for the same product', 'The client has an active loan for the same product', 0, NULL, NULL),
(3, NULL, 'Client Arrears', 'Client Arrears', 'block', 'boolean', NULL, NULL, NULL, NULL, NULL, NULL, 'Client has arrears on existing loans', 'Client has arrears on existing loans', 'Client has arrears on existing loans', 'Client has arrears on existing loans', 'Client has arrears on existing loans', 'Client has arrears on existing loans', 0, NULL, NULL),
(4, NULL, 'Outstanding Loan Balance', 'Outstanding Loan Balance', 'block', 'boolean', NULL, NULL, NULL, NULL, NULL, NULL, 'Client has outstanding balance on existing loans', 'Client has outstanding balance on existing loans', 'Client has outstanding balance on existing loans', 'Client has outstanding balance on existing loans', 'Client has outstanding balance on existing loans', 'Client has outstanding balance on existing loans', 0, NULL, NULL),
(5, NULL, 'Rejected and withdrawn loans', 'Rejected and withdrawn loans', 'block', 'boolean', NULL, NULL, NULL, NULL, NULL, NULL, 'This client has had one or more rejected or withdrawn loans', 'This client has had one or more rejected or withdrawn loans', 'This client has had one or more rejected or withdrawn loans', 'This client has had one or more rejected or withdrawn loans', 'This client has had one or more rejected or withdrawn loans', 'This client has had one or more rejected or withdrawn loans', 0, NULL, NULL),
(6, NULL, 'Total collateral items value', 'Total collateral items value', 'block', 'boolean', NULL, NULL, NULL, NULL, NULL, NULL, 'The total value of collateral items for this loan is less than the principal loanamount', 'The total value of collateral items for this loan is less than the principal loanamount', 'The total value of collateral items for this loan is less than the principal loanamount', 'The total value of collateral items for this loan is less than the principal loanamount', 'The total value of collateral items for this loan is less than the principal loanamount', 'The total value of collateral items for this loan is less than the principal loanamount', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_disbursement_channels`
--

CREATE TABLE `loan_disbursement_channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_system` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_files`
--

CREATE TABLE `loan_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_files`
--

INSERT INTO `loan_files` (`id`, `created_by_id`, `loan_id`, `name`, `description`, `size`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Dit', 'ggf gg', NULL, '0JEZF3voy3DGTkF7G5nhSbYg1Zy41oKxaletsJVM.pdf', '2020-12-03 07:10:42', '2020-12-03 07:31:52'),
(2, 1, 2, 'nd', 'ttbttt', NULL, '3WAuW2Bnqy1tzp5lOPB8s9Qrt0dvvV0bjm1E65Po.pdf', '2020-12-03 07:11:32', '2020-12-03 07:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `loan_guarantors`
--

CREATE TABLE `loan_guarantors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_client` tinyint(4) NOT NULL DEFAULT 0,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','other','unspecified') COLLATE utf8mb4_unicode_ci DEFAULT 'unspecified',
  `status` enum('pending','active','inactive','deceased','unspecified','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `marital_status` enum('married','single','divorced','widowed','unspecified','other') COLLATE utf8mb4_unicode_ci DEFAULT 'unspecified',
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profession_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_relationship_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `joined_date` date DEFAULT NULL,
  `guaranteed_amount` decimal(65,6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_guarantors`
--

INSERT INTO `loan_guarantors` (`id`, `created_by_id`, `branch_id`, `loan_id`, `is_client`, `client_id`, `first_name`, `middle_name`, `last_name`, `gender`, `status`, `marital_status`, `country_id`, `title_id`, `profession_id`, `client_relationship_id`, `mobile`, `phone`, `email`, `dob`, `address`, `city`, `state`, `zip`, `employer`, `photo`, `notes`, `created_date`, `joined_date`, `guaranteed_amount`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 2, 1, 1, 'Tererai', NULL, 'Mugova', 'male', 'pending', NULL, 246, NULL, NULL, NULL, '+263774175438', NULL, 'tjmugova@localhost.com', '2019-03-29', '933 13th street\r\nGlenview 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '400.000000', '2020-12-03 09:06:32', '2020-12-03 09:06:32'),
(2, 1, NULL, 2, 0, NULL, 'Tererai', NULL, 'Mugova', 'male', 'pending', 'single', 1, 1, 1, 1, '+263774175438', NULL, 'tjmugova@webstudio.co.zw', '2020-12-01', '933 13th street\r\nGlenview 1', NULL, NULL, NULL, NULL, NULL, 'f', NULL, NULL, '400.000000', '2020-12-03 09:13:46', '2020-12-03 09:24:04'),
(3, 10, NULL, 40, 1, 13, 'GAUDIOZA FRANCISCO', NULL, 'NCHELU', 'female', 'pending', 'single', 216, 2, 1, NULL, '0762993089', NULL, 'nunnahoppa@gmail.com', '1972-04-10', 'NANKANGA-RUKWA', NULL, NULL, NULL, NULL, NULL, 'GROUP MEMBER', NULL, NULL, '150000.000000', '2022-04-22 16:00:41', '2022-04-22 16:00:41'),
(4, 10, NULL, 41, 1, 28, 'IBRAHIM ERNEST', NULL, 'SIMFUKWE', 'male', 'pending', 'single', 216, 1, 1, NULL, '0757711221', NULL, 'nunnahoppa@gmail.com', '1982-10-07', 'BONDENI RUKWA', NULL, NULL, NULL, NULL, NULL, 'GROUP CHAIRMAN', NULL, NULL, '200000.000000', '2022-04-22 18:40:37', '2022-04-22 18:40:37'),
(5, 10, NULL, 42, 1, 28, 'IBRAHIM ERNEST', NULL, 'SIMFUKWE', 'male', 'pending', 'single', 216, 1, 1, NULL, '0757711221', NULL, 'nunnahoppa@gmail.com', '1982-10-07', 'BONDENI RUKWA', NULL, NULL, NULL, NULL, NULL, 'GROUP CHAIRMAN', NULL, NULL, '200000.000000', '2022-04-22 18:51:05', '2022-04-22 18:51:05'),
(6, 10, NULL, 43, 1, 29, 'FROLIAN JOSEPH', NULL, 'KAPUFI', 'male', 'pending', 'single', 216, 1, 1, NULL, '0744807794', NULL, 'nunnahoppa@gmail.com', '1996-02-25', 'BONDENI - RUKWA', NULL, NULL, NULL, NULL, NULL, 'UMOJA GROUP VICE', NULL, NULL, '150000.000000', '2022-04-22 18:59:48', '2022-04-22 18:59:48'),
(7, 10, NULL, 44, 1, 28, 'IBRAHIM ERNEST', NULL, 'SIMFUKWE', 'male', 'pending', 'single', 216, 1, 1, NULL, '0757711221', NULL, 'nunnahoppa@gmail.com', '1982-10-07', 'BONDENI RUKWA', NULL, NULL, NULL, NULL, NULL, 'GROUP CHAIRMAN', NULL, NULL, '200000.000000', '2022-04-22 19:12:02', '2022-04-22 19:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `loan_history`
--

CREATE TABLE `loan_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_history`
--

INSERT INTO `loan_history` (`id`, `loan_id`, `created_by_id`, `action`, `user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Loan Created', 'Admin Admin', '2020-09-22 14:06:02', '2020-09-22 14:06:02'),
(2, 1, 1, 'Loan Approved', 'Admin Admin', '2020-09-22 14:06:08', '2020-09-22 14:06:08'),
(3, 1, 1, 'Loan Disbursed', 'Admin Admin', '2020-09-22 14:06:16', '2020-09-22 14:06:16'),
(4, 2, 1, 'Loan Created', 'Admin Admin', '2020-12-02 12:19:06', '2020-12-02 12:19:06'),
(5, 2, 1, 'Loan Approved', 'Admin Admin', '2020-12-02 16:07:50', '2020-12-02 16:07:50'),
(6, 2, 1, 'Loan Disbursed', 'Admin Admin', '2020-12-02 16:11:09', '2020-12-02 16:11:09'),
(7, 3, 1, 'Loan Created', 'Admin Admin', '2020-12-10 08:55:21', '2020-12-10 08:55:21'),
(8, 3, 1, 'Loan Approved', 'Admin Admin', '2020-12-10 08:55:35', '2020-12-10 08:55:35'),
(9, 3, 1, 'Loan Disbursed', 'Admin Admin', '2020-12-10 08:56:07', '2020-12-10 08:56:07'),
(10, 3, 1, 'Loan Undisbursed', 'Admin Admin', '2020-12-10 08:56:38', '2020-12-10 08:56:38'),
(11, 3, 1, 'Loan Disbursed', 'Admin Admin', '2020-12-10 08:56:55', '2020-12-10 08:56:55'),
(12, 3, 1, 'Loan Undisbursed', 'Admin Admin', '2020-12-10 09:11:54', '2020-12-10 09:11:54'),
(13, 3, 1, 'Loan Disbursed', 'Admin Admin', '2020-12-10 09:12:10', '2020-12-10 09:12:10'),
(14, 1, 1, 'Loan Undisbursed', 'Admin Admin', '2020-12-21 08:55:51', '2020-12-21 08:55:51'),
(15, 1, 1, 'Loan Disbursed', 'Admin Admin', '2020-12-21 08:55:59', '2020-12-21 08:55:59'),
(16, 4, 10, 'Loan Created', 'JESCA BANZI', '2022-04-18 17:04:06', '2022-04-18 17:04:06'),
(17, 5, 10, 'Loan Created', 'JESCA BANZI', '2022-04-18 17:07:23', '2022-04-18 17:07:23'),
(18, 6, 10, 'Loan Created', 'JESCA BANZI', '2022-04-18 17:11:00', '2022-04-18 17:11:00'),
(19, 7, 10, 'Loan Created', 'JESCA BANZI', '2022-04-18 17:13:02', '2022-04-18 17:13:02'),
(20, 8, 10, 'Loan Created', 'JESCA BANZI', '2022-04-18 17:16:27', '2022-04-18 17:16:27'),
(21, 4, 1, 'Loan Approved', 'Admin Admin', '2022-04-18 17:23:30', '2022-04-18 17:23:30'),
(22, 4, 1, 'Loan Disbursed', 'Admin Admin', '2022-04-18 17:25:42', '2022-04-18 17:25:42'),
(23, 9, 1, 'Loan Created', 'Admin Admin', '2022-04-18 19:13:51', '2022-04-18 19:13:51'),
(24, 9, 1, 'Loan Approved', 'Admin Admin', '2022-04-18 19:14:27', '2022-04-18 19:14:27'),
(25, 9, 1, 'Loan Disbursed', 'Admin Admin', '2022-04-18 19:15:50', '2022-04-18 19:15:50'),
(26, 9, 1, 'Loan Undisbursed', 'Admin Admin', '2022-04-18 19:16:55', '2022-04-18 19:16:55'),
(27, 9, 1, 'Loan Unapproved', 'Admin Admin', '2022-04-18 19:17:44', '2022-04-18 19:17:44'),
(28, 10, 1, 'Loan Created', 'Admin Admin', '2022-04-18 19:21:25', '2022-04-18 19:21:25'),
(29, 10, 1, 'Loan Rejected', 'Admin Admin', '2022-04-18 19:22:09', '2022-04-18 19:22:09'),
(30, 10, 1, 'Loan Unrejected', 'Admin Admin', '2022-04-18 19:22:19', '2022-04-18 19:22:19'),
(31, 10, 1, 'Loan Approved', 'Admin Admin', '2022-04-18 19:22:45', '2022-04-18 19:22:45'),
(32, 10, 1, 'Loan Disbursed', 'Admin Admin', '2022-04-18 19:23:35', '2022-04-18 19:23:35'),
(33, 11, 1, 'Loan Created', 'Admin Admin', '2022-04-18 19:27:21', '2022-04-18 19:27:21'),
(34, 11, 1, 'Loan Approved', 'Admin Admin', '2022-04-18 19:28:42', '2022-04-18 19:28:42'),
(35, 11, 1, 'Loan Disbursed', 'Admin Admin', '2022-04-18 19:28:57', '2022-04-18 19:28:57'),
(36, 12, 1, 'Loan Created', 'Admin Admin', '2022-04-18 19:34:32', '2022-04-18 19:34:32'),
(37, 12, 1, 'Loan Approved', 'Admin Admin', '2022-04-18 19:34:53', '2022-04-18 19:34:53'),
(38, 12, 1, 'Loan Disbursed', 'Admin Admin', '2022-04-18 19:35:47', '2022-04-18 19:35:47'),
(39, 13, 10, 'Loan Created', 'JESCA BANZI', '2022-04-18 20:37:10', '2022-04-18 20:37:10'),
(40, 13, 1, 'Loan Approved', 'Admin Admin', '2022-04-18 20:42:29', '2022-04-18 20:42:29'),
(41, 13, 1, 'Loan Disbursed', 'Admin Admin', '2022-04-18 20:42:57', '2022-04-18 20:42:57'),
(42, 14, 10, 'Loan Created', 'JESCA BANZI', '2022-04-18 20:45:30', '2022-04-18 20:45:30'),
(43, 14, 1, 'Loan Approved', 'Admin Admin', '2022-04-18 20:48:51', '2022-04-18 20:48:51'),
(44, 14, 1, 'Loan Disbursed', 'Admin Admin', '2022-04-18 20:49:07', '2022-04-18 20:49:07'),
(45, 15, 10, 'Loan Created', 'JESCA BANZI', '2022-04-18 20:54:10', '2022-04-18 20:54:10'),
(46, 15, 1, 'Loan Approved', 'Admin Admin', '2022-04-18 20:58:45', '2022-04-18 20:58:45'),
(47, 15, 1, 'Loan Disbursed', 'Admin Admin', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(48, 16, 10, 'Loan Created', 'JESCA BANZI', '2022-04-18 21:07:03', '2022-04-18 21:07:03'),
(49, 16, 1, 'Loan Approved', 'Admin Admin', '2022-04-18 21:13:23', '2022-04-18 21:13:23'),
(50, 16, 1, 'Loan Disbursed', 'Admin Admin', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(51, 17, 10, 'Loan Created', 'JESCA BANZI', '2022-04-18 21:24:29', '2022-04-18 21:24:29'),
(52, 17, 1, 'Loan Approved', 'Admin Admin', '2022-04-18 21:26:15', '2022-04-18 21:26:15'),
(53, 17, 1, 'Loan Disbursed', 'Admin Admin', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(54, 18, 10, 'Loan Created', 'JESCA BANZI', '2022-04-19 18:44:10', '2022-04-19 18:44:10'),
(55, 18, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-19 18:58:16', '2022-04-19 18:58:16'),
(56, 18, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(57, 19, 10, 'Loan Created', 'JESCA BANZI', '2022-04-19 19:09:34', '2022-04-19 19:09:34'),
(58, 19, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-19 19:16:52', '2022-04-19 19:16:52'),
(59, 19, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(60, 20, 10, 'Loan Created', 'JESCA BANZI', '2022-04-19 19:26:17', '2022-04-19 19:26:17'),
(61, 20, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-19 19:27:00', '2022-04-19 19:27:00'),
(62, 20, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-19 19:27:16', '2022-04-19 19:27:16'),
(63, 20, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-19 19:40:08', '2022-04-19 19:40:08'),
(64, 20, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-19 19:40:24', '2022-04-19 19:40:24'),
(65, 20, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-19 19:43:33', '2022-04-19 19:43:33'),
(66, 20, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-19 19:43:50', '2022-04-19 19:43:50'),
(67, 20, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-19 20:00:04', '2022-04-19 20:00:04'),
(68, 20, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-19 20:00:31', '2022-04-19 20:00:31'),
(69, 20, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-19 20:03:51', '2022-04-19 20:03:51'),
(70, 20, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-19 20:04:00', '2022-04-19 20:04:00'),
(71, 20, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-19 20:04:27', '2022-04-19 20:04:27'),
(72, 20, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-19 20:05:27', '2022-04-19 20:05:27'),
(73, 20, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-19 20:07:25', '2022-04-19 20:07:25'),
(74, 21, 10, 'Loan Created', 'JESCA BANZI', '2022-04-19 20:15:28', '2022-04-19 20:15:28'),
(75, 21, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-19 20:17:10', '2022-04-19 20:17:10'),
(76, 21, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-19 20:17:37', '2022-04-19 20:17:37'),
(77, 21, 8, 'Loan Written off', 'SHABA KILASI', '2022-04-19 20:19:32', '2022-04-19 20:19:32'),
(78, 22, 10, 'Loan Created', 'JESCA BANZI', '2022-04-19 20:42:43', '2022-04-19 20:42:43'),
(79, 23, 10, 'Loan Created', 'JESCA BANZI', '2022-04-19 20:42:48', '2022-04-19 20:42:48'),
(80, 22, 1, 'Loan Approved', 'Admin Admin', '2022-04-19 20:43:56', '2022-04-19 20:43:56'),
(81, 22, 1, 'Loan Disbursed', 'Admin Admin', '2022-04-19 20:44:11', '2022-04-19 20:44:11'),
(82, 24, 1, 'Loan Created', 'Admin Admin', '2022-04-19 21:37:56', '2022-04-19 21:37:56'),
(83, 24, 1, 'Loan Approved', 'Admin Admin', '2022-04-19 21:38:48', '2022-04-19 21:38:48'),
(84, 24, 1, 'Loan Disbursed', 'Admin Admin', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(85, 25, 8, 'Loan Created', 'SHABA KILASI', '2022-04-20 14:15:43', '2022-04-20 14:15:43'),
(86, 25, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 14:17:25', '2022-04-20 14:17:25'),
(87, 25, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 14:17:44', '2022-04-20 14:17:44'),
(88, 25, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-20 14:19:53', '2022-04-20 14:19:53'),
(89, 25, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-20 14:20:03', '2022-04-20 14:20:03'),
(90, 21, 8, 'Loan Unwritten off', 'SHABA KILASI', '2022-04-20 14:24:41', '2022-04-20 14:24:41'),
(91, 25, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 14:32:54', '2022-04-20 14:32:54'),
(92, 25, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 14:33:08', '2022-04-20 14:33:08'),
(93, 25, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-20 19:19:41', '2022-04-20 19:19:41'),
(94, 26, 8, 'Loan Created', 'SHABA KILASI', '2022-04-20 19:29:12', '2022-04-20 19:29:12'),
(95, 26, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 19:29:24', '2022-04-20 19:29:24'),
(96, 26, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 19:29:43', '2022-04-20 19:29:43'),
(97, 26, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-20 19:31:36', '2022-04-20 19:31:36'),
(98, 26, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-20 19:31:49', '2022-04-20 19:31:49'),
(99, 26, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 19:32:27', '2022-04-20 19:32:27'),
(100, 26, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 19:32:43', '2022-04-20 19:32:43'),
(101, 26, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-20 19:33:55', '2022-04-20 19:33:55'),
(102, 26, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-20 19:34:06', '2022-04-20 19:34:06'),
(103, 26, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 19:37:07', '2022-04-20 19:37:07'),
(104, 26, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 19:37:22', '2022-04-20 19:37:22'),
(105, 26, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-20 19:38:35', '2022-04-20 19:38:35'),
(106, 26, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-20 19:38:43', '2022-04-20 19:38:43'),
(107, 26, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 19:50:37', '2022-04-20 19:50:37'),
(108, 26, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(109, 27, 8, 'Loan Created', 'SHABA KILASI', '2022-04-20 20:05:26', '2022-04-20 20:05:26'),
(110, 27, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 20:05:45', '2022-04-20 20:05:45'),
(111, 27, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-20 20:06:01', '2022-04-20 20:06:01'),
(112, 27, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 20:06:58', '2022-04-20 20:06:58'),
(113, 27, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(114, 28, 8, 'Loan Created', 'SHABA KILASI', '2022-04-20 20:21:55', '2022-04-20 20:21:55'),
(115, 28, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 20:22:54', '2022-04-20 20:22:54'),
(116, 28, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(117, 29, 8, 'Loan Created', 'SHABA KILASI', '2022-04-20 20:35:19', '2022-04-20 20:35:19'),
(118, 29, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 20:35:33', '2022-04-20 20:35:33'),
(119, 29, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 20:35:50', '2022-04-20 20:35:50'),
(120, 29, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-20 20:36:24', '2022-04-20 20:36:24'),
(121, 29, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-20 20:36:33', '2022-04-20 20:36:33'),
(122, 29, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 20:37:26', '2022-04-20 20:37:26'),
(123, 29, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 20:37:40', '2022-04-20 20:37:40'),
(124, 29, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-20 20:41:19', '2022-04-20 20:41:19'),
(125, 29, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-20 21:00:24', '2022-04-20 21:00:24'),
(126, 30, 8, 'Loan Created', 'SHABA KILASI', '2022-04-20 21:14:08', '2022-04-20 21:14:08'),
(127, 30, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 21:14:41', '2022-04-20 21:14:41'),
(128, 30, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(129, 29, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 21:18:03', '2022-04-20 21:18:03'),
(130, 29, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(131, 31, 8, 'Loan Created', 'SHABA KILASI', '2022-04-20 21:21:03', '2022-04-20 21:21:03'),
(132, 31, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-20 21:21:31', '2022-04-20 21:21:31'),
(133, 31, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(134, 32, 8, 'Loan Created', 'SHABA KILASI', '2022-04-21 11:39:19', '2022-04-21 11:39:19'),
(135, 32, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-21 11:39:33', '2022-04-21 11:39:33'),
(136, 32, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-21 11:40:03', '2022-04-21 11:40:03'),
(137, 32, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-21 11:43:29', '2022-04-21 11:43:29'),
(138, 32, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-21 11:43:37', '2022-04-21 11:43:37'),
(139, 32, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-21 11:47:03', '2022-04-21 11:47:03'),
(140, 32, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-21 11:47:34', '2022-04-21 11:47:34'),
(141, 32, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-21 11:49:29', '2022-04-21 11:49:29'),
(142, 32, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-21 11:49:36', '2022-04-21 11:49:36'),
(143, 32, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-21 11:49:52', '2022-04-21 11:49:52'),
(144, 32, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(145, 33, 8, 'Loan Created', 'SHABA KILASI', '2022-04-21 11:51:46', '2022-04-21 11:51:46'),
(146, 33, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-21 11:51:59', '2022-04-21 11:51:59'),
(147, 33, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-21 11:52:13', '2022-04-21 11:52:13'),
(148, 34, 8, 'Loan Created', 'SHABA KILASI', '2022-04-21 11:56:33', '2022-04-21 11:56:33'),
(149, 34, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-21 11:56:45', '2022-04-21 11:56:45'),
(150, 34, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-21 11:57:00', '2022-04-21 11:57:00'),
(151, 35, 8, 'Loan Created', 'SHABA KILASI', '2022-04-21 13:09:29', '2022-04-21 13:09:29'),
(152, 35, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-21 13:09:48', '2022-04-21 13:09:48'),
(153, 35, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-21 13:10:08', '2022-04-21 13:10:08'),
(154, 35, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-21 13:10:37', '2022-04-21 13:10:37'),
(155, 35, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-21 13:10:46', '2022-04-21 13:10:46'),
(156, 35, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-21 13:13:20', '2022-04-21 13:13:20'),
(157, 35, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-21 13:13:30', '2022-04-21 13:13:30'),
(158, 35, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-21 13:14:14', '2022-04-21 13:14:14'),
(159, 35, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-21 13:14:25', '2022-04-21 13:14:25'),
(160, 35, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-21 13:16:36', '2022-04-21 13:16:36'),
(161, 35, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-21 13:16:51', '2022-04-21 13:16:51'),
(162, 35, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-21 13:19:11', '2022-04-21 13:19:11'),
(163, 35, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-21 13:19:21', '2022-04-21 13:19:21'),
(164, 35, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-21 13:20:01', '2022-04-21 13:20:01'),
(165, 35, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-21 13:20:13', '2022-04-21 13:20:13'),
(166, 35, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-21 13:20:50', '2022-04-21 13:20:50'),
(167, 35, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-21 13:20:59', '2022-04-21 13:20:59'),
(168, 35, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-21 13:22:56', '2022-04-21 13:22:56'),
(169, 35, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-21 13:23:09', '2022-04-21 13:23:09'),
(170, 35, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-21 13:24:53', '2022-04-21 13:24:53'),
(171, 35, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-21 13:25:01', '2022-04-21 13:25:01'),
(172, 35, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-21 13:25:32', '2022-04-21 13:25:32'),
(173, 35, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-21 13:25:45', '2022-04-21 13:25:45'),
(174, 36, 10, 'Loan Created', 'JESCA BANZI', '2022-04-22 14:05:27', '2022-04-22 14:05:27'),
(175, 37, 10, 'Loan Created', 'JESCA BANZI', '2022-04-22 14:07:10', '2022-04-22 14:07:10'),
(176, 38, 10, 'Loan Created', 'JESCA BANZI', '2022-04-22 15:06:18', '2022-04-22 15:06:18'),
(177, 39, 10, 'Loan Created', 'JESCA BANZI', '2022-04-22 15:18:24', '2022-04-22 15:18:24'),
(178, 40, 10, 'Loan Created', 'JESCA BANZI', '2022-04-22 15:53:08', '2022-04-22 15:53:08'),
(179, 40, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-22 16:08:56', '2022-04-22 16:08:56'),
(180, 40, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(181, 41, 10, 'Loan Created', 'JESCA BANZI', '2022-04-22 18:38:28', '2022-04-22 18:38:28'),
(182, 41, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-22 18:43:41', '2022-04-22 18:43:41'),
(183, 41, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(184, 42, 10, 'Loan Created', 'JESCA BANZI', '2022-04-22 18:48:53', '2022-04-22 18:48:53'),
(185, 42, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-22 18:51:40', '2022-04-22 18:51:40'),
(186, 42, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-22 18:52:03', '2022-04-22 18:52:03'),
(187, 42, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-22 18:52:49', '2022-04-22 18:52:49'),
(188, 42, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-22 18:52:59', '2022-04-22 18:52:59'),
(189, 43, 10, 'Loan Created', 'JESCA BANZI', '2022-04-22 18:57:41', '2022-04-22 18:57:41'),
(190, 43, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-22 19:03:24', '2022-04-22 19:03:24'),
(191, 43, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-22 19:04:04', '2022-04-22 19:04:04'),
(192, 43, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-22 19:04:31', '2022-04-22 19:04:31'),
(193, 42, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-22 19:08:19', '2022-04-22 19:08:19'),
(194, 44, 10, 'Loan Created', 'JESCA BANZI', '2022-04-22 19:09:31', '2022-04-22 19:09:31'),
(195, 42, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-22 19:09:55', '2022-04-22 19:09:55'),
(196, 42, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-22 19:11:09', '2022-04-22 19:11:09'),
(197, 42, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-22 19:11:37', '2022-04-22 19:11:37'),
(198, 42, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-22 19:12:01', '2022-04-22 19:12:01'),
(199, 45, 10, 'Loan Created', 'JESCA BANZI', '2022-04-22 19:14:33', '2022-04-22 19:14:33'),
(200, 45, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-22 19:15:19', '2022-04-22 19:15:19'),
(201, 45, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(202, 44, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-22 19:19:29', '2022-04-22 19:19:29'),
(203, 44, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-22 19:19:36', '2022-04-22 19:19:36'),
(204, 44, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(205, 3, 1, 'Loan Undisbursed', 'Admin Admin', '2022-04-22 20:07:14', '2022-04-22 20:07:14'),
(206, 3, 1, 'Loan Unapproved', 'Admin Admin', '2022-04-22 20:07:24', '2022-04-22 20:07:24'),
(207, 10, 1, 'Loan Undisbursed', 'Admin Admin', '2022-04-22 20:09:04', '2022-04-22 20:09:04'),
(208, 10, 1, 'Loan Unapproved', 'Admin Admin', '2022-04-22 20:09:14', '2022-04-22 20:09:14'),
(209, 11, 1, 'Loan Undisbursed', 'Admin Admin', '2022-04-22 20:10:20', '2022-04-22 20:10:20'),
(210, 11, 1, 'Loan Unapproved', 'Admin Admin', '2022-04-22 20:10:47', '2022-04-22 20:10:47'),
(211, 35, 1, 'Loan Undisbursed', 'Admin Admin', '2022-04-22 20:15:09', '2022-04-22 20:15:09'),
(212, 35, 1, 'Loan Unapproved', 'Admin Admin', '2022-04-22 20:15:26', '2022-04-22 20:15:26'),
(213, 34, 1, 'Loan Undisbursed', 'Admin Admin', '2022-04-22 20:17:14', '2022-04-22 20:17:14'),
(214, 34, 1, 'Loan Unapproved', 'Admin Admin', '2022-04-22 20:17:26', '2022-04-22 20:17:26'),
(215, 34, 1, 'Loan Unapproved', 'Admin Admin', '2022-04-22 20:17:36', '2022-04-22 20:17:36'),
(216, 33, 12, 'Loan Undisbursed', 'PATRIC JESCAR', '2022-04-22 21:44:10', '2022-04-22 21:44:10'),
(217, 33, 12, 'Loan Unapproved', 'PATRIC JESCAR', '2022-04-22 21:44:19', '2022-04-22 21:44:19'),
(218, 12, 12, 'Loan Undisbursed', 'PATRIC JESCAR', '2022-04-22 21:45:14', '2022-04-22 21:45:14'),
(219, 12, 12, 'Loan Unapproved', 'PATRIC JESCAR', '2022-04-22 21:45:24', '2022-04-22 21:45:24'),
(220, 13, 12, 'Loan Undisbursed', 'PATRIC JESCAR', '2022-04-22 21:47:56', '2022-04-22 21:47:56'),
(221, 13, 12, 'Loan Unapproved', 'PATRIC JESCAR', '2022-04-22 21:48:08', '2022-04-22 21:48:08'),
(222, 14, 12, 'Loan Undisbursed', 'PATRIC JESCAR', '2022-04-22 21:49:57', '2022-04-22 21:49:57'),
(223, 14, 12, 'Loan Unapproved', 'PATRIC JESCAR', '2022-04-22 21:50:06', '2022-04-22 21:50:06'),
(224, 46, 8, 'Loan Created', 'SHABA KILASI', '2022-04-24 16:22:11', '2022-04-24 16:22:11'),
(225, 46, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-24 16:22:39', '2022-04-24 16:22:39'),
(226, 46, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-24 16:22:56', '2022-04-24 16:22:56'),
(227, 46, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-24 16:32:49', '2022-04-24 16:32:49'),
(228, 46, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-24 16:33:01', '2022-04-24 16:33:01'),
(229, 46, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-24 16:37:34', '2022-04-24 16:37:34'),
(230, 46, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-24 16:37:48', '2022-04-24 16:37:48'),
(231, 46, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-24 16:38:51', '2022-04-24 16:38:51'),
(232, 46, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-24 16:39:02', '2022-04-24 16:39:02'),
(233, 46, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-24 16:54:24', '2022-04-24 16:54:24'),
(234, 46, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-24 16:55:02', '2022-04-24 16:55:02'),
(235, 46, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-24 16:57:19', '2022-04-24 16:57:19'),
(236, 46, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-24 16:57:30', '2022-04-24 16:57:30'),
(237, 46, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-24 16:58:08', '2022-04-24 16:58:08'),
(238, 46, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-24 16:58:27', '2022-04-24 16:58:27'),
(239, 46, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-24 16:59:18', '2022-04-24 16:59:18'),
(240, 46, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-24 16:59:28', '2022-04-24 16:59:28'),
(241, 46, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-24 17:01:22', '2022-04-24 17:01:22'),
(242, 46, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-24 17:01:35', '2022-04-24 17:01:35'),
(243, 46, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-24 17:03:43', '2022-04-24 17:03:43'),
(244, 46, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-24 17:03:53', '2022-04-24 17:03:53'),
(245, 46, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-24 17:15:20', '2022-04-24 17:15:20'),
(246, 46, 8, 'Loan Approved', 'SHABA KILASI', '2022-04-24 17:16:15', '2022-04-24 17:16:15'),
(247, 46, 8, 'Loan Disbursed', 'SHABA KILASI', '2022-04-24 17:16:33', '2022-04-24 17:16:33'),
(248, 46, 8, 'Loan Undisbursed', 'SHABA KILASI', '2022-04-24 17:17:48', '2022-04-24 17:17:48'),
(249, 46, 8, 'Loan Unapproved', 'SHABA KILASI', '2022-04-24 17:18:21', '2022-04-24 17:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `loan_linked_charges`
--

CREATE TABLE `loan_linked_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `loan_charge_id` bigint(20) UNSIGNED NOT NULL,
  `loan_charge_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_charge_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(65,6) NOT NULL,
  `calculated_amount` decimal(65,6) DEFAULT NULL,
  `amount_paid_derived` decimal(65,6) DEFAULT NULL,
  `amount_waived_derived` decimal(65,6) DEFAULT NULL,
  `amount_written_off_derived` decimal(65,6) DEFAULT NULL,
  `amount_outstanding_derived` decimal(65,6) DEFAULT NULL,
  `is_penalty` tinyint(4) NOT NULL DEFAULT 0,
  `waived` tinyint(4) NOT NULL DEFAULT 0,
  `is_paid` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_linked_charges`
--

INSERT INTO `loan_linked_charges` (`id`, `loan_id`, `loan_charge_id`, `loan_charge_type_id`, `loan_charge_option_id`, `loan_transaction_id`, `name`, `amount`, `calculated_amount`, `amount_paid_derived`, `amount_waived_derived`, `amount_written_off_derived`, `amount_outstanding_derived`, `is_penalty`, `waived`, `is_paid`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 3, 2, NULL, 'LOANFEE', '25.000000', '37188.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-18 19:27:21', '2022-04-22 20:10:20'),
(5, 20, 2, 3, 3, NULL, 'LOANFEE', '25.000000', '26176.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-19 20:02:59', '2022-04-19 20:07:25'),
(6, 21, 2, 3, 3, 50, 'LOANFEE', '25.000000', '0.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-19 20:15:28', '2022-04-19 20:17:37'),
(7, 22, 2, 3, 3, 54, 'LOANFEE', '50000.000000', '0.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-19 20:42:43', '2022-04-19 20:44:11'),
(8, 23, 2, 3, 3, NULL, 'LOANFEE', '50000.000000', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-19 20:42:48', '2022-04-19 20:42:48'),
(9, 24, 2, 3, 3, 57, 'LOANFEE', '50000.000000', '199750000.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-19 21:37:56', '2022-04-19 21:39:06'),
(11, 25, 2, 3, 3, NULL, 'LOANFEE', '50000.000000', '199750000.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-20 14:32:40', '2022-04-20 19:19:41'),
(13, 27, 3, 3, 3, 75, 'Ptrial fees', '25.000000', '44625.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-20 20:06:46', '2022-04-20 20:07:13'),
(15, 28, 3, 3, 3, 78, 'Ptrial fees', '85.000000', '151725.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-20 20:22:35', '2022-04-20 20:23:19'),
(17, 29, 3, 3, 3, 90, 'Ptrial fees', '160.000000', '261120.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-20 20:37:14', '2022-04-20 21:18:23'),
(18, 30, 3, 3, 3, 87, 'Ptrial fees', '162.000000', '264384.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-20 21:14:08', '2022-04-20 21:14:55'),
(19, 31, 3, 3, 3, 93, 'Ptrial fees', '164.000000', '356864.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-20 21:21:03', '2022-04-20 21:21:42'),
(20, 32, 2, 3, 3, 102, 'LOTFFE', '1124.000000', '1834368.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-21 11:39:19', '2022-04-21 11:50:05'),
(21, 33, 2, 3, 3, NULL, 'LOeTFFE', '15.000000', '24480.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-21 11:51:46', '2022-04-22 21:44:10'),
(22, 34, 2, 3, 3, NULL, 'LOeTFFE', '93.000000', '151776.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-21 11:56:33', '2022-04-22 20:17:14'),
(28, 35, 2, 3, 3, NULL, 'LOeTFFE', '104.000000', '169728.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-21 13:25:21', '2022-04-22 20:15:09'),
(29, 36, 3, 3, 3, NULL, 'NAIFeF', '164.000000', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-22 14:05:27', '2022-04-22 14:05:27'),
(30, 39, 3, 3, 3, NULL, 'NAIFeF', '164.000000', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-22 15:18:24', '2022-04-22 15:18:24'),
(32, 40, 3, 3, 3, 129, 'NAIFeF', '164.000000', '356864.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-22 16:05:02', '2022-04-22 16:12:28'),
(33, 41, 3, 3, 3, 132, 'NAIFeF', '164.000000', '267648.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-22 18:38:28', '2022-04-22 18:43:57'),
(37, 43, 3, 3, 3, 137, 'NAIFeF', '164.000000', '356864.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-22 19:03:17', '2022-04-22 19:04:32'),
(39, 45, 3, 3, 3, 142, 'NAIFeF', '164.000000', '267648.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-22 19:14:33', '2022-04-22 19:15:44'),
(40, 44, 3, 3, 3, 145, 'NAIFeF', '164.000000', '267648.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-22 19:19:01', '2022-04-22 19:19:56'),
(45, 46, 5, 3, 3, NULL, 'PLCharge', '34.000000', '35357.000000', NULL, NULL, NULL, NULL, 1, 0, 0, '2022-04-24 17:01:09', '2022-04-24 17:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `loan_linked_credit_checks`
--

CREATE TABLE `loan_linked_credit_checks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `loan_credit_check_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_notes`
--

CREATE TABLE `loan_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_notes`
--

INSERT INTO `loan_notes` (`id`, `created_by_id`, `loan_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, 'Client not in good books', '2020-12-03 08:04:09', '2020-12-03 08:04:09'),
(2, 1, 2, NULL, 'fmf fjf', '2020-12-03 08:14:23', '2020-12-03 08:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `loan_officer_history`
--

CREATE TABLE `loan_officer_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `loan_officer_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_officer_history`
--

INSERT INTO `loan_officer_history` (`id`, `loan_id`, `created_by_id`, `loan_officer_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2020-09-22', NULL, '2020-09-22 14:06:02', '2020-09-22 14:06:02'),
(2, 2, 1, 1, '2020-12-02', NULL, '2020-12-02 12:19:06', '2020-12-02 12:19:06'),
(3, 3, 1, 1, '2020-12-10', NULL, '2020-12-10 08:55:21', '2020-12-10 08:55:21'),
(4, 4, 10, 10, '2022-04-18', NULL, '2022-04-18 17:04:06', '2022-04-18 17:04:06'),
(5, 5, 10, 10, '2022-04-18', NULL, '2022-04-18 17:07:23', '2022-04-18 17:07:23'),
(6, 6, 10, 10, '2022-04-18', NULL, '2022-04-18 17:11:00', '2022-04-18 17:11:00'),
(7, 7, 10, 10, '2022-04-18', NULL, '2022-04-18 17:13:03', '2022-04-18 17:13:03'),
(8, 8, 10, 10, '2022-04-18', NULL, '2022-04-18 17:16:27', '2022-04-18 17:16:27'),
(9, 9, 1, 8, '2022-04-18', NULL, '2022-04-18 19:13:51', '2022-04-18 19:13:51'),
(10, 10, 1, 8, '2022-04-18', NULL, '2022-04-18 19:21:25', '2022-04-18 19:21:25'),
(11, 11, 1, 8, '2022-04-18', NULL, '2022-04-18 19:27:21', '2022-04-18 19:27:21'),
(12, 12, 1, 8, '2022-04-18', NULL, '2022-04-18 19:34:32', '2022-04-18 19:34:32'),
(13, 13, 10, 10, '2022-04-18', NULL, '2022-04-18 20:37:10', '2022-04-18 20:37:10'),
(14, 14, 10, 10, '2022-04-18', NULL, '2022-04-18 20:45:30', '2022-04-18 20:45:30'),
(15, 15, 10, 10, '2022-04-18', NULL, '2022-04-18 20:54:10', '2022-04-18 20:54:10'),
(16, 16, 10, 10, '2022-04-18', NULL, '2022-04-18 21:07:03', '2022-04-18 21:07:03'),
(17, 17, 10, 10, '2022-04-18', NULL, '2022-04-18 21:24:29', '2022-04-18 21:24:29'),
(18, 18, 10, 10, '2022-04-19', NULL, '2022-04-19 18:44:10', '2022-04-19 18:44:10'),
(19, 19, 10, 10, '2022-04-19', NULL, '2022-04-19 19:09:34', '2022-04-19 19:09:34'),
(20, 20, 10, 10, '2022-04-19', NULL, '2022-04-19 19:26:17', '2022-04-19 19:26:17'),
(21, 21, 10, 10, '2022-04-19', NULL, '2022-04-19 20:15:28', '2022-04-19 20:15:28'),
(22, 22, 10, 10, '2022-04-19', NULL, '2022-04-19 20:42:43', '2022-04-19 20:42:43'),
(23, 23, 10, 10, '2022-04-19', NULL, '2022-04-19 20:42:48', '2022-04-19 20:42:48'),
(24, 24, 1, 10, '2022-04-19', NULL, '2022-04-19 21:37:56', '2022-04-19 21:37:56'),
(25, 25, 8, 10, '2022-04-20', NULL, '2022-04-20 14:15:43', '2022-04-20 14:15:43'),
(26, 26, 8, 10, '2022-04-20', NULL, '2022-04-20 19:29:12', '2022-04-20 19:29:12'),
(27, 27, 8, 8, '2022-04-20', NULL, '2022-04-20 20:05:26', '2022-04-20 20:05:26'),
(28, 28, 8, 8, '2022-04-20', NULL, '2022-04-20 20:21:55', '2022-04-20 20:21:55'),
(29, 29, 8, 8, '2022-04-20', NULL, '2022-04-20 20:35:19', '2022-04-20 20:35:19'),
(30, 30, 8, 8, '2022-04-20', NULL, '2022-04-20 21:14:08', '2022-04-20 21:14:08'),
(31, 31, 8, 8, '2022-04-20', NULL, '2022-04-20 21:21:03', '2022-04-20 21:21:03'),
(32, 32, 8, 8, '2022-04-21', NULL, '2022-04-21 11:39:19', '2022-04-21 11:39:19'),
(33, 33, 8, 8, '2022-04-21', NULL, '2022-04-21 11:51:46', '2022-04-21 11:51:46'),
(34, 34, 8, 8, '2022-04-21', NULL, '2022-04-21 11:56:33', '2022-04-21 11:56:33'),
(35, 35, 8, 8, '2022-04-21', NULL, '2022-04-21 13:09:29', '2022-04-21 13:09:29'),
(36, 36, 10, 10, '2022-04-22', NULL, '2022-04-22 14:05:28', '2022-04-22 14:05:28'),
(37, 37, 10, 10, '2022-04-22', NULL, '2022-04-22 14:07:10', '2022-04-22 14:07:10'),
(38, 38, 10, 10, '2022-04-22', NULL, '2022-04-22 15:06:18', '2022-04-22 15:06:18'),
(39, 39, 10, 10, '2022-04-22', NULL, '2022-04-22 15:18:24', '2022-04-22 15:18:24'),
(40, 40, 10, 10, '2022-04-22', NULL, '2022-04-22 15:53:08', '2022-04-22 15:53:08'),
(41, 41, 10, 10, '2022-04-22', NULL, '2022-04-22 18:38:28', '2022-04-22 18:38:28'),
(42, 42, 10, 10, '2022-04-22', NULL, '2022-04-22 18:48:53', '2022-04-22 18:48:53'),
(43, 43, 10, 10, '2022-04-22', NULL, '2022-04-22 18:57:41', '2022-04-22 18:57:41'),
(44, 44, 10, 10, '2022-04-22', NULL, '2022-04-22 19:09:31', '2022-04-22 19:09:31'),
(45, 45, 10, 10, '2022-04-22', NULL, '2022-04-22 19:14:33', '2022-04-22 19:14:33'),
(46, 46, 8, 10, '2022-04-24', NULL, '2022-04-24 16:22:11', '2022-04-24 16:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `loan_products`
--

CREATE TABLE `loan_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `loan_disbursement_channel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_transaction_processing_strategy_id` bigint(20) UNSIGNED NOT NULL,
  `fund_id` bigint(20) UNSIGNED NOT NULL,
  `fund_source_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_portfolio_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `interest_receivable_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `penalties_receivable_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fees_receivable_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fees_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `overpayments_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `suspended_income_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `income_from_interest_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `income_from_penalties_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `income_from_fees_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `income_from_recovery_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `losses_written_off_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `interest_written_off_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimals` int(11) DEFAULT NULL,
  `instalment_multiple_of` int(11) DEFAULT 1,
  `minimum_principal` decimal(65,6) NOT NULL,
  `default_principal` decimal(65,6) NOT NULL,
  `maximum_principal` decimal(65,6) NOT NULL,
  `minimum_loan_term` int(11) NOT NULL,
  `default_loan_term` int(11) NOT NULL,
  `maximum_loan_term` int(11) NOT NULL,
  `repayment_frequency` int(11) NOT NULL,
  `repayment_frequency_type` enum('days','weeks','months','years') COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimum_interest_rate` decimal(65,6) NOT NULL,
  `default_interest_rate` decimal(65,6) NOT NULL,
  `maximum_interest_rate` decimal(65,6) NOT NULL,
  `interest_rate_type` enum('day','week','month','year') COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_balloon_payments` tinyint(4) NOT NULL DEFAULT 0,
  `allow_schedule_adjustments` tinyint(4) NOT NULL DEFAULT 0,
  `grace_on_principal_paid` int(11) NOT NULL DEFAULT 0,
  `grace_on_interest_paid` int(11) NOT NULL DEFAULT 0,
  `grace_on_interest_charged` int(11) NOT NULL DEFAULT 0,
  `allow_custom_grace_period` tinyint(4) NOT NULL DEFAULT 0,
  `allow_topup` tinyint(4) NOT NULL DEFAULT 0,
  `interest_methodology` enum('flat','declining_balance') COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest_recalculation` tinyint(4) NOT NULL DEFAULT 0,
  `amortization_method` enum('equal_installments','equal_principal_payments') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interest_calculation_period_type` enum('daily','same') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days_in_year` enum('actual','360','365','364') COLLATE utf8mb4_unicode_ci DEFAULT 'actual',
  `days_in_month` enum('actual','30','31') COLLATE utf8mb4_unicode_ci DEFAULT 'actual',
  `include_in_loan_cycle` tinyint(4) NOT NULL DEFAULT 0,
  `lock_guarantee_funds` tinyint(4) NOT NULL DEFAULT 0,
  `auto_allocate_overpayments` tinyint(4) NOT NULL DEFAULT 0,
  `allow_additional_charges` tinyint(4) NOT NULL DEFAULT 0,
  `auto_disburse` tinyint(4) NOT NULL DEFAULT 0,
  `require_linked_savings_account` tinyint(4) NOT NULL DEFAULT 0,
  `min_amount` decimal(65,6) DEFAULT NULL,
  `max_amount` decimal(65,6) DEFAULT NULL,
  `accounting_rule` enum('none','cash','accrual_periodic','accrual_upfront') COLLATE utf8mb4_unicode_ci DEFAULT 'none',
  `npa_overdue_days` int(11) NOT NULL DEFAULT 0,
  `npa_suspend_accrued_income` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_products`
--

INSERT INTO `loan_products` (`id`, `created_by_id`, `currency_id`, `loan_disbursement_channel_id`, `loan_transaction_processing_strategy_id`, `fund_id`, `fund_source_chart_of_account_id`, `loan_portfolio_chart_of_account_id`, `interest_receivable_chart_of_account_id`, `penalties_receivable_chart_of_account_id`, `fees_receivable_chart_of_account_id`, `fees_chart_of_account_id`, `overpayments_chart_of_account_id`, `suspended_income_chart_of_account_id`, `income_from_interest_chart_of_account_id`, `income_from_penalties_chart_of_account_id`, `income_from_fees_chart_of_account_id`, `income_from_recovery_chart_of_account_id`, `losses_written_off_chart_of_account_id`, `interest_written_off_chart_of_account_id`, `name`, `short_name`, `description`, `decimals`, `instalment_multiple_of`, `minimum_principal`, `default_principal`, `maximum_principal`, `minimum_loan_term`, `default_loan_term`, `maximum_loan_term`, `repayment_frequency`, `repayment_frequency_type`, `minimum_interest_rate`, `default_interest_rate`, `maximum_interest_rate`, `interest_rate_type`, `enable_balloon_payments`, `allow_schedule_adjustments`, `grace_on_principal_paid`, `grace_on_interest_paid`, `grace_on_interest_charged`, `allow_custom_grace_period`, `allow_topup`, `interest_methodology`, `interest_recalculation`, `amortization_method`, `interest_calculation_period_type`, `days_in_year`, `days_in_month`, `include_in_loan_cycle`, `lock_guarantee_funds`, `auto_allocate_overpayments`, `allow_additional_charges`, `auto_disburse`, `require_linked_savings_account`, `min_amount`, `max_amount`, `accounting_rule`, `npa_overdue_days`, `npa_suspend_accrued_income`, `active`, `created_at`, `updated_at`) VALUES
(2, 1, 1, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Good Product', 'good', 'gggg', 0, 1, '500.000000', '1000.000000', '5000.000000', 1, 5, 10, 1, 'months', '5.000000', '10.000000', '20.000000', 'year', 0, 0, 0, 0, 0, 0, 0, 'declining_balance', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 0, NULL, NULL, 'none', 0, 0, 0, '2020-11-30 13:58:39', '2022-04-21 13:44:06'),
(4, 1, 1, NULL, 2, 1, 1, 1, NULL, NULL, NULL, NULL, 4, 1, 3, 3, 3, 3, 2, 3, 'NANKANGAVIKUNDI', 'NANVIKUD', 'Kwa Wafanyabiashara', 0, 1, '50000.000000', '150000.000000', '400000.000000', 90, 120, 365, 7, 'days', '27.000000', '17.000000', '45.000000', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 0, NULL, NULL, 'cash', 0, 0, 1, '2022-04-15 18:21:08', '2022-04-21 13:28:06'),
(6, 1, 1, NULL, 2, 1, 1, 1, NULL, NULL, NULL, NULL, 4, 1, 3, 3, 3, 3, 2, 3, 'MADEOVIKUNDI', 'MADEOVKND', 'VIKUNDI', 0, 1, '50000.000000', '150000.000000', '400000.000000', 60, 120, 365, 7, 'days', '12.000000', '17.000000', '20.000000', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_principal_payments', NULL, 'actual', 'actual', 0, 0, 0, 0, 0, 0, NULL, NULL, 'cash', 0, 0, 1, '2022-04-18 18:57:18', '2022-04-21 11:30:15'),
(9, 8, 1, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 4, 1, 3, 3, 3, 3, 2, 3, 'Personal Loan', 'PL', 'BINAFSI', 0, 1, '50000.000000', '150000.000000', '400000.000000', 25, 30, 40, 1, 'days', '1.000000', '4.000000', '8.000000', 'month', 0, 0, 0, 0, 0, 0, 0, 'flat', 0, 'equal_installments', NULL, 'actual', 'actual', 0, 0, 0, 0, 1, 0, NULL, NULL, 'cash', 0, 0, 1, '2022-04-24 16:00:56', '2022-04-24 16:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `loan_product_linked_charges`
--

CREATE TABLE `loan_product_linked_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loan_product_id` bigint(20) UNSIGNED NOT NULL,
  `loan_charge_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_product_linked_charges`
--

INSERT INTO `loan_product_linked_charges` (`id`, `loan_product_id`, `loan_charge_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1, '2020-12-14 17:42:16', '2020-12-14 17:42:16'),
(6, 5, 1, '2022-04-18 17:10:51', '2022-04-18 17:10:51'),
(25, 8, 2, '2022-04-20 14:30:24', '2022-04-20 14:30:24'),
(33, 7, 2, '2022-04-21 11:32:49', '2022-04-21 11:32:49'),
(35, 6, 2, '2022-04-21 11:37:19', '2022-04-21 11:37:19'),
(36, 4, 3, '2022-04-21 13:28:06', '2022-04-21 13:28:06'),
(37, 2, 1, '2022-04-21 13:44:06', '2022-04-21 13:44:06'),
(39, 9, 5, '2022-04-24 16:34:23', '2022-04-24 16:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `loan_product_linked_credit_checks`
--

CREATE TABLE `loan_product_linked_credit_checks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loan_product_id` bigint(20) UNSIGNED NOT NULL,
  `loan_credit_check_id` bigint(20) UNSIGNED NOT NULL,
  `check_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_purposes`
--

CREATE TABLE `loan_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_purposes`
--

INSERT INTO `loan_purposes` (`id`, `name`) VALUES
(1, 'Biashara- Ndogo'),
(2, 'Biashara');

-- --------------------------------------------------------

--
-- Table structure for table `loan_repayment_schedules`
--

CREATE TABLE `loan_repayment_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `loan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_by_date` date DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `due_date` date NOT NULL,
  `installment` int(11) DEFAULT NULL,
  `principal` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `principal_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `principal_written_off_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `interest` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `interest_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `interest_written_off_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `interest_waived_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `fees` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `fees_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `fees_written_off_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `fees_waived_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `penalties` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `penalties_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `penalties_written_off_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `penalties_waived_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `total_due` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_repayment_schedules`
--

INSERT INTO `loan_repayment_schedules` (`id`, `created_by_id`, `loan_id`, `paid_by_date`, `from_date`, `due_date`, `installment`, `principal`, `principal_repaid_derived`, `principal_written_off_derived`, `interest`, `interest_repaid_derived`, `interest_written_off_derived`, `interest_waived_derived`, `fees`, `fees_repaid_derived`, `fees_written_off_derived`, `fees_waived_derived`, `penalties`, `penalties_repaid_derived`, `penalties_written_off_derived`, `penalties_waived_derived`, `total_due`, `month`, `year`, `created_at`, `updated_at`) VALUES
(7, 1, 2, NULL, '2020-12-02', '2021-01-02', 1, '166667.000000', '0.000000', '0.000000', '16667.000000', '60.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '183274.000000', '01', '2021', '2020-12-02 16:11:09', '2020-12-03 10:11:24'),
(8, 1, 2, NULL, '2021-01-03', '2021-02-02', 2, '166667.000000', '0.000000', '0.000000', '16667.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '183334.000000', '02', '2021', '2020-12-02 16:11:09', '2020-12-03 10:11:24'),
(9, 1, 2, NULL, '2021-02-03', '2021-03-02', 3, '166667.000000', '0.000000', '0.000000', '16667.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '183334.000000', '03', '2021', '2020-12-02 16:11:09', '2020-12-03 10:11:24'),
(10, 1, 2, NULL, '2021-03-03', '2021-04-02', 4, '166667.000000', '0.000000', '0.000000', '16667.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '183334.000000', '04', '2021', '2020-12-02 16:11:09', '2020-12-03 10:11:24'),
(11, 1, 2, NULL, '2021-04-03', '2021-05-02', 5, '166667.000000', '0.000000', '0.000000', '16667.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '183334.000000', '05', '2021', '2020-12-02 16:11:09', '2020-12-03 10:11:24'),
(12, 1, 2, NULL, '2021-05-03', '2021-06-02', 6, '166665.000000', '0.000000', '0.000000', '16667.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '183332.000000', '06', '2021', '2020-12-02 16:11:09', '2020-12-03 10:11:24'),
(28, 1, 1, NULL, '2020-09-22', '2020-10-22', 1, '166667.000000', '0.000000', '0.000000', '16667.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '183334.000000', '10', '2020', '2020-12-21 08:55:59', '2020-12-21 08:55:59'),
(29, 1, 1, NULL, '2020-10-23', '2020-11-22', 2, '166667.000000', '0.000000', '0.000000', '16667.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '183334.000000', '11', '2020', '2020-12-21 08:55:59', '2020-12-21 08:55:59'),
(30, 1, 1, NULL, '2020-11-23', '2020-12-22', 3, '166667.000000', '0.000000', '0.000000', '16667.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '183334.000000', '12', '2020', '2020-12-21 08:55:59', '2020-12-21 08:55:59'),
(31, 1, 1, NULL, '2020-12-23', '2021-01-22', 4, '166667.000000', '0.000000', '0.000000', '16667.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '183334.000000', '01', '2021', '2020-12-21 08:55:59', '2020-12-21 08:55:59'),
(32, 1, 1, NULL, '2021-01-23', '2021-02-22', 5, '166667.000000', '0.000000', '0.000000', '16667.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '183334.000000', '02', '2021', '2020-12-21 08:55:59', '2020-12-21 08:55:59'),
(33, 1, 1, NULL, '2021-02-23', '2021-03-22', 6, '166665.000000', '0.000000', '0.000000', '16667.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '183332.000000', '03', '2021', '2020-12-21 08:55:59', '2020-12-21 08:55:59'),
(34, 1, 4, NULL, '2022-04-16', '2022-04-23', 1, '50000.000000', '0.000000', '0.000000', '13500.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '63500.000000', '04', '2022', '2022-04-18 17:25:42', '2022-04-18 17:25:42'),
(35, 1, 4, NULL, '2022-04-24', '2022-04-30', 2, '50000.000000', '0.000000', '0.000000', '13500.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '63500.000000', '04', '2022', '2022-04-18 17:25:42', '2022-04-18 17:25:42'),
(36, 1, 4, NULL, '2022-05-01', '2022-05-07', 3, '50000.000000', '0.000000', '0.000000', '13500.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '63500.000000', '05', '2022', '2022-04-18 17:25:42', '2022-04-18 17:25:42'),
(37, 1, 4, NULL, '2022-05-08', '2022-05-14', 4, '50000.000000', '0.000000', '0.000000', '13500.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '63500.000000', '05', '2022', '2022-04-18 17:25:42', '2022-04-18 17:25:42'),
(123, 1, 15, NULL, '2022-04-16', '2022-04-23', 1, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '04', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(124, 1, 15, NULL, '2022-04-24', '2022-04-30', 2, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '04', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(125, 1, 15, NULL, '2022-05-01', '2022-05-07', 3, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '05', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(126, 1, 15, NULL, '2022-05-08', '2022-05-14', 4, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '05', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(127, 1, 15, NULL, '2022-05-15', '2022-05-21', 5, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '05', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(128, 1, 15, NULL, '2022-05-22', '2022-05-28', 6, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '05', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(129, 1, 15, NULL, '2022-05-29', '2022-06-04', 7, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '06', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(130, 1, 15, NULL, '2022-06-05', '2022-06-11', 8, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '06', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(131, 1, 15, NULL, '2022-06-12', '2022-06-18', 9, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '06', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(132, 1, 15, NULL, '2022-06-19', '2022-06-25', 10, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '06', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(133, 1, 15, NULL, '2022-06-26', '2022-07-02', 11, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '07', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(134, 1, 15, NULL, '2022-07-03', '2022-07-09', 12, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '07', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(135, 1, 15, NULL, '2022-07-10', '2022-07-16', 13, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '07', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(136, 1, 15, NULL, '2022-07-17', '2022-07-23', 14, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '07', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(137, 1, 15, NULL, '2022-07-24', '2022-07-30', 15, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '07', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(138, 1, 15, NULL, '2022-07-31', '2022-08-06', 16, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '08', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(139, 1, 15, NULL, '2022-08-07', '2022-08-13', 17, '11667.000000', '0.000000', '0.000000', '385.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '12052.000000', '08', '2022', '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(140, 1, 16, NULL, '2022-04-16', '2022-04-23', 1, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '04', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(141, 1, 16, NULL, '2022-04-24', '2022-04-30', 2, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '04', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(142, 1, 16, NULL, '2022-05-01', '2022-05-07', 3, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '05', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(143, 1, 16, NULL, '2022-05-08', '2022-05-14', 4, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '05', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(144, 1, 16, NULL, '2022-05-15', '2022-05-21', 5, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '05', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(145, 1, 16, NULL, '2022-05-22', '2022-05-28', 6, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '05', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(146, 1, 16, NULL, '2022-05-29', '2022-06-04', 7, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '06', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(147, 1, 16, NULL, '2022-06-05', '2022-06-11', 8, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '06', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(148, 1, 16, NULL, '2022-06-12', '2022-06-18', 9, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '06', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(149, 1, 16, NULL, '2022-06-19', '2022-06-25', 10, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '06', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(150, 1, 16, NULL, '2022-06-26', '2022-07-02', 11, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '07', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(151, 1, 16, NULL, '2022-07-03', '2022-07-09', 12, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '07', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(152, 1, 16, NULL, '2022-07-10', '2022-07-16', 13, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '07', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(153, 1, 16, NULL, '2022-07-17', '2022-07-23', 14, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '07', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(154, 1, 16, NULL, '2022-07-24', '2022-07-30', 15, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '07', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(155, 1, 16, NULL, '2022-07-31', '2022-08-06', 16, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '08', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(156, 1, 16, NULL, '2022-08-07', '2022-08-13', 17, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '08', '2022', '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(157, 1, 17, NULL, '2022-04-16', '2022-04-23', 1, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '04', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(158, 1, 17, NULL, '2022-04-24', '2022-04-30', 2, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '04', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(159, 1, 17, NULL, '2022-05-01', '2022-05-07', 3, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '05', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(160, 1, 17, NULL, '2022-05-08', '2022-05-14', 4, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '05', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(161, 1, 17, NULL, '2022-05-15', '2022-05-21', 5, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '05', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(162, 1, 17, NULL, '2022-05-22', '2022-05-28', 6, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '05', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(163, 1, 17, NULL, '2022-05-29', '2022-06-04', 7, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '06', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(164, 1, 17, NULL, '2022-06-05', '2022-06-11', 8, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '06', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(165, 1, 17, NULL, '2022-06-12', '2022-06-18', 9, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '06', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(166, 1, 17, NULL, '2022-06-19', '2022-06-25', 10, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '06', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(167, 1, 17, NULL, '2022-06-26', '2022-07-02', 11, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '07', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(168, 1, 17, NULL, '2022-07-03', '2022-07-09', 12, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '07', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(169, 1, 17, NULL, '2022-07-10', '2022-07-16', 13, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '07', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(170, 1, 17, NULL, '2022-07-17', '2022-07-23', 14, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '07', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(171, 1, 17, NULL, '2022-07-24', '2022-07-30', 15, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '07', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(172, 1, 17, NULL, '2022-07-31', '2022-08-06', 16, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '08', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(173, 1, 17, NULL, '2022-08-07', '2022-08-13', 17, '8750.000000', '0.000000', '0.000000', '289.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9039.000000', '08', '2022', '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(174, 8, 18, NULL, '2022-04-19', '2022-05-19', 1, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '05', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(175, 8, 18, NULL, '2022-05-20', '2022-05-26', 2, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '05', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(176, 8, 18, NULL, '2022-05-27', '2022-06-02', 3, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '06', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(177, 8, 18, NULL, '2022-06-03', '2022-06-09', 4, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '06', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(178, 8, 18, NULL, '2022-06-10', '2022-06-16', 5, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '06', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(179, 8, 18, NULL, '2022-06-17', '2022-06-23', 6, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '06', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(180, 8, 18, NULL, '2022-06-24', '2022-06-30', 7, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '06', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(181, 8, 18, NULL, '2022-07-01', '2022-07-07', 8, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '07', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(182, 8, 18, NULL, '2022-07-08', '2022-07-14', 9, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '07', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(183, 8, 18, NULL, '2022-07-15', '2022-07-21', 10, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '07', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(184, 8, 18, NULL, '2022-07-22', '2022-07-28', 11, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '07', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(185, 8, 18, NULL, '2022-07-29', '2022-08-04', 12, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '08', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(186, 8, 18, NULL, '2022-08-05', '2022-08-11', 13, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '08', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(187, 8, 18, NULL, '2022-08-12', '2022-08-18', 14, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '08', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(188, 8, 18, NULL, '2022-08-19', '2022-08-25', 15, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '08', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(189, 8, 18, NULL, '2022-08-26', '2022-09-01', 16, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '09', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(190, 8, 18, NULL, '2022-09-02', '2022-09-08', 17, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '09', '2022', '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(191, 8, 19, NULL, '2022-04-19', '2022-05-19', 1, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '05', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(192, 8, 19, NULL, '2022-05-20', '2022-05-26', 2, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '05', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(193, 8, 19, NULL, '2022-05-27', '2022-06-02', 3, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '06', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(194, 8, 19, NULL, '2022-06-03', '2022-06-09', 4, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '06', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(195, 8, 19, NULL, '2022-06-10', '2022-06-16', 5, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '06', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(196, 8, 19, NULL, '2022-06-17', '2022-06-23', 6, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '06', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(197, 8, 19, NULL, '2022-06-24', '2022-06-30', 7, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '06', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(198, 8, 19, NULL, '2022-07-01', '2022-07-07', 8, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '07', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(199, 8, 19, NULL, '2022-07-08', '2022-07-14', 9, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '07', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(200, 8, 19, NULL, '2022-07-15', '2022-07-21', 10, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '07', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(201, 8, 19, NULL, '2022-07-22', '2022-07-28', 11, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '07', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(202, 8, 19, NULL, '2022-07-29', '2022-08-04', 12, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '08', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(203, 8, 19, NULL, '2022-08-05', '2022-08-11', 13, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '08', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(204, 8, 19, NULL, '2022-08-12', '2022-08-18', 14, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '08', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(205, 8, 19, NULL, '2022-08-19', '2022-08-25', 15, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '08', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(206, 8, 19, NULL, '2022-08-26', '2022-09-01', 16, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '09', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(207, 8, 19, NULL, '2022-09-02', '2022-09-08', 17, '8750.000000', '0.000000', '0.000000', '489.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '9239.000000', '09', '2022', '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(259, 1, 24, NULL, '2022-04-19', '2022-05-19', 1, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '05', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(260, 1, 24, NULL, '2022-05-20', '2022-05-26', 2, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '05', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(261, 1, 24, NULL, '2022-05-27', '2022-06-02', 3, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '06', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(262, 1, 24, NULL, '2022-06-03', '2022-06-09', 4, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '06', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(263, 1, 24, NULL, '2022-06-10', '2022-06-16', 5, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '06', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(264, 1, 24, NULL, '2022-06-17', '2022-06-23', 6, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '06', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(265, 1, 24, NULL, '2022-06-24', '2022-06-30', 7, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '06', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(266, 1, 24, NULL, '2022-07-01', '2022-07-07', 8, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '07', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(267, 1, 24, NULL, '2022-07-08', '2022-07-14', 9, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '07', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(268, 1, 24, NULL, '2022-07-15', '2022-07-21', 10, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '07', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(269, 1, 24, NULL, '2022-07-22', '2022-07-28', 11, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '07', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(270, 1, 24, NULL, '2022-07-29', '2022-08-04', 12, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '08', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(271, 1, 24, NULL, '2022-08-05', '2022-08-11', 13, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '08', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(272, 1, 24, NULL, '2022-08-12', '2022-08-18', 14, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '08', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(273, 1, 24, NULL, '2022-08-19', '2022-08-25', 15, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '08', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(274, 1, 24, NULL, '2022-08-26', '2022-09-01', 16, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '09', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(275, 1, 24, NULL, '2022-09-02', '2022-09-08', 17, '8750.000000', '0.000000', '0.000000', '14750.000000', '0.000000', '0.000000', '0.000000', '11750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '11773500.000000', '09', '2022', '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(361, 8, 26, NULL, '2022-04-20', '2022-05-20', 1, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '05', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(362, 8, 26, NULL, '2022-05-21', '2022-05-27', 2, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '05', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(363, 8, 26, NULL, '2022-05-28', '2022-06-03', 3, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '06', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(364, 8, 26, NULL, '2022-06-04', '2022-06-10', 4, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '06', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(365, 8, 26, NULL, '2022-06-11', '2022-06-17', 5, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '06', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(366, 8, 26, NULL, '2022-06-18', '2022-06-24', 6, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '06', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(367, 8, 26, NULL, '2022-06-25', '2022-07-01', 7, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '07', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(368, 8, 26, NULL, '2022-07-02', '2022-07-08', 8, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '07', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(369, 8, 26, NULL, '2022-07-09', '2022-07-15', 9, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '07', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(370, 8, 26, NULL, '2022-07-16', '2022-07-22', 10, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '07', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(371, 8, 26, NULL, '2022-07-23', '2022-07-29', 11, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '07', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(372, 8, 26, NULL, '2022-07-30', '2022-08-05', 12, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '08', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(373, 8, 26, NULL, '2022-08-06', '2022-08-12', 13, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '08', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(374, 8, 26, NULL, '2022-08-13', '2022-08-19', 14, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '08', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(375, 8, 26, NULL, '2022-08-20', '2022-08-26', 15, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '08', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(376, 8, 26, NULL, '2022-08-27', '2022-09-02', 16, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '09', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(377, 8, 26, NULL, '2022-09-03', '2022-09-09', 17, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '10500.000000', '09', '2022', '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(378, 8, 27, NULL, '2022-04-20', '2022-05-20', 1, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '05', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(379, 8, 27, NULL, '2022-05-21', '2022-05-27', 2, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '05', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(380, 8, 27, NULL, '2022-05-28', '2022-06-03', 3, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '06', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(381, 8, 27, NULL, '2022-06-04', '2022-06-10', 4, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '06', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(382, 8, 27, NULL, '2022-06-11', '2022-06-17', 5, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '06', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(383, 8, 27, NULL, '2022-06-18', '2022-06-24', 6, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '06', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(384, 8, 27, NULL, '2022-06-25', '2022-07-01', 7, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '07', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(385, 8, 27, NULL, '2022-07-02', '2022-07-08', 8, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '07', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(386, 8, 27, NULL, '2022-07-09', '2022-07-15', 9, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '07', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(387, 8, 27, NULL, '2022-07-16', '2022-07-22', 10, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '07', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(388, 8, 27, NULL, '2022-07-23', '2022-07-29', 11, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '07', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(389, 8, 27, NULL, '2022-07-30', '2022-08-05', 12, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '08', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(390, 8, 27, NULL, '2022-08-06', '2022-08-12', 13, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '08', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(391, 8, 27, NULL, '2022-08-13', '2022-08-19', 14, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '08', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(392, 8, 27, NULL, '2022-08-20', '2022-08-26', 15, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '08', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(393, 8, 27, NULL, '2022-08-27', '2022-09-02', 16, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '09', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(394, 8, 27, NULL, '2022-09-03', '2022-09-09', 17, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '2625.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '13125.000000', '09', '2022', '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(395, 8, 28, NULL, '2022-04-20', '2022-05-20', 1, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '05', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(396, 8, 28, NULL, '2022-05-21', '2022-05-27', 2, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '05', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(397, 8, 28, NULL, '2022-05-28', '2022-06-03', 3, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '06', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(398, 8, 28, NULL, '2022-06-04', '2022-06-10', 4, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '06', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(399, 8, 28, NULL, '2022-06-11', '2022-06-17', 5, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '06', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(400, 8, 28, NULL, '2022-06-18', '2022-06-24', 6, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '06', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19');
INSERT INTO `loan_repayment_schedules` (`id`, `created_by_id`, `loan_id`, `paid_by_date`, `from_date`, `due_date`, `installment`, `principal`, `principal_repaid_derived`, `principal_written_off_derived`, `interest`, `interest_repaid_derived`, `interest_written_off_derived`, `interest_waived_derived`, `fees`, `fees_repaid_derived`, `fees_written_off_derived`, `fees_waived_derived`, `penalties`, `penalties_repaid_derived`, `penalties_written_off_derived`, `penalties_waived_derived`, `total_due`, `month`, `year`, `created_at`, `updated_at`) VALUES
(401, 8, 28, NULL, '2022-06-25', '2022-07-01', 7, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '07', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(402, 8, 28, NULL, '2022-07-02', '2022-07-08', 8, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '07', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(403, 8, 28, NULL, '2022-07-09', '2022-07-15', 9, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '07', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(404, 8, 28, NULL, '2022-07-16', '2022-07-22', 10, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '07', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(405, 8, 28, NULL, '2022-07-23', '2022-07-29', 11, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '07', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(406, 8, 28, NULL, '2022-07-30', '2022-08-05', 12, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '08', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(407, 8, 28, NULL, '2022-08-06', '2022-08-12', 13, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '08', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(408, 8, 28, NULL, '2022-08-13', '2022-08-19', 14, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '08', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(409, 8, 28, NULL, '2022-08-20', '2022-08-26', 15, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '08', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(410, 8, 28, NULL, '2022-08-27', '2022-09-02', 16, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '09', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(411, 8, 28, NULL, '2022-09-03', '2022-09-09', 17, '8750.000000', '0.000000', '0.000000', '1750.000000', '0.000000', '0.000000', '0.000000', '8925.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '19425.000000', '09', '2022', '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(433, 8, 30, NULL, '2022-04-20', '2022-05-20', 1, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '05', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(434, 8, 30, NULL, '2022-05-21', '2022-05-27', 2, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '05', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(435, 8, 30, NULL, '2022-05-28', '2022-06-03', 3, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '06', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(436, 8, 30, NULL, '2022-06-04', '2022-06-10', 4, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '06', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(437, 8, 30, NULL, '2022-06-11', '2022-06-17', 5, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '06', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(438, 8, 30, NULL, '2022-06-18', '2022-06-24', 6, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '06', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(439, 8, 30, NULL, '2022-06-25', '2022-07-01', 7, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '07', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(440, 8, 30, NULL, '2022-07-02', '2022-07-08', 8, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '07', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(441, 8, 30, NULL, '2022-07-09', '2022-07-15', 9, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '07', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(442, 8, 30, NULL, '2022-07-16', '2022-07-22', 10, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '07', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(443, 8, 30, NULL, '2022-07-23', '2022-07-29', 11, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '07', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(444, 8, 30, NULL, '2022-07-30', '2022-08-05', 12, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '08', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(445, 8, 30, NULL, '2022-08-06', '2022-08-12', 13, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '08', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(446, 8, 30, NULL, '2022-08-13', '2022-08-19', 14, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '08', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(447, 8, 30, NULL, '2022-08-20', '2022-08-26', 15, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '08', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(448, 8, 30, NULL, '2022-08-27', '2022-09-02', 16, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '09', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(449, 8, 30, NULL, '2022-09-03', '2022-09-09', 17, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15552.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25152.000000', '09', '2022', '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(450, 8, 29, NULL, '2022-04-20', '2022-05-20', 1, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '05', '2022', '2022-04-20 21:18:22', '2022-04-20 21:18:23'),
(451, 8, 29, NULL, '2022-05-21', '2022-05-27', 2, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '05', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(452, 8, 29, NULL, '2022-05-28', '2022-06-03', 3, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '06', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(453, 8, 29, NULL, '2022-06-04', '2022-06-10', 4, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '06', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(454, 8, 29, NULL, '2022-06-11', '2022-06-17', 5, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '06', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(455, 8, 29, NULL, '2022-06-18', '2022-06-24', 6, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '06', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(456, 8, 29, NULL, '2022-06-25', '2022-07-01', 7, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '07', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(457, 8, 29, NULL, '2022-07-02', '2022-07-08', 8, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '07', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(458, 8, 29, NULL, '2022-07-09', '2022-07-15', 9, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '07', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(459, 8, 29, NULL, '2022-07-16', '2022-07-22', 10, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '07', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(460, 8, 29, NULL, '2022-07-23', '2022-07-29', 11, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '07', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(461, 8, 29, NULL, '2022-07-30', '2022-08-05', 12, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '08', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(462, 8, 29, NULL, '2022-08-06', '2022-08-12', 13, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '08', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(463, 8, 29, NULL, '2022-08-13', '2022-08-19', 14, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '08', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(464, 8, 29, NULL, '2022-08-20', '2022-08-26', 15, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '08', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(465, 8, 29, NULL, '2022-08-27', '2022-09-02', 16, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '09', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(466, 8, 29, NULL, '2022-09-03', '2022-09-09', 17, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15360.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '24960.000000', '09', '2022', '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(467, 8, 31, NULL, '2022-04-20', '2022-05-20', 1, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '05', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(468, 8, 31, NULL, '2022-05-21', '2022-05-27', 2, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '05', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(469, 8, 31, NULL, '2022-05-28', '2022-06-03', 3, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '06', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(470, 8, 31, NULL, '2022-06-04', '2022-06-10', 4, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '06', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(471, 8, 31, NULL, '2022-06-11', '2022-06-17', 5, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '06', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(472, 8, 31, NULL, '2022-06-18', '2022-06-24', 6, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '06', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(473, 8, 31, NULL, '2022-06-25', '2022-07-01', 7, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(474, 8, 31, NULL, '2022-07-02', '2022-07-08', 8, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(475, 8, 31, NULL, '2022-07-09', '2022-07-15', 9, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(476, 8, 31, NULL, '2022-07-16', '2022-07-22', 10, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(477, 8, 31, NULL, '2022-07-23', '2022-07-29', 11, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(478, 8, 31, NULL, '2022-07-30', '2022-08-05', 12, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '08', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(479, 8, 31, NULL, '2022-08-06', '2022-08-12', 13, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '08', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(480, 8, 31, NULL, '2022-08-13', '2022-08-19', 14, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '08', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(481, 8, 31, NULL, '2022-08-20', '2022-08-26', 15, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '08', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(482, 8, 31, NULL, '2022-08-27', '2022-09-02', 16, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '09', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(483, 8, 31, NULL, '2022-09-03', '2022-09-09', 17, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '09', '2022', '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(518, 8, 32, NULL, '2022-04-21', '2022-05-21', 1, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '05', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(519, 8, 32, NULL, '2022-05-22', '2022-05-28', 2, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '05', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(520, 8, 32, NULL, '2022-05-29', '2022-06-04', 3, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '06', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(521, 8, 32, NULL, '2022-06-05', '2022-06-11', 4, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '06', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(522, 8, 32, NULL, '2022-06-12', '2022-06-18', 5, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '06', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(523, 8, 32, NULL, '2022-06-19', '2022-06-25', 6, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '06', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(524, 8, 32, NULL, '2022-06-26', '2022-07-02', 7, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '07', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(525, 8, 32, NULL, '2022-07-03', '2022-07-09', 8, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '07', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(526, 8, 32, NULL, '2022-07-10', '2022-07-16', 9, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '07', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(527, 8, 32, NULL, '2022-07-17', '2022-07-23', 10, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '07', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(528, 8, 32, NULL, '2022-07-24', '2022-07-30', 11, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '07', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(529, 8, 32, NULL, '2022-07-31', '2022-08-06', 12, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '08', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(530, 8, 32, NULL, '2022-08-07', '2022-08-13', 13, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '08', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(531, 8, 32, NULL, '2022-08-14', '2022-08-20', 14, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '08', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(532, 8, 32, NULL, '2022-08-21', '2022-08-27', 15, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '08', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(533, 8, 32, NULL, '2022-08-28', '2022-09-03', 16, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '09', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(534, 8, 32, NULL, '2022-09-04', '2022-09-10', 17, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '107904.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '117504.000000', '09', '2022', '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(671, 8, 40, NULL, '2022-04-16', '2022-04-23', 1, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '04', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(672, 8, 40, NULL, '2022-04-24', '2022-04-30', 2, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '04', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(673, 8, 40, NULL, '2022-05-01', '2022-05-07', 3, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '05', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(674, 8, 40, NULL, '2022-05-08', '2022-05-14', 4, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '05', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(675, 8, 40, NULL, '2022-05-15', '2022-05-21', 5, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '05', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(676, 8, 40, NULL, '2022-05-22', '2022-05-28', 6, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '05', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(677, 8, 40, NULL, '2022-05-29', '2022-06-04', 7, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '06', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(678, 8, 40, NULL, '2022-06-05', '2022-06-11', 8, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '06', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(679, 8, 40, NULL, '2022-06-12', '2022-06-18', 9, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '06', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(680, 8, 40, NULL, '2022-06-19', '2022-06-25', 10, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '06', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(681, 8, 40, NULL, '2022-06-26', '2022-07-02', 11, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(682, 8, 40, NULL, '2022-07-03', '2022-07-09', 12, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(683, 8, 40, NULL, '2022-07-10', '2022-07-16', 13, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(684, 8, 40, NULL, '2022-07-17', '2022-07-23', 14, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(685, 8, 40, NULL, '2022-07-24', '2022-07-30', 15, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(686, 8, 40, NULL, '2022-07-31', '2022-08-06', 16, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '08', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(687, 8, 40, NULL, '2022-08-07', '2022-08-13', 17, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '08', '2022', '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(688, 8, 41, NULL, '2022-04-16', '2022-04-23', 1, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '04', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(689, 8, 41, NULL, '2022-04-24', '2022-04-30', 2, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '04', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(690, 8, 41, NULL, '2022-05-01', '2022-05-07', 3, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '05', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(691, 8, 41, NULL, '2022-05-08', '2022-05-14', 4, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '05', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(692, 8, 41, NULL, '2022-05-15', '2022-05-21', 5, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '05', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(693, 8, 41, NULL, '2022-05-22', '2022-05-28', 6, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '05', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(694, 8, 41, NULL, '2022-05-29', '2022-06-04', 7, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '06', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(695, 8, 41, NULL, '2022-06-05', '2022-06-11', 8, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '06', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(696, 8, 41, NULL, '2022-06-12', '2022-06-18', 9, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '06', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(697, 8, 41, NULL, '2022-06-19', '2022-06-25', 10, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '06', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(698, 8, 41, NULL, '2022-06-26', '2022-07-02', 11, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(699, 8, 41, NULL, '2022-07-03', '2022-07-09', 12, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(700, 8, 41, NULL, '2022-07-10', '2022-07-16', 13, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(701, 8, 41, NULL, '2022-07-17', '2022-07-23', 14, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(702, 8, 41, NULL, '2022-07-24', '2022-07-30', 15, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(703, 8, 41, NULL, '2022-07-31', '2022-08-06', 16, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '08', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(704, 8, 41, NULL, '2022-08-07', '2022-08-13', 17, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '08', '2022', '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(722, 8, 43, NULL, '2022-04-16', '2022-04-23', 1, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '04', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(723, 8, 43, NULL, '2022-04-24', '2022-04-30', 2, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '04', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(724, 8, 43, NULL, '2022-05-01', '2022-05-07', 3, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '05', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(725, 8, 43, NULL, '2022-05-08', '2022-05-14', 4, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '05', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(726, 8, 43, NULL, '2022-05-15', '2022-05-21', 5, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '05', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(727, 8, 43, NULL, '2022-05-22', '2022-05-28', 6, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '05', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(728, 8, 43, NULL, '2022-05-29', '2022-06-04', 7, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '06', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(729, 8, 43, NULL, '2022-06-05', '2022-06-11', 8, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '06', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(730, 8, 43, NULL, '2022-06-12', '2022-06-18', 9, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '06', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(731, 8, 43, NULL, '2022-06-19', '2022-06-25', 10, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '06', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(732, 8, 43, NULL, '2022-06-26', '2022-07-02', 11, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(733, 8, 43, NULL, '2022-07-03', '2022-07-09', 12, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(734, 8, 43, NULL, '2022-07-10', '2022-07-16', 13, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(735, 8, 43, NULL, '2022-07-17', '2022-07-23', 14, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(736, 8, 43, NULL, '2022-07-24', '2022-07-30', 15, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '07', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(737, 8, 43, NULL, '2022-07-31', '2022-08-06', 16, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '08', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(738, 8, 43, NULL, '2022-08-07', '2022-08-13', 17, '11667.000000', '0.000000', '0.000000', '1133.000000', '0.000000', '0.000000', '0.000000', '20992.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '33792.000000', '08', '2022', '2022-04-22 19:04:31', '2022-04-22 19:04:32'),
(756, 8, 45, NULL, '2022-04-16', '2022-04-23', 1, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '04', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(757, 8, 45, NULL, '2022-04-24', '2022-04-30', 2, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '04', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(758, 8, 45, NULL, '2022-05-01', '2022-05-07', 3, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '05', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(759, 8, 45, NULL, '2022-05-08', '2022-05-14', 4, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '05', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(760, 8, 45, NULL, '2022-05-15', '2022-05-21', 5, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '05', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(761, 8, 45, NULL, '2022-05-22', '2022-05-28', 6, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '05', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(762, 8, 45, NULL, '2022-05-29', '2022-06-04', 7, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '06', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(763, 8, 45, NULL, '2022-06-05', '2022-06-11', 8, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '06', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(764, 8, 45, NULL, '2022-06-12', '2022-06-18', 9, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '06', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(765, 8, 45, NULL, '2022-06-19', '2022-06-25', 10, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '06', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(766, 8, 45, NULL, '2022-06-26', '2022-07-02', 11, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(767, 8, 45, NULL, '2022-07-03', '2022-07-09', 12, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(768, 8, 45, NULL, '2022-07-10', '2022-07-16', 13, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(769, 8, 45, NULL, '2022-07-17', '2022-07-23', 14, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(770, 8, 45, NULL, '2022-07-24', '2022-07-30', 15, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(771, 8, 45, NULL, '2022-07-31', '2022-08-06', 16, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '08', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(772, 8, 45, NULL, '2022-08-07', '2022-08-13', 17, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '08', '2022', '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(773, 8, 44, NULL, '2022-04-16', '2022-04-23', 1, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '04', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(774, 8, 44, NULL, '2022-04-24', '2022-04-30', 2, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '04', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(775, 8, 44, NULL, '2022-05-01', '2022-05-07', 3, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '05', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(776, 8, 44, NULL, '2022-05-08', '2022-05-14', 4, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '05', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(777, 8, 44, NULL, '2022-05-15', '2022-05-21', 5, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '05', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(778, 8, 44, NULL, '2022-05-22', '2022-05-28', 6, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '05', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(779, 8, 44, NULL, '2022-05-29', '2022-06-04', 7, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '06', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(780, 8, 44, NULL, '2022-06-05', '2022-06-11', 8, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '06', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(781, 8, 44, NULL, '2022-06-12', '2022-06-18', 9, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '06', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56');
INSERT INTO `loan_repayment_schedules` (`id`, `created_by_id`, `loan_id`, `paid_by_date`, `from_date`, `due_date`, `installment`, `principal`, `principal_repaid_derived`, `principal_written_off_derived`, `interest`, `interest_repaid_derived`, `interest_written_off_derived`, `interest_waived_derived`, `fees`, `fees_repaid_derived`, `fees_written_off_derived`, `fees_waived_derived`, `penalties`, `penalties_repaid_derived`, `penalties_written_off_derived`, `penalties_waived_derived`, `total_due`, `month`, `year`, `created_at`, `updated_at`) VALUES
(782, 8, 44, NULL, '2022-06-19', '2022-06-25', 10, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '06', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(783, 8, 44, NULL, '2022-06-26', '2022-07-02', 11, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(784, 8, 44, NULL, '2022-07-03', '2022-07-09', 12, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(785, 8, 44, NULL, '2022-07-10', '2022-07-16', 13, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(786, 8, 44, NULL, '2022-07-17', '2022-07-23', 14, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(787, 8, 44, NULL, '2022-07-24', '2022-07-30', 15, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '07', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(788, 8, 44, NULL, '2022-07-31', '2022-08-06', 16, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '08', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(789, 8, 44, NULL, '2022-08-07', '2022-08-13', 17, '8750.000000', '0.000000', '0.000000', '850.000000', '0.000000', '0.000000', '0.000000', '15744.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '25344.000000', '08', '2022', '2022-04-22 19:19:56', '2022-04-22 19:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `loan_transactions`
--

CREATE TABLE `loan_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(65,6) NOT NULL,
  `credit` decimal(65,6) DEFAULT NULL,
  `debit` decimal(65,6) DEFAULT NULL,
  `principal_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `interest_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `fees_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `penalties_repaid_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `loan_transaction_type_id` bigint(20) UNSIGNED NOT NULL,
  `reversed` tinyint(4) NOT NULL DEFAULT 0,
  `reversible` tinyint(4) NOT NULL DEFAULT 0,
  `submitted_on` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `status` enum('pending','approved','declined') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_transaction` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_transactions`
--

INSERT INTO `loan_transactions` (`id`, `loan_id`, `created_by_id`, `branch_id`, `payment_detail_id`, `name`, `amount`, `credit`, `debit`, `principal_repaid_derived`, `interest_repaid_derived`, `fees_repaid_derived`, `penalties_repaid_derived`, `loan_transaction_type_id`, `reversed`, `reversible`, `submitted_on`, `due_date`, `created_on`, `status`, `reference`, `gateway_id`, `description`, `payment_gateway_data`, `online_transaction`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 1, 8, 'Disbursement', '1000000.000000', NULL, '1000000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2020-12-02', NULL, '2020-12-02', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-02 16:11:09', '2020-12-02 16:11:09'),
(4, 2, 1, 1, NULL, 'Interest Applied', '100002.000000', NULL, '100002.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2020-12-02', NULL, '2020-12-02', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-02 16:11:09', '2020-12-02 16:11:09'),
(5, 2, 1, NULL, 9, 'Repayment', '60.000000', '60.000000', NULL, '0.000000', '60.000000', '0.000000', '0.000000', 2, 0, 0, '2020-12-03', NULL, '2020-12-03', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-03 09:59:34', '2020-12-03 10:11:24'),
(12, 1, 1, 1, 16, 'Disbursement', '1000000.000000', NULL, '1000000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2020-09-22', NULL, '2020-12-21', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-21 08:55:59', '2020-12-21 08:55:59'),
(13, 1, 1, 1, NULL, 'Interest Applied', '100002.000000', NULL, '100002.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2020-09-22', NULL, '2020-12-21', NULL, NULL, NULL, NULL, NULL, 0, '2020-12-21 08:55:59', '2020-12-21 08:55:59'),
(14, 4, 1, 4, 17, 'Disbursement', '200000.000000', NULL, '200000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-16', NULL, '2022-04-18', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 17:25:42', '2022-04-18 17:25:42'),
(15, 4, 1, 4, NULL, 'Interest Applied', '54000.000000', NULL, '54000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-16', NULL, '2022-04-18', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 17:25:42', '2022-04-18 17:25:42'),
(29, 15, 1, 4, 24, 'Disbursement', '200000.000000', NULL, '200000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-16', NULL, '2022-04-18', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(30, 15, 1, 4, NULL, 'Interest Applied', '6545.000000', NULL, '6545.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-16', NULL, '2022-04-18', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(31, 16, 1, 4, 25, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-16', NULL, '2022-04-18', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(32, 16, 1, 4, NULL, 'Interest Applied', '4913.000000', NULL, '4913.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-16', NULL, '2022-04-18', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(33, 17, 1, 4, 26, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-16', NULL, '2022-04-18', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(34, 17, 1, 4, NULL, 'Interest Applied', '4913.000000', NULL, '4913.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-16', NULL, '2022-04-18', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(35, 18, 8, 4, 27, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(36, 18, 8, 4, NULL, 'Interest Applied', '8313.000000', NULL, '8313.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(37, 19, 8, 4, 28, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(38, 19, 8, 4, NULL, 'Interest Applied', '8313.000000', NULL, '8313.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(48, 21, 8, 4, 32, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 20:17:37', '2022-04-19 20:17:37'),
(49, 21, 8, 4, NULL, 'Interest Applied', '0.000000', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 20:17:37', '2022-04-19 20:17:37'),
(50, 21, 8, 4, NULL, 'Fee Applied', '0.000000', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 20:17:37', '2022-04-19 20:17:37'),
(51, 21, 8, NULL, NULL, 'Write Off', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 6, 1, 0, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 20:19:32', '2022-04-20 14:24:41'),
(52, 22, 1, 4, 33, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 20:44:11', '2022-04-19 20:44:11'),
(53, 22, 1, 4, NULL, 'Interest Applied', '0.000000', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 20:44:11', '2022-04-19 20:44:11'),
(54, 22, 1, 4, NULL, 'Fee Applied', '0.000000', NULL, '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 20:44:11', '2022-04-19 20:44:11'),
(55, 24, 1, 4, 34, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(56, 24, 1, 4, NULL, 'Interest Applied', '250750.000000', NULL, '250750.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(57, 24, 1, 4, NULL, 'Fee Applied', '199750000.000000', NULL, '199750000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-19', NULL, '2022-04-19', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(71, 26, 8, 4, 41, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(72, 26, 8, 4, NULL, 'Interest Applied', '29750.000000', NULL, '29750.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(73, 27, 8, 3, 42, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(74, 27, 8, 3, NULL, 'Interest Applied', '29750.000000', NULL, '29750.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(75, 27, 8, 3, NULL, 'Fee Applied', '44625.000000', NULL, '44625.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(76, 28, 8, 3, 43, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(77, 28, 8, 3, NULL, 'Interest Applied', '29750.000000', NULL, '29750.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(78, 28, 8, 3, NULL, 'Fee Applied', '151725.000000', NULL, '151725.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(85, 30, 8, 3, 46, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(86, 30, 8, 3, NULL, 'Interest Applied', '14450.000000', NULL, '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(87, 30, 8, 3, NULL, 'Fee Applied', '264384.000000', NULL, '264384.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(88, 29, 8, 3, 47, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(89, 29, 8, 3, NULL, 'Interest Applied', '14450.000000', NULL, '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(90, 29, 8, 3, NULL, 'Fee Applied', '261120.000000', NULL, '261120.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 21:18:23', '2022-04-20 21:18:23'),
(91, 31, 8, 3, 48, 'Disbursement', '200000.000000', NULL, '200000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(92, 31, 8, 3, NULL, 'Interest Applied', '19261.000000', NULL, '19261.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(93, 31, 8, 3, NULL, 'Fee Applied', '356864.000000', NULL, '356864.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-20', NULL, '2022-04-20', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(100, 32, 8, 3, 51, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-21', NULL, '2022-04-21', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(101, 32, 8, 3, NULL, 'Interest Applied', '14450.000000', NULL, '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-21', NULL, '2022-04-21', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(102, 32, 8, 3, NULL, 'Fee Applied', '1834368.000000', NULL, '1834368.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-21', NULL, '2022-04-21', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(127, 40, 8, 5, 60, 'Disbursement', '200000.000000', NULL, '200000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(128, 40, 8, 5, NULL, 'Interest Applied', '19261.000000', NULL, '19261.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(129, 40, 8, 5, NULL, 'Fee Applied', '356864.000000', NULL, '356864.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(130, 41, 8, 5, 61, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(131, 41, 8, 5, NULL, 'Interest Applied', '14450.000000', NULL, '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(132, 41, 8, 5, NULL, 'Fee Applied', '267648.000000', NULL, '267648.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(135, 43, 8, 5, 63, 'Disbursement', '200000.000000', NULL, '200000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 19:04:32', '2022-04-22 19:04:32'),
(136, 43, 8, 5, NULL, 'Interest Applied', '19261.000000', NULL, '19261.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 19:04:32', '2022-04-22 19:04:32'),
(137, 43, 8, 5, NULL, 'Fee Applied', '356864.000000', NULL, '356864.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 19:04:32', '2022-04-22 19:04:32'),
(140, 45, 8, 5, 65, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(141, 45, 8, 5, NULL, 'Interest Applied', '14450.000000', NULL, '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(142, 45, 8, 5, NULL, 'Fee Applied', '267648.000000', NULL, '267648.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(143, 44, 8, 5, 66, 'Disbursement', '150000.000000', NULL, '150000.000000', '0.000000', '0.000000', '0.000000', '0.000000', 1, 0, 0, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(144, 44, 8, 5, NULL, 'Interest Applied', '14450.000000', NULL, '14450.000000', '0.000000', '0.000000', '0.000000', '0.000000', 11, 0, 0, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(145, 44, 8, 5, NULL, 'Fee Applied', '267648.000000', NULL, '267648.000000', '0.000000', '0.000000', '0.000000', '0.000000', 10, 0, 1, '2022-04-16', NULL, '2022-04-22', NULL, NULL, NULL, NULL, NULL, 0, '2022-04-22 19:19:56', '2022-04-22 19:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `loan_transaction_processing_strategies`
--

CREATE TABLE `loan_transaction_processing_strategies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_transaction_processing_strategies`
--

INSERT INTO `loan_transaction_processing_strategies` (`id`, `name`, `translated_name`, `active`) VALUES
(1, 'Penalties, Fees, Interest, Principal order', 'Penalties, Fees, Interest, Principal order', 1),
(2, 'Principal, Interest, Penalties, Fees Order', 'Principal, Interest, Penalties, Fees Order', 1),
(3, 'Interest, Principal, Penalties, Fees Order', 'Interest, Principal, Penalties, Fees Order', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_transaction_types`
--

CREATE TABLE `loan_transaction_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_transaction_types`
--

INSERT INTO `loan_transaction_types` (`id`, `name`, `translated_name`, `active`) VALUES
(1, 'Disbursement', 'Disbursement', 1),
(2, 'Repayment', 'Repayment', 1),
(3, 'Contra', 'Contra', 1),
(4, 'Waive Interest', 'Waive Interest', 1),
(5, 'Repayment At Disbursement', 'Repayment At Disbursement', 1),
(6, 'Write Off', 'Write Off', 1),
(7, 'Marked for Rescheduling', 'Marked for Rescheduling', 1),
(8, 'Recovery Repayment', 'Recovery Repayment', 1),
(9, 'Waive Charges', 'Waive Charges', 1),
(10, 'Apply Charges', 'Apply Charges', 1),
(11, 'Apply Interest', 'Apply Interest', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `parent_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_order` int(11) DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_id`, `parent_id`, `parent_slug`, `is_parent`, `name`, `title`, `slug`, `description`, `menu_order`, `url`, `permissions`, `icon`, `module`, `created_at`, `updated_at`) VALUES
(65, NULL, NULL, '', 1, 'Activity Logs', NULL, 'activity_log', NULL, 60, 'activity_log', 'activitylog.activity_logs.index', 'fa fa-database', 'Activitylog', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(89, NULL, NULL, '', 1, 'Dashboard', NULL, 'dashboard', NULL, 0, 'dashboard', 'dashboard.index', 'fas fa-home', 'Dashboard', '2020-12-16 10:07:59', '2020-12-16 10:07:59'),
(106, NULL, NULL, '', 1, 'Accounting', NULL, 'accounting', NULL, 3, 'accounting', '', 'fas fa-money-bill', 'Accounting', '2020-12-16 10:14:53', '2020-12-16 10:14:53'),
(107, NULL, 106, 'accounting', 0, 'View Charts of Accounts', NULL, 'view_charts_of_accounts', NULL, 4, 'accounting/chart_of_account', 'accounting.chart_of_accounts.index', 'far fa-circle', 'Accounting', '2020-12-16 10:14:53', '2020-12-16 10:14:53'),
(108, NULL, 106, 'accounting', 0, 'Journal Entries', NULL, 'journal_entries', NULL, 5, 'accounting/journal_entry', 'accounting.journal_entries.index', 'far fa-circle', 'Accounting', '2020-12-16 10:14:53', '2020-12-16 10:14:53'),
(109, NULL, NULL, '', 1, 'Branches', NULL, 'branches', NULL, 6, 'branch', '', 'fas fa-building', 'Branch', '2020-12-16 10:16:00', '2020-12-16 10:16:00'),
(110, NULL, 109, 'branches', 0, 'View Branches', NULL, 'view_branches', NULL, 7, 'branch', 'branch.branches.index', 'far fa-circle', 'Branch', '2020-12-16 10:16:00', '2020-12-16 10:16:00'),
(111, NULL, 109, 'branches', 0, 'Create Branch', NULL, 'create_branch', NULL, 8, 'branch/create', 'branch.branches.create', 'far fa-circle', 'Branch', '2020-12-16 10:16:00', '2020-12-16 10:16:00'),
(117, NULL, NULL, '', 1, 'Manage Modules', NULL, 'modules', NULL, 30, 'module', 'core.modules.index', 'fas fa-plug', 'Core', '2020-12-16 10:20:25', '2020-12-16 10:20:25'),
(118, NULL, NULL, '', 1, 'Manage Menu', NULL, 'menu', NULL, 31, 'menu', 'core.menu.index', 'fas fa-bars', 'Core', '2020-12-16 10:20:25', '2020-12-16 10:20:25'),
(119, NULL, 79, 'settings', 0, 'Payment Gateways', NULL, 'menu', NULL, 32, 'settings/payment_gateway', 'core.payment_gateways.index', 'fas fa-money-bill', 'Core', '2020-12-16 10:20:25', '2020-12-16 10:20:25'),
(120, NULL, NULL, '', 1, 'Themes', NULL, 'themes', NULL, 40, 'theme', 'core.themes.index', 'fas fa-palette', 'Core', '2020-12-16 10:20:25', '2020-12-16 10:20:25'),
(126, NULL, NULL, '', 1, 'Payroll', NULL, 'payroll', NULL, 10, 'payroll', 'payroll.payroll.index', 'fab fa-paypal', 'Payroll', '2020-12-16 10:22:53', '2020-12-16 10:22:53'),
(127, NULL, 126, 'payroll', 0, 'View Payroll', NULL, 'view_payroll', NULL, 11, 'payroll', 'payroll.payroll.index', 'far fa-circle', 'Payroll', '2020-12-16 10:22:53', '2020-12-16 10:22:53'),
(128, NULL, 126, 'payroll', 0, 'Create Payroll', NULL, 'create_payroll', NULL, 12, 'payroll/create', 'payroll.payroll.create', 'far fa-circle', 'Payroll', '2020-12-16 10:22:53', '2020-12-16 10:22:53'),
(129, NULL, 126, 'payroll', 0, 'Manage Payroll Items', NULL, 'manage_payroll_items', NULL, 12, 'payroll/item', 'payroll.payroll.items.index', 'far fa-circle', 'Payroll', '2020-12-16 10:22:53', '2020-12-16 10:22:53'),
(130, NULL, 126, 'payroll', 0, 'Manage Payroll Templates', NULL, 'manage_payroll_templates', NULL, 12, 'payroll/template', 'payroll.payroll.templates.index', 'far fa-circle', 'Payroll', '2020-12-16 10:22:53', '2020-12-16 10:22:53'),
(138, NULL, NULL, '', 1, 'Loans', NULL, 'loans', NULL, 18, 'loan', '', 'fas fa-money-bill', 'Loan', '2020-12-16 10:26:27', '2020-12-16 10:26:27'),
(139, NULL, 138, 'loans', 0, 'View Loans', NULL, 'view_loans', NULL, 19, 'loan', 'loan.loans.index', 'far fa-circle', 'Loan', '2020-12-16 10:26:27', '2020-12-16 10:26:27'),
(140, NULL, 138, 'loans', 0, 'View Applications', NULL, 'view_applications', NULL, 20, 'loan/application', 'loan.loans.index', 'far fa-circle', 'Loan', '2020-12-16 10:26:27', '2020-12-16 10:26:27'),
(141, NULL, 138, 'loans', 0, 'Create Loan', NULL, 'create_loan', NULL, 21, 'loan/create', 'loan.loans.create', 'far fa-circle', 'Loan', '2020-12-16 10:26:27', '2020-12-16 10:26:27'),
(142, NULL, 138, 'loans', 0, 'Manage Products', NULL, 'manage_products', NULL, 22, 'loan/product', 'loan.loans.products.index', 'far fa-circle', 'Loan', '2020-12-16 10:26:27', '2020-12-16 10:26:27'),
(143, NULL, 138, 'loans', 0, 'Manage Charges', NULL, 'manage_charges', NULL, 23, 'loan/charge', 'loan.loans.charges.index', 'far fa-circle', 'Loan', '2020-12-16 10:26:27', '2020-12-16 10:26:27'),
(144, NULL, 138, 'loans', 0, 'Loan Calculator', NULL, 'loan_calculator', NULL, 24, 'loan/calculator', 'loan.loans.index', 'far fa-circle', 'Loan', '2020-12-16 10:26:27', '2020-12-16 10:26:27'),
(150, NULL, NULL, '', 1, 'Communication', NULL, 'communication', NULL, 13, 'communication', '', 'fas fa-envelope', 'Communication', '2020-12-16 10:29:01', '2020-12-16 10:29:01'),
(151, NULL, 150, 'communication', 0, 'View Campaigns', NULL, 'view_campaigns', NULL, 14, 'communication/campaign', 'communication.campaigns.index', 'far fa-circle', 'Communication', '2020-12-16 10:29:01', '2020-12-16 10:29:01'),
(152, NULL, 150, 'communication', 0, 'Create Campaign', NULL, 'create_campaign', NULL, 15, 'communication/campaign/create', 'communication.campaigns.create', 'far fa-circle', 'Communication', '2020-12-16 10:29:01', '2020-12-16 10:29:01'),
(153, NULL, 150, 'communication', 0, 'View Logs', NULL, 'view_logs', NULL, 16, 'communication/log', 'communication.logs.index', 'far fa-circle', 'Communication', '2020-12-16 10:29:01', '2020-12-16 10:29:01'),
(154, NULL, 150, 'communication', 0, 'Manage SMS Gateways', NULL, 'manage_sms_gateways', NULL, 17, 'communication/sms_gateway', 'communication.sms_gateways.index', 'far fa-circle', 'Communication', '2020-12-16 10:29:01', '2020-12-16 10:29:01'),
(155, NULL, NULL, '', 1, 'Expenses', NULL, 'expenses', NULL, 20, 'expense', 'expense.expenses.index', 'fas fa-share', 'Expense', '2020-12-16 10:30:24', '2020-12-16 10:30:24'),
(156, NULL, 155, 'expenses', 0, 'View Expenses', NULL, 'view_expenses', NULL, 0, 'expense', 'expense.expenses.index', 'far fa-circle', 'Expense', '2020-12-16 10:30:24', '2020-12-16 10:30:24'),
(157, NULL, 155, 'expenses', 0, 'Create Expense', NULL, 'create_expense', NULL, 1, 'expense/create', 'expense.expenses.create', 'far fa-circle', 'Expense', '2020-12-16 10:30:24', '2020-12-16 10:30:24'),
(158, NULL, 155, 'expenses', 0, 'Manage Expense Types', NULL, 'manage_expense_types', NULL, 2, 'expense/type', 'expense.expenses.types.index', 'far fa-circle', 'Expense', '2020-12-16 10:30:24', '2020-12-16 10:30:24'),
(160, NULL, NULL, 'report', 1, 'Reports', NULL, 'reports', NULL, 20, 'report', 'reports.index', 'fas fa-chart-bar', 'Report', '2020-12-16 10:32:37', '2020-12-16 10:32:37'),
(161, NULL, NULL, '', 1, 'Custom Fields', NULL, 'custom_fields', NULL, 25, 'custom_field', '', 'fas fa-list', 'CustomField', '2020-12-16 10:34:09', '2020-12-16 10:34:09'),
(164, NULL, NULL, '', 1, 'Savings', NULL, 'savings', NULL, 25, 'savings', '', 'fas fa-university', 'Savings', '2020-12-16 10:36:25', '2020-12-16 10:36:25'),
(165, NULL, 164, 'savings', 0, 'View Savings', NULL, 'view_savings', NULL, 26, 'savings', 'savings.savings.index', 'far fa-circle', 'Savings', '2020-12-16 10:36:25', '2020-12-16 10:36:25'),
(166, NULL, 164, 'savings', 0, 'Create Savings', NULL, 'create_savings', NULL, 27, 'savings/create', 'savings.savings.create', 'far fa-circle', 'Savings', '2020-12-16 10:36:25', '2020-12-16 10:36:25'),
(167, NULL, 164, 'savings', 0, 'Manage Products', NULL, 'manage_products', NULL, 28, 'savings/product', 'savings.savings.products.index', 'far fa-circle', 'Savings', '2020-12-16 10:36:25', '2020-12-16 10:36:25'),
(168, NULL, 164, 'savings', 0, 'Manage Charges', NULL, 'manage_charges', NULL, 29, 'savings/charge', 'savings.savings.charges.index', 'far fa-circle', 'Savings', '2020-12-16 10:36:25', '2020-12-16 10:36:25'),
(169, NULL, NULL, '', 1, 'Income', NULL, 'income', NULL, 25, 'income', 'income.income.index', 'fas fa-money-bill', 'Income', '2020-12-16 10:38:36', '2020-12-16 10:38:36'),
(170, NULL, 169, 'income', 0, 'View Income', NULL, 'view_assets', NULL, 7, 'income', 'income.income.index', 'far fa-circle', 'Income', '2020-12-16 10:38:36', '2020-12-16 10:38:36'),
(171, NULL, 169, 'income', 0, 'Create Income', NULL, 'create_asset', NULL, 8, 'income/create', 'income.income.create', 'far fa-circle', 'Income', '2020-12-16 10:38:36', '2020-12-16 10:38:36'),
(172, NULL, 169, 'income', 0, 'Manage Income Types', NULL, 'manage_asset_types', NULL, 9, 'income/type', 'income.income.types.index', 'far fa-circle', 'Income', '2020-12-16 10:38:36', '2020-12-16 10:38:36'),
(182, NULL, NULL, '', 1, 'Shares', NULL, 'shares', NULL, 30, 'share', 'share.shares.index', 'fas fa-database', 'Share', '2020-12-16 10:43:29', '2020-12-16 10:43:29'),
(183, NULL, 182, 'shares', 0, 'View Shares', NULL, 'view_shares', NULL, 1, 'share', 'share.shares.index', 'far fa-circle', 'Share', '2020-12-16 10:43:29', '2020-12-16 10:43:29'),
(184, NULL, 182, 'shares', 0, 'Create Share', NULL, 'create_share', NULL, 2, 'share/create', 'share.shares.create', 'far fa-circle', 'Share', '2020-12-16 10:43:29', '2020-12-16 10:43:29'),
(185, NULL, 182, 'shares', 0, 'Manage Products', NULL, 'manage_share_products', NULL, 3, 'share/product', 'share.shares.products.index', 'far fa-circle', 'Share', '2020-12-16 10:43:29', '2020-12-16 10:43:29'),
(186, NULL, 182, 'shares', 0, 'Manage Charges', NULL, 'manage_share_charges', NULL, 3, 'share/charge', 'share.shares.charges.index', 'far fa-circle', 'Share', '2020-12-16 10:43:29', '2020-12-16 10:43:29'),
(187, NULL, NULL, '', 1, 'Settings', NULL, 'settings', NULL, 31, 'setting', 'setting.setting.index', 'fas fa-cogs', 'Setting', '2020-12-16 10:44:59', '2020-12-16 10:44:59'),
(188, NULL, 187, 'settings', 0, 'Organisation Settings', NULL, 'organisation_settings', NULL, 32, 'setting/organisation', 'setting.setting.index', 'far fa-circle', 'Setting', '2020-12-16 10:44:59', '2020-12-16 10:44:59'),
(189, NULL, 187, 'settings', 0, 'General Settings', NULL, 'general_settings', NULL, 33, 'setting/general', 'setting.setting.index', 'far fa-circle', 'Setting', '2020-12-16 10:44:59', '2020-12-16 10:44:59'),
(190, NULL, 187, 'settings', 0, 'Email Settings', NULL, 'email_settings', NULL, 34, 'setting/email', 'setting.setting.index', 'far fa-circle', 'Setting', '2020-12-16 10:44:59', '2020-12-16 10:44:59'),
(191, NULL, 187, 'settings', 0, 'SMS Settings', NULL, 'sms_settings', NULL, 35, 'setting/sms', 'setting.setting.index', 'far fa-circle', 'Setting', '2020-12-16 10:44:59', '2020-12-16 10:44:59'),
(192, NULL, 187, 'settings', 0, 'System Settings', NULL, 'system_settings', NULL, 36, 'setting/system', 'setting.setting.index', 'far fa-circle', 'Setting', '2020-12-16 10:44:59', '2020-12-16 10:44:59'),
(193, NULL, 187, 'settings', 0, 'System Update', NULL, 'system_update', NULL, 37, 'setting/system_update', 'setting.setting.index', 'far fa-circle', 'Setting', '2020-12-16 10:44:59', '2020-12-16 10:44:59'),
(194, NULL, 187, 'settings', 0, 'Other Settings', NULL, 'other_settings', NULL, 38, 'setting/other', 'setting.setting.index', 'far fa-circle', 'Setting', '2020-12-16 10:44:59', '2020-12-16 10:44:59'),
(195, NULL, NULL, '', 1, 'Assets', NULL, 'assets', NULL, 30, 'asset', 'asset.assets.index', 'fas fa-building', 'Asset', '2020-12-16 10:46:22', '2020-12-16 10:46:22'),
(196, NULL, 195, 'assets', 0, 'View Assets', NULL, 'view_assets', NULL, 7, 'asset', 'asset.assets.index', 'far fa-circle', 'Asset', '2020-12-16 10:46:22', '2020-12-16 10:46:22'),
(197, NULL, 195, 'assets', 0, 'Create Asset', NULL, 'create_asset', NULL, 8, 'asset/create', 'asset.assets.create', 'far fa-circle', 'Asset', '2020-12-16 10:46:22', '2020-12-16 10:46:22'),
(198, NULL, 195, 'assets', 0, 'Manage Asset Types', NULL, 'manage_asset_types', NULL, 9, 'asset/type', 'asset.assets.types.index', 'far fa-circle', 'Asset', '2020-12-16 10:46:22', '2020-12-16 10:46:22'),
(199, NULL, NULL, '', 1, 'Clients', NULL, 'clients', NULL, 10, 'client', '', 'fas fa-users', 'Client', '2020-12-17 08:03:47', '2020-12-17 08:03:47'),
(200, NULL, 199, 'clients', 0, 'View Clients', NULL, 'view_clients', NULL, 11, 'client', 'client.clients.index', 'far fa-circle', 'Client', '2020-12-17 08:03:47', '2020-12-17 08:03:47'),
(201, NULL, 199, 'clients', 0, 'Create Client', NULL, 'create_client', NULL, 12, 'client/create', 'client.clients.create', 'far fa-circle', 'Client', '2020-12-17 08:03:47', '2020-12-17 08:03:47'),
(202, NULL, NULL, '', 1, 'Users', NULL, 'users', NULL, 27, 'user', '', 'fas fa-users', 'User', '2021-01-15 11:25:39', '2021-01-15 11:25:39'),
(203, NULL, 202, 'users', 0, 'View Users', NULL, 'view_loans', NULL, 28, 'user', 'user.users.index', 'far fa-circle', 'User', '2021-01-15 11:25:39', '2021-01-15 11:25:39'),
(204, NULL, 202, 'users', 0, 'Create User', NULL, 'create_loan', NULL, 29, 'user/create', 'user.users.create', 'far fa-circle', 'User', '2021-01-15 11:25:39', '2021-01-15 11:25:39'),
(205, NULL, 202, 'users', 0, 'Manage Roles', NULL, 'manage_roles', NULL, 30, 'user/role', 'user.roles.index', 'far fa-circle', 'User', '2021-01-15 11:25:39', '2021-01-15 11:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(955, '2019_07_06_133107_create_settings_table', 1),
(956, '2018_08_08_100000_create_telescope_entries_table', 2),
(957, '2019_07_06_135714_create_countries_table', 2),
(958, '2019_07_06_140045_create_currencies_table', 2),
(959, '2019_07_06_140908_create_timezones_table', 2),
(960, '2019_07_07_110645_create_payment_types_table', 2),
(961, '2019_07_07_110717_create_payment_details_table', 2),
(962, '2019_07_10_225923_create_notifications_table', 2),
(963, '2019_07_27_080313_create_jobs_table', 2),
(964, '2019_09_07_001758_create_menus_table', 2),
(965, '2019_11_04_152950_create_tax_rates_table', 2),
(966, '2020_01_14_114056_create_failed_jobs_table', 2),
(967, '2014_10_12_000000_create_users_table', 3),
(968, '2014_10_12_100000_create_password_resets_table', 3),
(969, '2019_07_01_214429_create_permission_tables', 3),
(970, '2019_08_03_085238_create_widgets_table', 4),
(971, '2019_07_06_111125_create_branches_table', 5),
(972, '2019_07_06_111419_create_branch_users_table', 5),
(973, '2019_07_07_093258_create_chart_of_accounts_table', 6),
(974, '2019_07_07_093648_create_journal_entries_table', 6),
(975, '2019_09_26_153830_create_asset_types_table', 7),
(976, '2019_09_26_153906_create_assets_table', 7),
(977, '2019_09_26_153953_create_asset_notes_table', 7),
(978, '2019_09_26_153954_create_asset_maintenance_types_table', 7),
(979, '2019_09_26_154012_create_asset_maintenance_table', 7),
(980, '2019_09_26_154050_create_asset_files_table', 7),
(981, '2019_09_26_154103_create_asset_pictures_table', 7),
(982, '2019_09_27_063335_create_asset_depreciation_table', 7),
(983, '2019_07_08_130052_create_titles_table', 8),
(984, '2019_07_08_130053_create_client_relationships_table', 8),
(985, '2019_07_08_130533_create_professions_table', 8),
(986, '2019_07_08_150347_create_client_types_table', 8),
(987, '2019_07_08_151636_create_client_identification_types_table', 8),
(988, '2019_07_08_182818_create_clients_table', 8),
(989, '2019_07_08_182911_create_client_files_table', 8),
(990, '2019_07_08_182938_create_client_identification_table', 8),
(991, '2019_07_08_183031_create_client_next_of_kin_table', 8),
(992, '2019_07_11_180428_create_client_users_table', 8),
(993, '2019_08_05_093954_create_savings_charge_options_table', 9),
(994, '2019_08_05_094221_create_savings_charge_types_table', 9),
(995, '2019_08_05_094458_create_savings_charges_table', 9),
(996, '2019_08_05_094544_create_savings_transaction_types_table', 9),
(997, '2019_08_05_094956_create_savings_products_table', 9),
(998, '2019_08_05_095030_create_savings_table', 9),
(999, '2019_08_05_095031_create_savings_linked_charges_table', 9),
(1000, '2019_08_05_095048_create_savings_transactions_table', 9),
(1001, '2019_08_05_095148_create_savings_product_linked_charges_table', 9),
(1002, '2019_07_15_094401_create_loan_transaction_processing_strategies_table', 10),
(1003, '2019_07_15_100526_create_loan_charge_types_table', 10),
(1004, '2019_07_15_100649_create_loan_charge_options_table', 10),
(1005, '2019_07_15_104331_create_loan_credit_checks_table', 10),
(1006, '2019_07_15_141230_create_loan_purposes_table', 10),
(1007, '2019_07_15_201056_create_loan_transaction_types_table', 10),
(1008, '2019_07_15_214326_create_funds_table', 10),
(1009, '2019_07_15_214410_create_loan_charges_table', 10),
(1010, '2019_07_15_214940_create_loan_products_table', 10),
(1011, '2019_07_15_215017_create_loan_product_linked_charges_table', 10),
(1012, '2019_07_15_215107_create_loan_disbursement_channels_table', 10),
(1013, '2019_07_15_215314_create_loan_collateral_types_table', 10),
(1014, '2019_07_15_215355_create_loans_table', 10),
(1015, '2019_07_15_215451_create_loan_collateral_table', 10),
(1016, '2019_07_15_215546_create_loan_repayment_schedules_table', 10),
(1017, '2019_07_15_215604_create_loan_transactions_table', 10),
(1018, '2019_07_15_221258_create_loan_linked_charges_table', 10),
(1019, '2019_07_17_130522_create_loan_product_linked_credit_checks_table', 10),
(1020, '2019_07_17_130536_create_loan_linked_credit_checks_table', 10),
(1021, '2019_07_17_162121_create_loan_guarantors_table', 10),
(1022, '2019_07_17_194223_create_loan_officer_history_table', 10),
(1023, '2019_07_17_194247_create_loan_history_table', 10),
(1024, '2019_07_17_194817_create_loan_files_table', 10),
(1025, '2019_07_17_194827_create_loan_notes_table', 10),
(1026, '2019_08_30_074012_create_loan_applications_table', 10),
(1027, '2019_07_27_161835_create_communication_campaign_business_rules_table', 11),
(1028, '2019_07_27_161902_create_communication_campaign_attachment_types_table', 11),
(1029, '2019_07_28_150020_create_sms_gateways_table', 11),
(1030, '2019_07_28_150053_create_communication_campaigns_table', 11),
(1031, '2019_07_28_161940_create_communication_campaign_logs_table', 11),
(1032, '2016_06_01_000001_create_oauth_auth_codes_table', 12),
(1033, '2016_06_01_000002_create_oauth_access_tokens_table', 12),
(1034, '2016_06_01_000003_create_oauth_refresh_tokens_table', 12),
(1035, '2016_06_01_000004_create_oauth_clients_table', 12),
(1036, '2016_06_01_000005_create_oauth_personal_access_clients_table', 12),
(1037, '2019_09_22_080345_create_payroll_items_table', 13),
(1038, '2019_09_22_081303_create_payroll_templates_table', 13),
(1039, '2019_09_22_081304_create_payroll_template_items_table', 13),
(1040, '2019_09_22_081326_create_payroll_table', 13),
(1041, '2019_09_22_081441_create_payroll_items_meta_table', 13),
(1042, '2019_09_22_082657_create_payroll_payments_table', 13),
(1043, '2019_09_15_164302_create_custom_fields_table', 14),
(1044, '2019_09_15_164434_create_custom_fields_meta_table', 14),
(1045, '2020_02_24_114006_create_expense_types_table', 15),
(1046, '2020_02_24_114018_create_expenses_table', 15),
(1047, '2020_02_24_114052_create_income_types_table', 16),
(1048, '2020_02_24_114104_create_income_table', 16),
(1049, '2019_07_15_125704_create_activity_log_table', 17),
(1050, '2020_08_31_141646_create_wallets_table', 18),
(1051, '2020_08_31_150716_create_wallet_transactions_table', 18),
(1065, '2020_09_10_171351_create_share_charge_options_table', 19),
(1066, '2020_09_10_171936_create_share_transaction_types_table', 19),
(1067, '2020_09_10_171940_create_share_charge_types_table', 19),
(1068, '2020_09_10_171940_create_share_charges_table', 19),
(1069, '2020_09_10_171959_create_share_products_table', 19),
(1070, '2020_09_10_172033_create_share_product_linked_charges_table', 19),
(1071, '2020_09_10_172054_create_shares_table', 19),
(1072, '2020_09_10_172110_create_share_linked_charges_table', 19),
(1073, '2020_09_10_172120_create_share_transactions_table', 19),
(1074, '2020_09_10_172155_create_share_market_periods_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'Modules\\User\\Entities\\User', 1),
(1, 'Modules\\User\\Entities\\User', 3),
(1, 'Modules\\User\\Entities\\User', 8),
(2, 'Modules\\User\\Entities\\User', 7),
(4, 'Modules\\User\\Entities\\User', 12),
(5, 'Modules\\User\\Entities\\User', 9),
(9, 'Modules\\User\\Entities\\User', 10),
(10, 'Modules\\User\\Entities\\User', 11);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('20a72c3f-590f-4c35-a038-7e4860bf33ce', 'Modules\\User\\Notifications\\DemoNotification', 'Modules\\User\\Entities\\User', 1, '{\"url\":\"http:\\/\\/loan.local\\/user\\/profile\",\"message\":\"Sample notification\"}', '2020-12-14 14:35:44', '2020-10-15 16:54:53', '2020-12-14 14:35:44'),
('a5d5aec4-f1d0-4f38-85d7-f5942a6d4843', 'Modules\\User\\Notifications\\DemoNotification', 'Modules\\User\\Entities\\User', 1, '{\"url\":\"http:\\/\\/loan.local\\/user\\/profile\",\"message\":\"Sample notification\"}', '2020-12-16 07:18:04', '2020-10-15 16:55:11', '2020-12-16 07:18:04'),
('ff641911-2c54-4dd5-a947-dde7a2255d6b', 'Modules\\User\\Notifications\\DemoNotification', 'Modules\\User\\Entities\\User', 1, '{\"url\":\"http:\\/\\/loan.local\\/user\\/profile\",\"message\":\"Sample notification\"}', '2020-12-09 09:21:22', '2020-10-15 16:55:07', '2020-12-09 09:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('kilasishaba@yahoo.com', '$2y$10$dl0CGh5bb9ccGDO2vnkhOuZWyVablYf3.4As5SQTBG6rM6e7BKUZK', '2022-04-15 22:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `payment_type_id` int(11) DEFAULT NULL,
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` int(11) DEFAULT NULL,
  `cheque_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `routing_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `created_by_id`, `payment_type_id`, `transaction_type`, `reference`, `cheque_number`, `receipt`, `account_number`, `bank_name`, `routing_code`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-22 14:06:16', '2020-09-22 14:06:16'),
(2, 1, 1, 'journal_manual_entry', NULL, NULL, 'ff', 'ff', 'ff', 'ff', NULL, '2020-10-20 12:22:54', '2020-10-20 12:22:54'),
(3, 1, NULL, 'expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-22 16:56:55', '2020-10-22 16:56:55'),
(4, 1, NULL, 'expense', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-22 16:57:14', '2020-10-22 16:57:14'),
(5, 1, NULL, 'income', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 08:08:29', '2020-10-23 08:08:29'),
(6, 1, NULL, 'income', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23 08:12:43', '2020-10-23 08:12:43'),
(7, 1, 1, 'payroll_transaction', NULL, 'dd', 'fd', 'dd', 'dffd', 'ff', 'ff ff', '2020-11-27 08:35:07', '2020-11-27 08:42:16'),
(8, 1, 1, 'loan_transaction', NULL, 'ddd', NULL, 'dd', NULL, NULL, NULL, '2020-12-02 16:11:09', '2020-12-02 16:11:09'),
(9, 1, 1, 'loan_transaction', NULL, 'gg', 'e44', '23', 'ggg5f', 'ggf', 'jj', '2020-12-03 09:59:34', '2020-12-03 10:11:24'),
(10, 1, 1, 'wallet_transaction', NULL, 'ff', 'dad', 'sd ff', 'dd', 'cc', 'dss dd', '2020-12-04 18:16:07', '2020-12-04 18:20:06'),
(11, 1, 1, 'savings_transaction', NULL, 'ff', NULL, 'ff', NULL, 'ggg', NULL, '2020-12-06 18:09:38', '2020-12-06 18:10:56'),
(12, 1, 1, 'savings_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-06 18:13:21', '2020-12-06 18:13:21'),
(13, 1, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-10 08:56:06', '2020-12-10 08:56:06'),
(14, 1, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-10 08:56:55', '2020-12-10 08:56:55'),
(15, 1, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-10 09:12:10', '2020-12-10 09:12:10'),
(16, 1, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-21 08:55:59', '2020-12-21 08:55:59'),
(17, 1, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 17:25:42', '2022-04-18 17:25:42'),
(18, 1, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 19:15:50', '2022-04-18 19:15:50'),
(19, 1, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 19:23:35', '2022-04-18 19:23:35'),
(20, 1, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 19:28:57', '2022-04-18 19:28:57'),
(21, 1, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 19:35:47', '2022-04-18 19:35:47'),
(22, 1, 2, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 20:42:57', '2022-04-18 20:42:57'),
(23, 1, 2, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 20:49:07', '2022-04-18 20:49:07'),
(24, 1, 2, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 20:59:09', '2022-04-18 20:59:09'),
(25, 1, 2, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 21:13:36', '2022-04-18 21:13:36'),
(26, 1, 2, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-18 21:26:53', '2022-04-18 21:26:53'),
(27, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-19 18:58:59', '2022-04-19 18:58:59'),
(28, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-19 19:17:10', '2022-04-19 19:17:10'),
(29, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-19 19:27:16', '2022-04-19 19:27:16'),
(30, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-19 19:43:50', '2022-04-19 19:43:50'),
(31, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-19 20:05:27', '2022-04-19 20:05:27'),
(32, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-19 20:17:37', '2022-04-19 20:17:37'),
(33, 1, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-19 20:44:11', '2022-04-19 20:44:11'),
(34, 1, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-19 21:39:06', '2022-04-19 21:39:06'),
(35, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 14:17:44', '2022-04-20 14:17:44'),
(36, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 14:33:07', '2022-04-20 14:33:07'),
(37, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 19:13:12', '2022-04-20 19:13:12'),
(38, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 19:29:43', '2022-04-20 19:29:43'),
(39, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 19:32:42', '2022-04-20 19:32:42'),
(40, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 19:37:22', '2022-04-20 19:37:22'),
(41, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 19:50:52', '2022-04-20 19:50:52'),
(42, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 20:07:13', '2022-04-20 20:07:13'),
(43, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 20:23:19', '2022-04-20 20:23:19'),
(44, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 20:35:50', '2022-04-20 20:35:50'),
(45, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 20:37:40', '2022-04-20 20:37:40'),
(46, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 21:14:55', '2022-04-20 21:14:55'),
(47, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 21:18:22', '2022-04-20 21:18:22'),
(48, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 21:21:42', '2022-04-20 21:21:42'),
(49, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 11:40:03', '2022-04-21 11:40:03'),
(50, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 11:47:34', '2022-04-21 11:47:34'),
(51, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 11:50:05', '2022-04-21 11:50:05'),
(52, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 11:52:13', '2022-04-21 11:52:13'),
(53, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 11:57:00', '2022-04-21 11:57:00'),
(54, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 13:10:08', '2022-04-21 13:10:08'),
(55, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 13:13:30', '2022-04-21 13:13:30'),
(56, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 13:16:51', '2022-04-21 13:16:51'),
(57, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 13:20:13', '2022-04-21 13:20:13'),
(58, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 13:23:09', '2022-04-21 13:23:09'),
(59, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 13:25:45', '2022-04-21 13:25:45'),
(60, 8, 2, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 16:12:28', '2022-04-22 16:12:28'),
(61, 8, 2, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 18:43:57', '2022-04-22 18:43:57'),
(62, 8, 2, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 18:52:03', '2022-04-22 18:52:03'),
(63, 8, 2, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 19:04:31', '2022-04-22 19:04:31'),
(64, 8, 2, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 19:09:55', '2022-04-22 19:09:55'),
(65, 8, 2, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 19:15:44', '2022-04-22 19:15:44'),
(66, 8, 3, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 19:19:56', '2022-04-22 19:19:56'),
(67, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-24 16:22:56', '2022-04-24 16:22:56'),
(68, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-24 16:37:48', '2022-04-24 16:37:48'),
(69, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-24 16:55:02', '2022-04-24 16:55:02'),
(70, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-24 16:58:27', '2022-04-24 16:58:27'),
(71, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-24 17:01:35', '2022-04-24 17:01:35'),
(72, 8, 1, 'loan_transaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-24 17:16:32', '2022-04-24 17:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cash` tinyint(4) NOT NULL DEFAULT 0,
  `is_online` tinyint(4) NOT NULL DEFAULT 0,
  `is_system` tinyint(4) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `position` int(11) DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `name`, `system_name`, `description`, `is_cash`, `is_online`, `is_system`, `active`, `position`, `options`, `unique_id`, `created_at`, `updated_at`) VALUES
(1, 'Cash', NULL, NULL, 0, 0, 0, 1, NULL, NULL, NULL, '2020-09-22 14:00:09', '2020-09-22 14:00:09'),
(2, 'AirtelMoney', NULL, 'MobileMoney', 0, 0, 0, 1, 1, NULL, NULL, '2020-10-19 07:57:26', '2022-04-15 15:36:17'),
(3, 'Mpesa', NULL, 'Pay via Mpesa', 0, 1, 0, 1, NULL, NULL, NULL, '2020-12-04 13:27:45', '2020-12-04 13:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payroll_template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_duration` decimal(65,2) NOT NULL DEFAULT 0.00,
  `duration_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_per_duration` decimal(65,2) NOT NULL DEFAULT 0.00,
  `total_duration_amount` decimal(65,2) NOT NULL DEFAULT 0.00,
  `gross_amount` decimal(65,2) NOT NULL DEFAULT 0.00,
  `total_allowances` decimal(65,2) NOT NULL DEFAULT 0.00,
  `total_deductions` decimal(65,2) NOT NULL DEFAULT 0.00,
  `date` date DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recurring` tinyint(4) DEFAULT 0,
  `recur_frequency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '31',
  `recur_start_date` date DEFAULT NULL,
  `recur_end_date` date DEFAULT NULL,
  `recur_next_date` date DEFAULT NULL,
  `recur_type` enum('day','week','month','year') COLLATE utf8mb4_unicode_ci DEFAULT 'month',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `branch_id`, `currency_id`, `created_by_id`, `payroll_template_id`, `user_id`, `employee_name`, `bank_name`, `account_number`, `description`, `comments`, `work_duration`, `duration_unit`, `amount_per_duration`, `total_duration_amount`, `gross_amount`, `total_allowances`, `total_deductions`, `date`, `year`, `month`, `recurring`, `recur_frequency`, `recur_start_date`, `recur_end_date`, `recur_next_date`, `recur_type`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 1, 1, 1, 'Admin Admin', 'ff', 'fg', 'gg', NULL, '8.00', 'Day', '10.00', '80.00', '270.00', '200.00', '10.00', '2020-11-27', '2020', '11', 0, '31', NULL, NULL, NULL, 'month', '2020-11-27 07:52:06', '2020-12-13 16:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_items`
--

CREATE TABLE `payroll_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('allowance','deduction') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(65,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_items`
--

INSERT INTO `payroll_items` (`id`, `name`, `type`, `amount_type`, `amount`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Basic Salary', 'allowance', 'fixed', '200.00', 'ff', '2020-10-27 16:19:42', '2020-10-27 16:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_items_meta`
--

CREATE TABLE `payroll_items_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payroll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payroll_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `percentage` decimal(65,2) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('allowance','deduction') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(65,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_items_meta`
--

INSERT INTO `payroll_items_meta` (`id`, `payroll_id`, `payroll_item_id`, `percentage`, `name`, `type`, `amount_type`, `amount`, `created_at`, `updated_at`) VALUES
(6, 2, 4, NULL, 'Basic Salary', 'allowance', 'fixed', '200.00', '2020-12-13 16:48:38', '2020-12-13 16:48:38'),
(7, 2, 5, NULL, 'payee', 'deduction', 'fixed', '10.00', '2020-12-13 16:48:39', '2020-12-13 16:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_payments`
--

CREATE TABLE `payroll_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payroll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(65,2) NOT NULL,
  `submitted_on` date DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_payments`
--

INSERT INTO `payroll_payments` (`id`, `created_by_id`, `branch_id`, `payroll_id`, `payment_type_id`, `payment_detail_id`, `amount`, `submitted_on`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, NULL, 7, '70.00', '2020-11-27', NULL, '2020-11-27 08:35:07', '2020-11-27 08:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_templates`
--

CREATE TABLE `payroll_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_duration` decimal(65,2) NOT NULL DEFAULT 0.00,
  `duration_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_per_duration` decimal(65,2) NOT NULL DEFAULT 0.00,
  `total_duration_amount` decimal(65,2) NOT NULL DEFAULT 0.00,
  `picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_templates`
--

INSERT INTO `payroll_templates` (`id`, `name`, `work_duration`, `duration_unit`, `amount_per_duration`, `total_duration_amount`, `picture`, `description`, `items`, `created_at`, `updated_at`) VALUES
(1, 'Default Template', '8.00', 'Day', '10.00', '80.00', NULL, 'test', NULL, '2020-11-23 06:56:09', '2020-12-13 16:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_template_items`
--

CREATE TABLE `payroll_template_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payroll_template_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payroll_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_template_items`
--

INSERT INTO `payroll_template_items` (`id`, `payroll_template_id`, `payroll_item_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, '2020-12-13 16:24:29', '2020-12-13 16:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `parent_id`, `name`, `display_name`, `module`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'setting.setting.index', 'View settings', 'Setting', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(2, NULL, 'setting.setting.edit', 'Edit Settings', 'Setting', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(3, NULL, 'core.payment_types.index', 'View Payment Types', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(4, NULL, 'core.payment_types.create', 'Create Payment Types', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(5, NULL, 'core.payment_types.edit', 'Edit Payment Types', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(6, NULL, 'core.payment_types.destroy', 'Delete Payment Types', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(7, NULL, 'core.currencies.index', 'View Payment Details', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(8, NULL, 'core.currencies.create', 'Create Currencies', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(9, NULL, 'core.currencies.edit', 'Edit Currencies', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(10, NULL, 'core.currencies.destroy', 'Delete Currencies', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(11, NULL, 'core.modules.index', 'View Modules', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(12, NULL, 'core.modules.create', 'Create Modules', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(13, NULL, 'core.modules.destroy', 'Delete Modules', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(14, NULL, 'core.menu.index', 'Manage Menu', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(15, NULL, 'core.payment_gateways.index', 'View Payment Gateway', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(16, NULL, 'core.payment_gateways.create', 'Create Payment Gateway', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(17, NULL, 'core.payment_gateways.edit', 'Edit Payment Gateway', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(18, NULL, 'core.payment_gateways.destroy', 'Delete Payment Gateway', 'Core', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(19, NULL, 'user.users.index', 'View Users', 'User', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(20, NULL, 'user.users.create', 'Create Users', 'User', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(21, NULL, 'user.users.edit', 'Edit Users', 'User', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(22, NULL, 'user.users.destroy', 'Delete Users', 'User', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(23, NULL, 'user.roles.index', 'View Roles', 'User', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(24, NULL, 'user.roles.create', 'Create Roles', 'User', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(25, NULL, 'user.roles.edit', 'Edit Roles', 'User', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(26, NULL, 'user.roles.destroy', 'Delete Roles', 'User', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(27, NULL, 'dashboard.index', 'View Dashboard', 'Dashboard', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(28, NULL, 'dashboard.edit', 'Edit Dashboard', 'Dashboard', NULL, 'web', '2020-09-02 06:59:29', '2020-09-02 06:59:29'),
(29, NULL, 'branch.branches.index', 'View Branches', 'Branch', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(30, NULL, 'branch.branches.create', 'Create Branches', 'Branch', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(31, NULL, 'branch.branches.edit', 'Edit Branches', 'Branch', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(32, NULL, 'branch.branches.destroy', 'Delete Branches', 'Branch', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(33, NULL, 'branch.branches.assign_user', 'Assign Users', 'Branch', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(34, NULL, 'accounting.chart_of_accounts.index', 'View Chart of accounts', 'Accounting', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(35, NULL, 'accounting.chart_of_accounts.create', 'Create Chart of accounts', 'Accounting', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(36, NULL, 'accounting.chart_of_accounts.edit', 'Edit Chart of accounts', 'Accounting', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(37, NULL, 'accounting.chart_of_accounts.destroy', 'Delete Chart of accounts', 'Accounting', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(38, NULL, 'accounting.journal_entries.index', 'View Journal Entries', 'Accounting', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(39, NULL, 'accounting.journal_entries.create', 'Create Journal Entries', 'Accounting', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(40, NULL, 'accounting.journal_entries.edit', 'Edit Journal Entries', 'Accounting', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(41, NULL, 'accounting.journal_entries.reverse', 'Reverse Journal Entries', 'Accounting', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(42, NULL, 'accounting.reports.balance_sheet', 'View Balance Sheet', 'Accounting', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(43, NULL, 'accounting.reports.trial_balance', 'View Trial Balance', 'Accounting', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(44, NULL, 'accounting.reports.income_statement', 'View Income Statement', 'Accounting', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(45, NULL, 'accounting.reports.ledger', 'View Ledger', 'Accounting', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(46, NULL, 'asset.assets.index', 'View Assets', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(47, NULL, 'asset.assets.create', 'Create Assets', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(48, NULL, 'asset.assets.edit', 'Edit Assets', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(49, NULL, 'asset.assets.destroy', 'Delete Assets', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(50, NULL, 'asset.assets.types.index', 'View Asset Types', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(51, NULL, 'asset.assets.types.create', 'Create Asset Types', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(52, NULL, 'asset.assets.types.edit', 'Edit Asset Types', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(53, NULL, 'asset.assets.types.destroy', 'Delete Asset Types', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(54, NULL, 'asset.assets.notes.index', 'View Asset Notes', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(55, NULL, 'asset.assets.notes.create', 'Create Asset Notes', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(56, NULL, 'asset.assets.notes.edit', 'Edit Asset Notes', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(57, NULL, 'asset.assets.notes.destroy', 'Delete Asset Notes', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(58, NULL, 'asset.assets.maintenance.index', 'View Asset Maintenance', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(59, NULL, 'asset.assets.maintenance.create', 'Create Asset Maintenance', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(60, NULL, 'asset.assets.maintenance.edit', 'Edit Asset Maintenance', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(61, NULL, 'asset.assets.maintenance.destroy', 'Delete Asset Maintenance', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(62, NULL, 'asset.assets.files.index', 'View Asset Files', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(63, NULL, 'asset.assets.files.create', 'Create Asset Files', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(64, NULL, 'asset.assets.files.edit', 'Edit Asset Files', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(65, NULL, 'asset.assets.files.destroy', 'Delete Asset Files', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(66, NULL, 'asset.assets.pictures.index', 'View Asset Pictures', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(67, NULL, 'asset.assets.pictures.create', 'Create Asset Pictures', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(68, NULL, 'asset.assets.pictures.edit', 'Edit Asset Pictures', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(69, NULL, 'asset.assets.pictures.destroy', 'Delete Asset Pictures', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(70, NULL, 'asset.assets.valuations.index', 'View Asset Valuations', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(71, NULL, 'asset.assets.valuations.create', 'Create Asset Valuations', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(72, NULL, 'asset.assets.valuations.edit', 'Edit Asset Valuations', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(73, NULL, 'asset.assets.valuations.destroy', 'Delete Asset Valuations', 'Asset', NULL, 'web', '2020-09-02 06:59:30', '2020-09-02 06:59:30'),
(74, NULL, 'client.clients.index', 'View Clients', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(75, NULL, 'client.clients.index_own', 'View Own Clients Only', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(76, NULL, 'client.clients.create', 'Create Clients', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(77, NULL, 'client.clients.edit', 'Edit Clients', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(78, NULL, 'client.clients.edit_own', 'Edit Own Clients', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(79, NULL, 'client.clients.activate', 'Activate Clients', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(80, NULL, 'client.clients.activate_own', 'Activate Own Clients', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(81, NULL, 'client.clients.destroy', 'Delete Clients', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(82, NULL, 'client.clients.destroy_own', 'Delete Own Clients', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(83, NULL, 'client.clients.user.create', 'Create Client Users', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(84, NULL, 'client.clients.user.destroy', 'Delete Client Users', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(85, NULL, 'client.clients.titles.index', 'View Titles', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(86, NULL, 'client.clients.titles.create', 'Create Titles', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(87, NULL, 'client.clients.titles.edit', 'Edit Titles', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(88, NULL, 'client.clients.titles.destroy', 'Delete Titles', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(89, NULL, 'client.clients.professions.index', 'View Professions', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(90, NULL, 'client.clients.professions.create', 'Create Professions', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(91, NULL, 'client.clients.professions.edit', 'Edit Professions', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(92, NULL, 'client.clients.professions.destroy', 'Delete Professions', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(93, NULL, 'client.clients.client_relationships.index', 'View Client Relationships', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(94, NULL, 'client.clients.client_relationships.create', 'Create Client Relationships', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(95, NULL, 'client.clients.client_relationships.edit', 'Edit Client Relationships', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(96, NULL, 'client.clients.client_relationships.destroy', 'Delete Client Relationships', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(97, NULL, 'client.clients.client_types.index', 'View Client Types', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(98, NULL, 'client.clients.client_types.create', 'Create Client Types', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(99, NULL, 'client.clients.client_types.edit', 'Edit Client Types', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(100, NULL, 'client.clients.client_types.destroy', 'Delete Client Types', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(101, NULL, 'client.clients.identification_types.index', 'View Identification Types', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(102, NULL, 'client.clients.identification_types.create', 'Create Identification Types', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(103, NULL, 'client.clients.identification_types.edit', 'Edit Identification Types', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(104, NULL, 'client.clients.identification_types.destroy', 'Delete Identification Types', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(105, NULL, 'client.clients.files.index', 'View Files', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(106, NULL, 'client.clients.files.create', 'Create Files', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(107, NULL, 'client.clients.files.edit', 'Edit Files', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(108, NULL, 'client.clients.files.destroy', 'Delete Files', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(109, NULL, 'client.clients.next_of_kin.index', 'View Next of kin', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(110, NULL, 'client.clients.next_of_kin.create', 'Create Next of kin', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(111, NULL, 'client.clients.next_of_kin.edit', 'Edit Next of kin', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(112, NULL, 'client.clients.next_of_kin.destroy', 'Delete Next of kins', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(113, NULL, 'client.clients.identification.index', 'View Identification', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(114, NULL, 'client.clients.identification.create', 'Create Identification', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(115, NULL, 'client.clients.identification.edit', 'Edit Identification', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(116, NULL, 'client.clients.identification.destroy', 'Delete Identification', 'Client', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(117, NULL, 'savings.savings.index', 'View Savings', 'Savings', NULL, 'web', '2020-09-02 06:59:31', '2020-09-02 06:59:31'),
(118, NULL, 'savings.savings.create', 'Create Savings', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(119, NULL, 'savings.savings.edit', 'Edit Savings', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(120, NULL, 'savings.savings.destroy', 'Delete Savings', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(121, NULL, 'savings.savings.approve_savings', 'Approve/Reject Savings', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(122, NULL, 'savings.savings.activate_savings', 'Activate Savings', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(123, NULL, 'savings.savings.withdraw_savings', 'Withdraw Savings', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(124, NULL, 'savings.savings.inactive_savings', 'Inactive Savings', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(125, NULL, 'savings.savings.dormant_savings', 'Dormant Savings', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(126, NULL, 'savings.savings.close_savings', 'Close Savings', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(127, NULL, 'savings.savings.products.index', 'View savings Products', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(128, NULL, 'savings.savings.products.create', 'Create savings Products', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(129, NULL, 'savings.savings.products.edit', 'Edit savings Products', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(130, NULL, 'savings.savings.products.destroy', 'Delete savings Products', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(131, NULL, 'savings.savings.transactions.index', 'View Transactions', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(132, NULL, 'savings.savings.transactions.create', 'Create Transactions', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(133, NULL, 'savings.savings.transactions.edit', 'Edit Transactions', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(134, NULL, 'savings.savings.transactions.destroy', 'Delete/Reverse Transactions', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(135, NULL, 'savings.savings.charges.index', 'View Charges', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(136, NULL, 'savings.savings.charges.create', 'Create Charges', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(137, NULL, 'savings.savings.charges.edit', 'Edit Charges', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(138, NULL, 'savings.savings.charges.destroy', 'Delete Charges', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(139, NULL, 'savings.savings.reports.transactions', 'View Transactions Report', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(140, NULL, 'savings.savings.reports.balances', 'View Balances Report', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(141, NULL, 'savings.savings.reports.accounts', 'View Accounts Report', 'Savings', NULL, 'web', '2020-09-02 06:59:32', '2020-09-02 06:59:32'),
(142, NULL, 'reports.index', 'View Reports', 'Report', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(143, NULL, 'loan.loans.index', 'View Loans', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(144, NULL, 'loan.loans.create', 'Create Loans', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(145, NULL, 'loan.loans.edit', 'Edit Loans', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(146, NULL, 'loan.loans.destroy', 'Delete Loans', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(147, NULL, 'loan.loans.approve_loan', 'Approve/Reject Loans', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(148, NULL, 'loan.loans.disburse_loan', 'Disburse Loans', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(149, NULL, 'loan.loans.withdraw_loan', 'Withdraw Loans', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(150, NULL, 'loan.loans.write_off_loan', 'Write Off Loans', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(151, NULL, 'loan.loans.reschedule_loan', 'Reschedule Loans', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(152, NULL, 'loan.loans.close_loan', 'Close Loans', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(153, NULL, 'loan.loans.calculator', 'Use Loan Calculator', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(154, NULL, 'loan.loans.loan_history', 'View Loan History', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(155, NULL, 'loan.loans.products.index', 'View Loan Products', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(156, NULL, 'loan.loans.products.create', 'Create Loan Products', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(157, NULL, 'loan.loans.products.edit', 'Edit Loan Products', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(158, NULL, 'loan.loans.products.destroy', 'Delete Loan Products', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(159, NULL, 'loan.loans.transactions.index', 'View Transactions', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(160, NULL, 'loan.loans.transactions.create', 'Create Transactions', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(161, NULL, 'loan.loans.transactions.edit', 'Edit Transactions', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(162, NULL, 'loan.loans.transactions.destroy', 'Delete/Reverse Transactions', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(163, NULL, 'loan.loans.charges.index', 'View Charges', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(164, NULL, 'loan.loans.charges.create', 'Create Charges', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(165, NULL, 'loan.loans.charges.edit', 'Edit Charges', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(166, NULL, 'loan.loans.charges.destroy', 'Delete Charges', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(167, NULL, 'loan.loans.funds.index', 'View Funds', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(168, NULL, 'loan.loans.funds.create', 'Create Funds', 'Loan', NULL, 'web', '2020-09-02 06:59:33', '2020-09-02 06:59:33'),
(169, NULL, 'loan.loans.funds.edit', 'Edit Funds', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(170, NULL, 'loan.loans.funds.destroy', 'Delete Funds', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(171, NULL, 'loan.loans.credit_checks.index', 'View Credit Checks', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(172, NULL, 'loan.loans.credit_checks.create', 'Create Credit Checks', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(173, NULL, 'loan.loans.credit_checks.edit', 'Edit Credit Checks', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(174, NULL, 'loan.loans.credit_checks.destroy', 'Delete Credit Checks', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(175, NULL, 'loan.loans.collateral.index', 'View Collateral', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(176, NULL, 'loan.loans.collateral.create', 'Create Collateral', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(177, NULL, 'loan.loans.collateral.edit', 'Edit Collateral', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(178, NULL, 'loan.loans.collateral.destroy', 'Delete Collateral', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(179, NULL, 'loan.loans.collateral_types.index', 'View Collateral Types', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(180, NULL, 'loan.loans.collateral_types.create', 'Create Collateral Types', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(181, NULL, 'loan.loans.collateral_types.edit', 'Edit Collateral Types', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(182, NULL, 'loan.loans.collateral_types.destroy', 'Delete Collateral Types', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(183, NULL, 'loan.loans.purposes.index', 'View Purposes', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(184, NULL, 'loan.loans.purposes.create', 'Create Purposes', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(185, NULL, 'loan.loans.purposes.edit', 'Edit Purposes', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(186, NULL, 'loan.loans.purposes.destroy', 'Delete Purposes', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(187, NULL, 'loan.loans.files.index', 'View Files', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(188, NULL, 'loan.loans.files.create', 'Create Files', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(189, NULL, 'loan.loans.files.edit', 'Edit Files', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(190, NULL, 'loan.loans.files.destroy', 'Delete Files', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(191, NULL, 'loan.loans.guarantors.index', 'View Guarantors', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(192, NULL, 'loan.loans.guarantors.create', 'Create Guarantors', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(193, NULL, 'loan.loans.guarantors.edit', 'Edit Guarantors', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(194, NULL, 'loan.loans.guarantors.destroy', 'Delete Guarantors', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(195, NULL, 'loan.loans.notes.index', 'View Notes', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(196, NULL, 'loan.loans.notes.create', 'Create Notes', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(197, NULL, 'loan.loans.notes.edit', 'Edit Notes', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(198, NULL, 'loan.loans.notes.destroy', 'Delete Notes', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(199, NULL, 'loan.loans.reports.collection_sheet', 'View Collection Sheet Reports', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(200, NULL, 'loan.loans.reports.repayments', 'View Repayments Report', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(201, NULL, 'loan.loans.reports.expected_repayments', 'View Expected Repayments Report', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(202, NULL, 'loan.loans.reports.arrears', 'View Arrears Reports', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(203, NULL, 'loan.loans.reports.disbursements', 'View Disbursements Report', 'Loan', NULL, 'web', '2020-09-02 06:59:34', '2020-09-02 06:59:34'),
(204, NULL, 'communication.index', 'View Communication', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(205, NULL, 'communication.campaigns.index', 'View Campaigns', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(206, NULL, 'communication.campaigns.create', 'Create Campaigns', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(207, NULL, 'communication.campaigns.edit', 'Edit Campaigns', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(208, NULL, 'communication.campaigns.destroy', 'Delete Campaigns', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(209, NULL, 'communication.logs.index', 'View Logs', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(210, NULL, 'communication.logs.create', 'Create Logs', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(211, NULL, 'communication.logs.edit', 'Edit Logs', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(212, NULL, 'communication.logs.destroy', 'Delete Logs', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(213, NULL, 'communication.sms_gateways.index', 'View SMS Gateways', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(214, NULL, 'communication.sms_gateways.create', 'Create SMS Gateways', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(215, NULL, 'communication.sms_gateways.edit', 'Edit SMS Gateways', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(216, NULL, 'communication.sms_gateways.destroy', 'Delete SMS Gateways', 'Communication', NULL, 'web', '2020-09-02 06:59:35', '2020-09-02 06:59:35'),
(217, NULL, 'payroll.payroll.index', 'View Payroll', 'Payroll', NULL, 'web', '2020-09-02 06:59:37', '2020-09-02 06:59:37'),
(218, NULL, 'payroll.payroll.create', 'Create Payroll', 'Payroll', NULL, 'web', '2020-09-02 06:59:37', '2020-09-02 06:59:37'),
(219, NULL, 'payroll.payroll.edit', 'Edit Payroll', 'Payroll', NULL, 'web', '2020-09-02 06:59:37', '2020-09-02 06:59:37'),
(220, NULL, 'payroll.payroll.destroy', 'Delete Payroll', 'Payroll', NULL, 'web', '2020-09-02 06:59:37', '2020-09-02 06:59:37'),
(221, NULL, 'payroll.payroll.items.index', 'View Payroll Items', 'Payroll', NULL, 'web', '2020-09-02 06:59:37', '2020-09-02 06:59:37'),
(222, NULL, 'payroll.payroll.items.create', 'Create Payroll Items', 'Payroll', NULL, 'web', '2020-09-02 06:59:37', '2020-09-02 06:59:37'),
(223, NULL, 'payroll.payroll.items.edit', 'Edit Payroll Items', 'Payroll', NULL, 'web', '2020-09-02 06:59:38', '2020-09-02 06:59:38'),
(224, NULL, 'payroll.payroll.items.destroy', 'Delete Payroll Items', 'Payroll', NULL, 'web', '2020-09-02 06:59:38', '2020-09-02 06:59:38'),
(225, NULL, 'payroll.payroll.templates.index', 'View Templates', 'Payroll', NULL, 'web', '2020-09-02 06:59:38', '2020-09-02 06:59:38'),
(226, NULL, 'payroll.payroll.templates.create', 'Create Templates', 'Payroll', NULL, 'web', '2020-09-02 06:59:38', '2020-09-02 06:59:38'),
(227, NULL, 'payroll.payroll.templates.edit', 'Edit Templates', 'Payroll', NULL, 'web', '2020-09-02 06:59:38', '2020-09-02 06:59:38'),
(228, NULL, 'payroll.payroll.templates.destroy', 'Delete Templates', 'Payroll', NULL, 'web', '2020-09-02 06:59:38', '2020-09-02 06:59:38'),
(229, NULL, 'customfield.custom_fields.index', 'View Custom Fields', 'CustomField', NULL, 'web', '2020-09-02 06:59:38', '2020-09-02 06:59:38'),
(230, NULL, 'customfield.custom_fields.create', 'Create Custom Field', 'CustomField', NULL, 'web', '2020-09-02 06:59:38', '2020-09-02 06:59:38'),
(231, NULL, 'customfield.custom_fields.edit', 'Edit Custom Field', 'CustomField', NULL, 'web', '2020-09-02 06:59:38', '2020-09-02 06:59:38'),
(232, NULL, 'customfield.custom_fields.destroy', 'Delete Custom Field', 'CustomField', NULL, 'web', '2020-09-02 06:59:38', '2020-09-02 06:59:38'),
(233, NULL, 'expense.expenses.index', 'View Expenses', 'Expense', NULL, 'web', '2020-09-02 06:59:39', '2020-09-02 06:59:39'),
(234, NULL, 'expense.expenses.create', 'Create Expenses', 'Expense', NULL, 'web', '2020-09-02 06:59:39', '2020-09-02 06:59:39'),
(235, NULL, 'expense.expenses.edit', 'Edit Expenses', 'Expense', NULL, 'web', '2020-09-02 06:59:39', '2020-09-02 06:59:39'),
(236, NULL, 'expense.expenses.destroy', 'Delete Expenses', 'Expense', NULL, 'web', '2020-09-02 06:59:39', '2020-09-02 06:59:39'),
(237, NULL, 'expense.expenses.types.index', 'View Expense Types', 'Expense', NULL, 'web', '2020-09-02 06:59:39', '2020-09-02 06:59:39'),
(238, NULL, 'expense.expenses.types.create', 'Create Expense Types', 'Expense', NULL, 'web', '2020-09-02 06:59:39', '2020-09-02 06:59:39'),
(239, NULL, 'expense.expenses.types.edit', 'Edit Expense Types', 'Expense', NULL, 'web', '2020-09-02 06:59:39', '2020-09-02 06:59:39'),
(240, NULL, 'expense.expenses.types.destroy', 'Delete Expense Types', 'Expense', NULL, 'web', '2020-09-02 06:59:39', '2020-09-02 06:59:39'),
(241, NULL, 'expense.expenses.notes.index', 'View Expense Notes', 'Expense', NULL, 'web', '2020-09-02 06:59:39', '2020-09-02 06:59:39'),
(242, NULL, 'expense.expenses.notes.create', 'Create Expense Notes', 'Expense', NULL, 'web', '2020-09-02 06:59:39', '2020-09-02 06:59:39'),
(243, NULL, 'expense.expenses.notes.edit', 'Edit Expense Notes', 'Expense', NULL, 'web', '2020-09-02 06:59:39', '2020-09-02 06:59:39'),
(244, NULL, 'expense.expenses.notes.destroy', 'Delete Expense Notes', 'Expense', NULL, 'web', '2020-09-02 06:59:39', '2020-09-02 06:59:39'),
(245, NULL, 'income.income.index', 'View Income', 'Income', NULL, 'web', '2020-09-02 06:59:40', '2020-09-02 06:59:40'),
(246, NULL, 'income.income.create', 'Create Income', 'Income', NULL, 'web', '2020-09-02 06:59:40', '2020-09-02 06:59:40'),
(247, NULL, 'income.income.edit', 'Edit Income', 'Income', NULL, 'web', '2020-09-02 06:59:40', '2020-09-02 06:59:40'),
(248, NULL, 'income.income.destroy', 'Delete Income', 'Income', NULL, 'web', '2020-09-02 06:59:40', '2020-09-02 06:59:40'),
(249, NULL, 'income.income.types.index', 'View Income Types', 'Income', NULL, 'web', '2020-09-02 06:59:40', '2020-09-02 06:59:40'),
(250, NULL, 'income.income.types.create', 'Create Income Types', 'Income', NULL, 'web', '2020-09-02 06:59:40', '2020-09-02 06:59:40'),
(251, NULL, 'income.income.types.edit', 'Edit Income Types', 'Income', NULL, 'web', '2020-09-02 06:59:40', '2020-09-02 06:59:40'),
(252, NULL, 'income.income.types.destroy', 'Delete Income Types', 'Income', NULL, 'web', '2020-09-02 06:59:40', '2020-09-02 06:59:40'),
(253, NULL, 'income.income.notes.index', 'View Income Notes', 'Income', NULL, 'web', '2020-09-02 06:59:40', '2020-09-02 06:59:40'),
(254, NULL, 'income.income.notes.create', 'Create Income Notes', 'Income', NULL, 'web', '2020-09-02 06:59:40', '2020-09-02 06:59:40'),
(255, NULL, 'income.income.notes.edit', 'Edit Income Notes', 'Income', NULL, 'web', '2020-09-02 06:59:40', '2020-09-02 06:59:40'),
(256, NULL, 'income.income.notes.destroy', 'Delete Income Notes', 'Income', NULL, 'web', '2020-09-02 06:59:40', '2020-09-02 06:59:40'),
(257, NULL, 'upgrade.upgrades.index', 'View Upgrade Page', 'Upgrade', NULL, 'web', '2020-09-02 06:59:43', '2020-09-02 06:59:43'),
(258, NULL, 'upgrade.upgrades.manage', 'Manage Upgrades', 'Upgrade', NULL, 'web', '2020-09-02 06:59:43', '2020-09-02 06:59:43'),
(259, NULL, 'activitylog.activity_logs.index', 'View Activity Logs', 'Activitylog', NULL, 'web', '2020-09-02 06:59:44', '2020-09-02 06:59:44'),
(260, NULL, 'activitylog.activity_logs.destroy', 'Delete Activity Logs', 'Activitylog', NULL, 'web', '2020-09-02 06:59:44', '2020-09-02 06:59:44'),
(261, NULL, 'wallet.wallets.index', 'View Wallet', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(262, NULL, 'wallet.wallets.create', 'Create Wallet', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(263, NULL, 'wallet.wallets.edit', 'Edit Wallet', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(264, NULL, 'wallet.wallets.destroy', 'Delete Wallet', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(265, NULL, 'wallet.wallets.approve_wallets', 'Approve/Reject Wallet', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(266, NULL, 'wallet.wallets.activate_wallets', 'Activate Wallet', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(267, NULL, 'wallet.wallets.withdraw_wallets', 'Withdraw Wallet', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(268, NULL, 'wallet.wallets.inactive_wallets', 'Inactive Wallet', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(269, NULL, 'wallet.wallets.close_wallets', 'Close Wallet', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(270, NULL, 'wallet.wallets.transactions.index', 'View Transactions', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(271, NULL, 'wallet.wallets.transactions.create', 'Create Transactions', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(272, NULL, 'wallet.wallets.transactions.edit', 'Edit Transactions', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(273, NULL, 'wallet.wallets.transactions.destroy', 'Delete/Reverse Transactions', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(274, NULL, 'wallet.wallets.reports.transactions', 'View Transactions Report', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(275, NULL, 'wallet.wallets.reports.balances', 'View Balances Report', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(276, NULL, 'wallet.wallets.reports.accounts', 'View Accounts Report', 'Wallet', NULL, 'web', '2020-09-02 06:59:45', '2020-09-02 06:59:45'),
(277, NULL, 'share.shares.index', 'View Shares', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(278, NULL, 'share.shares.create', 'Create Shares', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(279, NULL, 'share.shares.edit', 'Edit Shares', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(280, NULL, 'share.shares.destroy', 'Delete Shares', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(281, NULL, 'share.shares.approve_shares', 'Approve Shares', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(282, NULL, 'share.shares.activate_shares', 'Activate Shares', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(283, NULL, 'share.shares.close_shares', 'Close Shares', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(284, NULL, 'share.shares.products.index', 'View Share Products', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(285, NULL, 'share.shares.products.create', 'Create Share Products', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(286, NULL, 'share.shares.products.edit', 'Edit Share Products', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(287, NULL, 'share.shares.products.destroy', 'Delete Share Products', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(288, NULL, 'share.shares.transactions.index', 'View Transactions', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(289, NULL, 'share.shares.transactions.create', 'Create Transactions', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(290, NULL, 'share.shares.transactions.edit', 'Edit Transactions', 'Share', NULL, 'web', '2020-09-15 10:10:41', '2020-09-15 10:10:41'),
(291, NULL, 'share.shares.transactions.destroy', 'Delete/Reverse Transactions', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(292, NULL, 'share.shares.notes.index', 'View Share Notes', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(293, NULL, 'share.shares.notes.create', 'Create Share Notes', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(294, NULL, 'share.shares.notes.edit', 'Edit Share Notes', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(295, NULL, 'share.shares.notes.destroy', 'Delete Share Notes', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(296, NULL, 'share.shares.charges.index', 'View Share Charges', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(297, NULL, 'share.shares.charges.create', 'Create Share Charges', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(298, NULL, 'share.shares.charges.edit', 'Edit Share Charges', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(299, NULL, 'share.shares.charges.destroy', 'Delete Share Charges', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(300, NULL, 'share.shares.files.index', 'View Share Files', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(301, NULL, 'share.shares.files.create', 'Create Share Files', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(302, NULL, 'share.shares.files.edit', 'Edit Share Files', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(303, NULL, 'share.shares.files.destroy', 'Delete Share Files', 'Share', NULL, 'web', '2020-09-15 10:10:42', '2020-09-15 10:10:42'),
(304, NULL, 'core.themes.index', 'Themes', 'Core', NULL, 'web', '2020-10-11 10:42:48', '2020-10-11 10:42:48'),
(305, NULL, 'user.reports.index', 'View Reports', 'User', NULL, 'web', '2021-01-15 11:25:37', '2021-01-15 11:25:37'),
(306, NULL, 'user.reports.performance', 'View Performance Reports', 'User', NULL, 'web', '2021-01-15 11:25:37', '2021-01-15 11:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `professions`
--

CREATE TABLE `professions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professions`
--

INSERT INTO `professions` (`id`, `name`) VALUES
(1, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_system` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `is_system`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'web', '2020-09-02 06:59:25', '2020-09-02 06:59:25'),
(2, 1, 'client', 'web', '2020-09-02 06:59:25', '2020-09-02 06:59:25'),
(4, 0, 'Loan OFFICER3', 'web', '2022-04-15 18:57:25', '2022-04-22 19:34:14'),
(5, 0, 'FINANCIER', 'web', '2022-04-15 21:58:35', '2022-04-15 21:58:35'),
(9, 0, 'LOAN OFFICER 2', 'web', '2022-04-21 23:22:09', '2022-04-21 23:22:09'),
(10, 0, 'NEXT SMS', 'web', '2022-04-22 16:52:57', '2022-04-22 16:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 4),
(4, 1),
(4, 4),
(4, 9),
(5, 1),
(5, 4),
(6, 1),
(6, 4),
(7, 1),
(7, 4),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(15, 4),
(16, 1),
(16, 4),
(17, 1),
(17, 4),
(18, 1),
(18, 4),
(19, 1),
(19, 4),
(20, 1),
(21, 1),
(21, 4),
(22, 1),
(23, 1),
(23, 4),
(24, 1),
(24, 4),
(25, 1),
(25, 4),
(26, 1),
(27, 1),
(27, 4),
(27, 9),
(28, 1),
(28, 4),
(29, 1),
(29, 4),
(30, 1),
(30, 4),
(31, 1),
(31, 4),
(32, 1),
(33, 1),
(34, 1),
(34, 4),
(35, 1),
(35, 4),
(36, 1),
(37, 1),
(38, 1),
(38, 4),
(39, 1),
(39, 4),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(45, 4),
(46, 1),
(46, 4),
(46, 9),
(47, 1),
(47, 4),
(47, 5),
(47, 9),
(48, 1),
(48, 4),
(49, 1),
(50, 1),
(50, 4),
(50, 9),
(51, 1),
(51, 4),
(51, 9),
(52, 1),
(52, 4),
(52, 9),
(53, 1),
(54, 1),
(54, 4),
(54, 9),
(55, 1),
(55, 4),
(56, 1),
(56, 4),
(56, 9),
(57, 1),
(58, 1),
(58, 4),
(59, 1),
(59, 4),
(60, 1),
(60, 4),
(61, 1),
(62, 1),
(62, 4),
(63, 1),
(63, 4),
(64, 1),
(64, 4),
(64, 9),
(65, 1),
(66, 1),
(66, 4),
(67, 1),
(67, 4),
(67, 9),
(68, 1),
(69, 1),
(70, 1),
(70, 4),
(70, 9),
(71, 1),
(71, 4),
(71, 9),
(72, 1),
(72, 4),
(73, 1),
(73, 4),
(74, 1),
(74, 4),
(74, 5),
(74, 9),
(75, 1),
(75, 4),
(75, 5),
(76, 1),
(76, 4),
(76, 5),
(76, 9),
(77, 1),
(77, 4),
(78, 1),
(78, 4),
(78, 5),
(78, 9),
(79, 1),
(79, 4),
(79, 5),
(79, 9),
(80, 1),
(80, 4),
(80, 5),
(80, 9),
(81, 1),
(81, 4),
(82, 1),
(82, 4),
(83, 1),
(83, 4),
(83, 9),
(84, 1),
(84, 4),
(85, 1),
(85, 4),
(85, 9),
(86, 1),
(87, 1),
(88, 1),
(88, 4),
(89, 1),
(89, 4),
(89, 9),
(90, 1),
(90, 4),
(91, 1),
(91, 4),
(92, 1),
(92, 4),
(93, 1),
(93, 4),
(93, 5),
(93, 9),
(94, 1),
(94, 4),
(94, 9),
(95, 1),
(95, 4),
(95, 5),
(95, 9),
(96, 1),
(96, 4),
(97, 1),
(97, 4),
(97, 5),
(97, 9),
(98, 1),
(98, 4),
(98, 9),
(99, 1),
(99, 4),
(100, 1),
(100, 4),
(101, 1),
(101, 4),
(101, 9),
(102, 1),
(102, 4),
(102, 9),
(103, 1),
(103, 4),
(104, 1),
(105, 1),
(105, 4),
(105, 9),
(106, 1),
(106, 4),
(106, 9),
(107, 1),
(107, 4),
(107, 9),
(108, 1),
(109, 1),
(109, 4),
(109, 5),
(109, 9),
(110, 1),
(110, 4),
(110, 9),
(111, 1),
(111, 4),
(111, 9),
(112, 1),
(112, 4),
(113, 1),
(113, 4),
(113, 9),
(114, 1),
(114, 4),
(114, 9),
(115, 1),
(115, 4),
(115, 9),
(116, 1),
(116, 4),
(117, 1),
(117, 4),
(117, 5),
(117, 9),
(118, 1),
(118, 4),
(118, 5),
(118, 9),
(119, 1),
(119, 4),
(119, 5),
(120, 1),
(120, 4),
(121, 1),
(121, 4),
(121, 5),
(122, 1),
(122, 4),
(123, 1),
(123, 4),
(124, 1),
(124, 4),
(125, 1),
(125, 4),
(126, 1),
(126, 4),
(127, 1),
(127, 4),
(128, 1),
(128, 4),
(129, 1),
(129, 4),
(130, 1),
(130, 4),
(131, 1),
(131, 4),
(131, 5),
(132, 1),
(132, 4),
(132, 9),
(133, 1),
(133, 4),
(133, 9),
(134, 1),
(134, 4),
(135, 1),
(135, 4),
(136, 1),
(136, 4),
(137, 1),
(137, 4),
(138, 1),
(138, 4),
(139, 1),
(139, 4),
(140, 1),
(140, 4),
(141, 1),
(141, 4),
(142, 1),
(142, 4),
(143, 1),
(143, 4),
(143, 5),
(143, 9),
(144, 1),
(144, 4),
(144, 5),
(144, 9),
(145, 1),
(145, 4),
(145, 9),
(146, 1),
(146, 4),
(147, 1),
(147, 4),
(147, 5),
(148, 1),
(148, 4),
(148, 5),
(149, 1),
(149, 4),
(149, 5),
(150, 1),
(150, 4),
(151, 1),
(151, 4),
(151, 9),
(152, 1),
(152, 4),
(153, 1),
(153, 4),
(153, 9),
(154, 1),
(154, 4),
(154, 9),
(155, 1),
(155, 4),
(156, 1),
(156, 4),
(157, 1),
(157, 4),
(158, 1),
(158, 4),
(159, 1),
(159, 4),
(159, 9),
(160, 1),
(160, 4),
(160, 9),
(161, 1),
(161, 4),
(162, 1),
(162, 4),
(163, 1),
(163, 4),
(164, 1),
(164, 4),
(164, 5),
(165, 1),
(165, 4),
(165, 5),
(166, 1),
(166, 4),
(167, 1),
(167, 4),
(168, 1),
(168, 4),
(169, 1),
(169, 4),
(170, 1),
(170, 4),
(171, 1),
(171, 4),
(172, 1),
(172, 4),
(173, 1),
(173, 4),
(174, 1),
(174, 4),
(175, 1),
(175, 4),
(175, 5),
(175, 9),
(176, 1),
(176, 4),
(176, 9),
(177, 1),
(177, 4),
(177, 9),
(178, 1),
(178, 4),
(179, 1),
(179, 4),
(179, 9),
(180, 1),
(180, 4),
(181, 1),
(181, 4),
(181, 5),
(181, 9),
(182, 1),
(182, 4),
(183, 1),
(183, 4),
(183, 9),
(184, 1),
(184, 4),
(184, 9),
(185, 1),
(185, 4),
(186, 1),
(186, 4),
(187, 1),
(187, 4),
(187, 9),
(188, 1),
(188, 4),
(188, 9),
(189, 1),
(189, 4),
(189, 9),
(190, 1),
(190, 4),
(191, 1),
(191, 4),
(191, 9),
(192, 1),
(192, 4),
(192, 9),
(193, 1),
(193, 4),
(193, 9),
(194, 1),
(194, 4),
(195, 1),
(195, 4),
(195, 9),
(196, 1),
(196, 4),
(196, 9),
(197, 1),
(197, 4),
(197, 9),
(198, 1),
(198, 4),
(199, 1),
(199, 4),
(199, 9),
(200, 1),
(200, 4),
(200, 9),
(201, 1),
(201, 4),
(201, 9),
(202, 1),
(202, 4),
(202, 9),
(203, 1),
(203, 4),
(203, 9),
(204, 1),
(204, 4),
(205, 1),
(205, 4),
(206, 1),
(206, 4),
(207, 1),
(207, 4),
(208, 1),
(208, 4),
(209, 1),
(209, 4),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(213, 10),
(214, 1),
(214, 10),
(215, 1),
(215, 10),
(216, 1),
(216, 10),
(217, 1),
(217, 4),
(218, 1),
(218, 4),
(219, 1),
(219, 4),
(220, 1),
(220, 4),
(221, 1),
(221, 4),
(222, 1),
(222, 4),
(223, 1),
(223, 4),
(224, 1),
(224, 4),
(225, 1),
(225, 4),
(226, 1),
(226, 4),
(227, 1),
(227, 4),
(228, 1),
(228, 4),
(229, 1),
(229, 4),
(230, 1),
(230, 4),
(231, 1),
(231, 4),
(232, 1),
(233, 1),
(233, 4),
(234, 1),
(234, 4),
(234, 9),
(235, 1),
(235, 4),
(235, 9),
(236, 1),
(236, 4),
(237, 1),
(237, 4),
(237, 9),
(238, 1),
(238, 4),
(239, 1),
(239, 4),
(240, 1),
(240, 4),
(241, 1),
(241, 4),
(242, 1),
(242, 4),
(242, 9),
(243, 1),
(243, 4),
(243, 9),
(244, 1),
(244, 4),
(245, 1),
(245, 4),
(246, 1),
(246, 4),
(247, 1),
(247, 4),
(248, 1),
(248, 4),
(249, 1),
(249, 4),
(250, 1),
(250, 4),
(251, 1),
(251, 4),
(252, 1),
(252, 4),
(253, 1),
(253, 4),
(254, 1),
(254, 4),
(255, 1),
(255, 4),
(256, 1),
(256, 4),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(261, 4),
(262, 1),
(262, 4),
(263, 1),
(263, 4),
(264, 1),
(264, 4),
(265, 1),
(265, 4),
(266, 1),
(266, 4),
(267, 1),
(267, 4),
(268, 1),
(268, 4),
(269, 1),
(269, 4),
(270, 1),
(270, 4),
(271, 1),
(271, 4),
(272, 1),
(272, 4),
(273, 1),
(273, 4),
(274, 1),
(274, 4),
(275, 1),
(275, 4),
(276, 1),
(276, 4),
(277, 1),
(277, 4),
(278, 1),
(278, 4),
(279, 1),
(279, 4),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(305, 4),
(306, 1),
(306, 4);

-- --------------------------------------------------------

--
-- Table structure for table `savings`
--

CREATE TABLE `savings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `savings_officer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `savings_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_type` enum('client','group') COLLATE utf8mb4_unicode_ci DEFAULT 'client',
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimals` int(11) DEFAULT NULL,
  `interest_rate` decimal(65,6) NOT NULL,
  `interest_rate_type` enum('day','week','month','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'year',
  `compounding_period` enum('daily','weekly','monthly','biannual','annually') COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest_posting_period_type` enum('daily','weekly','monthly','biannual','annually') COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest_calculation_type` enum('daily_balance','average_daily_balance') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'daily_balance',
  `balance_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `total_deposits_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `total_withdrawals_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `total_interest_posted_derived` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `minimum_balance_for_interest_calculation` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `lockin_period` int(11) NOT NULL DEFAULT 0,
  `lockin_type` enum('days','weeks','months','years') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `automatic_opening_balance` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `allow_overdraft` tinyint(4) NOT NULL DEFAULT 0,
  `overdraft_limit` decimal(65,6) DEFAULT NULL,
  `overdraft_interest_rate` decimal(65,6) DEFAULT NULL,
  `minimum_overdraft_for_interest` decimal(65,6) DEFAULT NULL,
  `submitted_on_date` date DEFAULT NULL,
  `submitted_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_on_date` date DEFAULT NULL,
  `approved_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_on_date` date DEFAULT NULL,
  `activated_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `activated_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rejected_on_date` date DEFAULT NULL,
  `rejected_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rejected_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dormant_on_date` date DEFAULT NULL,
  `dormant_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dormant_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed_on_date` date DEFAULT NULL,
  `closed_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `closed_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inactive_on_date` date DEFAULT NULL,
  `inactive_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inactive_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawn_on_date` date DEFAULT NULL,
  `withdrawn_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawn_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','active','withdrawn','rejected','closed','inactive','dormant','submitted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'submitted',
  `start_interest_posting_date` date DEFAULT NULL,
  `next_interest_posting_date` date DEFAULT NULL,
  `start_interest_calculation_date` date DEFAULT NULL,
  `next_interest_calculation_date` date DEFAULT NULL,
  `last_interest_calculation_date` date DEFAULT NULL,
  `last_interest_posting_date` date DEFAULT NULL,
  `calculated_interest` decimal(65,6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `savings`
--

INSERT INTO `savings` (`id`, `created_by_id`, `currency_id`, `savings_officer_id`, `savings_product_id`, `client_type`, `client_id`, `group_id`, `branch_id`, `account_number`, `external_id`, `decimals`, `interest_rate`, `interest_rate_type`, `compounding_period`, `interest_posting_period_type`, `interest_calculation_type`, `balance_derived`, `total_deposits_derived`, `total_withdrawals_derived`, `total_interest_posted_derived`, `minimum_balance_for_interest_calculation`, `lockin_period`, `lockin_type`, `automatic_opening_balance`, `allow_overdraft`, `overdraft_limit`, `overdraft_interest_rate`, `minimum_overdraft_for_interest`, `submitted_on_date`, `submitted_by_user_id`, `approved_on_date`, `approved_by_user_id`, `approved_notes`, `activated_on_date`, `activated_by_user_id`, `activated_notes`, `rejected_on_date`, `rejected_by_user_id`, `rejected_notes`, `dormant_on_date`, `dormant_by_user_id`, `dormant_notes`, `closed_on_date`, `closed_by_user_id`, `closed_notes`, `inactive_on_date`, `inactive_by_user_id`, `inactive_notes`, `withdrawn_on_date`, `withdrawn_by_user_id`, `withdrawn_notes`, `status`, `start_interest_posting_date`, `next_interest_posting_date`, `start_interest_calculation_date`, `next_interest_calculation_date`, `last_interest_calculation_date`, `last_interest_posting_date`, `calculated_interest`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'client', 1, NULL, 1, NULL, NULL, 2, '10.000000', 'year', 'daily', 'monthly', 'daily_balance', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 0, 'days', '0.000000', 0, NULL, NULL, NULL, '2020-10-02', 1, '2020-10-02', 1, NULL, '2020-10-02', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2020-10-31', '2020-10-31', '2020-10-02', '2020-10-02', NULL, NULL, NULL, '2020-10-02 06:28:35', '2020-10-02 06:28:44'),
(2, 1, 1, 1, 2, 'client', 2, NULL, 1, '12002', NULL, 0, '10.000000', 'year', 'daily', 'monthly', 'daily_balance', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 0, 'days', '0.000000', 0, NULL, NULL, NULL, '2020-12-06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'submitted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-06 17:11:55', '2021-01-15 15:34:02'),
(3, 1, 1, 1, 2, 'client', 2, NULL, 1, '12003', NULL, 0, '10.000000', 'year', 'daily', 'monthly', 'daily_balance', '30.000000', '0.000000', '0.000000', '0.000000', '0.000000', 0, 'days', '0.000000', 0, NULL, NULL, NULL, '2020-12-06', 1, '2020-12-06', 1, NULL, '2020-12-06', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2020-12-31', '2020-12-31', '2020-12-06', '2020-12-06', NULL, NULL, NULL, '2020-12-06 17:27:08', '2021-01-15 15:30:42'),
(4, 1, 1, 3, 1, 'client', 1, NULL, 1, NULL, NULL, 2, '10.000000', 'year', 'daily', 'monthly', 'daily_balance', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 0, 'days', '0.000000', 0, NULL, NULL, NULL, '2021-01-15', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'submitted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-15 18:13:11', '2021-01-15 18:13:11'),
(5, 1, 1, 3, 1, 'client', 1, NULL, 1, '11005', NULL, 2, '10.000000', 'year', 'daily', 'monthly', 'daily_balance', '0.000000', '0.000000', '0.000000', '0.000000', '0.000000', 0, 'days', '0.000000', 0, NULL, NULL, NULL, '2021-01-15', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'submitted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-15 18:15:05', '2021-01-15 18:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `savings_charges`
--

CREATE TABLE `savings_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `savings_charge_type_id` bigint(20) UNSIGNED NOT NULL,
  `savings_charge_option_id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(65,6) NOT NULL,
  `min_amount` decimal(65,6) DEFAULT NULL,
  `max_amount` decimal(65,6) DEFAULT NULL,
  `payment_mode` enum('regular','account_transfer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'regular',
  `schedule` tinyint(4) NOT NULL DEFAULT 0,
  `schedule_frequency` int(11) DEFAULT NULL,
  `schedule_frequency_type` enum('days','weeks','months','years') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `allow_override` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `savings_charges`
--

INSERT INTO `savings_charges` (`id`, `created_by_id`, `currency_id`, `savings_charge_type_id`, `savings_charge_option_id`, `name`, `amount`, `min_amount`, `max_amount`, `payment_mode`, `schedule`, `schedule_frequency`, `schedule_frequency_type`, `active`, `allow_override`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'Test', '40.000000', NULL, NULL, 'regular', 0, NULL, NULL, 1, 0, '2020-12-05 07:37:27', '2020-12-05 07:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `savings_charge_options`
--

CREATE TABLE `savings_charge_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `savings_charge_options`
--

INSERT INTO `savings_charge_options` (`id`, `name`, `translated_name`, `active`) VALUES
(1, 'Flat', 'Flat', 1),
(2, 'Percentage of amount', 'Percentage of amount', 1),
(3, 'Percentage of savings balance', 'Percentage of savings balance', 1);

-- --------------------------------------------------------

--
-- Table structure for table `savings_charge_types`
--

CREATE TABLE `savings_charge_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `savings_charge_types`
--

INSERT INTO `savings_charge_types` (`id`, `name`, `translated_name`, `active`) VALUES
(1, 'Savings Activation', 'Savings Activation', 1),
(2, 'Specified Due Date', 'Specified Due Date', 1),
(3, 'Withdrawal Fee', 'Withdrawal Fee', 1),
(4, 'Annual Fee', 'Annual Fee', 1),
(5, 'Monthly Fee', 'Monthly Fee', 1),
(6, 'Inactivity Fee', 'Inactivity Fee', 1),
(7, 'Quarterly Fee', 'Quarterly Fee', 1);

-- --------------------------------------------------------

--
-- Table structure for table `savings_linked_charges`
--

CREATE TABLE `savings_linked_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `savings_id` bigint(20) UNSIGNED DEFAULT NULL,
  `savings_charge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `savings_charge_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `savings_charge_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `savings_transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(65,6) NOT NULL,
  `calculated_amount` decimal(65,6) DEFAULT NULL,
  `paid_amount` decimal(65,6) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `waived` tinyint(4) NOT NULL DEFAULT 0,
  `is_paid` tinyint(4) NOT NULL DEFAULT 0,
  `submitted_on` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `savings_linked_charges`
--

INSERT INTO `savings_linked_charges` (`id`, `created_by_id`, `currency_id`, `savings_id`, `savings_charge_id`, `savings_charge_type_id`, `savings_charge_option_id`, `savings_transaction_id`, `name`, `amount`, `calculated_amount`, `paid_amount`, `active`, `waived`, `is_paid`, `submitted_on`, `created_at`, `updated_at`) VALUES
(4, NULL, NULL, 3, 1, 1, 1, NULL, 'Test', '40.000000', NULL, NULL, 0, 0, 0, NULL, '2021-01-15 15:30:42', '2021-01-15 15:30:42'),
(5, NULL, NULL, 2, 1, 1, 1, NULL, 'Test', '40.000000', NULL, NULL, 0, 0, 0, NULL, '2021-01-15 15:34:02', '2021-01-15 15:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `savings_products`
--

CREATE TABLE `savings_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `savings_reference_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `overdraft_portfolio_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `savings_control_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `interest_on_savings_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `write_off_savings_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `income_from_fees_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `income_from_penalties_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `income_from_interest_overdraft_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimals` int(11) DEFAULT NULL,
  `savings_category` enum('voluntary','compulsory') COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_create` tinyint(4) NOT NULL DEFAULT 0,
  `minimum_interest_rate` decimal(65,6) NOT NULL,
  `default_interest_rate` decimal(65,6) NOT NULL,
  `maximum_interest_rate` decimal(65,6) NOT NULL,
  `interest_rate_type` enum('day','week','month','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'year',
  `compounding_period` enum('daily','weekly','monthly','biannual','annually') COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest_posting_period_type` enum('daily','weekly','monthly','biannual','annually') COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest_calculation_type` enum('daily_balance','average_daily_balance') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'daily_balance',
  `automatic_opening_balance` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `minimum_balance_for_interest_calculation` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `lockin_period` int(11) NOT NULL DEFAULT 0,
  `lockin_type` enum('days','weeks','months','years') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `minimum_balance` decimal(65,6) NOT NULL DEFAULT 0.000000,
  `allow_overdraft` tinyint(4) NOT NULL DEFAULT 0,
  `overdraft_limit` decimal(65,6) DEFAULT NULL,
  `overdraft_interest_rate` decimal(65,6) DEFAULT NULL,
  `minimum_overdraft_for_interest` decimal(65,6) DEFAULT NULL,
  `days_in_year` enum('actual','360','365','364') COLLATE utf8mb4_unicode_ci DEFAULT '365',
  `days_in_month` enum('actual','30','31') COLLATE utf8mb4_unicode_ci DEFAULT '30',
  `accounting_rule` enum('none','cash') COLLATE utf8mb4_unicode_ci DEFAULT 'none',
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `savings_products`
--

INSERT INTO `savings_products` (`id`, `created_by_id`, `currency_id`, `savings_reference_chart_of_account_id`, `overdraft_portfolio_chart_of_account_id`, `savings_control_chart_of_account_id`, `interest_on_savings_chart_of_account_id`, `write_off_savings_chart_of_account_id`, `income_from_fees_chart_of_account_id`, `income_from_penalties_chart_of_account_id`, `income_from_interest_overdraft_chart_of_account_id`, `name`, `short_name`, `description`, `decimals`, `savings_category`, `auto_create`, `minimum_interest_rate`, `default_interest_rate`, `maximum_interest_rate`, `interest_rate_type`, `compounding_period`, `interest_posting_period_type`, `interest_calculation_type`, `automatic_opening_balance`, `minimum_balance_for_interest_calculation`, `lockin_period`, `lockin_type`, `minimum_balance`, `allow_overdraft`, `overdraft_limit`, `overdraft_interest_rate`, `minimum_overdraft_for_interest`, `days_in_year`, `days_in_month`, `accounting_rule`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MADEgroupSaving.', 'MDSAVE', 'Group saving', 2, 'voluntary', 0, '0.000000', '1.000000', '0.000000', 'year', 'daily', 'monthly', 'daily_balance', '0.000000', '0.000000', 0, 'days', '0.000000', 0, NULL, NULL, NULL, '365', '30', 'none', 1, '2020-10-02 06:28:23', '2022-04-18 15:04:46'),
(2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ecocash', 'default', 'default', 0, 'voluntary', 0, '0.000000', '10.000000', '0.000000', 'year', 'daily', 'monthly', 'daily_balance', '0.000000', '0.000000', 0, 'days', '0.000000', 0, NULL, NULL, NULL, '365', '30', 'none', 1, '2020-12-05 09:06:44', '2020-12-05 09:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `savings_product_linked_charges`
--

CREATE TABLE `savings_product_linked_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `savings_product_id` bigint(20) UNSIGNED NOT NULL,
  `savings_charge_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `savings_product_linked_charges`
--

INSERT INTO `savings_product_linked_charges` (`id`, `savings_product_id`, `savings_charge_id`, `created_at`, `updated_at`) VALUES
(3, 2, 1, '2020-12-05 09:16:49', '2020-12-05 09:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `savings_transactions`
--

CREATE TABLE `savings_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `savings_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `savings_linked_charge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(65,6) NOT NULL,
  `credit` decimal(65,6) DEFAULT NULL,
  `debit` decimal(65,6) DEFAULT NULL,
  `balance` decimal(65,6) DEFAULT NULL,
  `savings_transaction_type_id` bigint(20) UNSIGNED NOT NULL,
  `reversed` tinyint(4) NOT NULL DEFAULT 0,
  `reversible` tinyint(4) NOT NULL DEFAULT 0,
  `submitted_on` date DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_transaction` tinyint(4) NOT NULL DEFAULT 0,
  `status` enum('pending','approved','declined') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `savings_transactions`
--

INSERT INTO `savings_transactions` (`id`, `savings_id`, `created_by_id`, `branch_id`, `savings_linked_charge_id`, `payment_detail_id`, `name`, `amount`, `credit`, `debit`, `balance`, `savings_transaction_type_id`, `reversed`, `reversible`, `submitted_on`, `created_on`, `description`, `reference`, `gateway_id`, `payment_gateway_data`, `online_transaction`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 3, NULL, 'Pay Charge', '40.000000', NULL, '40.000000', '-40.000000', 12, 0, 1, '2020-12-06', '2020-12-06', NULL, NULL, NULL, NULL, 0, 'pending', '2020-12-06 18:01:10', '2020-12-15 16:20:53'),
(2, 3, 1, 1, NULL, 11, 'Deposit', '80.000000', '80.000000', NULL, '40.000000', 1, 0, 1, '2020-12-06', '2020-12-06', NULL, NULL, NULL, NULL, 0, 'pending', '2020-12-06 18:09:38', '2020-12-15 16:20:53'),
(3, 3, 1, 1, NULL, 12, 'Withdrawal', '10.000000', NULL, '10.000000', '30.000000', 2, 0, 1, '2020-12-06', '2020-12-06', NULL, NULL, NULL, NULL, 0, 'pending', '2020-12-06 18:13:21', '2020-12-15 16:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `savings_transaction_types`
--

CREATE TABLE `savings_transaction_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `savings_transaction_types`
--

INSERT INTO `savings_transaction_types` (`id`, `name`, `translated_name`, `active`) VALUES
(1, 'Deposit', 'Deposit', 1),
(2, 'Withdrawal', 'Withdrawal', 1),
(3, 'Dividend', 'Dividend', 1),
(4, 'Waive Interest', 'Waive Interest', 1),
(5, 'Guarantee', 'Guarantee', 1),
(6, 'Guarantee Restored', 'Guarantee Restored', 1),
(7, 'Loan Repayment', 'Loan Repayment', 1),
(8, 'Transfer', 'Transfer', 1),
(9, 'Waive Charges', 'Waive Charges', 1),
(10, 'Apply Charges', 'Apply Charges', 1),
(11, 'Apply Interest', 'Apply Interest', 1),
(12, 'Pay Charge', 'Pay Charge', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `category` enum('email','sms','general','system','update','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('text','textarea','number','select','radio','date','select_db','radio_db','select_multiple','select_multiple_db','checkbox','checkbox_db','file','info') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `db_columns` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayed` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `setting_key`, `module`, `setting_value`, `order`, `category`, `type`, `options`, `rules`, `class`, `required`, `db_columns`, `info`, `displayed`, `created_at`, `updated_at`) VALUES
(1, 'Company Name', 'core.company_name', 'Core', 'Madeo Finance LTD', NULL, 'general', 'text', '', '', '', 1, '', NULL, 1, NULL, '2022-04-15 15:27:38'),
(2, 'Company Address', 'core.company_address', 'Core', 'P.O.BOX 16285\r\nDAR ES SALAAM', NULL, 'general', 'textarea', '', '', '', 0, '', NULL, 1, NULL, '2022-04-15 15:27:38'),
(3, 'Company Country', 'core.company_country', 'Core', '216', NULL, 'general', 'select_db', 'countries', '', 'select2', 0, 'id,name', NULL, 1, NULL, '2022-04-15 15:27:38'),
(4, 'Timezone', 'core.timezone', 'Core', '373', NULL, 'general', 'select_db', 'timezones', '', 'select2', 1, 'id,zone_name', NULL, 1, NULL, '2022-04-15 15:27:38'),
(5, 'System Version', 'core.system_version', 'Core', '3.0', NULL, 'update', 'info', '', '', '', 1, '', NULL, 1, NULL, NULL),
(6, 'Company Email', 'core.company_email', 'Core', 'nonreply@madeo.co.tz', NULL, 'general', 'text', '', '', '', 1, '', NULL, 1, NULL, '2022-04-15 15:27:38'),
(7, 'Company Logo', 'core.company_logo', 'Core', 'BQTmPBa48QPb8q2i7P3WSLal6QpgzZQjO0WIcolw.jpeg', NULL, 'general', 'file', 'jpeg,jpg,bmp,png', 'nullable|file|mimes:jpeg,jpg,bmp,png', '', 0, '', NULL, 1, NULL, '2022-04-19 20:23:23'),
(8, 'Site Online', 'core.site_online', 'Core', 'yes', NULL, 'system', 'select', 'yes,no', '', '', 1, '', NULL, 1, NULL, NULL),
(9, 'Console Last Run', 'core.console_last_run', 'Core', NULL, NULL, 'system', 'info', '', '', '', 1, '', NULL, 1, NULL, '2021-01-15 15:28:29'),
(10, 'Update Url', 'core.update_url', 'Core', 'http://webstudio.co.zw/ulm/update', NULL, 'general', 'info', '', '', '', 1, '', NULL, 0, NULL, NULL),
(11, 'Auto Download Update', 'core.auto_download_update', 'Core', 'no', NULL, 'system', 'select', 'yes,no', '', '', 1, '', NULL, 1, NULL, NULL),
(12, 'Update last checked', 'core.update_last_checked', 'Core', NULL, NULL, 'system', 'info', '', '', '', 1, '', NULL, 1, NULL, '2021-01-15 15:28:29'),
(13, 'Extra Javascript', 'core.extra_javascript', 'Core', NULL, NULL, 'system', 'textarea', '', '', '', 0, '', NULL, 1, NULL, '2021-01-15 15:28:29'),
(14, 'Extra Styles', 'core.extra_styles', 'Core', NULL, NULL, 'system', 'textarea', '', '', '', 0, '', NULL, 1, NULL, '2021-01-15 15:28:29'),
(15, 'Demo Mode', 'core.demo_mode', 'Core', 'no', NULL, 'system', 'select', 'yes,no', '', '', 1, '', NULL, 1, NULL, NULL),
(16, 'Purchase Code', 'core.purchase_code', 'Core', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpZCI6NDgsInByb2R1Y3QiOnsiaWQiOjEsImNyZWF0ZWRfYnlfaWQiOjEsIm5hbWUiOiJVbHRpbWF0ZSBMb2FuIE1hbmFnZXIiLCJjdXJyZW50X3ZlcnNpb24iOiIzIiwiZG93bmxvYWRfbGluayI6Imh0dHAiLCJhY3RpdmUiOjEsImRlc2NyaXB0aW9uIjpudWxsLCJjcmVhdGVkX2F0IjoiMjAyMC0wMS0yMVQwMTowMzozOC4wMDAwMDBaIiwidXBkYXRlZF9hdCI6IjIwMjAtMDEtMjFUMDE6MDU6MzYuMDAwMDAwWiIsInZlcnNpb25fY2hlY2tzIjowfSwicHJvZHVjdF9wYWNrYWdlIjpudWxsLCJzdGFydF9kYXRlIjpudWxsLCJlbmRfZGF0ZSI6bnVsbCwibGljZW5zZV90eXBlIjoiaW50ZXJuYWwiLCJsaWNlbnNlZF90byI6IiIsImV4cGlyZXMiOmZhbHNlLCJzZXJ2ZXIiOiJ3ZWJzdHVkaW8uY28uenciLCJpbnN0YWxsYXRpb25faW5zdGFuY2VzIjoiMSIsImlwX2FkZHJlc3MiOiIxMjcuMC4wLjEifQ.rQ1iUEG_NB23zkRA4NTGmPRjszLPuFb1T4NVnAnaLGgqKXbAmGL9_SfmwEOM86FekOr21FnpUqo1UFMLzOs55INju4RIUtA7o8V8z_k3AKQDtLl_WdPO47IyPWWlJGKHqM8-7MCI1fW7kpUtSptHCCKZQ5znKEUSpWV09iAGAx35UkRmca1YKPrSxluPIoPIbN5T_TPW5Le6s8L_iR5t8F-zSAaY-eHWPy4pk6VQHvcl8odB-y6t2qNwDi0RyupUaFIeaWaz7b2SOSXoO442blwLXGnQdkwXi9p7umq3ro7h0UTIM52D0xpiO7TggJYY12ftcwwhvdqm99aE1miPZg', NULL, 'system', 'text', '', '', '', 0, '', NULL, 1, NULL, '2022-04-18 20:41:10'),
(17, 'Registration Enabled', 'user.enable_registration', 'User', 'no', NULL, 'system', 'select', 'yes,no', NULL, '', 1, '', NULL, 1, NULL, NULL),
(18, 'Enable Google recaptcha', 'user.enable_google_recaptcha', 'User', 'no', NULL, 'system', 'select', 'yes,no', NULL, '', 1, '', NULL, 1, NULL, NULL),
(19, 'Google recaptcha site key', 'user.google_recaptcha_site_key', 'User', NULL, NULL, 'system', 'text', '', NULL, '', 0, '', NULL, 1, NULL, '2021-01-15 15:28:29'),
(20, 'Google recaptcha secret key', 'user.google_recaptcha_secret_key', 'User', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpZCI6NDgsInByb2R1Y3QiOnsiaWQiOjEsImNyZWF0ZWRfYnlfaWQiOjEsIm5hbWUiOiJVbHRpbWF0ZSBMb2FuIE1hbmFnZXIiLCJjdXJyZW50X3ZlcnNpb24iOiIzIiwiZG93bmxvYWRfbGluayI6Imh0dHAiLCJhY3RpdmUiOjEsImRlc2NyaXB0aW9uIjpudWxsLCJjcmVhdGVkX2F0IjoiMjAyMC0wMS0yMVQwMTowMzozOC4wMDAwMDBaIiwidXBkYXRlZF9hdCI6IjIwMjAtMDEtMjFUMDE6MDU6MzYuMDAwMDAwWiIsInZlcnNpb25fY2hlY2tzIjowfSwicHJvZHVjdF9wYWNrYWdlIjpudWxsLCJzdGFydF9kYXRlIjpudWxsLCJlbmRfZGF0ZSI6bnVsbCwibGljZW5zZV90eXBlIjoiaW50ZXJuYWwiLCJsaWNlbnNlZF90byI6IiIsImV4cGlyZXMiOmZhbHNlLCJzZXJ2ZXIiOiJ3ZWJzdHVkaW8uY28uenciLCJpbnN0YWxsYXRpb25faW5zdGFuY2VzIjoiMSIsImlwX2FkZHJlc3MiOiIxMjcuMC4wLjEifQ.rQ1iUEG_NB23zkRA4NTGmPRjszLPuFb1T4NVnAnaLGgqKXbAmGL9_SfmwEOM86FekOr21FnpUqo1UFMLzOs55INju4RIUtA7o8V8z_k3AKQDtLl_WdPO47IyPWWlJGKHqM8-7MCI1fW7kpUtSptHCCKZQ5znKEUSpWV09iAGAx35UkRmca1YKPrSxluPIoPIbN5T_TPW5Le6s8L_iR5t8F-zSAaY-eHWPy4pk6VQHvcl8odB-y6t2qNwDi0RyupUaFIeaWaz7b2SOSXoO442blwLXGnQdkwXi9p7umq3ro7h0UTIM52D0xpiO7TggJYY12ftcwwhvdqm99aE1miPZg', NULL, 'system', 'text', '', NULL, '', 0, '', NULL, 1, NULL, '2022-04-18 20:41:10'),
(21, 'SMS Enabled', 'communication.sms_enabled', 'Communication', 'yes', NULL, 'sms', 'select', 'yes,no', '', '', 1, '', NULL, 1, NULL, '2022-04-15 15:29:08'),
(22, 'Active SMS Gateway', 'communication.active_sms_gateway', 'Communication', '1', NULL, 'sms', 'select_db', 'sms_gateways', '', 'select2', 0, 'id,name', NULL, 1, NULL, '2022-04-22 16:43:44'),
(23, 'Active Theme', 'core.active_theme', 'Core', 'AdminLTE', NULL, 'system', 'text', '', '', '', 0, '', NULL, 0, NULL, '2020-12-19 02:37:11'),
(24, 'Status', 'mpesa.status', NULL, 'active', NULL, 'other', 'select', 'active,inactive', '', '', 1, '', NULL, 0, NULL, '2020-12-04 13:29:46'),
(25, 'Name', 'mpesa.gateway_name', NULL, 'Mpesa', NULL, 'other', 'text', '', '', '', 1, '', NULL, 0, NULL, NULL),
(26, 'Logo', 'mpesa.logo', NULL, NULL, NULL, 'other', 'file', '', '', '', 0, '', NULL, 0, NULL, '2020-12-04 13:29:46'),
(27, 'Consumer Key', 'mpesa.consumer_key', NULL, '5WgKtWpluUIpPUwuzHP4WdY6dACzQffY', NULL, 'other', 'text', '', '', '', 0, '', NULL, 0, NULL, '2020-12-04 13:29:46'),
(28, 'Consumer Secret', 'mpesa.consumer_secret', NULL, 'rNXAfVcoyFkil3He', NULL, 'other', 'text', '', '', '', 0, '', NULL, 0, NULL, '2020-12-04 13:29:46'),
(29, 'Passkey', 'mpesa.passkey', NULL, 'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919', NULL, 'other', 'text', '', '', '', 0, '', NULL, 0, NULL, '2020-12-04 14:13:27'),
(30, 'Business Shortcode', 'mpesa.business_shortcode', NULL, '174379', NULL, 'other', 'text', '', '', '', 0, '', NULL, 0, NULL, '2020-12-04 14:13:27'),
(31, 'Sandbox URl', 'mpesa.sandbox_url', NULL, 'https://sandbox.safaricom.co.ke', NULL, 'other', 'text', '', '', '', 0, '', NULL, 0, NULL, NULL),
(32, 'Live URl', 'mpesa.live_url', NULL, 'https://sandbox.safaricom.co.ke', NULL, 'other', 'text', '', '', '', 0, '', NULL, 0, NULL, NULL),
(33, 'Test Mode', 'mpesa.test_mode', NULL, 'yes', NULL, 'other', 'select', 'yes,no', '', '', 0, '', NULL, 0, NULL, NULL),
(34, 'Currency Code', 'mpesa.currency_code', NULL, 'USD', NULL, 'other', 'text', '', '', '', 1, '', NULL, 0, NULL, NULL),
(35, 'Savings Reference Prefix', 'savings.reference_prefix', 'Savings', 'MDO', NULL, 'system', 'text', '', '', '', 0, '', NULL, 1, NULL, '2022-04-18 20:41:10'),
(36, 'Savings Reference Format', 'savings.reference_format', 'Savings', 'Branch Product Sequence Number', NULL, 'system', 'select', 'YEAR/Sequence Number (SL/2014/001),YEAR/MONTH/Sequence Number (SL/2014/08/001),Sequence Number,Random Number,Branch Product Sequence Number', '', '', 1, '', NULL, 1, NULL, '2021-01-15 15:28:29'),
(37, 'Loan Reference Prefix', 'loan.reference_prefix', 'Loan', 'L', NULL, 'system', 'text', '', '', '', 0, '', NULL, 1, NULL, NULL),
(38, 'Loan Reference Format', 'loan.reference_format', 'Loan', 'YEAR/Sequence Number (SL/2014/001)', NULL, 'system', 'select', 'YEAR/Sequence Number (SL/2014/001),YEAR/MONTH/Sequence Number (SL/2014/08/001),Sequence Number,Random Number,Branch Product Sequence Number', '', '', 1, '', NULL, 1, NULL, NULL),
(39, 'Client Reference Prefix', 'client.reference_prefix', 'Client', 'CL', NULL, 'system', 'text', '', '', '', 0, '', NULL, 1, NULL, NULL),
(40, 'Client Reference Format', 'client.reference_format', 'Client', 'YEAR/Sequence Number (SL/2014/001)', NULL, 'system', 'select', 'YEAR/Sequence Number (SL/2014/001),YEAR/MONTH/Sequence Number (SL/2014/08/001),Sequence Number,Random Number,Branch Sequence Number', '', '', 1, '', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `share_officer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `share_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `savings_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_type` enum('client','group') COLLATE utf8mb4_unicode_ci DEFAULT 'client',
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimals` int(11) DEFAULT NULL,
  `total_shares` int(11) DEFAULT NULL,
  `nominal_price` decimal(65,6) DEFAULT NULL,
  `minimum_active_period` int(11) DEFAULT NULL,
  `minimum_active_period_type` enum('days','weeks','months','years') COLLATE utf8mb4_unicode_ci DEFAULT 'days',
  `lockin_period` int(11) NOT NULL DEFAULT 0,
  `lockin_type` enum('days','weeks','months','years') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `allow_dividends_for_inactive_clients` tinyint(4) NOT NULL DEFAULT 0,
  `submitted_on_date` date DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `submitted_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_on_date` date DEFAULT NULL,
  `approved_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_on_date` date DEFAULT NULL,
  `activated_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `activated_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rejected_on_date` date DEFAULT NULL,
  `rejected_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rejected_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dormant_on_date` date DEFAULT NULL,
  `dormant_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dormant_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed_on_date` date DEFAULT NULL,
  `closed_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `closed_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inactive_on_date` date DEFAULT NULL,
  `inactive_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inactive_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `withdrawn_on_date` date DEFAULT NULL,
  `withdrawn_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawn_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','active','withdrawn','rejected','closed','inactive','dormant','submitted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'submitted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`id`, `created_by_id`, `currency_id`, `share_officer_id`, `share_product_id`, `savings_id`, `client_type`, `client_id`, `group_id`, `branch_id`, `account_number`, `external_id`, `decimals`, `total_shares`, `nominal_price`, `minimum_active_period`, `minimum_active_period_type`, `lockin_period`, `lockin_type`, `allow_dividends_for_inactive_clients`, `submitted_on_date`, `application_date`, `submitted_by_user_id`, `approved_on_date`, `approved_by_user_id`, `approved_notes`, `activated_on_date`, `activated_by_user_id`, `activated_notes`, `rejected_on_date`, `rejected_by_user_id`, `rejected_notes`, `dormant_on_date`, `dormant_by_user_id`, `dormant_notes`, `closed_on_date`, `closed_by_user_id`, `closed_notes`, `inactive_on_date`, `inactive_by_user_id`, `inactive_notes`, `withdrawn_on_date`, `withdrawn_by_user_id`, `withdrawn_notes`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 1, 1, 'client', 1, NULL, 1, NULL, NULL, 2, 230, '40.000000', 1, 'days', 0, 'days', 0, '2020-10-02', '2020-10-02', 1, '2020-10-03', 1, 'ggg', '2020-10-07', 1, 'ff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2020-10-02 07:49:36', '2020-10-08 13:19:35'),
(2, 1, 1, 3, 1, 3, 'client', 2, NULL, 1, NULL, NULL, 2, 200, '40.000000', 1, 'days', 0, 'days', 0, '2020-12-07', '2020-12-07', 1, '2020-12-07', 1, 'f f', '2020-12-07', 1, 'this is nc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2020-12-07 10:07:48', '2020-12-07 12:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `share_charges`
--

CREATE TABLE `share_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `share_charge_type_id` bigint(20) UNSIGNED NOT NULL,
  `share_charge_option_id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(65,6) NOT NULL,
  `min_amount` decimal(65,6) DEFAULT NULL,
  `max_amount` decimal(65,6) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `allow_override` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `share_charges`
--

INSERT INTO `share_charges` (`id`, `created_by_id`, `currency_id`, `share_charge_type_id`, `share_charge_option_id`, `name`, `amount`, `min_amount`, `max_amount`, `active`, `allow_override`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2, 'Test', '20.000000', NULL, NULL, 1, 0, '2020-09-15 10:54:01', '2020-09-15 10:54:01'),
(2, 1, 1, 1, 1, 'nice', '40.000000', NULL, NULL, 1, 0, '2020-12-06 18:33:57', '2020-12-06 18:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `share_charge_options`
--

CREATE TABLE `share_charge_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `share_charge_options`
--

INSERT INTO `share_charge_options` (`id`, `name`, `translated_name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Flat', 'Flat', 1, NULL, NULL),
(2, 'Percentage of amount', 'Percentage of amount', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `share_charge_types`
--

CREATE TABLE `share_charge_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `share_charge_types`
--

INSERT INTO `share_charge_types` (`id`, `name`, `translated_name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Share Account Activation', 'Share Account Activation', 1, NULL, NULL),
(2, 'Share Purchase', 'Share Purchase', 1, NULL, NULL),
(3, 'Share Redeem', 'Share Redeem', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `share_linked_charges`
--

CREATE TABLE `share_linked_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `share_id` bigint(20) UNSIGNED DEFAULT NULL,
  `share_charge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `share_charge_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `share_charge_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `share_transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(65,6) NOT NULL,
  `calculated_amount` decimal(65,6) DEFAULT NULL,
  `paid_amount` decimal(65,6) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `waived` tinyint(4) NOT NULL DEFAULT 0,
  `is_paid` tinyint(4) NOT NULL DEFAULT 0,
  `submitted_on` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `share_linked_charges`
--

INSERT INTO `share_linked_charges` (`id`, `created_by_id`, `currency_id`, `share_id`, `share_charge_id`, `share_charge_type_id`, `share_charge_option_id`, `share_transaction_id`, `name`, `amount`, `calculated_amount`, `paid_amount`, `active`, `waived`, `is_paid`, `submitted_on`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, 1, 1, 1, 2, 2, 'Test', '20.000000', '20.000000', '20.000000', 0, 0, 1, NULL, '2020-10-02 10:38:40', '2020-10-07 11:15:10'),
(4, NULL, NULL, 2, 1, 1, 2, 6, 'Test', '20.000000', '20.000000', '20.000000', 0, 0, 1, NULL, '2020-12-07 10:28:54', '2020-12-07 12:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `share_market_periods`
--

CREATE TABLE `share_market_periods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `share_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `nominal_price` decimal(65,6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `share_products`
--

CREATE TABLE `share_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `share_reference_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `share_suspense_control_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `equity_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `income_from_fees_chart_of_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimals` int(11) DEFAULT NULL,
  `total_shares` int(11) DEFAULT NULL,
  `shares_to_be_issued` int(11) DEFAULT NULL,
  `nominal_price` decimal(65,6) DEFAULT NULL,
  `capital_value` decimal(65,6) DEFAULT NULL,
  `minimum_shares_per_client` decimal(65,6) DEFAULT NULL,
  `default_shares_per_client` decimal(65,6) DEFAULT NULL,
  `maximum_shares_per_client` decimal(65,6) DEFAULT NULL,
  `minimum_active_period` int(11) DEFAULT NULL,
  `minimum_active_period_type` enum('days','weeks','months','years') COLLATE utf8mb4_unicode_ci DEFAULT 'days',
  `lockin_period` int(11) NOT NULL DEFAULT 0,
  `lockin_type` enum('days','weeks','months','years') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `allow_dividends_for_inactive_clients` tinyint(4) NOT NULL DEFAULT 0,
  `accounting_rule` enum('none','cash') COLLATE utf8mb4_unicode_ci DEFAULT 'none',
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `share_products`
--

INSERT INTO `share_products` (`id`, `created_by_id`, `currency_id`, `share_reference_chart_of_account_id`, `share_suspense_control_chart_of_account_id`, `equity_chart_of_account_id`, `income_from_fees_chart_of_account_id`, `name`, `short_name`, `description`, `decimals`, `total_shares`, `shares_to_be_issued`, `nominal_price`, `capital_value`, `minimum_shares_per_client`, `default_shares_per_client`, `maximum_shares_per_client`, `minimum_active_period`, `minimum_active_period_type`, `lockin_period`, `lockin_type`, `allow_dividends_for_inactive_clients`, `accounting_rule`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, 'Test', 'test', 'test', 2, 400, 350, '40.000000', '14000.000000', '10.000000', '200.000000', '300.000000', 1, 'days', 0, 'days', 0, 'none', 1, '2020-09-15 11:57:59', '2020-12-16 07:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `share_product_linked_charges`
--

CREATE TABLE `share_product_linked_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `share_product_id` bigint(20) UNSIGNED NOT NULL,
  `share_charge_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `share_product_linked_charges`
--

INSERT INTO `share_product_linked_charges` (`id`, `share_product_id`, `share_charge_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1, '2020-12-16 07:50:01', '2020-12-16 07:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `share_transactions`
--

CREATE TABLE `share_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `share_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `share_linked_charge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(65,6) NOT NULL,
  `credit` decimal(65,6) DEFAULT NULL,
  `debit` decimal(65,6) DEFAULT NULL,
  `balance` decimal(65,6) DEFAULT NULL,
  `share_transaction_type_id` bigint(20) UNSIGNED NOT NULL,
  `reversed` tinyint(4) NOT NULL DEFAULT 0,
  `reversible` tinyint(4) NOT NULL DEFAULT 0,
  `submitted_on` date DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_transaction` tinyint(4) NOT NULL DEFAULT 0,
  `status` enum('pending','approved','declined') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `charge_amount` decimal(10,0) DEFAULT NULL,
  `total_shares` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `share_transactions`
--

INSERT INTO `share_transactions` (`id`, `share_id`, `created_by_id`, `branch_id`, `share_linked_charge_id`, `payment_detail_id`, `name`, `amount`, `credit`, `debit`, `balance`, `share_transaction_type_id`, `reversed`, `reversible`, `submitted_on`, `created_on`, `description`, `reference`, `gateway_id`, `payment_gateway_data`, `online_transaction`, `status`, `created_at`, `updated_at`, `charge_amount`, `total_shares`) VALUES
(1, 1, 1, 1, NULL, NULL, 'Share Purchase', '8000.000000', '8000.000000', NULL, NULL, 1, 0, 1, '2020-10-07', '2020-10-07', NULL, NULL, NULL, NULL, 0, 'pending', '2020-10-07 11:15:10', '2020-10-07 11:15:10', NULL, '200'),
(2, 1, 1, 1, 2, NULL, 'Apply Charge', '1600.000000', NULL, '1600.000000', NULL, 4, 0, 1, '2020-10-07', '2020-10-07', NULL, NULL, NULL, NULL, 0, 'pending', '2020-10-07 11:15:10', '2020-10-07 11:15:10', NULL, NULL),
(3, 1, 1, 1, NULL, NULL, 'Share Redeem', '800.000000', '800.000000', NULL, NULL, 2, 0, 1, '2020-10-08', '2020-10-08', NULL, NULL, NULL, NULL, 0, 'pending', '2020-10-08 13:15:09', '2020-10-08 13:15:09', NULL, '20'),
(4, 1, 1, 1, NULL, NULL, 'Share Purchase', '2000.000000', '2000.000000', NULL, NULL, 1, 0, 1, '2020-10-08', '2020-10-08', NULL, NULL, NULL, NULL, 0, 'pending', '2020-10-08 13:19:35', '2020-10-08 13:19:35', NULL, '50'),
(5, 2, 1, 1, NULL, NULL, 'Share Purchase', '8000.000000', '8000.000000', NULL, NULL, 1, 0, 1, '2020-12-07', '2020-12-07', NULL, NULL, NULL, NULL, 0, 'pending', '2020-12-07 12:49:45', '2020-12-07 12:49:45', NULL, '200'),
(6, 2, 1, 1, 4, NULL, 'Apply Charge', '1600.000000', NULL, '1600.000000', NULL, 4, 0, 1, '2020-12-07', '2020-12-07', NULL, NULL, NULL, NULL, 0, 'pending', '2020-12-07 12:49:45', '2020-12-07 12:49:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `share_transaction_types`
--

CREATE TABLE `share_transaction_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `is_current` tinyint(4) NOT NULL DEFAULT 0,
  `http_api` tinyint(4) NOT NULL DEFAULT 1,
  `class_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_one` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_one_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_two` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_two_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_three` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_three_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_four` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_four_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `created_by_id`, `name`, `to_name`, `url`, `msg_name`, `active`, `is_current`, `http_api`, `class_name`, `key_one`, `key_one_description`, `key_two`, `key_two_description`, `key_three`, `key_three_description`, `key_four`, `key_four_description`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 'Route', 'number', 'https://api.rmlconnect.net/bulksms/bulksms?username=webz-web&amp;amp;amp;password=heroes20&amp;amp;amp;type=0&amp;amp;amp;dlr=1&amp;amp;amp;destination=263774175438&amp;amp;amp;source=webstudio&amp;amp;amp;message=test', 'msg', 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-22 12:16:41', '2020-12-14 10:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(65,2) DEFAULT NULL,
  `type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `zone_id`, `country_code`, `zone_name`) VALUES
(1, '1', 'AD', 'Europe/Andorra'),
(2, '2', 'AE', 'Asia/Dubai'),
(3, '3', 'AF', 'Asia/Kabul'),
(4, '4', 'AG', 'America/Antigua'),
(5, '5', 'AI', 'America/Anguilla'),
(6, '6', 'AL', 'Europe/Tirane'),
(7, '7', 'AM', 'Asia/Yerevan'),
(8, '8', 'AO', 'Africa/Luanda'),
(9, '9', 'AQ', 'Antarctica/McMurdo'),
(10, '10', 'AQ', 'Antarctica/Casey'),
(11, '11', 'AQ', 'Antarctica/Davis'),
(12, '12', 'AQ', 'Antarctica/DumontDUrville'),
(13, '13', 'AQ', 'Antarctica/Mawson'),
(14, '14', 'AQ', 'Antarctica/Palmer'),
(15, '15', 'AQ', 'Antarctica/Rothera'),
(16, '16', 'AQ', 'Antarctica/Syowa'),
(17, '17', 'AQ', 'Antarctica/Troll'),
(18, '18', 'AQ', 'Antarctica/Vostok'),
(19, '19', 'AR', 'America/Argentina/Buenos_Aires'),
(20, '20', 'AR', 'America/Argentina/Cordoba'),
(21, '21', 'AR', 'America/Argentina/Salta'),
(22, '22', 'AR', 'America/Argentina/Jujuy'),
(23, '23', 'AR', 'America/Argentina/Tucuman'),
(24, '24', 'AR', 'America/Argentina/Catamarca'),
(25, '25', 'AR', 'America/Argentina/La_Rioja'),
(26, '26', 'AR', 'America/Argentina/San_Juan'),
(27, '27', 'AR', 'America/Argentina/Mendoza'),
(28, '28', 'AR', 'America/Argentina/San_Luis'),
(29, '29', 'AR', 'America/Argentina/Rio_Gallegos'),
(30, '30', 'AR', 'America/Argentina/Ushuaia'),
(31, '31', 'AS', 'Pacific/Pago_Pago'),
(32, '32', 'AT', 'Europe/Vienna'),
(33, '33', 'AU', 'Australia/Lord_Howe'),
(34, '34', 'AU', 'Antarctica/Macquarie'),
(35, '35', 'AU', 'Australia/Hobart'),
(36, '36', 'AU', 'Australia/Currie'),
(37, '37', 'AU', 'Australia/Melbourne'),
(38, '38', 'AU', 'Australia/Sydney'),
(39, '39', 'AU', 'Australia/Broken_Hill'),
(40, '40', 'AU', 'Australia/Brisbane'),
(41, '41', 'AU', 'Australia/Lindeman'),
(42, '42', 'AU', 'Australia/Adelaide'),
(43, '43', 'AU', 'Australia/Darwin'),
(44, '44', 'AU', 'Australia/Perth'),
(45, '45', 'AU', 'Australia/Eucla'),
(46, '46', 'AW', 'America/Aruba'),
(47, '47', 'AX', 'Europe/Mariehamn'),
(48, '48', 'AZ', 'Asia/Baku'),
(49, '49', 'BA', 'Europe/Sarajevo'),
(50, '50', 'BB', 'America/Barbados'),
(51, '51', 'BD', 'Asia/Dhaka'),
(52, '52', 'BE', 'Europe/Brussels'),
(53, '53', 'BF', 'Africa/Ouagadougou'),
(54, '54', 'BG', 'Europe/Sofia'),
(55, '55', 'BH', 'Asia/Bahrain'),
(56, '56', 'BI', 'Africa/Bujumbura'),
(57, '57', 'BJ', 'Africa/Porto-Novo'),
(58, '58', 'BL', 'America/St_Barthelemy'),
(59, '59', 'BM', 'Atlantic/Bermuda'),
(60, '60', 'BN', 'Asia/Brunei'),
(61, '61', 'BO', 'America/La_Paz'),
(62, '62', 'BQ', 'America/Kralendijk'),
(63, '63', 'BR', 'America/Noronha'),
(64, '64', 'BR', 'America/Belem'),
(65, '65', 'BR', 'America/Fortaleza'),
(66, '66', 'BR', 'America/Recife'),
(67, '67', 'BR', 'America/Araguaina'),
(68, '68', 'BR', 'America/Maceio'),
(69, '69', 'BR', 'America/Bahia'),
(70, '70', 'BR', 'America/Sao_Paulo'),
(71, '71', 'BR', 'America/Campo_Grande'),
(72, '72', 'BR', 'America/Cuiaba'),
(73, '73', 'BR', 'America/Santarem'),
(74, '74', 'BR', 'America/Porto_Velho'),
(75, '75', 'BR', 'America/Boa_Vista'),
(76, '76', 'BR', 'America/Manaus'),
(77, '77', 'BR', 'America/Eirunepe'),
(78, '78', 'BR', 'America/Rio_Branco'),
(79, '79', 'BS', 'America/Nassau'),
(80, '80', 'BT', 'Asia/Thimphu'),
(81, '81', 'BW', 'Africa/Gaborone'),
(82, '82', 'BY', 'Europe/Minsk'),
(83, '83', 'BZ', 'America/Belize'),
(84, '84', 'CA', 'America/St_Johns'),
(85, '85', 'CA', 'America/Halifax'),
(86, '86', 'CA', 'America/Glace_Bay'),
(87, '87', 'CA', 'America/Moncton'),
(88, '88', 'CA', 'America/Goose_Bay'),
(89, '89', 'CA', 'America/Blanc-Sablon'),
(90, '90', 'CA', 'America/Toronto'),
(91, '91', 'CA', 'America/Nipigon'),
(92, '92', 'CA', 'America/Thunder_Bay'),
(93, '93', 'CA', 'America/Iqaluit'),
(94, '94', 'CA', 'America/Pangnirtung'),
(95, '95', 'CA', 'America/Atikokan'),
(96, '96', 'CA', 'America/Winnipeg'),
(97, '97', 'CA', 'America/Rainy_River'),
(98, '98', 'CA', 'America/Resolute'),
(99, '99', 'CA', 'America/Rankin_Inlet'),
(100, '100', 'CA', 'America/Regina'),
(101, '101', 'CA', 'America/Swift_Current'),
(102, '102', 'CA', 'America/Edmonton'),
(103, '103', 'CA', 'America/Cambridge_Bay'),
(104, '104', 'CA', 'America/Yellowknife'),
(105, '105', 'CA', 'America/Inuvik'),
(106, '106', 'CA', 'America/Creston'),
(107, '107', 'CA', 'America/Dawson_Creek'),
(108, '108', 'CA', 'America/Fort_Nelson'),
(109, '109', 'CA', 'America/Vancouver'),
(110, '110', 'CA', 'America/Whitehorse'),
(111, '111', 'CA', 'America/Dawson'),
(112, '112', 'CC', 'Indian/Cocos'),
(113, '113', 'CD', 'Africa/Kinshasa'),
(114, '114', 'CD', 'Africa/Lubumbashi'),
(115, '115', 'CF', 'Africa/Bangui'),
(116, '116', 'CG', 'Africa/Brazzaville'),
(117, '117', 'CH', 'Europe/Zurich'),
(118, '118', 'CI', 'Africa/Abidjan'),
(119, '119', 'CK', 'Pacific/Rarotonga'),
(120, '120', 'CL', 'America/Santiago'),
(121, '121', 'CL', 'America/Punta_Arenas'),
(122, '122', 'CL', 'Pacific/Easter'),
(123, '123', 'CM', 'Africa/Douala'),
(124, '124', 'CN', 'Asia/Shanghai'),
(125, '125', 'CN', 'Asia/Urumqi'),
(126, '126', 'CO', 'America/Bogota'),
(127, '127', 'CR', 'America/Costa_Rica'),
(128, '128', 'CU', 'America/Havana'),
(129, '129', 'CV', 'Atlantic/Cape_Verde'),
(130, '130', 'CW', 'America/Curacao'),
(131, '131', 'CX', 'Indian/Christmas'),
(132, '132', 'CY', 'Asia/Nicosia'),
(133, '133', 'CY', 'Asia/Famagusta'),
(134, '134', 'CZ', 'Europe/Prague'),
(135, '135', 'DE', 'Europe/Berlin'),
(136, '136', 'DE', 'Europe/Busingen'),
(137, '137', 'DJ', 'Africa/Djibouti'),
(138, '138', 'DK', 'Europe/Copenhagen'),
(139, '139', 'DM', 'America/Dominica'),
(140, '140', 'DO', 'America/Santo_Domingo'),
(141, '141', 'DZ', 'Africa/Algiers'),
(142, '142', 'EC', 'America/Guayaquil'),
(143, '143', 'EC', 'Pacific/Galapagos'),
(144, '144', 'EE', 'Europe/Tallinn'),
(145, '145', 'EG', 'Africa/Cairo'),
(146, '146', 'EH', 'Africa/El_Aaiun'),
(147, '147', 'ER', 'Africa/Asmara'),
(148, '148', 'ES', 'Europe/Madrid'),
(149, '149', 'ES', 'Africa/Ceuta'),
(150, '150', 'ES', 'Atlantic/Canary'),
(151, '151', 'ET', 'Africa/Addis_Ababa'),
(152, '152', 'FI', 'Europe/Helsinki'),
(153, '153', 'FJ', 'Pacific/Fiji'),
(154, '154', 'FK', 'Atlantic/Stanley'),
(155, '155', 'FM', 'Pacific/Chuuk'),
(156, '156', 'FM', 'Pacific/Pohnpei'),
(157, '157', 'FM', 'Pacific/Kosrae'),
(158, '158', 'FO', 'Atlantic/Faroe'),
(159, '159', 'FR', 'Europe/Paris'),
(160, '160', 'GA', 'Africa/Libreville'),
(161, '161', 'GB', 'Europe/London'),
(162, '162', 'GD', 'America/Grenada'),
(163, '163', 'GE', 'Asia/Tbilisi'),
(164, '164', 'GF', 'America/Cayenne'),
(165, '165', 'GG', 'Europe/Guernsey'),
(166, '166', 'GH', 'Africa/Accra'),
(167, '167', 'GI', 'Europe/Gibraltar'),
(168, '168', 'GL', 'America/Godthab'),
(169, '169', 'GL', 'America/Danmarkshavn'),
(170, '170', 'GL', 'America/Scoresbysund'),
(171, '171', 'GL', 'America/Thule'),
(172, '172', 'GM', 'Africa/Banjul'),
(173, '173', 'GN', 'Africa/Conakry'),
(174, '174', 'GP', 'America/Guadeloupe'),
(175, '175', 'GQ', 'Africa/Malabo'),
(176, '176', 'GR', 'Europe/Athens'),
(177, '177', 'GS', 'Atlantic/South_Georgia'),
(178, '178', 'GT', 'America/Guatemala'),
(179, '179', 'GU', 'Pacific/Guam'),
(180, '180', 'GW', 'Africa/Bissau'),
(181, '181', 'GY', 'America/Guyana'),
(182, '182', 'HK', 'Asia/Hong_Kong'),
(183, '183', 'HN', 'America/Tegucigalpa'),
(184, '184', 'HR', 'Europe/Zagreb'),
(185, '185', 'HT', 'America/Port-au-Prince'),
(186, '186', 'HU', 'Europe/Budapest'),
(187, '187', 'ID', 'Asia/Jakarta'),
(188, '188', 'ID', 'Asia/Pontianak'),
(189, '189', 'ID', 'Asia/Makassar'),
(190, '190', 'ID', 'Asia/Jayapura'),
(191, '191', 'IE', 'Europe/Dublin'),
(192, '192', 'IL', 'Asia/Jerusalem'),
(193, '193', 'IM', 'Europe/Isle_of_Man'),
(194, '194', 'IN', 'Asia/Kolkata'),
(195, '195', 'IO', 'Indian/Chagos'),
(196, '196', 'IQ', 'Asia/Baghdad'),
(197, '197', 'IR', 'Asia/Tehran'),
(198, '198', 'IS', 'Atlantic/Reykjavik'),
(199, '199', 'IT', 'Europe/Rome'),
(200, '200', 'JE', 'Europe/Jersey'),
(201, '201', 'JM', 'America/Jamaica'),
(202, '202', 'JO', 'Asia/Amman'),
(203, '203', 'JP', 'Asia/Tokyo'),
(204, '204', 'KE', 'Africa/Nairobi'),
(205, '205', 'KG', 'Asia/Bishkek'),
(206, '206', 'KH', 'Asia/Phnom_Penh'),
(207, '207', 'KI', 'Pacific/Tarawa'),
(208, '208', 'KI', 'Pacific/Enderbury'),
(209, '209', 'KI', 'Pacific/Kiritimati'),
(210, '210', 'KM', 'Indian/Comoro'),
(211, '211', 'KN', 'America/St_Kitts'),
(212, '212', 'KP', 'Asia/Pyongyang'),
(213, '213', 'KR', 'Asia/Seoul'),
(214, '214', 'KW', 'Asia/Kuwait'),
(215, '215', 'KY', 'America/Cayman'),
(216, '216', 'KZ', 'Asia/Almaty'),
(217, '217', 'KZ', 'Asia/Qyzylorda'),
(218, '218', 'KZ', 'Asia/Qostanay'),
(219, '219', 'KZ', 'Asia/Aqtobe'),
(220, '220', 'KZ', 'Asia/Aqtau'),
(221, '221', 'KZ', 'Asia/Atyrau'),
(222, '222', 'KZ', 'Asia/Oral'),
(223, '223', 'LA', 'Asia/Vientiane'),
(224, '224', 'LB', 'Asia/Beirut'),
(225, '225', 'LC', 'America/St_Lucia'),
(226, '226', 'LI', 'Europe/Vaduz'),
(227, '227', 'LK', 'Asia/Colombo'),
(228, '228', 'LR', 'Africa/Monrovia'),
(229, '229', 'LS', 'Africa/Maseru'),
(230, '230', 'LT', 'Europe/Vilnius'),
(231, '231', 'LU', 'Europe/Luxembourg'),
(232, '232', 'LV', 'Europe/Riga'),
(233, '233', 'LY', 'Africa/Tripoli'),
(234, '234', 'MA', 'Africa/Casablanca'),
(235, '235', 'MC', 'Europe/Monaco'),
(236, '236', 'MD', 'Europe/Chisinau'),
(237, '237', 'ME', 'Europe/Podgorica'),
(238, '238', 'MF', 'America/Marigot'),
(239, '239', 'MG', 'Indian/Antananarivo'),
(240, '240', 'MH', 'Pacific/Majuro'),
(241, '241', 'MH', 'Pacific/Kwajalein'),
(242, '242', 'MK', 'Europe/Skopje'),
(243, '243', 'ML', 'Africa/Bamako'),
(244, '244', 'MM', 'Asia/Yangon'),
(245, '245', 'MN', 'Asia/Ulaanbaatar'),
(246, '246', 'MN', 'Asia/Hovd'),
(247, '247', 'MN', 'Asia/Choibalsan'),
(248, '248', 'MO', 'Asia/Macau'),
(249, '249', 'MP', 'Pacific/Saipan'),
(250, '250', 'MQ', 'America/Martinique'),
(251, '251', 'MR', 'Africa/Nouakchott'),
(252, '252', 'MS', 'America/Montserrat'),
(253, '253', 'MT', 'Europe/Malta'),
(254, '254', 'MU', 'Indian/Mauritius'),
(255, '255', 'MV', 'Indian/Maldives'),
(256, '256', 'MW', 'Africa/Blantyre'),
(257, '257', 'MX', 'America/Mexico_City'),
(258, '258', 'MX', 'America/Cancun'),
(259, '259', 'MX', 'America/Merida'),
(260, '260', 'MX', 'America/Monterrey'),
(261, '261', 'MX', 'America/Matamoros'),
(262, '262', 'MX', 'America/Mazatlan'),
(263, '263', 'MX', 'America/Chihuahua'),
(264, '264', 'MX', 'America/Ojinaga'),
(265, '265', 'MX', 'America/Hermosillo'),
(266, '266', 'MX', 'America/Tijuana'),
(267, '267', 'MX', 'America/Bahia_Banderas'),
(268, '268', 'MY', 'Asia/Kuala_Lumpur'),
(269, '269', 'MY', 'Asia/Kuching'),
(270, '270', 'MZ', 'Africa/Maputo'),
(271, '271', 'NA', 'Africa/Windhoek'),
(272, '272', 'NC', 'Pacific/Noumea'),
(273, '273', 'NE', 'Africa/Niamey'),
(274, '274', 'NF', 'Pacific/Norfolk'),
(275, '275', 'NG', 'Africa/Lagos'),
(276, '276', 'NI', 'America/Managua'),
(277, '277', 'NL', 'Europe/Amsterdam'),
(278, '278', 'NO', 'Europe/Oslo'),
(279, '279', 'NP', 'Asia/Kathmandu'),
(280, '280', 'NR', 'Pacific/Nauru'),
(281, '281', 'NU', 'Pacific/Niue'),
(282, '282', 'NZ', 'Pacific/Auckland'),
(283, '283', 'NZ', 'Pacific/Chatham'),
(284, '284', 'OM', 'Asia/Muscat'),
(285, '285', 'PA', 'America/Panama'),
(286, '286', 'PE', 'America/Lima'),
(287, '287', 'PF', 'Pacific/Tahiti'),
(288, '288', 'PF', 'Pacific/Marquesas'),
(289, '289', 'PF', 'Pacific/Gambier'),
(290, '290', 'PG', 'Pacific/Port_Moresby'),
(291, '291', 'PG', 'Pacific/Bougainville'),
(292, '292', 'PH', 'Asia/Manila'),
(293, '293', 'PK', 'Asia/Karachi'),
(294, '294', 'PL', 'Europe/Warsaw'),
(295, '295', 'PM', 'America/Miquelon'),
(296, '296', 'PN', 'Pacific/Pitcairn'),
(297, '297', 'PR', 'America/Puerto_Rico'),
(298, '298', 'PS', 'Asia/Gaza'),
(299, '299', 'PS', 'Asia/Hebron'),
(300, '300', 'PT', 'Europe/Lisbon'),
(301, '301', 'PT', 'Atlantic/Madeira'),
(302, '302', 'PT', 'Atlantic/Azores'),
(303, '303', 'PW', 'Pacific/Palau'),
(304, '304', 'PY', 'America/Asuncion'),
(305, '305', 'QA', 'Asia/Qatar'),
(306, '306', 'RE', 'Indian/Reunion'),
(307, '307', 'RO', 'Europe/Bucharest'),
(308, '308', 'RS', 'Europe/Belgrade'),
(309, '309', 'RU', 'Europe/Kaliningrad'),
(310, '310', 'RU', 'Europe/Moscow'),
(311, '311', 'UA', 'Europe/Simferopol'),
(312, '312', 'RU', 'Europe/Kirov'),
(313, '313', 'RU', 'Europe/Astrakhan'),
(314, '314', 'RU', 'Europe/Volgograd'),
(315, '315', 'RU', 'Europe/Saratov'),
(316, '316', 'RU', 'Europe/Ulyanovsk'),
(317, '317', 'RU', 'Europe/Samara'),
(318, '318', 'RU', 'Asia/Yekaterinburg'),
(319, '319', 'RU', 'Asia/Omsk'),
(320, '320', 'RU', 'Asia/Novosibirsk'),
(321, '321', 'RU', 'Asia/Barnaul'),
(322, '322', 'RU', 'Asia/Tomsk'),
(323, '323', 'RU', 'Asia/Novokuznetsk'),
(324, '324', 'RU', 'Asia/Krasnoyarsk'),
(325, '325', 'RU', 'Asia/Irkutsk'),
(326, '326', 'RU', 'Asia/Chita'),
(327, '327', 'RU', 'Asia/Yakutsk'),
(328, '328', 'RU', 'Asia/Khandyga'),
(329, '329', 'RU', 'Asia/Vladivostok'),
(330, '330', 'RU', 'Asia/Ust-Nera'),
(331, '331', 'RU', 'Asia/Magadan'),
(332, '332', 'RU', 'Asia/Sakhalin'),
(333, '333', 'RU', 'Asia/Srednekolymsk'),
(334, '334', 'RU', 'Asia/Kamchatka'),
(335, '335', 'RU', 'Asia/Anadyr'),
(336, '336', 'RW', 'Africa/Kigali'),
(337, '337', 'SA', 'Asia/Riyadh'),
(338, '338', 'SB', 'Pacific/Guadalcanal'),
(339, '339', 'SC', 'Indian/Mahe'),
(340, '340', 'SD', 'Africa/Khartoum'),
(341, '341', 'SE', 'Europe/Stockholm'),
(342, '342', 'SG', 'Asia/Singapore'),
(343, '343', 'SH', 'Atlantic/St_Helena'),
(344, '344', 'SI', 'Europe/Ljubljana'),
(345, '345', 'SJ', 'Arctic/Longyearbyen'),
(346, '346', 'SK', 'Europe/Bratislava'),
(347, '347', 'SL', 'Africa/Freetown'),
(348, '348', 'SM', 'Europe/San_Marino'),
(349, '349', 'SN', 'Africa/Dakar'),
(350, '350', 'SO', 'Africa/Mogadishu'),
(351, '351', 'SR', 'America/Paramaribo'),
(352, '352', 'SS', 'Africa/Juba'),
(353, '353', 'ST', 'Africa/Sao_Tome'),
(354, '354', 'SV', 'America/El_Salvador'),
(355, '355', 'SX', 'America/Lower_Princes'),
(356, '356', 'SY', 'Asia/Damascus'),
(357, '357', 'SZ', 'Africa/Mbabane'),
(358, '358', 'TC', 'America/Grand_Turk'),
(359, '359', 'TD', 'Africa/Ndjamena'),
(360, '360', 'TF', 'Indian/Kerguelen'),
(361, '361', 'TG', 'Africa/Lome'),
(362, '362', 'TH', 'Asia/Bangkok'),
(363, '363', 'TJ', 'Asia/Dushanbe'),
(364, '364', 'TK', 'Pacific/Fakaofo'),
(365, '365', 'TL', 'Asia/Dili'),
(366, '366', 'TM', 'Asia/Ashgabat'),
(367, '367', 'TN', 'Africa/Tunis'),
(368, '368', 'TO', 'Pacific/Tongatapu'),
(369, '369', 'TR', 'Europe/Istanbul'),
(370, '370', 'TT', 'America/Port_of_Spain'),
(371, '371', 'TV', 'Pacific/Funafuti'),
(372, '372', 'TW', 'Asia/Taipei'),
(373, '373', 'TZ', 'Africa/Dar_es_Salaam'),
(374, '374', 'UA', 'Europe/Kiev'),
(375, '375', 'UA', 'Europe/Uzhgorod'),
(376, '376', 'UA', 'Europe/Zaporozhye'),
(377, '377', 'UG', 'Africa/Kampala'),
(378, '378', 'UM', 'Pacific/Midway'),
(379, '379', 'UM', 'Pacific/Wake'),
(380, '380', 'US', 'America/New_York'),
(381, '381', 'US', 'America/Detroit'),
(382, '382', 'US', 'America/Kentucky/Louisville'),
(383, '383', 'US', 'America/Kentucky/Monticello'),
(384, '384', 'US', 'America/Indiana/Indianapolis'),
(385, '385', 'US', 'America/Indiana/Vincennes'),
(386, '386', 'US', 'America/Indiana/Winamac'),
(387, '387', 'US', 'America/Indiana/Marengo'),
(388, '388', 'US', 'America/Indiana/Petersburg'),
(389, '389', 'US', 'America/Indiana/Vevay'),
(390, '390', 'US', 'America/Chicago'),
(391, '391', 'US', 'America/Indiana/Tell_City'),
(392, '392', 'US', 'America/Indiana/Knox'),
(393, '393', 'US', 'America/Menominee'),
(394, '394', 'US', 'America/North_Dakota/Center'),
(395, '395', 'US', 'America/North_Dakota/New_Salem'),
(396, '396', 'US', 'America/North_Dakota/Beulah'),
(397, '397', 'US', 'America/Denver'),
(398, '398', 'US', 'America/Boise'),
(399, '399', 'US', 'America/Phoenix'),
(400, '400', 'US', 'America/Los_Angeles'),
(401, '401', 'US', 'America/Anchorage'),
(402, '402', 'US', 'America/Juneau'),
(403, '403', 'US', 'America/Sitka'),
(404, '404', 'US', 'America/Metlakatla'),
(405, '405', 'US', 'America/Yakutat'),
(406, '406', 'US', 'America/Nome'),
(407, '407', 'US', 'America/Adak'),
(408, '408', 'US', 'Pacific/Honolulu'),
(409, '409', 'UY', 'America/Montevideo'),
(410, '410', 'UZ', 'Asia/Samarkand'),
(411, '411', 'UZ', 'Asia/Tashkent'),
(412, '412', 'VA', 'Europe/Vatican'),
(413, '413', 'VC', 'America/St_Vincent'),
(414, '414', 'VE', 'America/Caracas'),
(415, '415', 'VG', 'America/Tortola'),
(416, '416', 'VI', 'America/St_Thomas'),
(417, '417', 'VN', 'Asia/Ho_Chi_Minh'),
(418, '418', 'VU', 'Pacific/Efate'),
(419, '419', 'WF', 'Pacific/Wallis'),
(420, '420', 'WS', 'Pacific/Apia'),
(421, '421', 'YE', 'Asia/Aden'),
(422, '422', 'YT', 'Indian/Mayotte'),
(423, '423', 'ZA', 'Africa/Johannesburg'),
(424, '424', 'ZM', 'Africa/Lusaka'),
(425, '425', 'ZW', 'Africa/Harare');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `name`) VALUES
(1, 'Mr'),
(2, 'Ms');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_google2fa` tinyint(4) NOT NULL DEFAULT 0,
  `google2fa_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_expiry_date` timestamp NULL DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_by_id`, `branch_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `api_token`, `last_login`, `first_name`, `last_name`, `phone`, `address`, `city`, `gender`, `enable_google2fa`, `google2fa_secret`, `otp`, `otp_expiry_date`, `notes`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Admin', 'admin', 'admin@webstudio.co.zw', '2020-09-02 06:59:25', '$2y$10$dfkAnwS7Xvh0ACkteUrtIOT49giw9XSR.B4EjlqPYmmQsTP4Y7jZu', 'k3gqUEHb5MaFHBG6S4O6zx7Wc6Riz70T2CisWvoPbHYM11znvXPZeRTs5z9d', NULL, 'Admin', 'Admin', '077', NULL, NULL, 'male', 0, '3UPQ7XOZGQD5LLNT', NULL, NULL, NULL, NULL, 'mlaWNCTDIdilu263WjFn4M0ye0Ht2NIB0ISQZlidry8nstBc6niMZkTAbXHW', '2020-09-02 06:59:25', '2022-04-15 22:31:50'),
(3, NULL, NULL, '', NULL, 'maclaven@localhost.com', '2020-10-14 07:37:30', '$2y$10$JrDBboWv411pvXYf/FnSNOXVs.v/H.NtwYgvAufjcYM35O.9vqcBy', NULL, NULL, 'Maclaven', 'Mugova', '0774175438', '933 13th street, Glenview 1', NULL, 'male', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-14 07:37:30', '2020-10-14 07:37:30'),
(5, NULL, NULL, '', NULL, 'tjmugova@local.com', '2020-10-15 13:09:08', '$2y$10$8M8FlCRE3xLJlNeryx.VCeVsvW7yaAVBY8DWEmM8KKU4aj5KES7iC', NULL, NULL, 'Tererai', 'Mugova', '+26377417543', 'ff', NULL, 'male', 0, NULL, NULL, NULL, 'ff', NULL, NULL, '2020-10-15 13:09:08', '2020-10-15 13:09:08'),
(7, NULL, NULL, '', NULL, 'tj@localhost.com', '2020-10-21 14:23:51', '$2y$10$5YMugFjnPLUlf/68E.Pz5e45bTkM9R.YkguFZV7sHf9E02RKlD9W6', NULL, NULL, 'Maclaven', 'Mugova', '0774175438', '933 13th street, Glenview 1', NULL, 'male', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-21 14:23:51', '2020-10-21 14:23:51'),
(8, NULL, NULL, '', NULL, 'KILASISHABA@GMAIL.COM', '2022-04-15 15:07:40', '$2y$10$YCkKg455UP4sNOVKJ2EHheDWE3upCZGv2HOzWAui9VWqZpabowViK', NULL, NULL, 'SHABA', 'KILASI', '0767389389', 'P.O.BOX 16285,\r\nDAR ES SALAAM \r\nTANZANIA', NULL, 'male', 0, NULL, NULL, NULL, 'admin', NULL, NULL, '2022-04-15 15:07:40', '2022-04-15 15:07:40'),
(9, NULL, NULL, '', NULL, 'mahengelulu@gmail.com', '2022-04-15 21:44:56', '$2y$10$ZOmIUIqtYQBjzTS.d4nHw.dxYQoe4snGN6FfI7/anvkJ.JnES2tZ6', NULL, NULL, 'LULU', 'MAHENGE', '0688539853', 'P.o.BOX 16285\r\nDar ES Salaam', NULL, 'female', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-15 21:44:56', '2022-04-22 00:21:51'),
(10, NULL, NULL, '', NULL, 'nunnahoppa@gmail.com', '2022-04-15 21:50:18', '$2y$10$XmuDpbrwnJKIzhMLJMBRmek8CC0lM3HQh89xErnLsTB47F7jdzcK2', NULL, NULL, 'JESCA', 'BANZI', '0767324681', NULL, NULL, 'female', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-15 21:50:18', '2022-04-18 15:25:02'),
(11, NULL, NULL, '', NULL, 'SMADEO@GMAIL.COM', '2022-04-22 16:57:33', '$2y$10$9z5DdgG23HEHe4hySj.tje8OMn8wiG2Izlu1LyVZ/h241rZmL0v7G', NULL, NULL, 'SMADEO', 'SM', '0767', 'SMS', NULL, 'male', 0, NULL, NULL, NULL, 'nSMS', NULL, NULL, '2022-04-22 16:57:33', '2022-04-24 15:35:20'),
(12, NULL, NULL, '', NULL, 'nunnaoppa@gmail.com', '2022-04-22 19:40:39', '$2y$10$EHOO5f01Oe0d7wT/UAZ6HuPmJx8wgJmN9kSwrA2EFYKFqlZwi2pN2', NULL, NULL, 'PATRIC', 'JESCAR', '0767324681', 'p.o.box 16285 dar esalaam', NULL, 'female', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-22 19:40:39', '2022-04-22 19:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_type` enum('client','group') COLLATE utf8mb4_unicode_ci DEFAULT 'client',
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('pending','active','inactive','closed','suspended','rejected','approved') COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `balance` decimal(65,6) DEFAULT NULL,
  `decimals` int(11) NOT NULL DEFAULT 2,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitted_on_date` date DEFAULT NULL,
  `submitted_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_on_date` date DEFAULT NULL,
  `approved_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rejected_on_date` date DEFAULT NULL,
  `rejected_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rejected_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed_on_date` date DEFAULT NULL,
  `closed_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `closed_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_on_date` date DEFAULT NULL,
  `activated_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `activated_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suspended_on_date` date DEFAULT NULL,
  `suspended_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `suspended_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inactive_on_date` date DEFAULT NULL,
  `inactive_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `inactive_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `currency_id`, `created_by_id`, `client_type`, `client_id`, `group_id`, `branch_id`, `status`, `balance`, `decimals`, `description`, `submitted_on_date`, `submitted_by_user_id`, `approved_on_date`, `approved_by_user_id`, `approved_notes`, `rejected_on_date`, `rejected_by_user_id`, `rejected_notes`, `closed_on_date`, `closed_by_user_id`, `closed_notes`, `activated_on_date`, `activated_by_user_id`, `activated_notes`, `suspended_on_date`, `suspended_by_user_id`, `suspended_notes`, `inactive_on_date`, `inactive_by_user_id`, `inactive_notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'client', 1, NULL, 1, 'active', '40.000000', 2, NULL, '2020-12-04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-04 17:48:10', '2020-12-04 18:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_detail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` enum('deposit','withdrawal','savings_transfer','loan_transfer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'deposit',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(65,6) NOT NULL,
  `credit` decimal(65,6) DEFAULT NULL,
  `debit` decimal(65,6) DEFAULT NULL,
  `balance` decimal(65,6) DEFAULT NULL,
  `reversed` tinyint(4) NOT NULL DEFAULT 0,
  `reversible` tinyint(4) NOT NULL DEFAULT 0,
  `submitted_on` date DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_transaction` tinyint(4) NOT NULL DEFAULT 0,
  `status` enum('pending','approved','declined') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `wallet_id`, `created_by_id`, `branch_id`, `payment_detail_id`, `transaction_type`, `name`, `amount`, `credit`, `debit`, `balance`, `reversed`, `reversible`, `submitted_on`, `created_on`, `description`, `reference`, `gateway_id`, `payment_gateway_data`, `online_transaction`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 10, 'deposit', 'Deposit', '40.000000', '40.000000', NULL, '40.000000', 0, 1, '2020-12-04', '2020-12-04', NULL, NULL, NULL, NULL, 0, 'pending', '2020-12-04 18:16:07', '2020-12-04 18:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `widgets` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `user_id`, `widgets`, `created_at`, `updated_at`) VALUES
(2, 1, '{\"LoanStatistics\":{\"class\":\"Loan::LoanStatistics\",\"name\":\"Loan Statistics\",\"x\":0,\"y\":0,\"width\":12,\"height\":2},\"LoanStatusOverview\":{\"class\":\"Loan::LoanStatusOverview\",\"name\":\"Loan Status Overview\",\"x\":0,\"y\":2,\"width\":4,\"height\":4},\"LoanCollectionOverview\":{\"class\":\"Loan::LoanCollectionOverview\",\"name\":\"Loan Collection Overview\",\"x\":4,\"y\":2,\"width\":8,\"height\":5}}', '2020-12-09 07:26:10', '2020-12-11 13:08:03'),
(3, 8, '{\"LoanStatistics\":{\"class\":\"Loan::LoanStatistics\",\"name\":\"Loan Statistics\",\"x\":0,\"y\":0,\"width\":12,\"height\":2}}', '2022-04-15 23:17:09', '2022-04-15 23:17:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_depreciation`
--
ALTER TABLE `asset_depreciation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_files`
--
ALTER TABLE `asset_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_maintenance`
--
ALTER TABLE `asset_maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_maintenance_types`
--
ALTER TABLE `asset_maintenance_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_notes`
--
ALTER TABLE `asset_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_pictures`
--
ALTER TABLE `asset_pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_types`
--
ALTER TABLE `asset_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_users`
--
ALTER TABLE `branch_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_files`
--
ALTER TABLE `client_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_identification`
--
ALTER TABLE `client_identification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_identification_types`
--
ALTER TABLE `client_identification_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_next_of_kin`
--
ALTER TABLE `client_next_of_kin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_relationships`
--
ALTER TABLE `client_relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_types`
--
ALTER TABLE `client_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_users`
--
ALTER TABLE `client_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communication_campaigns`
--
ALTER TABLE `communication_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communication_campaign_attachment_types`
--
ALTER TABLE `communication_campaign_attachment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communication_campaign_business_rules`
--
ALTER TABLE `communication_campaign_business_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communication_campaign_logs`
--
ALTER TABLE `communication_campaign_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields_meta`
--
ALTER TABLE `custom_fields_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_types`
--
ALTER TABLE `income_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `journal_entries`
--
ALTER TABLE `journal_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id_index` (`branch_id`),
  ADD KEY `chart_of_account_id_index` (`chart_of_account_id`),
  ADD KEY `currency_id_index` (`currency_id`),
  ADD KEY `created_by_id_index` (`created_by_id`),
  ADD KEY `client_id_index` (`client_id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loans_external_id_unique` (`external_id`),
  ADD UNIQUE KEY `loans_account_number_unique` (`account_number`),
  ADD KEY `loans_client_id_index` (`client_id`),
  ADD KEY `loans_loan_officer_id_index` (`loan_officer_id`),
  ADD KEY `loans_loan_product_id_index` (`loan_product_id`),
  ADD KEY `loans_branch_id_index` (`branch_id`);

--
-- Indexes for table `loan_applications`
--
ALTER TABLE `loan_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_charges`
--
ALTER TABLE `loan_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_charges_currency_id_foreign` (`currency_id`),
  ADD KEY `loan_charges_loan_charge_type_id_foreign` (`loan_charge_type_id`),
  ADD KEY `loan_charges_loan_charge_option_id_foreign` (`loan_charge_option_id`),
  ADD KEY `loan_charges_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `loan_charge_options`
--
ALTER TABLE `loan_charge_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_charge_types`
--
ALTER TABLE `loan_charge_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_collateral`
--
ALTER TABLE `loan_collateral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_collateral_loan_id_index` (`loan_id`);

--
-- Indexes for table `loan_collateral_types`
--
ALTER TABLE `loan_collateral_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_credit_checks`
--
ALTER TABLE `loan_credit_checks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_credit_checks_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `loan_disbursement_channels`
--
ALTER TABLE `loan_disbursement_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_files`
--
ALTER TABLE `loan_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_files_loan_id_index` (`loan_id`);

--
-- Indexes for table `loan_guarantors`
--
ALTER TABLE `loan_guarantors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_guarantors_loan_id_index` (`loan_id`);

--
-- Indexes for table `loan_history`
--
ALTER TABLE `loan_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_history_loan_id_index` (`loan_id`);

--
-- Indexes for table `loan_linked_charges`
--
ALTER TABLE `loan_linked_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_linked_charges_loan_id_index` (`loan_id`);

--
-- Indexes for table `loan_linked_credit_checks`
--
ALTER TABLE `loan_linked_credit_checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_notes`
--
ALTER TABLE `loan_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_notes_loan_id_index` (`loan_id`);

--
-- Indexes for table `loan_officer_history`
--
ALTER TABLE `loan_officer_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_officer_history_loan_id_index` (`loan_id`);

--
-- Indexes for table `loan_products`
--
ALTER TABLE `loan_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_product_linked_charges`
--
ALTER TABLE `loan_product_linked_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_product_linked_credit_checks`
--
ALTER TABLE `loan_product_linked_credit_checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_purposes`
--
ALTER TABLE `loan_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_repayment_schedules`
--
ALTER TABLE `loan_repayment_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_repayment_schedules_loan_id_index` (`loan_id`);

--
-- Indexes for table `loan_transactions`
--
ALTER TABLE `loan_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_transactions_loan_id_index` (`loan_id`);

--
-- Indexes for table `loan_transaction_processing_strategies`
--
ALTER TABLE `loan_transaction_processing_strategies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_transaction_types`
--
ALTER TABLE `loan_transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_items`
--
ALTER TABLE `payroll_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_items_meta`
--
ALTER TABLE `payroll_items_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_payments`
--
ALTER TABLE `payroll_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_templates`
--
ALTER TABLE `payroll_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_template_items`
--
ALTER TABLE `payroll_template_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `savings`
--
ALTER TABLE `savings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `savings_client_id_index` (`client_id`),
  ADD KEY `savings_branch_id_index` (`branch_id`);

--
-- Indexes for table `savings_charges`
--
ALTER TABLE `savings_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `savings_charges_currency_id_foreign` (`currency_id`),
  ADD KEY `savings_charges_savings_charge_type_id_foreign` (`savings_charge_type_id`),
  ADD KEY `savings_charges_savings_charge_option_id_foreign` (`savings_charge_option_id`),
  ADD KEY `savings_charges_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `savings_charge_options`
--
ALTER TABLE `savings_charge_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savings_charge_types`
--
ALTER TABLE `savings_charge_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savings_linked_charges`
--
ALTER TABLE `savings_linked_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savings_products`
--
ALTER TABLE `savings_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savings_product_linked_charges`
--
ALTER TABLE `savings_product_linked_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savings_transactions`
--
ALTER TABLE `savings_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `savings_transactions_savings_id_index` (`savings_id`),
  ADD KEY `savings_transactions_branch_id_index` (`branch_id`);

--
-- Indexes for table `savings_transaction_types`
--
ALTER TABLE `savings_transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_setting_key_unique` (`setting_key`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shares_client_id_index` (`client_id`),
  ADD KEY `shares_branch_id_index` (`branch_id`);

--
-- Indexes for table `share_charges`
--
ALTER TABLE `share_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_charge_options`
--
ALTER TABLE `share_charge_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_charge_types`
--
ALTER TABLE `share_charge_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_linked_charges`
--
ALTER TABLE `share_linked_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_market_periods`
--
ALTER TABLE `share_market_periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_products`
--
ALTER TABLE `share_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_product_linked_charges`
--
ALTER TABLE `share_product_linked_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_transactions`
--
ALTER TABLE `share_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `share_transactions_share_id_index` (`share_id`),
  ADD KEY `share_transactions_branch_id_index` (`branch_id`);

--
-- Indexes for table `share_transaction_types`
--
ALTER TABLE `share_transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_gateways_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_client_id_index` (`client_id`),
  ADD KEY `wallets_branch_id_index` (`branch_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_transactions_wallet_id_index` (`wallet_id`),
  ADD KEY `wallet_transactions_branch_id_index` (`branch_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `widgets_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=886;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset_depreciation`
--
ALTER TABLE `asset_depreciation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_files`
--
ALTER TABLE `asset_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_maintenance`
--
ALTER TABLE `asset_maintenance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_maintenance_types`
--
ALTER TABLE `asset_maintenance_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_notes`
--
ALTER TABLE `asset_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_pictures`
--
ALTER TABLE `asset_pictures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `asset_types`
--
ALTER TABLE `asset_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `branch_users`
--
ALTER TABLE `branch_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chart_of_accounts`
--
ALTER TABLE `chart_of_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `client_files`
--
ALTER TABLE `client_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_identification`
--
ALTER TABLE `client_identification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_identification_types`
--
ALTER TABLE `client_identification_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_next_of_kin`
--
ALTER TABLE `client_next_of_kin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client_relationships`
--
ALTER TABLE `client_relationships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `client_types`
--
ALTER TABLE `client_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_users`
--
ALTER TABLE `client_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `communication_campaigns`
--
ALTER TABLE `communication_campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `communication_campaign_attachment_types`
--
ALTER TABLE `communication_campaign_attachment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `communication_campaign_business_rules`
--
ALTER TABLE `communication_campaign_business_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `communication_campaign_logs`
--
ALTER TABLE `communication_campaign_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_fields_meta`
--
ALTER TABLE `custom_fields_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `income_types`
--
ALTER TABLE `income_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `journal_entries`
--
ALTER TABLE `journal_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `loan_applications`
--
ALTER TABLE `loan_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan_charges`
--
ALTER TABLE `loan_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loan_charge_options`
--
ALTER TABLE `loan_charge_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loan_charge_types`
--
ALTER TABLE `loan_charge_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loan_collateral`
--
ALTER TABLE `loan_collateral`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loan_collateral_types`
--
ALTER TABLE `loan_collateral_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan_credit_checks`
--
ALTER TABLE `loan_credit_checks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loan_disbursement_channels`
--
ALTER TABLE `loan_disbursement_channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_files`
--
ALTER TABLE `loan_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loan_guarantors`
--
ALTER TABLE `loan_guarantors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loan_history`
--
ALTER TABLE `loan_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `loan_linked_charges`
--
ALTER TABLE `loan_linked_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `loan_linked_credit_checks`
--
ALTER TABLE `loan_linked_credit_checks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_notes`
--
ALTER TABLE `loan_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loan_officer_history`
--
ALTER TABLE `loan_officer_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `loan_products`
--
ALTER TABLE `loan_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `loan_product_linked_charges`
--
ALTER TABLE `loan_product_linked_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `loan_product_linked_credit_checks`
--
ALTER TABLE `loan_product_linked_credit_checks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_purposes`
--
ALTER TABLE `loan_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loan_repayment_schedules`
--
ALTER TABLE `loan_repayment_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=970;

--
-- AUTO_INCREMENT for table `loan_transactions`
--
ALTER TABLE `loan_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `loan_transaction_processing_strategies`
--
ALTER TABLE `loan_transaction_processing_strategies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan_transaction_types`
--
ALTER TABLE `loan_transaction_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1075;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payroll_items`
--
ALTER TABLE `payroll_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payroll_items_meta`
--
ALTER TABLE `payroll_items_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payroll_payments`
--
ALTER TABLE `payroll_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payroll_templates`
--
ALTER TABLE `payroll_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payroll_template_items`
--
ALTER TABLE `payroll_template_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `professions`
--
ALTER TABLE `professions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `savings`
--
ALTER TABLE `savings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `savings_charges`
--
ALTER TABLE `savings_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `savings_charge_options`
--
ALTER TABLE `savings_charge_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `savings_charge_types`
--
ALTER TABLE `savings_charge_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `savings_linked_charges`
--
ALTER TABLE `savings_linked_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `savings_products`
--
ALTER TABLE `savings_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `savings_product_linked_charges`
--
ALTER TABLE `savings_product_linked_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `savings_transactions`
--
ALTER TABLE `savings_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `savings_transaction_types`
--
ALTER TABLE `savings_transaction_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `share_charges`
--
ALTER TABLE `share_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `share_charge_options`
--
ALTER TABLE `share_charge_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `share_charge_types`
--
ALTER TABLE `share_charge_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `share_linked_charges`
--
ALTER TABLE `share_linked_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `share_market_periods`
--
ALTER TABLE `share_market_periods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `share_products`
--
ALTER TABLE `share_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `share_product_linked_charges`
--
ALTER TABLE `share_product_linked_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `share_transactions`
--
ALTER TABLE `share_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `share_transaction_types`
--
ALTER TABLE `share_transaction_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loan_charges`
--
ALTER TABLE `loan_charges`
  ADD CONSTRAINT `loan_charges_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `loan_charges_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `loan_charges_loan_charge_option_id_foreign` FOREIGN KEY (`loan_charge_option_id`) REFERENCES `loan_charge_options` (`id`),
  ADD CONSTRAINT `loan_charges_loan_charge_type_id_foreign` FOREIGN KEY (`loan_charge_type_id`) REFERENCES `loan_charge_types` (`id`);

--
-- Constraints for table `loan_credit_checks`
--
ALTER TABLE `loan_credit_checks`
  ADD CONSTRAINT `loan_credit_checks_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `savings_charges`
--
ALTER TABLE `savings_charges`
  ADD CONSTRAINT `savings_charges_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `savings_charges_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `savings_charges_savings_charge_option_id_foreign` FOREIGN KEY (`savings_charge_option_id`) REFERENCES `savings_charge_options` (`id`),
  ADD CONSTRAINT `savings_charges_savings_charge_type_id_foreign` FOREIGN KEY (`savings_charge_type_id`) REFERENCES `savings_charge_types` (`id`);

--
-- Constraints for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD CONSTRAINT `sms_gateways_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `widgets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
