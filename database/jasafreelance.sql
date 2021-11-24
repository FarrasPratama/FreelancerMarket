-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 04:01 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jasafreelance`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `nama_kategori`) VALUES
(7, 'Religi'),
(8, 'Pantai'),
(9, 'Sejarah'),
(10, 'Fun Park'),
(11, 'Fauna');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `kategori_id` varchar(45) DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `harga` varchar(45) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `created_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`produk_id`, `kategori_id`, `nama_produk`, `harga`, `deskripsi`, `gambar`, `created_on`) VALUES
(16, '8', 'Ancol', '50000', 'Ancol Taman Impian tempat rekreasi terbesar di Indonesia. Beli tiket dufan, sea world, atlantis, samudra dan lainnya di ancol.com', '9613fbdffec702f302c7e11564c41af0.jpg', '2021-11-15 23:00:49'),
(17, '10', 'Dufan', '25000', 'Dufan berada di kawasan Taman Impian Jaya Ancol, tepatnya di Jalan Lodan Timur No.7, Ancol, Jakarta Utara. Lokasinya pun cukup strategis sehingga mudah ...', '4d99eb48f5756d2c9443caca88b7fe50.jpg', '2021-11-15 23:01:55'),
(18, '10', 'Taman Mini Indonesia Indah', '30000', 'Taman Mini Indonesia Indah merupakan suatu kawasan taman wisata bertema budaya Indonesia di Jakarta Timur. Area seluas kurang lebih 150 hektare atau 1,5 kilometer persegi ini terletak pada koordinat 6°18?6.8?LS,106°53?47.2?BT', 'caa906bcb3818d8aed645757fd125a7d.jpg', '2021-11-15 23:03:46'),
(19, '7', 'Masjid Istiqlal', '0', 'Masjid Istiqlal, Keagungan yang Mempesona di Ibukota ... Masjid terbesar di Indonesia dan Asia Tenggara. Dibangun untuk tempat ibadah dan pengingat perjuangan', '05f1c4776d061e227bfda6187a22a61a.jpg', '2021-11-17 22:33:15'),
(20, '9', 'Tugu Monas', '15000', 'Monumen Nasional atau yang populer disingkat dengan Monas atau Tugu Monas adalah monumen peringatan setinggi 132 meter (433 kaki) yang didirikan untuk mengenang ...', 'a202a1f5237c8e55e9ceb4d285192caf.jpg', '2021-11-17 22:36:06'),
(21, '11', 'Kebun Binatang Ragunan', '4000', 'Kebun Binatang Ragunan adalah sebuah kebun binatang yang terletak di daerah Ragunan, Pasar Minggu, Jakarta Selatan, Indonesia. Kebun binatang seluas 140 hektare ini didirikan pada tahun 1864. Di dalamnya terdapat berbagai koleksi yang terdiri dari 295 spesies dan 4040 spesimen.', 'b1fa50c83544cad23b79ee72f3ede259.jpg', '2021-11-17 22:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `nama_lengkap` varchar(60) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `level` enum('0','1') DEFAULT '1', --level 1 = User; level 2 = Admin
  `blokir` varchar(1) DEFAULT '0',
  `alamat` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `password`, `nama_lengkap`, `email`, `notelp`, `level`, `blokir`, `alamat`) VALUES
(7, 'user', 'User', 'user@gmail.com', '08917934054', '1', '0', 'Jl. Nungcik Rt. 45 Palembang'),
(8, 'admin', 'Admin', 'admin@gmail.com', '08988387271', '0', '0', 'jl nungcikc'),
(11, 'argyges', 'argy', 'argyganteng@gmail.com', '0812345678', '1', '0', 'madiun');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
vistay