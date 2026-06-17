-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2026 at 03:07 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simulasi_pbo_ti1c_giatjohannasrulloh`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(100) DEFAULT NULL,
  `lokasi_kampus` varchar(100) DEFAULT NULL,
  `jenis_prestasi` varchar(100) DEFAULT NULL,
  `tingkat_prestasi` varchar(50) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(100) DEFAULT NULL,
  `instansi_sponsor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Budi Santoso', 'SMAN 1 Jakarta', '85.50', '250000.00', 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(2, 'Siti Aminah', 'SMAN 3 Bandung', '78.00', '250000.00', 'Reguler', 'Sistem Informasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(3, 'Rian Hidayat', 'MAN 2 Yogyakarta', '82.25', '250000.00', 'Reguler', 'Manajemen', 'Kampus B', NULL, NULL, NULL, NULL),
(4, 'Dewi Lestari', 'SMKN 1 Surabaya', '89.00', '250000.00', 'Reguler', 'Akuntansi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(5, 'Eko Prasetyo', 'SMAN 5 Semarang', '75.50', '250000.00', 'Reguler', 'Teknik Sipil', 'Kampus B', NULL, NULL, NULL, NULL),
(6, 'Rina Permata', 'SMAN 1 Medan', '80.00', '250000.00', 'Reguler', 'Ilmu Komunikasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(7, 'Fajar Nugroho', 'SMAN 8 Jakarta', '91.00', '250000.00', 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(8, 'Ahmad Dani', 'SMAN 2 Surabaya', '88.00', '150000.00', 'Prestasi', NULL, NULL, 'Olimpiade Matematika', 'Nasional', NULL, NULL),
(9, 'Sari Wijaya', 'SMAN 1 Pesta', '83.50', '150000.00', 'Prestasi', NULL, NULL, 'Futsal', 'Provinsi', NULL, NULL),
(10, 'Andika Putra', 'SMAN 4 Denpasar', '80.00', '150000.00', 'Prestasi', NULL, NULL, 'Karya Ilmiah Remaja', 'Nasional', NULL, NULL),
(11, 'Citra Kirana', 'SMAN 7 Makassar', '86.75', '150000.00', 'Prestasi', NULL, NULL, 'Pebulutangkis', 'Nasional', NULL, NULL),
(12, 'Gilang Dirga', 'SMAN 1 Palembang', '79.50', '150000.00', 'Prestasi', NULL, NULL, 'Paduan Suara', 'Provinsi', NULL, NULL),
(13, 'Hendra Setiawan', 'SMAN 3 Solo', '92.00', '150000.00', 'Prestasi', NULL, NULL, 'Robotik', 'Internasional', NULL, NULL),
(14, 'Indah Permata', 'SMAN 2 Malang', '84.00', '150000.00', 'Prestasi', NULL, NULL, 'Sains Biologi', 'Kabupaten', NULL, NULL),
(15, 'Rizky Ramadhan', 'SMAN 14 Jakarta', '87.00', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-990/KEDINASAN/2026', 'Kementerian Perhubungan'),
(16, 'Putri Ayu', 'SMAN 1 Yogyakarta', '90.50', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-112/DINAS-INFO/2026', 'Diskominfo'),
(17, 'Kevin Sanjaya', 'SMAN 11 Bandung', '81.00', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-404/BUMN-SND/2026', 'PT. Telkom Indonesia'),
(18, 'Mega Utami', 'SMAN 6 Tangerang', '85.00', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-887/KEDINASAN/2026', 'Kementerian Keuangan'),
(19, 'Naufal Abdi', 'SMAN 2 Bogor', '83.20', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-302/PEMPROV/2026', 'Pemprov Jawa Barat'),
(20, 'Olivia Zalianty', 'SMAN 10 Semarang', '88.90', '300000.00', 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-754/KEDINASAN/2026', 'Kementerian BUMN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
