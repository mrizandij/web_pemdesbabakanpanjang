-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2021 at 01:42 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_babakanpanjang`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT '1',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(73, 'PKK Desa Tunjuk', 'pkk-desa-tunjuk', '<p>Kegiatan PKK di Desa Tunjuk Tahun 2021</p>\r\n', 'IMG20191029113456.jpg', 'Y', 9, '2021-07-27', '08:52:16', 'Selasa', 'admin'),
(74, 'KEGIATAN PENDATAAN SDGS', 'kegiatan-pendataan-sdgs', '<p>RELAWAN PENDATAAN SDGS</p>\r\n', 'DESAIN_Lambang_Tunjuk.png', 'Y', 7, '2021-07-27', '09:00:21', 'Selasa', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'toska');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`, `deskripsi`) VALUES
(45, 'PEMERINTAH DESA  BABAKAN PANJANG', '', 'bg-fix2.jpg', '2021-09-02', 'Selamat datang di website Desa Babakan Panjang');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET latin1 NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(776, 61, 'admin', 'Pembagian Bantuan Sosial', 'bansos', '', 'pembagian-bantuan-sosial', 'Y', 'Y', 'Y', '<p>Babakan Panjang, 5 Agustus 2021</p>\r\n\r\n<p>&nbsp; &nbsp; Kementrian Sosial Republik Indonesia&nbsp;masih terus menyalurkan bantuan kepada masyarakat, selama pemberlakukan PPKM. Bantuan sosial ini diharapkan dapat mengurangi beban masyarakat selama PPKM. Bantuan yang disalurkan melalui program perlindungan social sendiri dari Kementrian Sosial (Kemensos) dan Program Keluarga Harapan (PKH) berupa bantuan beras sebanyak 10 Kg.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; Kegiatan bantuan sosial ini dilaksanakan pada tanggal 5 sampai 6 Agustus 2021 yang bertempat di Balai Desa Babakan Panjang. Dibantu oleh Mahasiswa KKN-T 43 Universitas Muhammadiyah Sukabumi, kegiatan berlangsung dengan protokol kesehatan.</p>\r\n', 'xx', 'Kamis', '2021-09-02', '18:26:40', 'BERITA22.jpg', 0, 'berita-desa', 'Y'),
(781, 63, 'admin', 'Lokakarya Akhir Mahasiswa KKN-T 43 UMMI ', 'Lokakarya Akhir Mahasiswa KKN-T 43 UMMI ', '', 'lokakarya-akhir-mahasiswa-kknt-43-ummi-', 'N', 'N', 'N', '<p>Babakan Panjang, 02 September 2021</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Mahasiswa Kuliah Kerja Nyata (KKN) Tematik Kelompok 43&nbsp;Universitas Muhammadiyah Sukabumi (UMMI) tahun 2021 melakukan laporan akhir dari kegiatan KKN-T kepada Aparatur Desa Babakan Panjang Kecamatan Nagrak Kabupaten Sukabumi, yang dilaksanakan mulai tanggal 22 Juli 2021 sampai tanggal 02 September 2021.</p>\r\n\r\n<p>&nbsp; &nbsp; Adapun program&nbsp;KKN-T yang dilaksanakan&nbsp;dibagi menjadi dua kategori, yaitu program primer dan program sekunder. Program primer adalah pembuatan website pemerintah desa babakan panjang, pembuatan video profil pemdes babakan panjang, pembuatan akun sosial media pemdes babakan panjang yang terdiri dari akun gmail, facebook, twitter, instagram dan youtube.</p>\r\n\r\n<p>&nbsp; &nbsp;Adapun program sekunder yaitu pembuatan papan nama Taman Pemakaman Umum (TPU) Sirna Rasa, Kegiatan mengajar di sekolah madrasah, serta mengadakan lomba 17 Agustus 2021 yakni lomba mewarnai tingkat paud dan sd sederajat, serta mengadakan tournament mobile legend.</p>\r\n\r\n<p>Acara loka karya akhir ini menjadi tanda akhir dari kegiatan Kuliah&nbsp;Kuliah Kerja Nyata (KKN) Tematik Kelompok 43&nbsp;Universitas Muhammadiyah Sukabumi (UMMI) tahun 2021 di Desa Babakan Panjang.</p>\r\n', '', 'Kamis', '2021-09-02', '18:12:13', 'BERITA11.jpg', 2, 'teknologi', 'Y'),
(782, 61, 'admin', 'Pembagian Bansos BLT', 'Pembagian Bansos BLT', '', 'pembagian-bansos-blt', 'N', 'N', 'N', '<p>&nbsp; Kementrian Sosial Republik Indonesia&nbsp;masih terus menyalurkan bantuan kepada masyarakat, selama pemberlakukan PPKM. Bantuan sosial ini diharapkan dapat mengurangi beban masyarakat selama PPKM. Bantuan yang disalurkan melalui program Bantuan&nbsp; Langsung Tunai Dana Desa (BLT-DD) alokasi bulan Juni, Juli, Agustus sebesar Rp. 900.000 telah disalurkan oleh Pemerintah Desa Babakan Panjang kepada masyarakat Desa Babakan Panjang.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp; Kegiatan bantuan sosial ini dilaksanakan pada tanggal 13&nbsp;Agustus 2021 yang bertempat di Balai Desa Babakan Panjang. Dibantu oleh Mahasiswa KKN-T 43 Universitas Muhammadiyah Sukabumi, kegiatan berlangsung dengan protokol kesehatan.</p>\r\n', '', 'Kamis', '2021-09-02', '18:26:19', 'BERITA33.jpg', 0, 'berita-desa', 'Y'),
(783, 61, 'admin', 'Kegiatan vaksinasi sinovac dosis 1 dan 2', 'Kegiatan vaksinasi sinovac dosis 1 dan 2', '', 'kegiatan-vaksinasi-sinovac-dosis-1-dan-2', 'N', 'N', 'N', '<p>Babakan Panjang, 26 Agustus 2021</p>\r\n\r\n<p>Pemerintah terus melakukan upaya agar menekan penyebaran Virus Covid-19 yang melanda Negara Indonesia selama dua tahun terakhir, dalam upaya menekan virus covid-19 Pemerintah Pusat terus melakukan vaksinasi, salah satunya vaksinasi yang dilaksanakan&nbsp; di Balai Desa Babakan Panjang kepada warga se-kecamatan Nagrak bekerja sama dengan pukesmas Nagrak yang dilaksanakan di Balai Desa Babakan Panjang.</p>\r\n', '', 'Kamis', '2021-09-02', '18:39:33', 'BERITA4.png', 0, 'berita-desa', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `ip_address` varchar(45) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `user_agent` varchar(120) CHARACTER SET latin1 NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('0d8123f7553e142c29e4e246ff3e1738', '205.169.39.145', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 1617120192, ''),
('100706c4913acb3f33200388c024ebff', '36.71.235.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 1617115999, ''),
('28d21fec5ae5b0869c3c929defbe3a36', '70.42.131.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.71 Safari/537.36', 1617120013, ''),
('4b1e7520e6419a7a196513b04a42e172', '54.221.27.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1617140283, ''),
('a05e726120c888f2aebbcf4f7614193b', '125.163.94.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 1617116000, ''),
('a7d851a91fe0864f149fa42075d7c3e0', '65.155.30.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.71 Safari/537.36', 1617123982, ''),
('b898cca4afa29a04900226310f91d52a', '54.221.27.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 1617140285, ''),
('bc48e297c585816a27e1f4908ee0c531', '205.169.39.242', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 1617120179, ''),
('d8c2fc87ab4556ea8e274dca15b03f37', '205.169.39.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1617120204, ''),
('ed666bd5b31c76e462eb3314389cf00c', '205.169.39.242', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', 1617120190, '');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(43, 'APBDes  Semester I Tahun Anggaran 2020', 'Semester_1.pdf', '2020-10-18', 6),
(44, 'APBDes  Semester I Tahun Anggaran 2020 beserta output capaiannya', 'Semester_11.pdf', '2020-10-18', 1),
(45, 'Surat Pengantar KKN', 'Surat_Pengantar_KKN_Tematik_2021_Desa_Babakan_Panjang.pdf', '2021-09-02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(254, 1, 'admin', 'Screenshot 1 ', 'screenshot-1-', 'Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ', '911.jpg'),
(259, 50, 'admin', 'Pantai', 'pantai', '<p>Pantai Rening</p>\r\n', 'IMG_20180803_073727.jpg'),
(260, 50, 'admin', 'Pemilihan Perbekel Baluk', 'pemilihan-perbekel-baluk', '<p>Pemilihan Perbekel Periode 2020-2025</p>\r\n', 'WhatsApp_Image_2019-06-21_at_19_18_30.jpeg'),
(261, 50, 'admin', 'Kesehatan', 'kesehatan', '<p>Rutinitas Senam Lansia Desa Baluk</p>\r\n', 'lansia.jpeg'),
(262, 50, 'admin', 'Kebersihan', 'kebersihan', '<p>Monitoring Kegiatan Pengelolaan Sampah Baluk Lestari (PST)</p>\r\n', 'WhatsApp_Image_2019-05-15_at_19_29_42.jpeg'),
(263, 50, 'admin', 'pencegahan covid-19', 'pencegahan-covid19', '', 'WhatsApp_Image_2020-04-22_at_09_31_59.jpeg'),
(264, 50, 'admin', 'Kebersihan', 'kebersihan', '<p>Gotong royong Kebersihan Telajakan</p>\r\n', 'WhatsApp_Image_2020-01-04_at_15_41_15.jpeg'),
(265, 53, 'admin', 'Hand Sanitizer', 'hand-sanitizer', '<p>Pembagian Hand Sanitaizer pada warga yang datang ke Kantor Desa Baluk</p>\r\n', 'IMG20200619093718.jpg'),
(266, 53, 'admin', 'Pemberian Sembako', 'pemberian-sembako', '<p>Pemberian Sembako kepada warga</p>\r\n', 'WhatsApp_Image_2020-06-19_at_12_38_12_PM.jpeg'),
(267, 51, 'admin', 'Perpisahan Babinsa', 'perpisahan-babinsa', '<p>Tangggal 24 Juni 2020 Pindah tugas Babinsa ke Manukwari papua Barat...</p>\r\n', 'WhatsApp_Image_2020-06-24_at_10_48_48_AM.jpeg'),
(268, 53, 'admin', 'Pembagian Hand Satitizer', 'pembagian-hand-satitizer', '<p>Pembagian Hand Sanitizer untuk sopir</p>\r\n', 'WhatsApp_Image_2020-06-24_at_12_34_01_PM.jpeg'),
(269, 53, 'admin', 'Pembagian Blt', 'pembagian-blt', '<p>Pembagian Bantuan Langsung Tunai</p>\r\n', 'WhatsApp_Image_2020-06-26_at_12_42_17_PM.jpeg'),
(270, 51, 'admin', 'Monitoring MDA lan Kabupaten', 'monitoring-mda-lan-kabupaten', '<p>Monitoring MDA lan Kabupaten di Kantor Desa Baluk pada hari sabtu 27 juni 2020</p>\r\n', 'WhatsApp_Image_2020-06-27_at_9_35_17_AM.jpeg'),
(271, 31, 'admin', 'Serah Terima Sembako', 'serah-terima-sembako', '<p>Pada Tanggal 04 Juli 2020 Serah Terima Sembako Pemda Gelombang 2 tahap 2 sejumlah 70 paket.Kegiatan ini di lakukan di Kantor Desa Baluk.adapun Kegiatan ini melibatkan Kelian Adat dan Kelian Dinas.</p>\r\n', 'WhatsApp_Image_2020-07-04_at_9_13_54_AM.jpeg'),
(272, 53, 'admin', 'Musdes RKP', 'musdes-rkp', '<p>Musyawara Desa RKP</p>\r\n', 'WhatsApp_Image_2020-07-14_at_9_48_57_AM.jpeg'),
(273, 50, 'admin', 'Pelantika PPDP Desa Baluk', 'pelantika-ppdp-desa-baluk', '<p>Dalam Rangka Pelantikan PPDP Desa Baluk</p>\r\n', 'WhatsApp_Image_2020-07-15_at_8_33_34_AM.jpeg'),
(274, 53, 'admin', 'Sembahyang Bersama', 'sembahyang-bersama', '<p>Rahina Tilem Persembahyangan bersama ring Kantor Desa Baluk</p>\r\n', 'WhatsApp_Image_2020-07-20_at_8_29_09_AM.jpeg'),
(275, 55, 'admin', 'SURVEY TEKNIS RABAT BETON DI PULUKAN GANG PURWA', 'survey-teknis-rabat-beton-di-pulukan-gang-purwa', '', 'WhatsApp_Image_2020-07-24_at_10_40_27_AM_(1).jpeg'),
(276, 55, 'admin', 'SURVEY TEKNIS RABAT BETON DI PULUKAN GANG AJI GRANDONG', 'survey-teknis-rabat-beton-di-pulukan-gang-aji-grandong', '<p>AJI GRANDONG</p>\r\n', 'WhatsApp_Image_2020-07-24_at_10_40_27_AM_(2).jpeg'),
(277, 55, 'admin', 'SURVEY TEKNIS RABAT BETON DI PULUKAN GANG AJI SWINDRA', 'survey-teknis-rabat-beton-di-pulukan-gang-aji-swindra', '<p>GANG SWINDRA</p>\r\n', 'WhatsApp_Image_2020-07-24_at_10_40_27_AM.jpeg'),
(278, 56, 'admin', 'PENYERAHAN SEMBAKO PEMDA TAHAP III', 'penyerahan-sembako-pemda-tahap-iii', '<p>Pembagian Sembako Desa Tahap III</p>\r\n', 'sembako_pemda.jpeg'),
(279, 56, 'admin', 'PEMBAGIAN SEMBAKO PEMDA TAHAP III', 'pembagian-sembako-pemda-tahap-iii', '', 'sembako_pemda1.jpeg'),
(280, 56, 'admin', 'PEMBAGIAN BLT DANA DESA ', 'pembagian-blt-dana-desa-', '', 'sembako_pemda2.jpeg'),
(281, 57, 'admin', 'REMBUG STUNTING DESA PULUKAN TAHUN 2020', 'rembug-stunting-desa-pulukan-tahun-2020', '', 'rembug_3.jpeg'),
(282, 57, 'admin', 'REMBUG STUNTING DESA PULUKAN TAHUN 2020', 'rembug-stunting-desa-pulukan-tahun-2020', '', 'rembug_4.jpeg'),
(283, 57, 'admin', 'REMBUG STUNTING DESA PULUKAN TAHUN 2020', 'rembug-stunting-desa-pulukan-tahun-2020', '', 'rembug_2.jpeg'),
(288, 58, 'admin', 'Pemberian insentif juru dinas, juru adat dan pemangku se-desa pulukan', 'pemberian-insentif-juru-dinas-juru-adat-dan-pemangku-sedesa-pulukan', '', 'WhatsApp_Image_2020-09-08_at_10_51_29_AM_(2).jpeg'),
(285, 58, 'admin', 'Pemberian insentif juru dinas, juru adat dan pemangku se-desa pulukan', 'pemberian-insentif-juru-dinas-juru-adat-dan-pemangku-sedesa-pulukan', '', 'WhatsApp_Image_2020-09-08_at_10_51_29_AM_(1)1.jpeg'),
(286, 58, 'admin', 'Pemberian insentif juru dinas, juru adat dan pemangku se-desa pulukan', 'pemberian-insentif-juru-dinas-juru-adat-dan-pemangku-sedesa-pulukan', '', 'WhatsApp_Image_2020-09-08_at_10_51_29_AM.jpeg'),
(289, 60, 'admin', 'kegiatan penyerahan bibit kakao kepada kelompok tani Subak Karya Darma Bakti Desa Pulukan', 'kegiatan penyerahan-bibit-kakao-kepada-kelompok-tani-subak-karya-darma-bakti-desa-pulukan', '', 'WhatsApp_Image_2020-09-08_at_7_18_23_PM_(2).jpeg'),
(290, 60, 'admin', 'kegiatan penyerahan bibit kakao kepada kelompok tani Subak Karya Darma Bakti Desa Pulukan', 'kegiatan penyerahan-bibit-kakao-kepada-kelompok-tani-subak-karya-darma-bakti-desa-pulukan', '', 'WhatsApp_Image_2020-09-08_at_7_18_23_PM_(1)1.jpeg'),
(291, 60, 'admin', 'kegiatan penyerahan bibit kakao kepada kelompok tani Subak Karya Darma Bakti Desa Pulukan', 'kegiatan penyerahan-bibit-kakao-kepada-kelompok-tani-subak-karya-darma-bakti-desa-pulukan', '', 'WhatsApp_Image_2020-09-08_at_7_18_23_PM_(3).jpeg'),
(292, 60, 'admin', 'kegiatan penyerahan bibit kakao kepada kelompok tani Subak Karya Darma Bakti Desa Pulukan', 'kegiatan penyerahan-bibit-kakao-kepada-kelompok-tani-subak-karya-darma-bakti-desa-pulukan', '', 'WhatsApp_Image_2020-09-08_at_7_18_24_PM.jpeg'),
(293, 61, 'admin', 'Musdes Pembahasan Rancangan APBDes Perubahan 2020 & RKDesa 2021', 'musdes-pembahasan-rancangan-apbdes-perubahan-2020--rkdesa-2021', '', 'WhatsApp_Image_2020-09-11_at_10_02_25_AM.jpeg'),
(294, 61, 'admin', 'Musdes Pembahasan Rancangan APBDes Perubahan 2020 & RKDesa 2021', 'musdes-pembahasan-rancangan-apbdes-perubahan-2020--rkdesa-2021', '', 'MUSDES.jpeg'),
(295, 61, 'admin', 'Musdes Pembahasan Rancangan APBDes Perubahan 2020 & RKDesa 2021', 'musdes-pembahasan-rancangan-apbdes-perubahan-2020--rkdesa-2021', '', 'WhatsApp_Image_2020-09-11_at_10_02_25_AM_(1).jpeg'),
(296, 62, 'admin', 'Rapat Koordinasi bersama perangkat desa pulukan', 'rapat-koordinasi-bersama-perangkat-desa-pulukan', '', 'WhatsApp_Image_2020-09-14_at_8_54_31_AM_(1).jpeg'),
(297, 62, 'admin', 'Rapat Koordinasi bersama perangkat desa pulukan', 'rapat-koordinasi-bersama-perangkat-desa-pulukan', '', 'WhatsApp_Image_2020-09-14_at_8_54_31_AM.jpeg'),
(298, 62, 'admin', 'Rapat Koordinasi bersama perangkat desa pulukan', 'rapat-koordinasi-bersama-perangkat-desa-pulukan', '', 'rapat_koordinasi_desa.jpeg'),
(299, 63, 'admin', 'LOKA KARYA', 'loka-karya', '', 'musrenbang1.jpeg'),
(300, 63, 'admin', 'LOKA KARYA', 'loka-karya', '', 'pramusren2.jpeg'),
(301, 63, 'admin', 'LOKA KARYA', 'loka-karya', '', 'pramusren3.jpeg'),
(302, 64, 'admin', 'MUSRENBANGDES DESA PULUKAN TAHUN 2020 dalam rangka penetapan peraturan desa tentang RKPDesa tahun 20', 'musrenbangdes-desa-pulukan-tahun-2020-dalam-rangka-penetapan-peraturan-desa-tentang-rkpdesa-tahun-20', '', 'musrenbang11.jpeg'),
(303, 64, 'admin', 'MUSRENBANGDES DESA PULUKAN TAHUN 2020 dalam rangka penetapan peraturan desa tentang RKPDesa tahun 20', 'musrenbangdes-desa-pulukan-tahun-2020-dalam-rangka-penetapan-peraturan-desa-tentang-rkpdesa-tahun-20', '', 'musrenbang2.jpeg'),
(304, 64, 'admin', 'MUSRENBANGDES DESA PULUKAN TAHUN 2020 dalam rangka penetapan peraturan desa tentang RKPDesa tahun 20', 'musrenbangdes-desa-pulukan-tahun-2020-dalam-rangka-penetapan-peraturan-desa-tentang-rkpdesa-tahun-20', '', 'musrenbang3.jpeg'),
(305, 65, 'admin', 'Pembagian Seragam & Alat Tulis Kepada Orang tua/Wali/siswa PAUD dalam 2 sesi.', 'pembagian-seragam--alat-tulis-kepada-orang-tuawalisiswa-paud-dalam-2-sesi', '', 'seragampaud1.jpeg'),
(306, 65, 'admin', 'Pembagian Seragam & Alat Tulis Kepada Orang tua/Wali/siswa PAUD dalam 2 sesi.', 'pembagian-seragam--alat-tulis-kepada-orang-tuawalisiswa-paud-dalam-2-sesi', '', 'seragampaud2.jpeg'),
(307, 65, 'admin', 'Pembagian Seragam & Alat Tulis Kepada Orang tua/Wali/siswa PAUD dalam 2 sesi.', 'pembagian-seragam--alat-tulis-kepada-orang-tuawalisiswa-paud-dalam-2-sesi', '', 'seragampaud3.jpeg'),
(308, 65, 'admin', 'Pembagian Seragam & Alat Tulis Kepada Orang tua/Wali/siswa PAUD dalam 2 sesi.', 'pembagian-seragam--alat-tulis-kepada-orang-tuawalisiswa-paud-dalam-2-sesi', '', 'seragampaud4.jpeg'),
(309, 65, 'admin', 'Pembagian Seragam & Alat Tulis Kepada Orang tua/Wali/siswa PAUD dalam 2 sesi.', 'pembagian-seragam--alat-tulis-kepada-orang-tuawalisiswa-paud-dalam-2-sesi', '', 'seragampaud5.jpeg'),
(310, 66, 'admin', 'Musayawarah Desa Penetapan nama-nama jalan & gang di desa pulukan', 'musayawarah-desa-penetapan-namanama-jalan--gang-di-desa-pulukan', '', 'nama2.jpeg'),
(311, 66, 'admin', 'Musayawarah Desa Penetapan nama-nama jalan & gang di desa pulukan', 'musayawarah-desa-penetapan-namanama-jalan--gang-di-desa-pulukan', '', 'nama3.jpeg'),
(312, 67, 'admin', 'Pembagian sembako lansia', 'pembagian-sembako-lansia', '<p>Pembagian sembako lansia kepada masyarakat desa pulukan dihadiri oleh&nbsp;Kasi Kesra, Kelian Banjar &amp; Para Lansia bertempat di&nbsp;Kantor desa pulukan. Tujuan kegiatan ini adalah untuk&nbsp;membantu pemenuhan kebutuhan bahan pokok &nbsp;lansia di desa pulukan</p>\r\n', 'LANSIA3.jpeg'),
(313, 67, 'admin', 'Pembagian sembako lansia', 'pembagian-sembako-lansia', '<p>Pembagian sembako lansia kepada masyarakat desa pulukan dihadiri oleh&nbsp;Kasi Kesra, Kelian Banjar &amp; Para Lansia bertempat di&nbsp;Kantor desa pulukan. Tujuan kegiatan ini adalah untuk&nbsp;membantu pemenuhan kebutuhan bahan pokok &nbsp;lansia di desa pulukan</p>\r\n', 'LANSIA2.jpeg'),
(314, 67, 'admin', 'Pembagian sembako lansia', 'pembagian-sembako-lansia', '', 'LANSIA1.jpeg'),
(315, 68, 'admin', 'Pembagian insentif  kepada guru ngaji, pasraman, P3N & Kelompok pengajian', 'pembagian-insentif--kepada-guru-ngaji-pasraman-p3n--kelompok-pengajian', '', 'WhatsApp_Image_2020-12-07_at_10_16_53_AM_(1).jpeg'),
(316, 68, 'admin', 'Pembagian insentif  kepada guru ngaji, pasraman, P3N & Kelompok pengajian', 'pembagian-insentif--kepada-guru-ngaji-pasraman-p3n--kelompok-pengajian', '', 'WhatsApp_Image_2020-12-07_at_10_16_53_AM.jpeg'),
(317, 68, 'admin', 'Pembagian insentif  kepada guru ngaji, pasraman, P3N & Kelompok pengajian', 'pembagian-insentif--kepada-guru-ngaji-pasraman-p3n--kelompok-pengajian', '', 'insentif_P3N,_Guru_pasraman_pengajian.jpeg'),
(318, 69, 'admin', 'Pembagian BLT', 'pembagian-blt', '<p>Pembagian BLT Dana Desa di Kantor Desa Sarampingan Periode ke II diserahkan langsung oleh Bapak Sekretaris Desa Serampingan</p>\r\n', '1b271559-abad-4597-947b-40613ce2f7b9.jpg'),
(319, 69, 'admin', 'Pembagian BLT', 'pembagian-blt', '<p>Penyerahan bantuan berupa sembako kepada masyarakat di Br.Dinas Munggu</p>\r\n', '0b8d4f5b-a36a-42c2-aafa-8a6c6adf1fe1.jpg'),
(320, 71, 'admin', 'Pelatihan SDGs', 'pelatihan-sdgs', '<p>Kegiatan pelatihan SDGs untuk pendataan penduduk secara langsung ke lapangan untuk menunjang IDM Desa</p>\r\n', '1af869f6-be97-4045-a358-632a2e9fa214.jpg'),
(321, 71, 'admin', 'Pelatihan  Aplikasi Pelayanan Kependudukan dan Kearsipan di Desa Sarampingan', 'pelatihan--aplikasi-pelayanan-kependudukan-dan-kearsipan-di-desa-sarampingan', '<p>1. Pelatihan aplikasi Debest untuk pelayanan kependudukan secara online&nbsp;</p>\r\n\r\n<p>2. Pelatihan pengarsipan melalui buku desa sesuai pemendagri 47 tahun 2016</p>\r\n\r\n<p>3. Pelatihan penerapan website desa</p>\r\n', '6d8d1db0-9326-41cf-9980-42a097a39a75.jpg'),
(322, 73, 'admin', 'tes pkk 1', 'tes-pkk-1', '<p>tes aja</p>\r\n', 'IMG20191029113444.jpg'),
(323, 74, 'admin', 'DOKUMENTASI TURUN KE LAPANGAN', 'dokumentasi-turun-ke-lapangan', '<p>I WAYAN SUAMBA BENG KAJA</p>\r\n', 'IMG-20210610-WA0034.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(46, 'Tentang Kami', 'tentang-kami', '<p style="text-align:justify">halaman dalam proses</p>\r\n', '2014-04-07', '', 'admin', 61, '13:10:57', 'Senin'),
(48, 'Alamat Perusahaan', 'alamat-perusahaan', '<p style="text-align:justify">halaman dalam proses</p>\r\n', '2014-04-07', '', 'admin', 24, '13:32:28', 'Senin'),
(52, 'Struktur Organisasi Pemerintah Desa Tunjuk', 'struktur-organisasi-pemerintah-desa-tunjuk', '<h1 style="margin-left:27pt; text-align:justify">on proses</h1>\r\n', '2019-02-11', 'IMG_20180212_094740.jpg', 'admin', 156, '15:21:50', 'Senin'),
(63, 'APBDes  Semester I Tahun Anggaran 2020', 'apbdes--semester-i-tahun-anggaran-2020', '<p>APBDes SEMESTER I TAHUN ANGGARAN 2020</p>\r\n', '2020-10-07', '00012.jpg', 'admin', 50, '20:05:16', 'Rabu'),
(53, 'Sejarah Desa Tunjuk', 'sejarah-desa-tunjuk', '<p>on proses</p>\r\n', '2019-02-13', 'rembug_3.jpeg', 'admin', 85, '14:43:03', 'Rabu'),
(56, 'Rencana Kerja', 'rencana-kerja', '<p>halaman dalam proses</p>\r\n', '2020-06-09', '', 'admin', 43, '19:58:14', 'Selasa'),
(57, 'Program Strategis', 'program-strategis', '<p>halaman dalam proses</p>\r\n', '2020-06-09', '', 'admin', 27, '19:58:44', 'Selasa'),
(58, 'Palemahan', 'palemahan', '<form action="<?php echo base_url(''Pendaftar/tambah_registrant''); ?>" method="post" enctype="multipart/form-data">\r\n			<div class="row gtr-uniform">\r\n				<div class="col-6 col-12-xsmall">\r\n					Nama\r\n					<input type="text" name="name" id="name" placeholder="Name" />\r\n				</div>\r\n				<div class="col-6 col-12-xsmall">\r\n					Jenis Kelamin\r\n					<select name="gender">\r\n						<option value="Laki-laki">Laki-laki</option>\r\n						<option value="Perempuan">Perempuan</option>\r\n					</select>\r\n				</div>\r\n				<div class="col-6 col-12-xsmall">\r\n					Alamat\r\n					<input type="text" name="alamat" id="alamat" placeholder="Alamat" />\r\n				</div>\r\n				<div class="col-6 col-12-xsmall">\r\n					Asal Sekolah/Universitas\r\n					<input type="text" name="asal" id="asal" placeholder="Masukan Identitas Pendidikan Anda" />\r\n				</div>\r\n				<div class="col-6 col-12-xsmall">\r\n					Tanggal masuk (Magang/PKL)\r\n					<input type="date" class="form-control" name="tanggalmasuk" id="tanggalmasuk">\r\n				</div>\r\n				<div class="col-6 col-12-xsmall">\r\n					Tanggal keluar (Magang/PKL)\r\n					<input type="date" class="form-control" name="tanggalkeluar" id="tanggalkeluar">\r\n				</div>\r\n				<div class="col-6 col-12-xsmall">\r\n					Telepon (Whatsapp) jangan dihapus angka 62 yang sudah ada<br> Contoh : 62085667XXXX\r\n					<input type="text" name="telepon" id="telepon" min="1" value="62" required>\r\n				</div>\r\n				<div class="col-6 col-12-xsmall">\r\n					Email\r\n					<input type="email" name="email" id="email" placeholder="Email" />\r\n				</div>\r\n				<div class="form-group">\r\n					<label for="exampleInputPassword1">Foto Surat Keterangan Magang dari Sekolah/Kampus</label>\r\n					<input type="file" name="foto" class="form-control">\r\n				</div>\r\n				<div class="col-12">\r\n					Keterangan Magang\r\n					<textarea name="keterangan" id="keterangan" placeholder="Enter your message" rows="6"></textarea>\r\n				</div>\r\n\r\n				<div class="modal-footer">\r\n					<a type="button" href="<?= base_url(''Magang''); ?> " class=" btn btn-danger">Close</a>\r\n					<button type="submit" class="primary">Daftar</button>\r\n				</div>\r\n			</div>\r\n		</form>\r\n	</section>\r\n</div>', '2020-06-09', '', 'admin', 37, '20:00:10', 'Selasa'),
(59, 'Pawongan', 'pawongan', '<p>halaman dalam proses</p>\r\n', '2020-06-09', '', 'admin', 8, '20:00:41', 'Selasa'),
(60, 'Parahyangan', 'parahyangan', '<p>KEGIATAN PARAHYANGAN</p>\r\n', '2020-06-09', 'parahyangan.jpg', 'admin', 11, '20:01:34', 'Selasa'),
(65, 'Sejarah Desa Babakan Panjang', 'sejarah-desa-babakan-panjang', '<p><span style="font-family:Arial,Helvetica,sans-serif">A. Sejarah Desa</span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif">1. Asal Usul Desa&nbsp;</span></p>\r\n\r\n<p><span style="font-size:14px"><span style="font-family:Arial,Helvetica,sans-serif">Babakan panjang merupakan pemekaran dari desa pawenang pada tahun 1980,&nbsp; dengan jumlah penduduk kurang lebih 4812 jiwa. Desa babakan panjang memiliki luas wilayah 479,635 Ha yang terbagi menjadi 3 dusun, yakni dusun pasir jeungjing, dusun nyangegeng, dan dusun cikawung. Desa babakan Panjang berbatasan dengan 3 desa, di sebelah utara berbatasan dengan desa pawenang, di sebelah selatan berbatasan dengan desa kalaparea, dan disebelah barat berbatasan dengan desa nagrak utara/selatan.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif">2. Sejarah Kepemimpinan Desa</span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif">Sejarah kepemimpinan Desa Babakan Panjang Kecamatan Nagrak adalah sebagai berikut</span></p>\r\n\r\n<table border="1" cellspacing="0" class="MsoTableGrid" style="border-collapse:collapse; border:solid black 1.0pt; margin-left:62.1pt; width:383.0pt">\r\n	<thead>\r\n		<tr>\r\n			<td style="background-color:#262626; width:92.15pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="color:#ffffff"><strong>TAHUN</strong></span></span></p>\r\n			</td>\r\n			<td style="background-color:#262626; width:149.15pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:white">NAMA PEJABAT</span></strong></span></p>\r\n			</td>\r\n			<td style="background-color:#262626; width:141.7pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><strong><span style="color:white">KETERANGAN</span></strong></span></p>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style="width:92.15pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif">1980 &ndash; 1987</span></p>\r\n			</td>\r\n			<td style="width:149.15pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif">&nbsp; &nbsp; &nbsp; &nbsp;MOCHAMMAD PANJI</span></p>\r\n			</td>\r\n			<td style="width:141.7pt">\r\n			<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Arial,Helvetica,sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PJS. KEPALA DESA</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:92.15pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif">1995 - 2003</span></p>\r\n			</td>\r\n			<td style="width:149.15pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;MOMO SUKARMA</span></p>\r\n			</td>\r\n			<td style="width:141.7pt">\r\n			<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Arial,Helvetica,sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; KEPALA DESA</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:92.15pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif">2003 - 2014</span></p>\r\n			</td>\r\n			<td style="width:149.15pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif">&nbsp; &nbsp; &nbsp; &nbsp;ELLY SUMANINGRUM</span></p>\r\n			</td>\r\n			<td style="width:141.7pt">\r\n			<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Arial,Helvetica,sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; KEPALA DESA</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:92.15pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif">2014 - 2016</span></p>\r\n			</td>\r\n			<td style="width:149.15pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ALAN SAHLAN</span></p>\r\n			</td>\r\n			<td style="width:141.7pt">\r\n			<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Arial,Helvetica,sans-serif">&nbsp; &nbsp; &nbsp; &nbsp;PJS. KEPALA DESA</span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="width:92.15pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif">2016 - 2022</span></p>\r\n			</td>\r\n			<td style="width:149.15pt">\r\n			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;JEJEN JAENUDIN</span></p>\r\n			</td>\r\n			<td style="width:141.7pt">\r\n			<p style="margin-left:0cm; margin-right:0cm"><span style="font-family:Arial,Helvetica,sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; KEPALA DESA</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2021-04-20', 'bg-fix.jpg', 'admin', 40, '08:51:06', 'Selasa'),
(66, 'php dasar', 'php-dasar', '<p>bisa ngoding</p>\r\n', '2021-08-27', 'Screenshot_(36).png', 'admin', 2, '10:30:51', 'Jumat'),
(67, 'juara bola', 'juara-bola', '<p>juara dongggg</p>\r\n', '2021-08-27', 'Screenshot_(18).png', 'admin', 2, '10:41:18', 'Jumat'),
(68, 'Lokakarya Akhir Mahasiswa KKN-43 UMMI ', 'lokakarya-akhir-mahasiswa-kkn43-ummi-', '<p>Sukabumi, 02 September 2021</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Mahasiswa Kuliah Kerja Nyata (KKN) Tematik Kelompok 43&nbsp;Universitas Muhammadiyah Sukabumi (UMMI) tahun 2021 melakukan laporan akhir dari kegiatan KKN-T kepada Aparatur Desa Babakan Panjang Kecamatan Nagrak Kabupaten Sukabumi, yang dilaksanakan mulai tanggal 22 Juli 2021 sampai tanggal 02 September 2021.</p>\r\n\r\n<p>&nbsp; &nbsp; Adapun program&nbsp;KKN-T yang dilaksanakan&nbsp;dibagi menjadi dua kategori, yaitu program primer dan program sekunder. Program primer adalah pembuatan website pemerintah desa babakan panjang, pembuatan video profil pemdes babakan panjang, pembuatan akun sosial media pemdes babakan panjang yang terdiri dari akun gmail, facebook, twitter, instagram dan youtube.</p>\r\n\r\n<p>&nbsp; &nbsp;Adapun program sekunder yaitu pembuatan papan nama Taman Pemakaman Umum (TPU) Sirna Rasa, Kegiatan mengajar di sekolah madrasah, serta mengadakan lomba 17 Agustus 2021 yakni lomba mewarnai tingkat paud dan sd sederajat, serta mengadakan tournament mobile legend.</p>\r\n\r\n<p>Acara loka karya akhir ini menjadi tanda akhir dari kegiatan Kuliah&nbsp;Kuliah Kerja Nyata (KKN) Tematik Kelompok 43&nbsp;Universitas Muhammadiyah Sukabumi (UMMI) tahun 2021 di Desa Babakan Panjang.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2021-09-02', 'BERITA1.jpg', 'admin', 0, '13:50:02', 'Kamis'),
(69, 'Download', 'download', '', '2021-09-02', '', 'admin', 0, '14:40:53', 'Kamis');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `alamat`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'PEMERINTAH DESA BABAKAN PANJANG', 'KECAMATAN NAGRAK', 'pemdembabakanpjg@gmail.com', 'https://pemdesbakanpanjang.com', 'https://www.facebook.com/desatunjuk', '00121201212', '083143032183', 'Melangkah Pasti Menuju Masyarakat yang sejahtera', 'Desa Tunjuk, desaku, tercinta, bali, okey, indonesia, maju, makmur, kaya, internet, raya, ', 'lambang.png', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63380.50707719604!2d106.79546967365168!3d-6.856801703042138!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68346c8c9a1ab7%3A0x26fd5782a4981e83!2sBabakan%20Panjang%2C%20Kec.%20Nagrak%2C%20Sukabumi%20Regency%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1627794776443!5m2!1sid!2sid');

-- --------------------------------------------------------

--
-- Table structure for table `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklantengah`
--

INSERT INTO `iklantengah` (`id_iklantengah`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(44, 'Pemprov Bali', 'admin', 'https://www.baliprov.go.id/', 'buahan-bali.png', '2020-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`) VALUES
(61, 'Berita Desa', 'admin', 'berita-desa', 'Y', 1),
(62, 'Berita UMKM', 'admin', 'berita-umkm', 'Y', 2),
(63, 'Berita Umum', 'admin', 'berita-umum', 'Y', 3);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id_link` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `groupname` varchar(20) DEFAULT NULL,
  `urutan` int(3) NOT NULL,
  `deskripsi` text,
  `gambar` varchar(30) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id_link`, `id_parent`, `nama_menu`, `link`, `aktif`, `groupname`, `urutan`, `deskripsi`, `gambar`, `icon`) VALUES
(1, 0, 'BISNIS KAMI', '', 'Ya', 'satu', 1, NULL, NULL, NULL),
(2, 1, 'Produk Kami', '', 'Ya', '', 1, 'Kegiatan PERTAMINI dalam menyelenggarakan usaha di bidang energi dan petrokimia, terbagi ke dalam dua sector, yaitu Hulu dan Hilir, serta ditunjang oleh kegiatan Anak-Anak Perusahaan dan Perusahaan Patungan.', 'SPBU.jpg', NULL),
(5, 1, 'Pemegang Saham', '', 'Ya', '', 3, 'Pertamini adalah perusahaan energi nasional yang sahamnya 100% dimiliki oleh Pemerintah Republik Indonesia melalui kementerian Badan usaha milik negara(BUMN) selaku pemegang saham.', 'investor_relation.jpg', ''),
(4, 1, 'Energi Terbarukan', '', 'Ya', '', 2, 'Pertamini mengembangkan energi terbarukan seperti solar photovoltaic (solar cell), mikrohidro, green diesel, bio LNG dan lainnya.', 'renew_energy_PGE.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'lambang.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL,
  `deskripsi` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`, `deskripsi`) VALUES
(150, 0, 'Profil', '#', 'Ya', 'Bottom', 2, 'Profil Desa Babakan Panjang'),
(132, 134, 'Visi dan Misi', 'halaman/detail/visi-dan-misi', 'Ya', 'Bottom', 3, ''),
(153, 150, 'Profil Pemdes', '#', 'Ya', 'Bottom', 1, ''),
(134, 129, 'Profil Dinas', '#', 'Ya', 'Bottom', 4, ''),
(138, 135, 'BBM Industri', '#', 'Ya', 'Bottom', 2, NULL),
(139, 135, 'BBM Pesawat Udara', '#', 'Ya', 'Bottom', 3, NULL),
(142, 0, 'MEDIA & INFORMASI', '#', 'Ya', 'Bottom', 3, ''),
(143, 142, 'Berita & Artikel', '#', 'Ya', 'Bottom', 1, ''),
(144, 142, 'AGENDA', '#', 'Ya', 'Bottom', 2, ''),
(145, 144, 'Agenda Kegiatan', 'agenda', 'Ya', 'Bottom', 1, ''),
(146, 143, 'Berita', 'berita', 'Ya', 'Bottom', 1, ''),
(147, 143, 'Galeri', 'albums', 'Ya', 'Bottom', 2, ''),
(148, 143, 'Video', 'playlist', 'Ya', 'Bottom', 3, ''),
(152, 153, 'Sejarah', 'halaman/detail/sejarah-desa-babakan-panjang', 'Ya', 'Bottom', 1, ''),
(156, 155, 'Download File', 'download', 'Ya', 'Top', 3, 'Download Semua File'),
(163, 162, 'Kegiatan', '', 'Ya', 'Bottom', 1, ''),
(169, 0, 'Produk Hukum', '#', 'Ya', 'Bottom', 1, 'Perdes'),
(170, 169, 'Peraturan Perbekel', '', 'Ya', 'Bottom', 1, ''),
(172, 169, 'APBDes', '', 'Ya', 'Bottom', 1, ''),
(175, 170, 'PERKEL', '#', 'Ya', 'Top', 1, ''),
(174, 172, 'APBDes Tahun 2020', 'halaman/detail/apbdes--semester-i-tahun-anggaran-2020', 'Ya', 'Top', 1, ''),
(193, 192, 'menang', 'halaman/detail/juara-bola', 'Ya', 'Bottom', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, ''),
(43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, ''),
(44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, ''),
(63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, ''),
(64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p><strong>Alamat Kantor : </strong></p>\r\n\r\n<p><em>Kampung&nbsp;Babakan RT 02 RW 04 KM. 06 Kecamatan Nagrak Kode Pos 43356</em></p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(74, 'Video Profil Desa Babakan Panjang', 'admin', 'video-profil-desa-babakan-panjang', 'bg-fix.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(18, 'Bagaimana pelayanan Desa Dalang  terhadap masyarakat dan desa?', 'Pertanyaan', 'admin', 0, 'Y'),
(25, 'Sangat Memuaskan', 'Jawaban', 'admin', 43, 'Y'),
(31, 'Baik', 'Jawaban', 'admin', 8, 'Y'),
(32, 'Cukup', 'Jawaban', 'admin', 9, 'Y'),
(33, 'Perlu Perbaikan Kedepan', 'Jawaban', 'admin', 10, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(14, 'PERMOHONAN PENGAJUAN SKCK DAPAT DI AKSES DI MENU PELAYANAN SURAT', '2020-06-04', 'bansos-kemensos-fix.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `skck`
--

CREATE TABLE `skck` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `binti` varchar(30) NOT NULL,
  `kelamin` varchar(30) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `negara` varchar(30) NOT NULL,
  `tgl` date NOT NULL,
  `kawin` varchar(30) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `tgl_skrg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skck`
--

INSERT INTO `skck` (`id`, `nama`, `binti`, `kelamin`, `tempat`, `negara`, `tgl`, `kawin`, `agama`, `pekerjaan`, `alamat`, `nik`, `tgl_skrg`) VALUES
(10, 'MOHAMAD RIZANDI JULIANSYAH', 'Bin Fulan', 'Laki-laki', 'Sukabumi', 'Indonesia', '2021-08-30', 'Lajang', 'Islam', 'Wiraswasta', 'Kp kp', '181818181818', '2021-08-30'),
(11, 'Rizandi', 'Bin Fulan', 'Laki-laki', 'Sukabumi', 'Indonesia', '2021-09-21', 'Lajang', 'Islam', 'PNS', 'Kp. Babakan', '18181717', '2021-09-02'),
(12, 'Fajari', 'Bin Fulan', 'Laki-laki', 'Sukabumi', 'Indonesia', '2021-09-16', 'Lajang', 'Islam', 'PNS GURU', 'Kp. Nyagegeng', '181820', '2021-09-02'),
(13, 'Fajari', 'Bin Fulan', 'Laki-laki', 'Sukabumi', 'Indonesia', '2021-08-29', 'Lajang', 'Islam', 'Wiraswasta', 'Kp. Pasir Jeungjing', '1919', '2021-09-02'),
(14, 'Rifaldi', 'Bin Fulan', 'Laki-laki', 'Sukabumi', 'Indonesia', '2006-01-01', 'Lajang', 'Islam', 'Wiraswasta', 'Kp. Pasir Jeungjing', '20302020', '2021-09-02');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2017-05-29', 1, '1496031966'),
('::1', '2017-08-04', 2, '1501862778'),
('::1', '2017-08-05', 3, '1501890677'),
('::1', '2017-09-13', 5, '1505272460'),
('::1', '2017-09-22', 5, '1506065936'),
('::1', '2017-09-24', 6, '1506263121'),
('::1', '2017-09-27', 1, '1506491577'),
('::1', '2017-09-28', 20, '1506614988'),
('::1', '2017-09-29', 308, '1506696202'),
('::1', '2017-09-30', 495, '1506783608'),
('::1', '2017-10-01', 77, '1506868529'),
('::1', '2017-10-02', 353, '1506962237'),
('::1', '2017-10-03', 16, '1507035971'),
('::1', '2017-10-04', 159, '1507123395'),
('::1', '2017-10-05', 38, '1507218119'),
('::1', '2017-10-06', 68, '1507275289'),
('::1', '2017-10-07', 1, '1507361033'),
('::1', '2017-10-08', 1, '1507413903'),
('::1', '2017-10-11', 4, '1507704206'),
('::1', '2017-10-31', 8, '1509435169'),
('::1', '2017-11-11', 1, '1510417532'),
('::1', '2017-11-12', 45, '1510481123'),
('::1', '2017-11-13', 38, '1510568837'),
('::1', '2018-08-25', 30, '1535191969'),
('::1', '2018-08-26', 2, '1535246562'),
('::1', '2018-08-27', 7, '1535378738'),
('::1', '2018-08-30', 1, '1535576820'),
('::1', '2018-08-31', 9, '1535732014'),
('110.138.150.110', '2018-12-03', 2, '1543855812'),
('110.138.150.110', '2018-12-04', 11, '1543857572'),
('115.178.251.153', '2018-12-08', 1, '1544231764'),
('141.8.142.101', '2018-12-13', 1, '1544651736'),
('::1', '2018-12-15', 3, '1544864222'),
('::1', '2018-12-20', 47, '1545303770'),
('202.150.144.150', '2018-12-20', 2, '1545304092'),
('125.161.84.181', '2018-12-20', 10, '1545322660'),
('66.96.228.105', '2018-12-21', 1, '1545355325'),
('125.161.84.181', '2018-12-22', 4, '1545434346'),
('182.0.180.19', '2018-12-22', 2, '1545441562'),
('182.0.204.171', '2018-12-22', 1, '1545494525'),
('118.96.92.133', '2018-12-23', 6, '1545515886'),
('114.124.174.146', '2018-12-23', 1, '1545542696'),
('125.161.84.181', '2018-12-23', 2, '1545578365'),
('66.96.228.105', '2018-12-25', 1, '1545723398'),
('66.249.71.76', '2018-12-26', 1, '1545771742'),
('66.249.71.82', '2018-12-26', 1, '1545776597'),
('103.22.251.190', '2018-12-27', 20, '1545898631'),
('180.244.165.111', '2018-12-27', 2, '1545919245'),
('110.138.150.46', '2018-12-27', 6, '1545923315'),
('54.209.60.63', '2018-12-27', 4, '1545923686'),
('54.86.66.252', '2018-12-27', 2, '1545923641'),
('54.175.74.27', '2018-12-27', 2, '1545922745'),
('103.22.251.190', '2018-12-28', 3, '1545958383'),
('103.44.37.205', '2018-12-28', 1, '1546008406'),
('114.124.200.121', '2018-12-28', 1, '1546014138'),
('66.249.71.74', '2018-12-29', 4, '1546093329'),
('95.108.181.111', '2018-12-29', 1, '1546083508'),
('66.249.71.76', '2018-12-29', 3, '1546094904'),
('66.249.71.78', '2018-12-29', 1, '1546088814'),
('66.249.71.80', '2018-12-29', 1, '1546102275'),
('66.249.71.78', '2018-12-30', 7, '1546180864'),
('66.249.71.74', '2018-12-30', 3, '1546133664'),
('66.249.71.76', '2018-12-30', 3, '1546184016'),
('66.249.71.82', '2018-12-30', 3, '1546138236'),
('66.249.71.84', '2018-12-30', 1, '1546135653'),
('180.252.123.89', '2018-12-30', 40, '1546161736'),
('54.209.60.63', '2018-12-30', 5, '1546162023'),
('120.188.83.157', '2018-12-30', 6, '1546144279'),
('54.86.66.252', '2018-12-30', 5, '1546161946'),
('184.72.115.35', '2018-12-30', 4, '1546161969'),
('66.249.71.78', '2018-12-31', 5, '1546271778'),
('103.22.251.190', '2018-12-31', 4, '1546221825'),
('180.252.123.89', '2018-12-31', 15, '1546245979'),
('54.175.74.27', '2018-12-31', 1, '1546242394'),
('66.249.71.76', '2018-12-31', 2, '1546275362'),
('66.249.71.74', '2018-12-31', 4, '1546271554'),
('66.249.71.76', '2019-01-01', 3, '1546281298'),
('66.249.71.78', '2019-01-01', 3, '1546358903'),
('66.249.71.80', '2019-01-01', 2, '1546358238'),
('141.8.142.118', '2019-01-01', 1, '1546290175'),
('37.9.113.33', '2019-01-01', 1, '1546290440'),
('66.249.71.74', '2019-01-01', 2, '1546359634'),
('66.249.71.82', '2019-01-01', 1, '1546351958'),
('66.249.71.78', '2019-01-02', 9, '1546381496'),
('66.249.79.10', '2019-01-02', 1, '1546367648'),
('66.249.71.76', '2019-01-02', 11, '1546382015'),
('66.249.71.74', '2019-01-02', 7, '1546382234'),
('141.8.142.101', '2019-01-02', 1, '1546372600'),
('103.22.251.190', '2019-01-02', 3, '1546420295'),
('202.150.144.150', '2019-01-02', 57, '1546426821'),
('54.209.60.63', '2019-01-02', 2, '1546425896'),
('178.154.171.43', '2019-01-02', 1, '1546412093'),
('54.86.66.252', '2019-01-02', 2, '1546425896'),
('52.71.155.178', '2019-01-02', 1, '1546422347'),
('180.243.245.25', '2019-01-02', 3, '1546444927'),
('180.243.245.25', '2019-01-03', 4, '1546453402'),
('115.178.212.29', '2019-01-03', 2, '1546473425'),
('87.228.16.238', '2019-01-03', 1, '1546471759'),
('103.22.251.190', '2019-01-03', 1, '1546475762'),
('66.249.71.76', '2019-01-03', 1, '1546512495'),
('120.188.81.189', '2019-01-03', 4, '1546518823'),
('66.249.71.78', '2019-01-03', 2, '1546532293'),
('95.108.181.108', '2019-01-03', 1, '1546519335'),
('66.249.71.82', '2019-01-03', 1, '1546519914'),
('66.249.71.74', '2019-01-03', 2, '1546527893'),
('66.249.71.84', '2019-01-03', 3, '1546528804'),
('66.249.71.80', '2019-01-03', 3, '1546532408'),
('66.249.71.78', '2019-01-04', 1, '1546534824'),
('104.248.145.107', '2019-01-04', 1, '1546557103'),
('178.154.171.43', '2019-01-04', 1, '1546557759'),
('66.249.71.76', '2019-01-04', 2, '1546619005'),
('103.22.251.190', '2019-01-04', 1, '1546564131'),
('202.150.144.150', '2019-01-04', 1, '1546581657'),
('37.9.113.33', '2019-01-04', 2, '1546620746'),
('66.249.71.74', '2019-01-04', 2, '1546614909'),
('141.8.142.101', '2019-01-04', 1, '1546620720'),
('180.251.137.168', '2019-01-04', 1, '1546621034'),
('180.251.137.168', '2019-01-05', 25, '1546683617'),
('115.178.216.75', '2019-01-05', 1, '1546623156'),
('66.249.71.74', '2019-01-05', 6, '1546704536'),
('66.249.71.78', '2019-01-05', 4, '1546704014'),
('66.249.71.76', '2019-01-05', 8, '1546703841'),
('66.249.71.80', '2019-01-05', 2, '1546694494'),
('104.248.145.116', '2019-01-05', 1, '1546657479'),
('114.124.182.232', '2019-01-05', 1, '1546659127'),
('5.164.160.213', '2019-01-05', 1, '1546666662'),
('188.166.231.101', '2019-01-05', 1, '1546666747'),
('110.138.149.80', '2019-01-05', 11, '1546668934'),
('52.71.155.178', '2019-01-05', 1, '1546667125'),
('184.72.115.35', '2019-01-05', 3, '1546680722'),
('54.209.60.63', '2019-01-05', 1, '1546680108'),
('128.199.120.251', '2019-01-05', 1, '1546680849'),
('46.0.128.100', '2019-01-05', 1, '1546699582'),
('66.249.71.128', '2019-01-05', 1, '1546704884'),
('66.249.71.76', '2019-01-06', 2, '1546714454'),
('66.249.71.78', '2019-01-06', 1, '1546710191'),
('66.249.71.74', '2019-01-06', 1, '1546714541'),
('180.251.137.168', '2019-01-06', 3, '1546785568'),
('141.8.142.101', '2019-01-06', 1, '1546729850'),
('120.188.80.197', '2019-01-06', 2, '1546755787'),
('66.249.71.82', '2019-01-06', 1, '1546757963'),
('52.71.155.178', '2019-01-06', 1, '1546769595'),
('23.237.4.26', '2019-01-06', 2, '1546775616'),
('37.9.113.33', '2019-01-06', 1, '1546779451'),
('141.8.142.118', '2019-01-06', 1, '1546779452'),
('103.22.251.190', '2019-01-07', 1, '1546826016'),
('202.150.144.150', '2019-01-07', 38, '1546859174'),
('54.209.60.63', '2019-01-07', 1, '1546827241'),
('83.217.214.72', '2019-01-07', 1, '1546846866'),
('52.71.155.178', '2019-01-07', 3, '1546859561'),
('54.175.74.27', '2019-01-07', 2, '1546874023'),
('54.86.66.252', '2019-01-07', 1, '1546859682'),
('180.251.137.168', '2019-01-07', 4, '1546880192'),
('64.62.232.44', '2019-01-07', 2, '1546878448'),
('184.72.115.35', '2019-01-07', 1, '1546880294'),
('180.251.137.168', '2019-01-08', 5, '1546880656'),
('184.72.115.35', '2019-01-08', 2, '1546881582'),
('54.175.74.27', '2019-01-08', 1, '1546881571'),
('52.71.155.178', '2019-01-08', 2, '1546881574'),
('95.220.210.29', '2019-01-08', 1, '1546903469'),
('37.9.113.160', '2019-01-08', 1, '1546926519'),
('180.251.137.168', '2019-01-09', 33, '1546985750'),
('54.209.60.63', '2019-01-09', 6, '1547026088'),
('52.71.155.178', '2019-01-09', 5, '1547026077'),
('54.86.66.252', '2019-01-09', 6, '1547017403'),
('141.8.142.101', '2019-01-09', 1, '1546983406'),
('89.179.106.247', '2019-01-09', 1, '1546986303'),
('66.249.71.84', '2019-01-09', 1, '1546991500'),
('202.150.144.150', '2019-01-09', 13, '1547016954'),
('184.72.115.35', '2019-01-09', 1, '1547017333'),
('103.22.251.190', '2019-01-09', 2, '1547022365'),
('54.175.74.27', '2019-01-09', 2, '1547026082'),
('37.9.113.33', '2019-01-09', 1, '1547049359'),
('37.9.113.33', '2019-01-10', 1, '1547090069'),
('141.8.142.101', '2019-01-10', 1, '1547093177'),
('37.146.193.228', '2019-01-10', 1, '1547127127'),
('141.8.142.101', '2019-01-11', 2, '1547209800'),
('202.150.144.150', '2019-01-11', 1, '1547172971'),
('52.71.155.178', '2019-01-11', 1, '1547173755'),
('23.237.4.26', '2019-01-11', 3, '1547199054'),
('109.173.101.59', '2019-01-11', 1, '1547199506'),
('128.69.144.84', '2019-01-11', 1, '1547214129'),
('110.138.148.38', '2019-01-11', 16, '1547225754'),
('54.86.66.252', '2019-01-11', 1, '1547219107'),
('110.138.148.38', '2019-01-12', 20, '1547303273'),
('52.71.155.178', '2019-01-12', 4, '1547228730'),
('54.86.66.252', '2019-01-12', 5, '1547232009'),
('184.72.115.35', '2019-01-12', 3, '1547229560'),
('89.178.225.19', '2019-01-12', 1, '1547248233'),
('182.1.119.89', '2019-01-12', 5, '1547249832'),
('37.204.142.87', '2019-01-12', 1, '1547277032'),
('176.15.231.136', '2019-01-12', 1, '1547289512'),
('128.204.21.113', '2019-01-12', 1, '1547306851'),
('87.228.16.238', '2019-01-13', 1, '1547320904'),
('37.9.113.14', '2019-01-13', 1, '1547324807'),
('178.154.171.37', '2019-01-13', 1, '1547351095'),
('128.204.35.230', '2019-01-13', 1, '1547366690'),
('87.240.53.31', '2019-01-14', 1, '1547404303'),
('37.110.50.217', '2019-01-14', 1, '1547404303'),
('46.42.160.194', '2019-01-14', 1, '1547422958'),
('202.150.144.150', '2019-01-14', 1, '1547432637'),
('104.194.2.5', '2019-01-14', 2, '1547432689'),
('54.86.66.252', '2019-01-14', 1, '1547433211'),
('110.138.149.40', '2019-01-14', 9, '1547447218'),
('54.209.60.63', '2019-01-14', 1, '1547458935'),
('110.138.148.38', '2019-01-14', 1, '1547461372'),
('141.8.142.101', '2019-01-14', 1, '1547479426'),
('128.68.218.162', '2019-01-15', 1, '1547498440'),
('37.9.113.14', '2019-01-15', 1, '1547520494'),
('222.124.217.26', '2019-01-16', 1, '1547629265'),
('46.188.24.155', '2019-01-16', 1, '1547631248'),
('141.8.142.101', '2019-01-16', 1, '1547638678'),
('37.9.113.33', '2019-01-16', 1, '1547649522'),
('141.8.142.101', '2019-01-17', 2, '1547735025'),
('37.146.193.228', '2019-01-17', 1, '1547665797'),
('36.70.60.2', '2019-01-17', 6, '1547713187'),
('202.150.144.150', '2019-01-17', 3, '1547711426'),
('110.138.148.230', '2019-01-17', 1, '1547730077'),
('5.45.207.60', '2019-01-17', 1, '1547735136'),
('110.138.148.230', '2019-01-18', 1, '1547759471'),
('128.68.218.162', '2019-01-18', 1, '1547766416'),
('202.150.144.150', '2019-01-18', 1, '1547775804'),
('180.252.140.255', '2019-01-22', 1, '1548109830'),
('54.175.74.27', '2019-01-22', 1, '1548110013'),
('87.250.224.114', '2019-01-22', 1, '1548120027'),
('141.8.142.162', '2019-01-22', 1, '1548121656'),
('141.8.142.101', '2019-01-22', 1, '1548156434'),
('87.250.224.124', '2019-01-26', 2, '1548487746'),
('141.8.142.192', '2019-01-26', 1, '1548447970'),
('141.8.142.127', '2019-01-26', 1, '1548480194'),
('213.180.203.29', '2019-01-26', 1, '1548480197'),
('5.255.253.3', '2019-01-26', 1, '1548486810'),
('178.154.244.18', '2019-01-26', 1, '1548487113'),
('66.249.71.76', '2019-01-27', 1, '1548565319'),
('66.249.71.78', '2019-01-28', 1, '1548629575'),
('141.8.142.101', '2019-01-28', 1, '1548680146'),
('115.178.209.32', '2019-01-29', 5, '1548706917'),
('114.6.76.2', '2019-01-29', 1, '1548724521'),
('125.161.106.233', '2019-01-29', 1, '1548728754'),
('103.14.44.130', '2019-01-29', 2, '1548766351'),
('103.233.154.10', '2019-01-29', 3, '1548740261'),
('36.78.75.90', '2019-01-29', 1, '1548746371'),
('163.53.186.2', '2019-01-29', 1, '1548748507'),
('125.161.169.211', '2019-01-29', 1, '1548778687'),
('5.165.47.86', '2019-01-30', 1, '1548794580'),
('37.9.113.86', '2019-01-30', 1, '1548837487'),
('37.9.113.107', '2019-01-30', 1, '1548838129'),
('37.9.113.33', '2019-01-31', 1, '1548874682'),
('95.27.251.93', '2019-01-31', 1, '1548878629'),
('66.249.71.76', '2019-02-02', 2, '1549117511'),
('37.9.113.199', '2019-02-03', 1, '1549204947'),
('141.8.142.103', '2019-02-04', 1, '1549218715'),
('141.8.142.101', '2019-02-04', 1, '1549287944'),
('37.9.113.33', '2019-02-05', 2, '1549345856'),
('66.249.71.76', '2019-02-07', 1, '1549542013'),
('66.249.71.74', '2019-02-08', 1, '1549604666'),
('95.108.181.102', '2019-02-10', 1, '1549804400'),
('37.9.113.14', '2019-02-10', 1, '1549817280'),
('202.150.144.150', '2019-02-11', 9, '1549873334'),
('141.8.142.101', '2019-02-11', 1, '1549892166'),
('202.150.144.150', '2019-02-12', 2, '1549945353'),
('66.249.71.74', '2019-02-13', 1, '1550028418'),
('202.150.144.150', '2019-02-13', 43, '1550055129'),
('141.8.142.101', '2019-02-14', 1, '1550083200'),
('110.137.195.236', '2019-02-14', 47, '1550099094'),
('66.249.71.78', '2019-02-14', 1, '1550094440'),
('141.8.142.101', '2019-02-15', 2, '1550201773'),
('37.9.113.33', '2019-02-15', 1, '1550218437'),
('66.249.71.74', '2019-02-19', 1, '1550517907'),
('141.8.142.103', '2019-02-19', 1, '1550571550'),
('66.249.71.76', '2019-02-19', 1, '1550582647'),
('110.138.148.170', '2019-02-20', 25, '1550654978'),
('202.150.144.150', '2019-02-21', 121, '1550745556'),
('37.9.113.33', '2019-02-21', 1, '1550729109'),
('178.154.244.55', '2019-02-21', 1, '1550750575'),
('37.9.113.107', '2019-02-21', 1, '1550755252'),
('180.243.245.175', '2019-02-21', 4, '1550764556'),
('180.243.245.175', '2019-02-22', 3, '1550770295'),
('202.150.144.150', '2019-02-22', 2, '1550823447'),
('114.124.202.143', '2019-02-22', 1, '1550826428'),
('95.27.184.26', '2019-02-23', 1, '1550889254'),
('110.137.209.112', '2019-02-23', 1, '1550932503'),
('110.138.150.224', '2019-02-24', 15, '1551017356'),
('104.194.2.5', '2019-02-24', 2, '1550944886'),
('66.220.149.5', '2019-02-24', 1, '1550945541'),
('66.220.149.9', '2019-02-24', 1, '1550945541'),
('36.73.145.133', '2019-02-24', 1, '1550945567'),
('125.163.229.7', '2019-02-24', 5, '1550945629'),
('178.128.50.28', '2019-02-24', 1, '1550945644'),
('118.96.153.223', '2019-02-24', 1, '1550945691'),
('36.77.128.166', '2019-02-24', 1, '1550945792'),
('115.164.93.39', '2019-02-24', 3, '1550946546'),
('95.70.207.154', '2019-02-24', 1, '1550945813'),
('36.82.102.60', '2019-02-24', 3, '1550945882'),
('112.215.173.73', '2019-02-24', 5, '1550945916'),
('114.4.216.0', '2019-02-24', 1, '1550945881'),
('223.255.230.71', '2019-02-24', 1, '1550945895'),
('36.74.181.176', '2019-02-24', 3, '1550945949'),
('46.104.40.216', '2019-02-24', 1, '1550945910'),
('223.164.5.161', '2019-02-24', 2, '1550946116'),
('116.206.9.56', '2019-02-24', 6, '1550946174'),
('36.69.139.128', '2019-02-24', 1, '1550946106'),
('182.1.10.196', '2019-02-24', 1, '1550946110'),
('1.200.221.143', '2019-02-24', 1, '1550946115'),
('140.213.4.240', '2019-02-24', 1, '1550946168'),
('180.241.202.99', '2019-02-24', 2, '1550946193'),
('182.0.146.119', '2019-02-24', 3, '1550946300'),
('36.70.185.61', '2019-02-24', 1, '1550946273'),
('182.0.215.119', '2019-02-24', 5, '1550946450'),
('182.1.201.159', '2019-02-24', 1, '1550946507'),
('114.125.11.85', '2019-02-24', 1, '1550946540'),
('139.193.10.41', '2019-02-24', 2, '1550946692'),
('182.253.48.62', '2019-02-24', 6, '1550946780'),
('182.0.242.147', '2019-02-24', 3, '1550946786'),
('182.30.199.223', '2019-02-24', 2, '1550946814'),
('114.125.230.46', '2019-02-24', 1, '1550947037'),
('180.214.232.30', '2019-02-24', 1, '1550947092'),
('180.246.151.206', '2019-02-24', 1, '1550947189'),
('203.78.118.57', '2019-02-24', 4, '1550947289'),
('114.142.172.37', '2019-02-24', 1, '1550947241'),
('114.4.82.33', '2019-02-24', 1, '1550947315'),
('202.80.217.72', '2019-02-24', 16, '1550947603'),
('216.162.47.69', '2019-02-24', 1, '1550947374'),
('139.192.106.123', '2019-02-24', 1, '1550947493'),
('103.44.37.175', '2019-02-24', 1, '1550947498'),
('114.124.235.202', '2019-02-24', 1, '1550947553'),
('202.67.37.2', '2019-02-24', 5, '1550947640'),
('223.255.230.25', '2019-02-24', 3, '1550947770'),
('36.65.226.4', '2019-02-24', 1, '1550947753'),
('120.188.93.55', '2019-02-24', 2, '1550948012'),
('114.124.228.152', '2019-02-24', 3, '1550948281'),
('202.67.35.27', '2019-02-24', 6, '1550948935'),
('36.80.223.16', '2019-02-24', 2, '1550948948'),
('125.166.117.179', '2019-02-24', 2, '1550948756'),
('182.0.173.192', '2019-02-24', 2, '1550948844'),
('180.241.170.165', '2019-02-24', 1, '1550948861'),
('180.249.181.14', '2019-02-24', 1, '1550948923'),
('36.70.245.116', '2019-02-24', 1, '1550948971'),
('54.209.60.63', '2019-02-24', 4, '1550949278'),
('54.86.66.252', '2019-02-24', 5, '1550997517'),
('54.175.74.27', '2019-02-24', 2, '1550949213'),
('36.68.16.165', '2019-02-24', 1, '1550949231'),
('52.71.155.178', '2019-02-24', 3, '1551022410'),
('180.242.22.193', '2019-02-24', 2, '1550949499'),
('116.206.30.38', '2019-02-24', 3, '1550950249'),
('72.14.199.114', '2019-02-24', 1, '1550950278'),
('180.246.134.132', '2019-02-24', 3, '1550950724'),
('36.72.168.229', '2019-02-24', 1, '1550950766'),
('116.206.14.59', '2019-02-24', 1, '1550950790'),
('182.1.202.63', '2019-02-24', 4, '1550951277'),
('111.94.43.162', '2019-02-24', 7, '1550951352'),
('182.1.219.52', '2019-02-24', 1, '1550951310'),
('182.1.216.121', '2019-02-24', 1, '1550951349'),
('103.213.128.96', '2019-02-24', 1, '1550951463'),
('139.193.100.182', '2019-02-24', 3, '1550951632'),
('36.79.101.211', '2019-02-24', 6, '1550951738'),
('114.124.214.231', '2019-02-24', 4, '1550952311'),
('36.73.168.208', '2019-02-24', 2, '1550952499'),
('120.188.37.133', '2019-02-24', 3, '1550952604'),
('36.79.221.145', '2019-02-24', 1, '1550953110'),
('36.75.156.219', '2019-02-24', 7, '1550959856'),
('114.124.241.177', '2019-02-24', 1, '1550953873'),
('114.124.204.176', '2019-02-24', 5, '1550953932'),
('182.1.108.154', '2019-02-24', 4, '1550954741'),
('120.188.74.146', '2019-02-24', 2, '1550954541'),
('180.243.173.1', '2019-02-24', 3, '1550954854'),
('114.125.86.184', '2019-02-24', 4, '1550955135'),
('114.125.86.108', '2019-02-24', 3, '1550955362'),
('114.125.86.164', '2019-02-24', 4, '1550955498'),
('36.83.100.38', '2019-02-24', 2, '1550955635'),
('36.74.38.12', '2019-02-24', 1, '1550955626'),
('182.1.166.176', '2019-02-24', 1, '1550956187'),
('140.213.1.196', '2019-02-24', 1, '1550956284'),
('114.125.26.18', '2019-02-24', 1, '1550956820'),
('180.211.93.218', '2019-02-24', 3, '1550957433'),
('36.65.227.23', '2019-02-24', 1, '1550957624'),
('139.192.201.7', '2019-02-24', 2, '1551004659'),
('182.1.76.5', '2019-02-24', 1, '1550958067'),
('114.125.29.111', '2019-02-24', 1, '1550958120'),
('111.94.201.150', '2019-02-24', 1, '1550958173'),
('114.4.83.150', '2019-02-24', 2, '1550958320'),
('36.70.10.237', '2019-02-24', 1, '1550958673'),
('182.0.151.52', '2019-02-24', 2, '1550958844'),
('114.125.167.78', '2019-02-24', 1, '1550959013'),
('114.125.170.54', '2019-02-24', 1, '1550959139'),
('180.253.150.202', '2019-02-24', 1, '1550959339'),
('182.1.197.90', '2019-02-24', 1, '1550959632'),
('180.243.250.100', '2019-02-24', 2, '1550960076'),
('112.215.219.170', '2019-02-24', 1, '1550960094'),
('203.78.121.125', '2019-02-24', 1, '1550960336'),
('114.4.217.153', '2019-02-24', 4, '1550960658'),
('116.206.8.58', '2019-02-24', 2, '1550960763'),
('61.94.246.246', '2019-02-24', 1, '1550960737'),
('36.83.131.85', '2019-02-24', 1, '1550961032'),
('66.220.149.22', '2019-02-24', 1, '1550961106'),
('114.124.132.14', '2019-02-24', 1, '1550961257'),
('110.138.151.0', '2019-02-24', 1, '1550961264'),
('114.124.200.115', '2019-02-24', 1, '1550961354'),
('36.74.153.128', '2019-02-24', 1, '1550961480'),
('180.244.235.118', '2019-02-24', 8, '1550961662'),
('114.142.172.22', '2019-02-24', 1, '1550961605'),
('115.178.254.42', '2019-02-24', 1, '1550961650'),
('114.5.144.190', '2019-02-24', 4, '1550961852'),
('116.206.42.78', '2019-02-24', 2, '1550961951'),
('114.124.176.190', '2019-02-24', 2, '1550962157'),
('36.73.142.126', '2019-02-24', 1, '1550962325'),
('114.125.39.59', '2019-02-24', 1, '1550962360'),
('182.1.8.237', '2019-02-24', 2, '1550962672'),
('182.1.94.225', '2019-02-24', 1, '1550962722'),
('115.178.223.136', '2019-02-24', 1, '1550962938'),
('180.251.133.244', '2019-02-24', 1, '1550963023'),
('120.188.65.239', '2019-02-24', 1, '1550963037'),
('180.246.150.188', '2019-02-24', 2, '1550963140'),
('182.1.92.211', '2019-02-24', 1, '1550963390'),
('36.71.232.66', '2019-02-24', 1, '1550963413'),
('202.67.45.22', '2019-02-24', 3, '1550963482'),
('116.206.9.26', '2019-02-24', 3, '1551021984'),
('36.80.107.105', '2019-02-24', 1, '1550963725'),
('120.188.66.65', '2019-02-24', 1, '1550963726'),
('36.82.235.134', '2019-02-24', 4, '1550963853'),
('182.1.32.182', '2019-02-24', 1, '1550963918'),
('114.124.177.233', '2019-02-24', 3, '1550963978'),
('116.206.14.49', '2019-02-24', 3, '1550964057'),
('112.215.244.76', '2019-02-24', 1, '1550963991'),
('114.142.168.22', '2019-02-24', 2, '1550964701'),
('114.125.58.200', '2019-02-24', 1, '1550964338'),
('180.253.183.124', '2019-02-24', 1, '1550964340'),
('114.4.213.105', '2019-02-24', 1, '1550964374'),
('182.1.179.84', '2019-02-24', 5, '1550964534'),
('114.5.212.95', '2019-02-24', 2, '1550964669'),
('112.215.239.159', '2019-02-24', 3, '1550964831'),
('202.67.46.237', '2019-02-24', 3, '1550965054'),
('114.124.247.137', '2019-02-24', 1, '1550965214'),
('116.206.29.89', '2019-02-24', 1, '1550965280'),
('112.215.242.204', '2019-02-24', 8, '1550965446'),
('114.124.174.33', '2019-02-24', 1, '1550965428'),
('180.244.235.208', '2019-02-24', 1, '1550965643'),
('125.167.173.218', '2019-02-24', 3, '1550965822'),
('182.1.25.73', '2019-02-24', 2, '1550965941'),
('180.245.113.166', '2019-02-24', 1, '1550966049'),
('120.188.32.62', '2019-02-24', 1, '1550966081'),
('115.178.236.157', '2019-02-24', 1, '1550966180'),
('182.0.139.158', '2019-02-24', 2, '1550966275'),
('114.125.120.142', '2019-02-24', 2, '1550966231'),
('114.124.206.154', '2019-02-24', 1, '1550966309'),
('36.84.227.223', '2019-02-24', 2, '1550966374'),
('173.252.87.21', '2019-02-24', 1, '1550966367'),
('141.0.8.78', '2019-02-24', 2, '1550966642'),
('36.72.251.188', '2019-02-24', 2, '1550966695'),
('114.4.216.210', '2019-02-24', 2, '1550966718'),
('115.178.252.233', '2019-02-24', 1, '1550966780'),
('114.125.54.160', '2019-02-24', 3, '1550967008'),
('114.5.209.52', '2019-02-24', 2, '1550966976'),
('114.4.219.203', '2019-02-24', 1, '1550967002'),
('114.4.212.243', '2019-02-24', 3, '1550967055'),
('182.1.39.246', '2019-02-24', 1, '1550967039'),
('36.81.5.142', '2019-02-24', 2, '1550967361'),
('114.124.177.183', '2019-02-24', 2, '1550967455'),
('140.213.31.175', '2019-02-24', 3, '1550967567'),
('182.1.39.47', '2019-02-24', 2, '1550967660'),
('180.244.88.11', '2019-02-24', 3, '1550967781'),
('36.68.6.154', '2019-02-24', 3, '1550967903'),
('202.67.43.44', '2019-02-24', 2, '1550968001'),
('125.166.177.193', '2019-02-24', 1, '1550968048'),
('114.125.108.116', '2019-02-24', 3, '1550968333'),
('141.0.8.53', '2019-02-24', 1, '1550968153'),
('36.77.84.37', '2019-02-24', 3, '1550968309'),
('114.125.59.236', '2019-02-24', 2, '1550968409'),
('36.90.44.72', '2019-02-24', 1, '1550968389'),
('114.4.221.83', '2019-02-24', 3, '1550968801'),
('114.125.168.45', '2019-02-24', 1, '1550968852'),
('112.215.220.114', '2019-02-24', 3, '1550975644'),
('203.78.119.119', '2019-02-24', 7, '1550969507'),
('180.243.231.91', '2019-02-24', 1, '1550969210'),
('114.124.150.216', '2019-02-24', 1, '1550969519'),
('114.125.100.56', '2019-02-24', 3, '1550969609'),
('36.75.187.65', '2019-02-24', 1, '1550969579'),
('103.10.67.170', '2019-02-24', 2, '1550969651'),
('202.80.216.157', '2019-02-24', 5, '1550969642'),
('36.83.62.155', '2019-02-24', 1, '1550969635'),
('116.206.40.112', '2019-02-24', 1, '1550969640'),
('125.160.79.38', '2019-02-24', 3, '1550969770'),
('180.241.131.21', '2019-02-24', 3, '1550981781'),
('203.78.121.209', '2019-02-24', 4, '1550969866'),
('120.188.37.84', '2019-02-24', 1, '1550969948'),
('114.125.188.116', '2019-02-24', 1, '1550970247'),
('202.67.34.13', '2019-02-24', 5, '1550978470'),
('182.0.142.232', '2019-02-24', 1, '1550970304'),
('114.124.181.130', '2019-02-24', 1, '1550970377'),
('180.249.88.111', '2019-02-24', 2, '1550971824'),
('222.124.59.92', '2019-02-24', 18, '1550970645'),
('111.68.25.33', '2019-02-24', 1, '1550970661'),
('182.1.41.119', '2019-02-24', 7, '1550971265'),
('182.1.42.200', '2019-02-24', 3, '1550971836'),
('182.1.111.250', '2019-02-24', 1, '1550971002'),
('64.233.173.179', '2019-02-24', 1, '1550971075'),
('114.125.215.72', '2019-02-24', 1, '1550971079'),
('64.233.173.183', '2019-02-24', 1, '1550971082'),
('182.1.61.7', '2019-02-24', 1, '1550971188'),
('182.1.47.59', '2019-02-24', 1, '1550971226'),
('125.161.71.105', '2019-02-24', 1, '1550971395'),
('182.0.137.153', '2019-02-24', 1, '1550971773'),
('182.0.146.231', '2019-02-24', 6, '1550971888'),
('115.178.206.2', '2019-02-24', 1, '1550971897'),
('182.1.55.209', '2019-02-24', 1, '1550972017'),
('180.214.232.51', '2019-02-24', 1, '1550972080'),
('114.125.38.59', '2019-02-24', 4, '1550972350'),
('114.4.215.52', '2019-02-24', 1, '1550972113'),
('115.178.205.108', '2019-02-24', 3, '1550972238'),
('180.243.149.235', '2019-02-24', 1, '1550972460'),
('223.255.227.13', '2019-02-24', 4, '1550972638'),
('114.125.189.79', '2019-02-24', 1, '1550972655'),
('115.178.196.253', '2019-02-24', 2, '1550972963'),
('223.255.231.158', '2019-02-24', 1, '1550972938'),
('140.213.0.136', '2019-02-24', 5, '1550973077'),
('180.242.81.164', '2019-02-24', 2, '1550973251'),
('115.178.250.225', '2019-02-24', 2, '1550975778'),
('36.79.10.189', '2019-02-24', 1, '1550973602'),
('182.1.162.18', '2019-02-24', 2, '1550973640'),
('182.1.21.122', '2019-02-24', 2, '1550973653'),
('182.1.24.146', '2019-02-24', 1, '1550973664'),
('103.44.39.75', '2019-02-24', 1, '1550973708'),
('120.188.65.80', '2019-02-24', 1, '1550973713'),
('103.233.145.82', '2019-02-24', 1, '1550973832'),
('36.68.118.121', '2019-02-24', 1, '1550974003'),
('120.188.92.255', '2019-02-24', 1, '1550974069'),
('114.5.213.30', '2019-02-24', 2, '1550974148'),
('115.178.255.0', '2019-02-24', 1, '1550974143'),
('114.125.42.138', '2019-02-24', 2, '1550974275'),
('180.249.202.74', '2019-02-24', 1, '1550974336'),
('125.162.166.143', '2019-02-24', 1, '1550974385'),
('115.132.137.5', '2019-02-24', 1, '1550974419'),
('120.188.67.229', '2019-02-24', 1, '1550974701'),
('116.206.14.55', '2019-02-24', 1, '1550974871'),
('36.82.103.21', '2019-02-24', 1, '1550974901'),
('36.79.248.4', '2019-02-24', 2, '1550975038'),
('36.70.120.57', '2019-02-24', 1, '1550975033'),
('110.136.164.121', '2019-02-24', 1, '1550975083'),
('36.81.62.42', '2019-02-24', 1, '1550975406'),
('36.90.153.67', '2019-02-24', 1, '1550975421'),
('180.253.222.57', '2019-02-24', 2, '1550975573'),
('114.142.172.55', '2019-02-24', 5, '1550976153'),
('36.78.52.110', '2019-02-24', 1, '1550975878'),
('36.78.201.27', '2019-02-24', 1, '1550976123'),
('36.84.240.115', '2019-02-24', 1, '1550976515'),
('180.246.89.78', '2019-02-24', 1, '1550976517'),
('223.255.228.84', '2019-02-24', 1, '1550976749'),
('61.5.120.125', '2019-02-24', 2, '1550979848'),
('101.255.86.66', '2019-02-24', 3, '1550977408'),
('114.4.213.35', '2019-02-24', 2, '1550977418'),
('140.213.18.137', '2019-02-24', 2, '1550977620'),
('182.0.139.26', '2019-02-24', 3, '1550977795'),
('115.178.195.137', '2019-02-24', 1, '1550977969'),
('180.241.191.250', '2019-02-24', 4, '1550978121'),
('125.161.139.224', '2019-02-24', 4, '1550978230'),
('115.178.254.162', '2019-02-24', 1, '1550978324'),
('116.206.8.54', '2019-02-24', 1, '1550978527'),
('182.1.33.168', '2019-02-24', 1, '1550978635'),
('203.190.113.60', '2019-02-24', 1, '1550978841'),
('182.1.85.150', '2019-02-24', 3, '1550978967'),
('36.85.50.90', '2019-02-24', 1, '1550979089'),
('115.178.252.85', '2019-02-24', 2, '1550981137'),
('112.215.173.113', '2019-02-24', 3, '1550979470'),
('140.213.44.204', '2019-02-24', 2, '1550979453'),
('182.1.0.16', '2019-02-24', 3, '1550979520'),
('140.213.7.36', '2019-02-24', 1, '1550979456'),
('36.73.32.209', '2019-02-24', 1, '1550979556'),
('180.244.8.67', '2019-02-24', 1, '1550980101'),
('120.188.83.9', '2019-02-24', 1, '1550980422'),
('114.124.170.110', '2019-02-24', 1, '1550980478'),
('36.90.13.138', '2019-02-24', 2, '1550980536'),
('114.124.230.117', '2019-02-24', 1, '1550980512'),
('110.138.73.66', '2019-02-24', 3, '1550980999'),
('125.167.248.241', '2019-02-24', 2, '1550981229'),
('115.178.218.106', '2019-02-24', 1, '1550981271'),
('114.125.171.49', '2019-02-24', 2, '1550981868'),
('125.160.93.220', '2019-02-24', 5, '1550982372'),
('64.233.173.181', '2019-02-24', 1, '1550982172'),
('125.166.126.194', '2019-02-24', 3, '1550982478'),
('192.99.100.98', '2019-02-24', 1, '1550982472'),
('223.164.5.156', '2019-02-24', 1, '1550982498'),
('36.71.224.91', '2019-02-24', 2, '1550982618'),
('182.1.188.146', '2019-02-24', 4, '1550982761'),
('180.254.122.85', '2019-02-24', 1, '1550982788'),
('182.1.28.156', '2019-02-24', 1, '1550982953'),
('36.73.27.60', '2019-02-24', 1, '1550983097'),
('110.137.116.24', '2019-02-24', 1, '1550983098'),
('180.246.205.3', '2019-02-24', 1, '1550983172'),
('112.215.230.82', '2019-02-24', 1, '1550983223'),
('182.0.211.177', '2019-02-24', 7, '1550983350'),
('125.167.125.42', '2019-02-24', 6, '1550983472'),
('120.188.36.66', '2019-02-24', 1, '1550983733'),
('125.160.196.176', '2019-02-24', 1, '1550983878'),
('36.90.18.69', '2019-02-24', 1, '1550984081'),
('36.65.32.218', '2019-02-24', 1, '1550984476'),
('36.84.62.12', '2019-02-24', 1, '1550984723'),
('180.249.201.238', '2019-02-24', 1, '1550984858'),
('125.165.188.184', '2019-02-24', 1, '1550984890'),
('125.161.136.179', '2019-02-24', 4, '1550985176'),
('36.82.97.208', '2019-02-24', 4, '1550985639'),
('120.188.4.77', '2019-02-24', 1, '1550985564'),
('180.241.228.195', '2019-02-24', 1, '1550985869'),
('223.255.230.50', '2019-02-24', 1, '1550986998'),
('125.161.138.36', '2019-02-24', 2, '1550987242'),
('139.195.13.204', '2019-02-24', 1, '1550987501'),
('110.137.74.239', '2019-02-24', 1, '1550987729'),
('112.215.219.4', '2019-02-24', 3, '1550987911'),
('182.1.19.68', '2019-02-24', 1, '1550987831'),
('114.125.175.106', '2019-02-24', 1, '1550988041'),
('116.206.30.36', '2019-02-24', 1, '1550988230'),
('158.140.187.199', '2019-02-24', 4, '1551022132'),
('182.1.113.24', '2019-02-24', 12, '1550989003'),
('125.162.35.233', '2019-02-24', 3, '1550989210'),
('66.220.149.35', '2019-02-24', 1, '1550989243'),
('66.220.149.20', '2019-02-24', 2, '1551021718'),
('31.13.115.13', '2019-02-24', 1, '1550989266'),
('182.1.54.227', '2019-02-24', 1, '1550989350'),
('180.254.89.184', '2019-02-24', 1, '1550989543'),
('36.71.234.151', '2019-02-24', 8, '1550991440'),
('36.72.28.116', '2019-02-24', 1, '1550990115'),
('36.84.225.226', '2019-02-24', 5, '1550990904'),
('112.215.151.126', '2019-02-24', 1, '1550990874'),
('36.75.223.5', '2019-02-24', 2, '1550992430'),
('36.90.71.71', '2019-02-24', 2, '1550992939'),
('180.245.190.160', '2019-02-24', 3, '1550994154'),
('140.213.13.173', '2019-02-24', 1, '1550996262'),
('114.124.139.115', '2019-02-24', 10, '1550996841'),
('114.125.6.131', '2019-02-24', 1, '1550996642'),
('115.178.198.4', '2019-02-24', 1, '1550996728'),
('114.5.209.93', '2019-02-24', 2, '1550996949'),
('182.1.79.248', '2019-02-24', 2, '1550997144'),
('140.213.47.207', '2019-02-24', 6, '1550998308'),
('112.215.174.112', '2019-02-24', 2, '1551021046'),
('140.213.58.58', '2019-02-24', 3, '1550997733'),
('111.95.224.105', '2019-02-24', 4, '1550997759'),
('180.241.203.178', '2019-02-24', 3, '1550998230'),
('36.76.173.213', '2019-02-24', 1, '1550998695'),
('116.206.14.44', '2019-02-24', 1, '1550998949'),
('114.124.168.182', '2019-02-24', 5, '1550999145'),
('182.1.106.240', '2019-02-24', 2, '1550999852'),
('140.213.3.33', '2019-02-24', 1, '1550999826'),
('182.1.40.230', '2019-02-24', 3, '1550999994'),
('182.1.174.202', '2019-02-24', 3, '1551000080'),
('223.255.230.54', '2019-02-24', 3, '1551000447'),
('114.4.212.73', '2019-02-24', 1, '1551000483'),
('114.4.222.247', '2019-02-24', 1, '1551000578'),
('36.65.217.125', '2019-02-24', 1, '1551001019'),
('36.84.228.238', '2019-02-24', 4, '1551001123'),
('182.253.150.166', '2019-02-24', 2, '1551001174'),
('36.70.228.75', '2019-02-24', 6, '1551001239'),
('180.254.91.0', '2019-02-24', 3, '1551001265'),
('110.138.148.21', '2019-02-24', 1, '1551001890'),
('114.142.169.43', '2019-02-24', 1, '1551001924'),
('114.124.244.186', '2019-02-24', 1, '1551001992'),
('114.125.68.85', '2019-02-24', 1, '1551002198'),
('182.0.196.126', '2019-02-24', 1, '1551002405'),
('182.0.231.133', '2019-02-24', 2, '1551002510'),
('36.85.235.121', '2019-02-24', 2, '1551002677'),
('140.213.13.168', '2019-02-24', 1, '1551002721'),
('182.1.76.127', '2019-02-24', 1, '1551002779'),
('114.124.136.247', '2019-02-24', 1, '1551003044'),
('36.70.17.154', '2019-02-24', 1, '1551003180'),
('114.124.173.226', '2019-02-24', 1, '1551003255'),
('182.0.205.177', '2019-02-24', 1, '1551004123'),
('203.78.119.157', '2019-02-24', 1, '1551004127'),
('203.78.117.20', '2019-02-24', 3, '1551004217'),
('120.188.34.52', '2019-02-24', 2, '1551004510'),
('36.84.228.150', '2019-02-24', 1, '1551004432'),
('66.249.71.84', '2019-02-24', 1, '1551004539'),
('36.81.190.37', '2019-02-24', 1, '1551005167'),
('36.79.248.59', '2019-02-24', 1, '1551005271'),
('182.1.33.36', '2019-02-24', 1, '1551005294'),
('180.243.230.186', '2019-02-24', 1, '1551005676'),
('114.124.213.137', '2019-02-24', 1, '1551005791'),
('115.178.237.252', '2019-02-24', 1, '1551005819'),
('140.213.46.65', '2019-02-24', 2, '1551006045'),
('61.5.94.112', '2019-02-24', 1, '1551006164'),
('182.253.62.80', '2019-02-24', 1, '1551006221'),
('114.124.145.1', '2019-02-24', 1, '1551006265'),
('140.213.58.6', '2019-02-24', 1, '1551006432'),
('180.241.35.226', '2019-02-24', 2, '1551023968'),
('140.213.17.115', '2019-02-24', 1, '1551006518'),
('182.1.37.80', '2019-02-24', 1, '1551006730'),
('173.252.87.15', '2019-02-24', 1, '1551006968'),
('36.90.41.180', '2019-02-24', 1, '1551007410'),
('158.140.187.208', '2019-02-24', 5, '1551007534'),
('36.72.255.34', '2019-02-24', 2, '1551007793'),
('182.1.74.98', '2019-02-24', 1, '1551007780'),
('36.83.75.180', '2019-02-24', 3, '1551007921'),
('120.188.33.9', '2019-02-24', 2, '1551008214'),
('114.125.7.83', '2019-02-24', 1, '1551008220'),
('115.178.253.126', '2019-02-24', 1, '1551008291'),
('116.206.29.36', '2019-02-24', 1, '1551008333'),
('36.70.106.29', '2019-02-24', 2, '1551008782'),
('36.75.52.133', '2019-02-24', 1, '1551008542'),
('111.94.216.185', '2019-02-24', 2, '1551008640'),
('125.167.43.78', '2019-02-24', 1, '1551008706'),
('36.85.28.157', '2019-02-24', 8, '1551008919'),
('118.98.121.66', '2019-02-24', 1, '1551009045'),
('36.73.118.86', '2019-02-24', 1, '1551009076'),
('114.124.136.168', '2019-02-24', 1, '1551009151'),
('182.253.163.35', '2019-02-24', 1, '1551009480');
INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('125.161.130.120', '2019-02-24', 3, '1551009570'),
('103.114.35.2', '2019-02-24', 5, '1551010232'),
('36.68.148.151', '2019-02-24', 1, '1551010219'),
('114.124.182.58', '2019-02-24', 2, '1551010418'),
('114.125.7.23', '2019-02-24', 5, '1551011104'),
('125.161.136.35', '2019-02-24', 1, '1551010809'),
('36.69.210.179', '2019-02-24', 10, '1551012123'),
('114.125.189.67', '2019-02-24', 2, '1551011230'),
('182.1.194.142', '2019-02-24', 1, '1551011534'),
('120.188.74.179', '2019-02-24', 1, '1551011638'),
('203.78.114.250', '2019-02-24', 1, '1551011644'),
('118.136.140.206', '2019-02-24', 1, '1551011678'),
('114.125.190.187', '2019-02-24', 1, '1551011777'),
('120.188.64.18', '2019-02-24', 7, '1551011964'),
('203.78.117.59', '2019-02-24', 2, '1551012039'),
('182.0.247.92', '2019-02-24', 1, '1551012213'),
('182.1.38.231', '2019-02-24', 3, '1551012589'),
('27.54.118.178', '2019-02-24', 3, '1551012768'),
('36.74.40.116', '2019-02-24', 1, '1551012808'),
('182.1.106.93', '2019-02-24', 1, '1551012890'),
('36.82.98.83', '2019-02-24', 1, '1551012950'),
('112.215.235.194', '2019-02-24', 8, '1551013379'),
('202.80.214.192', '2019-02-24', 2, '1551013140'),
('115.178.209.179', '2019-02-24', 1, '1551013162'),
('158.140.187.210', '2019-02-24', 1, '1551013461'),
('114.125.38.91', '2019-02-24', 3, '1551013513'),
('125.167.58.134', '2019-02-24', 1, '1551013491'),
('114.125.7.227', '2019-02-24', 1, '1551013594'),
('180.253.61.164', '2019-02-24', 5, '1551014308'),
('158.140.187.213', '2019-02-24', 1, '1551013807'),
('139.193.69.81', '2019-02-24', 1, '1551013830'),
('146.185.158.24', '2019-02-24', 2, '1551013964'),
('115.178.206.171', '2019-02-24', 1, '1551013883'),
('36.76.83.199', '2019-02-24', 2, '1551014212'),
('36.85.200.125', '2019-02-24', 4, '1551017099'),
('139.0.145.29', '2019-02-24', 1, '1551014355'),
('114.125.230.250', '2019-02-24', 1, '1551014394'),
('116.206.40.49', '2019-02-24', 3, '1551014561'),
('202.80.214.204', '2019-02-24', 1, '1551014713'),
('36.79.250.87', '2019-02-24', 1, '1551015024'),
('110.137.179.232', '2019-02-24', 2, '1551015109'),
('140.213.40.101', '2019-02-24', 2, '1551015296'),
('115.178.223.6', '2019-02-24', 4, '1551015441'),
('180.245.41.208', '2019-02-24', 3, '1551015725'),
('114.125.28.94', '2019-02-24', 1, '1551015696'),
('36.79.251.86', '2019-02-24', 3, '1551015858'),
('61.5.4.43', '2019-02-24', 1, '1551016071'),
('182.1.104.220', '2019-02-24', 1, '1551016124'),
('36.71.78.238', '2019-02-24', 2, '1551016178'),
('182.1.113.175', '2019-02-24', 1, '1551016195'),
('116.206.29.31', '2019-02-24', 1, '1551016235'),
('36.73.33.158', '2019-02-24', 1, '1551016451'),
('115.178.217.150', '2019-02-24', 1, '1551016612'),
('111.95.170.48', '2019-02-24', 1, '1551016626'),
('114.124.243.218', '2019-02-24', 1, '1551016660'),
('182.1.76.163', '2019-02-24', 1, '1551016879'),
('115.178.211.227', '2019-02-24', 3, '1551017045'),
('180.254.145.112', '2019-02-24', 1, '1551016912'),
('180.252.94.91', '2019-02-24', 1, '1551017167'),
('36.72.232.98', '2019-02-24', 1, '1551017277'),
('125.162.186.62', '2019-02-24', 2, '1551017454'),
('114.125.12.57', '2019-02-24', 1, '1551017447'),
('114.142.168.10', '2019-02-24', 1, '1551017450'),
('103.213.131.236', '2019-02-24', 1, '1551017468'),
('124.158.184.2', '2019-02-24', 2, '1551017857'),
('110.138.151.243', '2019-02-24', 1, '1551017901'),
('36.79.250.36', '2019-02-24', 1, '1551018043'),
('140.213.9.239', '2019-02-24', 2, '1551018125'),
('112.215.200.110', '2019-02-24', 1, '1551018135'),
('36.82.102.188', '2019-02-24', 7, '1551018317'),
('179.236.106.120', '2019-02-24', 1, '1551018374'),
('114.142.168.36', '2019-02-24', 1, '1551018620'),
('125.162.73.231', '2019-02-24', 3, '1551019018'),
('116.206.42.69', '2019-02-24', 1, '1551019184'),
('119.82.244.114', '2019-02-24', 3, '1551019420'),
('203.78.119.181', '2019-02-24', 1, '1551019421'),
('36.75.29.29', '2019-02-24', 1, '1551019435'),
('202.80.212.152', '2019-02-24', 1, '1551019513'),
('114.5.213.90', '2019-02-24', 1, '1551019528'),
('66.220.149.11', '2019-02-24', 2, '1551021719'),
('182.0.174.77', '2019-02-24', 1, '1551019630'),
('112.215.220.64', '2019-02-24', 1, '1551019696'),
('118.96.95.122', '2019-02-24', 1, '1551019754'),
('139.193.164.74', '2019-02-24', 1, '1551019779'),
('180.252.148.219', '2019-02-24', 1, '1551019843'),
('125.165.62.146', '2019-02-24', 1, '1551019858'),
('36.65.206.97', '2019-02-24', 1, '1551019889'),
('140.213.48.85', '2019-02-24', 1, '1551020128'),
('182.0.196.94', '2019-02-24', 1, '1551020166'),
('180.241.99.17', '2019-02-24', 2, '1551022564'),
('115.178.235.87', '2019-02-24', 2, '1551020729'),
('115.178.237.240', '2019-02-24', 3, '1551020790'),
('110.138.117.205', '2019-02-24', 1, '1551020703'),
('36.84.132.10', '2019-02-24', 4, '1551020812'),
('114.124.202.169', '2019-02-24', 5, '1551021100'),
('182.1.57.24', '2019-02-24', 1, '1551020820'),
('180.244.113.13', '2019-02-24', 3, '1551020859'),
('112.215.243.142', '2019-02-24', 1, '1551020855'),
('223.255.231.136', '2019-02-24', 1, '1551020990'),
('114.124.179.177', '2019-02-24', 3, '1551021035'),
('180.248.30.124', '2019-02-24', 2, '1551021150'),
('103.112.163.23', '2019-02-24', 1, '1551021216'),
('114.124.175.213', '2019-02-24', 1, '1551021366'),
('203.78.116.20', '2019-02-24', 1, '1551021533'),
('114.125.12.78', '2019-02-24', 1, '1551021566'),
('182.1.72.94', '2019-02-24', 3, '1551021743'),
('103.44.37.95', '2019-02-24', 1, '1551021720'),
('36.77.146.214', '2019-02-24', 1, '1551021733'),
('139.192.202.135', '2019-02-24', 1, '1551021749'),
('202.80.216.240', '2019-02-24', 2, '1551021886'),
('114.5.208.14', '2019-02-24', 1, '1551021859'),
('115.178.237.204', '2019-02-24', 1, '1551021877'),
('110.137.169.231', '2019-02-24', 3, '1551022091'),
('36.75.179.139', '2019-02-24', 1, '1551022118'),
('114.5.209.26', '2019-02-24', 5, '1551022256'),
('115.178.254.218', '2019-02-24', 1, '1551022201'),
('36.65.229.244', '2019-02-24', 1, '1551022273'),
('182.1.73.49', '2019-02-24', 5, '1551022922'),
('112.215.153.202', '2019-02-24', 1, '1551023163'),
('125.164.128.145', '2019-02-24', 1, '1551023172'),
('45.115.73.12', '2019-02-24', 1, '1551023814'),
('114.124.176.87', '2019-02-24', 5, '1551023902'),
('36.65.107.189', '2019-02-24', 5, '1551024147'),
('120.188.64.202', '2019-02-24', 1, '1551024278'),
('202.67.33.10', '2019-02-24', 2, '1551024415'),
('175.106.8.243', '2019-02-24', 1, '1551024775'),
('114.5.147.179', '2019-02-24', 1, '1551024955'),
('125.167.147.147', '2019-02-24', 2, '1551025162'),
('114.124.213.94', '2019-02-24', 1, '1551025174'),
('125.165.150.190', '2019-02-24', 10, '1551025449'),
('115.178.236.154', '2019-02-24', 1, '1551025433'),
('36.37.131.41', '2019-02-24', 20, '1551026742'),
('120.188.81.71', '2019-02-24', 2, '1551025624'),
('140.213.56.92', '2019-02-24', 1, '1551025733'),
('118.136.56.208', '2019-02-24', 1, '1551025981'),
('36.76.235.192', '2019-02-24', 1, '1551026007'),
('115.178.196.153', '2019-02-24', 1, '1551026017'),
('125.165.128.64', '2019-02-24', 1, '1551026033'),
('115.178.234.109', '2019-02-24', 1, '1551026165'),
('114.125.60.25', '2019-02-24', 1, '1551026286'),
('116.206.8.60', '2019-02-24', 12, '1551026702'),
('103.3.220.36', '2019-02-24', 1, '1551026461'),
('36.77.253.4', '2019-02-24', 2, '1551026526'),
('110.138.150.81', '2019-02-24', 2, '1551026628'),
('180.252.173.178', '2019-02-24', 1, '1551026558'),
('120.188.81.199', '2019-02-24', 1, '1551026632'),
('114.124.138.73', '2019-02-25', 2, '1551028003'),
('114.125.7.23', '2019-02-25', 1, '1551027777'),
('114.124.137.181', '2019-02-25', 1, '1551027822'),
('114.4.78.184', '2019-02-25', 1, '1551028362'),
('114.125.63.166', '2019-02-25', 1, '1551028391'),
('110.137.17.19', '2019-02-25', 3, '1551028482'),
('182.1.176.61', '2019-02-25', 1, '1551028454'),
('114.125.220.214', '2019-02-25', 2, '1551028696'),
('120.188.87.250', '2019-02-25', 1, '1551028730'),
('182.1.50.16', '2019-02-25', 1, '1551028975'),
('140.213.46.135', '2019-02-25', 5, '1551029121'),
('36.78.243.88', '2019-02-25', 2, '1551029223'),
('182.1.24.214', '2019-02-25', 1, '1551029115'),
('101.255.36.46', '2019-02-25', 1, '1551029252'),
('116.93.119.178', '2019-02-25', 2, '1551029515'),
('180.254.168.198', '2019-02-25', 1, '1551029487'),
('114.5.213.104', '2019-02-25', 1, '1551029542'),
('110.138.219.49', '2019-02-25', 3, '1551029713'),
('36.90.78.80', '2019-02-25', 1, '1551029710'),
('112.215.171.79', '2019-02-25', 2, '1551029893'),
('110.137.163.15', '2019-02-25', 3, '1551030126'),
('140.213.48.12', '2019-02-25', 1, '1551030191'),
('115.178.210.222', '2019-02-25', 5, '1551030536'),
('202.67.33.46', '2019-02-25', 1, '1551030684'),
('182.0.241.45', '2019-02-25', 1, '1551030858'),
('148.64.56.66', '2019-02-25', 1, '1551031085'),
('120.188.81.220', '2019-02-25', 2, '1551031417'),
('114.125.23.45', '2019-02-25', 2, '1551031669'),
('36.82.103.75', '2019-02-25', 1, '1551032448'),
('140.213.35.197', '2019-02-25', 1, '1551033651'),
('120.188.6.165', '2019-02-25', 1, '1551033751'),
('182.1.52.1', '2019-02-25', 1, '1551033944'),
('180.253.90.222', '2019-02-25', 3, '1551054294'),
('175.158.50.96', '2019-02-25', 1, '1551034634'),
('180.247.25.41', '2019-02-25', 5, '1551060131'),
('120.188.81.63', '2019-02-25', 1, '1551036526'),
('8.37.71.47', '2019-02-25', 1, '1551038287'),
('140.213.13.217', '2019-02-25', 2, '1551039257'),
('114.124.197.183', '2019-02-25', 1, '1551039275'),
('180.248.152.26', '2019-02-25', 2, '1551039958'),
('115.178.221.221', '2019-02-25', 1, '1551041516'),
('180.249.203.204', '2019-02-25', 1, '1551041589'),
('114.124.237.102', '2019-02-25', 1, '1551041991'),
('139.193.237.229', '2019-02-25', 1, '1551042239'),
('36.90.13.153', '2019-02-25', 1, '1551043520'),
('112.215.241.47', '2019-02-25', 2, '1551043609'),
('114.124.242.130', '2019-02-25', 1, '1551044091'),
('115.178.215.91', '2019-02-25', 1, '1551044145'),
('114.124.241.138', '2019-02-25', 5, '1551044442'),
('36.74.238.75', '2019-02-25', 1, '1551044449'),
('180.251.114.75', '2019-02-25', 3, '1551045718'),
('54.86.66.252', '2019-02-25', 5, '1551053602'),
('182.1.121.204', '2019-02-25', 2, '1551047033'),
('139.193.32.210', '2019-02-25', 2, '1551047669'),
('182.1.44.165', '2019-02-25', 1, '1551047997'),
('103.44.37.159', '2019-02-25', 1, '1551048111'),
('158.140.187.221', '2019-02-25', 1, '1551048274'),
('112.215.235.8', '2019-02-25', 3, '1551048691'),
('114.4.219.248', '2019-02-25', 2, '1551048914'),
('180.251.217.78', '2019-02-25', 2, '1551048999'),
('36.68.137.207', '2019-02-25', 1, '1551049335'),
('114.125.70.177', '2019-02-25', 1, '1551049382'),
('110.138.151.40', '2019-02-25', 1, '1551049675'),
('36.76.27.221', '2019-02-25', 1, '1551049817'),
('46.101.92.175', '2019-02-25', 1, '1551051131'),
('180.214.233.125', '2019-02-25', 1, '1551051307'),
('36.75.169.36', '2019-02-25', 1, '1551051640'),
('141.0.8.141', '2019-02-25', 2, '1551051711'),
('180.254.128.174', '2019-02-25', 1, '1551051759'),
('116.206.9.53', '2019-02-25', 1, '1551051954'),
('103.24.212.93', '2019-02-25', 1, '1551052702'),
('36.76.244.175', '2019-02-25', 10, '1551052846'),
('115.178.205.165', '2019-02-25', 3, '1551053112'),
('118.97.134.134', '2019-02-25', 1, '1551053312'),
('36.73.33.217', '2019-02-25', 4, '1551053569'),
('184.72.115.35', '2019-02-25', 1, '1551053578'),
('54.175.74.27', '2019-02-25', 3, '1551078314'),
('114.4.218.213', '2019-02-25', 7, '1551054034'),
('114.124.141.139', '2019-02-25', 1, '1551053928'),
('114.125.198.40', '2019-02-25', 2, '1551055137'),
('182.1.3.226', '2019-02-25', 1, '1551056234'),
('118.96.164.136', '2019-02-25', 1, '1551056247'),
('114.124.168.147', '2019-02-25', 5, '1551056406'),
('36.78.120.136', '2019-02-25', 4, '1551056626'),
('115.178.254.157', '2019-02-25', 6, '1551056784'),
('114.6.72.90', '2019-02-25', 1, '1551057069'),
('114.125.100.172', '2019-02-25', 1, '1551057169'),
('140.213.8.169', '2019-02-25', 3, '1551057311'),
('103.18.78.98', '2019-02-25', 4, '1551057600'),
('125.163.241.117', '2019-02-25', 1, '1551057867'),
('103.215.25.50', '2019-02-25', 8, '1551057928'),
('36.85.32.47', '2019-02-25', 1, '1551057883'),
('203.24.50.142', '2019-02-25', 17, '1551058071'),
('202.65.115.90', '2019-02-25', 1, '1551057897'),
('182.1.100.190', '2019-02-25', 2, '1551058115'),
('103.95.7.9', '2019-02-25', 1, '1551058269'),
('103.31.207.25', '2019-02-25', 2, '1551058871'),
('112.215.170.158', '2019-02-25', 2, '1551058961'),
('36.84.226.2', '2019-02-25', 2, '1551059285'),
('114.125.200.39', '2019-02-25', 6, '1551061224'),
('66.96.232.222', '2019-02-25', 1, '1551059134'),
('114.124.169.217', '2019-02-25', 2, '1551059234'),
('66.220.149.13', '2019-02-25', 1, '1551059243'),
('64.233.173.181', '2019-02-25', 1, '1551059631'),
('115.178.193.240', '2019-02-25', 5, '1551060099'),
('104.143.209.100', '2019-02-25', 1, '1551060169'),
('114.125.20.70', '2019-02-25', 1, '1551060269'),
('202.182.174.138', '2019-02-25', 3, '1551060897'),
('116.206.38.50', '2019-02-25', 1, '1551060493'),
('116.206.14.30', '2019-02-25', 1, '1551060704'),
('114.125.59.25', '2019-02-25', 1, '1551061053'),
('66.220.149.19', '2019-02-25', 2, '1551061117'),
('66.220.149.10', '2019-02-25', 1, '1551061116'),
('31.13.115.12', '2019-02-25', 1, '1551061126'),
('202.150.144.150', '2019-02-25', 1, '1551061127'),
('182.1.104.154', '2019-02-25', 1, '1551061155'),
('103.18.30.52', '2019-02-25', 1, '1551061515'),
('202.146.232.118', '2019-02-25', 2, '1551061784'),
('114.124.179.17', '2019-02-25', 1, '1551061793'),
('36.85.71.180', '2019-02-25', 5, '1551062244'),
('110.76.148.86', '2019-02-25', 1, '1551062346'),
('118.136.148.201', '2019-02-25', 3, '1551062491'),
('116.206.15.16', '2019-02-25', 3, '1551062661'),
('114.5.147.179', '2019-02-25', 8, '1551063160'),
('180.252.68.183', '2019-02-25', 2, '1551063274'),
('103.111.53.52', '2019-02-25', 1, '1551063670'),
('103.17.76.51', '2019-02-25', 1, '1551064354'),
('115.178.253.98', '2019-02-25', 2, '1551065448'),
('116.206.40.56', '2019-02-25', 1, '1551065452'),
('140.213.44.164', '2019-02-25', 7, '1551065887'),
('139.228.188.147', '2019-02-25', 4, '1551065915'),
('36.72.219.126', '2019-02-25', 1, '1551065877'),
('116.206.40.89', '2019-02-25', 2, '1551065984'),
('114.125.188.88', '2019-02-25', 4, '1551066062'),
('103.73.72.74', '2019-02-25', 1, '1551066315'),
('103.105.128.99', '2019-02-25', 1, '1551066556'),
('120.188.85.236', '2019-02-25', 1, '1551066561'),
('118.96.185.21', '2019-02-25', 4, '1551066865'),
('36.77.155.110', '2019-02-25', 1, '1551066799'),
('223.255.229.16', '2019-02-25', 1, '1551066872'),
('103.5.148.4', '2019-02-25', 1, '1551067597'),
('158.140.167.199', '2019-02-25', 4, '1551068180'),
('103.10.105.229', '2019-02-25', 1, '1551068183'),
('36.82.97.103', '2019-02-25', 4, '1551068558'),
('182.0.201.105', '2019-02-25', 4, '1551068558'),
('120.188.33.248', '2019-02-25', 3, '1551074058'),
('121.101.129.18', '2019-02-25', 3, '1551069042'),
('36.72.148.139', '2019-02-25', 1, '1551069394'),
('36.82.102.82', '2019-02-25', 2, '1551069475'),
('124.81.107.194', '2019-02-25', 6, '1551069530'),
('185.26.180.169', '2019-02-25', 1, '1551069535'),
('82.145.221.156', '2019-02-25', 4, '1551069620'),
('123.231.247.42', '2019-02-25', 1, '1551070716'),
('36.70.134.72', '2019-02-25', 4, '1551071026'),
('114.125.8.164', '2019-02-25', 1, '1551071017'),
('36.84.242.199', '2019-02-25', 1, '1551071072'),
('139.194.82.90', '2019-02-25', 1, '1551071676'),
('66.249.71.82', '2019-02-25', 1, '1551071678'),
('180.241.61.11', '2019-02-25', 1, '1551071786'),
('139.255.146.48', '2019-02-25', 1, '1551071974'),
('202.67.46.27', '2019-02-25', 1, '1551072174'),
('36.71.234.47', '2019-02-25', 3, '1551072394'),
('114.125.102.110', '2019-02-25', 1, '1551072560'),
('36.72.219.154', '2019-02-25', 4, '1551072660'),
('103.76.23.243', '2019-02-25', 1, '1551072641'),
('115.178.255.209', '2019-02-25', 2, '1551073730'),
('203.142.76.250', '2019-02-25', 3, '1551074576'),
('141.0.9.30', '2019-02-25', 1, '1551074545'),
('118.99.97.242', '2019-02-25', 3, '1551075031'),
('114.124.199.183', '2019-02-25', 1, '1551075213'),
('139.192.146.91', '2019-02-25', 1, '1551075671'),
('66.220.149.25', '2019-02-25', 1, '1551075683'),
('182.253.143.7', '2019-02-25', 9, '1551076066'),
('36.90.153.123', '2019-02-25', 3, '1551076153'),
('182.1.203.124', '2019-02-25', 1, '1551076205'),
('118.97.161.114', '2019-02-25', 2, '1551076378'),
('178.62.92.29', '2019-02-25', 3, '1551078586'),
('182.0.197.189', '2019-02-25', 1, '1551079313'),
('125.165.42.109', '2019-02-25', 1, '1551079470'),
('125.165.33.199', '2019-02-25', 5, '1551080101'),
('115.178.253.163', '2019-02-25', 3, '1551081754'),
('182.253.141.155', '2019-02-25', 5, '1551082583'),
('182.0.169.7', '2019-02-25', 1, '1551082572'),
('180.249.181.41', '2019-02-25', 1, '1551082770'),
('202.162.43.21', '2019-02-25', 3, '1551083034'),
('66.220.149.1', '2019-02-25', 1, '1551083039'),
('66.220.149.30', '2019-02-25', 1, '1551083039'),
('112.215.220.34', '2019-02-25', 1, '1551083382'),
('114.4.217.170', '2019-02-25', 8, '1551100199'),
('120.188.77.120', '2019-02-25', 1, '1551086366'),
('140.213.41.155', '2019-02-25', 1, '1551087458'),
('112.215.45.84', '2019-02-25', 7, '1551087773'),
('115.124.86.58', '2019-02-25', 6, '1551087793'),
('182.1.183.130', '2019-02-25', 1, '1551087979'),
('140.213.34.247', '2019-02-25', 1, '1551089424'),
('36.84.62.54', '2019-02-25', 1, '1551089989'),
('115.178.201.117', '2019-02-25', 23, '1551090365'),
('117.102.66.73', '2019-02-25', 1, '1551090417'),
('120.188.76.177', '2019-02-25', 3, '1551093256'),
('182.0.238.68', '2019-02-25', 1, '1551093481'),
('202.67.36.2', '2019-02-25', 1, '1551097807'),
('103.208.137.246', '2019-02-25', 14, '1551104433'),
('116.206.38.40', '2019-02-25', 11, '1551101617'),
('120.188.33.183', '2019-02-25', 1, '1551099705'),
('116.206.29.52', '2019-02-25', 1, '1551101538'),
('182.0.230.109', '2019-02-25', 1, '1551102132'),
('116.206.28.53', '2019-02-25', 1, '1551102577'),
('182.1.53.2', '2019-02-25', 1, '1551102795'),
('112.215.151.213', '2019-02-25', 1, '1551103847'),
('72.14.199.114', '2019-02-25', 1, '1551104420'),
('42.108.232.72', '2019-02-25', 1, '1551106252'),
('103.10.67.173', '2019-02-25', 3, '1551111252'),
('180.241.237.171', '2019-02-25', 1, '1551107390'),
('140.213.58.88', '2019-02-25', 1, '1551107451'),
('182.1.41.95', '2019-02-25', 1, '1551108876'),
('114.125.46.203', '2019-02-25', 1, '1551110358'),
('114.125.100.70', '2019-02-25', 1, '1551111740'),
('140.213.13.208', '2019-02-25', 2, '1551112220'),
('103.78.115.54', '2019-02-25', 3, '1551113954'),
('36.77.76.90', '2019-02-26', 1, '1551114124'),
('52.71.155.178', '2019-02-26', 1, '1551114622'),
('54.175.74.27', '2019-02-26', 1, '1551114627'),
('36.81.7.116', '2019-02-26', 1, '1551116795'),
('180.249.202.149', '2019-02-26', 1, '1551116949'),
('140.213.32.186', '2019-02-26', 1, '1551117838'),
('94.180.142.152', '2019-02-26', 1, '1551119505'),
('114.124.133.47', '2019-02-26', 2, '1551120388'),
('::1', '2019-02-26', 3, '1551123551'),
('::1', '2020-04-25', 14, '1587827391'),
('::1', '2020-04-26', 51, '1587852186'),
('::1', '2020-05-15', 1, '1589507695'),
('118.96.210.224', '2020-05-15', 32, '1589517332'),
('103.253.214.10', '2020-05-15', 1, '1589514771'),
('114.122.140.31', '2020-05-15', 1, '1589517619'),
('36.75.121.150', '2020-05-15', 30, '1589520463'),
('158.69.64.72', '2020-05-15', 1, '1589532362'),
('159.203.24.155', '2020-05-15', 1, '1589540520'),
('138.197.140.187', '2020-05-15', 1, '1589540521'),
('138.197.138.211', '2020-05-15', 1, '1589540523'),
('138.197.141.201', '2020-05-15', 1, '1589540524'),
('180.253.250.174', '2020-05-15', 1, '1589548362'),
('121.36.137.19', '2020-05-15', 1, '1589559040'),
('138.68.39.154', '2020-05-16', 1, '1589572033'),
('180.253.250.174', '2020-05-16', 28, '1589630442'),
('54.218.50.121', '2020-05-16', 1, '1589580613'),
('54.149.62.136', '2020-05-16', 1, '1589580970'),
('52.40.85.152', '2020-05-16', 1, '1589581388'),
('54.36.113.142', '2020-05-16', 1, '1589582662'),
('103.253.214.10', '2020-05-16', 3, '1589629789'),
('216.55.182.90', '2020-05-16', 1, '1589584066'),
('206.225.80.193', '2020-05-16', 2, '1589584099'),
('121.36.137.19', '2020-05-16', 21, '1589643611'),
('2.236.112.207', '2020-05-16', 2, '1589592429'),
('3.22.242.162', '2020-05-16', 2, '1589601164'),
('211.56.145.140', '2020-05-16', 15, '1589610602'),
('3.17.210.127', '2020-05-16', 1, '1589623947'),
('203.78.114.163', '2020-05-16', 2, '1589630635'),
('182.1.85.157', '2020-05-16', 1, '1589641019'),
('46.4.33.48', '2020-05-17', 1, '1589648891'),
('137.226.113.28', '2020-05-17', 1, '1589649899'),
('137.226.113.27', '2020-05-17', 1, '1589651187'),
('121.36.137.19', '2020-05-17', 10, '1589728336'),
('46.45.185.180', '2020-05-17', 1, '1589654558'),
('62.210.83.78', '2020-05-17', 1, '1589667265'),
('2.236.112.207', '2020-05-17', 2, '1589690636'),
('31.6.19.131', '2020-05-17', 1, '1589708419'),
('35.230.61.245', '2020-05-17', 1, '1589710725'),
('159.89.23.245', '2020-05-17', 1, '1589715782'),
('54.209.103.185', '2020-05-17', 1, '1589719334'),
('107.21.39.100', '2020-05-17', 1, '1589722393'),
('54.77.13.15', '2020-05-17', 1, '1589728120'),
('138.197.222.62', '2020-05-18', 1, '1589737252'),
('121.36.137.19', '2020-05-18', 11, '1589819714'),
('173.249.22.173', '2020-05-18', 1, '1589742817'),
('194.94.127.9', '2020-05-18', 1, '1589747949'),
('36.99.136.142', '2020-05-18', 1, '1589753088'),
('2.236.112.207', '2020-05-18', 1, '1589755193'),
('2.236.112.207', '2020-05-18', 1, '1589755193'),
('36.75.134.171', '2020-05-18', 2, '1589758960'),
('36.75.121.150', '2020-05-18', 7, '1589760755'),
('180.249.118.1', '2020-05-18', 15, '1589777718'),
('103.9.145.67', '2020-05-18', 1, '1589780689'),
('46.45.185.180', '2020-05-18', 1, '1589785563'),
('173.252.95.14', '2020-05-18', 1, '1589790170'),
('206.180.188.245', '2020-05-18', 1, '1589815051'),
('58.30.141.60', '2020-05-19', 2, '1589900820'),
('171.13.14.58', '2020-05-19', 1, '1589830739'),
('171.13.14.84', '2020-05-19', 1, '1589830755'),
('161.69.99.11', '2020-05-19', 2, '1589831983'),
('31.6.19.131', '2020-05-19', 1, '1589834416'),
('121.36.137.19', '2020-05-19', 7, '1589899856'),
('46.51.135.38', '2020-05-19', 1, '1589850492'),
('2.236.112.207', '2020-05-19', 1, '1589851553'),
('2.236.112.207', '2020-05-19', 1, '1589851553'),
('91.227.68.180', '2020-05-19', 2, '1589852566'),
('46.45.185.171', '2020-05-19', 1, '1589857757'),
('107.174.235.147', '2020-05-19', 1, '1589859906'),
('209.239.122.230', '2020-05-19', 1, '1589873137'),
('63.216.156.61', '2020-05-19', 1, '1589904426'),
('121.36.137.19', '2020-05-20', 1, '1589908232'),
('196.196.85.196', '2020-05-20', 1, '1589917129'),
('36.99.136.142', '2020-05-20', 2, '1589920400'),
('111.7.100.24', '2020-05-20', 1, '1589920401'),
('36.99.136.139', '2020-05-20', 1, '1589920407'),
('36.65.139.189', '2020-05-20', 4, '1589951775'),
('221.229.218.152', '2020-05-20', 2, '1589937724'),
('72.13.62.27', '2020-05-20', 3, '1589975616'),
('66.249.79.223', '2020-05-21', 1, '1590011311'),
('66.249.66.143', '2020-05-21', 1, '1590015182'),
('66.249.66.139', '2020-05-21', 1, '1590017205'),
('114.5.220.202', '2020-05-21', 1, '1590030460'),
('58.30.141.60', '2020-05-21', 1, '1590055322'),
('46.45.185.162', '2020-05-21', 1, '1590057105'),
('66.249.66.141', '2020-05-21', 1, '1590060159'),
('65.154.226.100', '2020-05-22', 1, '1590090579'),
('66.249.73.213', '2020-05-22', 1, '1590091215'),
('65.154.226.220', '2020-05-22', 1, '1590092080'),
('65.154.226.109', '2020-05-22', 1, '1590097919'),
('51.158.109.172', '2020-05-22', 3, '1590123108'),
('51.15.192.148', '2020-05-22', 4, '1590121850'),
('46.45.185.184', '2020-05-22', 1, '1590118508'),
('208.80.194.41', '2020-05-22', 1, '1590133887'),
('58.30.141.60', '2020-05-22', 1, '1590141135'),
('36.99.136.130', '2020-05-23', 1, '1590167544'),
('66.249.73.215', '2020-05-23', 1, '1590180096'),
('193.153.175.165', '2020-05-23', 1, '1590186299'),
('137.226.113.28', '2020-05-24', 2, '1590268501'),
('46.45.185.177', '2020-05-24', 1, '1590262093'),
('66.249.73.211', '2020-05-24', 1, '1590270516'),
('112.215.219.52', '2020-05-24', 1, '1590313586'),
('34.222.207.74', '2020-05-24', 1, '1590314865'),
('66.249.71.149', '2020-05-25', 1, '1590350419'),
('46.45.185.186', '2020-05-25', 1, '1590371873'),
('144.168.162.250', '2020-05-25', 2, '1590417353'),
('46.45.185.183', '2020-05-26', 1, '1590461116'),
('54.202.150.154', '2020-05-26', 1, '1590487377'),
('200.10.37.93', '2020-05-26', 1, '1590498262'),
('66.249.71.151', '2020-05-27', 1, '1590529719'),
('46.45.185.165', '2020-05-27', 1, '1590542918'),
('205.185.223.109', '2020-05-27', 1, '1590591372'),
('64.145.79.137', '2020-05-27', 4, '1590591382'),
('209.107.196.183', '2020-05-27', 1, '1590591468'),
('180.249.116.77', '2020-05-28', 1, '1590627900'),
('198.46.214.105', '2020-05-28', 1, '1590657442'),
('46.45.185.163', '2020-05-28', 1, '1590657565'),
('54.245.25.135', '2020-05-29', 1, '1590696043'),
('34.222.145.135', '2020-05-29', 1, '1590696861'),
('34.209.174.194', '2020-05-29', 1, '1590697504'),
('34.223.59.141', '2020-05-29', 1, '1590697784'),
('182.1.100.153', '2020-05-29', 3, '1590712742'),
('46.45.185.166', '2020-05-29', 1, '1590713454'),
('114.125.127.64', '2020-05-29', 1, '1590718783'),
('208.80.194.42', '2020-05-29', 1, '1590748586'),
('51.15.74.152', '2020-05-29', 1, '1590759499'),
('47.101.189.169', '2020-05-29', 2, '1590764144'),
('66.249.70.31', '2020-05-30', 1, '1590788943'),
('137.226.113.28', '2020-05-30', 1, '1590857799'),
('137.226.113.26', '2020-05-31', 1, '1590861687'),
('136.243.104.222', '2020-05-31', 1, '1590901683'),
('34.223.43.150', '2020-06-01', 1, '1591006498'),
('66.249.79.194', '2020-06-02', 1, '1591048147'),
('140.213.126.156', '2020-06-03', 1, '1591167160'),
('66.249.73.23', '2020-06-03', 1, '1591195164'),
('180.249.116.175', '2020-06-04', 9, '1591239732'),
('36.72.48.56', '2020-06-04', 10, '1591260414'),
('103.253.214.10', '2020-06-04', 1, '1591260284'),
('82.202.161.133', '2020-06-04', 1, '1591263935'),
('54.36.173.165', '2020-06-04', 1, '1591275072'),
('94.100.6.72', '2020-06-04', 1, '1591275124'),
('66.249.70.3', '2020-06-05', 1, '1591307558'),
('66.249.70.31', '2020-06-05', 2, '1591338620'),
('103.27.202.84', '2020-06-05', 1, '1591321582'),
('208.80.194.42', '2020-06-05', 1, '1591364710'),
('23.250.16.245', '2020-06-05', 1, '1591369452'),
('109.169.64.234', '2020-06-06', 4, '1591391089'),
('199.244.88.132', '2020-06-06', 1, '1591435567'),
('34.216.22.89', '2020-06-06', 1, '1591437989'),
('137.226.113.26', '2020-06-07', 1, '1591468365'),
('137.226.113.28', '2020-06-07', 1, '1591473235'),
('103.253.214.10', '2020-06-07', 1, '1591487758'),
('88.198.50.113', '2020-06-07', 1, '1591497970'),
('51.158.109.172', '2020-06-07', 1, '1591503340'),
('66.249.71.151', '2020-06-08', 2, '1591602170'),
('66.249.79.194', '2020-06-08', 1, '1591590811'),
('62.210.111.97', '2020-06-08', 1, '1591618984'),
('66.249.71.149', '2020-06-09', 2, '1591654540'),
('31.171.152.132', '2020-06-09', 3, '1591667253'),
('103.253.214.10', '2020-06-09', 2, '1591695514'),
('36.72.51.255', '2020-06-09', 101, '1591715668'),
('114.5.105.144', '2020-06-09', 1, '1591707892'),
('36.71.233.192', '2020-06-10', 1, '1591751303'),
('103.253.214.10', '2020-06-10', 8, '1591770862'),
('38.111.164.224', '2020-06-10', 1, '1591789275'),
('3.22.242.162', '2020-06-10', 2, '1591802993'),
('62.210.5.253', '2020-06-11', 1, '1591833020'),
('104.227.178.50', '2020-06-14', 1, '1592074285'),
('120.188.84.41', '2020-06-14', 9, '1592101978'),
('114.5.110.101', '2020-06-14', 16, '1592110355'),
('180.249.118.0', '2020-06-14', 40, '1592136041'),
('36.85.193.105', '2020-06-15', 23, '1592204762'),
('180.249.118.0', '2020-06-15', 1, '1592229547'),
('36.85.193.105', '2020-06-16', 25, '1592282292'),
('180.249.118.211', '2020-06-17', 17, '1592370298'),
('103.253.214.10', '2020-06-18', 2, '1592447795'),
('36.78.72.27', '2020-06-18', 1, '1592447789'),
('180.249.118.211', '2020-06-18', 2, '1592457309'),
('36.75.125.22', '2020-06-19', 10, '1592545129'),
('103.253.214.10', '2020-06-20', 1, '1592640171'),
('110.139.191.69', '2020-06-22', 16, '1592785650'),
('103.253.214.10', '2020-06-22', 3, '1592801162'),
('125.163.6.121', '2020-06-22', 5, '1592801156'),
('36.75.113.6', '2020-06-24', 3, '1592976897'),
('103.253.214.10', '2020-06-25', 2, '1593065880'),
('36.75.113.6', '2020-06-25', 9, '1593056368'),
('125.161.82.21', '2020-06-25', 1, '1593073858'),
('103.253.214.10', '2020-06-26', 1, '1593135201'),
('36.71.234.112', '2020-06-26', 1, '1593135208'),
('180.249.118.178', '2020-06-26', 2, '1593178478'),
('180.245.231.9', '2020-06-27', 16, '1593241997'),
('103.253.214.10', '2020-06-27', 2, '1593241414'),
('125.163.105.69', '2020-06-28', 9, '1593346471'),
('110.136.209.92', '2020-06-29', 23, '1593402200'),
('199.244.88.132', '2020-06-30', 2, '1593511144'),
('103.253.214.10', '2020-07-01', 3, '1593608402'),
('180.254.219.66', '2020-07-02', 52, '1593659673'),
('103.253.214.10', '2020-07-02', 2, '1593673496'),
('103.253.214.10', '2020-07-05', 1, '1593953734'),
('174.138.59.128', '2020-07-06', 1, '1593980601'),
('68.183.56.24', '2020-07-06', 1, '1593983027'),
('64.225.4.211', '2020-07-06', 1, '1593983863'),
('180.249.118.22', '2020-07-06', 29, '1594001489'),
('180.249.117.136', '2020-07-07', 7, '1594098518'),
('110.136.224.215', '2020-07-09', 3, '1594259063'),
('138.197.170.220', '2020-07-09', 1, '1594285763'),
('138.197.155.4', '2020-07-09', 1, '1594285765'),
('138.197.148.140', '2020-07-09', 1, '1594285766'),
('138.197.162.93', '2020-07-09', 1, '1594285768'),
('199.244.88.132', '2020-07-11', 1, '1594465172'),
('46.45.185.162', '2020-07-12', 1, '1594543498'),
('110.136.224.215', '2020-07-13', 9, '1594601003'),
('110.136.224.215', '2020-07-14', 5, '1594703744'),
('209.17.97.34', '2020-07-14', 1, '1594734076'),
('209.17.96.234', '2020-07-14', 1, '1594741912'),
('180.249.119.254', '2020-07-15', 12, '1594778333'),
('199.244.88.132', '2020-07-19', 1, '1595173056'),
('209.17.96.26', '2020-07-20', 1, '1595195360'),
('209.17.96.122', '2020-07-20', 1, '1595195395'),
('180.249.119.84', '2020-07-20', 22, '1595213016'),
('199.244.88.132', '2020-07-20', 1, '1595241252'),
('125.162.153.195', '2020-07-21', 6, '1595312862'),
('173.252.83.8', '2020-07-21', 2, '1595312577'),
('173.252.83.6', '2020-07-21', 1, '1595312570'),
('125.162.153.195', '2020-07-22', 4, '1595388282'),
('209.17.96.18', '2020-07-22', 1, '1595405319'),
('180.249.118.67', '2020-07-23', 9, '1595473799'),
('103.253.214.10', '2020-07-23', 7, '1595478198'),
('36.72.17.23', '2020-07-23', 22, '1595483160'),
('120.188.5.130', '2020-07-23', 2, '1595480883'),
('182.1.109.107', '2020-07-23', 13, '1595486327'),
('180.249.117.171', '2020-07-23', 21, '1595484732'),
('142.93.157.43', '2020-07-23', 1, '1595486994'),
('178.128.226.90', '2020-07-23', 1, '1595486995'),
('159.203.40.244', '2020-07-23', 1, '1595486996'),
('138.197.151.177', '2020-07-23', 1, '1595486997'),
('36.72.45.79', '2020-07-23', 1, '1595501725'),
('144.172.68.232', '2020-07-23', 1, '1595502710'),
('158.51.124.183', '2020-07-23', 1, '1595502711'),
('180.249.118.113', '2020-07-23', 4, '1595503412'),
('114.125.116.56', '2020-07-23', 1, '1595509990'),
('36.71.232.122', '2020-07-24', 4, '1595570724'),
('103.253.214.10', '2020-07-24', 2, '1595570296'),
('114.122.139.16', '2020-07-24', 6, '1595567830'),
('114.122.137.87', '2020-07-24', 3, '1595568993'),
('114.122.139.154', '2020-07-24', 4, '1595567938'),
('180.249.117.109', '2020-07-24', 18, '1595569331'),
('114.122.139.141', '2020-07-24', 1, '1595567194'),
('114.122.139.223', '2020-07-24', 9, '1595567433'),
('114.122.138.129', '2020-07-24', 2, '1595567555'),
('114.122.139.55', '2020-07-24', 5, '1595569567'),
('114.122.138.17', '2020-07-24', 1, '1595568948'),
('114.122.139.128', '2020-07-24', 4, '1595569694'),
('3.121.213.71', '2020-07-24', 2, '1595606168'),
('163.172.70.242', '2020-07-24', 1, '1595607188'),
('45.59.31.227', '2020-07-26', 1, '1595706974'),
('62.210.5.253', '2020-07-26', 1, '1595715765'),
('62.210.10.77', '2020-07-27', 1, '1595818740'),
('125.163.13.131', '2020-07-27', 2, '1595827244'),
('180.249.119.202', '2020-07-27', 24, '1595835029'),
('120.188.78.129', '2020-07-27', 4, '1595834141'),
('140.213.127.142', '2020-07-27', 14, '1595834091'),
('103.253.214.10', '2020-07-27', 2, '1595835795'),
('179.43.169.182', '2020-07-27', 4, '1595836140'),
('65.154.226.109', '2020-07-27', 2, '1595836121'),
('175.158.49.63', '2020-07-27', 11, '1595851725'),
('175.158.49.63', '2020-07-28', 2, '1595906122'),
('180.249.117.104', '2020-07-28', 2, '1595942482'),
('103.253.214.10', '2020-07-28', 1, '1595936551'),
('180.249.118.227', '2020-07-28', 1, '1595937151'),
('175.158.49.84', '2020-07-28', 1, '1595939512'),
('114.4.4.196', '2020-07-28', 1, '1595939527'),
('114.4.160.203', '2020-07-28', 1, '1595939591'),
('180.249.117.104', '2020-07-29', 9, '1596009905'),
('140.213.126.23', '2020-07-29', 56, '1596008590'),
('120.188.83.114', '2020-07-29', 3, '1596012928'),
('175.158.49.63', '2020-07-29', 5, '1596036654'),
('180.249.116.193', '2020-07-30', 63, '1596082240'),
('114.122.138.43', '2020-07-30', 29, '1596087099'),
('125.163.73.41', '2020-07-30', 11, '1596089973'),
('175.158.49.88', '2020-07-30', 1, '1596094654'),
('103.253.214.10', '2020-07-30', 1, '1596116532'),
('180.249.116.30', '2020-07-31', 2, '1596151672'),
('175.158.49.88', '2020-07-31', 1, '1596203272'),
('175.158.49.88', '2020-08-01', 1, '1596253162'),
('103.253.214.10', '2020-08-02', 1, '1596375024'),
('144.168.162.250', '2020-08-03', 2, '1596455035'),
('103.253.214.10', '2020-08-03', 1, '1596464976'),
('199.244.88.132', '2020-08-05', 1, '1596574600'),
('36.83.147.214', '2020-08-05', 6, '1596608264'),
('103.253.214.10', '2020-08-05', 2, '1596598409'),
('36.71.232.80', '2020-08-05', 1, '1596598440'),
('36.71.232.247', '2020-08-16', 1, '1597587836'),
('103.253.214.10', '2020-08-17', 1, '1597631622'),
('3.227.18.198', '2020-08-21', 1, '1597955845'),
('103.253.214.10', '2020-08-21', 1, '1597979246'),
('159.203.24.155', '2020-08-23', 1, '1598139124'),
('142.93.157.53', '2020-08-23', 1, '1598139125'),
('138.197.170.220', '2020-08-23', 1, '1598139126'),
('138.197.173.88', '2020-08-23', 1, '1598139128'),
('120.188.36.221', '2020-08-23', 1, '1598157338'),
('103.253.214.10', '2020-08-24', 1, '1598228116'),
('199.244.88.132', '2020-08-26', 1, '1598386428'),
('209.17.97.66', '2020-08-29', 1, '1598704961'),
('209.17.96.234', '2020-09-02', 1, '1599023775'),
('103.253.214.10', '2020-09-02', 1, '1599038713'),
('199.244.88.132', '2020-09-04', 1, '1599164489'),
('180.249.119.67', '2020-09-04', 1, '1599181131'),
('114.125.101.139', '2020-09-04', 1, '1599183386'),
('209.17.96.122', '2020-09-06', 1, '1599333699'),
('110.139.197.67', '2020-09-07', 8, '1599446020'),
('182.1.73.95', '2020-09-07', 2, '1599444326'),
('36.84.65.22', '2020-09-08', 2, '1599529618'),
('103.253.214.10', '2020-09-08', 1, '1599533511'),
('175.158.49.227', '2020-09-08', 106, '1599581589'),
('66.220.149.112', '2020-09-08', 1, '1599576474'),
('66.220.149.8', '2020-09-08', 1, '1599576480'),
('173.252.87.5', '2020-09-08', 1, '1599576484'),
('173.252.95.13', '2020-09-08', 1, '1599576485'),
('66.220.149.16', '2020-09-08', 2, '1599580866'),
('173.252.87.112', '2020-09-08', 1, '1599580873'),
('36.84.65.22', '2020-09-09', 3, '1599614340'),
('182.1.101.146', '2020-09-09', 1, '1599625558'),
('112.215.219.138', '2020-09-09', 1, '1599631841'),
('103.253.214.10', '2020-09-10', 1, '1599727933'),
('175.158.49.227', '2020-09-11', 14, '1599841567'),
('168.235.198.26', '2020-09-11', 1, '1599841625'),
('114.5.212.221', '2020-09-11', 2, '1599841678'),
('182.253.98.197', '2020-09-13', 6, '1599968381'),
('175.158.49.227', '2020-09-16', 8, '1600258488'),
('199.244.88.132', '2020-09-19', 1, '1600484800'),
('209.17.97.42', '2020-09-19', 1, '1600518742'),
('175.158.49.227', '2020-09-20', 14, '1600615351'),
('35.165.226.88', '2020-09-21', 1, '1600651436'),
('70.42.131.189', '2020-09-22', 1, '1600755482'),
('205.169.39.163', '2020-09-22', 2, '1600755691'),
('46.45.185.176', '2020-09-22', 1, '1600774812'),
('159.203.40.244', '2020-09-23', 1, '1600802421'),
('138.197.162.93', '2020-09-23', 1, '1600802421'),
('138.197.160.158', '2020-09-23', 1, '1600802423'),
('138.197.151.177', '2020-09-23', 1, '1600802424'),
('209.17.97.34', '2020-09-23', 1, '1600824753'),
('175.158.49.227', '2020-09-23', 1, '1600870254'),
('103.253.214.10', '2020-09-25', 1, '1601033275'),
('175.158.49.227', '2020-09-25', 16, '1601036043'),
('66.220.149.26', '2020-09-25', 1, '1601035707'),
('66.220.149.15', '2020-09-25', 1, '1601035710'),
('69.171.251.25', '2020-09-25', 1, '1601035716'),
('66.220.149.5', '2020-09-25', 1, '1601035716'),
('175.158.49.227', '2020-09-26', 2, '1601123314'),
('54.218.157.29', '2020-09-26', 1, '1601136274'),
('103.253.214.10', '2020-09-27', 1, '1601169151'),
('209.17.97.122', '2020-09-27', 1, '1601204683'),
('103.253.214.10', '2020-09-28', 1, '1601281948'),
('66.220.149.1', '2020-09-29', 1, '1601330943'),
('103.253.214.10', '2020-09-29', 1, '1601374153'),
('209.17.96.242', '2020-10-02', 1, '1601649341'),
('167.114.233.118', '2020-10-04', 1, '1601764896'),
('175.158.49.249', '2020-10-05', 15, '1601905243'),
('199.244.88.132', '2020-10-06', 1, '1601933691'),
('175.158.49.249', '2020-10-07', 29, '1602076108'),
('3.127.210.242', '2020-10-07', 1, '1602081919'),
('104.131.32.63', '2020-10-08', 1, '1602099566'),
('209.17.96.210', '2020-10-08', 1, '1602100463'),
('180.249.126.186', '2020-10-08', 11, '1602140770'),
('103.22.242.5', '2020-10-08', 1, '1602139486'),
('209.17.96.106', '2020-10-10', 1, '1602305714'),
('125.162.172.137', '2020-10-12', 1, '1602463312'),
('209.17.97.10', '2020-10-13', 1, '1602603362'),
('209.17.96.138', '2020-10-16', 1, '1602860935'),
('209.17.96.2', '2020-10-17', 1, '1602941195'),
('103.253.214.10', '2020-10-18', 1, '1603018948'),
('175.158.49.2', '2020-10-18', 46, '1603038826'),
('182.1.106.143', '2020-10-19', 2, '1603069462'),
('209.17.96.66', '2020-10-20', 1, '1603158355'),
('209.17.97.66', '2020-10-20', 1, '1603177872'),
('209.17.96.98', '2020-10-20', 1, '1603183593'),
('199.244.88.132', '2020-10-22', 1, '1603302537'),
('209.17.96.250', '2020-10-22', 1, '1603344788'),
('209.17.96.34', '2020-10-23', 1, '1603441084'),
('209.17.97.114', '2020-10-23', 1, '1603448060'),
('68.183.196.60', '2020-10-23', 1, '1603470426'),
('159.203.62.5', '2020-10-23', 1, '1603470427'),
('165.227.46.43', '2020-10-23', 1, '1603470428'),
('142.93.158.49', '2020-10-23', 1, '1603470430'),
('103.253.214.10', '2020-10-24', 3, '1603551416'),
('118.96.221.55', '2020-10-24', 5, '1603549526'),
('44.228.130.149', '2020-10-26', 1, '1603650191'),
('103.253.214.10', '2020-10-26', 1, '1603663040'),
('103.253.214.10', '2020-10-27', 1, '1603750126'),
('209.17.96.34', '2020-10-27', 1, '1603776497'),
('209.17.96.66', '2020-10-29', 1, '1603906445'),
('103.253.214.10', '2020-10-29', 1, '1603927140'),
('175.158.49.2', '2020-10-30', 2, '1604070603'),
('173.249.22.173', '2020-11-02', 1, '1604268664'),
('175.158.49.2', '2020-11-02', 8, '1604330601'),
('138.197.147.174', '2020-11-05', 1, '1604576812'),
('142.93.158.9', '2020-11-05', 1, '1604576817'),
('159.203.37.232', '2020-11-05', 1, '1604576818'),
('178.128.231.242', '2020-11-05', 1, '1604576823'),
('104.131.49.108', '2020-11-06', 1, '1604647398'),
('205.169.39.100', '2020-11-07', 2, '1604688307'),
('199.244.88.132', '2020-11-08', 1, '1604775905'),
('205.169.39.161', '2020-11-08', 2, '1604793740'),
('103.253.214.10', '2020-11-09', 1, '1604918447'),
('114.5.242.186', '2020-11-11', 3, '1605072340'),
('103.253.214.10', '2020-11-18', 1, '1605651949'),
('175.158.49.236', '2020-11-19', 11, '1605790860'),
('104.198.180.165', '2020-11-21', 3, '1605961031'),
('205.169.39.46', '2020-11-22', 1, '1606025367'),
('80.44.174.189', '2020-11-22', 2, '1606025494'),
('5.62.34.22', '2020-11-22', 1, '1606025372'),
('5.253.206.114', '2020-11-22', 1, '1606025373'),
('23.83.184.138', '2020-11-22', 1, '1606025375'),
('198.8.85.204', '2020-11-22', 1, '1606025494'),
('163.172.148.199', '2020-11-22', 1, '1606026620'),
('54.221.27.173', '2020-11-22', 1, '1606046042'),
('45.127.134.90', '2020-11-22', 1, '1606046966'),
('178.128.140.117', '2020-11-22', 1, '1606046967'),
('2.58.29.23', '2020-11-22', 1, '1606046970'),
('81.170.90.29', '2020-11-22', 1, '1606047074'),
('104.254.93.76', '2020-11-22', 1, '1606047079'),
('205.251.148.178', '2020-11-22', 1, '1606047119'),
('5.62.34.22', '2020-11-23', 1, '1606090267'),
('80.44.16.187', '2020-11-23', 1, '1606090277'),
('104.254.93.78', '2020-11-23', 1, '1606090278'),
('103.253.214.10', '2020-11-23', 1, '1606099875'),
('51.158.118.231', '2020-11-24', 1, '1606160935'),
('88.107.187.249', '2020-11-24', 2, '1606176659'),
('194.72.238.97', '2020-11-24', 2, '1606176659'),
('5.62.34.22', '2020-11-24', 1, '1606176590'),
('192.190.19.76', '2020-11-24', 1, '1606176659'),
('74.81.88.66', '2020-11-24', 1, '1606176660'),
('103.253.214.10', '2020-11-24', 1, '1606187877'),
('35.222.22.83', '2020-11-24', 3, '1606226423'),
('18.224.43.251', '2020-11-26', 1, '1606337738'),
('5.62.34.22', '2020-11-26', 1, '1606349494'),
('80.44.20.77', '2020-11-26', 2, '1606349639'),
('157.97.122.3', '2020-11-26', 1, '1606349495'),
('144.168.163.199', '2020-11-26', 1, '1606349640'),
('194.72.238.97', '2020-11-26', 1, '1606349744'),
('74.81.88.66', '2020-11-26', 1, '1606349753'),
('103.253.214.10', '2020-11-26', 2, '1606369418'),
('100.26.135.239', '2020-11-26', 1, '1606380964'),
('209.17.96.242', '2020-11-27', 1, '1606478464'),
('209.17.97.50', '2020-11-27', 1, '1606494767'),
('5.62.41.127', '2020-11-30', 1, '1606695093'),
('80.44.20.211', '2020-11-30', 1, '1606695093'),
('198.8.85.213', '2020-11-30', 1, '1606695112'),
('194.72.238.97', '2020-11-30', 1, '1606695168'),
('199.244.88.132', '2020-12-01', 1, '1606833163'),
('35.199.165.199', '2020-12-03', 1, '1606968712'),
('34.83.181.254', '2020-12-03', 1, '1606968713'),
('34.105.78.26', '2020-12-03', 1, '1606968714'),
('34.105.43.96', '2020-12-03', 1, '1606968715'),
('138.246.253.24', '2020-12-05', 1, '1607173556'),
('64.225.0.181', '2020-12-07', 1, '1607319721'),
('198.144.120.234', '2020-12-08', 1, '1607386434'),
('159.65.210.36', '2020-12-08', 1, '1607386434'),
('45.127.134.94', '2020-12-08', 1, '1607386434'),
('104.254.93.165', '2020-12-08', 1, '1607386763'),
('88.107.185.154', '2020-12-08', 1, '1607386786'),
('138.246.253.24', '2020-12-12', 1, '1607728231'),
('103.253.214.10', '2020-12-14', 1, '1607898463'),
('175.158.49.11', '2020-12-15', 1, '1608039318'),
('199.244.88.132', '2020-12-16', 1, '1608132269'),
('167.114.233.118', '2020-12-18', 1, '1608288774'),
('175.158.49.199', '2020-12-19', 6, '1608381675'),
('103.253.214.10', '2020-12-19', 1, '1608384384'),
('138.246.253.24', '2020-12-20', 1, '1608407436'),
('199.244.88.132', '2020-12-23', 1, '1608709511'),
('116.203.48.117', '2020-12-24', 1, '1608792357'),
('35.223.145.37', '2020-12-24', 1, '1608827442'),
('35.223.145.37', '2020-12-25', 2, '1608848774'),
('138.246.253.24', '2020-12-26', 1, '1608919167'),
('54.245.132.27', '2020-12-26', 1, '1608923783'),
('138.246.253.24', '2021-01-02', 1, '1609522596'),
('34.205.134.126', '2021-01-02', 1, '1609578174'),
('103.253.214.10', '2021-01-05', 1, '1609812469'),
('161.35.132.36', '2021-01-06', 1, '1609924562'),
('138.246.253.24', '2021-01-07', 1, '1610036076'),
('51.158.98.24', '2021-01-09', 1, '1610148851'),
('51.158.109.3', '2021-01-10', 1, '1610241405'),
('51.15.205.3', '2021-01-13', 1, '1610539413'),
('51.158.98.24', '2021-01-14', 1, '1610599800'),
('100.21.218.158', '2021-01-14', 1, '1610618536'),
('54.189.230.128', '2021-01-14', 1, '1610624026'),
('103.253.214.10', '2021-01-14', 1, '1610625274'),
('100.21.218.158', '2021-01-15', 1, '1610656295'),
('199.244.88.132', '2021-01-17', 1, '1610839253'),
('10.0.1.218', '2021-01-21', 1, '1611215083'),
('10.0.1.218', '2021-01-22', 3, '1611304685'),
('5.62.34.19', '2021-01-22', 1, '1611299111'),
('167.172.12.4', '2021-01-22', 1, '1611299111'),
('154.3.40.192', '2021-01-22', 1, '1611299925'),
('65.155.30.101', '2021-01-22', 1, '1611310915'),
('138.246.253.24', '2021-01-23', 1, '1611339108'),
('10.0.1.218', '2021-01-23', 3, '1611392121'),
('103.253.214.197', '2021-01-23', 1, '1611417005'),
('10.0.1.218', '2021-01-24', 1, '1611478796'),
('10.0.1.218', '2021-01-25', 1, '1611559438'),
('10.0.1.218', '2021-01-26', 1, '1611608092'),
('44.234.24.184', '2021-01-26', 1, '1611621766'),
('103.253.214.10', '2021-01-26', 1, '1611659517'),
('10.0.1.218', '2021-01-27', 1, '1611694702'),
('10.0.1.218', '2021-01-28', 1, '1611780881'),
('10.0.1.218', '2021-01-29', 1, '1611867343'),
('138.246.253.24', '2021-01-29', 1, '1611927547'),
('150.136.62.105', '2021-01-30', 3, '1611976887'),
('10.0.1.218', '2021-01-30', 1, '1611953389'),
('10.0.1.218', '2021-01-31', 1, '1612039802'),
('134.122.4.130', '2021-02-01', 1, '1612125198'),
('10.0.1.218', '2021-02-01', 1, '1612126449'),
('10.0.1.218', '2021-02-02', 1, '1612213622'),
('209.17.97.98', '2021-02-02', 1, '1612245918'),
('103.253.214.10', '2021-02-02', 1, '1612256963'),
('18.195.77.210', '2021-02-02', 1, '1612269539'),
('10.0.1.218', '2021-02-03', 1, '1612300602'),
('209.17.97.18', '2021-02-03', 1, '1612352105'),
('10.0.1.218', '2021-02-04', 1, '1612385765'),
('138.246.253.24', '2021-02-04', 1, '1612446619'),
('10.0.1.218', '2021-02-05', 1, '1612476636'),
('209.17.96.218', '2021-02-05', 1, '1612515643'),
('209.17.96.186', '2021-02-05', 1, '1612528407'),
('10.0.1.218', '2021-02-06', 1, '1612558946'),
('20.184.3.245', '2021-02-06', 2, '1612621747'),
('10.0.1.218', '2021-02-07', 1, '1612645342'),
('10.0.1.218', '2021-02-08', 1, '1612731441'),
('10.0.1.218', '2021-02-09', 1, '1612817549'),
('18.156.193.114', '2021-02-09', 2, '1612854694'),
('209.17.96.242', '2021-02-09', 1, '1612883731'),
('10.0.1.218', '2021-02-10', 1, '1612903879'),
('216.151.27.66', '2021-02-10', 1, '1612935734'),
('10.0.1.218', '2021-02-11', 1, '1612990282'),
('35.233.239.28', '2021-02-11', 1, '1613028064'),
('34.83.157.2', '2021-02-11', 1, '1613028065'),
('35.233.173.136', '2021-02-11', 1, '1613028066'),
('34.82.203.210', '2021-02-11', 1, '1613028067'),
('209.17.97.18', '2021-02-11', 1, '1613032522'),
('10.0.1.218', '2021-02-12', 1, '1613076451'),
('10.0.1.218', '2021-02-13', 1, '1613162693'),
('138.246.253.24', '2021-02-13', 1, '1613171521'),
('10.0.1.218', '2021-02-14', 1, '1613249054'),
('10.0.1.218', '2021-02-15', 1, '1613336017'),
('34.83.128.121', '2021-02-15', 1, '1613379510'),
('34.83.52.158', '2021-02-15', 1, '1613379511'),
('35.230.100.242', '2021-02-15', 1, '1613379513'),
('34.82.129.74', '2021-02-15', 1, '1613379514'),
('10.0.1.218', '2021-02-16', 1, '1613422422'),
('199.244.88.132', '2021-02-16', 1, '1613491908'),
('10.0.1.218', '2021-02-17', 1, '1613508747'),
('192.145.125.90', '2021-02-17', 1, '1613509678'),
('10.0.1.218', '2021-02-18', 1, '1613595401'),
('10.0.1.218', '2021-02-19', 1, '1613683399'),
('34.105.69.97', '2021-02-19', 1, '1613721135'),
('34.83.85.230', '2021-02-19', 1, '1613721137'),
('35.247.79.218', '2021-02-19', 2, '1613721141'),
('10.0.1.218', '2021-02-20', 1, '1613768496'),
('138.246.253.24', '2021-02-20', 1, '1613797867'),
('10.0.1.218', '2021-02-21', 1, '1613854396'),
('10.0.1.218', '2021-02-22', 1, '1613940556'),
('10.0.1.218', '2021-02-23', 1, '1614026959'),
('103.253.214.10', '2021-02-23', 1, '1614052957'),
('54.146.189.172', '2021-02-24', 1, '1614159485'),
('10.0.1.218', '2021-02-25', 1, '1614200219'),
('103.253.214.10', '2021-02-25', 1, '1614214708'),
('35.162.14.194', '2021-02-26', 1, '1614284575'),
('10.0.1.218', '2021-02-26', 1, '1614287346'),
('10.0.1.218', '2021-02-27', 1, '1614372658'),
('51.158.66.83', '2021-02-27', 1, '1614399151'),
('138.246.253.24', '2021-02-27', 1, '1614420579'),
('167.114.233.118', '2021-02-27', 1, '1614431185'),
('10.0.1.218', '2021-02-28', 1, '1614459311'),
('150.136.41.87', '2021-02-28', 1, '1614531119'),
('10.0.1.218', '2021-03-01', 1, '1614545539'),
('212.47.251.118', '2021-03-01', 1, '1614552836'),
('150.136.41.87', '2021-03-01', 2, '1614554774'),
('10.0.1.218', '2021-03-02', 1, '1614632095'),
('103.253.214.10', '2021-03-02', 1, '1614647724'),
('10.0.1.218', '2021-03-03', 1, '1614718515'),
('10.0.1.218', '2021-03-04', 1, '1614804814'),
('10.0.1.218', '2021-03-05', 1, '1614891448'),
('161.35.136.156', '2021-03-05', 1, '1614928883'),
('10.0.1.218', '2021-03-06', 1, '1614979234'),
('138.246.253.24', '2021-03-06', 1, '1614982824'),
('54.203.73.198', '2021-03-06', 1, '1615023498'),
('10.0.1.218', '2021-03-07', 1, '1615064924'),
('52.53.230.22', '2021-03-07', 1, '1615069418'),
('23.96.90.107', '2021-03-07', 1, '1615122396'),
('10.0.1.218', '2021-03-08', 1, '1615152068'),
('10.0.1.218', '2021-03-09', 1, '1615237979'),
('10.0.1.218', '2021-03-10', 1, '1615324410'),
('10.0.1.218', '2021-03-11', 1, '1615410760'),
('138.246.253.24', '2021-03-12', 1, '1615490542'),
('10.0.1.218', '2021-03-12', 1, '1615496380'),
('10.0.1.218', '2021-03-13', 1, '1615583157'),
('18.192.48.113', '2021-03-14', 1, '1615656838'),
('10.0.1.218', '2021-03-14', 1, '1615670095'),
('10.0.1.218', '2021-03-15', 1, '1615756037'),
('10.0.1.218', '2021-03-16', 1, '1615842710'),
('103.253.214.10', '2021-03-16', 2, '1615899931'),
('103.102.153.171', '2021-03-16', 1, '1615900449'),
('36.78.80.11', '2021-03-16', 7, '1615903941'),
('125.163.95.243', '2021-03-16', 14, '1615902788'),
('64.137.62.47', '2021-03-16', 1, '1615901906'),
('36.71.232.230', '2021-03-16', 5, '1615904147'),
('104.197.167.18', '2021-03-16', 4, '1615904097'),
('54.189.230.128', '2021-03-16', 1, '1615904532'),
('34.66.140.34', '2021-03-16', 2, '1615904881'),
('34.66.140.34', '2021-03-16', 2, '1615904881'),
('34.66.140.34', '2021-03-16', 2, '1615904881'),
('35.194.61.158', '2021-03-16', 4, '1615904922'),
('45.79.176.87', '2021-03-17', 1, '1615920011'),
('178.33.144.176', '2021-03-17', 1, '1615942151'),
('38.132.118.68', '2021-03-17', 1, '1615942212'),
('35.193.254.98', '2021-03-17', 2, '1615947488'),
('35.193.254.98', '2021-03-17', 2, '1615947488'),
('35.193.254.98', '2021-03-17', 2, '1615947488'),
('35.184.81.40', '2021-03-17', 3, '1615948443'),
('35.184.81.40', '2021-03-17', 3, '1615948443'),
('35.203.162.205', '2021-03-17', 1, '1615948765'),
('35.199.183.196', '2021-03-17', 1, '1615948768'),
('34.83.5.210', '2021-03-17', 1, '1615948769'),
('34.82.182.219', '2021-03-17', 1, '1615948770'),
('69.25.58.60', '2021-03-17', 1, '1615950321'),
('13.125.233.180', '2021-03-17', 2, '1615985728'),
('181.215.74.163', '2021-03-17', 1, '1615989174'),
('35.225.144.161', '2021-03-17', 3, '1615990881'),
('35.225.144.161', '2021-03-17', 3, '1615990881'),
('35.222.199.190', '2021-03-17', 4, '1615991886'),
('35.232.201.154', '2021-03-18', 3, '1616034391'),
('35.225.81.187', '2021-03-18', 2, '1616035299'),
('35.225.81.187', '2021-03-18', 2, '1616035299'),
('35.225.81.187', '2021-03-18', 2, '1616035299'),
('35.188.43.85', '2021-03-18', 2, '1616078015'),
('35.188.43.85', '2021-03-18', 2, '1616078015'),
('35.188.43.85', '2021-03-18', 2, '1616078015'),
('34.66.139.251', '2021-03-18', 3, '1616078618'),
('34.66.139.251', '2021-03-18', 3, '1616078618'),
('34.67.78.91', '2021-03-19', 3, '1616121410'),
('34.68.139.214', '2021-03-19', 3, '1616122003'),
('34.68.139.214', '2021-03-19', 3, '1616122003'),
('35.184.252.147', '2021-03-19', 2, '1616165006'),
('35.184.252.147', '2021-03-19', 2, '1616165006'),
('35.184.252.147', '2021-03-19', 2, '1616165006'),
('104.154.193.172', '2021-03-19', 4, '1616165285'),
('35.226.142.4', '2021-03-20', 2, '1616208450'),
('35.226.142.4', '2021-03-20', 2, '1616208450'),
('35.226.142.4', '2021-03-20', 2, '1616208450'),
('104.198.76.192', '2021-03-20', 2, '1616208740'),
('104.198.76.192', '2021-03-20', 2, '1616208740'),
('104.198.76.192', '2021-03-20', 2, '1616208740'),
('173.252.95.24', '2021-03-20', 1, '1616237022'),
('35.192.189.84', '2021-03-20', 3, '1616251841'),
('35.192.189.84', '2021-03-20', 3, '1616251841'),
('35.238.172.155', '2021-03-20', 3, '1616252190'),
('35.238.172.155', '2021-03-20', 3, '1616252190'),
('34.66.234.235', '2021-03-21', 3, '1616295151'),
('34.66.234.235', '2021-03-21', 3, '1616295151'),
('34.66.184.237', '2021-03-21', 3, '1616295566'),
('34.66.184.237', '2021-03-21', 3, '1616295566'),
('34.71.130.3', '2021-03-21', 3, '1616338524'),
('34.71.130.3', '2021-03-21', 3, '1616338524');
INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('104.154.192.206', '2021-03-21', 2, '1616338782'),
('104.154.192.206', '2021-03-21', 2, '1616338782'),
('104.154.192.206', '2021-03-21', 2, '1616338782'),
('34.68.58.75', '2021-03-22', 3, '1616382013'),
('34.68.58.75', '2021-03-22', 3, '1616382013'),
('34.66.240.180', '2021-03-22', 3, '1616382349'),
('34.66.240.180', '2021-03-22', 3, '1616382349'),
('35.238.84.163', '2021-03-22', 3, '1616426358'),
('34.66.117.50', '2021-03-22', 4, '1616426378'),
('34.77.162.23', '2021-03-23', 1, '1616441974'),
('34.77.162.27', '2021-03-23', 1, '1616451198'),
('35.238.83.109', '2021-03-23', 2, '1616469168'),
('35.238.83.109', '2021-03-23', 2, '1616469168'),
('35.238.83.109', '2021-03-23', 2, '1616469168'),
('34.67.28.67', '2021-03-23', 4, '1616469212'),
('35.232.62.193', '2021-03-24', 1, '1616555976'),
('34.77.162.14', '2021-03-24', 1, '1616557479'),
('36.71.234.236', '2021-03-24', 1, '1616583374'),
('35.239.195.105', '2021-03-25', 1, '1616642177'),
('104.197.180.187', '2021-03-25', 1, '1616642466'),
('34.210.229.233', '2021-03-26', 1, '1616700289'),
('34.77.162.17', '2021-03-26', 1, '1616716251'),
('35.239.192.18', '2021-03-26', 1, '1616728933'),
('34.68.179.0', '2021-03-26', 1, '1616729250'),
('34.77.162.28', '2021-03-26', 2, '1616749309'),
('173.249.22.173', '2021-03-27', 1, '1616786358'),
('35.192.109.167', '2021-03-27', 1, '1616815339'),
('35.188.37.43', '2021-03-27', 1, '1616816095'),
('35.222.82.51', '2021-03-28', 1, '1616902004'),
('35.232.53.181', '2021-03-28', 1, '1616902615'),
('104.197.165.116', '2021-03-29', 1, '1616988694'),
('34.67.224.74', '2021-03-29', 1, '1616989234'),
('173.252.87.120', '2021-03-29', 1, '1617009702'),
('103.144.182.132', '2021-03-30', 2, '1617070882'),
('35.193.213.190', '2021-03-30', 1, '1617075044'),
('35.222.237.192', '2021-03-30', 1, '1617075765'),
('34.86.35.30', '2021-03-30', 1, '1617090346'),
('54.203.73.198', '2021-03-30', 1, '1617091684'),
('103.102.153.171', '2021-03-30', 1, '1617099726'),
('36.71.235.2', '2021-03-30', 1, '1617112000'),
('181.214.117.137', '2021-03-30', 1, '1617112298'),
('36.71.234.117', '2021-03-30', 1, '1617112898'),
('125.163.94.249', '2021-03-30', 1, '1617116035'),
('205.169.39.118', '2021-03-31', 2, '1617126436'),
('34.70.151.161', '2021-03-31', 1, '1617161578'),
('35.222.68.244', '2021-03-31', 1, '1617162267'),
('103.144.182.132', '2021-03-31', 1, '1617166862'),
('34.86.35.33', '2021-04-01', 1, '1617244259'),
('34.96.130.7', '2021-04-01', 1, '1617244601'),
('34.96.130.12', '2021-04-01', 1, '1617245703'),
('35.193.161.37', '2021-04-01', 1, '1617248092'),
('35.224.150.49', '2021-04-01', 1, '1617248876'),
('34.96.130.25', '2021-04-02', 1, '1617310343'),
('175.158.49.19', '2021-04-02', 1, '1617324711'),
('130.211.233.229', '2021-04-02', 1, '1617334885'),
('35.226.202.211', '2021-04-02', 1, '1617335657'),
('103.144.182.132', '2021-04-02', 35, '1617340588'),
('175.158.49.7', '2021-04-02', 2, '1617356379'),
('175.158.49.7', '2021-04-03', 1, '1617405930'),
('34.96.130.27', '2021-04-03', 1, '1617411784'),
('103.144.182.132', '2021-04-03', 9, '1617422665'),
('35.238.5.230', '2021-04-03', 1, '1617421744'),
('35.226.50.48', '2021-04-03', 1, '1617422173'),
('34.86.35.3', '2021-04-03', 1, '1617457604'),
('35.193.245.53', '2021-04-04', 1, '1617508558'),
('35.193.7.14', '2021-04-04', 1, '1617509238'),
('35.222.30.151', '2021-04-05', 1, '1617595947'),
('103.144.182.132', '2021-04-06', 2, '1617674129'),
('103.144.182.151', '2021-04-06', 4, '1617686729'),
('34.68.80.89', '2021-04-06', 1, '1617681872'),
('34.67.170.28', '2021-04-06', 1, '1617682905'),
('112.215.219.175', '2021-04-06', 1, '1617701943'),
('34.68.185.165', '2021-04-07', 1, '1617768687'),
('34.67.191.99', '2021-04-08', 1, '1617855125'),
('34.66.248.208', '2021-04-08', 1, '1617856646'),
('34.86.35.22', '2021-04-09', 1, '1617906305'),
('34.66.9.174', '2021-04-09', 1, '1617941678'),
('36.78.146.12', '2021-04-09', 5, '1617943627'),
('35.184.25.137', '2021-04-09', 1, '1617943372'),
('103.253.214.10', '2021-04-09', 1, '1617946664'),
('34.77.162.21', '2021-04-09', 1, '1617980355'),
('54.36.115.93', '2021-04-10', 1, '1618012982'),
('35.188.204.106', '2021-04-10', 1, '1618028794'),
('34.67.52.9', '2021-04-10', 1, '1618030053'),
('203.78.114.233', '2021-04-10', 4, '1618047998'),
('35.223.172.249', '2021-04-11', 1, '1618115435'),
('34.67.240.29', '2021-04-11', 1, '1618117648'),
('34.69.9.51', '2021-04-12', 1, '1618201920'),
('34.66.249.185', '2021-04-12', 1, '1618205451'),
('52.48.221.49', '2021-04-12', 1, '1618225839'),
('35.183.183.8', '2021-04-12', 1, '1618246719'),
('35.192.109.112', '2021-04-13', 1, '1618288740'),
('35.225.150.156', '2021-04-13', 1, '1618292583'),
('34.86.35.20', '2021-04-13', 1, '1618304407'),
('104.129.248.48', '2021-04-13', 1, '1618322508'),
('35.224.185.234', '2021-04-14', 1, '1618375879'),
('35.222.146.165', '2021-04-14', 1, '1618379459'),
('54.203.73.198', '2021-04-14', 1, '1618386605'),
('104.198.52.125', '2021-04-15', 1, '1618463010'),
('35.238.70.98', '2021-04-15', 1, '1618466529'),
('103.253.214.10', '2021-04-16', 1, '1618528676'),
('34.96.130.6', '2021-04-16', 1, '1618543424'),
('180.245.142.114', '2021-04-19', 3, '1618796915'),
('103.144.182.129', '2021-04-20', 18, '1618885217'),
('212.47.251.118', '2021-04-20', 1, '1618900599'),
('34.77.162.8', '2021-04-21', 1, '1618953560'),
('34.211.102.96', '2021-04-21', 1, '1618960935'),
('54.218.175.88', '2021-04-21', 1, '1618961578'),
('34.221.239.173', '2021-04-21', 1, '1618963530'),
('52.87.44.246', '2021-04-21', 1, '1618965123'),
('51.158.108.77', '2021-04-21', 1, '1619000764'),
('51.158.127.119', '2021-04-22', 1, '1619056610'),
('35.224.24.31', '2021-04-22', 1, '1619069087'),
('103.144.182.151', '2021-04-22', 1, '1619096415'),
('54.91.14.79', '2021-04-23', 1, '1619115418'),
('54.91.14.79', '2021-04-23', 1, '1619115418'),
('34.77.162.10', '2021-04-23', 1, '1619155773'),
('35.239.244.49', '2021-04-25', 6, '1619307173'),
('199.244.88.132', '2021-04-25', 1, '1619309427'),
('18.184.26.231', '2021-04-27', 1, '1619462925'),
('100.21.218.158', '2021-04-27', 1, '1619483556'),
('103.144.182.129', '2021-04-28', 1, '1619580285'),
('34.86.35.32', '2021-04-28', 1, '1619592466'),
('162.55.61.7', '2021-04-28', 1, '1619615822'),
('103.144.182.130', '2021-04-29', 4, '1619661579'),
('35.222.181.151', '2021-04-29', 1, '1619674049'),
('35.194.80.110', '2021-04-30', 1, '1619724157'),
('34.86.35.3', '2021-05-01', 1, '1619820936'),
('199.244.88.132', '2021-05-02', 1, '1619913878'),
('54.226.232.207', '2021-05-03', 1, '1619982080'),
('103.144.182.132', '2021-05-04', 34, '1620106276'),
('66.220.149.24', '2021-05-04', 1, '1620095673'),
('66.220.149.47', '2021-05-04', 1, '1620095674'),
('66.220.149.16', '2021-05-04', 2, '1620095678'),
('173.252.111.9', '2021-05-04', 1, '1620095748'),
('69.171.249.120', '2021-05-04', 1, '1620095748'),
('66.220.149.18', '2021-05-04', 1, '1620095748'),
('66.220.149.120', '2021-05-04', 1, '1620095748'),
('173.252.95.8', '2021-05-04', 1, '1620095749'),
('66.220.149.23', '2021-05-04', 1, '1620095749'),
('31.13.115.3', '2021-05-04', 1, '1620095828'),
('118.99.96.42', '2021-05-04', 1, '1620095908'),
('175.158.49.143', '2021-05-04', 1, '1620100194'),
('173.252.95.112', '2021-05-04', 1, '1620100220'),
('173.252.95.16', '2021-05-04', 1, '1620100221'),
('103.144.182.157', '2021-05-04', 1, '1620129655'),
('15.237.160.196', '2021-05-04', 1, '1620146514'),
('159.65.184.136', '2021-05-05', 1, '1620190023'),
('34.77.162.16', '2021-05-05', 1, '1620200160'),
('31.13.115.3', '2021-05-05', 1, '1620200204'),
('120.188.78.248', '2021-05-05', 1, '1620216563'),
('173.252.79.11', '2021-05-05', 2, '1620227204'),
('173.252.79.113', '2021-05-05', 1, '1620227205'),
('173.252.79.14', '2021-05-06', 1, '1620261307'),
('103.144.182.132', '2021-05-06', 37, '1620277492'),
('120.188.84.149', '2021-05-06', 6, '1620261951'),
('34.68.99.231', '2021-05-06', 1, '1620279239'),
('103.144.182.151', '2021-05-06', 14, '1620283841'),
('103.144.182.132', '2021-05-07', 25, '1620361770'),
('140.213.150.187', '2021-05-07', 4, '1620370837'),
('103.22.242.6', '2021-05-08', 1, '1620472233'),
('173.252.127.33', '2021-05-09', 1, '1620538560'),
('103.144.182.151', '2021-05-09', 8, '1620552311'),
('103.144.182.151', '2021-05-10', 12, '1620597524'),
('114.4.217.52', '2021-05-10', 3, '1620613248'),
('203.78.114.62', '2021-05-11', 3, '1620719577'),
('103.144.182.151', '2021-05-11', 16, '1620736337'),
('54.203.73.198', '2021-05-13', 1, '1620902360'),
('34.68.72.147', '2021-05-13', 1, '1620916811'),
('103.253.214.10', '2021-05-15', 1, '1621032986'),
('103.144.182.151', '2021-05-16', 52, '1621116485'),
('103.144.182.158', '2021-05-17', 25, '1621221041'),
('191.101.217.30', '2021-05-17', 10, '1621219835'),
('66.220.149.17', '2021-05-17', 1, '1621220115'),
('114.5.111.13', '2021-05-17', 1, '1621268234'),
('103.144.182.158', '2021-05-18', 3, '1621315315'),
('51.158.66.83', '2021-05-18', 1, '1621303756'),
('35.181.55.12', '2021-05-19', 1, '1621392477'),
('54.165.31.53', '2021-05-19', 1, '1621437614'),
('51.158.109.3', '2021-05-19', 1, '1621440058'),
('54.67.38.66', '2021-05-20', 1, '1621472161'),
('114.5.243.116', '2021-05-20', 1, '1621473657'),
('103.144.182.130', '2021-05-20', 31, '1621474625'),
('104.197.148.107', '2021-05-20', 1, '1621521661'),
('34.86.35.18', '2021-05-21', 1, '1621553770'),
('51.158.108.61', '2021-05-21', 1, '1621557705'),
('18.132.202.16', '2021-05-21', 1, '1621581805'),
('65.154.226.109', '2021-05-22', 2, '1621668685'),
('35.243.23.197', '2021-05-22', 2, '1621669369'),
('74.125.212.194', '2021-05-22', 1, '1621669359'),
('208.87.233.140', '2021-05-22', 1, '1621669360'),
('35.243.23.223', '2021-05-22', 1, '1621669370'),
('35.243.23.194', '2021-05-22', 1, '1621669371'),
('35.193.3.116', '2021-05-22', 6, '1621669494'),
('35.193.3.116', '2021-05-22', 6, '1621669494'),
('51.89.79.173', '2021-05-22', 1, '1621673232'),
('69.25.58.56', '2021-05-22', 1, '1621673576'),
('151.237.189.246', '2021-05-22', 1, '1621673641'),
('205.169.39.30', '2021-05-22', 1, '1621678847'),
('205.169.39.6', '2021-05-22', 1, '1621682125'),
('47.242.194.65', '2021-05-23', 1, '1621728371'),
('36.99.136.133', '2021-05-23', 4, '1621738859'),
('36.99.136.130', '2021-05-23', 4, '1621738863'),
('36.99.136.135', '2021-05-23', 2, '1621738858'),
('36.99.136.138', '2021-05-23', 4, '1621738896'),
('36.99.136.141', '2021-05-23', 2, '1621738864'),
('36.99.136.142', '2021-05-23', 5, '1621738867'),
('111.7.100.23', '2021-05-23', 5, '1621738867'),
('111.7.100.26', '2021-05-23', 6, '1621738865'),
('111.7.100.21', '2021-05-23', 4, '1621738864'),
('111.7.100.21', '2021-05-23', 4, '1621738864'),
('111.7.100.25', '2021-05-23', 4, '1621738865'),
('111.7.100.27', '2021-05-23', 8, '1621738871'),
('111.7.100.22', '2021-05-23', 10, '1621738866'),
('36.99.136.139', '2021-05-23', 3, '1621738868'),
('36.99.136.140', '2021-05-23', 2, '1621738892'),
('111.7.100.20', '2021-05-23', 8, '1621738867'),
('36.99.136.134', '2021-05-23', 2, '1621738864'),
('111.7.100.24', '2021-05-23', 3, '1621738865'),
('36.99.136.137', '2021-05-23', 3, '1621738867'),
('36.99.136.143', '2021-05-23', 3, '1621738890'),
('36.99.136.132', '2021-05-23', 1, '1621738864'),
('13.52.77.229', '2021-05-24', 1, '1621810133'),
('103.144.182.130', '2021-05-24', 4, '1621827178'),
('117.50.11.246', '2021-05-24', 1, '1621845622'),
('34.77.162.15', '2021-05-25', 1, '1621958454'),
('35.165.90.69', '2021-05-26', 1, '1621969083'),
('34.86.35.11', '2021-05-26', 1, '1621997848'),
('103.144.182.130', '2021-05-27', 4, '1622088633'),
('34.67.218.151', '2021-05-27', 1, '1622126525'),
('34.96.130.15', '2021-05-28', 1, '1622142936'),
('34.77.162.20', '2021-05-28', 1, '1622143728'),
('116.203.198.219', '2021-05-28', 1, '1622153560'),
('34.96.130.22', '2021-05-29', 1, '1622226115'),
('92.118.160.41', '2021-05-29', 1, '1622244310'),
('66.220.149.113', '2021-05-29', 1, '1622251508'),
('92.118.160.17', '2021-05-30', 1, '1622361146'),
('103.144.182.129', '2021-05-31', 4, '1622430159'),
('34.96.130.25', '2021-06-01', 1, '1622500133'),
('34.77.162.19', '2021-06-01', 1, '1622502336'),
('34.77.162.6', '2021-06-01', 1, '1622520557'),
('34.86.35.13', '2021-06-02', 1, '1622606482'),
('199.244.88.132', '2021-06-03', 1, '1622684155'),
('35.238.196.157', '2021-06-03', 1, '1622731772'),
('161.35.139.10', '2021-06-04', 1, '1622744986'),
('103.144.182.157', '2021-06-04', 4, '1622777735'),
('34.96.130.11', '2021-06-04', 1, '1622802531'),
('34.86.35.16', '2021-06-04', 1, '1622806166'),
('3.96.168.24', '2021-06-05', 1, '1622863489'),
('92.118.160.9', '2021-06-05', 1, '1622884468'),
('34.86.35.29', '2021-06-05', 1, '1622890281'),
('34.96.130.10', '2021-06-05', 1, '1622891650'),
('92.118.160.45', '2021-06-06', 1, '1622965630'),
('92.118.160.57', '2021-06-06', 1, '1622997050'),
('3.98.128.38', '2021-06-07', 1, '1623015483'),
('92.118.160.1', '2021-06-08', 1, '1623124819'),
('103.144.182.157', '2021-06-08', 6, '1623126654'),
('92.118.160.41', '2021-06-08', 1, '1623129236'),
('34.96.130.9', '2021-06-08', 1, '1623132735'),
('34.77.162.33', '2021-06-09', 1, '1623186082'),
('3.67.222.110', '2021-06-10', 1, '1623272810'),
('54.189.230.128', '2021-06-10', 1, '1623281064'),
('100.21.218.158', '2021-06-10', 1, '1623284744'),
('103.144.182.157', '2021-06-10', 4, '1623293977'),
('63.33.190.118', '2021-06-10', 1, '1623308628'),
('35.193.194.151', '2021-06-10', 1, '1623337888'),
('103.144.182.151', '2021-06-13', 15, '1623596623'),
('103.144.182.157', '2021-06-14', 3, '1623639726'),
('173.252.107.13', '2021-06-14', 1, '1623650054'),
('64.137.114.237', '2021-06-14', 1, '1623677433'),
('64.137.66.32', '2021-06-14', 1, '1623677784'),
('54.175.23.253', '2021-06-15', 1, '1623760320'),
('54.189.230.128', '2021-06-15', 1, '1623766373'),
('104.197.165.66', '2021-06-16', 5, '1623840884'),
('34.67.244.187', '2021-06-17', 1, '1623943833'),
('103.144.182.130', '2021-06-18', 3, '1623988462'),
('195.133.56.92', '2021-06-19', 1, '1624083898'),
('54.36.115.93', '2021-06-20', 1, '1624173775'),
('34.220.216.18', '2021-06-24', 1, '1624486442'),
('157.90.167.79', '2021-06-24', 1, '1624529853'),
('34.66.117.233', '2021-06-24', 1, '1624551085'),
('103.144.182.151', '2021-06-26', 7, '1624656146'),
('103.144.182.133', '2021-06-28', 47, '1624850110'),
('66.220.149.46', '2021-06-29', 1, '1624968129'),
('35.202.228.197', '2021-06-29', 1, '1624974894'),
('45.129.18.145', '2021-06-30', 1, '1624996677'),
('103.144.182.133', '2021-06-30', 14, '1625017229'),
('103.144.182.151', '2021-06-30', 10, '1625050951'),
('66.220.149.117', '2021-07-01', 1, '1625106939'),
('51.158.98.24', '2021-07-01', 1, '1625111283'),
('34.68.233.202', '2021-07-01', 1, '1625158571'),
('35.239.52.171', '2021-07-06', 1, '1625587218'),
('167.99.116.56', '2021-07-08', 1, '1625728307'),
('54.189.230.128', '2021-07-08', 1, '1625734457'),
('45.129.18.227', '2021-07-08', 1, '1625761364'),
('35.222.96.73', '2021-07-09', 1, '1625765051'),
('74.211.103.74', '2021-07-09', 1, '1625805716'),
('13.49.225.153', '2021-07-09', 1, '1625807147'),
('52.53.252.38', '2021-07-10', 1, '1625850768'),
('159.65.51.138', '2021-07-12', 3, '1626038791'),
('3.101.67.56', '2021-07-13', 1, '1626138909'),
('35.226.25.216', '2021-07-14', 1, '1626197321'),
('18.133.64.120', '2021-07-14', 1, '1626258509'),
('34.68.49.164', '2021-07-16', 1, '1626371056'),
('46.45.185.187', '2021-07-16', 1, '1626398718'),
('103.144.170.134', '2021-07-16', 1, '1626403839'),
('45.129.18.23', '2021-07-17', 1, '1626530837'),
('178.18.254.10', '2021-07-18', 3, '1626559151'),
('83.171.226.57', '2021-07-18', 1, '1626590756'),
('103.144.170.134', '2021-07-19', 1, '1626659691'),
('45.129.18.62', '2021-07-19', 1, '1626683073'),
('173.252.111.23', '2021-07-20', 1, '1626753361'),
('34.68.21.221', '2021-07-21', 1, '1626803605'),
('46.45.185.183', '2021-07-21', 1, '1626836720'),
('46.45.185.187', '2021-07-21', 3, '1626836750'),
('46.45.185.166', '2021-07-21', 2, '1626836750'),
('46.45.185.168', '2021-07-21', 3, '1626836750'),
('46.45.185.189', '2021-07-21', 3, '1626836750'),
('46.45.185.165', '2021-07-21', 3, '1626836750'),
('46.45.185.179', '2021-07-21', 3, '1626836750'),
('46.45.185.167', '2021-07-21', 2, '1626836745'),
('46.45.185.188', '2021-07-21', 2, '1626836745'),
('103.144.170.134', '2021-07-22', 7, '1626930386'),
('34.68.10.169', '2021-07-23', 1, '1626978487'),
('18.133.73.223', '2021-07-23', 1, '1627012979'),
('144.86.173.68', '2021-07-23', 1, '1627025647'),
('144.86.173.150', '2021-07-23', 1, '1627041601'),
('144.86.173.130', '2021-07-24', 1, '1627080719'),
('144.86.173.133', '2021-07-24', 1, '1627099548'),
('13.56.255.0', '2021-07-24', 1, '1627137097'),
('92.118.160.57', '2021-07-25', 1, '1627185956'),
('3.83.235.100', '2021-07-25', 1, '1627194599'),
('103.253.214.10', '2021-07-25', 1, '1627203584'),
('92.118.160.37', '2021-07-25', 1, '1627212816'),
('180.251.132.178', '2021-07-25', 1, '1627213609'),
('180.251.132.178', '2021-07-26', 1, '1627253157'),
('180.253.245.219', '2021-07-26', 6, '1627253714'),
('180.251.132.128', '2021-07-26', 6, '1627254002'),
('120.188.85.187', '2021-07-26', 2, '1627261833'),
('63.142.251.19', '2021-07-26', 1, '1627266631'),
('45.59.126.87', '2021-07-26', 1, '1627266631'),
('180.249.185.171', '2021-07-26', 5, '1627267964'),
('120.188.86.64', '2021-07-26', 21, '1627307976'),
('181.214.223.27', '2021-07-27', 1, '1627320961'),
('191.101.160.44', '2021-07-27', 1, '1627321716'),
('5.43.241.139', '2021-07-27', 1, '1627331963'),
('180.249.187.27', '2021-07-27', 116, '1627364009'),
('180.249.184.30', '2021-07-27', 1, '1627351342'),
('203.78.114.164', '2021-07-27', 3, '1627356855'),
('114.206.228.57', '2021-07-27', 1, '1627384507'),
('3.17.210.127', '2021-07-28', 1, '1627410633'),
('218.48.243.162', '2021-07-28', 1, '1627417629'),
('180.249.187.27', '2021-07-28', 1, '1627435262'),
('140.213.151.1', '2021-07-28', 1, '1627446536'),
('18.119.120.154', '2021-07-28', 2, '1627454978'),
('180.254.67.164', '2021-07-28', 1, '1627471002'),
('168.151.149.175', '2021-07-29', 1, '1627493844'),
('181.214.125.92', '2021-07-29', 1, '1627494588'),
('31.208.114.94', '2021-07-29', 1, '1627506799'),
('51.158.97.148', '2021-07-29', 1, '1627512314'),
('180.249.187.27', '2021-07-29', 8, '1627528957'),
('36.85.248.217', '2021-07-29', 9, '1627553594'),
('54.196.103.227', '2021-07-29', 1, '1627556600'),
('144.86.173.144', '2021-07-30', 1, '1627600888'),
('144.86.173.95', '2021-07-30', 1, '1627647760'),
('144.86.173.24', '2021-07-30', 1, '1627659895'),
('92.118.160.9', '2021-07-31', 2, '1627740076'),
('61.105.68.23', '2021-07-31', 1, '1627735050'),
('92.118.160.1', '2021-08-01', 3, '1627763255'),
('92.118.160.41', '2021-08-01', 2, '1627783993'),
('180.251.132.178', '2021-08-01', 6, '1627792791'),
('180.253.17.53', '2021-08-01', 3, '1627792861'),
('20.150.141.48', '2021-08-01', 3, '1627792702'),
('103.253.214.10', '2021-08-01', 1, '1627792801'),
('::1', '2021-08-02', 8, '1627900308'),
('::1', '2021-08-03', 86, '1627967587'),
('::1', '2021-08-05', 1, '1628128831'),
('::1', '2021-08-07', 59, '1628308606'),
('::1', '2021-08-08', 27, '1628407039'),
('::1', '2021-08-10', 12, '1628560475'),
('::1', '2021-08-11', 18, '1628658355'),
('::1', '2021-08-12', 42, '1628786636'),
('::1', '2021-08-13', 7, '1628870136'),
('::1', '2021-08-14', 10, '1628953573'),
('127.0.0.1', '2021-08-17', 1, '1629169093'),
('::1', '2021-08-18', 28, '1629298221'),
('::1', '2021-08-19', 7, '1629344550'),
('::1', '2021-08-22', 1, '1629643147'),
('::1', '2021-08-23', 1, '1629687894'),
('127.0.0.1', '2021-08-23', 1, '1629700320'),
('::1', '2021-08-24', 5, '1629809926'),
('::1', '2021-08-25', 1, '1629906218'),
('::1', '2021-08-26', 18, '1629963423'),
('::1', '2021-08-27', 26, '1630036176'),
('::1', '2021-08-30', 117, '1630322727'),
('::1', '2021-09-01', 139, '1630515567'),
('::1', '2021-09-02', 263, '1630582889');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(61, 'Bali', 'admin', 'bali', 0),
(28, 'Teknologi', '', 'teknologi', 12),
(27, 'Metropolitan', '', 'metropolitan', 32),
(26, 'Nasional', '', 'nasional', 42),
(25, 'Kesehatan', '', 'kesehatan', 16),
(62, 'Denpasar', 'admin', 'denpasar', 0),
(34, 'Wisata', '', 'wisata', 4),
(36, 'Hukum', '', 'hukum', 16),
(40, 'Internasional', '', 'internasional', 28),
(63, 'Kriminal', 'admin', 'kriminal', 0),
(66, 'Covid-19', 'admin', 'covid19', 0),
(68, 'Berita Desa', 'admin', 'berita-desa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tagvid`
--

INSERT INTO `tagvid` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(35, 'Teknologi', 'admin', 'teknologi', 0),
(36, 'Nasional', 'admin', 'nasional', 1),
(42, 'Hiburan', 'admin', 'hiburan', 0),
(40, 'Kegiatan', 'admin', 'kegiatan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(27, 'dinas 1', 'admin', 'adm-loko', 'dinas-1', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', '$2y$10$pnB7xEE00QNpTU9vvU6GDuiHdy/ESIE.qZBNHeFjPz.DptU9BSQxq', 'Admin Desa', 'admin@gmail.com', '036541760', 'book.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('galuh', '$2y$10$kKA3V4TvEU04yQTQnahHk.n1OvN6SVzK1./btgX7QdhEqYtDdNj2e', 'galuh', 'galuh@buahandesaku.com', '999998', '', 'user', 'N', '7e67f82b2528050191537b600c15f48e-20200515122109');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, '7e67f82b2528050191537b600c15f48e-20200515122109', 70),
(15, '7e67f82b2528050191537b600c15f48e-20200515122109', 65),
(16, '7e67f82b2528050191537b600c15f48e-20200515122109', 62),
(17, '7e67f82b2528050191537b600c15f48e-20200515122109', 59),
(18, '7e67f82b2528050191537b600c15f48e-20200515122109', 35),
(19, '7e67f82b2528050191537b600c15f48e-20200515122109', 34),
(20, '7e67f82b2528050191537b600c15f48e-20200515122109', 33),
(21, '7e67f82b2528050191537b600c15f48e-20200515122109', 18),
(22, 'a85c066816201e868c54714bfe6d1b3a-20200520081713', 70),
(23, 'a85c066816201e868c54714bfe6d1b3a-20200520081713', 65),
(24, 'a85c066816201e868c54714bfe6d1b3a-20200520081713', 44),
(25, 'a85c066816201e868c54714bfe6d1b3a-20200520081713', 43),
(26, 'a85c066816201e868c54714bfe6d1b3a-20200520081713', 41),
(27, 'a85c066816201e868c54714bfe6d1b3a-20200520081713', 34),
(28, 'a85c066816201e868c54714bfe6d1b3a-20200520081713', 31),
(29, 'a85c066816201e868c54714bfe6d1b3a-20200520081713', 18),
(30, 'a85c066816201e868c54714bfe6d1b3a-20200520081713', 65),
(31, 'a85c066816201e868c54714bfe6d1b3a-20200520081713', 64),
(32, 'a85c066816201e868c54714bfe6d1b3a-20200520081713', 62),
(33, 'q173s8hs1jl04st35169ccl8o7', 70),
(34, 'q173s8hs1jl04st35169ccl8o7', 66),
(35, 'q173s8hs1jl04st35169ccl8o7', 65),
(36, 'q173s8hs1jl04st35169ccl8o7', 62),
(37, 'q173s8hs1jl04st35169ccl8o7', 44),
(38, 'q173s8hs1jl04st35169ccl8o7', 43),
(39, 'q173s8hs1jl04st35169ccl8o7', 41);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT '1',
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(210, 74, 'admin', 'Video Profil Desa Babakan Panjang', 'video-profil-desa-babakan-panjang', '', '', '', 'https://www.youtube.com/watch?v=WjrI0HmC68M&t=17s', 4, 'Senin', '2021-08-30', '17:07:54', 'kegiatan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`) USING BTREE,
  ADD KEY `last_activity_idx` (`last_activity`) USING BTREE;

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indexes for table `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indexes for table `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id_link`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `skck`
--
ALTER TABLE `skck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=784;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;
--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id_link` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `skck`
--
ALTER TABLE `skck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
