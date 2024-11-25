-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2022 at 01:10 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `hapus_tipe` (IN `tipe` VARCHAR(25))   BEGIN DELETE FROM kamar WHERE tipe = tipe; DELETE FROM faskamar WHERE tipe = tipe; END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `daftartamu`
-- (See below for the actual view)
--
CREATE TABLE `daftartamu` (
`tamu` varchar(50)
,`cek_in` date
,`cek_out` date
,`status` enum('cek in','cek out')
);

-- --------------------------------------------------------

--
-- Table structure for table `fashotel`
--

CREATE TABLE `fashotel` (
  `id_fashotel` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fashotel`
--

INSERT INTO `fashotel` (`id_fashotel`, `nama`, `keterangan`, `img`) VALUES
(1, 'Kolam Renang', 'Berada di lantai 3 dengan luas 50m persegi', 'kolam.jpg'),
(2, 'Makan Siang', 'Berada di teras hotel dengan luas 5m x 10m', 'lunch.jpg'),
(3, 'Makan Malam', 'Berada di tengah-tengah hotel dengan luas 20m persegi', 'dinner.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `faskamar`
--

CREATE TABLE `faskamar` (
  `id_faskamar` int(11) NOT NULL,
  `tipe` varchar(25) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faskamar`
--

INSERT INTO `faskamar` (`id_faskamar`, `tipe`, `nama`, `img`) VALUES
(5, 'deluxe', 'Kamar berukuran luas 45 m2', 'size.jpg'),
(6, 'superior', 'Kamar berukuran luas 32 m2', 'size.jpg'),
(7, 'superior', 'Kamar mandi shower', 'shower.jpg'),
(8, 'superior', 'Coffee Maker', 'coffeemaker.jpg'),
(9, 'superior', 'AC', 'ac.jpg'),
(10, 'superior', 'LED TV 32 inch', 'tv.jpg'),
(11, 'deluxe', 'Kamar mandi shower dan Bath Tub', 'shower.jpg'),
(12, 'deluxe', 'Coffee Maker', 'coffeemaker.jpg'),
(13, 'deluxe', 'Sofa', 'sofa.jpg'),
(14, 'deluxe', 'LED TV 40 inch', 'tv.jpg'),
(15, 'deluxe', 'AC', 'ac.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_pesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tamu` varchar(50) NOT NULL,
  `tipe` varchar(25) NOT NULL,
  `cek_in` date NOT NULL,
  `cek_out` date NOT NULL,
  `status` enum('cek in','cek out') NOT NULL,
  `tgl_perubahan` datetime DEFAULT NULL,
  `nama_user` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_pesanan`, `id_user`, `tamu`, `tipe`, `cek_in`, `cek_out`, `status`, `tgl_perubahan`, `nama_user`) VALUES
(2, 0, 'khenjy', 'deluxe', '2022-04-14', '2022-04-20', 'cek in', '2022-04-27 21:05:51', 'root@localhost'),
(8, 1, 'Ehren', 'luxury', '2022-05-09', '2022-05-12', 'cek in', '2022-05-10 21:18:18', 'root@localhost'),
(9, 1, 'Adit', 'deluxe', '2022-05-18', '2022-05-11', 'cek in', '2022-05-12 11:43:39', 'root@localhost'),
(10, 1, 'Ehren', 'superior', '2022-05-09', '2022-05-12', 'cek in', '2022-05-10 21:17:09', 'root@localhost'),
(11, 1, 'Ehren', 'deluxe', '2022-05-10', '2022-05-12', 'cek in', '2022-05-10 21:17:07', 'root@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(11) NOT NULL,
  `tipe` varchar(25) NOT NULL,
  `img` varchar(255) NOT NULL,
  `jlh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `tipe`, `img`, `jlh`) VALUES
(1, 'superior', 'superior.jpg', 17),
(2, 'deluxe', 'deluxe.jpg', 14);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `metadesc` text NOT NULL,
  `fb` varchar(255) NOT NULL,
  `ig` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `favicon`, `logo`, `alamat`, `email`, `hp`, `metadesc`, `fb`, `ig`) VALUES
(1, 'HOTEL HEBAT', 'favicon.png', 'logo.png', 'Jl Peternakan Dlm III 36, Dki Jakarta', 'hotelhebat@gmail.com', '0-21-541-3829', 'Hotel berbintang empat dengan fasilitas dan pelayanan bertaraf internasional, pilihan tepat bagi bagi para wisatawan maupun pelaku bisnis yang mengutamakan keindahan.', 'www.facebook.com/hotel.hebat/', 'www.instagram.com/hotelhebat/');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tamu` varchar(50) NOT NULL,
  `tipe` varchar(25) NOT NULL,
  `jlh` int(11) NOT NULL,
  `cek_in` date NOT NULL,
  `cek_out` date NOT NULL,
  `status` enum('cek in','cek out') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_user`, `tamu`, `tipe`, `jlh`, `cek_in`, `cek_out`, `status`) VALUES
(1, 1, 'Ehren', 'superior', 6, '2022-04-03', '2022-04-12', 'cek in'),
(2, 5, 'Khenjy', 'superior', 4, '2022-04-27', '2022-05-25', 'cek out'),
(3, 5, 'Billy', 'deluxe', 2, '2022-05-07', '2022-05-07', 'cek in'),
(6, 1, 'Billy', 'deluxe', 3, '2022-05-08', '2022-05-10', 'cek in'),
(7, 5, 'Ehren', 'superior', 5, '2022-05-10', '2022-05-13', 'cek in'),
(8, 1, 'Billy', 'superior', 4, '2022-05-09', '2022-05-11', 'cek out');

--
-- Triggers `pesanan`
--
DELIMITER $$
CREATE TRIGGER `hapus_pesanan` AFTER DELETE ON `pesanan` FOR EACH ROW BEGIN INSERT INTO history (id_pesanan, id_user, tamu, tipe, cek_in, cek_out, status, tgl_perubahan, nama_user) VALUES (OLD.id_pesanan, OLD.id_user, OLD.tamu, OLD.tipe, OLD.cek_in, OLD.cek_out, OLD.status, SYSDATE(), CURRENT_USER); END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `kurang_kamar` AFTER INSERT ON `pesanan` FOR EACH ROW BEGIN
 UPDATE KAMAR SET jlh = jlh - NEW.jlh
 WHERE tipe = NEW.tipe;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah_kamar` AFTER DELETE ON `pesanan` FOR EACH ROW BEGIN
 UPDATE kamar set jlh = jlh + OLD.jlh
 WHERE tipe = OLD.tipe; 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `level` enum('tamu','administrator','resepsionis') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `password`, `hp`, `level`) VALUES
(1, 'Khenjy', 'khenjyjohnelson123@gmail.com', '$2y$10$GbildcAQnSpLsXP3eUfwdOE8K62QTg9C.I8cAVt2W39/jzji6EInm', '081234567890', 'tamu'),
(2, 'Khenjy', 'khenjyjohnelson@gmail.com', '$2y$10$GbildcAQnSpLsXP3eUfwdOE8K62QTg9C.I8cAVt2W39/jzji6EInm', '081234567890', 'administrator'),
(3, 'Khenjy', 'khenjyjohnelson@outlook.com', '$2y$10$GbildcAQnSpLsXP3eUfwdOE8K62QTg9C.I8cAVt2W39/jzji6EInm', '081234567890', 'resepsionis'),
(5, 'Billy', 'billyfernando@email.com', '$2y$10$GbildcAQnSpLsXP3eUfwdOE8K62QTg9C.I8cAVt2W39/jzji6EInm', '081234567890', 'tamu'),
(7, 'Billy', 'billy@gmail.com', '$2y$10$4VrT6ZKhdlNmQSsv/RC8.eTTKRaxxZfgqDkLRj/MZiLoadTuULoSu', '124', 'tamu');

-- --------------------------------------------------------

--
-- Structure for view `daftartamu`
--
DROP TABLE IF EXISTS `daftartamu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `daftartamu`  AS SELECT `pesanan`.`tamu` AS `tamu`, `pesanan`.`cek_in` AS `cek_in`, `pesanan`.`cek_out` AS `cek_out`, `pesanan`.`status` AS `status` FROM `pesanan``pesanan`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fashotel`
--
ALTER TABLE `fashotel`
  ADD PRIMARY KEY (`id_fashotel`);

--
-- Indexes for table `faskamar`
--
ALTER TABLE `faskamar`
  ADD PRIMARY KEY (`id_faskamar`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fashotel`
--
ALTER TABLE `fashotel`
  MODIFY `id_fashotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faskamar`
--
ALTER TABLE `faskamar`
  MODIFY `id_faskamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
