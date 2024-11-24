-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2021 at 09:16 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4s5s`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `judul_blog` varchar(100) NOT NULL,
  `nama_editor` varchar(50) NOT NULL,
  `isi_blog` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id_blog`, `judul_blog`, `nama_editor`, `isi_blog`) VALUES
(12, 'Susu', 'Khenjy', 'Susu mengandung kalsium'),
(15, 'Soya', 'Khenjy', 'Soya berasal dari kacang kedelai.'),
(17, 'makanan', 'khenjy', 'Susu mengandung kalsium'),
(18, 'makanan', 'khenjy', 'makanan sangatlah sehat');

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

CREATE TABLE `editor` (
  `id_editor` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `tglgabung` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `editor`
--

INSERT INTO `editor` (`id_editor`, `nama`, `email`, `password`, `telp`, `tglgabung`) VALUES
(0, 'Khenjy J', 'khenjyjohnelson@outlook.com', '123456', '1234567890123', '2021-03-16'),
(3, 'Khenjy Johnelson', 'khenjyjohnelson123@gmail.com', '12345', '1234567890123', '2021-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `judul_blog` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `tglkomen` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `judul_blog`, `nama`, `email`, `isi`, `tglkomen`) VALUES
(1, 'Makanan', 'Khenjy Johnelson', 'khenjyjohnelson@outlook.com', 'terima kasih atas infonya min', '2021-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `viewer`
--

CREATE TABLE `viewer` (
  `id_viewer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indexes for table `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`id_editor`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `viewer`
--
ALTER TABLE `viewer`
  ADD PRIMARY KEY (`id_viewer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `editor`
--
ALTER TABLE `editor`
  MODIFY `id_editor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `viewer`
--
ALTER TABLE `viewer`
  MODIFY `id_viewer` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
