-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 04:59 AM
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
-- Database: `db_webci`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `tek` mediumtext,
  `lokasi` varchar(200) NOT NULL DEFAULT '',
  `timestamp` varchar(50) DEFAULT NULL,
  `category` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(5) DEFAULT NULL,
  `mulai` varchar(20) NOT NULL DEFAULT '',
  `selesai` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(10) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `tek` mediumtext,
  `image_path` varchar(100) DEFAULT NULL,
  `timestamp` varchar(50) DEFAULT NULL,
  `category` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(10) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `tek` mediumtext,
  `image_path` varchar(100) DEFAULT NULL,
  `timestamp` varchar(50) DEFAULT NULL,
  `category` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(10) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `tek` mediumtext,
  `image_path` varchar(100) DEFAULT NULL,
  `timestamp` varchar(50) DEFAULT NULL,
  `category` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(5) DEFAULT NULL,
  `size` varchar(10) NOT NULL DEFAULT '',
  `type` varchar(15) NOT NULL DEFAULT '',
  `ext` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `namatabel`
--

CREATE TABLE `namatabel` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `body` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `namatabel`
--

INSERT INTO `namatabel` (`id`, `judul`, `nama`, `tanggal`, `body`) VALUES
(1, 'Berita sore', 'Nama saya', '2022-04-13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tampilan`
--

CREATE TABLE `tampilan` (
  `id` int(5) NOT NULL,
  `namaweb` varchar(50) DEFAULT '',
  `hakcipta` varchar(50) DEFAULT NULL,
  `term` mediumtext,
  `privasi` mediumtext,
  `telp` varchar(30) NOT NULL,
  `is_daftar` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tampilan`
--

INSERT INTO `tampilan` (`id`, `namaweb`, `hakcipta`, `term`, `privasi`, `telp`, `is_daftar`) VALUES
(1, 'CregAsia', '2018 CregAsia.com', 'term', 'privasi', '021-000000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `updated` varchar(25) DEFAULT NULL,
  `level` int(1) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `username`, `password`, `updated`, `level`) VALUES
(1, 'Admin Web', 'admin', '$2y$10$bkoTP8ab/SMf7eX8WQOUOuXidGYkUWgQSHpOCk5A8YE31zq/Vrzx2', '2018-07-29 16:14:54', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `namatabel`
--
ALTER TABLE `namatabel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tampilan`
--
ALTER TABLE `tampilan`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `namatabel`
--
ALTER TABLE `namatabel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
