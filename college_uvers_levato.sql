-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 08:32 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_uvers_levato`
--

-- --------------------------------------------------------

--
-- Table structure for table `bisnis`
--

CREATE TABLE `bisnis` (
  `id_usaha` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_pemilik` int(11) NOT NULL,
  `lokasi` text NOT NULL,
  `telp` varchar(35) NOT NULL,
  `no_regis` int(11) NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bisnis`
--

INSERT INTO `bisnis` (`id_usaha`, `nama`, `id_pemilik`, `lokasi`, `telp`, `no_regis`, `status`) VALUES
(1, 'Makananku', 1928087380, 'Batam', '0821234567', 2147483647, 'aktif'),
(2, 'Boxingku', 1928087381, 'Batam', '0821234567', 2147483647, 'aktif'),
(3, 'SARANAKU', 1928087381, 'Batam', '0821234567', 2147483647, 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `decoration`
--

CREATE TABLE `decoration` (
  `id_decor` int(11) NOT NULL,
  `kode` varchar(35) NOT NULL,
  `keterangan` varchar(35) NOT NULL,
  `img` varchar(255) NOT NULL,
  `icons` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decoration`
--

INSERT INTO `decoration` (`id_decor`, `kode`, `keterangan`, `img`, `icons`) VALUES
(1, 'faskamar', 'faskamar', 'faskamar.png', '<i class=\"fas fa-bath\"></i>'),
(2, 'history', 'history', 'history.png', '<i class=\"fas fa-calendar-check\"></i>'),
(3, 'fashotel', 'fashotel', 'fashotel.png', '<i class=\"fas fa-swimming-pool\"></i>'),
(4, 'petugas', 'petugas', 'petugas.png', '<i class=\"fas fa-users\"></i>'),
(5, 'kamar', 'kamar', 'kamar.png', '<i class=\"fas fa-bed\"></i>'),
(6, 'tipe_kamar', 'tipe_kamar', 'tipe_kamar.png', '<i class=\"fas fa-door-open\"></i>'),
(7, 'pengaturan', 'pengaturan', 'pengaturan.png', '<i class=\"fas fa-cog\"></i>'),
(8, 'pesanan', 'pesanan', 'pesanan.png', '<i class=\"fas fa-suitcase-rolling\"></i>'),
(9, 'user', 'user', 'user.png', '<i class=\"fas fa-address-card\"></i>'),
(10, 'transaksi', 'transaksi', 'transaksi.png', '<i class=\"far fa-credit-card\"></i>'),
(11, 'operations', 'operations', 'operations.png', '<i class=\"fas fa-concierge-bell\"></i>'),
(12, 'decoration', 'decoration', 'decoration.png', '<i class=\"fas fa-snowman\"></i>'),
(13, 'v6', 'home', 'v6.png', '<i class=\"fas fa-home\"></i>'),
(14, 'v2', 'login', 'v2.png', '<i class=\"fas fa-sign-in-alt\"></i>'),
(15, 'v3', 'signup', 'v3.png', '<i class=\"fas fa-user-plus\"></i>'),
(16, 'v5', 'dashboard', 'v5.png', '<i class=\"fas fa-desktop\"></i>'),
(17, 'v4', 'no-level', 'v4.png', '<i class=\"fas fa-user-slash\"></i>'),
(19, 'events', 'events', 'events.png', '<i class=\"fas fa-calendar-alt\"></i>'),
(20, 'website_licenses', 'website_licenses', 'website_licenses.png', '<i class=\"fas fa-check-square\"></i>'),
(21, 'website_sosmed', 'website_sosmed', 'website_sosmed.png', '<i class=\"fab fa-instagram-square\"></i>'),
(22, 'v1', 'v1', 'v1.png', '<i class=\"fas fa-dice-d6\"></i>'),
(23, 'v7', 'v7', 'v7.png', '<i class=\"far fa-times-circle\"></i>'),
(24, 'website_themes', 'website_themes', 'website_themes.png', '<i class=\"fas fa-umbrella-beach\"></i>'),
(25, 'migrations', 'migrations', 'migrations.png', '<i class=\"fas fa-database\"></i>'),
(26, 'failed_jobs', 'failed_jobs', 'failed_jobs.png', '<i class=\"far fa-frown\"></i>'),
(27, 'website_notif_type', 'website_notif_type', 'website_notif_type.png', '<i class=\"fas fa-flag\"></i>'),
(28, 'website_notifications', 'website_notifications', 'website_notifications.png', '<i class=\"fas fa-bell\"></i>'),
(29, 'personal_access_tokens', 'personal_access_tokens', 'personal_access_tokens.png', '<i class=\"fas fa-key\"></i>'),
(30, 'failed_jobs', 'failed_jobs', 'failed_jobs.png', '<i class=\"fas fa-unlock-alt\"></i>'),
(31, 'login_histories', 'login_histories', 'login_histories.png', '<i class=\"fas fa-laptop-house\"></i>');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id_event` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `img` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id_event`, `nama`, `slogan`, `img`, `keterangan`) VALUES
(1, 'Birthday Party', 'Rayakan Ulang Tahun Anda dengan Kecemerlangan yang Menggetarkan!', '.jpg', 'Pulang hari, tersenyum di HOTEL HEBAT. Di sana, mimpi-mimpi dihargai, dan momen-momen dijadikan berharga. Di antara dekorasi kamar yang dipenuhi cinta dan kue ulang tahun yang menggoda, Anda merasa disambut dengan hangat oleh keluarga yang baru ditemukan. Saat Anda berendam dalam kebahagiaan, tak ada lagi ruang untuk kekhawatiran. Di HOTEL HEBAT, kami memahami arti sejati dari perayaan, dan dengan setiap sentuhan, kami berjanji untuk merangkul hati Anda.'),
(2, 'Gerhana Matahari', 'Saksikan Keajaiban Langit dengan Gemerlap Kecemerlangan di HOTEL HEBAT!', '.jpeg', 'Saksikan keajaiban gerhana matahari di HOTEL HEBAT! Dengan lokasi yang sempurna untuk menikmati pemandangan langit yang memukau, kami siap memberikan pengalaman tak terlupakan saat Anda menyaksikan fenomena alam yang langka ini. Bergabunglah dengan kami untuk momen yang menggetarkan hati ini!'),
(3, 'Anniversary 1 tahun', 'Selamat Anniversary', 'Anniversary_1_tahun.jpg', 'Selamat anniversary HOTEL HEBAT.'),
(4, 'Launching Levato', 'Levato: Solusi Terdepan untuk Memulai Bisnis Anda!', 'Launching_Levato.png', '<p>Sambut peluncuran website baru Levato dengan antusias!</p>\r\n\r\n<p>Kami hadir dengan tampilan baru yang lebih segar dan fitur-fitur inovatif yang akan membantu Anda memulai bisnis Anda dengan mudah.</p>\r\n\r\n<p>Dapatkan akses langsung ke layanan pembuatan izin usaha yang praktis dan cepat, serta panduan lengkap untuk mengurus bisnis Anda dengan lancar.</p>\r\n\r\n<p>Bersama Levato, Anda tidak hanya memulai bisnis, tapi juga mengawali perjalanan menuju kesuksesan yang lebih besar! Jangan lewatkan peluncuran istimewa ini dan jadilah bagian dari revolusi bisnis!</p>\r\n'),
(5, 'Hari UMKM Nasional - 12 Agt', 'Selamat UMKM Nasional', 'Hari_UMKM_Nasional_-_12_Agt.jpg', '<p>Hari UMKM Nasional adalah momen istimewa di mana kita merayakan peran penting Usaha Mikro, Kecil, dan Menengah (UMKM) dalam perekonomian Indonesia. Sebagai tonggak yang menghargai kerja keras, inovasi, dan ketahanan ekonomi lokal, Hari UMKM Nasional adalah kesempatan bagi kita semua untuk mengapresiasi kontribusi UMKM dalam memajukan ekonomi negara dan meningkatkan kesejahteraan masyarakat.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lisensi`
--

CREATE TABLE `lisensi` (
  `id_lisensi` int(11) NOT NULL,
  `id_usaha` int(11) NOT NULL,
  `jenis` varchar(35) NOT NULL,
  `status` varchar(12) NOT NULL,
  `tgl_aplikasi` datetime DEFAULT NULL,
  `tgl_persetujuan` datetime DEFAULT NULL,
  `tgl_kedaluwarsa` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lisensi`
--

INSERT INTO `lisensi` (`id_lisensi`, `id_usaha`, `jenis`, `status`, `tgl_aplikasi`, `tgl_persetujuan`, `tgl_kedaluwarsa`) VALUES
(7, 2, 'dagang', 'pending', '2024-04-22 12:17:53', NULL, NULL),
(8, 1, 'dagang', 'kedaluwarsa', '2024-04-22 16:15:54', NULL, NULL),
(9, 1, 'kesehatan', 'kedaluwarsa', '2024-04-23 10:42:27', '2024-04-23 11:26:13', '2024-04-23 11:32:18'),
(10, 1, 'dagang', 'aktif', '2024-04-27 17:13:16', '2024-04-27 17:13:19', '2024-04-27 17:16:19'),
(11, 2, 'dagang', 'pending', '2024-04-26 20:21:49', NULL, NULL),
(12, 2, 'dagang', 'pending', '2024-04-29 20:19:16', NULL, NULL),
(13, 2, 'dagang', 'aktif', '2024-05-13 03:19:48', '2024-05-13 03:20:11', '2024-05-13 03:24:27'),
(14, 3, 'dagang', 'aktif', '2024-05-13 03:12:24', '2024-05-13 03:12:44', '2024-05-13 03:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `login_histories`
--

CREATE TABLE `login_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `device_type` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_histories`
--

INSERT INTO `login_histories` (`id`, `id_user`, `created_at`, `updated_at`, `device_type`) VALUES
(1, 1, '2024-05-05 05:48:47', '2024-05-05 05:48:47', 'Desktop'),
(2, 1, '2024-05-05 07:42:47', '2024-05-05 07:42:47', 'Desktop'),
(3, 1, '2024-05-05 09:33:07', '2024-05-05 09:33:07', 'Desktop'),
(4, 1, '2024-05-05 13:38:59', '2024-05-05 13:38:59', 'Desktop'),
(5, 1, '2024-05-05 14:21:45', '2024-05-05 14:21:45', 'Desktop'),
(6, 1, '2024-05-06 01:35:30', '2024-05-06 01:35:30', 'Desktop'),
(7, 1, '2024-05-06 01:35:30', '2024-05-06 01:35:30', 'Desktop'),
(8, 1, '2024-05-06 08:31:47', '2024-05-06 08:31:47', 'Desktop'),
(9, 1, '2024-05-06 09:13:28', '2024-05-06 09:13:28', 'Desktop'),
(10, 1, '2024-05-06 09:43:40', '2024-05-06 09:43:40', 'Desktop'),
(11, 1, '2024-05-06 11:58:24', '2024-05-06 11:58:24', 'Desktop'),
(12, 1, '2024-05-06 12:10:40', '2024-05-06 12:10:40', 'Desktop'),
(13, 1, '2024-05-06 12:29:17', '2024-05-06 12:29:17', 'Desktop'),
(14, 2, '2024-05-06 12:39:35', '2024-05-06 12:39:35', 'Desktop'),
(15, 1, '2024-05-06 12:43:48', '2024-05-06 12:43:48', 'Desktop'),
(16, 1, '2024-05-06 13:06:00', '2024-05-06 13:06:00', 'Desktop'),
(17, 1, '2024-05-06 13:07:02', '2024-05-06 13:07:02', 'Desktop'),
(18, 1, '2024-05-06 13:15:04', '2024-05-06 13:15:04', 'Desktop'),
(19, 1, '2024-05-06 13:31:32', '2024-05-06 13:31:32', 'Desktop'),
(20, 1, '2024-05-06 13:32:45', '2024-05-06 13:32:45', 'Desktop'),
(21, 1, '2024-05-06 15:30:34', '2024-05-06 15:30:34', 'Desktop'),
(22, 1, '2024-05-06 15:56:35', '2024-05-06 15:56:35', 'Desktop'),
(23, 1, '2024-05-07 04:19:22', '2024-05-07 04:19:22', 'Desktop'),
(24, 1, '2024-05-07 11:24:18', '2024-05-07 11:24:18', 'Desktop'),
(25, 1, '2024-05-07 13:44:25', '2024-05-07 13:44:25', 'Desktop on Windows'),
(26, 1, '2024-05-07 13:49:29', '2024-05-07 13:49:29', 'Desktop on Windows'),
(27, 8, '2024-05-07 13:52:10', '2024-05-07 13:52:10', 'Desktop on Windows'),
(28, 8, '2024-05-07 13:56:14', '2024-05-07 13:56:14', 'Desktop on Windows'),
(29, 8, '2024-05-07 13:58:54', '2024-05-07 13:58:54', 'Desktop on Windows'),
(30, 8, '2024-05-07 14:01:55', '2024-05-07 14:01:55', 'Desktop on Windows'),
(31, 1, '2024-05-07 14:10:02', '2024-05-07 14:10:02', 'Desktop on Windows'),
(32, 2, '2024-05-07 14:10:20', '2024-05-07 14:10:20', 'Desktop on Windows'),
(33, 3, '2024-05-07 14:10:34', '2024-05-07 14:10:34', 'Desktop on Windows'),
(34, 4, '2024-05-07 14:10:50', '2024-05-07 14:10:50', 'Desktop on Windows'),
(35, 5, '2024-05-07 14:11:07', '2024-05-07 14:11:07', 'Desktop on Windows'),
(36, 6, '2024-05-07 14:11:23', '2024-05-07 14:11:23', 'Desktop on Windows'),
(37, 7, '2024-05-07 14:11:36', '2024-05-07 14:11:36', 'Desktop on Windows'),
(38, 1, '2024-05-08 03:53:19', '2024-05-08 03:53:19', 'Desktop on Windows'),
(39, 1, '2024-05-08 08:09:19', '2024-05-08 08:09:19', 'Desktop on Windows'),
(40, 1, '2024-05-08 08:29:59', '2024-05-08 08:29:59', 'Desktop (Unknown OS)'),
(41, 1, '2024-05-08 08:43:28', '2024-05-08 08:43:28', 'Desktop on Windows'),
(42, 2, '2024-05-08 08:43:40', '2024-05-08 08:43:40', 'Desktop on Windows'),
(43, 1, '2024-05-08 14:13:56', '2024-05-08 14:13:56', 'Desktop on Windows'),
(44, 1, '2024-05-08 23:31:10', '2024-05-08 23:31:10', 'Desktop on Windows'),
(45, 1, '2024-05-09 06:44:09', '2024-05-09 06:44:09', 'Desktop on Windows'),
(46, 1, '2024-05-10 00:05:05', '2024-05-10 00:05:05', 'Desktop on Windows'),
(47, 1, '2024-05-10 00:47:45', '2024-05-10 00:47:45', 'Desktop on Windows'),
(48, 1, '2024-05-10 00:52:47', '2024-05-10 00:52:47', 'Desktop on Windows'),
(49, 3, '2024-05-10 01:22:02', '2024-05-10 01:22:02', 'Desktop on Windows'),
(50, 3, '2024-05-10 02:35:33', '2024-05-10 02:35:33', 'Desktop on Windows'),
(51, 1, '2024-05-10 02:37:49', '2024-05-10 02:37:49', 'Desktop on Windows'),
(52, 2, '2024-05-10 02:38:00', '2024-05-10 02:38:00', 'Desktop on Windows'),
(53, 3, '2024-05-10 02:41:43', '2024-05-10 02:41:43', 'Desktop on Windows'),
(54, 1, '2024-05-10 02:47:03', '2024-05-10 02:47:03', 'Desktop on Windows'),
(55, 3, '2024-05-10 06:45:57', '2024-05-10 06:45:57', 'Desktop on Windows'),
(56, 3, '2024-05-10 09:25:57', '2024-05-10 09:25:57', 'Desktop on Windows'),
(57, 1, '2024-05-10 09:26:25', '2024-05-10 09:26:25', 'Desktop on Windows'),
(58, 1, '2024-05-10 11:31:18', '2024-05-10 11:31:18', 'Desktop on Windows'),
(59, 1, '2024-05-10 13:14:30', '2024-05-10 13:14:30', 'Desktop on Windows'),
(60, 2, '2024-05-12 19:12:09', '2024-05-12 19:12:09', 'Desktop on Windows'),
(61, 2, '2024-05-12 19:59:30', '2024-05-12 19:59:30', 'Desktop on Windows'),
(62, 2, '2024-05-12 20:12:36', '2024-05-12 20:12:36', 'Desktop on Windows'),
(63, 2, '2024-05-12 20:20:00', '2024-05-12 20:20:00', 'Desktop on Windows');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_01_27_164100_create_faculties_table', 1),
(5, '2024_01_27_164108_create_majors_table', 1),
(6, '2024_01_29_163913_create_institutions_table', 1),
(7, '2024_01_29_163946_create_languages_table', 1),
(8, '2024_01_29_164021_create_categories_table', 1),
(9, '2024_01_29_164025_create_users_table', 1),
(10, '2024_01_29_170452_create_books_table', 1),
(11, '2024_01_29_171541_create_book_moves_table', 1),
(12, '2024_01_29_172044_create_comments_table', 1),
(13, '2024_02_01_023838_create_wish_lists_table', 1),
(14, '2024_02_25_110659_create_login_histories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `id_operations` int(11) NOT NULL,
  `no_kamar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `keterangan` text,
  `tgl_perubahan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`id_operations`, `no_kamar`, `id_user`, `id_petugas`, `status`, `keterangan`, `tgl_perubahan`) VALUES
(1, 1, 2, 1, '0', NULL, '2023-12-02 05:12:42'),
(2, 1, 2, 1, '0', NULL, '2023-12-09 08:12:17'),
(3, 1, 2, 1, '0', NULL, '2023-12-09 08:12:02'),
(4, 1, 2, 1, '0', NULL, '2023-12-09 08:12:08'),
(5, 1, 2, 2, '0', NULL, '2023-12-09 08:12:47'),
(6, 3, 2, 1, '0', 'Semua sudah bersih', '2023-12-09 08:12:57'),
(7, 5, 2, 1, '0', 'sudah diperbaiki', '2023-12-09 08:12:06'),
(8, 4, 2, 2, '0', 'Semua sudah diperbaiki', '2023-12-09 08:12:14'),
(9, 2, 2, 1, '0', 'Kotor banget, udh dibersihkan', '2023-12-11 03:12:54'),
(10, 1, 2, 2, '0', 'Butuh perbaikian wastafel', '2023-12-11 03:12:34'),
(11, 2, 2, 2, '0', 'test', '2023-12-12 09:12:36'),
(12, 5, 2, 2, '0', 'Pembersihan berhasil', '2023-12-12 02:12:47'),
(13, 13, 2, 2, '0', 'kamar sudah bersih', '2023-12-15 12:12:33'),
(14, 13, 2, 2, '0', 'Kamar sudah dibersihkan', '2023-12-15 02:12:15'),
(15, 12, 2, 1, 'Available', 'Kamar yg rusak udah diperbaiki, naikin gajinya bos', '2023-12-15 03:12:46'),
(16, 15, 2, 2, 'Available', '2024-04-06 07:04:55', '0000-00-00 00:00:00'),
(17, 15, 2, 2, 'Available', '2024-04-06 08:04:41', '0000-00-00 00:00:00'),
(18, 26, 1, 2, 'Available', '2024-04-11 03:04:15', '0000-00-00 00:00:00');

--
-- Triggers `operations`
--
DELIMITER $$
CREATE TRIGGER `tambah_poin` AFTER INSERT ON `operations` FOR EACH ROW BEGIN
UPDATE petugas SET poin = poin + 1 WHERE id_petugas = NEW.id_petugas;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembaruan`
--

CREATE TABLE `pembaruan` (
  `id_pembaruan` int(11) NOT NULL,
  `id_lisensi` int(11) NOT NULL,
  `diminta_oleh` int(11) NOT NULL,
  `tgl_kedaluwarsa_baru` datetime DEFAULT NULL,
  `tgl_pembaruan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembaruan`
--

INSERT INTO `pembaruan` (`id_pembaruan`, `id_lisensi`, `diminta_oleh`, `tgl_kedaluwarsa_baru`, `tgl_pembaruan`) VALUES
(27, 9, 1, '2024-04-25 11:19:24', '2024-04-23 11:10:30'),
(28, 9, 1, '2024-04-23 11:19:24', '2024-04-23 11:18:22'),
(29, 9, 1, '2024-04-23 11:32:18', '2024-04-23 11:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembayar` int(11) NOT NULL,
  `id_bisnis` int(11) NOT NULL,
  `tgl_bayar` datetime NOT NULL,
  `bulan_dibayar` int(11) NOT NULL,
  `tahun_dibayar` int(11) NOT NULL,
  `id_lisensi` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembayar`, `id_bisnis`, `tgl_bayar`, `bulan_dibayar`, `tahun_dibayar`, `id_lisensi`, `jumlah_bayar`) VALUES
(1, 2, 2, '2024-04-22 12:22:06', 4, 2024, 7, 4),
(2, 2, 2, '2024-04-22 12:23:53', 4, 2024, 7, 2),
(3, 2, 2, '2024-04-22 13:09:02', 4, 2024, 7, 31),
(4, 2, 2, '2024-04-22 13:28:35', 4, 2024, 7, 3),
(5, 2, 1, '2024-04-22 16:15:41', 4, 2024, 8, 1),
(6, 2, 1, '2024-04-22 16:16:35', 4, 2024, 8, 1),
(7, 2, 1, '2024-04-23 10:43:00', 4, 2024, 9, 11),
(8, 2, 1, '2024-04-23 11:11:02', 4, 2024, 9, 4),
(9, 2, 1, '2024-04-23 11:18:38', 4, 2024, 9, 2001),
(10, 2, 1, '2024-04-23 11:26:26', 4, 2024, 9, 4),
(11, 2, 1, '2024-04-23 11:29:50', 4, 2024, 9, 4),
(12, 1, 2, '2024-04-26 20:23:28', 4, 2024, 11, 129),
(13, 1, 2, '2024-04-26 20:25:10', 4, 2024, 11, 2),
(14, 1, 2, '2024-04-26 20:28:02', 4, 2024, 11, 2),
(15, 2, 2, '2024-04-26 20:44:53', 4, 2024, 12, 4),
(16, 2, 2, '2024-04-26 20:49:03', 4, 2024, 12, 2),
(17, 1, 1, '2024-04-27 17:13:34', 4, 2024, 10, 2),
(19, 1928087381, 2, '2024-04-29 19:56:00', 4, 2024, 12, 1),
(20, 1928087381, 2, '2024-04-29 20:20:35', 4, 2024, 13, 3),
(21, 1928087381, 3, '2024-05-13 03:13:28', 5, 2024, 14, 3),
(22, 1928087381, 2, '2024-05-13 03:20:35', 5, 2024, 13, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pemilik`
--

CREATE TABLE `pemilik` (
  `id_pemilik` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `email` varchar(26) NOT NULL,
  `password` text NOT NULL,
  `hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemilik`
--

INSERT INTO `pemilik` (`id_pemilik`, `nama`, `email`, `password`, `hp`) VALUES
(1928087380, 'Ayu Zafira', 'woolie', '$2y$10$GbildcAQnSpLsXP3eUfwdOE8K62QTg9C.I8cAVt2W39/jzji6EInm', '09892786233'),
(1928087381, 'John Cena', 'johncena@gmail.com', '$2y$10$r5gjVMR1d6g6rGQCMpslvOL9Nn9E.2EWfxeJMCxg6595iRgbT099.', '08123456789');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `id_lisensi` int(11) NOT NULL,
  `diajukan_oleh` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_pengajuan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `id_lisensi`, `diajukan_oleh`, `deskripsi`, `tgl_pengajuan`) VALUES
(8, 8, 1928087380, 'Mendaftar lisensi', '2024-04-22 16:15:54'),
(9, 9, 1928087380, 'Tes', '2024-04-23 10:42:27'),
(16, 10, 1928087380, 'Pengen daftar', '2024-04-27 17:13:16'),
(32, 14, 1928087380, 'test', '2024-05-13 03:12:24'),
(33, 13, 1928087380, 'tes', '2024-05-13 03:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama_website` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `id_event` int(11) NOT NULL,
  `id_lisensi` int(11) NOT NULL,
  `id_tema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama_website`, `alamat`, `email`, `hp`, `id_event`, `id_lisensi`, `id_tema`) VALUES
(1, 'LEVATO', 'Jl Peternakan Dlm III 36, Dki Jakarta', 'levato.grow@gmail.com', '0-21-541-3829', 4, 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(14, 'App\\Models\\User', 3, 'AuthToken', '0b1376526ff5b0122524524863f33dd0589f2313d6e748b3a8854181e05282f4', '[\"*\"]', '2024-04-03 02:31:47', '2024-04-02 19:29:07', '2024-04-03 02:31:47'),
(15, 'App\\Models\\User', 3, 'AuthTokenRefresh', '23f54ec93cae16377180189fa718765897831afeb2715171c4c907c78efdde7f', '[\"*\"]', NULL, '2024-04-02 19:29:07', '2024-04-02 19:29:07'),
(22, 'App\\Models\\User', 1, 'AuthToken', 'ac546868b7edfca4fb30fda0351d87d87b908c9766189c59d055a42a32f194d6', '[\"*\"]', '2024-04-03 02:55:19', '2024-04-03 01:38:10', '2024-04-03 02:55:19'),
(23, 'App\\Models\\User', 1, 'AuthTokenRefresh', '034848e38d7781ade84bbf31f70c8f7dc23be7567e1a5217dd96e9a0623f0fec', '[\"*\"]', NULL, '2024-04-03 01:38:10', '2024-04-03 01:38:10'),
(24, 'App\\Models\\User', 4, 'AuthToken', 'a72de5c22c948a0e8f60da0ba2f4c6e60b14723e4e840c721cbdfaed2bd348fa', '[\"*\"]', NULL, '2024-04-03 02:30:37', '2024-04-03 02:30:37'),
(25, 'App\\Models\\User', 4, 'AuthTokenRefresh', '808d378e8b1c866296d2990c8623abbc163f8acaf9f9c56eef2db5d289393248', '[\"*\"]', NULL, '2024-04-03 02:30:37', '2024-04-03 02:30:37'),
(26, 'App\\Models\\User', 2, 'AuthToken', '488eb219b4e23eb71503542a238365288210ec61d223faa581de05092b96be36', '[\"*\"]', '2024-04-03 03:06:51', '2024-04-03 02:58:53', '2024-04-03 03:06:51'),
(27, 'App\\Models\\User', 2, 'AuthTokenRefresh', 'e2678e3d76ab798a27f8a0e2b88a3417975a0f1afba8ff01fdcd33a0e6575825', '[\"*\"]', NULL, '2024-04-03 02:58:53', '2024-04-03 02:58:53'),
(28, 'App\\Models\\User', 3, 'AuthToken', '55ffba7c904b85e593cd7346d34044600bac36958e099cdcd6242f694220955f', '[\"*\"]', NULL, '2024-04-03 03:06:33', '2024-04-03 03:06:33'),
(29, 'App\\Models\\User', 3, 'AuthTokenRefresh', '905b160fd1dc32eae95a3972f7c7cc26befe9660ad4a62f93026e075738ddb29', '[\"*\"]', NULL, '2024-04-03 03:06:33', '2024-04-03 03:06:33'),
(30, 'App\\Models\\User', 1, 'authToken', '875c12bf91c3f8bd20223252bfca0b54b3e3681339332df8ce262a1269933829', '[\"*\"]', NULL, '2024-04-06 05:35:04', '2024-04-06 05:35:04');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `hp` varchar(13) NOT NULL,
  `level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `password`, `hp`, `level`) VALUES
(1, 'Khen', 'khen@gmail.com', '$2y$10$KjYrPzfHnNCjGfegn4rE8uB3vFIU0ETJi5B0upn.Sto/GL5geyq.6', '081234567890', 'administrator'),
(2, 'Eren', 'eren@gmail.com', '$2y$10$KjYrPzfHnNCjGfegn4rE8uB3vFIU0ETJi5B0upn.Sto/GL5geyq.6', '081234567890', 'resepsionis'),
(3, 'Bill', 'bill@gmail.com', '$2y$10$KjYrPzfHnNCjGfegn4rE8uB3vFIU0ETJi5B0upn.Sto/GL5geyq.6', '081234567890', 'tamu'),
(4, 'Alex', 'alex@gmail.com', '$2y$10$KjYrPzfHnNCjGfegn4rE8uB3vFIU0ETJi5B0upn.Sto/GL5geyq.6', '08123456789', 'accounting'),
(5, 'Alexia', 'alexia@gmail.com', '$2y$10$KjYrPzfHnNCjGfegn4rE8uB3vFIU0ETJi5B0upn.Sto/GL5geyq.6', '081234567890', 'tamu'),
(6, 'Johan', 'johan@gmail.com', '$2y$10$KjYrPzfHnNCjGfegn4rE8uB3vFIU0ETJi5B0upn.Sto/GL5geyq.6', '081234567890', 'tamu'),
(7, 'Vito', 'vito@gmail.com', '$2y$10$KjYrPzfHnNCjGfegn4rE8uB3vFIU0ETJi5B0upn.Sto/GL5geyq.6', '08123456789', 'tamu'),
(8, 'Duandi', 'duandi@gmail.com', '$2y$10$KjYrPzfHnNCjGfegn4rE8uB3vFIU0ETJi5B0upn.Sto/GL5geyq.6', '08123456789', 'tamu');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `institution_id` bigint(20) UNSIGNED DEFAULT NULL,
  `major_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `generation` int(11) DEFAULT '2024',
  `role` enum('super_admin','admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `address` text COLLATE utf8mb4_unicode_ci,
  `join_date` datetime NOT NULL DEFAULT '2024-04-01 03:47:22',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `institution_id`, `major_id`, `name`, `email`, `username`, `password`, `phone`, `gender`, `active`, `generation`, `role`, `address`, `join_date`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Administrator', 'admin@example.com', 'admin', '$2y$10$pzW30/r8ME/1PBOfsEvhdOpOq5TfrLxTUzem50Y0x5v8.C0ZKrd8C', NULL, NULL, 1, 2024, 'super_admin', NULL, '2024-04-01 03:47:22', NULL, NULL, '2024-03-31 20:47:23', '2024-04-03 02:19:58'),
(2, 1, 1, 'Williams', 'williams342002@uvers.ac.id', '2020133002', '$2y$10$aCCJNZrNTuLACT0xpQXF1.klc4r3Hc2i4Mbs3NF9Q/1tQ3vzSIWvK', NULL, NULL, 1, 2024, 'super_admin', NULL, '2024-04-01 03:47:22', NULL, NULL, '2024-03-31 20:47:23', '2024-04-03 03:06:02'),
(3, 1, 11, 'Khenjy Johnelson', 'khenjyjohnelson123@gmail.com', '2022133005', '$2y$10$HuWJ5iueyjgoirM7tHBXCOzBEKJK0aPGFy1GnpjXEPY14EGZoAIbW', '082287394758', 'male', 1, 2024, 'user', 'Komplek Perumahan Griya Mas Blok L No 12B', '2024-04-01 00:00:00', NULL, NULL, '2024-03-31 23:05:53', '2024-04-03 02:23:23'),
(4, 1, 11, 'John Wick', 'john@gmail.com', '2022133006', '$2y$10$PO/bAnooB6QgUm68zxYCUuf.iVyRIz7w7zj.m1VjLwXiKNU3bkwTK', '0812345678', 'female', 1, 2024, 'user', 'Griya Mas', '2024-04-04 03:47:22', NULL, NULL, '2024-04-03 00:48:06', '2024-04-03 00:51:36');

-- --------------------------------------------------------

--
-- Table structure for table `website_licenses`
--

CREATE TABLE `website_licenses` (
  `id_lisensi` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `konten` text NOT NULL,
  `img` text NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_licenses`
--

INSERT INTO `website_licenses` (`id_lisensi`, `nama`, `konten`, `img`, `link`) VALUES
(8, 'CC BY 4.0', '&lt;p&gt;You are free to:&lt;br /&gt;\r\n1.&amp;nbsp;Share &amp;mdash; copy and redistribute the material in any medium or format for any purpose, even commercially.&lt;br /&gt;\r\n2.&amp;nbsp;Adapt &amp;mdash; remix, transform, and build upon the material for any purpose, even commercially. The licensor cannot revoke these freedoms as long as you follow the license terms.&lt;/p&gt;\r\n\r\n&lt;p&gt;Under the following terms:&lt;br /&gt;\r\n1.&amp;nbsp;Attribution &amp;mdash; You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.&lt;br /&gt;\r\n2.&amp;nbsp;No additional restrictions &amp;mdash; You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.&lt;/p&gt;\r\n', 'by.png', 'https://creativecommons.org/licenses/by/4.0/'),
(9, 'CC BY-SA 4.0', '&lt;p&gt;You are free to:&lt;br /&gt;\r\n1.&amp;nbsp;Share &amp;mdash; copy and redistribute the material in any medium or format for any purpose, even commercially.&lt;br /&gt;\r\n2. Adapt &amp;mdash; remix, transform, and build upon the material for any purpose, even commercially. The licensor cannot revoke these freedoms as long as you follow the license terms.&lt;/p&gt;\r\n\r\n&lt;p&gt;Under the following terms:&lt;br /&gt;\r\n1. Attribution &amp;mdash; You must give appropriate credit , provide a link to the license, and indicate if changes were made . You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.&lt;br /&gt;\r\n2.&amp;nbsp;ShareAlike &amp;mdash; If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.&lt;br /&gt;\r\n3.&amp;nbsp;No additional restrictions &amp;mdash; You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.&lt;/p&gt;\r\n', 'by-sa.png', 'https://creativecommons.org/licenses/by-sa/4.0/'),
(10, 'CC BY-NC 4.0', '&lt;p&gt;You are free to:&lt;br /&gt;\r\n1. Share &amp;mdash; copy and redistribute the material in any medium or format&lt;br /&gt;\r\n2.&amp;nbsp;Adapt &amp;mdash; remix, transform, and build upon the material The licensor cannot revoke these freedoms as long as you follow the license terms.&lt;/p&gt;\r\n\r\n&lt;p&gt;Under the following terms:&lt;br /&gt;\r\n1.&amp;nbsp;Attribution &amp;mdash; You must give appropriate credit , provide a link to the license, and indicate if changes were made . You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.&lt;br /&gt;\r\n2.&amp;nbsp;NonCommercial &amp;mdash; You may not use the material for commercial purposes .&lt;br /&gt;\r\n3.&amp;nbsp;No additional restrictions &amp;mdash; You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.&lt;/p&gt;\r\n', 'by-nc.png', 'https://creativecommons.org/licenses/by-nc/4.0/'),
(11, 'CC BY-NC-SA 4.0', '&lt;p&gt;You are free to:&lt;br /&gt;\r\n1.&amp;nbsp;Share &amp;mdash; copy and redistribute the material in any medium or format&lt;br /&gt;\r\n2.&amp;nbsp;Adapt &amp;mdash; remix, transform, and build upon the material The licensor cannot revoke these freedoms as long as you follow the license terms.&lt;/p&gt;\r\n\r\n&lt;p&gt;Under the following terms:&lt;br /&gt;\r\n1.&amp;nbsp;Attribution &amp;mdash; You must give appropriate credit , provide a link to the license, and indicate if changes were made . You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.&lt;br /&gt;\r\n2.&amp;nbsp;NonCommercial &amp;mdash; You may not use the material for commercial purposes .&lt;br /&gt;\r\n3.&amp;nbsp;ShareAlike &amp;mdash; If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.&lt;br /&gt;\r\n4.&amp;nbsp;No additional restrictions &amp;mdash; You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.&lt;/p&gt;\r\n', 'by-nc-sa.png', 'https://creativecommons.org/licenses/by-nc-sa/4.0/'),
(12, 'CC BY-ND 4.0', '&lt;p&gt;You are free to:&lt;br /&gt;\r\n1.&amp;nbsp;Share &amp;mdash; copy and redistribute the material in any medium or format for any purpose, even commercially. The licensor cannot revoke these freedoms as long as you follow the license terms.&lt;/p&gt;\r\n\r\n&lt;p&gt;Under the following terms:&lt;br /&gt;\r\n1.&amp;nbsp;Attribution &amp;mdash; You must give appropriate credit , provide a link to the license, and indicate if changes were made . You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.&lt;br /&gt;\r\n2.&amp;nbsp;NoDerivatives &amp;mdash; If you remix, transform, or build upon the material, you may not distribute the modified material.&lt;br /&gt;\r\n3.&amp;nbsp;No additional restrictions &amp;mdash; You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.&lt;/p&gt;\r\n', 'by-nd.png', 'https://creativecommons.org/licenses/by-nd/4.0/'),
(13, 'CC BY-NC-ND 4.0', '&lt;p&gt;You are free to:&lt;br /&gt;\r\n1. Share &amp;mdash; copy and redistribute the material in any medium or format The licensor cannot revoke these freedoms as long as you follow the license terms.&lt;/p&gt;\r\n\r\n&lt;p&gt;Under the following terms:&lt;br /&gt;\r\n1.&amp;nbsp;Attribution &amp;mdash; You must give appropriate credit , provide a link to the license, and indicate if changes were made . You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.&lt;br /&gt;\r\n2. NonCommercial &amp;mdash; You may not use the material for commercial purposes.&lt;br /&gt;\r\n3. NoDerivatives &amp;mdash; If you remix, transform, or build upon the material, you may not distribute the modified material.&lt;br /&gt;\r\n4.&amp;nbsp;No additional restrictions &amp;mdash; You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.&lt;/p&gt;\r\n', 'by-nc-nd.png', 'https://creativecommons.org/licenses/by-nc-nd/4.0/'),
(14, 'CC0 1.0', '&lt;p&gt;No Copyright The person who associated a work with this deed has dedicated the work to the public domain by waiving all of his or her rights to the work worldwide under copyright law, including all related and neighboring rights, to the extent allowed by law.&lt;/p&gt;\r\n', 'cc-zero.png', 'https://creativecommons.org/publicdomain/zero/1.0/');

-- --------------------------------------------------------

--
-- Table structure for table `website_notifications`
--

CREATE TABLE `website_notifications` (
  `id_notif` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `notif_type` varchar(255) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `read_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_notifications`
--

INSERT INTO `website_notifications` (`id_notif`, `id_user`, `notif_type`, `description`, `created_at`, `read_at`) VALUES
(1, 1, 'action_completed_successfully', 'Data Tema Website berhasil diubah!', '2024-05-09 18:47:13', '2024-05-08 08:03:09'),
(2, 1, 'action_completed_successfully', 'Data Tema Website berhasil diubah!', '2024-05-09 20:09:28', '2024-05-10 08:03:09'),
(3, 1, 'action_completed_successfully', 'Data Foto berhasil diubah!', '2024-05-09 21:53:56', '2024-05-10 08:03:09'),
(4, 1, 'action_completed_successfully', 'Data Foto berhasil diubah!', '2024-05-09 22:25:21', '2024-05-10 08:03:09'),
(5, 1, 'action_completed_successfully', 'Data ID Event berhasil diubah!', '2024-05-09 23:19:07', '2024-05-10 08:03:09'),
(6, 1, 'action_completed_successfully', 'Data ID Tema berhasil diubah!', '2024-05-09 23:19:52', '2024-05-10 08:03:09'),
(7, 1, 'action_completed_successfully', 'Data ID Tema berhasil diubah!', '2024-05-09 23:21:06', '2024-05-10 08:03:09'),
(8, 1, 'action_completed_successfully', 'Data ID Tema berhasil diubah!', '2024-05-09 23:22:54', '2024-05-10 08:03:09'),
(9, 1, 'action_completed_successfully', 'Data ID Tema berhasil diubah!', '2024-05-09 23:23:46', '2024-05-10 08:03:09'),
(10, 1, 'action_completed_successfully', 'Data ID Tema berhasil diubah!', '2024-05-09 23:26:25', '2024-05-10 08:03:09'),
(11, 1, 'action_completed_successfully', 'Data ID Tema berhasil diubah!', '2024-05-09 23:27:58', '2024-05-10 08:03:09'),
(12, 1, 'action_completed_successfully', 'Data ID Tema berhasil diubah!', '2024-05-09 23:33:01', '2024-05-10 08:03:09'),
(13, 1, 'action_completed_successfully', 'Data ID Event berhasil diubah!', '2024-05-10 07:58:19', '2024-05-10 08:03:09'),
(14, 1, 'action_completed_successfully', 'Data ID Tema berhasil diubah! (Notif ID) = 2', '2024-05-10 10:39:39', '2024-05-10 13:12:56'),
(15, 1, 'action_completed_successfully', 'Data ID Tema berhasil diubah! (Notif ID) = 1', '2024-05-10 10:42:42', '2024-05-10 11:16:37'),
(16, 1, 'action_completed_successfully', 'Data ID Fasilitas Kamar berhasil diubah!', '2024-05-10 11:11:08', '2024-05-10 13:12:49'),
(17, 1, 'action_completed_successfully', 'Data ID Fasilitas Kamar berhasil dihapus! (Notif ID) = ', '2024-05-10 11:12:08', '2024-05-10 12:54:39'),
(18, 1, 'action_completed_successfully', 'Data ID Fasilitas Hotel berhasil dihapus! (ID Fasilitas Hotel) = ', '2024-05-10 13:17:16', '2024-05-10 13:41:03'),
(19, 1, 'action_completed_successfully', 'Data ID Fasilitas Hotel berhasil dihapus! (ID Fasilitas Hotel) = ', '2024-05-10 13:18:22', '2024-05-10 13:41:03'),
(20, 1, 'action_completed_successfully', 'Data ID Fasilitas Hotel berhasil dihapus! (ID Fasilitas Hotel) = 12', '2024-05-10 13:26:56', '2024-05-10 13:41:03'),
(21, 3, 'action_completed_successfully', 'Data Pesanan berhasil disimpan!', '2024-05-10 13:46:16', NULL),
(22, 3, 'action_completed_successfully', 'Data Transaksi berhasil disimpan!', '2024-05-10 13:48:15', NULL),
(23, 3, 'action_completed_successfully', 'Data Transaksi berhasil disimpan!', '2024-05-10 13:50:08', NULL),
(24, 3, 'action_completed_successfully', 'Data Pesanan berhasil diubah! (Pesanan) = 4', '2024-05-10 13:50:08', NULL),
(25, 1, 'action_completed_successfully', 'Data Tema Website berhasil disimpan!', '2024-05-10 16:27:40', NULL),
(26, 1, 'action_completed_successfully', 'Data Favicon berhasil diubah! (Favicon) = 3', '2024-05-10 16:28:56', NULL),
(27, 1, 'action_completed_successfully', 'Data Logo berhasil diubah! (Logo) = 3', '2024-05-10 16:36:41', NULL),
(28, 1, 'action_completed_successfully', 'Data Foto berhasil diubah! (ID Tema) = 3', '2024-05-10 16:43:59', NULL),
(29, 1, 'action_completed_successfully', 'Data Logo berhasil diubah! (ID Tema) = 3', '2024-05-10 16:44:53', NULL),
(30, 1, 'action_completed_successfully', 'Data Tema Website berhasil disimpan!', '2024-05-10 16:45:37', NULL),
(31, 1, 'action_completed_successfully', 'Data Favicon berhasil diubah! (ID Tema) = 4', '2024-05-10 16:47:31', NULL),
(32, 1, 'action_completed_successfully', 'Data Logo berhasil diubah! (ID Tema) = 4', '2024-05-10 16:47:51', NULL),
(33, 1, 'action_completed_successfully', 'Data Foto berhasil diubah! (ID Tema) = 4', '2024-05-10 16:48:04', NULL),
(34, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 31', '2024-05-10 18:07:07', NULL),
(35, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 7', '2024-05-10 18:08:35', NULL),
(36, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 12', '2024-05-10 18:09:10', NULL),
(37, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 19', '2024-05-10 18:09:35', NULL),
(38, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 25', '2024-05-10 18:09:52', NULL),
(39, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 26', '2024-05-10 18:10:40', NULL),
(40, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 26', '2024-05-10 18:10:59', NULL),
(41, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 30', '2024-05-10 18:13:08', NULL),
(42, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 24', '2024-05-10 18:13:35', NULL),
(43, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 27', '2024-05-10 18:14:05', NULL),
(44, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 28', '2024-05-10 18:14:23', NULL),
(45, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 4', '2024-05-10 18:14:55', NULL),
(46, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 9', '2024-05-10 18:15:23', NULL),
(47, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 29', '2024-05-10 18:15:43', NULL),
(48, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 20', '2024-05-10 18:17:17', NULL),
(49, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 21', '2024-05-10 18:17:39', NULL),
(50, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 11', '2024-05-10 18:18:14', NULL),
(51, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 1', '2024-05-10 18:18:48', NULL),
(52, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 3', '2024-05-10 18:19:10', NULL),
(53, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 5', '2024-05-10 18:19:35', NULL),
(54, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 2', '2024-05-10 18:19:54', NULL),
(55, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 8', '2024-05-10 18:20:19', NULL),
(56, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 6', '2024-05-10 18:20:51', NULL),
(57, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 10', '2024-05-10 18:21:31', NULL),
(58, 1, 'action_completed_successfully', 'Data Dekorasi Website berhasil diubah! (Dekorasi Website) = 24', '2024-05-10 18:35:49', NULL),
(59, 1, 'action_completed_successfully', 'Data Foto berhasil diubah! (ID Tema) = 4', '2024-05-10 18:38:35', NULL),
(60, 1, 'action_completed_successfully', 'Data ID Tema berhasil diubah! () = ', '2024-05-10 20:15:47', NULL),
(61, 1, 'action_completed_successfully', 'Data ID Event berhasil diubah! () = ', '2024-05-10 20:17:04', NULL),
(62, 1, 'action_completed_successfully', 'Data ID Website berhasil diubah! (ID Website) = 1', '2024-05-10 20:17:24', NULL),
(63, 1, 'action_completed_successfully', 'Data Akun Sosial Media berhasil diubah! (Akun Sosial Media) = 4', '2024-05-10 20:17:41', NULL),
(64, 1, 'action_completed_successfully', 'Data ID Sosmed berhasil dihapus! (ID Sosmed) = 3', '2024-05-10 20:17:46', NULL),
(65, 1928087381, 'action_completed_successfully', 'Data Pendaftaran berhasil disimpan!', '2024-05-13 01:42:17', '2024-05-13 02:11:50'),
(66, 1928087381, 'action_completed_successfully', 'Data Pendaftaran berhasil disimpan!', '2024-05-13 01:45:14', '2024-05-13 02:11:50'),
(75, 1928087381, 'action_completed_successfully', 'Data Lisensi berhasil disimpan!', '2024-05-13 02:10:46', '2024-05-13 02:11:50'),
(76, 2, 'action_completed_successfully', 'Data Lisensi berhasil diubah! (Lisensi) = 12', '2024-05-13 02:18:08', NULL),
(77, 2, 'action_completed_successfully', 'Data Lisensi berhasil diubah! (Lisensi) = 14', '2024-05-13 02:21:20', NULL),
(78, 2, 'action_completed_successfully', 'Data Lisensi berhasil disimpan!', '2024-05-13 02:50:58', NULL),
(79, 2, 'action_completed_successfully', 'Data Lisensi berhasil diubah! (Lisensi) = 14', '2024-05-13 02:53:53', NULL),
(80, 2, 'action_completed_successfully', 'Data Lisensi berhasil disimpan!', '2024-05-13 02:54:15', NULL),
(81, 2, 'action_completed_successfully', 'Data Lisensi berhasil diubah! (Lisensi) = 14', '2024-05-13 02:54:19', NULL),
(82, 1928087381, 'action_completed_successfully', 'Data Pembaruan Lisensi berhasil disimpan!', '2024-05-13 02:56:52', NULL),
(83, 1928087381, 'action_completed_successfully', 'Data Pembaruan Lisensi berhasil disimpan!', '2024-05-13 02:58:39', NULL),
(84, 1928087381, 'action_completed_successfully', 'Data Lisensi berhasil disimpan!', '2024-05-13 02:59:13', NULL),
(85, 2, 'action_completed_successfully', 'Data Lisensi berhasil diubah! (Lisensi) = 14', '2024-05-13 02:59:42', NULL),
(86, 1928087381, 'action_completed_successfully', 'Data Lisensi berhasil disimpan!', '2024-05-13 03:12:24', NULL),
(87, 2, 'action_completed_successfully', 'Data Lisensi berhasil diubah! (Lisensi) = 14', '2024-05-13 03:12:44', NULL),
(88, 1928087381, 'action_completed_successfully', 'Data Lisensi berhasil disimpan!', '2024-05-13 03:19:48', NULL),
(89, 2, 'action_completed_successfully', 'Data Lisensi berhasil diubah! (Lisensi) = 13', '2024-05-13 03:20:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `website_notif_type`
--

CREATE TABLE `website_notif_type` (
  `id_notif_type` int(11) NOT NULL,
  `notif_type` varchar(40) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_notif_type`
--

INSERT INTO `website_notif_type` (`id_notif_type`, `notif_type`, `title`, `icon`) VALUES
(1, 'new_notification_available', 'Anda memiliki notifikasi baru', '<i class=\"fas fa-bell\"></i>'),
(2, 'new_message_received', 'Anda memiliki pesan baru.', '<i class=\"fas fa-envelope\"></i>'),
(4, 'important_message_warning', 'Peringatan: Pesan penting', '<i class=\"fas fa-exclamation-triangle\"></i>'),
(5, 'action_completed_successfully', 'Berhasil!', '<i class=\"fas fa-check-circle\"></i>'),
(6, 'informational_note', 'Informasi: Harap diperhatikan.', '<i class=\"fas fa-info-circle\"></i>'),
(8, 'action_failed_error', 'Kesalahan', '<i class=\"fas fa-times-circle\"></i>'),
(9, 'need_assistance_help', 'Butuh bantuan?', '<i class=\"fas fa-question-circle\"></i>'),
(11, 'positive_feedback_received', 'Menghargai masukan Anda.', '<i class=\"fas fa-thumbs-up\"></i>'),
(12, 'negative_feedback_received', 'Masukan Anda dicatat', '<i class=\"fas fa-thumbs-down\"></i>'),
(13, 'upcoming_event_reminder', 'Acara akan datang', '<i class=\"fas fa-calendar\"></i>');

-- --------------------------------------------------------

--
-- Table structure for table `website_sosmed`
--

CREATE TABLE `website_sosmed` (
  `id_sosmed` int(11) NOT NULL,
  `id_website` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_sosmed`
--

INSERT INTO `website_sosmed` (`id_sosmed`, `id_website`, `nama`, `link`, `status`) VALUES
(4, 1, 'Instagram', 'https://instagram.com/levato.grow', '');

-- --------------------------------------------------------

--
-- Table structure for table `website_themes`
--

CREATE TABLE `website_themes` (
  `id_theme` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_themes`
--

INSERT INTO `website_themes` (`id_theme`, `nama`, `favicon`, `logo`, `foto`, `deskripsi`) VALUES
(1, 'school_ukk_hotel', 'utama_favicon.jpg', 'utama_logo.jpg', 'utama_foto.jpg', '<p>Lepaskan diri Anda ke <strong>Hotel Hebat</strong>, dikelilingi oleh keindahan pegunungan yang indah, danau, dan sawah menghijau.</p>\r\n\r\n<p>Nikmati sore yang hangat dengan berenang di kolam renang dengan pemandangan matahari terbenam yang memukau; Kid&#39;s Club yang luas - menawarkan beragam fasilitas dan kegiatan anak-anak yang akan melengkapi kenyamanan keluarga.</p>\r\n\r\n<p>Convention Center kami, dilengkapi pelayanan lengkap dengan ruang konvensi terbesar di Bandung, mampu mengakomodasi hingga 3.000 delegasi. Manfaatkan ruang penyelenggaraan konvensi M.I.C.E ataupun mewujudkan acara pernikahan adat yang mewah.</p>\r\n'),
(2, 'christmas', 'christmas_favicon.png', 'christmas_logo.png', 'school_ukk_hotel_foto.png', '<p>Rayakan Natal Bersama dengan Hotel HEBAT</p>\r\n'),
(3, 'college_uvers_levato', 'college_uvers_levato_favicon.jpg', 'college_uvers_levato_logo.jpg', 'college_uvers_levato_foto.jpg', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;LEVATO adalah platform online yang menyediakan layanan jasa pembuatan izin usaha bagi para pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) di Kota Batam. Dengan fokus pada&amp;nbsp;&lt;strong&gt;kemudahan&lt;/strong&gt;,&amp;nbsp;&lt;strong&gt;kecepatan&lt;/strong&gt;, dan&amp;nbsp;&lt;strong&gt;kepercayaan&lt;/strong&gt;, LEVATO memungkinkan pelaku UMKM untuk&amp;nbsp;mengurus izin usaha mereka secara mudah dan cepat melalui media sosial Instagram. Kami berkomitmen untuk memberikan informasi edukasi mengenai pentingnya memiliki izin usaha serta menyediakan layanan lengkap mulai dari konsultasi hingga pendampingan dalam proses perizinan&lt;/p&gt;\r\n'),
(4, 'college_uvers_levato_2', 'college_uvers_levato_2_favicon.png', 'college_uvers_levato_2_logo.png', 'college_uvers_levato_2_foto.jpg', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;LEVATO adalah platform online yang menyediakan layanan jasa pembuatan izin usaha bagi para pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) di Kota Batam. Dengan fokus pada&amp;nbsp;&lt;strong&gt;kemudahan&lt;/strong&gt;,&amp;nbsp;&lt;strong&gt;kecepatan&lt;/strong&gt;, dan&amp;nbsp;&lt;strong&gt;kepercayaan&lt;/strong&gt;, LEVATO memungkinkan pelaku UMKM untuk&amp;nbsp;mengurus izin usaha mereka secara mudah dan cepat melalui media sosial Instagram. Kami berkomitmen untuk memberikan informasi edukasi mengenai pentingnya memiliki izin usaha serta menyediakan layanan lengkap mulai dari konsultasi hingga pendampingan dalam proses perizinan&lt;/p&gt;\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bisnis`
--
ALTER TABLE `bisnis`
  ADD PRIMARY KEY (`id_usaha`),
  ADD KEY `id_pemilik_fk` (`id_pemilik`),
  ADD KEY `no_regis_fk` (`no_regis`);

--
-- Indexes for table `decoration`
--
ALTER TABLE `decoration`
  ADD PRIMARY KEY (`id_decor`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lisensi`
--
ALTER TABLE `lisensi`
  ADD PRIMARY KEY (`id_lisensi`),
  ADD KEY `id_usaha_fk` (`id_usaha`);

--
-- Indexes for table `login_histories`
--
ALTER TABLE `login_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_histories_user_id_foreign` (`id_user`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id_operations`),
  ADD KEY `ops_id_petugas_fk` (`id_petugas`),
  ADD KEY `ops_id_user+fk` (`id_user`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembaruan`
--
ALTER TABLE `pembaruan`
  ADD PRIMARY KEY (`id_pembaruan`),
  ADD KEY `id_lisensi_pembaruan` (`id_lisensi`),
  ADD KEY `diminta_oleh_fk` (`diminta_oleh`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_bisnis_fk` (`id_bisnis`),
  ADD KEY `id_lisensi_baru` (`id_lisensi`);

--
-- Indexes for table `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`id_pemilik`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`),
  ADD KEY `diajukan_oleh_fk` (`diajukan_oleh`),
  ADD KEY `id_lisensi_fk` (`id_lisensi`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_institution_id_foreign` (`institution_id`),
  ADD KEY `users_major_id_foreign` (`major_id`);

--
-- Indexes for table `website_licenses`
--
ALTER TABLE `website_licenses`
  ADD PRIMARY KEY (`id_lisensi`);

--
-- Indexes for table `website_notifications`
--
ALTER TABLE `website_notifications`
  ADD PRIMARY KEY (`id_notif`);

--
-- Indexes for table `website_notif_type`
--
ALTER TABLE `website_notif_type`
  ADD PRIMARY KEY (`id_notif_type`);

--
-- Indexes for table `website_sosmed`
--
ALTER TABLE `website_sosmed`
  ADD PRIMARY KEY (`id_sosmed`);

--
-- Indexes for table `website_themes`
--
ALTER TABLE `website_themes`
  ADD PRIMARY KEY (`id_theme`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bisnis`
--
ALTER TABLE `bisnis`
  MODIFY `id_usaha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `decoration`
--
ALTER TABLE `decoration`
  MODIFY `id_decor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lisensi`
--
ALTER TABLE `lisensi`
  MODIFY `id_lisensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login_histories`
--
ALTER TABLE `login_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `id_operations` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pembaruan`
--
ALTER TABLE `pembaruan`
  MODIFY `id_pembaruan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pemilik`
--
ALTER TABLE `pemilik`
  MODIFY `id_pemilik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1928087382;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `website_licenses`
--
ALTER TABLE `website_licenses`
  MODIFY `id_lisensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `website_notifications`
--
ALTER TABLE `website_notifications`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `website_notif_type`
--
ALTER TABLE `website_notif_type`
  MODIFY `id_notif_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `website_sosmed`
--
ALTER TABLE `website_sosmed`
  MODIFY `id_sosmed` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `website_themes`
--
ALTER TABLE `website_themes`
  MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bisnis`
--
ALTER TABLE `bisnis`
  ADD CONSTRAINT `id_pemilik_fk` FOREIGN KEY (`id_pemilik`) REFERENCES `pemilik` (`id_pemilik`);

--
-- Constraints for table `lisensi`
--
ALTER TABLE `lisensi`
  ADD CONSTRAINT `id_usaha_fk` FOREIGN KEY (`id_usaha`) REFERENCES `bisnis` (`id_usaha`);

--
-- Constraints for table `pembaruan`
--
ALTER TABLE `pembaruan`
  ADD CONSTRAINT `diminta_oleh_fk` FOREIGN KEY (`diminta_oleh`) REFERENCES `bisnis` (`id_usaha`),
  ADD CONSTRAINT `id_lisensi_pembaruan` FOREIGN KEY (`id_lisensi`) REFERENCES `lisensi` (`id_lisensi`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `id_bisnis_fk` FOREIGN KEY (`id_bisnis`) REFERENCES `bisnis` (`id_usaha`),
  ADD CONSTRAINT `id_lisensi_baru` FOREIGN KEY (`id_lisensi`) REFERENCES `lisensi` (`id_lisensi`);

--
-- Constraints for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `diajukan_oleh_fk` FOREIGN KEY (`diajukan_oleh`) REFERENCES `pemilik` (`id_pemilik`),
  ADD CONSTRAINT `id_lisensi_fk` FOREIGN KEY (`id_lisensi`) REFERENCES `lisensi` (`id_lisensi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
