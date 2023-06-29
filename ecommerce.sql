-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2023 at 12:49 AM
-- Server version: 5.7.42
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_chat`
--

CREATE TABLE `tb_chat` (
  `id_chat` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `teks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_chat`
--

INSERT INTO `tb_chat` (`id_chat`, `id_user`, `id_room`, `teks`) VALUES
(65, 2, 11, 'Hallo?'),
(66, 1, 11, 'iya, selamat siang. ada yang bisa dibantu?'),
(67, 1, 11, 'Hallo Kak'),
(68, 1, 11, 'hallo'),
(69, 1, 11, 'hallo'),
(70, 1, 11, 'selamat siang kak'),
(71, 1, 11, 'test'),
(72, 1, 11, 'tesw'),
(73, 1, 11, 'www'),
(74, 1, 11, 'fuck'),
(75, 1, 11, 'hei'),
(76, 2, 11, 'iya'),
(77, 1, 11, 'terimakasih kak'),
(78, 2, 11, 'oh iya kak, saya mau tanya'),
(79, 1, 11, 'iya kak?'),
(80, 1, 11, 'tester'),
(81, 1, 11, 'test'),
(82, 1, 11, 's'),
(83, 2, 11, 'siang kak'),
(84, 1, 11, 'hallo'),
(85, 1, 11, 'hallo'),
(86, 1, 11, 'pas'),
(87, 1, 11, 's'),
(88, 2, 11, 'bagimana kak?'),
(89, 1, 11, 'beginai kak'),
(90, 2, 11, 'iya?'),
(91, 1, 11, 'Hallow'),
(92, 2, 11, 'halo'),
(93, 1, 11, 'iya kak'),
(94, 2, 11, 'iya ada'),
(95, 1, 11, 'lama banget anjir'),
(96, 2, 11, 'bikini berapaan kak ?'),
(97, 1, 11, 'seminar ini'),
(98, 2, 11, 'sama orangnya tapi'),
(99, 1, 11, '45jt gas'),
(100, 1, 11, 'sam akamar'),
(101, 2, 11, '65jt aja'),
(102, 1, 11, 'gas gak nego lagi'),
(103, 2, 11, 'deal'),
(104, 2, 11, 'share loc'),
(105, 1, 11, 'Hartono Mall jam 5 sore'),
(106, 91, 12, 'hello?'),
(107, 1, 12, 'hello'),
(108, 1, 12, 'how can i help you?'),
(109, 94, 13, ''),
(110, 94, 14, ''),
(111, 94, 15, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_diskon`
--

CREATE TABLE `tb_diskon` (
  `id_diskon` int(11) NOT NULL,
  `total_diskon` int(11) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `deskripsi` text NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_diskon`
--

INSERT INTO `tb_diskon` (`id_diskon`, `total_diskon`, `tanggal_awal`, `tanggal_akhir`, `deskripsi`, `status`) VALUES
(1, 50000, '2021-08-13', '2021-08-28', 'Diskon Gebyar', '1'),
(2, 10, '2021-05-09', '2021-12-09', 'ShopingTerus', '1'),
(3, 5000, '2021-10-19', '2021-10-31', 'Diskon', '1'),
(4, 7500, '2021-10-14', '2021-10-21', 'Diskon', '1'),
(5, 7500, '2021-11-06', '2021-12-30', 'Diskon Kaget Kagetan', '1'),
(6, 5000, '2021-11-24', '2021-11-30', '5000', '1'),
(7, 5000, '2021-11-24', '2021-11-28', '5000', '1'),
(8, 7500, '2021-12-17', '2021-12-20', 'Manfaatkan diskon secepatnya', '1'),
(9, 7500, '2022-01-12', '2022-01-16', 'Diskon gercep', '1'),
(10, 25000, '2022-01-13', '2022-01-15', 'Segera dapatkan diskon secepatnyaa gaess', '1'),
(11, 10, '2022-01-13', '2022-01-31', 'Potongan Diskon 10 %', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dt_diskon`
--

CREATE TABLE `tb_dt_diskon` (
  `id_dt_diskon` int(11) NOT NULL,
  `id_diskon` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dt_diskon`
--

INSERT INTO `tb_dt_diskon` (`id_dt_diskon`, `id_diskon`, `id_produk`, `status`) VALUES
(1, 1, 24, '0'),
(2, 4, 27, '0'),
(3, 7, 33, '0'),
(4, 7, 32, '0'),
(5, 5, 27, '0'),
(6, 9, 32, '0'),
(7, 10, 24, '0'),
(8, 10, 25, '0'),
(9, 10, 26, '0'),
(10, 10, 27, '0'),
(11, 10, 28, '0'),
(12, 10, 29, '0'),
(13, 10, 30, '0'),
(14, 10, 31, '0'),
(15, 10, 32, '0'),
(16, 10, 33, '0'),
(17, 10, 34, '0'),
(18, 10, 35, '0'),
(19, 10, 37, '0'),
(20, 10, 38, '0'),
(21, 10, 39, '0'),
(22, 10, 40, '0'),
(23, 10, 41, '0'),
(24, 10, 42, '0'),
(25, 10, 43, '0'),
(26, 10, 44, '0'),
(27, 11, 24, '0'),
(28, 11, 25, '0'),
(29, 11, 26, '0'),
(30, 11, 27, '0'),
(31, 11, 28, '0'),
(32, 11, 29, '0'),
(33, 11, 30, '0'),
(34, 11, 31, '0'),
(35, 11, 32, '0'),
(36, 11, 33, '0'),
(37, 11, 34, '0'),
(38, 11, 35, '0'),
(39, 11, 37, '0'),
(40, 11, 38, '0'),
(41, 11, 39, '0'),
(42, 11, 40, '0'),
(43, 11, 41, '0'),
(44, 11, 42, '0'),
(45, 11, 43, '0'),
(46, 11, 44, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dt_transaksi`
--

CREATE TABLE `tb_dt_transaksi` (
  `id_dt_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `id_warna` int(11) NOT NULL,
  `id_ukuran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dt_transaksi`
--

INSERT INTO `tb_dt_transaksi` (`id_dt_transaksi`, `id_transaksi`, `id_produk`, `banyak`, `id_warna`, `id_ukuran`) VALUES
(18, 17, 25, 1, 29, 21),
(19, 18, 25, 1, 28, 21),
(20, 19, 25, 2, 28, 21),
(21, 20, 25, 1, 29, 21),
(22, 21, 25, 1, 31, 21),
(23, 22, 27, 1, 54, 44),
(24, 23, 31, 1, 64, 51),
(25, 23, 33, 1, 81, 62),
(26, 24, 30, 1, 56, 47),
(27, 25, 35, 1, 92, 69),
(28, 26, 25, 1, 28, 20),
(29, 27, 24, 1, 96, 74),
(30, 27, 27, 1, 54, 44),
(31, 27, 34, 1, 82, 63),
(32, 27, 30, 1, 56, 47),
(33, 27, 25, 1, 28, 20),
(34, 28, 35, 5, 92, 69),
(35, 29, 34, 1, 84, 64),
(39, 33, 27, 1, 54, 44),
(40, 34, 25, 1, 28, 20),
(41, 34, 26, 1, 39, 30),
(42, 35, 30, 2, 56, 48),
(43, 36, 26, 1, 39, 29),
(44, 37, 30, 1, 59, 48),
(45, 38, 29, 1, 51, 42),
(46, 39, 26, 1, 39, 30),
(47, 40, 26, 1, 39, 29),
(48, 41, 34, 1, 84, 64),
(49, 41, 35, 1, 93, 71),
(50, 42, 31, 1, 61, 49),
(51, 42, 33, 1, 81, 62),
(52, 43, 34, 1, 88, 64),
(53, 44, 33, 2, 81, 62),
(54, 45, 29, 1, 51, 42),
(55, 46, 26, 1, 39, 29),
(56, 47, 24, 1, 96, 74),
(57, 49, 38, 1, 105, 80),
(58, 49, 27, 1, 55, 45),
(59, 50, 29, 1, 53, 42),
(60, 51, 29, 1, 50, 41),
(61, 51, 37, 1, 104, 79),
(62, 51, 32, 1, 69, 56),
(63, 52, 26, 1, 39, 29),
(64, 53, 26, 1, 39, 29);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gambar`
--

CREATE TABLE `tb_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `filename` varchar(144) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gambar`
--

INSERT INTO `tb_gambar` (`id_gambar`, `id_produk`, `filename`) VALUES
(7, 24, 'camelia-reversible4.jpg'),
(9, 25, 'camelia-reversible7.jpg'),
(10, 25, 'camelia-reversible7-big.jpg'),
(11, 25, 'camelia-reversible8.jpg'),
(12, 25, 'camelia-reversible9.jpg'),
(13, 24, 'camelia-reversible0.jpg'),
(14, 24, 'camelia-reversible2.jpg'),
(15, 24, 'camelia-reversible3.jpg'),
(16, 24, 'camelia-reversible5.jpg'),
(17, 26, 'jaket jeans.jpg'),
(18, 26, 'jaketjeans2.jpg'),
(19, 26, 'jakt jeans1.jpg'),
(21, 27, 'rokjeans.jpg'),
(22, 27, 'rok1.jpg'),
(23, 27, 'rok2.jpg'),
(28, 28, 'kaos tumblr 1.jpg'),
(29, 28, 'kaos tumblr 2.jpg'),
(30, 28, 'kaos tumblr.jpg'),
(31, 29, 'kemeja.jpg'),
(32, 29, 'kemeja1.jpg'),
(33, 29, 'kemeja2.jpg'),
(34, 30, 'rajut boxi.jpg'),
(35, 30, 'rajutboxi1.jpg'),
(36, 30, 'rajutboxi2.jpg'),
(37, 31, 'celana kulot plisket.jpg'),
(38, 31, 'celanakulotpliske2.jpg'),
(39, 31, 'celanakulotplisket1.jpg'),
(40, 32, 'clana hightwaist.jpg'),
(41, 32, 'clana hightwaist1.jpg'),
(42, 33, '240935250_1258910291216626_5849027404906552805_n[1].jpg'),
(43, 33, '131890489_1036208850211401_9019246474410346870_n.jpg'),
(44, 33, '240935250_1258910291216626_5849027404906552805_n.jpg'),
(45, 33, '241027842_403022884502835_2703174072037600835_n.jpg'),
(46, 34, 'cardigan rajut.jpg'),
(47, 34, 'cardigan1.jpg'),
(48, 34, 'cardigan2.jpg'),
(50, 35, '240612523_897063834523222_2230833503281229212_n.jpg'),
(51, 35, '240717551_186601420140214_7737741708334540638_n.jpg'),
(52, 36, 'logo smp2sampang.jpg'),
(53, 37, 'kemeja flanel.jpg'),
(54, 37, 'kemejaflanel1.jpg'),
(55, 37, 'kemejaflanel2.jpg'),
(56, 38, '147872560_888929841898774_2945969048406903102_n.jpg'),
(57, 38, '148024790_3831854560213676_3313216696359079120_n.jpg'),
(58, 38, '148402515_418026499287021_8561126697632554607_n.jpg'),
(59, 39, '240861370_4534036583307630_6693698702184055790_n.jpg'),
(60, 39, '240883862_380143446853553_7262012843802748145_n.jpg'),
(61, 39, '241019342_944695309451609_9143604130749509101_n.jpg'),
(62, 40, '236689431_397331858408054_3684855946796844868_n.jpg'),
(63, 40, '236890236_234834888542226_6822284891302367345_n.jpg'),
(64, 40, '237121352_433725181196899_6028086421333870602_n.jpg'),
(65, 41, '240523878_878812383056617_5585443852121377397_n.jpg'),
(66, 41, '240612517_1000802354093635_3363692466599019942_n.jpg'),
(67, 41, '240646455_891339244844162_4440933760718316930_n.jpg'),
(68, 42, '239890288_4156672787780749_3921481346742431593_n.jpg'),
(69, 42, '240397688_626007265037797_3043391295831190190_n.jpg'),
(70, 42, '240411080_596185684710400_6280544583673332502_n.jpg'),
(71, 43, '168866224_167007535283512_5654552408558276300_n.jpg'),
(72, 43, '169361177_3787788194603726_5904954446299871271_n.jpg'),
(73, 43, '169575225_466538071303469_2047003981251813874_n.jpg'),
(74, 44, '131890489_1036208850211401_9019246474410346870_n.jpg'),
(75, 44, '240935250_1258910291216626_5849027404906552805_n.jpg'),
(76, 44, '241027842_403022884502835_2703174072037600835_n.jpg'),
(77, 45, '239890288_4156672787780749_3921481346742431593_n.jpg'),
(78, 45, '240397688_626007265037797_3043391295831190190_n.jpg'),
(79, 45, '240411080_596185684710400_6280544583673332502_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_get_diskon`
--

CREATE TABLE `tb_get_diskon` (
  `id_get_diskon` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kupon` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_get_diskon`
--

INSERT INTO `tb_get_diskon` (`id_get_diskon`, `id_user`, `id_kupon`, `status`) VALUES
(1, 2, 3, '1'),
(2, 66, 3, '0'),
(3, 65, 5, '1'),
(4, 2, 6, '0'),
(5, 64, 6, '0'),
(6, 65, 6, '1'),
(7, 66, 6, '0'),
(8, 68, 6, '0'),
(9, 69, 6, '0'),
(10, 70, 6, '0'),
(11, 71, 6, '0'),
(12, 72, 6, '0'),
(13, 73, 6, '0'),
(14, 74, 6, '0'),
(15, 75, 6, '0'),
(16, 76, 6, '0'),
(17, 77, 6, '0'),
(18, 2, 7, '0'),
(19, 64, 7, '0'),
(20, 65, 7, '0'),
(21, 66, 7, '0'),
(22, 68, 7, '0'),
(23, 69, 7, '0'),
(24, 70, 7, '0'),
(25, 71, 7, '0'),
(26, 72, 7, '0'),
(27, 73, 7, '0'),
(28, 74, 7, '0'),
(29, 75, 7, '0'),
(30, 76, 7, '0'),
(31, 77, 7, '0'),
(32, 2, 8, '0'),
(33, 64, 8, '0'),
(34, 65, 8, '0'),
(35, 66, 8, '0'),
(36, 68, 8, '0'),
(37, 69, 8, '0'),
(38, 70, 8, '0'),
(39, 71, 8, '0'),
(40, 72, 8, '0'),
(41, 73, 8, '0'),
(42, 74, 8, '0'),
(43, 75, 8, '0'),
(44, 76, 8, '0'),
(45, 77, 8, '0'),
(46, 78, 8, '0'),
(47, 79, 8, '0'),
(48, 2, 9, '0'),
(49, 64, 9, '0'),
(50, 65, 9, '0'),
(51, 66, 9, '0'),
(52, 68, 9, '0'),
(53, 69, 9, '0'),
(54, 70, 9, '0'),
(55, 71, 9, '0'),
(56, 72, 9, '0'),
(57, 73, 9, '0'),
(58, 74, 9, '0'),
(59, 75, 9, '0'),
(60, 76, 9, '0'),
(61, 77, 9, '0'),
(62, 78, 9, '0'),
(63, 79, 9, '0'),
(64, 80, 9, '0'),
(65, 82, 10, '1'),
(66, 2, 11, '0'),
(67, 64, 11, '0'),
(68, 65, 11, '0'),
(69, 66, 11, '0'),
(70, 68, 11, '0'),
(71, 69, 11, '0'),
(72, 70, 11, '0'),
(73, 71, 11, '0'),
(74, 72, 11, '0'),
(75, 73, 11, '0'),
(76, 74, 11, '0'),
(77, 75, 11, '0'),
(78, 76, 11, '0'),
(79, 77, 11, '0'),
(80, 78, 11, '0'),
(81, 79, 11, '0'),
(82, 80, 11, '0'),
(83, 81, 11, '0'),
(84, 82, 11, '0'),
(85, 84, 11, '0'),
(86, 2, 11, '0'),
(87, 64, 11, '0'),
(88, 65, 11, '0'),
(89, 66, 11, '0'),
(90, 68, 11, '0'),
(91, 69, 11, '0'),
(92, 70, 11, '0'),
(93, 71, 11, '0'),
(94, 72, 11, '0'),
(95, 73, 11, '0'),
(96, 74, 11, '0'),
(97, 75, 11, '0'),
(98, 76, 11, '0'),
(99, 77, 11, '0'),
(100, 78, 11, '0'),
(101, 79, 11, '0'),
(102, 80, 11, '0'),
(103, 81, 11, '0'),
(104, 82, 11, '0'),
(105, 84, 11, '0'),
(106, 85, 11, '0'),
(107, 2, 12, '0'),
(108, 64, 12, '0'),
(109, 65, 12, '0'),
(110, 66, 12, '0'),
(111, 68, 12, '0'),
(112, 69, 12, '0'),
(113, 70, 12, '0'),
(114, 71, 12, '0'),
(115, 72, 12, '0'),
(116, 73, 12, '0'),
(117, 74, 12, '0'),
(118, 75, 12, '0'),
(119, 76, 12, '0'),
(120, 77, 12, '0'),
(121, 78, 12, '0'),
(122, 79, 12, '0'),
(123, 80, 12, '0'),
(124, 81, 12, '0'),
(125, 82, 12, '0'),
(126, 84, 12, '0'),
(127, 85, 12, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `jenis_kategori` varchar(144) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `jenis_kategori`, `status`) VALUES
(1, 'Celana', '0'),
(2, 'Sweeter', '1'),
(3, 'Jaket', '0'),
(4, 'Rok', '0'),
(5, 'Dress', '0'),
(6, 'Sweater', '0'),
(7, 'Overalls', '0'),
(8, 'Gamis', '0'),
(9, 'Kemeja', '0'),
(10, 'Kaos', '0'),
(11, 'Cardigan', '0'),
(12, 'Blazer', '0'),
(13, 'Atasan', '0'),
(14, 'Pakaian Atasan', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_komentar`
--

CREATE TABLE `tb_komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `tanggal_komentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_komentar`
--

INSERT INTO `tb_komentar` (`id_komentar`, `id_user`, `id_produk`, `komentar`, `tanggal_komentar`) VALUES
(1, 2, 25, 'Great produk, i like this.', '2021-08-22'),
(2, 66, 25, 'Bagus sekali, sesuai dengan foto.', '2021-08-22'),
(3, 65, 34, 'Modelnya simple dan menarik , kelihatannya nyaman dipakai', '2021-09-02'),
(4, 65, 28, 'Outfitnya cocok uuntuk OOTD nih..', '2021-10-19'),
(5, 76, 34, 'wahh warnanya bagus deh ', '2021-11-15'),
(9, 65, 33, 'Cantik warnanya', '2022-01-07'),
(10, 71, 35, 'Bahannya bagus, warnanya sesuai', '2022-01-07'),
(11, 81, 29, 'saya tertarik dengan kemeja ini kak ', '2022-01-11'),
(12, 82, 26, 'untuk warna nya apa cuma warna biru saja kak?', '2022-01-11'),
(13, 85, 38, 'wahhhh jaketnya ko menarik', '2022-01-13'),
(14, 87, 29, 'wahh modelnya bagus nihh', '2022-01-13'),
(15, 1, 29, '@Kiki Saputri : terimakasih atas sarannya', '2022-01-19'),
(16, 91, 32, 'my comment can be put here', '2023-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kupon`
--

CREATE TABLE `tb_kupon` (
  `id_kupon` int(11) NOT NULL,
  `nama_kupon` varchar(144) NOT NULL,
  `jenis_kupon` enum('persen','potongan') NOT NULL,
  `total_diskon` int(11) NOT NULL,
  `masa_berlaku` date NOT NULL,
  `deskripsi` text NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kupon`
--

INSERT INTO `tb_kupon` (`id_kupon`, `nama_kupon`, `jenis_kupon`, `total_diskon`, `masa_berlaku`, `deskripsi`, `status`) VALUES
(3, 'Mantap ', 'persen', 50, '2021-08-17', 'Belanja sepuasanya dengan potongan sebesar 50%', '1'),
(4, 'Mingguan', 'persen', 10, '2021-03-09', 'Buruan beli produk lechyboutique , potongan diskon 10% !!!!', '1'),
(5, 'Voucher Pahlawan', 'persen', 50, '2021-11-20', 'Dapatkan Voucher secepatnya , nikmati diskon !!!', '1'),
(6, 'Belanja Ekonomis', 'persen', 15, '2021-11-30', 'Dapatkan voucher belanja ekonomis secepatnya!!!!!!', '1'),
(7, 'Akhir Bulan Happy', 'potongan', 12000, '2021-11-30', 'Segera belanja akhir bulan di lechy boutique, gunakan voucher!', '1'),
(8, 'Akhir tahun', 'persen', 20, '2021-12-30', 'Dapatkan voucher akhir tahun besar besaran!!!', '1'),
(9, 'Flashshale 1.1', 'persen', 11, '2022-01-11', 'Flash Shale 11 %  s/d 20.000', '1'),
(10, 'Kupon happy kiyowo', 'persen', 10, '2022-01-15', 'Kupon happy kiyowo dengan potongan 10 % untuk pengguna baru ', '0'),
(11, 'Voucher duarrrr', 'persen', 10, '2022-01-15', 'Voucherr duarrr dengan potongan 11 %, buruannn dapatkan!!!', '0'),
(12, 'voucher akhir bulan', 'persen', 5, '2022-01-17', 'voucher potongan 5 persen , buruannnn', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `bank` varchar(144) NOT NULL,
  `no_virtual` varchar(155) NOT NULL,
  `status` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id_pembayaran`, `id_transaksi`, `total_bayar`, `bank`, `no_virtual`, `status`) VALUES
(17, 17, 397000, 'bca', '95954475665', '2'),
(18, 18, 362000, 'bca', '95954517116', '1'),
(19, 19, 712000, 'bca', '95954395490', '0'),
(20, 20, 368000, 'bca', '95954535697', '1'),
(21, 21, 365000, 'Saldo', 'Your Saldo', '1'),
(22, 22, 127000, 'Saldo', 'Your Saldo', '1'),
(23, 23, 0, '', '', '0'),
(24, 24, 113000, 'Saldo', 'Your Saldo', '1'),
(25, 25, 120000, 'bca', '95954188706', '0'),
(26, 26, 362000, 'bca', '95954713150', '1'),
(27, 27, 1154200, 'bca', '95954871736', '0'),
(28, 28, 537000, 'bca', '95954112262', '0'),
(29, 29, 152200, 'bca', '95954920734', '0'),
(33, 33, 160000, 'Saldo', 'Your Saldo', '1'),
(34, 34, 464000, 'bca', '95954933218', '1'),
(35, 35, 202000, 'bca', '95954160550', '0'),
(36, 36, 138000, 'bca', '95954093405', '1'),
(37, 37, 102000, 'bca', '95954638850', '1'),
(38, 38, 47500, 'Saldo', 'Your Saldo', '1'),
(39, 39, 161000, 'bca', '95954207980', '2'),
(40, 40, 138000, 'bca', '95954634461', '1'),
(41, 41, 200200, 'bca', '95954877301', '1'),
(42, 42, 118000, 'bca', '95954910118', '2'),
(43, 43, 89200, 'bca', '95954341404', '1'),
(44, 44, 15150, 'bca', '95954320407', '1'),
(45, 45, 90000, 'bca', '95954075280', '1'),
(46, 46, 97200, 'bca', '95954487948', '1'),
(47, 47, 463500, 'bca', '95954439583', '1'),
(48, 48, 0, '', '', '0'),
(49, 49, 162500, 'bca', '95954473678', '1'),
(50, 50, 65000, 'bca', '95954130136', '1'),
(51, 51, 221000, 'Saldo', 'Your Saldo', '1'),
(52, 52, 127000, 'bca', '08964446311', '0'),
(53, 53, 119000, 'bca', '08964749404', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(144) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama_produk`, `stok`, `harga_produk`, `berat_produk`, `id_kategori`, `deskripsi_produk`, `status`) VALUES
(24, 'Sweeter Gunung', 20, 550000, 750, 1, 'Jaket Gunung', '0'),
(25, 'Jaket Jass', 31, 350000, 680, 3, 'Cocok digunakan untuk berpergian maupun menghadiri acara formal/non-formal.', '0'),
(26, 'Jaket Jeans', 300, 93000, 350, 3, 'Jaket jeans merk levis , gaya basic dan street style cocok untuk musim semi', '0'),
(27, 'Rok Jeans', 300, 115000, 650, 1, 'Bahan jeans wans , terdapat saku kanan kiri , kancing depan hidup dan full ', '0'),
(28, 'Kaos Tumblr', 247, 40000, 130, 1, 'Bahan katun super adem , sablon poliflex korea bukan sablon manual dijamin awet ', '0'),
(29, 'Kemeja ', 250, 75000, 200, 9, 'Bahan katun , lengan panjang, cocok untuk acara kasual ', '0'),
(30, 'Rajut Boxi', 300, 95000, 310, 11, 'Bahan rajut dan halus , cocok untuk outwear casual', '0'),
(31, 'Kulot Plisket', 100, 55000, 270, 1, 'Bahan jersey plisket premium , motif kulot polos', '0'),
(32, 'Jeans Hightwaist', 400, 117000, 350, 1, '- Ukuran 28-33\r\n- Bahan tebal dan halus\r\n- Bahan jeans premium ori\r\n- Cocok untuk dipakai apapun', '0'),
(33, 'Rok Plisket', 100, 48000, 260, 1, '', '0'),
(34, 'Cardigan Simple', 120, 79200, 250, 11, 'Bahan rajut , motif polos dan simple\r\n', '0'),
(35, 'Celana Boyfrend', 150, 105000, 650, 1, 'Jeans Non Stretch Kualitas Premium\r\nTebal dan adem\r\nNyaman di pakai\r\nModel Boyfriend Jeans polos', '0'),
(36, 'cek', 12, 50000, 100, 4, 'baik', '1'),
(37, 'Kemeja flanel', 50, 60000, 300, 1, 'Bahannya bagus, cocok buat ootd anak muda sekarang', '0'),
(38, 'Hoodie', 100, 65000, 500, 3, 'Material : Babytery Tebal , Bahan sangat halus dan adem dipakai\r\nUkuran Fit to L\r\nLingkar Badan : 90 CM\r\nPanjang : 62 CM', '0'),
(39, 'Long Dress ', 70, 71000, 345, 1, 'Bahan katun rayon\r\nBahan adem, lembut dan jatuh\r\nModel dress payung lebar ke bawah', '0'),
(40, 'Rok Span', 90, 40000, 400, 4, 'Material : jersey original\r\nKarakter bahan stertch, adem , ketebalan pas tidak nerawang dan tidak ngeplek di badan  dan yang pastinya anti kusut2 club', '0'),
(41, 'Set Vest', 50, 78000, 440, 13, 'Bahan : Crepe\r\nUkuran : Ld 96cm / Pj body 60cm\r\nUkuran : Allsize', '0'),
(42, 'Kemeja Polos', 150, 50000, 300, 9, 'Material Rayon katun jatuh', '0'),
(43, 'Rok Jeans', 75, 45000, 250, 10, 'Model simple', '0'),
(44, 'Rok plisket', 50, 50000, 400, 4, 'Bahan simple dan model menarik', '0'),
(45, 'Kemeja Cantik', 50, 85000, 450, 1, 'bahn adem dam simple', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_room`
--

CREATE TABLE `tb_room` (
  `id_room` int(11) NOT NULL,
  `nama_room` varchar(144) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_room`
--

INSERT INTO `tb_room` (`id_room`, `nama_room`) VALUES
(11, 'Selvy Erhita'),
(12, 'Manfred Richtoffen'),
(13, 'jimi ajojing'),
(14, 'jimi ajojing'),
(15, 'jimi ajojing');

-- --------------------------------------------------------

--
-- Table structure for table `tb_topup`
--

CREATE TABLE `tb_topup` (
  `id_topup` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `total_topup` int(11) NOT NULL,
  `bank` varchar(144) NOT NULL,
  `no_virtual` varchar(114) NOT NULL,
  `tanggal_topup` date NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `no_order` varchar(144) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_topup`
--

INSERT INTO `tb_topup` (`id_topup`, `id_user`, `total_topup`, `bank`, `no_virtual`, `tanggal_topup`, `status`, `no_order`) VALUES
(7, 2, 500000, 'bca', '95954281092', '2021-08-22', '1', '1972778877'),
(8, 65, 1000000, 'bca', '95954564413', '2021-08-22', '2', '2145509203'),
(9, 66, 500000, 'bca', '95954440426', '2021-08-22', '1', '491700133'),
(10, 66, 300000, 'Mandiri', '<a href=https://app.sandbox.midtrans.com/snap/v1/transactions/17ff5536-4001-4263-98a3-a268098e47ad/pdf>Klik</a>', '2021-08-22', '1', '1321850339'),
(18, 2, 500000, 'bca', '95954451002', '2021-09-05', '1', '124550684'),
(19, 68, 1000000, 'bca', '95954251218', '2021-09-05', '1', '346199033'),
(20, 65, 200000, 'bca', '95954348639', '2021-10-19', '2', '896855060'),
(21, 65, 200000, 'bca', '95954986853', '2021-11-06', '2', '1695013954'),
(22, 65, 100000, 'bca', '95954887303', '2021-11-06', '2', '777476513'),
(23, 65, 100000, 'bca', '95954293751', '2021-11-06', '1', '625133054'),
(24, 65, 100000, 'bca', '95954554332', '2021-11-06', '2', '1957600442'),
(25, 2, 300000, 'bca', '95954601863', '2021-11-06', '2', '1545414584'),
(26, 79, 200000, 'bca', '95954136206', '2021-12-08', '1', '1947360535'),
(27, 81, 200000, 'bca', '95954132686', '2022-01-11', '1', '127692138'),
(28, 73, 300000, 'bca', '95954359397', '2022-01-12', '1', '180873143'),
(29, 75, 500000, 'bca', '95954484393', '2022-01-12', '1', '1263414013'),
(30, 71, 150000, 'bca', '95954854565', '2022-01-12', '1', '1687003681'),
(31, 85, 150000, 'bca', '95954999722', '2022-01-13', '1', '556766591'),
(32, 87, 200000, 'bca', '95954817619', '2022-01-13', '1', '381463080'),
(33, 91, 300000, 'bca', '08964298371', '2023-01-21', '0', '625690770'),
(34, 91, 300000, 'bca', '08964384992', '2023-01-21', '0', '357149397'),
(35, 91, 500000, 'bca', '08964805993', '2023-01-21', '0', '1194740699'),
(36, 91, 1000000, 'bca', '08964284952', '2023-01-21', '0', '1379569776'),
(37, 2, 100000, 'bca', '08964255560', '2023-01-21', '1', '367785653'),
(38, 91, 500000, 'bca', '08964930928', '2023-01-21', '0', '1775321003'),
(39, 91, 1000000, 'bca', '08964545352', '2023-01-21', '1', '516620513');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `no_order` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `total_transaksi` int(11) NOT NULL,
  `jasa_pengiriman` varchar(144) NOT NULL,
  `durasi_ongkir` varchar(144) NOT NULL,
  `alamat_kirim` text NOT NULL,
  `nama_penerima` varchar(144) NOT NULL,
  `provinsi_kirim` varchar(144) NOT NULL,
  `kota_kirim` varchar(144) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `no_resi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `no_order`, `id_user`, `total_transaksi`, `jasa_pengiriman`, `durasi_ongkir`, `alamat_kirim`, `nama_penerima`, `provinsi_kirim`, `kota_kirim`, `tanggal_transaksi`, `no_resi`) VALUES
(17, '1531933522', 2, 397000, 'jne', '2-3 HARI', 'Dusun Nganti, RT 02 RW 07 Kelurahan Sendangadi, Kecamatan Mlati', 'Shoera Group', 'Bangka Belitung', 'Belitung', '2021-08-22', NULL),
(18, '299006644', 2, 362000, 'jne', '2-3 HARI', 'Kampung Bugel, RT. 01/04, Kelurahan Kaduagung, Kecamatan Tigaraksa, Kabupaten Tangerang, Banten, Indonesia.', 'M Dhifta', 'DKI Jakarta', 'Jakarta Utara', '2021-08-22', 2147483647),
(19, '739738253', 65, 712000, 'jne', '2-3 HARI', 'Jalan Pandega No 10', 'Ulfatul Fatonah', 'Jawa Tengah', 'Cilacap', '2021-08-22', NULL),
(20, '1433939854', 66, 368000, 'jne', '1-2 HARI', 'Kampung Bugel, RT. 01/04, Kelurahan Kaduagung, Kecamatang Tigaraksa, Kabupaten Tangerang, Banten.', 'Julio Bagas', 'Banten', 'Tangerang', '2021-08-22', 2147483647),
(21, 'SD66SLx43', 66, 365000, 'jne', '2-3 HARI', 'Kampung Bugel, RT. 01/04, Kelurahan Kaduagung, Kecamatang Tigaraksa, Kabupaten Tangerang, Banten.', 'Julio Bagas', 'Banten', 'Tangerang', '2021-08-22', 2147483647),
(22, 'SD2SLx43', 2, 127000, 'jne', '2-3 HARI', 'Seleman, Jombor sebelah barat UTY', 'Selvy Erhita', 'DI Yogyakarta', 'Sleman', '2021-09-04', 2147483647),
(23, '', 68, 0, 'tiki', '3 HARI', 'Kos Victory, Jl. Tegal Mraen Rt 01 Rw 09', 'Sayekti', 'DI Yogyakarta', 'Sleman', '2021-09-05', NULL),
(24, 'SD68SLx43', 68, 113000, 'tiki', '3 HARI', 'Kos Victory, Jl. Tegal Mraen ', 'Imam Mustofa', 'DI Yogyakarta', 'Sleman', '2021-09-05', 2147483647),
(25, '691238515', 68, 120000, 'jne', '1-2 HARI', 'Jl. Tanjung 42 C Rt 01 Rw 11, Sidakaya, Cilacap Selatan', 'Bu Yuli Etika Rahayu', 'Jawa Tengah', 'Cilacap', '2021-09-05', NULL),
(26, '155535564', 68, 362000, 'tiki', '4 HARI', 'Jl. Kluwih Tambakreja', 'Yohana', 'Jawa Tengah', 'Cilacap', '2021-09-05', 2147483647),
(27, '114415789', 68, 1154200, 'jne', '1-2 HARI', 'Gereja Bethel Indonesia, Jl. Tanjung 40 C, Sidakaya Cilacap Selatan', 'Pastur Gereja', 'Jawa Tengah', 'Cilacap', '2021-09-05', NULL),
(28, '1121150379', 65, 537000, 'jne', '2-3 HARI', 'Jalan Kalimantan Gg. Pemuda No 2', 'Kirana ', 'DI Yogyakarta', 'Bantul', '2021-09-05', NULL),
(29, '1696641023', 65, 152200, 'jne', '5-7 HARI', 'Jalan Bahagia Rt 3 rw 11', 'Paijo', 'Gorontalo', 'Gorontalo', '2021-09-05', NULL),
(33, 'SD2SLx43', 2, 160000, 'jne', '3-6 HARI', 'Magelang', 'Roufiq', 'Bangka Belitung', 'Bangka Barat', '2021-10-04', NULL),
(34, '1760830073', 2, 464000, 'jne', '5-7 HARI', 'Cianjur, Bandung, Jawa barat', 'M Dhifta', 'Jawa Barat', 'Cianjur', '2021-10-07', NULL),
(35, '287867013', 65, 202000, 'jne', '2-3 HARI', 'Kos Putri Alesya, Trini, Gamping Rt 3 Rw 10', 'Kirana Maharani', 'DI Yogyakarta', 'Sleman', '2021-10-19', NULL),
(36, '1415886120', 2, 138000, 'jne', '3-6 HARI', 'www', 'wwww', 'Bangka Belitung', 'Bangka Barat', '2021-11-04', NULL),
(37, '336085089', 65, 102000, 'jne', '2-3 HARI', 'Kos Putri Sakila No 100', 'Anisa', 'Jawa Timur', 'Gresik', '2021-11-06', 2147483647),
(38, 'SD65SLx43', 65, 47500, 'pos', '4 HARI HARI', 'Rumah Cat Kuning Gg. Pambudi No 25', 'Sabila Jayanti', 'Jawa Tengah', 'Pekalongan', '2021-11-06', 2147483647),
(39, '1146586983', 2, 161000, 'tiki', '5 HARI', 'Seleman, Jombor sebelah barat UTY', 'Selvy Erhita', 'Kalimantan Utara', 'Nunukan', '2021-11-06', NULL),
(40, '1852667474', 2, 138000, 'jne', '3-6 HARI', 'as', 'Shoera Group', 'Bangka Belitung', 'Bangka Barat', '2021-11-06', 2147483647),
(41, '543984927', 76, 200200, 'jne', '3-6 HARI', 'Jalan Semar RT 10 RW 12 Rumah Cat Abu-Abu', 'Siti Ariyani', 'DI Yogyakarta', 'Kulon Progo', '2021-11-15', 2147483647),
(42, '1536061184', 77, 118000, 'jne', '1-2 HARI', 'kost cahaya putri, gang mennur umbulharjo, yogyakarta', 'namira anindita', 'DI Yogyakarta', 'Yogyakarta', '2021-11-17', NULL),
(43, '1760856176', 79, 89200, 'tiki', '4 HARI', 'Kos Putri Bu Tuti Gg.Pemuda No 120, Umbulharjo', 'Bela Permata Sari', 'DI Yogyakarta', 'Yogyakarta', '2021-12-08', 2147483647),
(44, '100372939', 65, 15150, 'tiki', '4 HARI', 'Kos Putri Sakila Trini', 'Cindy', 'DI Yogyakarta', 'Sleman', '2022-01-07', 2147483647),
(45, '878880561', 81, 90000, 'jne', '1-2 HARI', 'jalan pandega no 17 jaksel', 'cantika', 'DKI Jakarta', 'Jakarta Selatan', '2022-01-11', 2147483647),
(46, '1639929957', 82, 97200, 'jne', '1-2 HARI', 'Jl.TERUSAN PEJATEN RT.07 RW.08\r\nKel.pejaten,Kec.Pasar minggu', 'alamsyah', 'DKI Jakarta', 'Jakarta Selatan', '2022-01-11', 2147483647),
(47, '18540765', 82, 463500, 'jne', '1-2 HARI', '', 'wahyu', 'DKI Jakarta', 'Jakarta Selatan', '2022-01-11', NULL),
(48, '', 82, 0, '', '', '', '', '', '', '2022-01-11', NULL),
(49, '1776997978', 85, 162500, 'jne', '1-2 HARI', 'Rumah Cat Orange', 'Irma', 'Jawa Tengah', 'Cilacap', '2022-01-13', 2147483647),
(50, '923844813', 87, 65000, 'jne', '1-2 HARI', 'Rumah Cat Kuning Jalan Merdeka ', 'Kiki ', 'Jawa Tengah', 'Cilacap', '2022-01-13', 1234567890),
(51, 'SD91SLx43', 91, 221000, 'tiki', '1 HARI', 'bruh bvd 79B,', 'Manfred Richtoffen', 'Jawa Tengah', 'Banyumas', '2023-01-21', 0),
(52, '1973744622', 94, 127000, '', '2-3 HARI', '', '', '', '', '2023-06-02', NULL),
(53, '148880655', 94, 119000, 'jne', '3-6 HARI', '', '', 'Bangka Belitung', 'Bangka', '2023-06-05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ukuran`
--

CREATE TABLE `tb_ukuran` (
  `id_ukuran` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jenis_ukuran` varchar(144) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ukuran`
--

INSERT INTO `tb_ukuran` (`id_ukuran`, `id_produk`, `jenis_ukuran`) VALUES
(20, 25, 'XL'),
(21, 25, 'L'),
(22, 25, 'M'),
(29, 26, 'XL'),
(30, 26, 'L'),
(31, 26, 'M'),
(41, 29, 'L'),
(42, 29, 'M'),
(43, 29, 'S'),
(44, 27, 'L'),
(45, 27, 'M'),
(46, 27, 'S'),
(47, 30, 'XL'),
(48, 30, 'L'),
(49, 31, 'XL'),
(50, 31, 'L'),
(51, 31, 'M'),
(56, 32, 'XL'),
(57, 32, 'L'),
(58, 32, 'M'),
(59, 32, 'S'),
(62, 33, 'XL'),
(63, 34, 'L'),
(64, 34, 'M'),
(65, 34, 'S'),
(69, 35, 'XL'),
(70, 35, 'L'),
(71, 35, 'M'),
(74, 24, 'XL'),
(75, 36, 'XL'),
(76, 36, 'L'),
(79, 37, 'XL'),
(80, 38, 'XL'),
(81, 38, 'L'),
(82, 38, 'M'),
(83, 38, 'S'),
(88, 39, 'XL'),
(89, 40, 'XL'),
(90, 40, 'L'),
(91, 40, 'M'),
(92, 40, 'S'),
(93, 41, 'XL'),
(94, 41, 'L'),
(95, 41, 'M'),
(96, 41, 'S'),
(97, 42, 'XL'),
(98, 42, 'L'),
(99, 42, 'M'),
(100, 42, 'S'),
(101, 43, 'XL'),
(102, 43, 'L'),
(103, 43, 'M'),
(104, 43, 'S'),
(105, 44, 'XL'),
(106, 44, 'L'),
(107, 44, 'M'),
(108, 44, 'S'),
(109, 28, 'XL'),
(114, 45, 'XL');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `fname` varchar(144) NOT NULL,
  `lname` varchar(144) DEFAULT NULL,
  `telephone` varchar(144) NOT NULL,
  `saldo` int(11) NOT NULL,
  `email` varchar(144) NOT NULL,
  `password` varchar(144) NOT NULL,
  `roles` enum('0','1','2') NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `fname`, `lname`, `telephone`, `saldo`, `email`, `password`, `roles`, `status`) VALUES
(1, 'Digisoft', 'Admin', '085896274580', 0, 'digisoft@gmail.com', '123456', '0', '0'),
(2, 'Selvy', 'Erhita', '085791419625', 813000, 'selvyerhita@gmail.com', '123456', '1', '0'),
(63, 'Digisoft', 'Super', '085791419627', 0, 'myadmin@gmail.com', '123456', '2', '0'),
(64, 'uwu', 'uwu', '08123123123', 0, 'i@mail.net', '123', '1', '0'),
(65, 'Bunga', 'Cantika ', '083478908200', 52500, 'nuroktaviarokhaeni310@gmail.com', 'merdeka10', '1', '0'),
(66, 'Julio', 'Bagas', '0857654321', 435000, 'petshopmonjali@gmail.com', '1234567', '1', '0'),
(68, 'Restu Prakas', 'Yudianto', '081229629480', 887000, 'restuprakas@gmail.com', 'restu', '1', '0'),
(69, 'Ayu', 'Wardani', '082285037360', 0, 'ayuwardanii1604@gmail.com', '123456', '1', '0'),
(70, 'faisal', 'azhari', '08571419625', 0, 'faisalazhari73@gmail.com', 'faisalazhari', '1', '0'),
(71, 'Oriza Aruna', 'Aghata', '083400861410', 150000, 'orizaaruna@gmail.com', 'orizaaruna', '1', '0'),
(72, 'Davira Zia', 'Harumi', '081255221724', 0, 'daviraziaharumi@gmail.com', 'daviraharumi', '1', '0'),
(73, 'Bela ', 'Anjani', '081269982009', 300000, 'belaanjani34@gmail.com', 'belaanjani', '1', '0'),
(74, 'Nizaul Ngulum', 'Fadilah', '085887451092', 0, 'nizaulngulum20@gmail.com', 'nizaulngulum', '1', '0'),
(75, 'Dila Purnaya', 'Suci', '081600823900', 500000, 'dilapurnayasuci@gmail.com', 'dilapurnaya', '1', '0'),
(76, 'Siti ', 'Ariyani', '081459333800', 0, 'sitiariyani100@gmail.com', 'sitiariyani', '1', '0'),
(77, 'Namira ', 'Anindita', '08156507271', 0, 'namiraanindita@gmail.com', 'namira123', '1', '0'),
(78, 'Combet', 'Ohct', '19123456789', 0, 'mr.combetohct@gmail.com', 'hahaha47', '1', '0'),
(79, 'Bela ', 'Permata Sari', '089467800137', 200000, 'belapermatasari@gmail.com', 'bela12345', '1', '0'),
(80, 'Putri', 'Lestari', '081903309400', 0, 'putrilestari@gmail.com', 'putrilestari', '1', '0'),
(81, 'Agung Wahyu', 'Alamsyah', '081903309300', 200000, 'agungwahyualamsyah@gmail.com', 'agungwahyu', '1', '0'),
(82, 'Wahyu', 'Alamsyah', '085880176770', 0, 'walamsyah84@gmail.com', 'wahyualamsyah', '1', '0'),
(83, 'Citra', 'Kirana', '081903309300', 0, 'citrakirana@gmail.com', 'citrakirana', '0', '1'),
(84, 'Bunga ', 'Lestari', '081296158612', 0, 'bungalestari@gmail.com', 'bungalestari', '1', '0'),
(85, 'Irma', 'Mulyanti', '081903309300', 150000, 'irmamulyanti@gmail.com', 'irmamulyanti', '1', '0'),
(86, 'Cantika', 'Karin', '081903309300', 0, 'cantikakarin@gmail.com', 'cantikakarin', '0', '1'),
(87, 'Kiki', 'Saputri', '081903309300', 200000, 'kikisaputri@gmail.com', 'kikisaputri', '1', '0'),
(88, 'Budi', 'Setiono', '081903309400', 0, 'budisetiyono@gmail.com', 'budisetiono', '0', '1'),
(89, '', '', '', 0, '', '', '1', '0'),
(90, 'Albert', 'Spee', '088888888', 0, 'aspee380@mail.com', 'password123', '1', '0'),
(91, 'Manfred', 'Richtoffen', '62888888888888', 779000, 'roteflieger@mail.com', '123456', '1', '0'),
(92, 'Recky', 'Mahadi', '078876215', 0, 'reckymhd@gmail.com', 'mhd21010101', '1', '0'),
(93, 'Andi', 'Saputra', '089999999999', 0, 'andi@gmail.com', 'andi123', '1', '0'),
(94, 'jimi', 'ajojing', '0888888888', 0, 'jimi@gmail.com', 'jimi123', '1', '0'),
(95, 'g', 'o', '0817219643', 0, 'coba@gmail.com', '1234', '1', '0'),
(96, 'as', 'asd', '23124312', 0, '3423@gmail.com', 'ada', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_warna`
--

CREATE TABLE `tb_warna` (
  `id_warna` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jenis_warna` varchar(144) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_warna`
--

INSERT INTO `tb_warna` (`id_warna`, `id_produk`, `jenis_warna`) VALUES
(28, 25, 'Hitam'),
(29, 25, 'Biru'),
(30, 25, 'Merah'),
(31, 25, 'Kuning'),
(39, 26, 'Biru'),
(50, 29, 'Putih'),
(51, 29, 'Biru'),
(52, 29, 'Merah'),
(53, 29, 'Abu-abu'),
(54, 27, 'Biru'),
(55, 27, 'Biru Tua'),
(56, 30, 'Hitam'),
(57, 30, 'Putih'),
(58, 30, 'Biru'),
(59, 30, 'Kuning'),
(60, 30, 'Abu-abu'),
(61, 31, 'Hitam'),
(62, 31, 'Putih'),
(63, 31, 'Merah'),
(64, 31, 'Kuning'),
(69, 32, 'Hitam'),
(70, 32, 'Biru'),
(71, 32, 'Abu-abu'),
(72, 32, 'Biru Tua'),
(81, 33, 'Hitam'),
(82, 34, 'Hitam'),
(83, 34, 'Putih'),
(84, 34, 'Biru'),
(85, 34, 'Merah'),
(86, 34, 'Kuning'),
(87, 34, 'Hijau'),
(88, 34, 'Abu-abu'),
(89, 34, 'Biru Tua'),
(92, 35, 'Abu-abu'),
(93, 35, 'Biru Tua'),
(96, 24, 'Hitam'),
(97, 36, 'Hitam'),
(98, 36, 'Putih'),
(104, 37, 'Hitam'),
(105, 38, 'Hitam'),
(106, 38, 'Putih'),
(107, 38, 'Biru'),
(108, 38, 'Kuning'),
(109, 38, 'Abu-abu'),
(110, 38, 'Biru Tua'),
(111, 38, 'Pink'),
(117, 39, 'Hitam'),
(118, 40, 'Hitam'),
(119, 40, 'Putih'),
(120, 40, 'Biru'),
(121, 40, 'Biru Tua'),
(122, 41, 'Hitam'),
(123, 41, 'Putih'),
(124, 41, 'Biru'),
(125, 41, 'Kuning'),
(126, 41, 'Abu-abu'),
(127, 41, 'Pink'),
(128, 42, 'Hitam'),
(129, 42, 'Putih'),
(130, 42, 'Merah'),
(131, 42, 'Kuning'),
(132, 42, 'Abu-abu'),
(133, 42, 'Biru Tua'),
(134, 42, 'Pink'),
(135, 43, 'Hitam'),
(136, 43, 'Biru'),
(137, 43, 'Abu-abu'),
(138, 43, 'Biru Tua'),
(139, 44, 'Hitam'),
(140, 44, 'Putih'),
(141, 44, 'Biru'),
(142, 28, 'Hitam'),
(146, 45, 'Hitam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_chat`
--
ALTER TABLE `tb_chat`
  ADD PRIMARY KEY (`id_chat`),
  ADD KEY `id_room` (`id_room`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_diskon`
--
ALTER TABLE `tb_diskon`
  ADD PRIMARY KEY (`id_diskon`);

--
-- Indexes for table `tb_dt_diskon`
--
ALTER TABLE `tb_dt_diskon`
  ADD PRIMARY KEY (`id_dt_diskon`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_diskon` (`id_diskon`);

--
-- Indexes for table `tb_dt_transaksi`
--
ALTER TABLE `tb_dt_transaksi`
  ADD PRIMARY KEY (`id_dt_transaksi`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_warna` (`id_warna`),
  ADD KEY `id_ukuran` (`id_ukuran`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tb_gambar`
--
ALTER TABLE `tb_gambar`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tb_get_diskon`
--
ALTER TABLE `tb_get_diskon`
  ADD PRIMARY KEY (`id_get_diskon`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_kupon` (`id_kupon`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tb_kupon`
--
ALTER TABLE `tb_kupon`
  ADD PRIMARY KEY (`id_kupon`);

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tb_room`
--
ALTER TABLE `tb_room`
  ADD PRIMARY KEY (`id_room`);

--
-- Indexes for table `tb_topup`
--
ALTER TABLE `tb_topup`
  ADD PRIMARY KEY (`id_topup`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_ukuran`
--
ALTER TABLE `tb_ukuran`
  ADD PRIMARY KEY (`id_ukuran`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_warna`
--
ALTER TABLE `tb_warna`
  ADD PRIMARY KEY (`id_warna`),
  ADD KEY `id_produk` (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_chat`
--
ALTER TABLE `tb_chat`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tb_diskon`
--
ALTER TABLE `tb_diskon`
  MODIFY `id_diskon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_dt_diskon`
--
ALTER TABLE `tb_dt_diskon`
  MODIFY `id_dt_diskon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tb_dt_transaksi`
--
ALTER TABLE `tb_dt_transaksi`
  MODIFY `id_dt_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tb_gambar`
--
ALTER TABLE `tb_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tb_get_diskon`
--
ALTER TABLE `tb_get_diskon`
  MODIFY `id_get_diskon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_kupon`
--
ALTER TABLE `tb_kupon`
  MODIFY `id_kupon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tb_room`
--
ALTER TABLE `tb_room`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_topup`
--
ALTER TABLE `tb_topup`
  MODIFY `id_topup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tb_ukuran`
--
ALTER TABLE `tb_ukuran`
  MODIFY `id_ukuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tb_warna`
--
ALTER TABLE `tb_warna`
  MODIFY `id_warna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_chat`
--
ALTER TABLE `tb_chat`
  ADD CONSTRAINT `tb_chat_ibfk_1` FOREIGN KEY (`id_room`) REFERENCES `tb_room` (`id_room`),
  ADD CONSTRAINT `tb_chat_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_dt_diskon`
--
ALTER TABLE `tb_dt_diskon`
  ADD CONSTRAINT `tb_dt_diskon_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id_produk`),
  ADD CONSTRAINT `tb_dt_diskon_ibfk_2` FOREIGN KEY (`id_diskon`) REFERENCES `tb_diskon` (`id_diskon`);

--
-- Constraints for table `tb_dt_transaksi`
--
ALTER TABLE `tb_dt_transaksi`
  ADD CONSTRAINT `tb_dt_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `tb_transaksi` (`id_transaksi`),
  ADD CONSTRAINT `tb_dt_transaksi_ibfk_2` FOREIGN KEY (`id_warna`) REFERENCES `tb_warna` (`id_warna`),
  ADD CONSTRAINT `tb_dt_transaksi_ibfk_3` FOREIGN KEY (`id_ukuran`) REFERENCES `tb_ukuran` (`id_ukuran`),
  ADD CONSTRAINT `tb_dt_transaksi_ibfk_4` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id_produk`);

--
-- Constraints for table `tb_gambar`
--
ALTER TABLE `tb_gambar`
  ADD CONSTRAINT `tb_gambar_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id_produk`);

--
-- Constraints for table `tb_get_diskon`
--
ALTER TABLE `tb_get_diskon`
  ADD CONSTRAINT `tb_get_diskon_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`),
  ADD CONSTRAINT `tb_get_diskon_ibfk_2` FOREIGN KEY (`id_kupon`) REFERENCES `tb_kupon` (`id_kupon`);

--
-- Constraints for table `tb_komentar`
--
ALTER TABLE `tb_komentar`
  ADD CONSTRAINT `tb_komentar_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`),
  ADD CONSTRAINT `tb_komentar_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id_produk`);

--
-- Constraints for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD CONSTRAINT `tb_pembayaran_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `tb_transaksi` (`id_transaksi`);

--
-- Constraints for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD CONSTRAINT `tb_produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`);

--
-- Constraints for table `tb_topup`
--
ALTER TABLE `tb_topup`
  ADD CONSTRAINT `tb_topup_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `tb_transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_ukuran`
--
ALTER TABLE `tb_ukuran`
  ADD CONSTRAINT `tb_ukuran_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id_produk`);

--
-- Constraints for table `tb_warna`
--
ALTER TABLE `tb_warna`
  ADD CONSTRAINT `tb_warna_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
