-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2022 at 03:34 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Agus Supriyanto', 'kang@gmail.com', '$2y$10$JS272szBP5GVkNsAnT3JjeHyXAZgyNu8JAxZ1ZzFPN/5rsXG2ODR6');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(128) NOT NULL DEFAULT 'default.jpg',
  `url` varchar(100) NOT NULL,
  `counter` int(3) NOT NULL,
  `date_created` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `title`, `content`, `image`, `url`, `counter`, `date_created`, `category_id`) VALUES
(9, 'setu', 'sdhakjdaskjfhajsfhakjfhasf', 'bagirang.png', 'setu_ID', 0, 1661847964, 21),
(10, 'Edukasi Stunting', '<h5 xss=removed>Kondisi\r\ngagal\r\ntumbuh akibat\r\nkekurangan  gizi kronis\r\ndan\r\nstimulasi psikososial\r\nserta  paparan infeksi berulang terutama\r\ndalam<br>1.000\r\nHari Pertama Kehidupan (HPK)\r\n-  biasa disebut\r\nperawakan pendek.<br>Stunting\r\nadalah keadaan dimana balita memiliki panjang atau tinggi badan yang\r\nkurang jika dibandingkan dengan umur sebayanya<br>Kondisi ini diukur dengan panjang atau tinggi badan yang\r\nlebih dari\r\nminus dua standar deviasi median standar pertumbuhan anak dari WHO. </h5><p>\r\n\r\n</p><p xss=removed></p><p xss=removed>\r\n\r\n\r\n\r\n</p>', 'bagirang.png', 'Edukasi-Stunting_ID', 0, 1661866981, 23);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(21, 'Potensi Desa'),
(23, 'Artikel');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `berkas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `title`, `berkas`) VALUES
(22, 'Aplikasi Elsimil Ebook', 'aplikasi-elsimil.pdf'),
(23, 'Ebook Stunting', 'Buku_Saku_Stunting.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `galery` text NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`id`, `title`, `keterangan`, `galery`, `date_created`) VALUES
(5, 'ashdjsahd', 'sadasdasda', 'default.jpg', 1661855459),
(6, 'sasdasdasd', 'asdasdasdasdasdasdasdasdasdasd', 'default.jpg', 1661856910),
(7, 'zzzzzzzzzzzzzzzz', 'xxxxxxxxxxxxxxxxx', 'default.jpg', 1661857246);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `icon`, `is_active`) VALUES
(5, 'Dashboard', 'admin/dashboard', 'glyphicon glyphicon-home', 1),
(6, 'Kategori', 'admin/kategori', 'glyphicon glyphicon-tasks', 1),
(7, 'Artikel', 'admin/artikel', 'glyphicon glyphicon-pencil', 1),
(8, 'Potensi desa', 'admin/potensidesa', 'glyphicon glyphicon-send', 1),
(10, 'Penduduk', 'admin/penduduk', 'glyphicon glyphicon-user', 1),
(11, 'Download', 'admin/download', 'glyphicon glyphicon-save', 1),
(12, 'Galery', 'admin/galery', 'glyphicon glyphicon-hd-video', 1),
(50, 'Management menu', 'admin/menu', 'glyphicon glyphicon-wrench', 1);

-- --------------------------------------------------------

--
-- Table structure for table `opini`
--

CREATE TABLE `opini` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `image` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `date_created` int(11) NOT NULL,
  `counter` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE `penduduk` (
  `nik` char(16) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `gender` enum('Pria','Wanita') NOT NULL,
  `usia` int(11) NOT NULL,
  `rt` int(1) NOT NULL,
  `dusun` varchar(50) NOT NULL,
  `pendidikan` varchar(25) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`nik`, `nama`, `gender`, `usia`, `rt`, `dusun`, `pendidikan`, `pekerjaan`) VALUES
('7404106502990003', 'Wa Rani', 'Wanita', 20, 1, 'Ngapaompu', 'SLTA/Sederajat', 'Pelajar/Mahasiswa'),
('7404106611760001', 'Wa Siti Rukiah', 'Wanita', 43, 1, 'Ngapaompu', 'Tamat SD/Sederajat', 'Mengurus Rumah Tangga');

-- --------------------------------------------------------

--
-- Table structure for table `potensidesa`
--

CREATE TABLE `potensidesa` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(128) NOT NULL,
  `counter` int(3) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `potensidesa`
--

INSERT INTO `potensidesa` (`id`, `title`, `content`, `image`, `counter`, `date_created`) VALUES
(1, 'asd', '<p>sadasdsadas</p>', 'default.jpg', 0, 1660323660);

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `profil` text NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `judul`, `profil`, `date_created`) VALUES
(1, 'Profil Desa Randobawagirang', '<p class="MsoBodyText" xss="removed"><span lang="id">Pentingnya<span xss="removed"> </span>memahami<span xss="removed"> </span>kondisi<span xss="removed">\r\n</span>desa<span xss="removed"> </span>untuk<span xss="removed"> </span>mengetahui<span xss="removed"> </span>kaitannya<span xss="removed"> </span>dengan<span xss="removed"> </span>perencanaan dengan muatan pendukung dan\r\npermasalahan yang ada memberikan<span xss="removed"> </span>arti<span xss="removed"> </span>penting<span xss="removed">\r\n</span>keputusan<span xss="removed"> </span>pembangunan<span xss="removed"> </span>sebagai<span xss="removed">\r\n</span>langkah<span xss="removed"> </span>pendayagunaan<span xss="removed"> </span>serta<span xss="removed"> </span>penyelesaian<span xss="removed"> </span>masalah<span xss="removed">\r\n</span>yang<span xss="removed"> </span>timbul di masyarakat.<o></o></span></p>\r\n\r\n<p class="MsoBodyText" xss="removed"><span lang="id">Desa<span xss="removed"> </span>Randobawagirang<span xss="removed"> </span>salah<span xss="removed"> </span>satu<span xss="removed"> </span>dari<span xss="removed"> </span>12<span xss="removed"> </span>desa<span xss="removed"> </span>yang<span xss="removed"> </span>ada<span xss="removed"> </span>di<span xss="removed"> </span>kecamatan<span xss="removed">\r\n</span>mandirancang<span xss="removed"> </span>yang<span xss="removed"> </span>terletak<span xss="removed">\r\n</span>kurang<span xss="removed"> </span>lebih<span xss="removed"> </span>5<span xss="removed"> </span>km<span xss="removed"> </span>ke<span xss="removed"> </span>arah<span xss="removed"> </span>utara<span xss="removed"> </span>dari<span xss="removed"> </span>Kecamatan<span xss="removed">\r\n</span>mandirancan, Desa Randobawagirang mempunyai wilayah seluas : 272,999 Ha<span xss="removed"> </span>dengan jumlah penduduk : 1.482 dengan\r\njumlah Kepala Keluarga : 439 dengan<span xss="removed"> </span>Batas-batas<span xss="removed"> </span>wilayah sbb:<o></o></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<ul><li><span lang="id" xss="removed">Sebelah<span xss="removed"> </span>Utara<span xss="removed"> </span>:<span xss="removed"> </span>berbatasan<span xss="removed"> </span>dengan<span xss="removed"> </span>Desa<span xss="removed"> </span>Randobawailir<o></o></span></li><li><span lang="id" xss="removed">Sebelah<span xss="removed"> </span>Timur<span xss="removed"> </span>:<span xss="removed"> </span>berbatasan<span xss="removed"> </span>dengan<span xss="removed"> </span>Desa\r\nCibeureum<span xss="removed"> </span>Kecamatan Cilimus<o></o></span></li><li><span lang="id" xss="removed">Sebelah<span xss="removed"> </span>Selatan:<span xss="removed">\r\n</span>Berbatasan dengan<span xss="removed"> </span>Gunung<span xss="removed"> </span>Ciremai<o></o></span></li><li><span lang="id" xss="removed">Sebelah<span xss="removed"> </span>Barat<span xss="removed"> </span>:<span xss="removed"> </span>Berbatasan<span xss="removed"> </span>dengan<span xss="removed"> </span>Desa<span xss="removed"> </span>Trijaya<o></o></span></li></ul>\r\n\r\n<p class="MsoBodyText" xss="removed"><span lang="id">Iklim<span xss="removed"> </span>Desa<span xss="removed"> </span>Randobawagirang<span xss="removed"> </span>sebagaimana<span xss="removed"> </span>desa-desa<span xss="removed"> </span>lainnya<span xss="removed">\r\n</span>di<span xss="removed"> </span>wilayah<span xss="removed"> </span>Indonesia<span xss="removed">\r\n</span>mempunyai<span xss="removed"> </span>iklim<span xss="removed"> </span>kemarau<span xss="removed">\r\n</span>dan<span xss="removed"> </span>penghujan,<span xss="removed"> </span>hal<span xss="removed"> </span>tersebut<span xss="removed"> </span>mempunyai<span xss="removed">\r\n</span>pengaruh<span xss="removed"> </span>langsung<span xss="removed"> </span>terhadap<span xss="removed">\r\n</span>kegiatan<span xss="removed"> </span>pertanian<span xss="removed"> </span>yang<span xss="removed"> </span>ada<span xss="removed"> </span>di<span xss="removed"> </span>desa<span xss="removed"> </span>Randobawagirang.<o></o></span></p>', 1661952505),
(2, 'Profil Pemerintah Desa Randobawagirang', 'dTkjsgklsjdglksjgldsgs', 1660226988),
(3, 'Profil BPD', '<p>Ini adalah profil BPD (Badan Permusyawaratan Desa) Desa Randobawagirang kec.Mandirancan.</p><p>Adapun susunan pengurusnya adalah sebagai berikut:</p><ol><li>Ketua :  </li><li>Wakil Ketua :  </li><li>Sekretaris :  </li><li>Anggota :  </li><li>Anggota :  </li></ol>', 1661835881),
(4, 'Sejarah Desa', '<p class="MsoBodyText" xss="removed"><span lang="id">Desa Randobawagirang berasal dari kata Rando yang artinya\r\nRawa dan girang<span xss="removed"> </span>yang<span xss="removed"> </span>artinya<span xss="removed">\r\n</span>Hulu,<span xss="removed"> </span>Desa<span xss="removed"> </span>Randobawagirang<span xss="removed"> </span>berbatasan<span xss="removed"> </span>langsung<span xss="removed"> </span>dengan<span xss="removed"> </span>Desa<span xss="removed"> </span>Randobawahilir dan sepengetahuan kami\r\nsudah dipimpin oleh seorang kepala desa<span xss="removed"> </span>14\r\nperiode<span xss="removed"> </span>sejak tahun 1898-2019.<o></o></span></p>\r\n\r\n<p class="MsoBodyText" xss="removed"><span lang="id">Desa<span xss="removed"> </span>Randobawagirang<span xss="removed"> </span>termasuk<span xss="removed">\r\n</span>di<span xss="removed"> </span>wilayah<span xss="removed"> </span>sebelah<span xss="removed">\r\n</span>Selatan<span xss="removed"> </span>Kecamatan<span xss="removed"> </span>Mandirancang,<span xss="removed"> </span>tepatnya<span xss="removed"> </span>di<span xss="removed"> </span>bawah<span xss="removed">\r\n</span>kaki<span xss="removed"> </span>Gunung<span xss="removed"> </span>Ciremai<span xss="removed">\r\n</span>berbukit<span xss="removed"> </span>dengan<span xss="removed"> </span>ketinggian<span xss="removed"> </span>600<span xss="removed"> </span>m<span xss="removed"> </span>dari<span xss="removed"> </span>permukaan<span xss="removed"> </span>laut<span xss="removed"> </span>dengan<span xss="removed"> </span>curah<span xss="removed"> </span>hujan<span xss="removed"> </span>3000<span xss="removed"> </span>mm/tahun<span xss="removed"> </span>dengan<span xss="removed"> </span>suhu<span xss="removed"> </span>udara<o></o></span></p>\r\n\r\n<p class="MsoBodyText" xss="removed"><span lang="id">18.21 C°. Desa Randobawagirang berbatasan dengan: sebelah\r\nutara dengan Desa<span xss="removed"> </span>Randobawailir,<span xss="removed"> </span>sebelah<span xss="removed">\r\n</span>selatan<span xss="removed"> </span>dengan<span xss="removed"> </span>Gunung<span xss="removed">\r\n</span>Ciremai,<span xss="removed"> </span>sebelah<span xss="removed"> </span>barat<span xss="removed">\r\n</span>dengan<span xss="removed"> </span>Desa<span xss="removed"> </span>Trijaya dan sebelah timur dengan Desa\r\nCibeureum Kecamatan Cilimus. Luas desa<span xss="removed"> </span>Randobawagirang\r\nyaitu 272,999 Ha, dengan luas pemukina 200 Ha, sawah 64 Ha,<span xss="removed"> </span>dan<span xss="removed"> </span>perkebunan\r\n175<span xss="removed"> </span>Ha<span xss="removed"> </span>dengan<span xss="removed"> </span>mayoritas\r\npenduduk<span xss="removed"> </span>sebagai<span xss="removed"> </span>Buruh<span xss="removed"> </span>Tani.<o></o></span></p>\r\n\r\n<p class="MsoBodyText" xss="removed"><span lang="id">Berikut<span xss="removed"> </span>daftar<span xss="removed"> </span>nama-nama<span xss="removed"> </span>Kepala<span xss="removed">\r\n</span>Desa<span xss="removed"> </span>Randobawagirang,<span xss="removed"> </span>yaitu<span xss="removed"> </span>:<o></o></span></p>\r\n\r\n<p class="MsoBodyText" align="left" xss="removed"><span lang="id" xss="removed"> </span></p>\r\n\r\n<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" xss="removed">\r\n <tbody><tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><b><span lang="id" xss="removed">No<o></o></span></b></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><b><span lang="id" xss="removed">Nama<span xss="removed"> </span>Kuwu<o></o></span></b></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><b><span lang="id" xss="removed">Masa<span xss="removed"> </span>Jabatan<o></o></span></b></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><b><span lang="id" xss="removed">Keterangan<o></o></span></b></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Buyut<span xss="removed"> </span>Sajimah<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1779<span xss="removed"> </span>s/d 1871<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed"> </span>Pertama<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">2<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Naswian<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1871<span xss="removed"> </span>s/d 1875<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed">\r\n  </span>Kedua<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">3<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kastipan<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1875<span xss="removed"> </span>s/d 1907<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed">\r\n  </span>Ketiga<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">4<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Adis<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1907<span xss="removed"> </span>s/d 1921<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed"> </span>Keempat<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">5<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Lika<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1921<span xss="removed"> </span>s/d 1922<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed">\r\n  </span>Kelima<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">6<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Baryan<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1922<span xss="removed"> </span>s/d 1935<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed">\r\n  </span>Keenam<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">7<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Asnara<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1935<span xss="removed"> </span>s/d 1943<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed">\r\n  </span>Ketujuh<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">8<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Sukardi<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1943<span xss="removed"> </span>s/d 1947<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed"> </span>Kedelapan<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">9<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" xss="removed" xss=removed><span lang="id" xss="removed">H.<span xss="removed"> </span>Jana<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1948<span xss="removed"> </span>s/d 1956<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed"> </span>Kesembilan<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">10<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Asrip<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1957<span xss="removed"> </span>s/d 1965<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed"> </span>Kesepuluh<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">11<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Jumatin<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1966<span xss="removed"> </span>s/d 1988<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed"> </span>Kesebelas<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">12<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Uung<span xss="removed"> </span>Muchtar<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">1990<span xss="removed"> </span>s/d 2004<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed">\r\n  </span>Kedua<span xss="removed"> </span>belas<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">13<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Moch<span xss="removed"> </span>Syapil<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">2006<span xss="removed"> </span>s/d 2013<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed">\r\n  </span>Ketiga<span xss="removed"> </span>belas<o></o></span></p>\r\n  </td>\r\n </tr>\r\n <tr xss="removed">\r\n  <td width="42" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">14<o></o></span></p>\r\n  </td>\r\n  <td width="156" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Dudung<span xss="removed"> </span>Rifa’i<o></o></span></p>\r\n  </td>\r\n  <td width="144" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">2013<span xss="removed"> </span>s/d<span xss="removed">\r\n  </span>Sekarang<o></o></span></p>\r\n  </td>\r\n  <td width="198" valign="top" xss="removed">\r\n  <p class="TableParagraph" align="center" xss="removed"><span lang="id" xss="removed">Kepala<span xss="removed"> </span>Desa<span xss="removed">\r\n  </span>Keempat<span xss="removed"> </span>belas<o></o></span></p>\r\n  </td>\r\n </tr>\r\n</tbody></table>', 1661953145),
(5, 'Visi Misi', 'vm', 1660228831);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opini`
--
ALTER TABLE `opini`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penduduk`
--
ALTER TABLE `penduduk`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `potensidesa`
--
ALTER TABLE `potensidesa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `opini`
--
ALTER TABLE `opini`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `potensidesa`
--
ALTER TABLE `potensidesa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
