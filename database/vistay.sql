-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table vistay.kategori: ~5 rows (approximately)
DELETE FROM `kategori`;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`kategori_id`, `nama_kategori`) VALUES
	(7, 'Edukasi'),
	(8, 'Pantai'),
	(9, 'Sejarah'),
	(10, 'Fun Park'),
	(11, 'Fauna');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- Dumping data for table vistay.produk: ~6 rows (approximately)
DELETE FROM `produk`;
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` (`produk_id`, `kategori_id`, `nama_produk`, `harga`, `deskripsi`, `gambar`, `created_on`) VALUES
	(22, '10', 'J-SKY FERRISWHEEL, AEON MALL', '50000', 'Naiki J-Sky Ferris Wheel, kincir ria tertinggi di Indonesia dengan ketinggian 69 meter. Terletak di lantai 3 AEON Mall Jakarta Garden City, ikon terbaru Jakarta ini menawarkan pemandangan kota yang indah baik di siang maupun malam dan dilengkapi dengan teknologi tahan gempa dan petir untuk keamanan pengunjung. Lewatkan momen tak terlupakan bersama teman, keluarga, atau pasangan dalam private cabin dengan paket VVIP atau Couple, dan jangan lewatkan kesempatan untuk ber-selfie dengan latar belakang pemandangan kota yang indah\r\n\r\nJ-SKY FERRISWHEEL, AEON MALL Jakarta Garden City, RT.8/RW.6, Cakung Tim., Cakung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13470, Indonesia\r\n\r\nJAM BUKA:\r\nSenin - Minggu (14:00-20:00)\r\n\r\nREVIEW:\r\n8.9 (Baik)', '71bad85ce69ada731a44a65153153a63.jpg', '2021-11-28 17:02:17'),
	(23, '7', 'Magic Art 3D Museum', '45000', 'Akhir pekan mendatang ini, bagaimana kalau mengajak orang-orang tercinta untuk menikmati berbagai kesenian 3 dimensi di Magic Art 3D Museum Jakarta? Bertempat di Kota Tua, museum ini memiliki koleksi sekitar 100 lukisan mural yang digambar dengan tangan oleh seniman asal Korea dan Indonesia serta beberapa bentuk kesenian lainnya yang berkonsep 3 dimensi. Masuk dan jelajahilah zona-zona dengan tema menarik seperti Zona Dinosaurus, Zona Laut, Zona Horror, serta Zona Rutinitas, dan jadilah bagian dari lukisannya dengan mengambil foto-foto yang menipu mata!\r\n \r\nMagic Art 3D Museum Jakarta, Gedung Kerta Niaga 1, Unit GF &, Jl. Kali Besar Tim. No.9 3 6, Pinangsia, Tamansari, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11110, Indonesia\r\n \r\nJAM BUKA:\r\nSabtu-Minggu (10.00-17.00)\r\n\r\nREVIEW:\r\n8.7 (Baik)', 'f4eb097cf5730fc6a3db6a640a39a929.jpg', '2021-11-28 17:10:50'),
	(24, '11', 'Jakarta Aquarium & Safari', '105000', 'Istirahat sejenak dari padatnya kota Jakarta dengan mengunjungi Jakarta Aquarium & Safari! Living Planet dalam ruangan terbesar di Indonesia ini memiliki ciri khas Taman Safari Indonesia yang bekerjasama dengan Aquaria KLCC, Malaysia. Akuarium yang kini mencakup taman safari ini juga berfungsi sebagai situs konservasi yang berlokasi di salah satu pusat perbelanjaan di kota, menjadikannya sangat mudah untuk dijangkau oleh siapa saja. \r\n \r\nNeo SOHO Floor LG, Jalan Letjen S. Parman Kav. 28, Jakarta Barat, DKI Jakarta 11470, Indonesia\r\n\r\nJAM BUKA:\r\nSenin-Minggu (10.00-21.00)\r\n\r\nREVIEW:\r\n8.6 (Baik)\r\n', '4add42d73c7e9038a02200ef68d19b38.jpg', '2021-11-28 17:15:10'),
	(25, '10', 'Museum Macan', '72000', 'Nikmati seni untuk semua usia di Museum MACAN dan lihat langsung karya-karya seni modern serta kontemporer dalam pameran-pameran berkelas dunia. Demi kenyamanan, Anda akan dibimbing oleh Panduan Pameran dan Panduan Museum untuk Anak berbentuk digital yang dirancang untuk membuat seni lebih mudah dimengerti oleh Anda maupun si kecil.\r\n \r\nAKR Tower Level M, Jl. Perjuangan No.5, RT.11/RW.10, Kb. Jeruk, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11530, Indonesia\r\n\r\nREVIEW:\r\n8.5 (Baik)', 'f42854503a89bc9314ed400a4e83585f.jpg', '2021-11-28 17:18:27'),
	(26, '10', 'The Wave Pondok Indah Water Park', '90000', 'Temukan pengalaman yang berbeda dan uji keberanian Anda di The Wave Pondok Indah Water Park! Berlokasi di Jakarta Selatan, taman air merupakan salah satu yang pertama di Indonesia yang memiliki wahana Flow Rider, di mana Anda dapat mencoba berselancar tanpa perlu pergi ke laut! Nikmati juga perosotan dan wahana air seru lainnya seperti Aqua Play, Olympic Pool, Lazy River Tube, dan Wizard Slides, dan nikmati hari menyenangkan bersama yang tersayang. \r\n \r\nPondok Indah Mall, Jalan Metro Pondok Indah, Kebayoran Lama, Jakarta Selatan, DKI Jakarta 12310, Indonesia\r\n \r\nJAM BUKA:\r\nSenin-Minggu (06.00-18.00)', 'aca1fef8089b5b6f81699885a243144d.jpg', '2021-11-28 17:20:52'),
	(27, '7', 'Pusat Peragaan IPTEK', '25000', 'Apakah Anda sedang mencari ide liburan yang seru dan penuh wawasan? Jika ya, maka Anda harus mengunjungi PP-IPTEK di Taman Mini Indonesia Indah. Tempat ini menawarkan lebih dari sekedar museum teknologi. Di sini, Anda dapat belajar tentang sains dengan cara yang menyenangkan. Saksikan berbagai simulasi sains yang dilakukan setiap hari, seperti Tesla Coil, Roket Air, Rumah Gempa, Peneropongan Matahari, dan demo sains lainnya. Anda juga bisa menantang diri Anda dengan mengendarai sepeda kabel yang membentang beberapa meter di atas permukaan tanah. Masih banyak teknologi yang bisa Anda coba, seperti Generator Van de Graff, Self Balancing Wheel, Terowongan Ilusi, dan masih banyak lagi\r\n \r\nPusat Peragaan Iptek (PP-IPTEK), Jl. Raya Tmii, RW.10, Ceger, Kec. Cipayung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13810, Indonesia\r\n \r\nKarena batasan usia, pengunjung berusia di bawah 9 tahun dan di atas 60 tahun tidak diperbolehkan untuk masuk ke tempat rekreasi\r\n\r\nJAM BUKA:\r\nSenin-Minggu (08.30-15.30)\r\n\r\nREVIEW:\r\n8.4 (Baik)', '1ee00348d7b8bcf87d2b66f6c596547c.jpg', '2021-11-28 17:24:44');
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;

-- Dumping data for table vistay.transaksi: ~0 rows (approximately)
DELETE FROM `transaksi`;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;

-- Dumping data for table vistay.users: 5 rows
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_id`, `password`, `nama_lengkap`, `email`, `notelp`, `level`, `blokir`, `alamat`) VALUES
	(7, 'user', 'User', 'user@gmail.com', '08917934054', '1', '0', 'Jl. Nungcik Rt. 45 Palembang'),
	(8, 'admin', 'Administrator', 'admin@gmail.com', '08988387271', '0', '0', 'jl nungcikc'),
	(10, 'user', 'farras', 'user1@gmail.com', '081234567788', '1', '0', 'desa plandi'),
	(11, 'argyges', 'argy', 'argyganteng@gmail.com', '0812345678', '1', '0', 'madiun'),
	(12, 'user', 'farras', 'farras@gmail.com', '12345678', '1', '0', 'desa plandi');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
