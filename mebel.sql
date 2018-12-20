-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2018 at 02:17 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mebel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(13, 'candra', '45707e5d441692f625bcd2cba1cfcefe0fd6e25bc658107f76d5713f4b509b7827be0c657e160a81b3fb6238e605c0b07fe21b26ce06355a49518bf74b65da0epXnjugAU5jphnvvxIgPUTOmxR/S16/lrgfJs02iFh34='),
(14, 'Arif', '4a2d857b0bd767f1a263116ccc93105a11f8d290511a066a7b4b118cdef246e0028327742e8be8b92d41bcda507dbfd4f435c5a075db0bd82a906b71c68eb67f9/TeDCnAf3WQOZHOMrT8BG1aw+rKkSoTW9/rN7tqEGI=');

-- --------------------------------------------------------

--
-- Table structure for table `alamat`
--

CREATE TABLE `alamat` (
  `namaalamat` varchar(20) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kodepos` int(10) NOT NULL,
  `alamatlengkap` varchar(200) NOT NULL,
  `id_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `namabank` varchar(15) NOT NULL,
  `atasnama` varchar(50) NOT NULL,
  `nomorbank` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `namabank`, `atasnama`, `nomorbank`) VALUES
(12, 'Bank Century', 'Candra Nugraha', '321343212');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id_carousel` int(11) NOT NULL,
  `file_carousel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id_carousel`, `file_carousel`) VALUES
(1, '9ab112457d9d10234da948035597133b.png'),
(2, '74682da0fb03cd414339d44567e509d8.png'),
(3, 'ba57fbd1d62b3b20fe9c611949f935ba.png');

-- --------------------------------------------------------

--
-- Table structure for table `detil_keranjang`
--

CREATE TABLE `detil_keranjang` (
  `id_detilcart` int(11) NOT NULL,
  `id_keranjang` int(10) NOT NULL,
  `id_mebel` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detil_mebel`
--

CREATE TABLE `detil_mebel` (
  `id_detilmebel` int(11) NOT NULL,
  `id_mebel` int(11) NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `warna` varchar(10) NOT NULL,
  `popular` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detil_mebel`
--

INSERT INTO `detil_mebel` (`id_detilmebel`, `id_mebel`, `stok`, `harga`, `warna`, `popular`) VALUES
(1, 17, 18, 120000, 'merah', '2'),
(2, 17, 22, 90000, 'merah', '21');

-- --------------------------------------------------------

--
-- Table structure for table `ekspedisi`
--

CREATE TABLE `ekspedisi` (
  `id_ekspedisi` int(11) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `ongkos` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ekspedisi`
--

INSERT INTO `ekspedisi` (`id_ekspedisi`, `provinsi`, `kota`, `kecamatan`, `ongkos`) VALUES
(5, 'Jawa Timur', 'Jakarta', 'Bengawang', 38000),
(6, 'Sulawesi Selatan', 'Makassar', 'Rappocini', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `foto_mebel`
--

CREATE TABLE `foto_mebel` (
  `id_foto` int(11) NOT NULL,
  `id_detilmebel` int(11) NOT NULL,
  `foto` text NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foto_mebel`
--

INSERT INTO `foto_mebel` (`id_foto`, `id_detilmebel`, `foto`, `status`) VALUES
(69, 1, '2cfb6bf74af94dff3f95658ecd4622c7.jpg', 'tampil'),
(70, 1, '3f90bff4fc1e83d44d282d553795e82a.jpg', 'NULL'),
(71, 1, '635aca8ee755e0489a4c47d28694b1f7.jpg', 'NULL'),
(72, 2, '65729f3fca59c3fe20851b0bbd681629.jpg', 'tampil'),
(73, 2, '926faba89102ee41b7d48f19c47f7e45.jpg', 'NULL'),
(74, 2, '0cea0ca0d139ed83cca9262714ea2adc.jpg', 'NULL'),
(75, 3, '2e541e5c0a5cf6b3f54172d18280c489.jpg', 'tampil'),
(76, 3, '5ee5f0178341593b6109258795045529.jpg', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(10) NOT NULL,
  `id_pelanggan` int(10) NOT NULL,
  `id_detilmebel` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `taggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `masukan`
--

CREATE TABLE `masukan` (
  `id_masukan` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tgl_masukan` date NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pesan` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masukan`
--

INSERT INTO `masukan` (`id_masukan`, `id_pelanggan`, `tgl_masukan`, `judul`, `pesan`, `status`) VALUES
(11, 6, '2018-11-30', 'Ulum Bahrul', 'Tolong diperbaiki kenapa bisa gentong itu lonting. Dan saya akan terus mengawasi lontoing sampai badanannya kurus kering kembali seperti sedia kala. terima Kasih', 'Terima');

-- --------------------------------------------------------

--
-- Table structure for table `mebel`
--

CREATE TABLE `mebel` (
  `id_mebel` int(11) NOT NULL,
  `namamebel` varchar(30) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `panjang` int(10) NOT NULL,
  `lebar` int(10) NOT NULL,
  `tinggi` int(10) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mebel`
--

INSERT INTO `mebel` (`id_mebel`, `namamebel`, `kategori`, `panjang`, `lebar`, `tinggi`, `deskripsi`) VALUES
(17, 'Kursi Balobo', 'Kursi', 160, 120, 0, 'Kursi Balobo terbaru canggih luar biasa'),
(18, 'Meja Balobo', 'Meja', 121, 321, 0, 'Meja balobo');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `namaalamat` varchar(20) DEFAULT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `nohp` varchar(11) NOT NULL,
  `jeniskelamin` varchar(20) DEFAULT NULL,
  `foto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `namaalamat`, `nama`, `email`, `password`, `nohp`, `jeniskelamin`, `foto`) VALUES
(6, 'dsadasdas', 'Candra', 'candra@gmail.com', 'b8e5c6be934b7e82689fe79c0bba9b607a3f6f890e6152059318825d3735f1e2bd17f2b0f923b9c8c7328ebe2ecea3e4ad24ed54e01f2a147d54066a602013906m1dh9Fdcdb8GP2gCVrh94eSY5aLJhw+auu064Z7rno=', '82190787081', '6f7f0b37de680c129b2d', NULL),
(7, 'Jalan Rappocini Raya', 'Arif Novaldi', 'arifmova@gmail.com', '7a7dfb9176dc62204f8a8d364f33808a895a063cfd0f8f8598f44d696be9b9bc6996949b5d611f3239070ce98283142dba5c5fd057ecbc7c8afb28a3fcfcb01bOMSX53DFNkOovWgBohJkz0BTZk8wW0+BY8bVZwmNgOA=', '08219078708', 'Laki-Laki', '6f7f0b37de680c129b2d6c0e29d12e21.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_keranjang` int(10) NOT NULL,
  `id_ekspedisi` int(10) NOT NULL,
  `id_bank` int(11) NOT NULL,
  `namaalamat` varchar(20) NOT NULL,
  `total` int(10) NOT NULL,
  `status` varchar(30) NOT NULL,
  `bukti` text NOT NULL,
  `batas_waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`namaalamat`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id_carousel`);

--
-- Indexes for table `detil_keranjang`
--
ALTER TABLE `detil_keranjang`
  ADD PRIMARY KEY (`id_detilcart`),
  ADD KEY `id_keranjang` (`id_keranjang`),
  ADD KEY `id_mebel` (`id_mebel`);

--
-- Indexes for table `detil_mebel`
--
ALTER TABLE `detil_mebel`
  ADD PRIMARY KEY (`id_detilmebel`),
  ADD KEY `id_mebel` (`id_mebel`);

--
-- Indexes for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  ADD PRIMARY KEY (`id_ekspedisi`);

--
-- Indexes for table `foto_mebel`
--
ALTER TABLE `foto_mebel`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `id_detilmebel` (`id_detilmebel`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_detilmebel` (`id_detilmebel`) USING BTREE;

--
-- Indexes for table `masukan`
--
ALTER TABLE `masukan`
  ADD PRIMARY KEY (`id_masukan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`) USING BTREE;

--
-- Indexes for table `mebel`
--
ALTER TABLE `mebel`
  ADD PRIMARY KEY (`id_mebel`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_keranjang` (`id_keranjang`),
  ADD KEY `id_ekspedisi` (`id_ekspedisi`),
  ADD KEY `id_bank` (`id_bank`),
  ADD KEY `namaalamat` (`namaalamat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `alamat`
--
ALTER TABLE `alamat`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id_carousel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `detil_keranjang`
--
ALTER TABLE `detil_keranjang`
  MODIFY `id_detilcart` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  MODIFY `id_ekspedisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `foto_mebel`
--
ALTER TABLE `foto_mebel`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `masukan`
--
ALTER TABLE `masukan`
  MODIFY `id_masukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mebel`
--
ALTER TABLE `mebel`
  MODIFY `id_mebel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alamat`
--
ALTER TABLE `alamat`
  ADD CONSTRAINT `alamat_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detil_keranjang`
--
ALTER TABLE `detil_keranjang`
  ADD CONSTRAINT `detil_keranjang_ibfk_1` FOREIGN KEY (`id_keranjang`) REFERENCES `keranjang` (`id_keranjang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detil_keranjang_ibfk_2` FOREIGN KEY (`id_mebel`) REFERENCES `mebel` (`id_mebel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detil_mebel`
--
ALTER TABLE `detil_mebel`
  ADD CONSTRAINT `detil_mebel_ibfk_1` FOREIGN KEY (`id_mebel`) REFERENCES `mebel` (`id_mebel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`id_detilmebel`) REFERENCES `detil_mebel` (`id_detilmebel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `masukan`
--
ALTER TABLE `masukan`
  ADD CONSTRAINT `masukan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_keranjang`) REFERENCES `keranjang` (`id_keranjang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_ekspedisi`) REFERENCES `ekspedisi` (`id_ekspedisi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_bank`) REFERENCES `bank` (`id_bank`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`namaalamat`) REFERENCES `alamat` (`namaalamat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
