-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2025 at 07:38 PM
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
-- Database: `travela`
--
CREATE DATABASE IF NOT EXISTS `travela` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `travela`;

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
(3, '0001_01_01_000002_create_jobs_table', 1);

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
('quVKfrJ0kZVM1BBrbCTGT0cox2x2nLmsr7hMUnv7', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiamtOd2VHdHFCM0pCOXpOTEJpa0N4S3B0b0IxdXZoazFoU2lTaUp3MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjU6ImFkbWluIjtzOjE6ImEiO3M6ODoidXNlcm5hbWUiO3M6MToiYyI7czo2OiJhdmF0YXIiO3M6MTQ6IjE3NDcxMTEyMzIuanBnIjtzOjY6InVzZXJJZCI7aToxNzt9', 1747157726);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `address` varchar(255) NOT NULL DEFAULT ''''''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `username`, `fullname`, `password`, `email`, `createDate`, `address`) VALUES
(1, '', 'admin_test', '0192023a7bbd73250516f069df18b500', 'admin_test@example.com', '2025-04-29 04:38:44', '\'\''),
(3, 'a', 'a', 'e10adc3949ba59abbe56e057f20f883e', 'c@gmail.com', '2025-05-13 17:29:00', '\'\'');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `bookingId` int(11) NOT NULL,
  `tourId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `bookingDate` date NOT NULL DEFAULT current_timestamp(),
  `numAdults` int(11) NOT NULL,
  `numChildren` int(11) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `bookingStatus` enum('y','b','c','f') NOT NULL DEFAULT 'y',
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`bookingId`, `tourId`, `userId`, `bookingDate`, `numAdults`, `numChildren`, `totalPrice`, `bookingStatus`, `fullName`, `email`, `phoneNumber`, `address`) VALUES
(1, 1, 17, '2025-05-12', 2, 2, 10380000, '', 'a', 'doducdat131@gmail.com', '0123456789', 'HCM City'),
(2, 1, 17, '2025-05-12', 2, 2, 10380000, 'f', 'a', 'doducdat131@gmail.com', '0123456789', 'HCM City'),
(3, 1, 17, '2025-05-12', 2, 2, 10380000, 'f', 'a', 'doducdat131@gmail.com', '0123456789', 'HCM City'),
(4, 1, 17, '2025-05-13', 2, 1, 8880000, 'c', 'c', 'c@gmail.com', '0123456789', 'HCM City'),
(5, 4, 17, '2025-05-14', 3, 1, 7900000, 'y', 'á', 's@gmail.com', '9079222222', 's'),
(6, 4, 17, '2025-05-14', 4, 2, 11400000, 'c', 'a', 'c@gmail.com', '1234567890', 'HCM City');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checkout`
--

CREATE TABLE `tbl_checkout` (
  `checkoutId` int(11) NOT NULL,
  `bookingId` int(11) NOT NULL,
  `paymentMethod` varchar(255) NOT NULL,
  `paymentDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `amount` double NOT NULL,
  `paymentStatus` varchar(255) NOT NULL,
  `transactionId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_checkout`
--

INSERT INTO `tbl_checkout` (`checkoutId`, `bookingId`, `paymentMethod`, `paymentDate`, `amount`, `paymentStatus`, `transactionId`) VALUES
(1, 2, 'office-payment', '2025-05-12 16:23:36', 10380000, 'n', NULL),
(2, 3, 'office-payment', '2025-05-12 16:28:41', 10380000, 'n', NULL),
(3, 4, 'office-payment', '2025-05-13 05:06:46', 8880000, 'n', NULL),
(4, 5, 'office-payment', '2025-05-13 17:26:15', 7900000, 'n', NULL),
(5, 6, 'office-payment', '2025-05-13 17:33:06', 11400000, 'n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contactId` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL DEFAULT '''''''''''''',
  `phoneNumber` varchar(10) NOT NULL DEFAULT '''''''''''''',
  `email` varchar(255) NOT NULL DEFAULT '''''''''''''',
  `message` text NOT NULL,
  `replyMessage` text NOT NULL DEFAULT '\'\\\'\\\'\'',
  `isReply` enum('y','n') NOT NULL DEFAULT 'n' COMMENT 'y  :yes\r\nno : no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contactId`, `fullname`, `phoneNumber`, `email`, `message`, `replyMessage`, `isReply`) VALUES
(1, 'Nguyễn Văn A', '0909123456', 'vana@example.com', 'Tôi cần biết thêm thông tin về tour Đà Lạt.', '', 'n'),
(2, 'Trần Thị B', '0911222333', 'thib@example.com', 'Làm sao để đặt tour miền Trung?', '', 'y'),
(3, 'Lê Văn C', '0988777666', 'vanc@example.com', 'Tôi cần hỗ trợ hủy tour đã đặt.', '', 'y'),
(4, 'Phạm Hồng D', '0321456987', 'hongd@example.com', 'Bạn có tour đi Phú Quốc cuối tuần này không?', 'Chào bạn, hiện chúng tôi còn tour Phú Quốc khởi hành thứ 6.', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_history`
--

CREATE TABLE `tbl_history` (
  `historyId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `tourId` int(11) NOT NULL,
  `actionType` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `imageId` int(11) NOT NULL,
  `tourId` int(11) NOT NULL,
  `imageURL` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `uploadDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`imageId`, `tourId`, `imageURL`, `description`, `uploadDate`) VALUES
(6, 1, 'bien-dao-3n2d-phu-quoc-1.jpg', 'BIỂN ĐẢO 3N2D | PHÚ QUỐC', '2024-10-14 09:24:06'),
(7, 1, 'bien-dao-3n2d-phu-quoc-2.jpg', 'BIỂN ĐẢO 3N2D | PHÚ QUỐC', '2024-10-14 09:24:06'),
(8, 1, 'bien-dao-3n2d-phu-quoc-3.jpg', 'BIỂN ĐẢO 3N2D | PHÚ QUỐC', '2024-10-14 09:24:06'),
(9, 1, 'bien-dao-3n2d-phu-quoc-4.jpg', 'BIỂN ĐẢO 3N2D | PHÚ QUỐC', '2024-10-14 09:24:06'),
(10, 1, 'bien-dao-3n2d-phu-quoc-5.jpg', 'BIỂN ĐẢO 3N2D | PHÚ QUỐC', '2024-10-14 09:24:06'),
(11, 2, 'bien-dao-3n2d-con-dao-1.jpg', 'BIỂN ĐẢO 3N2D | CÔN ĐẢO', '2024-10-14 09:28:07'),
(12, 2, 'bien-dao-3n2d-con-dao-2.jpg', 'BIỂN ĐẢO 3N2D | CÔN ĐẢO', '2024-10-14 09:28:07'),
(13, 2, 'bien-dao-3n2d-con-dao-3.jpg', 'BIỂN ĐẢO 3N2D | CÔN ĐẢO', '2024-10-14 09:28:07'),
(14, 2, 'bien-dao-3n2d-con-dao-4.jpg', 'BIỂN ĐẢO 3N2D | CÔN ĐẢO', '2024-10-14 09:28:07'),
(15, 2, 'bien-dao-3n2d-con-dao-5.jpg', 'BIỂN ĐẢO 3N2D | CÔN ĐẢO', '2024-10-14 09:28:07'),
(16, 3, 'mien-trung-4n3d-da-nang-hoi-an-ba-na-hue-1.png', 'MIỀN TRUNG 4N3D | ĐÀ NẴNG – HỘI AN – BÀ NÀ – HUẾ', '2024-10-15 04:09:56'),
(17, 3, 'mien-trung-4n3d-da-nang-hoi-an-ba-na-hue-2.png', 'MIỀN TRUNG 4N3D | ĐÀ NẴNG – HỘI AN – BÀ NÀ – HUẾ', '2024-10-15 04:09:56'),
(18, 3, 'mien-trung-4n3d-da-nang-hoi-an-ba-na-hue-3.png', 'MIỀN TRUNG 4N3D | ĐÀ NẴNG – HỘI AN – BÀ NÀ – HUẾ', '2024-10-15 04:09:56'),
(19, 3, 'mien-trung-4n3d-da-nang-hoi-an-ba-na-hue-4.png', 'MIỀN TRUNG 4N3D | ĐÀ NẴNG – HỘI AN – BÀ NÀ – HUẾ', '2024-10-15 04:09:56'),
(20, 3, 'mien-trung-4n3d-da-nang-hoi-an-ba-na-hue-5.png', 'MIỀN TRUNG 4N3D | ĐÀ NẴNG – HỘI AN – BÀ NÀ – HUẾ', '2024-10-15 04:09:56'),
(21, 4, 'tour-mien-bac-4n3d-ha-noi-ninh-binh-ha-long-yen-tu-1.png\r\n', 'MIỀN BẮC 4N3D | HÀ NỘI – NINH BÌNH – HẠ LONG – YÊN TỬ', '2025-05-09 03:43:44'),
(22, 4, 'tour-mien-bac-4n3d-ha-noi-ninh-binh-ha-long-yen-tu-2.png', 'MIỀN BẮC 4N3D | HÀ NỘI – NINH BÌNH – HẠ LONG – YÊN TỬ', '2025-05-09 03:43:54'),
(23, 4, 'tour-mien-bac-4n3d-ha-noi-ninh-binh-ha-long-yen-tu-3.png', 'MIỀN BẮC 4N3D | HÀ NỘI – NINH BÌNH – HẠ LONG – YÊN TỬ', '2025-05-09 03:44:07'),
(24, 4, 'tour-mien-bac-4n3d-ha-noi-ninh-binh-ha-long-yen-tu-4.png', 'MIỀN BẮC 4N3D | HÀ NỘI – NINH BÌNH – HẠ LONG – YÊN TỬ', '2025-05-09 03:44:15'),
(25, 4, 'tour-mien-bac-4n3d-ha-noi-ninh-binh-ha-long-yen-tu-5.png', 'MIỀN BẮC 4N3D | HÀ NỘI – NINH BÌNH – HẠ LONG – YÊN TỬ', '2025-05-09 03:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `invoiceId` int(11) NOT NULL,
  `bookingId` int(11) NOT NULL,
  `amountId` int(11) NOT NULL,
  `dateIssued` date NOT NULL,
  `details` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotion`
--

CREATE TABLE `tbl_promotion` (
  `promotionId` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `discount` double NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `reviewId` int(11) NOT NULL,
  `tourId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `rating` float NOT NULL,
  `comment` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_reviews`
--

INSERT INTO `tbl_reviews` (`reviewId`, `tourId`, `userId`, `rating`, `comment`, `timestamp`) VALUES
(8, 1, 1, 5, 'Tour Quy Nhơn - Eo Gió - Phú Yên mang đến trải ngh...', '2025-05-13 03:53:56'),
(9, 2, 2, 3, 'Tour Châu Đốc - Miếu Bà Chúa Xứ - Rừng Tràm Trà S...', '2025-05-13 03:53:56'),
(10, 1, 17, 5, 'Tuyệt vời . Đáng đi', '2025-05-13 03:53:56'),
(11, 3, 17, 5, 'Quá đẹp, phải đi mới thôi mọi người ơi ^^', '2025-05-13 03:53:56'),
(12, 3, 17, 3, 'Quá đẹp, phải đi mới thôi mọi người ơi ^^', '2025-05-13 03:53:56'),
(13, 4, 18, 5, 'Quá đẹp, phải đi mới thôi mọi người ơi ^^', '2025-05-13 03:53:56'),
(14, 4, 18, 5, 'Tuyệt vời ông mặt trời ngày 25/12/2024', '2025-05-13 03:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timeline`
--

CREATE TABLE `tbl_timeline` (
  `timeLineId` int(11) NOT NULL,
  `tourId` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_timeline`
--

INSERT INTO `tbl_timeline` (`timeLineId`, `tourId`, `title`, `description`) VALUES
(1, 1, 'TP. HỒ CHÍ MINH - PHÚ QUỐC', 'Tập trung tại sân bay Tân Sơn Nhất, đáp chuyến bay...'),
(2, 1, 'PHÚ QUỐC - KHÁM PHÁ ĐẢO NGỌC', 'Ăn sáng. Khởi hành tham quan 01 trong 02 lựa chọn...'),
(3, 1, 'PHÚ QUỐC - TP. HCM', 'Trả...'),
(4, 2, 'ĐÀ NẴNG - BÀ NÀ - MỸ KHÊ', 'Ăn sáng buffet tại khách sạn. Khởi hành tham quan...'),
(5, 2, 'ĐÀ NẴNG - PHỐ CỔ HỘI AN', 'Ăn sáng buffet tại khách sạn. Khởi hành tham quan...'),
(6, 2, 'HỘI AN - ĐÀ NẴNG', 'Ăn sáng buffet tại khách sạn. Trả phòng...'),
(7, 2, 'ĐÀ NẴNG - TP. HCM', 'Ăn sáng buffet tại khách sạn. Trả phòng...'),
(8, 3, 'HÀ NỘI - HẠ LONG', 'Đón khách tại sân bay...'),
(9, 3, 'HÀ NỘI - TRÀNG AN - BÁI ĐÍNH - HẠ LONG', 'Dùng bữa sáng tại khách sạn. Làm thủ tục trả phòng...'),
(10, 3, 'HẠ LONG - YÊN TỬ - HÀ NỘI', 'Vịnh...'),
(11, 3, 'HÀ NỘI - TP. HCM', 'Ăn sáng tại khách sạn. Trả phòng...'),
(12, 4, 'TP. HỒ CHÍ MINH - CÔN ĐẢO', 'TOUR KHỞI HÀNH MỖI THỨ 5 TRONG TUẦN...'),
(13, 4, 'THAM QUAN CÔN ĐẢO', 'Bảo tàng...'),
(14, 4, 'CÔN ĐẢO - TP.HCM', 'Tự do tham quan mua sắm tại chợ Côn Đảo...');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tours`
--

CREATE TABLE `tbl_tours` (
  `tourId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `priceAdult` double NOT NULL,
  `priceChild` double NOT NULL,
  `duration` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `reviews` varchar(255) NOT NULL,
  `domain` enum('b','t','n') NOT NULL DEFAULT 'b' COMMENT '''b'' : Bac\r\n''t'' : Trung\r\n''n'' : Nam',
  `startDate` date NOT NULL DEFAULT current_timestamp(),
  `endDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tours`
--

INSERT INTO `tbl_tours` (`tourId`, `title`, `time`, `quantity`, `priceAdult`, `priceChild`, `duration`, `destination`, `availability`, `description`, `reviews`, `domain`, `startDate`, `endDate`) VALUES
(1, 'BIỂN ĐẢO 3N2D | PHÚ QUỐC', '3 ngày 2 đêm', 54, 3690000, 1500000, '3n2d', 'PHÚ QUỐC', 1, 'Ngày 1: Thung lũng tình yêu - Ngày 2: Langbiang - Ngày 3: Chợ đêm', '5 sao từ 120 lượt đánh giá', 'n', '2025-05-09', '2025-05-09'),
(2, 'BIỂN ĐẢO 3N2D | CÔN ĐẢO', '4 ngày 3 đêm', 30, 4500000, 2500000, '4n3d', 'CÔN ĐẢO', 1, 'Ngày 1: VinWonders - Ngày 2: Safari - Ngày 3: Bãi Sao - Ngày 4: Dinh Cậu', '4.8 sao từ 200 lượt đánh giá', 'n', '2025-05-09', '2025-05-09'),
(3, 'MIỀN TRUNG 4N3D | ĐÀ NẴNG - HỘI AN - BÀ NÀ - HUẾ', '3 ngày 2 đêm', 25, 3000000, 1800000, '3n2d', 'NHA TRANG', 1, 'Ngày 1: Hòn Mun - Ngày 2: Vinpearl Land - Ngày 3: Chợ Đầm', '4.7 sao từ 150 lượt đánh giá', 't', '2025-05-09', '2025-05-09'),
(4, 'MIỀN BẮC 4n3d | HÀ NỘI - NINH BÌNH - HẠ LONG - YÊN BÁI', '4 ngày 3 đêm', 11, 2200000, 1300000, '4n3d', 'SAPA', 1, 'Ngày 1: Bản Cát Cát - Ngày 2: Đỉnh Fansipan', '4.6 sao từ 90 lượt đánh giá', 'b', '2025-05-09', '2025-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `google_id` varchar(50) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(10) DEFAULT '''''',
  `address` varchar(255) DEFAULT '''''',
  `ipAddress` varchar(50) DEFAULT '''''',
  `isActive` enum('y','n') DEFAULT 'n' COMMENT 'y : yes\r\nn : no',
  `status` enum('d','b') DEFAULT NULL COMMENT 'd : deleted\r\nb : baned',
  `createDate` date NOT NULL DEFAULT current_timestamp(),
  `updateDate` date NOT NULL DEFAULT current_timestamp(),
  `activation_token` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT ''''''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `google_id`, `fullname`, `username`, `password`, `email`, `phoneNumber`, `address`, `ipAddress`, `isActive`, `status`, `createDate`, `updateDate`, `activation_token`, `avatar`) VALUES
(1, '', 'abc', 'user_test', 'e10adc3949ba59abbe56e057f20f883e', 'user_test@example.com', '0123456789', '123 Test Street', '127.0.0.1', 'y', NULL, '2025-04-29', '2025-04-29', '', 'user_avatar.jpg'),
(2, '', 'abc', 'a', 'e10adc3949ba59abbe56e057f20f883e', 'b@gmail.com', '\'\'', '\'\'', '\'\'', 'y', 'b', '2025-05-09', '2025-05-09', '', 'user_avatar.jpg'),
(17, '', 'abc123', 'c', 'e10adc3949ba59abbe56e057f20f883e', 'doducdat131@gmail.com', '000999', 'HCM city', '\'\'', 'y', NULL, '2025-05-10', '2025-05-10', NULL, '1747111232.jpg'),
(18, '101702765431811132446', 'zx zx', 'user-google-1746945914', '25d55ad283aa400af464c76d713c07ad', 'zx642004@gmail.com', '\'\'', '\'\'', '\'\'', 'y', NULL, '2025-05-11', '2025-05-11', NULL, 'user_avatar.jpg');

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
(1, 'Test User', 'test@example.com', '2025-04-29 05:36:46', '$2y$12$2AIp22J7ZE8R6MZn94n70O5yiyUG.ZPl54pa5ZTp26gFWScNvCpRq', 'NKoKhorPPG', '2025-04-29 05:36:47', '2025-04-29 05:36:47');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`bookingId`),
  ADD KEY `fk_booking_tour` (`tourId`),
  ADD KEY `fk_booking_user` (`userId`);

--
-- Indexes for table `tbl_checkout`
--
ALTER TABLE `tbl_checkout`
  ADD PRIMARY KEY (`checkoutId`),
  ADD KEY `fk_checkout_booking` (`bookingId`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `tbl_history`
--
ALTER TABLE `tbl_history`
  ADD PRIMARY KEY (`historyId`),
  ADD KEY `fk_history_user` (`userId`),
  ADD KEY `fk_history_tour` (`tourId`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`imageId`),
  ADD KEY `fk_image_tour` (`tourId`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD PRIMARY KEY (`invoiceId`),
  ADD KEY `fk_invoice_booking` (`bookingId`);

--
-- Indexes for table `tbl_promotion`
--
ALTER TABLE `tbl_promotion`
  ADD PRIMARY KEY (`promotionId`);

--
-- Indexes for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`reviewId`),
  ADD KEY `fk_review_user` (`userId`),
  ADD KEY `fk_review_tour` (`tourId`);

--
-- Indexes for table `tbl_timeline`
--
ALTER TABLE `tbl_timeline`
  ADD PRIMARY KEY (`timeLineId`),
  ADD KEY `tbl_timeline` (`tourId`);

--
-- Indexes for table `tbl_tours`
--
ALTER TABLE `tbl_tours`
  ADD PRIMARY KEY (`tourId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `bookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_checkout`
--
ALTER TABLE `tbl_checkout`
  MODIFY `checkoutId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contactId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_history`
--
ALTER TABLE `tbl_history`
  MODIFY `historyId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `imageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  MODIFY `invoiceId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_promotion`
--
ALTER TABLE `tbl_promotion`
  MODIFY `promotionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `reviewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_timeline`
--
ALTER TABLE `tbl_timeline`
  MODIFY `timeLineId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_tours`
--
ALTER TABLE `tbl_tours`
  MODIFY `tourId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD CONSTRAINT `fk_booking_tour` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`),
  ADD CONSTRAINT `fk_booking_user` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`);

--
-- Constraints for table `tbl_checkout`
--
ALTER TABLE `tbl_checkout`
  ADD CONSTRAINT `fk_checkout_booking` FOREIGN KEY (`bookingId`) REFERENCES `tbl_booking` (`bookingId`);

--
-- Constraints for table `tbl_history`
--
ALTER TABLE `tbl_history`
  ADD CONSTRAINT `fk_history_tour` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`),
  ADD CONSTRAINT `fk_history_user` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`);

--
-- Constraints for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD CONSTRAINT `fk_image_tour` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`);

--
-- Constraints for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD CONSTRAINT `fk_invoice_booking` FOREIGN KEY (`bookingId`) REFERENCES `tbl_booking` (`bookingId`);

--
-- Constraints for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD CONSTRAINT `fk_review_tour` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`),
  ADD CONSTRAINT `fk_review_user` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`);

--
-- Constraints for table `tbl_timeline`
--
ALTER TABLE `tbl_timeline`
  ADD CONSTRAINT `tbl_timeline` FOREIGN KEY (`tourId`) REFERENCES `tbl_tours` (`tourId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
