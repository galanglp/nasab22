-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 25, 2015 at 05:39 AM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nasab`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataanak`
--

CREATE TABLE IF NOT EXISTS `dataanak` (
  `id_anak` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  PRIMARY KEY (`id_anak`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataanak`
--

INSERT INTO `dataanak` (`id_anak`, `username`) VALUES
('51052201', 'galang'),
('12205150', 'yusdianto'),
('20125150', 'lia'),
('05150212', 'qomar');

-- --------------------------------------------------------

--
-- Table structure for table `dataayah`
--

CREATE TABLE IF NOT EXISTS `dataayah` (
  `id_ayah` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  PRIMARY KEY (`id_ayah`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataayah`
--

INSERT INTO `dataayah` (`id_ayah`, `username`) VALUES
('15052012', 'galang'),
('10550221', 'yusdianto'),
('10202155', 'lia'),
('01521025', 'qomar');

-- --------------------------------------------------------

--
-- Table structure for table `datadiri`
--

CREATE TABLE IF NOT EXISTS `datadiri` (
  `username` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kelamin` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL,
  `rwyt_pnykit` varchar(100) NOT NULL,
  `pnddkn_trkhir` varchar(100) NOT NULL,
  `goldar` varchar(2) NOT NULL,
  `status_pernikahan` varchar(20) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `id_ayah` varchar(10) DEFAULT NULL,
  `id_anak` varchar(10) DEFAULT NULL,
  `id_istri` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datadiri`
--

INSERT INTO `datadiri` (`username`, `nama`, `tempat_lahir`, `tgl_lahir`, `kelamin`, `alamat`, `desa`, `kecamatan`, `kota`, `provinsi`, `agama`, `kewarganegaraan`, `rwyt_pnykit`, `pnddkn_trkhir`, `goldar`, `status_pernikahan`, `telepon`, `email`, `id_ayah`, `id_anak`, `id_istri`) VALUES
('qomar', 'qomaruddin', 'ponorogo', '1965-01-17', 'Laki-laki', 'jl. sekar harum no 6', 'tonatan', 'ponorogo', 'ponorogo', 'jawa timur', 'Islam', 'wni', 'asma', 'S3', 'A', 'Status Pernikahan', '098858891', 'qomar@gmail.com', '', '12205150', ''),
('yusdianto', 'yusdianto', 'PONOROGO', '1965-07-16', 'Laki-laki', 'jl. sekar harum 6', 'tonatan', 'ponorogo', 'ponorogo', 'jawa timur', 'Islam', 'wni', 'asma', 'S3', 'O', 'Sudah', '085649767038', 'yusdianto@gmail.com', '01521025', '51052201', '15520021'),
('lia', 'lina haliya', 'PONOROGO', '1965-12-08', 'Perempuan', 'jl. sekar harum no 6', 'tonatan', 'ponorogo', 'ponorogo', 'jawa timur', 'Islam', 'wni', 'asma', 'S3', 'AB', 'Sudah', '081663786921', 'li@gmail.com', '', '51052201', '50121025'),
('galang', 'Galang Luhur Pekerti', 'PONOROGO', '1994-12-08', 'Laki-laki', 'jl. sekar harum no 6', 'tonatan', 'ponorogo', 'ponorogo', 'jawa timur', 'Islam', 'wni', 'asma', 'S3', 'B', 'Belum', '087751800073', 'galnglp@gmail.com', '10550221', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dataistri`
--

CREATE TABLE IF NOT EXISTS `dataistri` (
  `id_istri` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  PRIMARY KEY (`id_istri`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataistri`
--

INSERT INTO `dataistri` (`id_istri`, `username`) VALUES
('10551202', 'galang'),
('50121025', 'yusdianto'),
('15520021', 'lia'),
('00511252', 'qomar');

-- --------------------------------------------------------

--
-- Table structure for table `datauser`
--

CREATE TABLE IF NOT EXISTS `datauser` (
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datauser`
--

INSERT INTO `datauser` (`username`, `password`) VALUES
('lia', 'eccbc87e4b5ce2fe28308fd9f2a7baf3'),
('yusdianto', 'c81e728d9d4c2f636f067f89cc14862c'),
('galang', 'c4ca4238a0b923820dcc509a6f75849b'),
('qomar', 'a87ff679a2f3e71d9181a67b7542122c');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE IF NOT EXISTS `galeri` (
  `id_foto` int(11) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(200) NOT NULL,
  `file_gambar` varchar(200) NOT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `galeri`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
