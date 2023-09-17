-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2023 at 12:56 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `persediaan_kreatif`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` char(7) NOT NULL,
  `corak_kain` varchar(10) NOT NULL,
  `stok` int(3) NOT NULL,
  `satuan_id` int(5) NOT NULL,
  `jenis_id` int(10) NOT NULL,
  `no_benang` varchar(30) NOT NULL,
  `kontruksi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `corak_kain`, `stok`, `satuan_id`, `jenis_id`, `no_benang`, `kontruksi`) VALUES
('B000001', 'P-GG 015 A', 41, 1, 8, 'COTTON 40 X COTTON 30', '110X72X59\"'),
('B000002', 'P-GG 015 B', 67, 1, 8, 'COTTON 40 X RAYON 40', '110X72X59\"'),
('B000003', 'P-GG 015 C', 23, 1, 9, 'RAYON 30 X DTY 100-96HIM', '110X72X59\"'),
('B000004', 'P-HNL 003 ', 42, 1, 8, 'COTTON 50 X NYLON 100', '120X60X59\"'),
('B000005', 'P-STL 115 ', 40, 2, 11, 'DTY 100-96 SIM X COTTON 30', '84x56x58\"'),
('B000006', 'P-STL 115 ', 27, 2, 9, 'RAYON 30 X DTY 100-96HIM', '84x56x58\"'),
('B000007', 'P-AVATEX 0', 38, 1, 8, 'COTTON 40 X RAYON 40', '133x72x59\"'),
('B000008', 'P-MGF 002 ', 23, 1, 8, 'COTTON 21 X COTTON 21', '90X60X58\"'),
('B000009', 'P-STL 042 ', 30, 2, 14, 'LIVAECO 30 X LIVAECO 30', '115X78X59\"'),
('B000010', 'P-STL 114 ', 70, 2, 14, 'LIVAECO 30 X RAYON 30', '110X72X59'),
('B000011', 'P-BRL 05 A', 30, 1, 8, 'COTTON 40 X COTTON 10', '84x56x58\"'),
('B000012', 'P-BRL 05 B', 30, 1, 8, 'COTTON 40X RAYON 20 SLUB', '84x56x58\"'),
('B000013', 'P-BRL 05 C', 1032, 1, 8, 'COTTON 40 X RAYON 40', '120X60X59\"'),
('B000014', 'P-TRG 049 ', 90, 1, 11, 'PE 30 X COTTON 10', '100X54X59\"'),
('B000015', 'P-TRG 049 ', 87, 1, 9, 'RAYON 30 X PE 30', '100X54X59\"'),
('B000016', 'P-TC 001 A', 43, 1, 11, 'TC 45 X TC 45', '133X72X59\"'),
('B000017', 'P-TC 001 C', 1069, 1, 11, 'TC 45 X RAYON 30', '133x72x59\"'),
('B000018', 'P-KY 52 A', 10, 1, 8, 'COTTON 50 X NYLON 100', '110X72X59'),
('B000019', 'P-KY 52 B', 95, 1, 10, 'TENCEL 30 X NYLON 100', '110X72X59'),
('B000020', 'P-KY 53 A', 82, 1, 10, 'TENCEL 80 X TENCEL 80 ', '120X60X59\"'),
('B000021', 'P-KY 53 C', 70, 1, 13, 'ECOVERO 60 X COTTON 60', '110X72X59'),
('B000022', 'P-KY 53 D', 90, 1, 8, 'COTTON 50 X COTTON 50', '150X60X59\"'),
('B000023', 'DEV 550', 55, 2, 8, 'COTTON 50 X COTTON 50', '110X72X59\"'),
('B000024', 'UNT 119', 77, 2, 8, 'COTTON 40 X COTTON 10', '90X60X58\"'),
('B000025', 'MJ 38', 43, 1, 11, 'DTY 100-96 SIM X RY 24 HT\"Z\"', '110X72X59'),
('B000026', 'DEV 009 G1', 60, 2, 14, 'LIVAECO 30 X LIVAECO 30', '90X60X58\"'),
('B000027', 'DEV 009 G2', 55, 2, 14, 'LIVAECO 30 X RAYON 30', '90X60X58\"'),
('B000028', 'P-KY 59 G', 54, 1, 11, 'CVC 45 X CVC 45', '110X72X59\"'),
('B000029', 'P-KY 59 C', 53, 1, 11, 'CVC 45 X PE 30 ', '110X72X59\"'),
('B000030', 'DEV 900 A', 90, 2, 8, 'COTTON 40 X COTTON 40', '133x72x59\"'),
('B000031', 'DEV 007K-3', 87, 2, 8, 'COTTON 30 X PSY 100-40D', '110X70X59\"'),
('B000032', 'P-STL 127 ', 30, 2, 9, 'RY 30 X RY HT\"Z\"', '84x56x58\"'),
('B000033', 'KRML 157', 35, 1, 8, 'COTTON 40 X COTTON 40', '110X72X59\"'),
('B000034', 'SMT 0004', 90, 1, 10, 'TENCEL 30 X TENCEL 30', '90X60X58\"'),
('B000035', 'WAK 525', 27, 1, 8, 'COTTON 40 X RAYON 30', '100X78X59\"'),
('B000036', 'WAK 508', 55, 1, 8, 'COTTON 40 X RAYON 30', '100X78X59\"'),
('B000037', 'WAK 583', 30, 1, 8, 'COTTON 40 X RAYON 40', '100X78X59\"'),
('B000038', 'P-HNL 005 ', 46, 1, 11, 'PE 30 X NYLON 100', '110X72X59'),
('B000039', 'P-HNL 005 ', 60, 1, 9, 'RAYON 30 X DTY 100-96HIM', '110X72X59'),
('B000040', 'P-HNL 005 ', 40, 1, 8, 'COTTON 50 X NYLON 100', '110X72X59'),
('IP-0041', 'DEV 509', 100, 2, 8, 'COTTON 50 X NYLON 100', '110X72X59');

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_kain_keluar` char(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` char(7) NOT NULL,
  `jumlah_keluar` int(3) NOT NULL,
  `nama_customer` varchar(15) DEFAULT NULL,
  `marketing` text NOT NULL,
  `tanggal_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_kain_keluar`, `user_id`, `barang_id`, `jumlah_keluar`, `nama_customer`, `marketing`, `tanggal_keluar`) VALUES
('BK-23091800001', 20, 'B000016', 3, 'Unitka', 'Pak Effin', '2023-09-18'),
('BK-23091800002', 20, 'B000018', 4, 'Unitka', 'PAK EFFIN', '2023-09-18'),
('BK-23091800003', 20, 'B000014', 5, 'Eiger', 'Ibu Tya ', '2023-08-29'),
('BK-23091800004', 20, 'B000019', 7, 'Stylem', 'BU DIAN ', '2023-08-11');

--
-- Triggers `barang_keluar`
--
DELIMITER $$
CREATE TRIGGER `update_stok_keluar` BEFORE INSERT ON `barang_keluar` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` - NEW.jumlah_keluar WHERE `barang`.`id_barang` = NEW.barang_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_kain_masuk` char(15) NOT NULL,
  `nama_supplier` varchar(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` char(7) NOT NULL,
  `jumlah_masuk` int(3) NOT NULL,
  `penyimpanan` varchar(10) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_kain_masuk`, `nama_supplier`, `user_id`, `barang_id`, `jumlah_masuk`, `penyimpanan`, `tanggal_masuk`) VALUES
('BM-23081700001', '2', 14, 'B000023', 10, 'PALLET CEL', '2023-08-08'),
('BM-23081900001', '1', 14, 'B000001', 10, 'PALLET CEL', '2023-08-19'),
('BM-23082200001', '8', 14, 'B000017', 8, 'Cell 01', '2023-08-22'),
('BM-23082300002', 'Cv. Serayu', 14, 'B000015', 6, 'PALLET CEL', '2023-08-23'),
('BM-23082300003', 'Cv. Serayu', 14, 'B000017', 6, 'PALLET CEL', '2023-08-23'),
('BM-23082300004', 'Cv. Serayu', 14, 'B000017', 6, 'PALLET CEL', '2023-08-23'),
('BM-23082300005', 'Cv. Serayu', 14, 'B000014', 6, 'PALLET CEL', '2023-08-23'),
('BM-23082300006', 'Cv. Serayu', 14, 'B000017', 6, 'PALLET CEL', '2023-08-23'),
('BM-23082300007', 'Cv. Serayu', 14, 'B000016', 7, 'PALLET CEL', '2023-08-23'),
('BM-23082300008', 'Cv. Serayu', 14, 'B000017', 3, 'PALLET CEL', '2023-08-23'),
('BM-23082300009', 'Cv. Serayu', 14, 'B000020', 9, 'Cell 01', '2023-08-23'),
('BM-23082300010', 'Cv. Serayu', 14, 'B000001', 20, 'Cell 01', '2023-08-23'),
('BM-23082500001', 'Cv. Serayu', 14, 'B000017', 67, '', '2023-08-25'),
('BM-23082500002', 'Cv. Serayu', 14, 'B000016', 6, 'Cell 01', '2023-08-25'),
('BM-23082500003', 'Cv. Serayu', 14, 'B000017', 4, 'Cell 01', '2023-08-25'),
('BM-23082500004', 'Cv. Serayu', 14, 'B000017', 8, 'PALLET CEL', '2023-08-25'),
('BM-23082500005', 'Cv. Serayu', 14, 'B000018', 50, 'PALLET CEL', '2023-08-25'),
('BM-23082500006', 'Cv. Serayu', 14, 'B000018', 90, '', '2023-08-25'),
('BM-23082500007', 'Cv. Serayu', 14, 'B000017', 9, 'GRUP B', '2023-08-25'),
('BM-23082500008', 'Cv. Serayu', 14, 'B000021', 9, 'PALLET CEL', '2023-08-25'),
('BM-23082500009', 'Cv. Serayu', 14, 'B000017', 5, 'Cell 01', '2023-08-25'),
('BM-23082500010', 'Cv. Serayu', 14, 'B000017', 90, 'PALLET CEL', '2023-08-25'),
('BM-23082500011', 'Cv. Serayu', 14, 'B000015', 5, 'PALLET CEL', '2023-08-25'),
('BM-23082500012', 'Pt. Indo Pa', 14, 'B000014', 9, 'Cell 01', '2023-08-25'),
('BM-23082500013', 'Pt. Indo Pa', 14, 'B000001', 9, 'PALLET CEL', '2023-08-25'),
('BM-23082500014', 'Cv. Serayu', 14, 'B000016', 6, 'GRUP B', '2023-08-25'),
('BM-23082500015', 'Cv. Serayu', 14, 'B000021', 5, 'GRUP B', '2023-08-25'),
('BM-23082500016', 'Pt. Indo Pa', 14, 'B000013', 1000, 'PALLET CEL', '2023-08-25'),
('BM-23082500017', 'Pt. Indo Pa', 14, 'B000017', 800, 'PALLET CEL', '2023-08-25'),
('BM-23082500018', 'Pt. Indo Pa', 14, 'B000019', 90, 'PALLET CEL', '2023-08-25'),
('BM-23082500019', 'Cv. Serayu', 14, 'B000015', 8, 'PALLET CEL', '2023-08-25'),
('BM-23082500020', 'Cv. Serayu', 14, 'B000017', 7, 'PALLET CEL', '2023-08-25'),
('BM-23082600001', 'Cv. Serayu', 14, 'B000020', 8, '', '2023-08-26'),
('BM-23082700001', 'Cv. Serayu', 14, 'B000018', 4, 'PALLET CEL', '2023-08-27'),
('BM-23082700002', 'Cv. Serayu', 14, 'B000017', 5, 'PALLET CEL', '2023-08-27'),
('BM-23082700003', 'Cv. Serayu Jaya', 20, 'IP-0041', 100, 'PALLET CEL', '2023-08-27'),
('BM-23082800001', 'SG-0001', 20, 'B000018', 10, 'PALLET CEL', '2023-08-28'),
('BM-23091800001', 'SG-0001', 20, 'B000015', 23, 'Cell 01', '2023-09-18'),
('KM-23081700001', '1', 14, 'B000001', 30, 'PALLET CEL', '2023-05-09'),
('KM-23081700002', '1', 14, 'B000002', 28, 'PALLET CEL', '2023-05-09'),
('KM-23081700003', '1', 14, 'B000003', 31, 'PALLET CEL', '2023-05-09'),
('KM-23081700004', '2', 14, 'B000004', 50, 'PALLET CEL', '2023-05-12'),
('KM-23081700005', '3', 14, 'B000007', 58, 'PALLET CEL', '2023-05-25'),
('KM-23081700006', '1', 14, 'B000009', 37, 'PALLET CEL', '2023-05-30'),
('KM-23081700007', '1', 14, 'B000010', 101, 'PALLET CEL', '2023-05-30'),
('KM-23081700008', '3', 14, 'B000011', 42, 'PALLET CEL', '2023-05-31'),
('KM-23081700009', '3', 14, 'B000012', 30, 'PALLET CEL', '2023-05-31'),
('KM-23081700010', '3', 14, 'B000013', 32, 'PALLET CEL', '2023-05-31'),
('KM-23081700011', '1', 14, 'B000005', 40, 'PALLET CEL', '2023-05-22'),
('KM-23081700012', '3', 14, 'B000008', 30, 'PALLET CEL', '2023-05-25'),
('KM-23081700013', '1', 14, 'B000006', 32, 'PALLET CEL', '2023-08-17'),
('KM-23081700014', '2', 14, 'B000014', 100, 'PALLET CEL', '2023-06-02'),
('KM-23081700015', '2', 14, 'B000015', 45, 'PALLET CEL', '2023-06-02'),
('KM-23081700016', '3', 14, 'B000016', 35, 'PALLET CEL', '2023-06-06'),
('KM-23081700017', '3', 14, 'B000017', 55, 'PALLET CEL', '2023-06-13'),
('KM-23081700018', '2', 14, 'B000018', 60, 'PALLET CEL', '2023-06-14'),
('KM-23081700019', '2', 14, 'B000019', 33, 'PALLET CEL', '2023-06-14'),
('KM-23081700020', '2', 14, 'B000020', 65, 'PALLET CEL', '2023-06-16'),
('KM-23081700021', '2', 14, 'B000022', 90, 'PALLET CEL', '2023-06-16'),
('KM-23081700022', '1', 14, 'B000023', 45, 'PALLET CEL', '2023-06-20'),
('KM-23081700023', '1', 14, 'B000024', 77, 'PALLET CEL', '2023-06-22'),
('KM-23081700024', '1', 14, 'B000025', 43, 'PALLET CEL', '2023-06-26'),
('KM-23081700025', '2', 14, 'B000026', 60, 'PALLET CEL', '2023-06-29'),
('KM-23081700026', '2', 14, 'B000031', 87, 'PALLET CEL', '2023-06-29'),
('KM-23081700027', '1', 14, 'B000002', 53, 'PALLET CEL', '2023-06-29'),
('KM-23081700028', '2', 14, 'B000027', 55, 'PALLET CEL', '2023-08-17'),
('KM-23081700029', '2', 14, 'B000030', 90, 'PALLET CEL', '2023-07-05'),
('KM-23081700030', '1', 14, 'B000021', 65, 'PALLET CEL', '2023-07-06'),
('KM-23081700031', '1', 14, 'B000029', 65, 'PALLET CEL', '2023-07-07'),
('KM-23081700032', '1', 14, 'B000028', 54, 'PALLET CEL', '2023-07-10'),
('KM-23081700033', '1', 14, 'B000033', 35, 'PALLET CEL', '2023-07-11'),
('KM-23081700034', '2', 14, 'B000038', 55, 'PALLET CEL', '2023-07-12'),
('KM-23081700035', '1', 14, 'B000039', 60, 'PALLET CEL', '2023-07-17'),
('KM-23081700036', '1', 14, 'B000040', 40, 'PALLET CEL', '2023-07-14'),
('KM-23081700037', '1', 14, 'B000032', 30, 'PALLET CEL', '2023-07-19'),
('KM-23081700038', '4', 14, 'B000034', 90, 'PALLET CEL', '2023-07-20'),
('KM-23081700039', '1', 14, 'B000036', 55, 'PALLET CEL', '2023-08-02'),
('KM-23081700040', '1', 14, 'B000035', 33, 'PALLET CEL', '2023-08-17'),
('KM-23081700041', '1', 14, 'B000037', 30, 'PALLET CEL', '2023-08-17');

--
-- Triggers `barang_masuk`
--
DELIMITER $$
CREATE TRIGGER `update_stok_masuk` BEFORE INSERT ON `barang_masuk` FOR EACH ROW UPDATE `barang` SET `barang`.`stok` = `barang`.`stok` + NEW.jumlah_masuk WHERE `barang`.`id_barang` = NEW.barang_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` char(8) CHARACTER SET utf8 NOT NULL,
  `nama_customer` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `no_telp` varchar(12) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `no_telp`, `alamat`) VALUES
('Cust-001', 'Stylem', '622147483647', 'Kawasan Pergudangan Bizpark Co'),
('Cust-002', 'Mgf', '622147483647', 'Sampoerna Strategic Square Sou'),
('Cust-004', 'Unitka', '622129044180', 'Ratu Plaza Office Tower 30th f'),
('Cust-005', 'Eiger', '622129053317', 'JL.SULTAN ISKANDAR MUDA NO.8 P');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(3) NOT NULL,
  `nama_jenis` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`) VALUES
(8, 'COTTON'),
(9, 'RAYON'),
(10, 'TENCEL'),
(11, 'POLYESTER'),
(13, 'ECOVERO'),
(14, 'LIVAECO');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` int(3) NOT NULL,
  `nama_satuan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`) VALUES
(1, 'Yard'),
(2, 'Meter');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` char(11) NOT NULL,
  `nama_supplier` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `no_telp` varchar(12) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supply`
--

CREATE TABLE `supply` (
  `id_supply` char(7) NOT NULL,
  `nama_supplier` varchar(15) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supply`
--

INSERT INTO `supply` (`id_supply`, `nama_supplier`, `no_telp`, `alamat`) VALUES
('SG-0001', 'Cv. Serayu Jaya', '62225951217', '47 / 69 Jl. Raya Laswi Majalay'),
('SG-0002', 'Pt. Indo Pacifi', '62225951217', 'jl.laswo no.1 desa.biru kec ma'),
('SG-0003', 'Duniatex', '6222 595 121', 'Jl. Raya Palur Km 7,1 Karangan'),
('SG-0004', 'BNP Textile', '62 22 603563', 'Jl. Industri 2 no 18 Leuwigaja');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `role` enum('gudang','admin') NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` int(11) NOT NULL,
  `foto` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `no_telp`, `role`, `password`, `created_at`, `foto`, `is_active`) VALUES
(1, 'Adminisitrator', 'admin', 'admin@admin.com', '025123456789', 'admin', '$2y$10$wMg', 1568689561, 0, 1),
(14, 'Deden Nuryadi', 'deden', 'dedennuryadi440@gmail.com', '081414141894', 'admin', '$2y$10$LQq', 1688687839, 0, 1),
(17, 'deden', 'dedennuryadi', 'dedennuryadi07@gmail.com', '081414141894', 'admin', '$2y$10$6Eg', 1693140071, 0, 1),
(18, 'denden', 'denden', 'denden07@gmail.com', '085688772972', 'admin', '$2y$10$/Un', 1693140743, 1, 1),
(20, 'rikeu', 'rikeu', 'rikeu07@gmail.com', '081414141894', 'admin', '$2y$10$mg74MGSPGV0btMnePEwDaeL7AZkavKmVpaJ4C4bEsikBykO.ZWHRu', 1693140928, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`) USING BTREE,
  ADD KEY `satuan_id` (`satuan_id`),
  ADD KEY `kategori_id` (`jenis_id`);

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_kain_keluar`),
  ADD KEY `id_user` (`user_id`),
  ADD KEY `barang_id` (`barang_id`),
  ADD KEY `nama_customer` (`nama_customer`),
  ADD KEY `nama_customer_2` (`nama_customer`),
  ADD KEY `nama_customer_3` (`nama_customer`),
  ADD KEY `nama_customer_4` (`nama_customer`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_kain_masuk`),
  ADD KEY `id_user` (`user_id`),
  ADD KEY `barang_id` (`barang_id`),
  ADD KEY `id_supply` (`nama_supplier`) USING BTREE;

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `nama_customer` (`nama_customer`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`),
  ADD KEY `nama_supplier` (`nama_supplier`),
  ADD KEY `nama_supplier_2` (`nama_supplier`);

--
-- Indexes for table `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`id_supply`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id_satuan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id_satuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD CONSTRAINT `barang_keluar_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_keluar_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_keluar_ibfk_3` FOREIGN KEY (`nama_customer`) REFERENCES `customer` (`nama_customer`);

--
-- Constraints for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `barang_masuk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_masuk_ibfk_3` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`nama_supplier`) REFERENCES `barang_masuk` (`nama_supplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
