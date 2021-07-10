-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2021 at 08:44 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket_kapal`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pemesanan`
--

CREATE TABLE `detail_pemesanan` (
  `id_detail_pemesanan` int(11) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nomor_hp` int(11) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pemesanan`
--

INSERT INTO `detail_pemesanan` (`id_detail_pemesanan`, `id_pemesanan`, `nama`, `nomor_hp`, `jenis_kelamin`) VALUES
(1, 16, 'Muhammad Akbar', 2147483647, 'Laki'),
(2, 17, 'Muhammad Akbar', 2147483647, 'Laki'),
(3, 18, 'Muhammad Akbar', 2147483647, 'Laki');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'Penumpang', 'Penumpang Kapal'),
(32, 'Kasir', 'Ticketing'),
(33, 'Pemilik', 'Pemilik Perusahaan');

-- --------------------------------------------------------

--
-- Table structure for table `groups_menu`
--

CREATE TABLE `groups_menu` (
  `id_groups` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups_menu`
--

INSERT INTO `groups_menu` (`id_groups`, `id_menu`) VALUES
(1, 40),
(1, 8),
(1, 89),
(1, 91),
(4, 91),
(1, 93),
(1, 94),
(1, 43),
(1, 42),
(1, 1),
(2, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(1, 3),
(2, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(1, 127),
(2, 127),
(1, 114),
(32, 122),
(1, 44),
(1, 92),
(32, 92),
(33, 92),
(1, 123),
(2, 123),
(32, 123),
(33, 123),
(1, 124),
(2, 124),
(32, 124),
(33, 124),
(2, 126),
(2, 121),
(32, 121),
(2, 119),
(32, 119),
(2, 120),
(32, 120);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `asal` varchar(50) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `tanggal_keberangkatan` datetime NOT NULL,
  `tanggal_sampai` datetime NOT NULL,
  `harga_tiket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `asal`, `tujuan`, `tanggal_keberangkatan`, `tanggal_sampai`, `harga_tiket`) VALUES
(6, 'Bandung', 'Jakarta', '2021-07-03 17:15:58', '2021-07-21 17:15:58', 20000),
(7, 'Medan', 'Aceh', '2021-07-04 17:20:24', '2021-07-06 17:20:24', 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(19, '::1', 'admin@muhakbar.com', 1625885371),
(20, '::1', 'admin@muhakbar.com', 1625899257);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 99,
  `level` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(125) NOT NULL,
  `label` varchar(25) NOT NULL,
  `link` varchar(125) NOT NULL,
  `id` varchar(25) NOT NULL DEFAULT '#',
  `id_menu_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `sort`, `level`, `parent_id`, `icon`, `label`, `link`, `id`, `id_menu_type`) VALUES
(1, 0, 1, 0, 'empty', 'MAIN NAVIGATION', '#', '#', 1),
(3, 1, 2, 1, 'fas fa-tachometer-alt', 'Dashboard', 'dashboard', '#', 1),
(4, 17, 2, 40, 'fas fa-table', 'CRUD Generator', 'crudbuilder', '1', 1),
(8, 15, 2, 40, 'fas fa-bars', 'Menu', 'cms/menu/side-menu', 'navMenu', 1),
(40, 13, 1, 0, 'empty', 'DEV', '#', '#', 1),
(42, 10, 2, 92, 'fas fa-users-cog', 'User', '#', '1', 1),
(43, 11, 3, 42, 'fas fa-angle-double-right', 'Users', 'users', '1', 1),
(44, 12, 3, 42, 'fas fa-angle-double-right', 'Hak Akses', 'groups', '2', 1),
(89, 16, 2, 40, 'fas fa-th-list', 'Menu Type', 'menu_type', 'menu_type', 1),
(92, 8, 1, 0, 'empty', 'MASTER DATA', '#', 'masterdata', 1),
(107, 14, 2, 40, 'fas fa-cog', 'Setting', 'setting', 'setting', 1),
(114, 9, 2, 92, 'far fa-calendar-alt', 'Jadwal Keberangkatan', 'jadwal', '1', 1),
(119, 2, 2, 1, 'fas fa-ship', 'Pemesanan', '#', '1', 1),
(120, 4, 3, 119, 'fas fa-ticket-alt', 'Pesan Tiket', 'pemesanan/penumpang_pesan', '#', 1),
(121, 5, 3, 119, 'fas fa-history', 'History Pemesanan', 'pemesanan', '1', 1),
(122, 6, 2, 1, 'far fa-file', 'Laporan', '#', '1', 1),
(123, 18, 1, 0, 'fab fa-amazon-pay', 'Auth', '#', '#', 1),
(124, 19, 2, 123, 'fab fa-dyalog', 'Logout', 'auth/logout', '#', 1),
(126, 7, 2, 1, 'fas fa-user', 'Data Saya', 'penumpang/data_saya', '#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE `menu_type` (
  `id_menu_type` int(11) NOT NULL,
  `type` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id_menu_type`, `type`) VALUES
(1, 'Side menu');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `metode` varchar(50) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `status_bayar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pemesanan`, `metode`, `tanggal_bayar`, `status_bayar`) VALUES
(1, 9, 'CASH', '2021-07-04', 'dibayar'),
(2, 17, 'GOPAY', '2021-07-04', 'dibayar'),
(3, 18, 'BRI', '2021-07-04', 'dibayar');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `status_pemesanan` varchar(50) NOT NULL,
  `tanggal_pemesanan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_user`, `id_jadwal`, `status_pemesanan`, `tanggal_pemesanan`) VALUES
(1, 21, 6, 'Dipesan', '0000-00-00'),
(2, 21, 6, 'Dipesan', '2021-07-03'),
(3, 21, 7, 'Dipesan', '2021-07-03'),
(4, 21, 6, 'Dipesan', '2021-07-03'),
(5, 21, 7, 'Dipesan', '2021-07-03'),
(6, 22, 6, 'Dipesan', '2021-07-04'),
(7, 22, 6, 'Dipesan', '2021-07-04'),
(8, 22, 7, 'Dipesan', '2021-07-04'),
(9, 22, 7, 'Dipesan', '2021-07-04'),
(10, 22, 6, 'Dipesan', '2021-07-04'),
(11, 22, 6, 'Dipesan', '2021-07-04'),
(12, 22, 6, 'Dipesan', '2021-07-04'),
(13, 22, 6, 'Dipesan', '2021-07-04'),
(14, 22, 6, 'Dipesan', '2021-07-04'),
(15, 22, 6, 'Dipesan', '2021-07-04'),
(16, 22, 6, 'Dipesan', '2021-07-04'),
(17, 22, 6, 'Dipesan', '2021-07-04'),
(18, 22, 6, 'Dipesan', '2021-07-04');

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE `penumpang` (
  `id_penumpang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jens_kelamin` varchar(50) NOT NULL,
  `nomor_hp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penumpang`
--

INSERT INTO `penumpang` (`id_penumpang`, `id_user`, `alamat`, `jens_kelamin`, `nomor_hp`) VALUES
(1, 13, 'Jalan Sarijadi Blok 02 No 118 Rt 06/02', 'Laki Laki', 2147483647),
(2, 19, 'Jalan Sarijadi Blok 02 No 118 Rt 06/02', 'Laki Laki', 2147483647),
(3, 20, 'Jalan Sarijadi Blok 02 No 118 Rt 06/02', 'Laki Laki', 2147483647),
(4, 21, 'kjaisbdnjkasd', 'laki', 908908908),
(5, 22, 'Jalan Sarijadi Blok 02 No 118 Rt 06/02', 'Laki Laki', 2147483647),
(6, 29, 'Jalan Sarijadi Blok 02 No 118 Rt 06/02', 'Laki Laki', 2147483647),
(7, 31, 'Jalan Sarijadi Blok 02 No 118 Rt 06/02', 's', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nilai` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `kode`, `nama`, `nilai`) VALUES
(1, 'logo_tiket_kapal.jpg', 'Tiket Kapal', 'Danau Toba');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `image` varchar(128) NOT NULL DEFAULT '''default.jpg''',
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `image`, `active`, `phone`) VALUES
(13, '', 'penumpang01@gmail.com', '$2y$08$GFbtgOEJDsBjS3BXQq2cg.npg9mumOeqKEMWVAfKfdjH5L9lXmWiS', 'Penumpang', '01', 'default.jpg', 1, 0),
(16, '', 'pemilik01@gmail.com', '$2y$08$hoTaK2Gtln6lQk8MDpjfOOFBotvB3bMc2prWhxchP/2dduEnlLyfS', 'Pemilik', '01', 'default.jpg', 1, 0),
(17, '', 'akbar@gmail.com', '$2y$08$WBgrlksYrsR80WjJOfabQO6onykL1uJU0OLR.fl5yGtE0W4NkTifG', 'Muhammad', 'Akbar', 'default.jpg', 1, 0),
(22, '', 'penumpang03@gmail.com', '$2y$08$MCV7uZEVRGizY5kQBooaM.By3I8/2g.72/EGj5.iiJZxv5adWOOzW', 'Penumpang', '03', 'default.jpg', 1, 0),
(37, 'kasir01@gmail.com', 'kasir01@gmail.com', '$2y$08$sOa8RXQxqY0m9.B5/0kzRuVFvmbClWDko6W6l66D7KlbHobYDbmba', 'Kasir', '01', '\'default.jpg\'', 1, 2147483647),
(38, 'kasir011@gmail.com', 'kasir011@gmail.com', '$2y$08$XMe2V9/8dhy8RfeNThxIOOmU6NNS3zg8DsLaFmU8C8ZmET6Gs.ZTW', 'Kasir', '01', '\'default.jpg\'', 1, 2147483647),
(39, 'kasir0112@gmail.com', 'kasir0112@gmail.com', '$2y$08$5dISZVJnvKbcvz2hsbvT..FtqosUAVX4ixhVy1bzpCuTHy7mtfXqW', 'Kasir', '01', '\'default.jpg\'', 1, 2147483647),
(40, 'kasir011s2@gmail.com', 'kasir011s2@gmail.com', '$2y$08$U5nYZxxGcDtH1FYva/PiW.UMZ7yYugGwXxGozWdeYUfDgjUshozm6', 'Kasir', '01', '\'default.jpg\'', 1, 2147483647),
(41, 'muhakba@gmail.com', 'muhakba@gmail.com', '$2y$08$13CySjFLnqMX5G03me4BCuTR/.sjrIBgq8JR51e3jhbF.nqTcsSqa', 'akbari', 'akbar', '\'default.jpg\'', 1, 9090909),
(42, 'sopan@gmail.com', 'sopan@gmail.com', '$2y$08$HamGFJ7rbPuayNac.7l6eOoo.muoyOJfNWVUvRIANE6cKTswqSmwS', 'kjadnkja', 'kasndkjans', '\'default.jpg\'', 1, 9888),
(43, 'admin01@gmail.com', 'admin01@gmail.com', '$2y$08$urcNDf0z01yg4SkwgBbdJuYelRDbs8qcNHYDMSXgw/I6MT5YmH0VO', 'admin', '01', '\'default.jpg\'', 1, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(91, 13, 2),
(64, 13, 18),
(97, 16, 33),
(98, 17, 1),
(140, 41, 2),
(139, 42, 2),
(141, 43, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD PRIMARY KEY (`id_detail_pemesanan`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id_menu_type`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`id_penumpang`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  MODIFY `id_detail_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id_menu_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `penumpang`
--
ALTER TABLE `penumpang`
  MODIFY `id_penumpang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
