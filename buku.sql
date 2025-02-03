-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2025 at 06:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `bukuid` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `kategoriid` int(11) NOT NULL,
  `penulis` varchar(225) NOT NULL,
  `penerbit` varchar(225) NOT NULL,
  `tahunterbit` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `pdf_file` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `tahun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`bukuid`, `judul`, `kategoriid`, `penulis`, `penerbit`, `tahunterbit`, `stok`, `gambar`, `pdf_file`, `file_path`, `tahun`) VALUES
(74, 'Micro Teaching', 13, 'Imas Masruroh', 'Bumi Aksara', 2023, 18, '../assets/img/feltwkduzcegsqzbxzyddj.jpg', NULL, NULL, 0),
(76, 'Soekarno', 3, 'Cindy Adams', 'Media Pressindo ', 1966, 10, '../assets/img/soekarno.jpg', 'https://luk.tsipil.ugm.ac.id/CindyAdams-BungKarnoPenyambungLidahRakyatIndonesia.pdf', '', 0),
(88, 'Horor Tanah Jawa', 3, 'Riskaninda', 'Araska', 2024, 15, '../assets/img/tanah jawa.jpg', NULL, NULL, 0),
(92, 'Episode Hujan', 6, 'Lucia Priandarini', 'Gramedia', 2022, 5, '../assets/img/Cover_Episode_Hujan_New_Edition__acc_page-0001.jpg', NULL, NULL, 0),
(93, 'Si Juki ', 3, 'Pionicon', 'Bukune', 2022, 10, '../assets/img/si juki.jpg', NULL, NULL, 0),
(94, 'KOLONI Gundala', 3, 'Bumilangit Comics', 'm&c!', 2022, 30, '../assets/img/gundala.jpg', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`bukuid`),
  ADD KEY `kategoriid` (`kategoriid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `bukuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategoriid`) REFERENCES `kategoribuku` (`kategoriid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
