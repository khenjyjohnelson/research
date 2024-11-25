-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 05:54 AM
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
-- Database: `college_uvers_skpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `id_bookmark` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `id_laptop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `decoration`
--

CREATE TABLE `decoration` (
  `id_decor` int(11) NOT NULL,
  `kode` varchar(35) NOT NULL,
  `keterangan` varchar(35) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decoration`
--

INSERT INTO `decoration` (`id_decor`, `kode`, `keterangan`, `img`) VALUES
(1, 'tabel1', 'tabel1', 'tabel1.png'),
(2, 'tabel2', 'tabel2', 'tabel2.png'),
(3, 'tabel3', 'tabel3', 'tabel3.png'),
(4, 'tabel4', 'tabel4', 'tabel4.png'),
(5, 'tabel5', 'tabel5', 'tabel5.png'),
(6, 'tabel6', 'tabel6', 'tabel6.png'),
(7, 'tabel7', 'tabel7', 'tabel7.png'),
(8, 'tabel8', 'tabel8', 'tabel8.png'),
(9, 'tabel9', 'tabel9', 'tabel9.png'),
(10, 'tabel10', 'tabel10', 'tabel10.png'),
(11, 'tabel11', 'tabel11', 'tabel11.png'),
(12, 'tabel12', 'tabel12', 'tabel12.png'),
(13, 'v6', 'home', 'v6.png'),
(14, 'v2', 'login', 'v2.png'),
(15, 'v3', 'signup', 'v3.png'),
(16, 'v5', 'dashboard', 'v5.png'),
(17, 'v4', 'no-level', 'v4.png'),
(19, 'tabel13', 'tabel13', 'tabel13.png');

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
(2, 'Gerhana Matahari', 'Saksikan Keajaiban Langit dengan Gemerlap Kecemerlangan di HOTEL HEBAT!', '.jpeg', 'Saksikan keajaiban gerhana matahari di HOTEL HEBAT! Dengan lokasi yang sempurna untuk menikmati pemandangan langit yang memukau, kami siap memberikan pengalaman tak terlupakan saat Anda menyaksikan fenomena alam yang langka ini. Bergabunglah dengan kami untuk momen yang menggetarkan hati ini!');

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `id_laptop` int(11) NOT NULL,
  `merk` char(25) NOT NULL,
  `model` char(25) NOT NULL,
  `ukuran_layar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama_mahasiswa` char(50) NOT NULL,
  `nim` char(50) NOT NULL,
  `password` text NOT NULL,
  `email` char(50) NOT NULL,
  `jenis_kelamin` char(50) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `metadesc` text NOT NULL,
  `fb` text NOT NULL,
  `ig` text NOT NULL,
  `id_event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `favicon`, `logo`, `foto`, `alamat`, `email`, `hp`, `metadesc`, `fb`, `ig`, `id_event`) VALUES
(1, 'AcadeTop', 'favicon.jpg', 'logo.jpg', 'foto.jpg', 'Jl Peternakan Dlm III 36, Dki Jakarta', 'acadetop@gmail.com', '0-21-541-3829', 'Selamat datang di AcadeTop- platform terdepan untuk mahasiswa yang mencari laptop yang sesuai dengan kebutuhan akademis dan gaya hidup digital mereka. Kami mengerti bahwa laptop bukan hanya alat, tapi merupakan kawan setia dalam perjalanan pendidikan Anda.\r\n\r\nEvent \"AcadeTop Expo\" adalah kesempatan eksklusif bagi mahasiswa untuk menjelajahi berbagai pilihan laptop, dari yang ringkas dan efisien hingga yang kuat dan inovatif. Acara ini merupakan kolaborasi dengan merek-merek terkemuka dalam industri, sehingga Anda bisa yakin mendapatkan penawaran terbaik.', 'http://www.facebook.com/acadetop/', 'http://www.instagram.com/acadetop/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spesifikasi_laptop`
--

CREATE TABLE `spesifikasi_laptop` (
  `id_laptop` int(11) NOT NULL,
  `id_spek` int(11) NOT NULL,
  `procesor` char(20) NOT NULL,
  `ram` int(11) NOT NULL,
  `penyimpanan` char(1) NOT NULL,
  `kartu_grafis` char(1) NOT NULL,
  `sistem_operasi` char(1) NOT NULL,
  `baterai` int(11) NOT NULL,
  `port` char(1) NOT NULL,
  `berat` int(11) NOT NULL,
  `dimensi` char(25) NOT NULL,
  `webcam` char(3) NOT NULL,
  `keyboard` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `level` varchar(25) NOT NULL,
  `login_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `password`, `hp`, `level`, `login_count`) VALUES
(1, 'Khen', 'khen@gmail.com', '$2y$10$GbildcAQnSpLsXP3eUfwdOE8K62QTg9C.I8cAVt2W39/jzji6EInm', '081234567890', 'administrator', 79),
(2, 'Eren', 'eren@gmail.com', '$2y$10$GbildcAQnSpLsXP3eUfwdOE8K62QTg9C.I8cAVt2W39/jzji6EInm', '081234567890', 'resepsionis', 30),
(3, 'Bill', 'bill@gmail.com', '$2y$10$GbildcAQnSpLsXP3eUfwdOE8K62QTg9C.I8cAVt2W39/jzji6EInm', '081234567890', 'tamu', 24),
(4, 'Alex', 'alex@gmail.com', '$2y$10$Q1S/KZThe5j4x6hinSYreOi3Z1skjoPAXgDtz.R7eZ/HDaAlL8Lae', '08123456789', 'accounting', 6),
(5, 'Alexia', 'alexia@gmail.com', '$2y$10$em34jM46K4dvWlDl.oyu.eAuE6KYh7phUVcvKP8XDDfHkeRafrGWG', '081234567890', 'tamu', 1),
(6, 'Johan', 'johan@gmail.com', '$2y$10$XUUuvBj1.fhjybRKmYTJC.LH8BSL88S5IrdEJ.FRt8bvFzvhuK0fW', '081234567890', 'tamu', 0),
(7, 'Vito', 'vito@gmail.com', '$2y$10$LLC2CynWV3ndMlVl9feaCeb3Cj9fVq3Kd3CCGj7qBr/kA1Jyc1EX2', '08123456789', 'tamu', 13);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`id_laptop`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spesifikasi_laptop`
--
ALTER TABLE `spesifikasi_laptop`
  ADD PRIMARY KEY (`id_laptop`,`id_spek`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `decoration`
--
ALTER TABLE `decoration`
  MODIFY `id_decor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `spesifikasi_laptop`
--
ALTER TABLE `spesifikasi_laptop`
  ADD CONSTRAINT `spesifikasi_laptop_ibfk_1` FOREIGN KEY (`id_laptop`) REFERENCES `laptop` (`id_laptop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
