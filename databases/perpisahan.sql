-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 04:58 AM
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
-- Database: `perpisahan`
--

-- --------------------------------------------------------

--
-- Table structure for table `icon`
--

CREATE TABLE `icon` (
  `icon_id` int(11) NOT NULL,
  `icon_name` varchar(25) NOT NULL,
  `icon_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'senang'),
(2, 'seru'),
(3, 'memalukan');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `foto_kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `jurusan`, `description`, `foto_kelas`) VALUES
(1, 'XII', 'REKAYASA PERANGKAT LUNAK', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil temporibus esse eius est pariatur laborum cupiditate unde aliquid, vel possimus dolorum eos veniam cum numquam culpa tempora deserunt voluptatibus. Dolor! Sint tempora est culpa cum aliquam maiores.\r\n\r\nNatus, saepe optio? Expedita doloremque illum rerum officiis dolore, esse reprehenderit placeat sequi itaque aut perferendis praesentium vel laudantium ab ut quo! Delectus laudantium illo maiores accusamus, laborum dignissimos tenetur! Dolorum consequatur autem nihil?', 'pp.jpg'),
(2, 'XII', 'REKAYASA PERANGKAT LUNAK', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kenangan`
--

CREATE TABLE `kenangan` (
  `id_kenangan` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kenangan`
--

INSERT INTO `kenangan` (`id_kenangan`, `id`, `foto`, `kategori`) VALUES
(1, 1, 'drama.jpg', 'seru'),
(2, 1, 'IMG20191116092723.jpg', 'senang'),
(3, 1, 'online.jpeg', 'senang'),
(4, 1, 'bobby.jpeg', 'memalukan'),
(5, 1, 'pp.jpg', 'senang'),
(6, 1, 'IMG20211119174713.jpg', 'seru'),
(7, 2, '1.jpg', 'senang'),
(8, 2, '2.jpg', 'seru'),
(9, 2, '3.jpg', 'memalukan'),
(10, 2, '4.jpg', 'seru'),
(11, 2, '5.jpg', 'senang'),
(12, 2, '6.jpg', 'seru'),
(13, 2, '7.jpg', 'seru');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `id_user`, `id`, `pesan`) VALUES
(1, 1, 1, 'Terima kasih telah mengajari kami selama ini. '),
(4, 2, 1, 'Saya senang belajar di sini.'),
(5, 1, 2, 'Saya senang belajar di sini.'),
(6, 1, 1, 'Terima kasih telah mengajari kami selama ini. '),
(7, 2, 2, 'Senang rasanya berada di kelas ini'),
(8, 2, 2, 'Selamat tinggal kelas yang sangat mengharukan ini');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `level` enum('admin','member') NOT NULL,
  `foto` varchar(255) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id`, `nama_user`, `username`, `password`, `level`, `foto`, `hp`, `email`) VALUES
(1, 1, 'Khenjy Johnelson', 'Khenjy', '1234', 'admin', 'img.png', '1234', 'abc@gmail.com'),
(2, 1, 'Billy Fernando', 'Billy', '1234', 'member', 'ruv.png', '1234', 'bilfer14@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `icon`
--
ALTER TABLE `icon`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kenangan`
--
ALTER TABLE `kenangan`
  ADD PRIMARY KEY (`id_kenangan`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `icon`
--
ALTER TABLE `icon`
  MODIFY `icon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kenangan`
--
ALTER TABLE `kenangan`
  MODIFY `id_kenangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_ibfk_1` FOREIGN KEY (`id`) REFERENCES `kelas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
