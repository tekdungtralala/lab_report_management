-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2016 at 04:33 AM
-- Server version: 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbanalitik`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(70) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`, `foto`) VALUES
(8, 'root', '5f4dcc3b5aa765d61d8327deb882cf99', 'btpal.png');

-- --------------------------------------------------------

--
-- Table structure for table `analis`
--

CREATE TABLE `analis` (
  `id_analis` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analis`
--

INSERT INTO `analis` (`id_analis`, `nip`, `nama`) VALUES
(1, '19216882161316', 'Ajeng'),
(2, '192168821610001', 'Tya Agustiani');

-- --------------------------------------------------------

--
-- Table structure for table `disposisi`
--

CREATE TABLE `disposisi` (
  `id_dispo` int(11) NOT NULL,
  `tgl_dispo` date NOT NULL,
  `manager` varchar(50) NOT NULL,
  `penyelia` varchar(50) NOT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disposisi`
--

INSERT INTO `disposisi` (`id_dispo`, `tgl_dispo`, `manager`, `penyelia`, `keterangan`) VALUES
(1, '2016-11-10', 'Susi', 'Titin', 'Halo ini coba disposisi'),
(2, '2016-11-09', 'Susi S', 'Titin h', 'Halo coba disposisi 2dasd');

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE `officer` (
  `id` int(11) NOT NULL,
  `official_id` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`id`, `official_id`, `name`) VALUES
(1, '1234234fff', 'Petugas Satufff'),
(2, '123', 'Petugas Dua'),
(3, '4444', 'Petugas Empat');

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE `parameter` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id`, `name`, `unit`, `price`) VALUES
(9, 'Amonia', 'Kg', 10000),
(10, 'DHL (dhl)', 'Liter', 11010),
(11, 'Disolved Oxygen (DO)', 'Meter', 20000),
(12, 'Zat Padat Total Solid', 'Celcius', 1500),
(13, 'Fenol', 'Gram', 180923),
(14, 'Air Raksa', 'Ons', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `kode_plg` varchar(20) NOT NULL,
  `nama` text NOT NULL,
  `alamat` text NOT NULL,
  `hp` text NOT NULL,
  `email` text NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `kode_plg`, `nama`, `alamat`, `hp`, `email`, `ket`) VALUES
(50, 'AABB', 'samgong', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(51, 'bsbs', 'Tya', 'Pemalang', '08216561131da', 'rendikabolt@gmail.com', 'DADADADADAD'),
(52, 'AAbcccc', 'Rori Rosadi', 'Pemalang', '08216561131', 'run_dbolt@yahoo.co.id', 'DADADADADADgrgg'),
(53, 'AA', 'Rendi Handika', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(54, 'AABB', 'Ajeng', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(55, 'bsbs', 'Tya', 'Pemalang', '08216561131da', 'rendikabolt@gmail.com', 'DADADADADAD'),
(56, 'AAbcccc', 'Rori Rosadi', 'Pemalang', '08216561131', 'run_dbolt@yahoo.co.id', 'DADADADADADgrgg'),
(57, 'AA', 'Rendi Handika', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(58, 'AABB', 'Ajeng', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(59, 'bsbs', 'Tya', 'Pemalang', '08216561131da', 'rendikabolt@gmail.com', 'DADADADADAD'),
(60, 'AAbcccc', 'Rori Rosadi', 'Pemalang', '08216561131', 'run_dbolt@yahoo.co.id', 'DADADADADADgrgg'),
(61, 'AA', 'Rendi Handika', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(62, 'AABB', 'Ajeng', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(63, 'bsbs', 'Tya', 'Pemalang', '08216561131da', 'rendikabolt@gmail.com', 'DADADADADAD'),
(64, 'AAbcccc', 'Rori Rosadi', 'Pemalang', '08216561131', 'run_dbolt@yahoo.co.id', 'DADADADADADgrgg'),
(65, 'AA', 'Rendi Handika', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(66, 'AABB', 'Ajeng', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(67, 'bsbs', 'Tya', 'Pemalang', '08216561131da', 'rendikabolt@gmail.com', 'DADADADADAD'),
(68, 'AAbcccc', 'Rori Rosadi', 'Pemalang', '08216561131', 'run_dbolt@yahoo.co.id', 'DADADADADADgrgg'),
(69, 'AA', 'Rendi Handika', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(70, 'AABB', 'Ajeng', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(71, 'bsbs', 'Tya', 'Pemalang', '08216561131da', 'rendikabolt@gmail.com', 'DADADADADAD'),
(72, 'AAbcccc', 'Rori Rosadi', 'Pemalang', '08216561131', 'run_dbolt@yahoo.co.id', 'DADADADADADgrgg'),
(73, 'AA', 'Rendi Handika', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(74, 'AABB', 'Ajeng', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(75, 'bsbs', 'Tya', 'Pemalang', '08216561131da', 'rendikabolt@gmail.com', 'DADADADADAD'),
(76, 'AAbcccc', 'Rori Rosadi', 'Pemalang', '08216561131', 'run_dbolt@yahoo.co.id', 'DADADADADADgrgg'),
(77, 'AA', 'Rendi Handika', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(78, 'AABB', 'Ajeng', 'Pemalang', '08216561131', 'rendikabolt@gmail.com', 'DADADADADAD'),
(79, 'bsbs', 'Tya', 'Pemalang', '08216561131da', 'rendikabolt@gmail.com', 'DADADADADAD'),
(80, 'AAbcccc', 'Rori Rosadi', 'Pemalang', '08216561131', 'run_dbolt@yahoo.co.id', 'DADADADADADgrgg'),
(82, 'kode baru', 'nama baru', 'alamat baru', 'hp baru', 'email baru', 'keterangan baru'),
(83, 'wwt', 'Wiwit', 'alamat wiwit', '081', 'wiwit.aditya.saputra@gmail.com', 'wiwit note');

-- --------------------------------------------------------

--
-- Table structure for table `pps`
--

CREATE TABLE `pps` (
  `id` int(11) NOT NULL,
  `id_person` int(11) NOT NULL,
  `received_dt` date NOT NULL,
  `analisis_dt` date NOT NULL,
  `sample_condition` text NOT NULL,
  `sample_type` text NOT NULL,
  `total_sample` int(11) NOT NULL,
  `total_price` int(11) DEFAULT NULL,
  `json` text,
  `state` int(1) NOT NULL DEFAULT '1',
  `officer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pps`
--

INSERT INTO `pps` (`id`, `id_person`, `received_dt`, `analisis_dt`, `sample_condition`, `sample_type`, `total_sample`, `total_price`, `json`, `state`, `officer_id`) VALUES
(7, 50, '2016-12-24', '2016-12-30', 'Keruh', 'Gas', 1, 60001, '[{"number":1,"sampleCode":"sdf","parameters":[{"id":"1","name":"COD1","unit":"mgl1","price":"60001","quantity":1,"priceRp":"Rp 60.001,00","total":60001,"totalRp":"Rp 60.001,00"}]}]', 1, NULL),
(8, 83, '2016-12-06', '2016-12-07', 'Berwarna', 'Cair', 2, 403346, '[{"number":1,"sampleCode":"abcd123","parameters":[{"id":"12","name":"Zat Padat Total Solid","unit":"Celcius","price":"1500","quantity":3,"priceRp":"Rp 1.500,00","total":4500,"totalRp":"Rp 4.500,00"},{"id":"13","name":"Fenol","unit":"Gram","price":"180923","quantity":2,"priceRp":"Rp 180.923,00","total":361846,"totalRp":"Rp 361.846,00"},{"id":"9","name":"Amonia","unit":"Kg","price":"10000","quantity":1,"priceRp":"Rp 10.000,00","total":10000,"totalRp":"Rp 10.000,00"}]},{"number":2,"sampleCode":"abcd444","parameters":[{"id":"12","name":"Zat Padat Total Solid","unit":"Celcius","price":"1500","quantity":18,"priceRp":"Rp 1.500,00","total":27000,"totalRp":"Rp 27.000,00"}]}]', 3, 2),
(9, 58, '2016-11-29', '2016-12-08', 'Berwarna', 'Padat', 1, 192423, '[{"number":1,"sampleCode":"sdfdsf","parameters":[{"id":"13","name":"Fenol","unit":"Gram","price":"180923","quantity":1,"priceRp":"Rp 180.923,00","total":180923,"totalRp":"Rp 180.923,00","result":"111","method":"SNI 11111111111"},{"id":"9","name":"Amonia","unit":"Kg","price":"10000","quantity":1,"priceRp":"Rp 10.000,00","total":10000,"totalRp":"Rp 10.000,00","result":"222","method":"SNI 11111111111"},{"id":"12","name":"Zat Padat Total Solid","unit":"Celcius","price":"1500","quantity":1,"priceRp":"Rp 1.500,00","total":1500,"totalRp":"Rp 1.500,00","result":"3333","method":"SNI 3333333333333"}]}]', 4, 2),
(10, 53, '2016-12-01', '2016-12-02', 'Keruh', 'Padat', 1, 20000, '[{"number":1,"sampleCode":"sfddsf","parameters":[{"id":"11","name":"Disolved Oxygen (DO)","unit":"Meter","price":"20000","quantity":1,"priceRp":"Rp 20.000,00","total":20000,"totalRp":"Rp 20.000,00"}]}]', 3, 1),
(11, 53, '2016-12-14', '2016-12-08', 'Keruh', 'Cair', 2, 461846, '[{"number":1,"sampleCode":"1111","parameters":[{"id":"11","name":"Disolved Oxygen (DO)","unit":"Meter","price":"20000","quantity":4,"priceRp":"Rp 20.000,00","total":80000,"totalRp":"Rp 80.000,00"},{"id":"13","name":"Fenol","unit":"Gram","price":"180923","quantity":1,"priceRp":"Rp 180.923,00","total":180923,"totalRp":"Rp 180.923,00"},{"id":"9","name":"Amonia","unit":"Kg","price":"10000","quantity":1,"priceRp":"Rp 10.000,00","total":10000,"totalRp":"Rp 10.000,00"}]},{"number":2,"sampleCode":"3124123","parameters":[{"id":"13","name":"Fenol","unit":"Gram","price":"180923","quantity":1,"priceRp":"Rp 180.923,00","total":180923,"totalRp":"Rp 180.923,00"},{"id":"14","name":"Air Raksa","unit":"Ons","price":"10000","quantity":1,"priceRp":"Rp 10.000,00","total":10000,"totalRp":"Rp 10.000,00"}]}]', 3, 3),
(12, 57, '2016-11-30', '2016-12-08', 'Jernih', 'Cair', 1, 180923, '[{"number":1,"sampleCode":"sdfsdf","parameters":[{"id":"13","name":"Fenol","unit":"Gram","price":"180923","quantity":1,"priceRp":"Rp 180.923,00","total":180923,"totalRp":"Rp 180.923,00"}]}]', 2, NULL),
(13, 53, '2016-12-02', '2016-12-02', 'Jernih', 'Cair', 3, 294933, '[{"number":1,"sampleCode":"111","parameters":[{"id":"14","name":"Air Raksa","unit":"Ons","price":"10000","quantity":1,"priceRp":"Rp 10.000,00","total":10000,"totalRp":"Rp 10.000,00"},{"id":"11","name":"Disolved Oxygen (DO)","unit":"Meter","price":"20000","quantity":1,"priceRp":"Rp 20.000,00","total":20000,"totalRp":"Rp 20.000,00"},{"id":"12","name":"Zat Padat Total Solid","unit":"Celcius","price":"1500","quantity":1,"priceRp":"Rp 1.500,00","total":1500,"totalRp":"Rp 1.500,00"}]},{"number":2,"sampleCode":"222","parameters":[{"id":"11","name":"Disolved Oxygen (DO)","unit":"Meter","price":"20000","quantity":1,"priceRp":"Rp 20.000,00","total":20000,"totalRp":"Rp 20.000,00"},{"id":"9","name":"Amonia","unit":"Kg","price":"10000","quantity":1,"priceRp":"Rp 10.000,00","total":10000,"totalRp":"Rp 10.000,00"}]},{"number":3,"sampleCode":"333","parameters":[{"id":"13","name":"Fenol","unit":"Gram","price":"180923","quantity":1,"priceRp":"Rp 180.923,00","total":180923,"totalRp":"Rp 180.923,00"},{"id":"10","name":"DHL (dhl)","unit":"Liter","price":"11010","quantity":1,"priceRp":"Rp 11.010,00","total":11010,"totalRp":"Rp 11.010,00"},{"id":"9","name":"Amonia","unit":"Kg","price":"10000","quantity":1,"priceRp":"Rp 10.000,00","total":10000,"totalRp":"Rp 10.000,00"},{"id":"14","name":"Air Raksa","unit":"Ons","price":"10000","quantity":1,"priceRp":"Rp 10.000,00","total":10000,"totalRp":"Rp 10.000,00"},{"id":"12","name":"Zat Padat Total Solid","unit":"Celcius","price":"1500","quantity":1,"priceRp":"Rp 1.500,00","total":1500,"totalRp":"Rp 1.500,00"},{"id":"11","name":"Disolved Oxygen (DO)","unit":"Meter","price":"20000","quantity":1,"priceRp":"Rp 20.000,00","total":20000,"totalRp":"Rp 20.000,00"}],"hideAddBtn":true}]', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `test_methods`
--

CREATE TABLE `test_methods` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_methods`
--

INSERT INTO `test_methods` (`id`, `name`) VALUES
(1, 'SNI 11111111111'),
(2, 'SNI 2222222222222'),
(3, 'SNI 3333333333333');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analis`
--
ALTER TABLE `analis`
  ADD PRIMARY KEY (`id_analis`);

--
-- Indexes for table `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id_dispo`);

--
-- Indexes for table `officer`
--
ALTER TABLE `officer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pps`
--
ALTER TABLE `pps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_person` (`id_person`);

--
-- Indexes for table `test_methods`
--
ALTER TABLE `test_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `analis`
--
ALTER TABLE `analis`
  MODIFY `id_analis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id_dispo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `officer`
--
ALTER TABLE `officer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `pps`
--
ALTER TABLE `pps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `test_methods`
--
ALTER TABLE `test_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pps`
--
ALTER TABLE `pps`
  ADD CONSTRAINT `pps_ibfk_1` FOREIGN KEY (`id_person`) REFERENCES `pelanggan` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
