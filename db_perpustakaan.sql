-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2025 at 08:05 AM
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `editbuku` (IN `bukuid1` INT(11), IN `judul1` VARCHAR(225), IN `kategoriid1` INT(11), IN `penulis1` VARCHAR(225), IN `penerbit1` VARCHAR(225), IN `tahunterbit1` INT(11), IN `stok1` INT(20), IN `gambar1` VARCHAR(225))   BEGIN
DECLARE bukuid2 integer;
DECLARE judul2 varchar(225);
DECLARE kategoriid2 integer;
DECLARE penulis2 varchar(225);
DECLARE penerbit2 varchar(225);
DECLARE tahunterbit2 integer;
DECLARE stok2 integer;
DECLARE gambar2 varchar(225);
SET bukuid2=bukuid1;
SET judul2=judul1;
SET kategoriid2=kategoriid1;
SET penulis2=penulis1;
SET penerbit2=penerbit1;
SET tahunterbit2=tahunterbit1;
SET stok2=stok1;
SET gambar2=gambar1;
UPDATE buku SET judul=judul2, kategoriid=kategoriid2, penulis=penulis2, penerbit=penerbit2, tahunterbit=tahunterbit2, stok=stok2, gambar=gambar2 WHERE bukuid=bukuid2;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `editbuku1` (IN `bukuid1` INT(11), IN `judul1` VARCHAR(225), IN `kategoriid1` INT(11), IN `penulis1` VARCHAR(225), IN `penerbit1` VARCHAR(225), IN `tahunterbit1` INT(11), IN `stok1` INT(20))   BEGIN
DECLARE bukuid2 integer;
DECLARE judul2 varchar(225);
DECLARE kategoriid2 integer;
DECLARE penulis2 varchar(225);
DECLARE penerbit2 varchar(225);
DECLARE tahunterbit2 integer;
DECLARE stok2 integer;
SET bukuid2=bukuid1;
SET judul2=judul1;
SET kategoriid2=kategoriid1;
SET penulis2=penulis1;
SET penerbit2=penerbit1;
SET tahunterbit2=tahunterbit1;
SET stok2=stok1;
UPDATE buku SET judul=judul2, kategoriid=kategoriid2, penulis=penulis2, penerbit=penerbit2, tahunterbit=tahunterbit2, stok=stok2 WHERE bukuid=bukuid2;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `edituser` (IN `userid1` INT(11), IN `username1` VARCHAR(225), IN `password1` VARCHAR(225), IN `email1` VARCHAR(225), IN `namalengkap1` VARCHAR(225), IN `alamat1` VARCHAR(225), IN `level1` VARCHAR(20))   BEGIN
DECLARE userid2 integer;
DECLARE username2 varchar(225);
DECLARE password2 varchar(225);
DECLARE email2 varchar(225);
DECLARE namalengkap2 varchar(225);
DECLARE alamat2 varchar(225);
DECLARE level2 varchar(20);
SET userid2=userid1;
SET username2=username1;
SET password2=password1;
SET email2=email1;
SET namalengkap2=namalengkap1;
SET alamat2=alamat1;
SET level2=level1;
UPDATE user SET username=username2, password=password2, email=email2, namalengkap=namalengkap2, alamat=alamat2, level=level2 WHERE userid=userid2;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `edituser1` (IN `userid1` INT(11), IN `username1` VARCHAR(225), IN `email1` VARCHAR(225), IN `namalengkap1` VARCHAR(225), IN `alamat1` VARCHAR(225), IN `level1` VARCHAR(20))   BEGIN
DECLARE userid2 integer;
DECLARE username2 varchar(225);
DECLARE email2 varchar(225);
DECLARE namalengkap2 varchar(225);
DECLARE alamat2 varchar(225);
DECLARE level2 varchar(20);
SET userid2=userid1;
SET username2=username1;
SET email2=email1;
SET namalengkap2=namalengkap1;
SET alamat2=alamat1;
SET level2=level1;
UPDATE user SET username=username2, email=email2, namalengkap=namalengkap2, alamat=alamat2, level=level2 WHERE userid=userid2;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hapusbuku` (IN `bukuid1` INT(11))   BEGIN
DECLARE bukuid2 integer;
SET bukuid2 = bukuid1;
DELETE FROM buku WHERE bukuid=bukuid2;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hapusfavorite` (IN `koleksiid1` INT(11))   BEGIN
DECLARE koleksiid2 int;
SET koleksiid2 = koleksiid1;
DELETE FROM koleksipribadi WHERE koleksiid=koleksiid2;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hapuspinjam` (IN `peminjamanid1` INT(11))   BEGIN
DECLARE peminjamanid2 int;
SET peminjamanid2=peminjamanid1;
DELETE FROM peminjaman WHERE peminjamanid=peminjamanid2;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hapusulasan` (IN `ulasanid1` INT(11))   BEGIN
DECLARE ulasanid2 int;
SET ulasanid2=ulasanid1;
DELETE FROM ulasanbuku WHERE ulasanid=ulasanid2;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pengembalianbuku` (IN `peminjamanid1` INT(11), IN `userid1` INT(11), IN `bukuid1` INT(11), IN `tglpeminjaman1` DATE, IN `tglpengembalian1` DATE, IN `jumlah1` INT(20), IN `statuspeminjaman1` VARCHAR(50))   BEGIN
DECLARE peminjamanid2 integer;
DECLARE userid2 integer;
DECLARE bukuid2 integer;
DECLARE tglpeminjaman2 date;
DECLARE tglpengembalian2 date;
DECLARE jumlah2 integer;
DECLARE statuspeminjaman2 varchar(50);
SET peminjamanid2=peminjamanid1;
SET userid2=userid1;
SET bukuid2=bukuid1;
SET tglpeminjaman2=tglpeminjaman1;
SET tglpengembalian2=tglpengembalian1;
SET jumlah2=jumlah1;
SET statuspeminjaman2=statuspeminjaman1;
UPDATE peminjaman SET userid=userid2, bukuid=bukuid2, tglpeminjaman=tglpeminjaman2, tglpengembalian=tglpengembalian2, jumlah=jumlah2,  statuspeminjaman=statuspeminjaman2 WHERE peminjamanid=peminjamanid2;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pinjambuku` (IN `peminjamanid` INT(11), IN `kodepinjam` VARCHAR(10), IN `userid` INT(11), IN `bukuid` INT(11), IN `tglpeminjaman` DATE, IN `tglpengembalian` DATE, IN `jumlah` INT(20), IN `statuspeminjaman` VARCHAR(50))   BEGIN
INSERT INTO peminjaman VALUES (peminjamanid,kodepinjam,userid,bukuid,tglpeminjaman,tglpengembalian,jumlah,statuspeminjaman);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tambahbuku` (IN `bukuid` INT(11), IN `judul` VARCHAR(225), IN `kategoriid` INT(11), IN `penulis` VARCHAR(225), IN `penerbit` VARCHAR(225), IN `tahunterbit` INT(11), IN `stok` INT(20), IN `gambar` VARCHAR(225))   BEGIN
INSERT INTO buku VALUES (bukuid,judul,kategoriid,penulis,penerbit,tahunterbit,stok,gambar);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tambahfavorite` (IN `koleksiid` INT(11), IN `userid` INT(11), IN `bukuid` INT(11))   BEGIN
INSERT INTO koleksipribadi VALUES (koleksiid,userid,bukuid);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tambahuser` (IN `userid` INT(11), IN `username` VARCHAR(225), IN `password` VARCHAR(225), IN `email` VARCHAR(225), IN `namalengkap` VARCHAR(225), IN `alamat` VARCHAR(225), IN `level` VARCHAR(20))   BEGIN
INSERT INTO user VALUES (userid,username,password,email,namalengkap,alamat,level);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ubahulasan` (IN `ulasanid1` INT(11), IN `userid1` INT(11), IN `bukuid1` INT(11), IN `ulasan1` VARCHAR(225), IN `rating1` INT(11))   BEGIN
DECLARE ulasanid2 int;
DECLARE userid2 int;
DECLARE bukuid2 int;
DECLARE ulasan2 varchar(225);
DECLARE rating2 int;
SET ulasanid2=ulasanid1;
SET userid2=userid1;
SET bukuid2=bukuid1;
SET ulasan2=ulasan1;
SET rating2=rating1;
UPDATE ulasanbuku SET userid=userid2, bukuid=bukuid2, ulasan=ulasan2, rating=rating2 WHERE ulasanid=ulasanid2;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ulasan` (IN `ulasanid` INT(11), IN `userid` INT(11), IN `bukuid` INT(11), IN `ulasan` VARCHAR(225), IN `rating` INT(11))   BEGIN
INSERT INTO ulasanbuku VALUES (ulasanid,userid,bukuid,ulasan,rating);
END$$

DELIMITER ;

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
(88, 'Horor Tanah Jawa', 3, 'Riskaninda', 'Araska', 2024, 14, '../assets/img/tanah jawa.jpg', NULL, NULL, 0),
(92, 'Episode Hujan', 6, 'Lucia Priandarini', 'Gramedia', 2022, 5, '../assets/img/Cover_Episode_Hujan_New_Edition__acc_page-0001.jpg', NULL, NULL, 0),
(93, 'Si Juki ', 3, 'Pionicon', 'Bukune', 2022, 10, '../assets/img/si juki.jpg', NULL, NULL, 0),
(94, 'KOLONI Gundala', 3, 'Bumilangit Comics', 'm&c!', 2022, 30, '../assets/img/gundala.jpg', NULL, NULL, 0),
(102, 'Creepy Cause Club', 5, 'Rizal Iwan', 'Publisher DKI', 0, 16, '../assets/img/1738565179_44fqsqrp6twwtgbikjq9ya.jpg', NULL, NULL, 2018);

-- --------------------------------------------------------

--
-- Table structure for table `kategoribuku`
--

CREATE TABLE `kategoribuku` (
  `kategoriid` int(11) NOT NULL,
  `namakategori` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategoribuku`
--

INSERT INTO `kategoribuku` (`kategoriid`, `namakategori`) VALUES
(3, 'Fiksi'),
(4, 'Non Fiksi'),
(5, 'Komik'),
(6, 'Novel'),
(7, 'Cergram'),
(8, 'Ensiklopedia'),
(9, 'Nomik'),
(10, 'Antologi'),
(11, 'Dongeng'),
(12, 'Biografi'),
(13, 'Pendidikan');

-- --------------------------------------------------------

--
-- Table structure for table `koleksipribadi`
--

CREATE TABLE `koleksipribadi` (
  `koleksiid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bukuid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `koleksipribadi`
--

INSERT INTO `koleksipribadi` (`koleksiid`, `userid`, `bukuid`) VALUES
(0, 36, 88);

-- --------------------------------------------------------

--
-- Table structure for table `pdf_files`
--

CREATE TABLE `pdf_files` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `peminjamanid` int(11) NOT NULL,
  `kodepinjam` varchar(10) NOT NULL,
  `userid` int(11) NOT NULL,
  `bukuid` int(11) NOT NULL,
  `tglpeminjaman` date NOT NULL,
  `tglpengembalian` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `statuspeminjaman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`peminjamanid`, `kodepinjam`, `userid`, `bukuid`, `tglpeminjaman`, `tglpengembalian`, `jumlah`, `statuspeminjaman`) VALUES
(8, '', 36, 76, '2025-02-03', '0000-00-00', 1, 'konfirmasi'),
(9, '', 36, 88, '2025-02-03', '0000-00-00', 1, 'konfirmasi');

--
-- Triggers `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `kembali` AFTER UPDATE ON `peminjaman` FOR EACH ROW BEGIN
    IF NEW.statuspeminjaman = 'dikembalikan' AND OLD.statuspeminjaman != NEW.statuspeminjaman THEN
        UPDATE buku SET stok = stok + NEW.jumlah WHERE bukuid = NEW.bukuid;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ulasanbuku`
--

CREATE TABLE `ulasanbuku` (
  `ulasanid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bukuid` int(11) NOT NULL,
  `ulasan` varchar(225) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ulasanbuku`
--

INSERT INTO `ulasanbuku` (`ulasanid`, `userid`, `bukuid`, `ulasan`, `rating`) VALUES
(0, 36, 88, 'Rada sien, madep lah', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `namalengkap` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`, `level`) VALUES
(33, 'Vikry', '202cb962ac59075b964b07152d234b70', 'vikryaditya@gmail.com', 'Admin Perpus', 'Situbatu', 'admin'),
(35, 'petugas', '202cb962ac59075b964b07152d234b70', 'Petugas@gmail.com', 'Petugas Perpus', 'Situbatu', 'petugas'),
(36, 'User', '202cb962ac59075b964b07152d234b70', 'user1@gmail.com', 'User', 'Situbatu', 'user');

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
-- Indexes for table `kategoribuku`
--
ALTER TABLE `kategoribuku`
  ADD PRIMARY KEY (`kategoriid`);

--
-- Indexes for table `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  ADD PRIMARY KEY (`koleksiid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `koleksipribadi_ibfk_2` (`bukuid`);

--
-- Indexes for table `pdf_files`
--
ALTER TABLE `pdf_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`peminjamanid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `bukuid` (`bukuid`);

--
-- Indexes for table `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  ADD PRIMARY KEY (`ulasanid`),
  ADD KEY `ulasanbuku_ibfk_1` (`userid`),
  ADD KEY `ulasanbuku_ibfk_2` (`bukuid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `bukuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `kategoribuku`
--
ALTER TABLE `kategoribuku`
  MODIFY `kategoriid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  MODIFY `koleksiid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pdf_files`
--
ALTER TABLE `pdf_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `peminjamanid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  MODIFY `ulasanid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategoriid`) REFERENCES `kategoribuku` (`kategoriid`);

--
-- Constraints for table `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  ADD CONSTRAINT `koleksipribadi_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE,
  ADD CONSTRAINT `koleksipribadi_ibfk_2` FOREIGN KEY (`bukuid`) REFERENCES `buku` (`bukuid`) ON DELETE CASCADE;

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `bukuid` FOREIGN KEY (`bukuid`) REFERENCES `buku` (`bukuid`) ON DELETE CASCADE,
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
