-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2020 pada 17.45
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ec`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` varchar(50) DEFAULT NULL,
  `provinsi` text,
  `kabupaten` text,
  `kecamatan` text,
  `alamat` longtext,
  `password` longtext,
  `nomor_hp` longtext,
  `pendidikan` longtext,
  `tahun_kerja` varchar(10) DEFAULT NULL,
  `nama_kerja` varchar(50) DEFAULT NULL,
  `mapel` int(11) DEFAULT NULL,
  `jenjang` int(11) DEFAULT NULL,
  `kurikulum` longtext,
  `status` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `ket` longtext,
  `foto` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `email`, `tempat_lahir`, `tanggal_lahir`, `provinsi`, `kabupaten`, `kecamatan`, `alamat`, `password`, `nomor_hp`, `pendidikan`, `tahun_kerja`, `nama_kerja`, `mapel`, `jenjang`, `kurikulum`, `status`, `created_at`, `ket`, `foto`) VALUES
(1, 'Administrator', 'admin@admin.com', 'amuntai', NULL, '11', NULL, NULL, NULL, '0192023a7bbd73250516f069df18b500', '54435345', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_kpu`
--

CREATE TABLE `anggota_kpu` (
  `id_anggota` int(11) NOT NULL,
  `nama` longtext,
  `jabatan` longtext,
  `jenis_kelamin` longtext,
  `ttl` longtext,
  `agama` longtext,
  `no_hp` longtext,
  `foto` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota_kpu`
--

INSERT INTO `anggota_kpu` (`id_anggota`, `nama`, `jabatan`, `jenis_kelamin`, `ttl`, `agama`, `no_hp`, `foto`) VALUES
(1, 'SARMUJI, S.Ag, M.Ag', 'Ketua KPU Provinsi Kalsel', 'Laki-laki', 'Batola, 4 Agustus 1970', 'Islam', '081349430316', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bawaslu`
--

CREATE TABLE `bawaslu` (
  `id_bawaslu` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `id_sub` int(11) DEFAULT NULL,
  `alamat` longtext,
  `no_telp` varchar(20) DEFAULT NULL,
  `foto` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bawaslu`
--

INSERT INTO `bawaslu` (`id_bawaslu`, `nama`, `id_sub`, `alamat`, `no_telp`, `foto`) VALUES
(1, 'Bawaslu Provinsi', NULL, NULL, NULL, NULL),
(2, 'Bawaslu Kabupaten', NULL, NULL, NULL, NULL),
(3, 'Bawaslu Kota', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gakkumdu`
--

CREATE TABLE `gakkumdu` (
  `id_gakkumdu` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `id_sub` int(11) DEFAULT NULL,
  `alamat` longtext,
  `no_telp` varchar(20) DEFAULT NULL,
  `foto` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gakkumdu`
--

INSERT INTO `gakkumdu` (`id_gakkumdu`, `nama`, `id_sub`, `alamat`, `no_telp`, `foto`) VALUES
(4, 'GAKKUMDU PROVINSI KALSEL', NULL, NULL, NULL, NULL),
(5, 'GAKKUMDU KOTA BANJARMASIN', NULL, NULL, NULL, NULL),
(6, 'GAKKUMDU KOTA BANJARBARU', NULL, NULL, NULL, NULL),
(7, 'GAKKUMDU KAB BALANGAN', NULL, NULL, NULL, NULL),
(8, 'GAKKUMDU KAB BANJAR', NULL, NULL, NULL, NULL),
(9, 'GAKKUMDU KAB BARITO KUALA', NULL, NULL, NULL, NULL),
(10, 'GAKKUMDU KAB HULU SUNGAI SELATAN', NULL, NULL, NULL, NULL),
(11, 'GAKKUMDU KAB HULU SUNGAI TENGAH', NULL, NULL, NULL, NULL),
(12, 'GAKKUMDU KAB HULU SUNGAI UTARA', NULL, NULL, NULL, NULL),
(13, 'GAKKUMDU KAB KOTABARU', NULL, NULL, NULL, NULL),
(14, 'GAKKUMDU KAB TABALONG', NULL, NULL, NULL, NULL),
(15, 'GAKKUMDU KAB TANAH BUMBU', NULL, NULL, NULL, NULL),
(16, 'GAKKUMDU KAB TANAH LAUT', NULL, NULL, NULL, NULL),
(17, 'GAKKUMDU KAB TAPIN', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` varchar(50) DEFAULT NULL,
  `provinsi` text,
  `kabupaten` text,
  `kecamatan` text,
  `alamat` longtext,
  `password` longtext,
  `nomor_hp` longtext,
  `pendidikan` longtext,
  `tahun_kerja` varchar(10) DEFAULT NULL,
  `nama_kerja` varchar(50) DEFAULT NULL,
  `mapel` int(11) DEFAULT NULL,
  `jenjang` int(11) DEFAULT NULL,
  `kurikulum` longtext,
  `status` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `ket` longtext,
  `foto` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`, `email`, `tempat_lahir`, `tanggal_lahir`, `provinsi`, `kabupaten`, `kecamatan`, `alamat`, `password`, `nomor_hp`, `pendidikan`, `tahun_kerja`, `nama_kerja`, `mapel`, `jenjang`, `kurikulum`, `status`, `created_at`, `ket`, `foto`) VALUES
(1, 'Kamal', 'kamal@gmail.com', NULL, NULL, '11', NULL, NULL, NULL, '200ceb26807d6bf99fd6f4f0d1ca54d4', '543535', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL),
(6, 'Mustapa Ahmad Kamal', 'mustapakamalkml@gmail.com', NULL, NULL, 'DKI Jakarta', NULL, NULL, NULL, '0192023a7bbd73250516f069df18b500', '437809', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2020-05-31 00:00:00', NULL, NULL),
(7, 'Mustapa Ahmad Kamal', 'cariguru.noreply@gmail.com', NULL, NULL, 'Banten', NULL, NULL, NULL, '0192023a7bbd73250516f069df18b500', '54736924', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', '2020-06-24 16:30:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenjang`
--

CREATE TABLE `jenjang` (
  `id_jenjang` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `ket` longtext,
  `status` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenjang`
--

INSERT INTO `jenjang` (`id_jenjang`, `nama`, `ket`, `status`) VALUES
(1, 'SMP', NULL, NULL),
(3, 'SMA', NULL, NULL),
(4, 'SMK', NULL, NULL),
(5, 'Persiapan UTBK dan UM', NULL, NULL),
(6, 'Umum', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kejaksaan`
--

CREATE TABLE `kejaksaan` (
  `id_kejaksaan` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `id_sub` int(11) DEFAULT NULL,
  `alamat` longtext,
  `no_telp` varchar(20) DEFAULT NULL,
  `foto` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kejaksaan`
--

INSERT INTO `kejaksaan` (`id_kejaksaan`, `nama`, `id_sub`, `alamat`, `no_telp`, `foto`) VALUES
(1, 'Kejaksaan Provinsi', NULL, NULL, NULL, NULL),
(2, 'Kejaksaan Kabupaten', NULL, NULL, NULL, NULL),
(3, 'Kejaksaan Kota', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepolisian`
--

CREATE TABLE `kepolisian` (
  `id_kepolisian` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `id_sub` int(11) DEFAULT NULL,
  `alamat` longtext,
  `no_telp` varchar(20) DEFAULT NULL,
  `foto` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kepolisian`
--

INSERT INTO `kepolisian` (`id_kepolisian`, `nama`, `id_sub`, `alamat`, `no_telp`, `foto`) VALUES
(1, 'POLDA KALIMANTAN SELATAN', NULL, 'Jl. S. Parman No 16 Banjarmasin', 'Telp. 0511-3354876', NULL),
(2, 'POLRES BALANGAN', NULL, 'Jl. Akhmad Yani No.23 Paringin Kab. Balangan Kalimantan Selatan 71662', '5272029510', NULL),
(3, 'POLRES BANJAR', NULL, 'Jl. A. Yani KM. 38,500 Banjar Martapura', '5114782887', NULL),
(4, 'POLRES BARITO KOALA', NULL, 'Barito Kuala Regency, South kalimanatan', '(0512) 211010', NULL),
(5, 'POLRES HULU SUNGAI SELATAN', NULL, NULL, '51731888', NULL),
(6, 'POLRES HULU SUNGAI TENGAH', NULL, 'JL. P.H. NOOR NO. 29 BARABAI', '51721012', NULL),
(7, 'POLRES HULU SUNGAI UTARA', NULL, 'Jl. Muhajiri Utara no 2 amuntai', '51744413', NULL),
(8, 'POLRES KOTABARU', NULL, 'JL. P. DIPONEGORO 1 Kec. PULAU LAUT UTARA Kab. KOTABARU', '05262028430', NULL),
(9, 'POLRES TABALONG', NULL, 'Jl. Ir. Pm Noor Tabalong', '52761470', NULL),
(10, 'POLRES TANAH BUMBU', NULL, 'Jl. Perintis-Batu Licin', NULL, NULL),
(11, 'POLRES TANAH LAUT', NULL, 'Jl. A. Yani KM 1 pelaihari', NULL, NULL),
(12, 'POLRES TAPIN', NULL, 'Jl. Brigjen H. Hasan. B Barabai Tapin', '5114772110', NULL),
(13, 'POLRESTA BANJARBARU', NULL, 'Jalan Gubernur Syarkawi Km. 35,', '5113251411', NULL),
(14, 'POLRESTABES BANJARMASIN', NULL, 'JL. A. YANI KM. 3,5 BANJARMASIN', NULL, NULL),
(15, 'ITWASDA', 1, NULL, NULL, NULL),
(16, 'BID PROPAM', 1, NULL, NULL, NULL),
(17, 'BID HUMAS', 1, NULL, NULL, NULL),
(18, 'BID KUM', 1, NULL, NULL, NULL),
(19, 'BID TIK', 1, NULL, NULL, NULL),
(20, 'BIRO OPS', 1, NULL, NULL, NULL),
(21, 'BIRO RENA', 1, NULL, NULL, NULL),
(22, 'BIRO SDM', 1, NULL, NULL, NULL),
(23, 'BIRO LOG', 1, NULL, NULL, NULL),
(24, 'SPRIPIM', 1, NULL, NULL, NULL),
(25, 'SETUM', 1, NULL, NULL, NULL),
(26, 'YANMA', 1, NULL, NULL, NULL),
(27, 'DIT INTELKAM', 1, NULL, NULL, NULL),
(28, 'DIT RESKRIMUM', 1, NULL, NULL, NULL),
(29, 'DIT RESKRIMSUS', 1, NULL, NULL, NULL),
(30, 'DIT RESNARKOBA', 1, NULL, NULL, NULL),
(31, 'SAT BRIMOB', 1, NULL, NULL, NULL),
(32, 'SPKT', 1, NULL, NULL, NULL),
(33, 'DIT BINMAS', 1, NULL, NULL, NULL),
(34, 'DIT SAMAPTA', 1, NULL, NULL, NULL),
(35, 'DIT LANTAS', 1, NULL, NULL, NULL),
(36, 'DIT PAMOBVIT', 1, NULL, NULL, NULL),
(37, 'DIT POLAIRUD', 1, NULL, NULL, NULL),
(38, 'DIT TAHTI', 1, NULL, NULL, NULL),
(39, 'SPN', 1, NULL, NULL, NULL),
(40, 'BID KEU', 1, NULL, NULL, NULL),
(41, 'BID DOKKES', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kpu`
--

CREATE TABLE `kpu` (
  `id_kpu` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `id_sub` int(11) DEFAULT NULL,
  `alamat` longtext,
  `no_telp` varchar(20) DEFAULT NULL,
  `foto` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kpu`
--

INSERT INTO `kpu` (`id_kpu`, `nama`, `id_sub`, `alamat`, `no_telp`, `foto`) VALUES
(1, 'KPUD Provinsi', NULL, NULL, NULL, NULL),
(2, 'KPUD Kabupaten', NULL, NULL, NULL, NULL),
(3, 'KPUD Kota', NULL, NULL, NULL, NULL),
(4, 'KPUD Kalimantan Selatan', 1, 'Jalan Jendral A. Yani Km.3,5 No.212, Kota Banjarmasin\r\nProvinsi Kalimantan Selatan 70234', '(0511) 3256404', 'kpu-kalsel.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id_kurikulum` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `ket` longtext,
  `status` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kurikulum`
--

INSERT INTO `kurikulum` (`id_kurikulum`, `nama`, `ket`, `status`) VALUES
(2, 'Nasional', NULL, NULL),
(3, 'Nasional Plus', NULL, NULL),
(4, 'Internasional', NULL, NULL),
(5, 'tses', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `id_jenjang` int(11) DEFAULT NULL,
  `id_kurikulum` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `ket` longtext,
  `status` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `id_jenjang`, `id_kurikulum`, `nama`, `ket`, `status`) VALUES
(3, 1, 2, 'Matematika', NULL, NULL),
(4, 1, 2, 'IPA Terpadu', NULL, NULL),
(5, 3, 2, 'Matematika Wajib IPA', NULL, NULL),
(6, 3, 2, 'Matematika Wajib IPS', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `murid`
--

CREATE TABLE `murid` (
  `id_murid` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` varchar(50) DEFAULT NULL,
  `provinsi` text,
  `kabupaten` text,
  `kecamatan` text,
  `alamat` longtext,
  `password` longtext,
  `nomor_hp` longtext,
  `pendidikan` longtext,
  `tahun_kerja` varchar(10) DEFAULT NULL,
  `nama_kerja` varchar(50) DEFAULT NULL,
  `mapel` int(11) DEFAULT NULL,
  `jenjang` int(11) DEFAULT NULL,
  `kurikulum` longtext,
  `status` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `ket` longtext,
  `foto` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paslon`
--

CREATE TABLE `paslon` (
  `id_paslon` int(11) NOT NULL,
  `nama` longtext,
  `pekerjaan` longtext,
  `partai` longtext,
  `urut` longtext,
  `sebagai` longtext,
  `daerah` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyelenggara`
--

CREATE TABLE `penyelenggara` (
  `id_penyelenggara` int(11) NOT NULL,
  `nama` text,
  `id_sub` varchar(50) DEFAULT NULL,
  `ket` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_ads`
--

CREATE TABLE `t_ads` (
  `idads` int(10) NOT NULL,
  `adsName` varchar(70) NOT NULL,
  `adsScript` text NOT NULL,
  `adsStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_ads`
--

INSERT INTO `t_ads` (`idads`, `adsName`, `adsScript`, `adsStatus`) VALUES
(3, 'FB Pixel', '519807145246349', 'Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_bank`
--

CREATE TABLE `t_bank` (
  `idbank` int(11) NOT NULL,
  `bankName` varchar(70) NOT NULL,
  `accountName` text NOT NULL,
  `accountNumber` varchar(100) NOT NULL,
  `logo` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_bank`
--

INSERT INTO `t_bank` (`idbank`, `bankName`, `accountName`, `accountNumber`, `logo`, `status`) VALUES
(5, 'BCA', 'Kamal', '24387649324', '', 'inactive'),
(6, 'BRI', 'Kamal', '76269430', '', 'active'),
(7, 'BNI', 'Kamal', '0521621914', '', 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_banner_image`
--

CREATE TABLE `t_banner_image` (
  `idbannerimage` int(11) NOT NULL,
  `status` text NOT NULL,
  `bannerdescription` text NOT NULL,
  `bannerText` varchar(300) DEFAULT ' ',
  `image` text NOT NULL,
  `bannerPosition` text NOT NULL,
  `sortOrder` int(2) DEFAULT '0',
  `bannerLink` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_banner_image`
--

INSERT INTO `t_banner_image` (`idbannerimage`, `status`, `bannerdescription`, `bannerText`, `image`, `bannerPosition`, `sortOrder`, `bannerLink`) VALUES
(57, 'active', 'Gambar ini digunakan untuk logo di semua posisi, sesuaikan ukuran yang telah ditetapkan', 'Cari Guru', 'd9ff8cb34772ed8c80f41788fae26e81.png', 'logo', 0, 'http://localhost/cg/'),
(58, 'active', 'iconpage', 'Cari Guru', '836629e516fc365b96d5a21c88e497c2.png', 'icontitle', 0, 'http://localhost/cg/'),
(59, 'active', 'Gambar ini untuk slider home, atur gambar <b>Active</b> maksimal 3.', 'Belajar Lebih Menyenangkan', 'b856da683e7ddcec2554425049570218.png', 'bannerhome', 1, 'null');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_blog_category`
--

CREATE TABLE `t_blog_category` (
  `idblogcategory` int(11) NOT NULL,
  `blog_category_name` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_blog_category`
--

INSERT INTO `t_blog_category` (`idblogcategory`, `blog_category_name`) VALUES
(2, 'Kegiatan'),
(3, 'Berita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_blog_post`
--

CREATE TABLE `t_blog_post` (
  `idblogpost` int(11) NOT NULL,
  `blog_title` text NOT NULL,
  `blog` text NOT NULL,
  `idblogcategory` int(11) NOT NULL,
  `post_by` text NOT NULL,
  `post_read` int(11) NOT NULL,
  `post_date` datetime NOT NULL,
  `post_blog_slug` text NOT NULL,
  `post_tag` text NOT NULL,
  `metatitle` text NOT NULL,
  `metatag` text NOT NULL,
  `metadesc` text NOT NULL,
  `banner_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_blog_post`
--

INSERT INTO `t_blog_post` (`idblogpost`, `blog_title`, `blog`, `idblogcategory`, `post_by`, `post_read`, `post_date`, `post_blog_slug`, `post_tag`, `metatitle`, `metatag`, `metadesc`, `banner_image`) VALUES
(11, 'Bawaslu Provinsi Kalsel Launching Gakkumdu Bersama 13 Kabupaten/Kota', '<p>\r\n\r\n<p>Badan Pengawas Pemilihan Umum (Bawaslu) Provinsi Kalimantan Selatan meluncurkan Sentra Penegakan Hukum Terpadu (Gakkumdu) di Hotel Dafam Syariah Q Mall Banjarbaru pada Senin malam (16/3).</p><p>Untuk meluncurkan Sentra Gakkumdu Kalsel bersama 13 Kabupaten/Kota ini, Bawaslu Kalsel menggandeng pihak Kepolisian dan Kejaksaan se Kalsel.</p><p>Ketua Bawaslu Kalsel, Erna Kasypiah menyebutkan berdasarkan Undang-Undang, ada 3 jenis pelanggaran dalam pemilu yaitu pelanggaran administratif, kode etik dan pidana.</p>\r\n\r\n</p><p><small>?</small>“Untuk pelanggaran pidana, penanganannya dilaksanakan oleh Tim Gakkumdu yang terdiri atas kejaksaan, kepolisian dan Bawaslu,” katanya.<br></p><p><p>Selama ini penanganan pelanggaran pidana pemilu oleh Gakkumdu jelas Erna Kaspiyah dilaksanakan sesuai dengan aturan yang berlaku.</p><p>“Bahkan Bawaslu Kalsel mendapatkan penghargaan terbaik ke 2 dari seluruh Indonesia untuk penanganan pelanggaran pemilu. Kita ingin hubungan harmonis yang sudah terjalin bisa terus dijaga,” ungkapnya.</p>\r\n\r\n\r\n\r\n<p>Pada tahun ini, Kalsel menempati urutan ke 7 dari 9 provinsi yang melaksanakan Pilkada berdasarkan Indeks Kerawanan Pemilu (IKP) yang disusun Bawaslu RI.</p><p>Sementara itu ada 2 Kabupaten/Kota termasuk rawan tingkat tinggi yaitu Kotabaru dan Banjarmasin, sedangkan 2 Kabupaten/Kota yang termasuk rawan tingkat sedang adalah Balangan dan Banjarbaru.</p><p>“Kita berharap pembentukan Sentra Gakkumdu ini bisa mensinergikan 3 instansi untuk menangani pelanggaran pemilu secara maksimal sehingga tak terkontaminasi dan berjalan rel lurus sesuai dengan fungsi Gakkumdu,” terang Erna Kaspiyah.</p><p>Kasubdit 1 Ditreskrimum Polda Kalsel, Kompol Jimmi Kurniawan menambahkan pihak kepolisian sudah melakukan persiapan maksimal untuk menangani pelanggaran pidana pemilu yang mungkin akan terjadi.</p>\r\n\r\n\r\n\r\n<p>“Mudahan dengan launching kegiatan ini kedepannya kita bisa menjalankan kegiatan tersebut secara profesional, baik dan aman sehingga apa yang diharapkan dapat terwujud,” ujarnya.</p><p>Kepala Kejaksaan Negeri Banjarbaru, Silvia Desty Rosalina menyampaikan dengan di launchingnya Sentra Gakkumdu ini, pihaknya tentu saja turut berperan aktif untuk menangani pelanggaran yang terjadi.</p>\r\n\r\n\r\n\r\n<p>“Dengan adanya Sentra Gakkumdu ini kita juga nanti akan mendiskusikan berbagai hal, termasuk untuk menentukan langkah-langkah antisipasi. Sehingga diharapkan Pilkada dapat berjalan dengan baik karena kita telah melaksanakan antisipasi,” terangnya.</p><p>Silvia Desty Rosalina menambahkan untuk mencegah kerawanan sejak dini, netralitas Gakkumdu merupakan keharusan, selain terus menerus menjaga koordinasi antara kepolisian, Bawaslu dan Kejaksaan.</p>\r\n\r\n<br></p>', 3, 'usr55880001', 0, '2020-06-29 20:50:06', 'bawaslu-provinsi-kalsel-launching-gakkumdu-bersama-13-kabupaten/kotapost0011.html', 'bawaslu, gakkumdu', 'Bawaslu Provinsi Kalsel Launching Gakkumdu Bersama 13 Kabupaten/Kota', 'bawaslu, gakkumdu', 'Bawaslu Provinsi Kalsel Launching Gakkumdu Bersama 13 Kabupaten/Kota', 'asset/img/uploads/blog/Bawaslu-Provinsi-Kalsel-Launching-Gakkumdu-Bersama-13-Kabupaten/Kotapost0011.jpg'),
(12, 'PENINGKATAN SINERGITAS STAKEHOLDER PENYELENGGARA PEMILU PENTING DIGALAKKAN', '<p>\r\n\r\n<p><strong>Banjarmasin, Bawaslu Provinsi Kalimantan Selatan</strong>&nbsp;– Keputusan untuk tetap melaksanakan pemilihan di tengah Pandemic diambil oleh Pemerintah dengan menerapkan <em>Disiplin Protokol New Normal</em>. </p><p>Bawaslu melelaui <em>teropong</em>&nbsp;Hukum memandang kondisi ini masih memiliki celah yang mengharuskan Bawaslu Kalsel terus waspada. Salah satunya dengan pola Peningkatan Sinergitas antar Penyelenggara Pemilu juga dengan Stakeholder Pemilu. (08/06/2020)</p><p></p><p></p><p></p><p>Payung Hukum Pelaksanaan Pilkada 2020, pada pasal 71 telah memberikan <em>cetak tebal</em>&nbsp;kepada Pejabat Negara berupa larangan membuat keputusan ataupun tindakan yang menguntungkan atau merugikan salah satu pasangan calon, juga larangan bagi Pejabat Negara untuk melakukan penggantian pejabat serta menggunakan program dan kegiatan Pemerintah untuk kegiatan pemilihan, selama 6 bulan sebelum penetapan.</p><p>Selain itu alih – alih bantuan sosial di masa Pandemic juga <em>payu </em>digunakan oleh peserta pemilu untuk mencuri start. Mengumpulkan simpatisan dengan memberikan bantuan yang dibungkus dan dilabeli simbol – simbol politik. Terhadap kasus ini Bawaslu Kalsel menyebutnya dengan istilah <em>Politisasi Bantuan Sosial</em>.</p><p>Frase ini telah disampaikan Bawaslu sebagai salah satu potensi terbukanya pintu kerawanan pada pelaksanaan Pilkada. Bawaslu Kalsel mencatat ada 15 pasangan calon peserta Pilkada/Pilwali yang masuk melalui jalur <em>independent</em>. 1 <em>incumbent</em>&nbsp;dalam Pilwali, 1 <em>incumbent</em>&nbsp;dalam Pilgub.</p><p>Potensi terjadinya konflik juga menjadi kewaspadaan tersendiri bagi Penyelenggara Pemilu. isu saling melaporkan antar Penyelenggara Pemilu juga berpotensi di Politisasi oleh peserta Pemilu.</p><p>Kapolda Kalsel, Irjen.Pol. Nico Afinta telah mewaspadai kondisi ini di Provinsi Kalimantan Selatan. Menurut Irjen Nico, Bawaslu Perlu meningkatkan sosialisasi kepada publik dan mengajak partisipasi publik untuk melaporkan dugaan pelanggaran pemilu ke Bawaslu dan mengembalikan semua sesuai prosedur hukum yang berlaku.</p><p>\r\n\r\n<p>Turut hadir dalam kunjungan Peningkatan Sinergitas Bawaslu Kalsel dengan Polda Kalsel. Ketua Bawaslu Kalsel, Erna Kasypiah, Kordiv Hukum Bawaslu Kalsel, Noor Kholis Majid, Kepala Sekretariat Bawaslu Kalsel, T. Dahsya, Kabag Pengawasan dan Humas Bawaslu Kalsel, Supriyanto Noor serta Kasubag Humas dan HAL Bawaslu Kalsel, Murdianti.</p><p>Disambut Kapolda Kalsel, Irjen.Pol. Nico Afinta, Karendal Opsda, Kombes Pol. Isdiyono S.H. dan Dirintelkam, Kombespol Hajat Mabrur Bujangga S.H., S.Ik.</p>\r\n\r\n&nbsp;</p></p>', 2, 'usr55880001', 0, '2020-06-29 21:15:59', 'peningkatan-sinergitas-stakeholder-penyelenggara-pemilu-penting-digalakkanpost0012.html', '#pemilukada sukses', 'PENINGKATAN SINERGITAS STAKEHOLDER PENYELENGGARA PEMILU PENTING DIGALAKKAN', '#pemilukada sukses', 'PENINGKATAN SINERGITAS STAKEHOLDER PENYELENGGARA PEMILU PENTING DIGALAKKAN', 'asset/img/uploads/blog/PENINGKATAN-SINERGITAS-STAKEHOLDER-PENYELENGGARA-PEMILU-PENTING-DIGALAKKANpost0012.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_category`
--

CREATE TABLE `t_category` (
  `idcategory` int(50) NOT NULL,
  `categoryName` text NOT NULL,
  `idparent` varchar(50) NOT NULL,
  `categoryDescription` text NOT NULL,
  `categoryLink` text NOT NULL,
  `categoryMetaTag` text NOT NULL,
  `categoryMetaDescription` text NOT NULL,
  `categoryStatus` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_category`
--

INSERT INTO `t_category` (`idcategory`, `categoryName`, `idparent`, `categoryDescription`, `categoryLink`, `categoryMetaTag`, `categoryMetaDescription`, `categoryStatus`) VALUES
(72, 'Guru1', '0', '', 'guru1.html', '', 'dsfdsf', 'active'),
(73, 'Polda', '0', '', 'polda.html', 'dsfdsfsf', 'asfdsfsdfs', 'inActive'),
(76, 'Polres', '0', '', 'polres.html', 'sdfsdf', 'dsfdsfsdf', 'inActive'),
(77, 'polsek', '76', '', 'polsek.html', 'sdfsd', 'dsfdsf', 'inActive');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_company`
--

CREATE TABLE `t_company` (
  `id` int(11) NOT NULL,
  `companyName` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `phone1` text NOT NULL,
  `phone2` text NOT NULL,
  `companyDescription` text NOT NULL,
  `tagcompanyDescription` text,
  `email` text NOT NULL,
  `fbLink` text NOT NULL,
  `igLink` text NOT NULL,
  `twittLink` text NOT NULL,
  `ytLink` text NOT NULL,
  `waPhone` text NOT NULL,
  `titleDescription` text NOT NULL,
  `owner` text NOT NULL,
  `daysDue` int(10) DEFAULT NULL,
  `taxProduct` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_company`
--

INSERT INTO `t_company` (`id`, `companyName`, `address1`, `address2`, `phone1`, `phone2`, `companyDescription`, `tagcompanyDescription`, `email`, `fbLink`, `igLink`, `twittLink`, `ytLink`, `waPhone`, `titleDescription`, `owner`, `daysDue`, `taxProduct`) VALUES
(1, 'SI PALUI', 'Jl. xxxx', 'dd', '+628xxxxxxx', '+628xxxxxxxx', '<div><b>Cari Guru,&nbsp;</b>pembelajaran private, cari guru private</div>', 'SI PALUI', 'cariguru@gmail.com', 'http://www.facebook.com', 'https://www.instagram.com/', 'null', 'nul', '+628xxxxxxx', '', 'KKMK', 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_contact`
--

CREATE TABLE `t_contact` (
  `idcontact` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `message` text NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_contact`
--

INSERT INTO `t_contact` (`idcontact`, `name`, `phone`, `email`, `message`, `date_create`) VALUES
(1, 'Walmer Armik', '8578144444', 'email@s.com', 'bagaimana membatalkan order ?', '2019-12-18 04:38:13'),
(2, 'Dio', '085777888228', 'mukhlishidayat30@gmail.com', 'Ini pesan\r\nGorden jendela Prada yang sangat indah untuk mempercantik ruangan anda. Bisa dicuci ulang. Motif cocok untuk semua type rumah. Berkesan sangat elegan.\r\nKemiripan warna pada foto 90% karena efek cahaya.\r\n===========================================\r\nLebar Kain 135cm (bila dibentangkan lurus tanpa gelombang)\r\nTinggi : 225cm\r\nTerdiri dari 6 lipatan/gelombang\r\nTerpasang 12 lubang Smokring warna GOLD\r\n===========================================\r\njika ingin ganti warna smokring dikenakan biaya Rp 1500/pcs.\r\nSatu helai gorden ini cocok untuk ukuran jendela dengan lebar Minimal 40cm dan Maksimal 100cm.\r\nApabila Tinggi nya hendak dirubah menjadi lebih pendek bisa kami bantu potong dengan biaya Rp 10,000 per helai dan akan kami buatkan link nya.\r\n===========================================\r\nHarga untuk 1 helai\r\nVitrase dan rel tidak termasuk.', '2019-12-22 23:51:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_cs`
--

CREATE TABLE `t_cs` (
  `id` int(60) NOT NULL,
  `csName` varchar(60) NOT NULL,
  `csPhone` varchar(16) NOT NULL,
  `status` varchar(20) NOT NULL,
  `count` int(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_cs`
--

INSERT INTO `t_cs` (`id`, `csName`, `csPhone`, `status`, `count`) VALUES
(1, 'Bayu', '6281804260042', 'Active', 12),
(2, 'admin 2', '628161623545', 'Active', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_email_sender`
--

CREATE TABLE `t_email_sender` (
  `id` int(5) NOT NULL,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pass` text NOT NULL,
  `mailtype` text NOT NULL,
  `charset` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_email_sender`
--

INSERT INTO `t_email_sender` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`, `charset`) VALUES
(1, 'smtp', 'ssl://smtp.googlemail.com', '465', 'totosingapura6d@gmail.com', 'ta9asTOP', 'html', 'iso-8859-1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_email_subcribe`
--

CREATE TABLE `t_email_subcribe` (
  `id` int(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_email_subcribe`
--

INSERT INTO `t_email_subcribe` (`id`, `email`, `date_create`) VALUES
(2, 'bakrie508@gmail.com', '2019-12-20 02:39:14'),
(3, 'mukhlishidayat30@gmail.com', '2019-12-21 13:52:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_footer_tagline`
--

CREATE TABLE `t_footer_tagline` (
  `id` int(10) NOT NULL,
  `taglineTitle` text NOT NULL,
  `taglineDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_footer_tagline`
--

INSERT INTO `t_footer_tagline` (`id`, `taglineTitle`, `taglineDescription`) VALUES
(1, 'Free Delivery Worldwide', 'Simply return it within 30 days for an exchange.'),
(2, '30 Days Return', 'Simply return it within 30 days for an exchange.'),
(4, 'Store Opening', 'Shop open from Monday to Sunday');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_foto`
--

CREATE TABLE `t_foto` (
  `idFoto` int(15) NOT NULL,
  `idUpload` varchar(50) NOT NULL,
  `fotoName` varchar(50) NOT NULL,
  `fotoStatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_foto`
--

INSERT INTO `t_foto` (`idFoto`, `idUpload`, `fotoName`, `fotoStatus`) VALUES
(101, 'PRD5577001usr55880001', '2f3a0f9be829d12a4f7243329fc2e7bc.jpeg', '1'),
(102, 'PRD5577001usr55880001', 'fbc3a09ddb082b92062b7de08979d042.jpeg', '2'),
(103, 'PRD5577001usr55880001', '52617b160af656b5dd274580afd2768c.jpeg', '3'),
(104, 'PRD5577002usr55880001', 'b00a9ce50d411c5c7eac43e93cc6cfe0.jpg', '1'),
(105, 'PRD5577002usr55880001', '2af8546364633851da4c4b4a5c02d1e0.jpg', '2'),
(106, 'PRD5577002usr55880001', '5cb62f27ac1e3c1a667066e876415813.jpg', '3'),
(107, 'PRD5577002usr55880001', '034f0db8444faffce7296412ab19ef8c.jpg', '4'),
(108, 'PRD5577003usr55880001', 'e7da49c2bca6286dd1316496efc1e861.jpg', '1'),
(109, 'PRD5577003usr55880001', 'e5fd412dd2d3ae4f129199602f0e0743.jpg', '2'),
(110, 'PRD5577003usr55880001', 'a0f53b7944b7c5d0a257764c5c0aef16.jpg', '3'),
(111, 'PRD5577004usr55880001', '662236e417d1f3f433d86e41d32da93b.jpg', '1'),
(114, 'PRD5577005usr55880001', '8e09e554aef8ff6d1c774d28a7f2d739.jpg', '1'),
(117, 'PRD5577006usr55880001', '081849b6bf57e1ce3321735ea3b2b9f6.jpg', '1'),
(119, 'PRD5577007usr55880001', 'ecfc70e90a5ceabca32eb4bc909247ab.jpeg', '1'),
(120, 'PRD5577007usr55880001', '5b7a71cc4546948d5eed17decf9e256a.jpeg', '2'),
(121, 'PRD5577007usr55880001', '3e6ab5448492837f9ebc0be6120607c3.jpeg', '3'),
(122, 'PRD5577008usr55880001', 'd39b43be0d5aa034f8cbbbf5075bfc30.jpeg', '1'),
(123, 'PRD5577008usr55880001', '97a88d594015cef4341c2cae332f0064.jpeg', '2'),
(124, 'PRD5577006usr55880001', 'c55a3e2d42bddc6f6203de7430950d44.jpg', '2'),
(125, 'PRD5577005usr55880001', '0443e60785d4d1d252431e20fdd9bfb4.jpg', '2'),
(126, 'PRD5577004usr55880001', 'ed843b8f9cc2b1836185a677aa485157.jpg', '2'),
(137, 'PRD5577011usr55880001', 'd5dc598572c2c6112de5452186b025f5.JPG', '1'),
(138, 'PRD5577011usr55880001', '7bf1bc76ef35647785dcc46646135674.JPG', '2'),
(139, 'PRD5577011usr55880001', '576ad42b00cad3b250938567a9dcb174.JPG', '3'),
(140, 'PRD5577009usr55880001', '777f3d4000930de2e3a891bd052e9ad5.jpg', '1'),
(141, 'PRD5577009usr55880001', 'f65373382bde472824648df3ccb94e5c.jpg', '2'),
(142, 'PRD5577009usr55880001', '81c6acde436684627188e2ee3a5f4d80.jpg', '3'),
(143, 'PRD5577009usr55880001', '6002875c0094c939867eed85bcb15a4e.jpg', '4'),
(145, 'PRD5577012usr55880001', 'f8972947424c8b51a3c2e61256c2fcc4.jpg', '1'),
(146, 'PRD5577012usr55880001', '875f5d8ba59ce166156abfcbc079765f.jpg', '2'),
(147, 'PRD5577012usr55880001', '17162a96e1fd39bb3a32eab57b601727.jpg', '3'),
(148, 'PRD5577012usr55880001', 'c0715b2eef6683484b649a928f59673a.jpg', '4'),
(149, 'PRD5577012usr55880001', 'a8e205b3b1bac97843f0acf7a9ecf998.jpg', '5'),
(150, 'PRD5577012usr55880001', '0330236b72e09208bc3f7d8565066548.jpg', '6'),
(151, 'PRD5577012usr55880001', 'e6bea2127852401f5f7bad35c7ac2602.jpg', '7'),
(152, 'PRD5577012usr55880001', 'd0dee7eee6e4f1cef90acd646e3d4e23.jpg', '8'),
(153, 'PRD5577012usr55880001', 'a3bc37bcd029b3d94a5de782cad354a5.jpg', '9'),
(154, 'PRD5577012usr55880001', 'fee034d0fbaa40e84f7bbf3c292e6715.jpg', '10'),
(155, 'PRD5577012usr55880001', '5edeb50558df634b5184b3a2c501cc6c.jpg', '11'),
(156, 'PRD5577012usr55880001', '704701a0cc4e4756eaf5159fa131fb86.jpg', '12'),
(157, 'PRD5577013usr55880001', '7353e11e7f0e73a7b638f457a8652661.jpg', '1'),
(158, 'PRD5577013usr55880001', 'ee48791a6531a849bee652d41537cf8d.jpg', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_invoice`
--

CREATE TABLE `t_invoice` (
  `idinvoice` int(50) NOT NULL,
  `idorder` varchar(50) NOT NULL,
  `idordershiping` varchar(50) NOT NULL,
  `invoiceDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bankAccountName` text NOT NULL,
  `paymentMethod` text,
  `tax` int(11) NOT NULL DEFAULT '0',
  `invoicePrice` text NOT NULL,
  `paymentImage` text,
  `dueDate` datetime NOT NULL,
  `dateConfirmPayment` timestamp NULL DEFAULT NULL,
  `dateUploadPayment` datetime DEFAULT NULL,
  `invoiceStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_invoice`
--

INSERT INTO `t_invoice` (`idinvoice`, `idorder`, `idordershiping`, `invoiceDate`, `bankAccountName`, `paymentMethod`, `tax`, `invoicePrice`, `paymentImage`, `dueDate`, `dateConfirmPayment`, `dateUploadPayment`, `invoiceStatus`) VALUES
(17, '58575800001', '', '2019-12-18 10:05:00', 'Gilang Bayu Pamungkas', 'BNI-1654-46465-456456', 34900, '383966', NULL, '0000-00-00 00:00:00', '2019-12-18 03:05:00', '2019-12-18 10:05:25', 'selesai'),
(18, '58575800002', '', '2019-12-18 11:19:00', 'Gilang Bayu Pamungkas', 'BNI-1654-46465-456456', 25800, '283872', NULL, '0000-00-00 00:00:00', '2019-12-18 04:19:00', '2019-12-18 11:19:40', 'process shiping'),
(19, '58575800003', '', '2019-12-18 11:40:14', 'Gilang Bayu Pamungkas', 'BCA-8950200732', 78500, '863551', '9f5a79a93b5ae1fe6ffe775f23f80138.jpg', '0000-00-00 00:00:00', '2019-12-18 04:40:00', '2019-12-18 11:40:43', 'process shiping'),
(20, '58575800004', '', '2019-12-18 13:13:26', 'Gilang Bayu Pamungkas', 'BNI-1654-46465-456456', 75100, '826127', 'dc6c5b2344e7d5aefce25e7adf8c34cf.jpg', '0000-00-00 00:00:00', '2019-12-18 06:13:00', '2019-12-18 13:13:49', 'process shiping'),
(21, '58575800005', '', '2019-12-18 13:14:43', 'Gilang Bayu Pamungkas', 'BCA-8950200732', 120900, '1329998', '23fd93a27f7a106852c5127f55b90685.jpg', '0000-00-00 00:00:00', '2019-12-18 06:14:00', '2019-12-18 13:14:57', 'process shiping'),
(22, '58575800006', '', '2019-12-18 13:16:04', 'Gilang Bayu Pamungkas', 'BNI-1654-46465-456456', 329200, '3621244', '5dd27ab16bf670423bbaa4f0f2ea73e0.jpg', '0000-00-00 00:00:00', '2019-12-18 06:16:00', '2019-12-18 13:16:18', 'process shiping'),
(23, '58575800007', '', '2019-12-18 13:17:43', 'Input By Admin', 'Input By Admin', 56000, '616000', NULL, '0000-00-00 00:00:00', '2019-12-18 06:17:43', NULL, 'process shiping'),
(24, '58575800008', '', '2019-12-18 13:18:04', 'Input By Admin', 'Input By Admin', 174000, '1914000', NULL, '0000-00-00 00:00:00', '2019-12-18 06:18:04', NULL, 'process shiping'),
(25, '58575800009', '', '2019-12-18 13:18:32', 'Input By Admin', 'Input By Admin', 58000, '638000', NULL, '0000-00-00 00:00:00', '2019-12-18 06:18:32', NULL, 'selesai'),
(26, '58575800010', '', '2019-12-18 13:19:22', 'Input By Admin', 'Input By Admin', 116000, '1292500', NULL, '0000-00-00 00:00:00', '2019-12-18 06:19:22', NULL, 'closing paid'),
(27, '58575800011', '', '2019-12-18 13:24:04', 'Input By Admin', 'Input By Admin', 116000, '1276000', NULL, '0000-00-00 00:00:00', '2019-12-18 06:24:04', NULL, 'closing paid'),
(28, '58575800012', '', '2019-12-18 13:24:37', 'Input By Admin', 'Input By Admin', 25000, '275000', NULL, '0000-00-00 00:00:00', '2019-12-18 06:24:37', NULL, 'closing paid'),
(29, '58575800013', '', '2019-12-18 13:25:11', 'Input By Admin', 'Input By Admin', 55000, '605000', NULL, '0000-00-00 00:00:00', '2019-12-18 06:25:11', NULL, 'closing paid'),
(30, '58575800014', '', '2019-12-18 13:26:34', 'Input By Admin', 'Input By Admin', 185000, '2035000', NULL, '0000-00-00 00:00:00', '2019-12-18 06:26:34', NULL, 'closing paid'),
(31, '58575800015', '', '2019-12-18 13:27:17', 'Input By Admin', 'Input By Admin', 429000, '4719000', NULL, '0000-00-00 00:00:00', '2019-12-18 06:27:17', NULL, 'closing paid'),
(32, '58575800016', '', '2019-12-18 13:33:44', 'Input By Admin', 'Input By Admin', 50000, '550000', NULL, '0000-00-00 00:00:00', '2019-12-18 06:33:44', NULL, 'closing paid'),
(33, '58575800017', '', '2019-12-18 13:43:14', 'Gilang Bayu Pamungkas', 'BNI-1654-46465-456456', 29900, '328972', '20947ac84995130a38dc1c72b45396a1.jpg', '0000-00-00 00:00:00', '2019-12-18 06:43:00', '2019-12-18 13:43:31', 'process shiping'),
(34, '58575800018', '', '2019-12-18 14:19:00', 'Gilang Bayu Pamungkas', 'BNI-1654-46465-456456', 113700, '1250796', 'b8b9b0dfa3d6122354cb5fd94da43b63.jpg', '0000-00-00 00:00:00', '2019-12-18 07:19:00', '2019-12-18 14:19:24', 'process shiping'),
(36, '58575800021', '', '2019-12-18 20:04:58', 'Gilang Bayu Pamungkas', 'BCA-8950200732', 17500, '192514', 'ecfa341b9ea7a7db2847a43644fc8f5e.jpg', '0000-00-00 00:00:00', '2019-12-18 13:05:00', '2019-12-18 20:05:56', 'PAID'),
(37, '58575800019', '', '2019-12-18 17:41:13', 'Gilang Bayu Pamungkas', 'BCA-8950200732', 37700, '414789', '1977f467b803cff7117a3fa6fb15a0d9.jpg', '0000-00-00 00:00:00', '2019-12-18 10:42:00', '2019-12-18 17:42:15', 'process shiping'),
(38, '58575800022', '', '2019-12-19 08:31:36', 'Gilang Bayu Pamungkas', 'BCA-8950200732', 59400, '653471', 'd384db5b17e1f3b8b60ef5e6aade4aea.JPG', '0000-00-00 00:00:00', '2019-12-19 01:32:00', '2019-12-19 08:32:25', 'selesai'),
(39, '58575800023', '', '2019-12-18 17:54:58', 'Input By Admin', 'Input By Admin', 25000, '275000', NULL, '0000-00-00 00:00:00', '2019-12-18 10:54:58', NULL, 'closing paid'),
(40, '58575800024', '', '2019-12-18 21:16:54', 'Gilang Bayu Pamungkas', 'BCA-8950200732', 18400, '202493', NULL, '2019-12-18 22:16:53', NULL, NULL, 'canceled'),
(41, '58575800025', '', '2019-12-19 09:20:39', 'Gilang Bayu Pamungkas', 'BCA-8950200732', 170800, '1878879', NULL, '2019-12-18 23:25:49', NULL, NULL, 'canceled'),
(42, '58575800026', '', '2019-12-19 13:52:21', 'Gilang Bayu Pamungkas', 'BCA-8950200732', 0, '117066', NULL, '2019-12-19 07:11:10', NULL, NULL, 'canceled'),
(43, '58575800027', '', '2019-12-19 08:54:12', 'Gilang Bayu Pamungkas', 'BCA-8950200732', 23200, '255256', '3ddd34d6030d938fce34338638d2b4c4.png', '0000-00-00 00:00:00', '2019-12-19 01:55:00', '2019-12-19 08:55:24', 'reject'),
(44, '58575800028', '', '2019-12-19 09:47:52', 'Gilang Bayu Pamungkas', 'BNI-1654-46465-456456', 0, '253962', 'eb2006927da16beceb9a90f9e565bce7.jpg', '0000-00-00 00:00:00', '2019-12-19 02:49:00', '2019-12-19 09:49:00', 'selesai'),
(48, '58575800039', '', '2019-12-19 15:51:50', 'Gilang Bayu Pamungkas', 'BCA-8950200732', 54800, '602879', '9c7d989488b984762fe2c30bc839262e.jpg', '0000-00-00 00:00:00', '2019-12-19 08:52:00', '2019-12-19 15:52:20', 'process shiping'),
(49, '58575800040', '', '2019-12-19 19:16:50', 'Gilang Bayu Pamungkas', 'BCA-8950200732', 72890, '801872', NULL, '2019-12-19 17:59:41', NULL, NULL, 'canceled'),
(50, '58575800041', '', '2019-12-21 23:49:03', 'Gilang Bayu Pamungkas', 'BNI-1654-46465-456456', 16000, '176033', NULL, '2019-12-22 00:49:01', NULL, NULL, 'closing unpaid'),
(51, '58575800038', '', '2019-12-23 14:55:02', 'Gilang Bayu Pamungkas', 'BNI-1654-46465-456456', 34900, '383987', '1ef8fe9a5ffa20069a3585067739151d.png', '0000-00-00 00:00:00', '2019-12-23 07:55:00', '2019-12-23 14:55:31', 'PAID'),
(52, '58575800042', '', '2019-12-20 21:37:20', 'Gilang Bayu Pamungkas', 'BCA-8950200732', 6700, '73725', NULL, '2019-12-20 22:37:18', NULL, NULL, 'canceled'),
(53, '58575800043', '', '2019-12-24 13:01:01', 'Gilang Bayu Pamungkas', 'BNI-1654-46465-456456', 60500, '665542', '4b622f39f08cf0ff38e3ce6e7a3f4fea.jpg', '0000-00-00 00:00:00', '2019-12-24 06:01:00', '2019-12-24 13:01:43', 'process shiping'),
(54, '58575800044', '', '2020-01-05 08:58:28', 'Input By Admin', 'Input By Admin', 59480, '654280', NULL, '0000-00-00 00:00:00', '2020-01-05 01:58:28', NULL, 'selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_invoice_partner`
--

CREATE TABLE `t_invoice_partner` (
  `idinvoicepartner` varchar(100) NOT NULL,
  `iduser` varchar(20) NOT NULL,
  `paymentMethod` varchar(90) DEFAULT NULL,
  `paymentImage` text,
  `bankName` text,
  `invoicePartnerPrice` varchar(30) NOT NULL,
  `invoicePartnerStatus` varchar(20) NOT NULL,
  `invoicePartnerDescription` text,
  `dateRegister` date NOT NULL,
  `dueDate` date DEFAULT NULL,
  `dateConfirm` date NOT NULL,
  `bankNameSender` text,
  `accountNameSender` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_invoice_partner`
--

INSERT INTO `t_invoice_partner` (`idinvoicepartner`, `iduser`, `paymentMethod`, `paymentImage`, `bankName`, `invoicePartnerPrice`, `invoicePartnerStatus`, `invoicePartnerDescription`, `dateRegister`, `dueDate`, `dateConfirm`, `bankNameSender`, `accountNameSender`) VALUES
('inv-2019-12-19-0001', 'usr55880009', NULL, NULL, NULL, '100521', 'UNPAID', 'Pembayaran Biaya Registrasi Akun', '2019-12-19', NULL, '0000-00-00', NULL, NULL),
('inv-2019-12-22-0002', 'usr55880015', 'BRI-0164767949649', NULL, 'Gilang Bayu Pamungkas', '100641', 'UNPAID', 'Pembayaran Biaya Registrasi Akun', '2019-12-22', '2019-12-29', '0000-00-00', NULL, NULL),
('inv-2019-12-23-0003', 'usr55880016', 'BRI-0164767949649', NULL, 'Gilang Bayu Pamungkas', '50559', 'UNPAID', 'Pembayaran Biaya Registrasi Akun', '2019-12-23', '2019-12-30', '0000-00-00', NULL, NULL),
('inv-2019-12-23-0004', 'usr55880017', 'BCA-8950200732', NULL, 'Gilang Bayu Pamungkas', '150236', 'UNPAID', 'Pembayaran Biaya Registrasi Akun', '2019-12-23', '2019-12-30', '0000-00-00', NULL, NULL),
('inv-2019-12-24-0005', 'usr55880018', NULL, NULL, NULL, '100713', 'UNPAID', 'Pembayaran Biaya Registrasi Akun', '2019-12-24', NULL, '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_keuangan`
--

CREATE TABLE `t_keuangan` (
  `idtransaksi` int(70) NOT NULL,
  `idorder` varchar(100) NOT NULL,
  `idretur` varchar(90) NOT NULL DEFAULT '0',
  `price` double NOT NULL,
  `iduser` varchar(100) NOT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_keuangan`
--

INSERT INTO `t_keuangan` (`idtransaksi`, `idorder`, `idretur`, `price`, `iduser`, `date_create`, `type`, `keterangan`) VALUES
(22, '58575800001', '0', 383966, 'usr55880001', '2019-01-08 10:05:00', 'debet online', 'Pembelian Product'),
(23, '58575800002', '0', 283872, 'usr55880002', '2019-02-20 11:19:00', 'debet online', 'Pembelian Product'),
(24, '58575800003', '0', 863551, 'usr55880002', '2019-05-17 11:40:00', 'debet online', 'Pembelian Product'),
(25, '58575800004', '0', 826127, 'usr55880002', '2019-09-04 13:13:00', 'debet online', 'Pembelian Product'),
(26, '58575800005', '0', 1329998, 'usr55880002', '2019-12-18 13:14:00', 'debet online', 'Pembelian Product'),
(27, '58575800006', '0', 3621244, 'usr55880002', '2019-12-16 13:16:00', 'debet online', 'Pembelian Product'),
(28, '58575800007', '0', 616000, 'usr55880001', '2019-12-18 13:17:42', 'debet offline', 'Pembelian Product'),
(29, '58575800008', '0', 1914000, 'usr55880001', '2019-12-18 13:18:03', 'debet offline', 'Pembelian Product'),
(30, '58575800009', '0', 638000, 'usr55880001', '2019-12-18 13:18:31', 'debet offline', 'Pembelian Product'),
(31, '58575800010', '0', 1292500, 'usr55880001', '2019-12-18 13:19:22', 'debet offline', 'Pembelian Product'),
(32, '58575800011', '0', 1276000, 'usr55880001', '2019-01-08 13:24:02', 'debet offline', 'Pembelian Product'),
(33, '58575800012', '0', 275000, 'usr55880001', '2019-02-19 13:24:36', 'debet offline', 'Pembelian Product'),
(34, '58575800013', '0', 605000, 'usr55880001', '2019-03-27 13:25:09', 'debet offline', 'Pembelian Product'),
(35, '58575800014', '0', 2035000, 'usr55880001', '2019-05-16 13:26:33', 'debet offline', 'Pembelian Product'),
(36, '58575800015', '0', 4719000, 'usr55880001', '2019-08-23 13:27:16', 'debet offline', 'Pembelian Product'),
(37, '58575800016', '0', 550000, 'usr55880001', '2019-06-20 13:33:44', 'debet offline', 'Pembelian Product'),
(38, '58575800017', '0', 328972, 'usr55880001', '2019-12-02 13:43:00', 'debet online', 'Pembelian Product'),
(39, '58575800018', '0', 1250796, 'usr55880002', '2019-12-18 14:19:00', 'debet online', 'Pembelian Product'),
(40, '58575800020', '0', 715000, 'usr55880001', '2019-12-18 16:21:40', 'debet offline', 'Pembelian Product'),
(41, '58575800019', '0', 414789, 'usr55880001', '2019-12-18 17:42:00', 'debet online', 'Pembelian Product'),
(42, '58575800023', '0', 275000, 'usr55880001', '2019-12-18 17:54:57', 'debet offline', 'Pembelian Product'),
(43, '58575800021', '0', 192514, 'usr55880002', '2019-12-18 20:05:00', 'debet online', 'Pembelian Product'),
(44, '58575800022', '0', 653471, 'usr55880001', '2019-12-19 08:32:00', 'debet online', 'Pembelian Product'),
(45, '58575800027', '0', 255256, 'usr55880001', '2019-12-19 08:55:00', 'debet online', 'Pembelian Product'),
(46, '58575800030', '0', 323447, 'usr55880006', '2019-12-19 09:27:00', 'debet online', 'Pembelian Product'),
(47, '58575800031', '0', 205765, 'usr55880008', '2019-12-19 09:32:00', 'debet online', 'Pembelian Product'),
(48, '58575800028', '0', 253962, 'usr55880003', '2019-12-19 09:49:00', 'debet online', 'Pembelian Product'),
(49, '58575800030', '', 70000, 'usr55880001', '2019-12-19 14:11:19', 'kredit online', 'Retur Product id retur '),
(50, '58575800030', '', 70000, 'usr55880001', '2019-12-19 14:12:49', 'kredit online', 'Retur Product id retur '),
(51, '58575800032', '0', 548917, 'usr55880001', '2019-12-19 15:17:00', 'debet online', 'Pembelian Product'),
(52, '58575800039', '0', 602879, 'usr55880006', '2019-12-19 15:52:00', 'debet online', 'Pembelian Product'),
(53, '58575800038', '0', 383987, 'usr55880001', '2019-12-23 14:55:00', 'debet online', 'Pembelian Product'),
(54, '58575800043', '0', 665542, 'usr55880002', '2019-12-24 13:01:00', 'debet online', 'Pembelian Product'),
(55, '58575800044', '0', 654280, 'usr55880001', '2020-01-05 08:58:28', 'debet offline', 'Pembelian Product');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_order`
--

CREATE TABLE `t_order` (
  `idorder` varchar(50) NOT NULL,
  `ipaddress` varchar(50) DEFAULT NULL,
  `orderMethod` varchar(20) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tax` int(11) NOT NULL DEFAULT '0',
  `idpartner` int(50) DEFAULT NULL,
  `partnerDiscount` varchar(50) DEFAULT '0',
  `discountPrice` int(11) NOT NULL DEFAULT '0',
  `orderSumary` int(111) DEFAULT '0',
  `cartTotal` int(11) NOT NULL DEFAULT '0',
  `status` text NOT NULL,
  `iduser` varchar(50) DEFAULT NULL,
  `idvoucher` int(11) DEFAULT NULL,
  `totalShiping` varchar(50) DEFAULT '0',
  `idbank` varchar(50) DEFAULT NULL,
  `verifyBy` text,
  `dateVerify` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_order`
--

INSERT INTO `t_order` (`idorder`, `ipaddress`, `orderMethod`, `orderDate`, `tax`, `idpartner`, `partnerDiscount`, `discountPrice`, `orderSumary`, `cartTotal`, `status`, `iduser`, `idvoucher`, `totalShiping`, `idbank`, `verifyBy`, `dateVerify`) VALUES
('58575800001', '::1', 'online', '2019-01-22 17:46:07', 34900, 1, '0', 0, 383966, 300000, 'selesai', 'usr55880001', 0, '49000', '7', 'usr55880001', '2019-12-18 10:09:09'),
('58575800002', '127.0.0.1', 'online', '2019-02-27 03:54:03', 25800, 3, '5000', 50000, 283872, 300000, 'process shiping', 'usr55880002', 1, '13000', '7', NULL, NULL),
('58575800003', '127.0.0.1', 'online', '2019-12-18 04:39:53', 78500, 3, '5000', 0, 863551, 700000, 'process shiping', 'usr55880002', 0, '90000', '5', NULL, NULL),
('58575800004', '127.0.0.1', 'online', '2019-09-18 06:13:00', 75100, 3, '5000', 0, 826127, 600000, 'process shiping', 'usr55880002', 0, '156000', '7', NULL, NULL),
('58575800005', '127.0.0.1', 'online', '2019-12-18 06:14:17', 120900, 3, '5000', 0, 1329998, 1160000, 'process shiping', 'usr55880002', 0, '54000', '5', NULL, NULL),
('58575800006', '127.0.0.1', 'online', '2019-12-18 06:15:37', 329200, 3, '5000', 0, 3621244, 3150000, 'process shiping', 'usr55880002', 0, '147000', '7', NULL, NULL),
('58575800007', NULL, 'Offline', '2019-12-18 06:17:42', 56000, 0, '0', 0, 616000, 560000, 'process shiping', 'usr55880001', NULL, '0', NULL, 'usr55880001', '2019-12-19 04:30:44'),
('58575800008', NULL, 'Offline', '2019-12-18 06:18:03', 174000, 0, '0', 0, 1914000, 1740000, 'process shiping', 'usr55880001', NULL, '0', NULL, 'usr55880001', '2019-12-19 08:39:11'),
('58575800009', NULL, 'Offline', '2019-12-18 06:18:31', 58000, 0, '0', 0, 638000, 580000, 'selesai', 'usr55880001', NULL, '0', NULL, NULL, NULL),
('58575800010', NULL, 'Offline', '2019-12-18 06:19:22', 116000, 0, '0', 0, 1292500, 1160000, 'process shiping', 'usr55880001', NULL, '15000', NULL, NULL, NULL),
('58575800011', NULL, 'Offline', '2019-01-08 06:24:02', 116000, 0, '0', 0, 1276000, 1160000, 'process shiping', 'usr55880001', NULL, '0', NULL, NULL, NULL),
('58575800012', NULL, 'Offline', '2019-02-19 06:24:36', 25000, 0, '0', 0, 275000, 250000, 'process shiping', 'usr55880001', NULL, '0', NULL, NULL, NULL),
('58575800013', NULL, 'Offline', '2019-03-27 06:25:09', 55000, 0, '0', 0, 605000, 550000, 'process shiping', 'usr55880001', NULL, '0', NULL, NULL, NULL),
('58575800014', NULL, 'Offline', '2019-05-16 06:26:33', 185000, 0, '0', 0, 2035000, 1850000, 'process shiping', 'usr55880001', NULL, '0', NULL, NULL, NULL),
('58575800015', NULL, 'Offline', '2019-08-23 06:27:16', 429000, 0, '0', 0, 4719000, 4290000, 'process shiping', 'usr55880001', NULL, '0', NULL, NULL, NULL),
('58575800016', NULL, 'Offline', '2019-06-20 06:33:44', 50000, 0, '0', 0, 550000, 500000, 'process shiping', 'usr55880001', NULL, '0', NULL, NULL, NULL),
('58575800017', '127.0.0.1', 'online', '2019-12-18 06:43:00', 29900, 1, '0', 0, 328972, 250000, 'process shiping', 'usr55880001', 0, '49000', '7', NULL, NULL),
('58575800018', '127.0.0.1', 'online', '2019-12-18 07:17:37', 113700, 3, '5000', 0, 1250796, 1100000, 'process shiping', 'usr55880002', 0, '42000', '7', 'usr55880001', '2020-01-05 08:54:15'),
('58575800019', '180.252.158.229', 'online', '2019-12-18 09:02:45', 37700, 1, '0', 0, 414789, 360000, 'process shiping', 'usr55880001', 0, '17000', '5', 'usr55880001', '2019-12-18 17:44:56'),
('58575800021', '64.233.173.83', 'online', '2019-12-18 09:40:52', 17500, 3, '5000', 0, 192514, 150000, 'closing paid', 'usr55880002', 0, '30000', '5', NULL, NULL),
('58575800022', '114.5.216.6', 'online', '2019-12-18 10:43:22', 59400, 1, '0', 0, 653471, 580000, 'selesai', 'usr55880001', 0, '14000', '5', NULL, NULL),
('58575800023', NULL, 'Offline', '2019-12-18 10:54:57', 25000, 0, '0', 0, 275000, 250000, 'process shiping', 'usr55880001', NULL, '0', NULL, NULL, NULL),
('58575800024', '180.244.215.153', 'online', '2019-12-18 14:11:07', 18400, 3, '5000', 150000, 202493, 300000, 'canceled', 'usr55880003', 2, '39000', '5', NULL, NULL),
('58575800025', '103.10.59.178', 'online', '2019-12-18 15:04:05', 170800, 3, '5000', 0, 1878879, 1700000, 'canceled', 'usr55880006', 0, '13000', '5', NULL, NULL),
('58575800026', '61.247.5.167', 'online', '2019-12-18 23:10:16', 0, 3, '5000', 0, 117066, 80000, 'canceled', 'usr55880002', 0, '42000', '5', NULL, NULL),
('58575800027', '36.65.193.184', 'online', '2019-12-19 01:53:48', 23200, 1, '0', 0, 255256, 180000, 'reject', 'usr55880001', 0, '52000', '5', NULL, NULL),
('58575800028', '180.242.173.140', 'online', '2019-12-19 02:10:10', 0, 3, '5000', 0, 253962, 219900, 'selesai', 'usr55880003', 0, '39000', '7', 'usr55880001', '2019-12-19 09:51:31'),
('58575800029', '103.10.59.178', NULL, '2019-12-19 02:22:33', 0, 3, '5000', 0, 75000, 80000, 'canceled', 'usr55880006', NULL, '0', NULL, NULL, NULL),
('58575800033', '103.10.59.178', NULL, '2019-12-19 04:26:22', 0, 3, '5000', 0, 575000, 580000, 'canceled', 'usr55880009', NULL, '0', NULL, NULL, NULL),
('58575800034', '103.10.59.178', NULL, '2019-12-19 04:28:48', 0, 4, '0', 0, 180000, 180000, 'add to cart', 'usr55880009', NULL, '0', NULL, NULL, NULL),
('58575800038', '182.253.190.115', 'online', '2019-12-19 08:46:55', 34900, 1, '0', 0, 383987, 300000, 'closing paid', 'usr55880001', 0, '49000', '7', NULL, NULL),
('58575800039', '103.10.59.178', 'online', '2019-12-19 08:51:31', 54800, 3, '5000', 0, 602879, 540000, 'process shiping', 'usr55880006', 0, '13000', '5', 'usr55880001', '2019-12-19 16:14:45'),
('58575800040', '114.124.215.191', 'online', '2019-12-19 08:54:33', 72890, 3, '5000', 0, 801872, 719900, 'canceled', 'usr55880006', 0, '14000', '5', NULL, NULL),
('58575800041', '114.125.81.80', 'online', '2019-12-19 12:24:10', 16000, 3, '5000', 0, 176033, 150000, 'place order', 'usr55880006', 0, '15000', '7', NULL, NULL),
('58575800042', '36.84.152.24', 'online', '2019-12-20 14:33:24', 6700, 3, '5000', 50000, 73725, 80000, 'canceled', 'usr55880003', 1, '42000', '5', NULL, NULL),
('58575800043', '::1', 'online', '2019-12-21 07:37:41', 60500, 3, '5000', 0, 665542, 580000, 'process shiping', 'usr55880002', 0, '30000', '7', 'usr55880001', '2019-12-24 14:13:34'),
('58575800044', NULL, 'Offline', '2020-01-05 01:58:28', 59480, 0, '0', 0, 654280, 604800, 'selesai', 'usr55880001', NULL, '0', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_order_detail`
--

CREATE TABLE `t_order_detail` (
  `idorderDetail` int(50) NOT NULL,
  `idorder` varchar(50) NOT NULL,
  `idproduct` varchar(50) NOT NULL,
  `idrating` int(11) NOT NULL,
  `idretur` varchar(90) DEFAULT NULL,
  `productName` text,
  `productQty` int(5) NOT NULL,
  `productPrice` varchar(20) NOT NULL,
  `subtotalPrice` varchar(20) NOT NULL,
  `productWeight` varchar(10) NOT NULL,
  `subtotalWeight` varchar(10) NOT NULL,
  `note` text,
  `submitRating` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_order_detail`
--

INSERT INTO `t_order_detail` (`idorderDetail`, `idorder`, `idproduct`, `idrating`, `idretur`, `productName`, `productQty`, `productPrice`, `subtotalPrice`, `productWeight`, `subtotalWeight`, `note`, `submitRating`) VALUES
(92, '58575800001', 'PRD5577007', 0, 'R-580001', 'Tas FSL Bernadette Speedy DLP-8502', 1, '300000', '300000', '1000', '1000', NULL, 'OK'),
(93, '58575800002', 'PRD5577005', 0, NULL, 'New JULIUS Leaf Style DLP-JA1090', 1, '300000', '300000', '200', '200', NULL, NULL),
(94, '58575800003', 'PRD5577001', 0, NULL, 'Jam Tangan Pria BRUNO CAVALLI DLQ-BC1888', 1, '150000', '150000', '1200', '1200', NULL, NULL),
(95, '58575800003', 'PRD5577005', 0, NULL, 'New JULIUS Leaf Style DLP-JA1090', 1, '300000', '300000', '200', '200', NULL, NULL),
(96, '58575800003', 'PRD5577002', 0, NULL, 'JULIUS Watch DLP-JA099', 1, '250000', '250000', '1200', '1200', NULL, NULL),
(97, '58575800004', 'PRD5577007', 0, NULL, 'Tas FSL Bernadette Speedy DLP-8502', 2, '300000', '600000', '1000', '2000', NULL, NULL),
(99, '58575800005', 'PRD5577003', 0, NULL, 'New TWIN BLADES 6 Jarum DLP-TB.1003', 2, '580000', '1160000', '200', '400', NULL, NULL),
(100, '58575800006', 'PRD5577008', 0, NULL, 'FSL Bernadette', 7, '450000', '3150000', '1000', '7000', NULL, 'OK'),
(101, '58575800007', 'PRD5577004', 0, NULL, 'New JULIUS Watch DLP-JA782', 2, '280000', '560000', '200', '400', NULL, 'OK'),
(102, '58575800008', 'PRD5577003', 0, NULL, 'New TWIN BLADES 6 Jarum DLP-TB.1003', 3, '580000', '1740000', '200', '600', NULL, NULL),
(103, '58575800009', 'PRD5577003', 0, NULL, 'New TWIN BLADES 6 Jarum DLP-TB.1003', 1, '580000', '580000', '200', '200', NULL, NULL),
(104, '58575800010', 'PRD5577003', 0, NULL, 'New TWIN BLADES 6 Jarum DLP-TB.1003', 2, '580000', '1160000', '200', '400', NULL, 'OK'),
(105, '58575800011', 'PRD5577003', 0, NULL, 'New TWIN BLADES 6 Jarum DLP-TB.1003', 2, '580000', '1160000', '200', '400', NULL, NULL),
(106, '58575800012', 'PRD5577002', 0, NULL, 'JULIUS Watch DLP-JA099', 1, '250000', '250000', '1200', '1200', NULL, NULL),
(107, '58575800013', 'PRD5577001', 0, NULL, 'Jam Tangan Pria BRUNO CAVALLI DLQ-BC1888', 2, '150000', '300000', '1200', '2400', NULL, NULL),
(108, '58575800013', 'PRD5577002', 0, NULL, 'JULIUS Watch DLP-JA099', 1, '250000', '250000', '1200', '1200', NULL, NULL),
(109, '58575800014', 'PRD5577004', 0, NULL, 'New JULIUS Watch DLP-JA782', 5, '280000', '1400000', '200', '1000', NULL, NULL),
(110, '58575800014', 'PRD5577001', 0, NULL, 'Jam Tangan Pria BRUNO CAVALLI DLQ-BC1888', 3, '150000', '450000', '1200', '3600', NULL, NULL),
(111, '58575800015', 'PRD5577003', 0, NULL, 'New TWIN BLADES 6 Jarum DLP-TB.1003', 3, '580000', '1740000', '200', '600', NULL, NULL),
(112, '58575800015', 'PRD5577006', 0, NULL, 'New JULIUS Leaf Style DLP-J', 3, '850000', '2550000', '200', '600', NULL, NULL),
(113, '58575800016', 'PRD5577002', 0, NULL, 'JULIUS Watch DLP-JA099', 2, '250000', '500000', '1200', '2400', NULL, NULL),
(114, '58575800017', 'PRD5577002', 0, NULL, 'JULIUS Watch DLP-JA099', 1, '250000', '250000', '1200', '1200', NULL, 'OK'),
(117, '58575800018', 'PRD5577002', 0, NULL, 'JULIUS Watch DLP-JA099', 1, '250000', '250000', '1200', '1200', NULL, NULL),
(118, '58575800018', 'PRD5577006', 0, NULL, 'New JULIUS Leaf Style DLP-J', 1, '850000', '850000', '200', '200', NULL, NULL),
(121, '58575800020', 'PRD5577001', 0, NULL, 'Jam Tangan Pria BRUNO CAVALLI DLQ-BC1888', 1, '150000', '150000', '1200', '1200', NULL, NULL),
(125, '58575800019', 'PRD5577004', 0, NULL, 'New JULIUS Watch DLP-JA782', 2, '180000', '360000', '200', '400', NULL, NULL),
(127, '58575800023', 'PRD5577002', 0, NULL, 'JULIUS Watch DLP-JA099', 1, '250000', '250000', '1200', '1200', NULL, NULL),
(129, '58575800021', 'PRD5577001', 0, NULL, 'Jam Tangan Pria BRUNO CAVALLI DLQ-BC1888', 1, '150000', '150000', '1200', '1200', NULL, NULL),
(130, '58575800024', 'PRD5577001', 0, NULL, 'Jam Tangan Pria BRUNO CAVALLI DLQ-BC1888', 2, '150000', '300000', '1200', '2400', NULL, NULL),
(135, '58575800022', 'PRD5577003', 0, NULL, 'New TWIN BLADES 6 Jarum DLP-TB.1003', 1, '580000', '580000', '200', '200', NULL, NULL),
(136, '58575800027', 'PRD5577004', 0, NULL, 'New JULIUS Watch DLP-JA782', 1, '180000', '180000', '200', '200', NULL, NULL),
(139, '58575800025', 'PRD5577006', 0, NULL, 'New JULIUS Leaf Style DLP-J', 2, '850000', '1700000', '200', '400', NULL, NULL),
(140, '58575800029', 'PRD5577011', 0, NULL, 'Kanaya', 1, '80000', '80000', '2300', '2300', NULL, NULL),
(144, '58575800028', 'PRD5577011', 0, 'R-580003', 'Kanaya', 1, '80000', '80000', '2300', '2300', NULL, 'OK'),
(145, '58575800028', 'PRD5577009', 0, NULL, 'Gorden Blackout', 1, '139900', '139900', '800', '800', NULL, 'OK'),
(148, '58575800033', 'PRD5577003', 0, NULL, 'New TWIN BLADES 6 Jarum DLP-TB.1003', 1, '580000', '580000', '200', '200', NULL, NULL),
(151, '58575800034', 'PRD5577004', 0, NULL, 'New JULIUS Watch DLP-JA782', 1, '180000', '180000', '200', '200', NULL, NULL),
(161, '58575800026', 'PRD5577011', 0, NULL, 'Kanaya', 1, '80000', '80000', '2300', '2300', NULL, NULL),
(169, '58575800039', 'PRD5577004', 0, 'R-580005', 'New JULIUS Watch DLP-JA782', 3, '180000', '540000', '200', '600', NULL, NULL),
(178, '58575800040', 'PRD5577009', 0, NULL, 'Gorden Blackout', 1, '139900', '139900', '800', '800', NULL, NULL),
(179, '58575800040', 'PRD5577003', 0, NULL, 'New TWIN BLADES 6 Jarum DLP-TB.1003', 1, '580000', '580000', '200', '200', NULL, NULL),
(188, '58575800042', 'PRD5577011', 0, NULL, 'Kanaya', 1, '80000', '80000', '2300', '2300', NULL, NULL),
(195, '58575800041', 'PRD5577001', 0, NULL, 'Jam Tangan Pria BRUNO CAVALLI DLQ-BC1888', 1, '150000', '150000', '1200', '1200', NULL, NULL),
(197, '58575800038', 'PRD5577007', 0, NULL, 'Tas FSL Bernadette Speedy DLP-8502', 1, '300000', '300000', '1000', '1000', NULL, NULL),
(198, '58575800043', 'PRD5577003', 0, NULL, 'New TWIN BLADES 6 Jarum DLP-TB.1003', 1, '580000', '580000', '200', '200', NULL, NULL),
(199, '58575800044', 'PRD5577012', 0, NULL, 'Gorden Blackout Prada Motif Matahari Strip Baru Murah', 2, '139900', '279800', '800', '1600', NULL, NULL),
(200, '58575800044', 'PRD5577007', 0, NULL, 'Tas FSL Bernadette Speedy DLP-8502', 1, '325000', '325000', '1000', '1000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_order_shiping`
--

CREATE TABLE `t_order_shiping` (
  `idordershiping` int(50) NOT NULL,
  `idorder` varchar(50) DEFAULT NULL,
  `iduser` varchar(50) DEFAULT NULL,
  `firstName` varchar(70) DEFAULT NULL,
  `lastName` varchar(70) DEFAULT NULL,
  `codeProvinsi` varchar(70) DEFAULT NULL,
  `codeKabupaten` varchar(20) DEFAULT NULL,
  `codeKecamatan` int(11) NOT NULL DEFAULT '0',
  `kecamatan` varchar(20) DEFAULT NULL,
  `namaProvinsi` text,
  `namaKabupaten` text,
  `desa` varchar(70) DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `kodePos` int(10) DEFAULT NULL,
  `custEmail` varchar(40) DEFAULT NULL,
  `fullAddress` text,
  `shipingCarge` varchar(25) DEFAULT '0',
  `totalPrice` varchar(25) DEFAULT '0',
  `custHp` varchar(20) DEFAULT NULL,
  `idbank` varchar(10) DEFAULT 'NULL',
  `shipingName` varchar(50) DEFAULT ' ',
  `totalWeight` varchar(5) DEFAULT '0',
  `receiptNumber` varchar(70) DEFAULT NULL,
  `dropshipperName` text,
  `dropshipperAddress` text,
  `dropshipperPhone` text,
  `dateCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_order_shiping`
--

INSERT INTO `t_order_shiping` (`idordershiping`, `idorder`, `iduser`, `firstName`, `lastName`, `codeProvinsi`, `codeKabupaten`, `codeKecamatan`, `kecamatan`, `namaProvinsi`, `namaKabupaten`, `desa`, `rt`, `rw`, `kodePos`, `custEmail`, `fullAddress`, `shipingCarge`, `totalPrice`, `custHp`, `idbank`, `shipingName`, `totalWeight`, `receiptNumber`, `dropshipperName`, `dropshipperAddress`, `dropshipperPhone`, `dateCreate`) VALUES
(46, '58575800001', 'usr55880001', 'ng bayu', 'a', '12', '395', 5447, ' Belitang ', ' Kalimantan Barat ', ' Sekadau ', 'a', '2', '2', 33333, 'ng.bayu@yahoo.com', 'a', '49000', '349000', '0818045156485', 'NULL', 'POS Indonesia (POS) - Paket Kilat Khusus', '1000', 'SOC54875487', '', '', '', '2019-12-17 17:46:08'),
(47, '58575800002', 'usr55880002', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', 'kalideres', '13000', '313000', '0818045156485', 'NULL', 'Jalur Nugraha Ekakurir (JNE) - OKE', '200', 'SOC54875487', '', '', '', '2019-12-18 03:54:03'),
(48, '58575800003', 'usr55880002', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', 'kalideres', '90000', '790000', '0818045156485', 'NULL', 'POS Indonesia (POS) - Express Next Day Barang', '2600', 'SOC54875487', '', '', '', '2019-12-18 04:39:54'),
(49, '58575800004', 'usr55880002', 'William', 'Joe', '30', '53', 720, ' Bungi ', ' Sulawesi Tenggara ', ' Bau-Bau ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', 'kalideres', '156000', '756000', '0818045156485', 'NULL', 'POS Indonesia (POS) - Paket Kilat Khusus', '2000', 'SOC54875487', '', '', '', '2019-12-18 06:13:00'),
(50, '58575800005', 'usr55880002', 'William', 'Joe', '33', '314', 4479, ' Semidang Aji ', ' Sumatera Selatan ', ' Ogan Komering Ulu ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', 'kalideres', '54000', '1214000', '0818045156485', 'NULL', 'Citra Van Titipan Kilat (TIKI) - REG', '400', 'SOC54875487', '', '', '', '2019-12-18 06:14:18'),
(51, '58575800006', 'usr55880002', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', 'kalideres', '147000', '3297000', '0818045156485', 'NULL', 'J&T Express - EZ', '7000', 'SOC54875487', '', '', '', '2019-12-18 06:15:37'),
(52, '58575800007', 'usr55880001', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', NULL, '0', '560000', '0818045156485', 'NULL', '0', '0', 'm', NULL, NULL, NULL, '2019-12-18 06:17:42'),
(53, '58575800008', 'usr55880001', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', NULL, '0', '1740000', '0818045156485', 'NULL', '0', '0', '99797797', NULL, NULL, NULL, '2019-12-18 06:18:03'),
(54, '58575800009', 'usr55880001', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', NULL, '0', '580000', '0818045156485', 'NULL', '0', '0', NULL, NULL, NULL, NULL, '2019-12-18 06:18:31'),
(55, '58575800010', 'usr55880001', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', NULL, '15000', '1175000', '0818045156485', 'NULL', 'POS Indonesia (POS) - Paket Kilat Khusus', '0', 'SOC54875487', NULL, NULL, NULL, '2019-12-18 06:19:22'),
(56, '58575800011', 'usr55880001', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', NULL, '0', '1160000', '0818045156485', 'NULL', '0', '0', NULL, NULL, NULL, NULL, '2019-01-08 06:24:02'),
(57, '58575800012', 'usr55880001', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', NULL, '0', '250000', '0818045156485', 'NULL', '0', '0', NULL, NULL, NULL, NULL, '2019-02-19 06:24:36'),
(58, '58575800013', 'usr55880001', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', NULL, '0', '550000', '0818045156485', 'NULL', '0', '0', NULL, NULL, NULL, NULL, '2019-03-27 06:25:09'),
(59, '58575800014', 'usr55880001', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', NULL, '0', '1850000', '0818045156485', 'NULL', '0', '0', NULL, NULL, NULL, NULL, '2019-05-16 06:26:33'),
(60, '58575800015', 'usr55880001', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', NULL, '0', '4290000', '0818045156485', 'NULL', '0', '0', NULL, NULL, NULL, NULL, '2019-08-23 06:27:16'),
(61, '58575800016', 'usr55880001', 'William', 'Joe', '6', '151', 2089, 'null', 'null', 'null', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', NULL, '0', '500000', '0818045156485', 'NULL', '0', '0', NULL, NULL, NULL, NULL, '2019-06-20 06:33:44'),
(62, '58575800017', 'usr55880001', 'ng bayu', 'a', '12', '395', 5447, ' Belitang ', ' Kalimantan Barat ', ' Sekadau ', 'a', '2', '2', 33333, 'ng.bayu@yahoo.com', 'a', '49000', '299000', '0818045156485', 'NULL', 'POS Indonesia (POS) - Paket Kilat Khusus', '1200', 'SOC54875487', '', '', '', '2019-12-18 06:43:00'),
(63, '58575800018', 'usr55880002', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', 'kalideres', '42000', '1142000', '0818045156485', 'NULL', 'J&T Express - EZ', '1400', '123', '', '', '', '2019-12-18 07:17:38'),
(64, '58575800019', 'usr55880001', 'Rangga', 'Wira Yudha', '3', '457', 6311, ' Ciputat Timur ', ' Banten ', ' Tangerang Selatan ', 'Pondok Ranji', '05', '015', 15412, 'ranggawirayudha46@gmail.com', 'Jl. Menjangan 3, Pondok Ranji, Ciputat Timur', '17000', '377000', '085719854613', 'NULL', 'Jalur Nugraha Ekakurir (JNE) - REG', '400', 'JT1234567', '', '', '', '2019-12-18 09:02:45'),
(65, '58575800021', 'usr55880002', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', '                            kalideres                        ', '30000', '180000', '0818045156485', 'NULL', 'POS Indonesia (POS) - Express Next Day Barang', '1200', NULL, '', '', '', '2019-12-18 09:40:53'),
(66, '58575800022', 'usr55880001', 'andri', 'ndri', '9', '107', 1471, ' Cimahi Utara ', ' Jawa Barat ', ' Cimahi ', 'cipageran', '01', '02', 11522, 'andri.umadera@gmail.com', 'jalan kolonel masturi', '14000', '594000', '085780668952', 'NULL', 'Jalur Nugraha Ekakurir (JNE) - OKE', '200', NULL, '', '', '', '2019-12-18 10:43:23'),
(67, '58575800023', 'usr55880001', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', NULL, '0', '250000', '0818045156485', 'NULL', '0', '0', NULL, NULL, NULL, NULL, '2019-12-18 10:54:57'),
(68, '58575800024', 'usr55880003', 'Dio', 'Hidayat', '6', '154', 2120, ' Matraman ', ' DKI Jakarta ', ' Jakarta Timur ', 'Kayu manis', '009', '005', 13130, 'mukhlishidayat30@gmail.com', 'Jl. Maju Mundur 8. No. 18', '39000', '339000', '085777888228', 'NULL', 'Jalur Nugraha Ekakurir (JNE) - OKE', '2400', NULL, 'Heraku', 'Jln. Drop Ship No. 18', '085777888228', '2019-12-18 14:11:07'),
(69, '58575800025', 'usr55880006', 'Afrizal', 'Bakrie', '6', '155', 2125, ' Koja ', ' DKI Jakarta ', ' Jakarta Utara ', 'Bendungan melayu', '13', '06', 14260, 'bakrie508@gmail.com', '                                                        Bendungan melayu                                                ', '13000', '1713000', '0813156161', 'NULL', 'Jalur Nugraha Ekakurir (JNE) - OKE', '400', NULL, '', '', '', '2019-12-18 15:04:05'),
(70, '58575800026', 'usr55880002', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', '                                                        kalideres                                                ', '42000', '122000', '0818045156485', 'NULL', 'J&T Express - EZ', '2300', NULL, '', '', '', '2019-12-18 23:10:16'),
(71, '58575800027', 'usr55880001', 'ng bayu', 'a', '12', '395', 5447, ' Belitang ', ' Kalimantan Barat ', ' Sekadau ', 'a', '2', '2', 33333, 'ng.bayu@yahoo.com', 'a', '52000', '232000', '0818045156485', 'NULL', 'Jalur Nugraha Ekakurir (JNE) - OKE', '200', NULL, '', '', '', '2019-12-19 01:53:48'),
(72, '58575800028', 'usr55880003', 'Dio', 'Ardiansyah', '6', '154', 2120, ' Matraman ', ' DKI Jakarta ', ' Jakarta Timur ', 'Kayu manis', '005', '08', 13130, 'mukhlishidayat30@gmail.com', '                            Jl. Maju mundur 10 No.20                         ', '39000', '258900', '085777888228', 'NULL', 'Jalur Nugraha Ekakurir (JNE) - OKE', '3100', 'JNCL-1276635871', 'Heraku', 'Jl dropship', '085777888228', '2019-12-19 02:10:11'),
(73, '58575800029', '103.10.59.178', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '80000', NULL, 'NULL', ' ', '2300', NULL, NULL, NULL, NULL, '2019-12-19 02:22:33'),
(77, '58575800033', '103.10.59.178', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '580000', NULL, 'NULL', ' ', '200', NULL, NULL, NULL, NULL, '2019-12-19 04:26:22'),
(78, '58575800034', '103.10.59.178', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '180000', NULL, 'NULL', ' ', '200', NULL, NULL, NULL, NULL, '2019-12-19 04:28:48'),
(82, '58575800038', 'usr55880001', 'ng bayu', 'a', '12', '395', 5447, ' Belitang ', ' Kalimantan Barat ', ' Sekadau ', 'a', '2', '2', 33333, 'ng.bayu@yahoo.com', 'a', '49000', '349000', '0818045156485', 'NULL', 'POS Indonesia (POS) - Paket Kilat Khusus', '1000', NULL, '', '', '', '2019-12-19 08:46:55'),
(83, '58575800039', 'usr55880006', 'Afrizal', 'bakrie', '6', '155', 2125, ' Koja ', ' DKI Jakarta ', ' Jakarta Utara ', 'bed', '12', '12', 14260, 'bakrie508@gmail.com', 'jalan bendungan ', '13000', '553000', '0813156161', 'NULL', 'Jalur Nugraha Ekakurir (JNE) - OKE', '600', '12345678', '', '', '', '2019-12-19 08:51:31'),
(84, '58575800040', 'usr55880006', 'Afrizal', 'bakrie', '6', '155', 2125, ' Koja ', ' DKI Jakarta ', ' Jakarta Utara ', 'Bendungan melayu', '12', '12', 14260, 'bakrie508@gmail.com', '                            jalan bendungan                         ', '14000', '733900', '0813156161', 'NULL', 'Citra Van Titipan Kilat (TIKI) - ECO', '1000', NULL, '', '', '', '2019-12-19 08:54:33'),
(85, '58575800041', 'usr55880006', 'Afrizal', 'bakrie', '6', '155', 2125, ' Koja ', ' DKI Jakarta ', ' Jakarta Utara ', 'Bendungan melayu', '12', '12', 14260, 'bakrie508@gmail.com', 'jalan bendungan ', '15000', '165000', '0813156161', 'NULL', 'POS Indonesia (POS) - Paket Kilat Khusus', '1200', NULL, '', '', '', '2019-12-19 12:24:10'),
(86, '58575800042', 'usr55880003', 'Andri', 'And', '6', '154', 2117, ' Jatinegara ', ' DKI Jakarta ', ' Jakarta Timur ', 'Desa kita', '009', '005', 13130, 'mukhlishidayat30@gmail.com', 'Jl maju mundur ', '42000', '122000', '085777888228', 'NULL', 'J&T Express - EZ', '2300', NULL, '', '', '', '2019-12-20 14:33:24'),
(87, '58575800043', 'usr55880002', 'William', 'Joe', '6', '151', 2089, ' Kalideres ', ' DKI Jakarta ', ' Jakarta Barat ', 'Desa', '2', '2', 33333, 'gilangbayu567@ymail.com', '                            kalideres                        ', '30000', '610000', '0818045156485', 'NULL', 'POS Indonesia (POS) - Express Next Day Barang', '200', '12931231283918', '', '', '', '2019-12-21 07:37:41'),
(88, '58575800044', 'usr55880001', 'Umum', '', '0', '0', 0, '0', '0', '0', '', '', '', 0, '', NULL, '0', '604800', '', 'NULL', '0', '0', NULL, NULL, NULL, NULL, '2020-01-05 01:58:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_page_gallery`
--

CREATE TABLE `t_page_gallery` (
  `idpagegallery` int(11) NOT NULL,
  `title` text NOT NULL,
  `icon` text NOT NULL,
  `description` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_page_gallery`
--

INSERT INTO `t_page_gallery` (`idpagegallery`, `title`, `icon`, `description`, `link`) VALUES
(2, 'Gallery update', 'asset/img/uploads/pages/gallery-gallery.png', 'gallery update<br>', 'https/facebook.com'),
(3, 'judul g 2 3 3', 'asset/img/uploads/pages/gallery-judul-g-2.png', 'g 2 3 3<br>', ''),
(4, 'judul g 2 3 3', 'asset/img/uploads/pages/gallery-judul-g-2.png', 'g 2 3 3<br>', ''),
(5, 'judul g 2 3 3', 'asset/img/uploads/pages/gallery-judul-g-2.png', 'g 2 3 3<br>', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_page_privacy_policy`
--

CREATE TABLE `t_page_privacy_policy` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `date_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_page_privacy_policy`
--

INSERT INTO `t_page_privacy_policy` (`id`, `description`, `date_update`) VALUES
(1, '<div><div><div><div><p><b>Privasi Anda penting bagi Apple,</b> sehingga kami telah mengembangkan Kebijakan \r\nPrivasi yang berisi cara pengumpulan, penggunaan, pengungkapan, \r\npengalihan, dan penyimpanan informasi pribadi Anda.<br></p><p>Selain\r\n Kebijakan Privasi ini, kami menyediakan data dan informasi privasi yang\r\n disertakan dengan produk kami yang terhubung dengan Ikon Data &amp; \r\nPrivasi kami untuk fitur-fitur tertentu yang meminta informasi pribadi \r\nAnda. <br><img alt=\"\" src=\"https://www.apple.com/legal/images/icon_dataprivacy.png\"></p><p>Anda\r\n dapat meninjau informasi ini sebelum mengaktifkan fitur ini, di \r\nPengaturan yang berkaitan dengan fitur tersebut dan/atau secara online \r\ndi <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.apple.com/legal/privacy/\"></a><a target=\"_blank\" rel=\"nofollow\" href=\"http://apple.com/legal/privacy\">apple.com/legal/privacy</a>. Luangkan waktu untuk memahami praktik privasi kami dan <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.apple.com/legal/privacy/contact/\">hubungi kami</a> jika Anda memiliki pertanyaan.<br></p>\r\n                        <p></p>\r\n                     \r\n                  </div>\r\n               </div>\r\n         </div></div>\r\n         \r\n         <div>\r\n         <div></div>\r\n         </div>\r\n         \r\n          \r\n         <div>\r\n         \r\n         \r\n         \r\n         <div>\r\n         <div><h2>Pengumpulan dan Penggunaan Informasi Pribadi</h2><p>Informasi pribadi adalah data yang dapat digunakan untuk mengenali atau menghubungi seseorang.</p><p>Anda mungkin diminta untuk memberikan informasi pribadi kapan saja Anda berhubungan dengan <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.apple.com/legal/privacy/id/affiliated-company/\">Apple atau perusahaan afiliasi Apple</a>.\r\n Apple bersama afiliasinya dapat saling berbagi informasi pribadi \r\ntersebut dan menggunakannya sesuai Kebijakan Privasi ini. Mereka juga \r\ndapat menggabungkannya dengan informasi lain untuk menyediakan dan \r\nmenyempurnakan produk, layanan, konten, serta iklan kami. Anda tidak \r\nperlu memberikan informasi pribadi yang kami minta, tetapi jika \r\ndemikian, dalam banyak kasus kami tidak dapat menyediakan produk atau \r\nlayanan maupun menjawab pertanyaan Anda.</p><p>Berikut adalah contoh jenis informasi pribadi yang dapat dikumpulkan Apple beserta cara menggunakannya:</p><h3>Informasi pribadi yang kami kumpulkan</h3><ul><li>Ketika\r\n Anda membuat ID Apple, mengajukan permohonan untuk kredit komersial, \r\nmembeli produk, mengunduh pembaruan perangkat lunak, mendaftar kelas di \r\nApple Retail Store, terhubung ke layanan kami, menghubungi kami termasuk\r\n melalui media sosial, atau berpartisipasi dalam survei online, kami \r\ndapat mengumpulkan berbagai informasi, termasuk nama Anda, alamat surat,\r\n nomor telepon, alamat email, preferensi kontak, pengenal perangkat, \r\nalamat IP, informasi lokasi, informasi kartu kredit, dan informasi \r\nprofil tempat kontak tersebut berada melalui media sosial.</li><li>Bila \r\nAnda berbagi konten dengan keluarga dan teman menggunakan produk Apple, \r\nmengirim kupon hadiah dan produk, atau mengundang orang lain untuk \r\nberpartisipasi dalam layanan maupun forum Apple, maka Apple dapat \r\nmengumpulkan informasi yang Anda berikan tentang mereka seperti nama, \r\nalamat surat, alamat email, dan nomor telepon. Apple akan menggunakan \r\ninformasi tersebut untuk memenuhi permintaan Anda, menyediakan produk \r\nmaupun layanan yang relevan, atau untuk mencegah penipuan.</li><li>Di \r\nwilayah hukum tertentu, kami mungkin akan meminta tanda pengenal resmi \r\ndari pemerintah dalam kondisi terbatas, termasuk saat mengonfigurasi \r\nakun nirkabel dan mengaktifkan perangkat, dengan tujuan memperpanjang \r\nkredit komersial, mengelola reservasi, atau sebagaimana diharuskan \r\nmenurut undang-undang.</li></ul><h3>Bagaimana kami menggunakan informasi pribadi Anda</h3>Kami\r\n dapat memproses informasi pribadi Anda untuk tujuan yang dijelaskan \r\ndalam Kebijakan Privasi ini dengan persetujuan Anda, untuk mematuhi \r\nkewajiban hukum yang harus ditaati oleh Apple untuk melaksanakan kontrak\r\n yang Anda ikuti, untuk menjaga kepentingan vital Anda, atau ketika kami\r\n telah menilainya diperlukan untuk tujuan kepentingan sah yang \r\ndiupayakan oleh Apple atau pihak ketiga yang mungkin memerlukan \r\npengungkapan informasi oleh Apple. Jika Anda mempunyai pertanyaan \r\ntentang dasar hukum ini, Anda dapat <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.apple.com/legal/privacy/contact/\">menghubungi</a> Petugas Perlindungan Data Eropa.<p></p><ul><li>Informasi\r\n pribadi yang kami kumpulkan memungkinkan kami terus mengabari Anda \r\ntentang pemberitahuan produk terkini, pembaruan perangkat lunak, dan \r\nacara mendatang Apple. Jika Anda tidak ingin berada dalam milis kami, \r\nAnda dapat memilih untuk berhenti kapan saja dengan <a target=\"_blank\" rel=\"nofollow\" href=\"https://appleid.apple.com/choose-country-region\">memperbarui preferensi Anda</a>.</li><li>Kami\r\n juga menggunakan informasi pribadi untuk membantu membuat, \r\nmengembangkan, mengoperasikan, memberikan, dan meningkatkan produk, \r\nlayanan, konten, dan iklan kami, serta untuk mencegah kehilangan dan \r\npenipuan. Kami juga dapat menggunakan informasi pribadi untuk tujuan \r\nkeamanan akun dan jaringan, termasuk untuk melindungi layanan kami demi \r\nmanfaat bagi semua pengguna kami, serta melakukan prapenyaringan atau \r\npemindaian konten yang diunggah untuk potensi konten ilegal, termasuk \r\nmateri eksploitasi seksual anak. Kami menggunakan informasi Anda untuk \r\ntujuan anti-penipuan yang muncul pada perilaku transaksi online dengan \r\nkami. Kami membatasi penggunaan data untuk tujuan anti-penipuan pada hal\r\n yang benar-benar diperlukan dan dalam kepentingan sah kami yang telah \r\ndinilai untuk melindungi pelanggan kami dan layanan kami. Untuk \r\ntransaksi online tertentu, kami juga dapat memvalidasi informasi yang \r\nAnda berikan dengan sumber yang dapat diakses oleh umum.</li><li>Kami \r\ndapat menggunakan informasi pribadi Anda, termasuk tanggal lahir, untuk \r\nmemverifikasi identitas, membantu mengidentifikasi pengguna, atau \r\nmenentukan layanan yang tepat. Misalnya, kami dapat menggunakan tanggal \r\nlahir untuk menentukan usia pemegang akun ID Apple.</li><li>Dari waktu \r\nke waktu, kami dapat menggunakan informasi pribadi untuk mengirimi Anda \r\npemberitahuan penting, seperti komunikasi tentang pembelian serta \r\nperubahan persyaratan, ketentuan, dan kebijakan kami. Karena informasi \r\nini penting bagi interaksi Anda dengan Apple, Anda tidak dapat memilih \r\nuntuk berhenti menerima komunikasi ini.</li><li>Kami juga dapat \r\nmenggunakan informasi pribadi untuk tujuan internal seperti audit, \r\nanalisis data, dan penelitian guna menyempurnakan produk, layanan, dan \r\nkomunikasi pelanggan Apple.</li><li>Jika Anda mengikuti undian \r\nberhadiah, kontes, atau promosi serupa, kami dapat menggunakan informasi\r\n yang Anda sediakan untuk mengelola program tersebut.</li><li>Jika Anda \r\nmelamar suatu posisi di Apple atau kami menerima informasi Anda \r\nsehubungan dengan sebuah peran potensial di Apple, kami dapat \r\nmenggunakan informasi tersebut untuk mengevaluasi pencalonan dan \r\nmenghubungi Anda. Jika Anda merupakan seorang kandidat, Anda akan \r\nmenerima informasi lebih lanjut tentang cara Apple menangani informasi \r\npribadi kandidat pada saat melamar.</li></ul></div></div></div><br>', '2019-11-18 15:48:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_page_service`
--

CREATE TABLE `t_page_service` (
  `idpageservice` int(11) NOT NULL,
  `icon` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_page_service`
--

INSERT INTO `t_page_service` (`idpageservice`, `icon`, `title`, `description`) VALUES
(21, 'asset/img/uploads/pages/service-loyalty-discounts.png', 'Loyalty Discounts', 'Use your Upstate Laundromat personal loyalty card to earn special discounts over time. Make sure to register your card by clicking here or by downloading the Fascard Mobile app. \r\n'),
(22, 'asset/img/uploads/pages/service-fluff---fold-service-available.png', 'Fluff & fold service available', 'Don’t waste valuable time doing your own laundry. Let us handle it for you! Offered 7 days a week, same day or next day available. We will notify you when your laundry is done via text.Don’t waste valuable time doing your own laundry. Let us handle it for you! Offered 7 days a week, same day or next day available. We will notify you when your laundry is done via text.'),
(23, 'asset/img/uploads/pages/service-coin---coinless-machines.png', 'Coin & coinless machines', 'Our environmentally friendly Huebsch® machines use less water and dry faster so you are done fast! You can pay with coins, the Upstate Laundromat loyalty card, Visa, or MasterCard. '),
(24, 'asset/img/uploads/pages/service-coin---coinless-machines.png', 'Coin & coinless machines', 'Our environmentally friendly Huebsch® machines use less water and dry faster so you are done fast! You can pay with coins, the Upstate Laundromat loyalty card, Visa, or MasterCard. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_page_term_condition`
--

CREATE TABLE `t_page_term_condition` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `date_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_page_term_condition`
--

INSERT INTO `t_page_term_condition` (`id`, `description`, `date_update`) VALUES
(1, '<p></p><p>Selamat datang di website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>, situs <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;dikelola\r\n oleh PT KapanLagi Dot Com Networks (selanjutnya disebut \'kami\'). Terms \r\nand Condition of Use berikut adalah ketentuan dalam pengunjungan situs, \r\nkonten, layanan dan fitur yang ada di website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>.</p>\r\n\r\n<p>Harapan kami Anda membaca Terms and Condition of Use ini dengan seksama. Dengan mengakses dan menggunakan website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>,\r\n berarti Anda telah memahami dan menyetujui untuk terikat dan tunduk \r\ndengan semua peraturan yang berlaku di situs ini. Jika Anda tidak setuju\r\n untuk terikat dengan semua peraturan yang berlaku, silakan untuk tidak \r\nmengakses situs ini.</p>\r\n\r\n<div>\r\n<h5>PERUBAHAN Terms and Condition of Use</h5>\r\n<p>Kami setiap saat dapat mengubah, mengganti, menambah atau mengurangi \r\nTerms and Condition of Use ini. Anda terikat oleh setiap perubahan \r\ntersebut dan oleh sebab itu secara berkala harus melihat halaman ini \r\nuntuk memeriksa Terms and Condition of Use yang berlaku dan mengikat \r\nAnda.</p>\r\n</div>\r\n\r\n<div>\r\n<h5>PENAMBAHAN Terms and Condition of Use</h5>\r\n<p>Beberapa area atau layanan dari website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>,\r\n seperti halaman di mana Anda dapat mengunggah atau mengunduh dokumen \r\natau berkas, dapat memiliki panduan dan peraturan pengunjungan yang akan\r\n menambah Terms and Condition of Use ini. Dengan menggunakan \r\nlayanan-layanan tersebut, Anda setuju untuk terikat dengan petunjuk dan \r\nperaturan pengunjungan yang berlaku tersebut.</p>\r\n</div>\r\n\r\n<div>\r\n<h5>PERUBAHAN website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a></h5>\r\n<p>Kami dapat tidak meneruskan atau mengubah layanan atau fitur pada website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;sewaktu-waktu dan tanpa pemberitahuan terlebih dahulu.</p>\r\n</div>\r\n\r\n<div>\r\n<h5>Pengunjung yang terdaftar</h5>\r\n<p>Layanan pada situs ini, hanya disediakan untuk pengunjung yang telah \r\nmendaftar dan pengunjung harus mendaftar dengan memberikan data-data \r\nyang benar di lengkapi dengan user ID untuk menggunakannya. Sebagai \r\npengunjung yang terdaftar, Anda diwajibkan untuk mengikuti segala \r\nperaturan pengunjungan layanan tersebut.</p>\r\n</div>\r\n\r\n<div>\r\n<h5>KEWAJIBAN PENGUNJUNG</h5>\r\n<p>Pengunjung website FIMELA harus berumur <strong>17 tahun ke atas</strong>&nbsp;dan harus tunduk pada hukum dan peraturan perundangan dalam wilayah Republik Indonesia.</p>\r\n<p>Anda dilarang untuk memuat atau meneruskan melalui website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;materi atau hal lainnya yang:</p>\r\n<ol>\r\n<li>Memuat atau meneruskan melalui website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;materi\r\n atau hal lainnya yang menyinggung, memicu pertentangan dan atau \r\npermusuhan antar Suku, Agama, Ras, dan Antar Golongan (SARA).</li>\r\n<li>Melanggar hukum, mengancam, menghina, melecehkan, memfitnah, \r\nmencemarkan, memperdaya, curang, atau menimbulkan kebencian pada orang \r\natau golongan tertentu.</li>\r\n<li>Melanggar atau menyalahi hak orang lain, termasuk tanpa kecuali, hak\r\n paten, merek dagang, rahasia dagang, hak cipta, publisitas atau hak \r\nmilik lainnya.</li>\r\n<li>Menganiaya, melecehkan, merendahkan atau mengintimidasi individu \r\natau grup individu berdasarkan agama, jenis kelamin, orientasi seksual, \r\nras, etnis, usia atau cacat fisik.</li>\r\n<li>Melanggar norma kesusilaan, cabul, pornografi.</li>\r\n<li>Menganjurkan atau menyarankan perbuatan yang melanggar hukum.</li>\r\n<li>Memuat kata-kata atau gambar-gambar yang kasar, kotor, jorok, dan sumpah serapah.</li>\r\n<li>Menyebarkan ideologi atau ajaran tertentu yang pada prinsipnya dilarang oleh hukum yang berlaku di wilayah Republik Indonesia.</li>\r\n<li>Menyebarkan berkas atau program yang mengandung virus atau kode \r\nkomputer lainnya yang merusak, mengganggu, dan/atau membatasi fungsi \r\ndari perangkat lunak atau perangkat keras komputer dan/atau peralatan \r\nkomunikasi, dan/atau memperbolehkan penggunaan komputer dan/atau \r\njaringan komputer yang tidak sah.</li>\r\n</ol>\r\n<p>Dalam penggunaan website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>. Anda setuju untuk:</p>\r\n<ol>\r\n<li>Memberikan informasi yang akurat, baru dan lengkap tentang diri Anda saat mengisi formulir pendaftaran pada website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>.</li>\r\n<li>Menjaga keamanan sandi (<em>password</em>) dan identifikasi Anda.</li>\r\n<li>Menjaga dan secara berkala memperbarui informasi tentang diri Anda dan informasi lainnya secara akurat, baru dan lengkap.</li>\r\n<li>Menerima seluruh risiko dari akses ilegal atas informasi dan data registrasi.</li>\r\n<li>Bertanggung jawab atas perlindungan dan pencadangan data dan/atau peralatan yang digunakan.</li>\r\n<li>Anda tidak diperbolehkan menggunakan website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;dalam kondisi atau cara apapun yang dapat merusak, melumpuhkan, membebani dan/atau mengganggu server atau jaringan website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>.\r\n Anda juga tidak diperbolehkan untuk mengakses layanan, akun pengguna, \r\nsistem komputer atau jaringan secara tidak sah, dengan cara perentasan (<em>hacking</em>), <em>password mining</em>, dan/atau cara lainnya.</li>\r\n<li>Kami akan bekerja sama secara penuh dengan setiap pejabat penegak \r\nhukum atau perintah pengadilan yang meminta atau mengarahkan kami untuk \r\nmengungkapkan identitas dari siapapun yang memuati materi atau informasi\r\n seperti tersebut di atas.</li>\r\n</ol>\r\n</div>\r\n\r\n<div>\r\n<h5>Penggunaan yang diijinkan</h5>\r\n<p>Anda memiliki hak yang terbatas, dapat dicabut, tak dapat ditransfer,\r\n dan tidak eksklusif untuk menggunakan website ini semata-mata hanya \r\nuntuk keperluan informasional atau mengevaluasi perusahaan kami beserta \r\nproduk dan layanannya.</p>\r\n<p>Anda tidak diizinkan menggunakan isi website kami untuk keperluan, \r\nmaksud atau tujuan lain tanpa pernyataan tertulis terlebih dahulu dari \r\nkami. Sebagai contoh, tapi tidak terbatas:</p>\r\n<ol>\r\n<li>Anda tidak diperbolehkan atau memberi kuasa kepada pihak lain untuk \r\nmelakukan frame terhadap isi website kami atau menampilkan isi website \r\nkami bersamaan dengan website lain tanpa izin tertulis dari kami.</li>\r\n<li>Melakukan <em>co-brand</em>&nbsp;terhadap website kami atau bagian mana pun dari website kami tanpa izin tertulis dari kami terlebih dahulu. Definisi \"<em>co-brand</em>\"\r\n adalah menampilkan nama, merek, logo atau atribut atau identifikasi \r\ndari seseorang atau sebuah perusahaan dengan tujuan memberi kesan kepada\r\n kalangan umum bahwa pihak bersangkutan adalah berhubungan atau anggota \r\natau bahkan cabang dari merek tersebut.</li>\r\n</ol>\r\n</div>\r\n\r\n<div>\r\n<h5>Pemblokiran atau penghapusan akun</h5>\r\n<p>Kami berhak untuk memblok dan menghapus akun pengguna yang dalam \r\npelanggaran langsung dalam syarat dan ketentuan kami, atau mereka yang \r\nmengalami gangguan, kekacauan atau yang mengindikasikan masalah diantara\r\n komunitas pengguna di Fimela.com.</p>\r\n</div>\r\n\r\n<div>\r\n<h5>HAK MILIK</h5>\r\n<p>Seluruh rancangan desain, gambar, <em>artwork</em>, audio, video serta kode pemrograman (selanjutnya disebut \"konten\") dalam situs <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;adalah\r\n hak cipta milik Kami. Anda tidak diperkenankan untuk memodifikasi, \r\nmenyalin, mengubah atau menambah rancangan desain, gambar, <em>artwork</em>, audio, video serta kode pemrograman dalam fasilitas ini dalam keadaan atau kondisi apapun.</p>\r\n</div>\r\n\r\n<div>\r\n<h5>LISENSI PENGUNJUNG website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a></h5>\r\n<p>Anda diperkenankan untuk menggunakan website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;dan konten yang ditawarkan website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;hanya\r\n untuk keperluan pribadi, bukan tujuan komersial. Anda dapat menggunakan\r\n konten yang diperbolehkan untuk diunggah, seperti foto dan video, untuk\r\n keperluan pribadi dan sesuai peraturan pada konten yang dimaksud.</p>\r\n<p>Anda tidak diperkenankan memproduksi ulang, mencetak, menyalin, \r\nmenyimpan, mempublikasikan, menayangkan, menyebarkan, memodifikasi, \r\nmenerjemahkan, menerbitkan, mentransfer, menjual, meminjamkan, dan/atau \r\nmendistribusikan konten website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;tanpa ijin tertulis dari Kami.</p>\r\n</div>\r\n\r\n<div>\r\n<h5>KONTEN yang dimuat untuk konsumsi publik</h5>\r\n<p>Beberapa area atau layanan di website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;memungkinkan\r\n Anda untuk memuat atau mengirim konten yang dapat diakses dan dilihat \r\noleh pengunjung lainnya, termasuk masyarakat umum. Anda hanya \r\ndiperkenankan untuk memuat atau mengirim konten pada halaman publik di \r\nwebsite <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;yang\r\n Anda ciptakan sendiri atau Anda memiliki izin untuk memuatnya. Anda \r\ntidak diperkenankan memuat konten yang melanggar Terms and Condition of \r\nUse ini. Kami tidak mengklaim kepemilikan dari konten yang Anda muat. \r\nNamun, dengan memuat konten pada area publik website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>,\r\n Anda memberikan jaminan pada kami, afiliasi dan distributor kami untuk \r\nmenggunakan, menyalin, menayangkan, mempertunjukkan, mendistribusikan, \r\nmengadaptasi, dan mempromosikan konten tersebut di berbagai media.</p>\r\n</div>\r\n\r\n<div>\r\n<h5>PENGAWASAN</h5>\r\n<p>Anda setuju bahwa kami tidak bertanggung jawab atas konten yang \r\ndisediakan pihak lain. Kami tidak memiliki kewajiban untuk memeriksa \r\nkonten tersebut, tapi kami berhak menolak untuk memuat atau menyunting \r\nkonten yang dikirim. Kami memiliki hak untuk menghapus konten untuk \r\nberbagai alasan, tapi kami tidak bertanggung jawab atas kegagalan atau \r\npenundaan penghapusan materi tersebut.</p>\r\n</div>\r\n\r\n<div>\r\n<h5>PRIVACY POLICY</h5>\r\n<p>Privacy policy website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;mengungkapkan kebijakan penanganan data-data pribadi Anda pada saat Anda mengakses website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>. penggunaan website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;secara rutin dan terus menerus menunjukkan persetujuan Anda pada Privacy Policy kami.</p>\r\n</div>\r\n\r\n<h5>LINK SITUS LAIN</h5>\r\n\r\n<p>Website <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;mungkin\r\n menyediakan tautan (link) ke berbagai situs pihak ketiga, termasuk \r\ntautan yang disediakan pada halaman hasil pencarian. Beberapa tautan \r\nsitus tersebut mungkin mengandung materi yang tidak menyenangkan, tidak \r\nsesuai hukum atau tidak akurat. Tautan tersebut tidak memperlihatkan \r\nbahwa kami menyetujui situs pihak ketiga tersebut. Anda mengetahui dan \r\nmenyetujui bahwa kami tidak bertanggung jawab atas konten atau materi \r\nlainnya yang ada pada situs pihak ketiga tersebut. Setiap perjanjian dan\r\n transaksi antara Anda dan pengiklan yang ada di <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;adalah\r\n antara Anda dan pengiklan dan Anda mengetahui dan setuju bahwa kami \r\ntidak bertanggung jawab atas setiap kehilangan atau klaim yang mungkin \r\ndisebabkan oleh perjanjian atau transaksi antara Anda dengan pengiklan, \r\ntautan tersebut ditujukan hanya sebagai bahan referensi Anda. <a target=\"_blank\" rel=\"nofollow\" href=\"https://www.fimela.com/\">FIMELA.com</a>&nbsp;tidak bertanggung jawab atas keakuratan, kelengkapan, dan kebenaran materi dalam website-website tersebut.</p><br><p></p>', '2019-11-18 15:17:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_partner`
--

CREATE TABLE `t_partner` (
  `idpartner` int(70) NOT NULL,
  `partnerName` varchar(70) NOT NULL,
  `partnerRule` text NOT NULL,
  `partnerPay` varchar(15) DEFAULT NULL,
  `partnerAmountCost` varchar(30) DEFAULT NULL,
  `partnerDiscountPrice` int(70) DEFAULT '0',
  `partnerDiscountPercent` float DEFAULT '0',
  `partnerStatus` varchar(50) NOT NULL,
  `partnerDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_partner`
--

INSERT INTO `t_partner` (`idpartner`, `partnerName`, `partnerRule`, `partnerPay`, `partnerAmountCost`, `partnerDiscountPrice`, `partnerDiscountPercent`, `partnerStatus`, `partnerDescription`) VALUES
(4, 'Pengajar', 'discount per price', 'Yes', '0', 0, 0, 'active', 'Pengajar'),
(5, 'Pelajar', 'discount per price', 'Yes', '0', 0, 0, 'active', 'Member Premium tidak diperlukan biaya registrasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_popup`
--

CREATE TABLE `t_popup` (
  `idpopup` int(25) NOT NULL,
  `popupType` text,
  `popupText` text,
  `popupImage` text,
  `typeDescription` text,
  `popupStatus` varchar(50) DEFAULT NULL,
  `statusButton` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_popup`
--

INSERT INTO `t_popup` (`idpopup`, `popupType`, `popupText`, `popupImage`, `typeDescription`, `popupStatus`, `statusButton`) VALUES
(1, 'Image Only', NULL, 'fa7f38d6ba56b397678e39bcb5b328d3.jpg', 'Pop ini hanya gambar, button mengarah ke katalog produk', 'Inactive', 'hidden');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_product`
--

CREATE TABLE `t_product` (
  `idproduct` varchar(50) NOT NULL,
  `idcategory` varchar(50) NOT NULL,
  `idupload` varchar(50) NOT NULL,
  `productName` text NOT NULL,
  `productDescription` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `quantityStock` int(5) NOT NULL,
  `size` text NOT NULL,
  `material` text NOT NULL,
  `productWeight` int(10) NOT NULL,
  `rating` double NOT NULL DEFAULT '0',
  `volunteer` int(11) NOT NULL DEFAULT '0',
  `postSlug` text NOT NULL,
  `productStatus` text NOT NULL,
  `uploadBy` text,
  `productDateUpload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_product`
--

INSERT INTO `t_product` (`idproduct`, `idcategory`, `idupload`, `productName`, `productDescription`, `price`, `quantityStock`, `size`, `material`, `productWeight`, `rating`, `volunteer`, `postSlug`, `productStatus`, `uploadBy`, `productDateUpload`) VALUES
('PRD5577001', '62', 'PRD5577001usr55880001', 'Jam Tangan Pria BRUNO CAVALLI DLQ-BC1888', '<p>Jam Tangan Pria BRUNO CAVALLI DLQ-BC1888<br>\r\n•Model Analog, Hari Aktif, Diameter 4,5cm, BackCase Stainless Steel, Tanggal Aktif</p>', '150000', 5, '1505 x 12500', 'BackCase Stainless Steel', 1200, 0, 0, 'jam-tangan-pria-bruno-cavalli-dlq-bc1888-PRD5577001.html', 'In Stock', 'usr55880001', '2019-12-17 09:02:27'),
('PRD5577002', '62', 'PRD5577002usr55880001', 'JULIUS Watch DLP-JA099', '<p>JULIUS Watch DLP-JA099<br>\r\nDiameter : 4,2 Cm<br>\r\nORIGINAL<br>\r\nTali Kulit Bagus<br>\r\n5 Warna : Apricot, Blue, Brown, Orange, White.<br>\r\nFeature : Complete Calendar, Week Display.<br>\r\nBerat : 0,2 Kg<br>\r\nFree : Box Julius<br>\r\nGaransi Mesin 1 Tahun<br></p>', '250000', 0, 'Diameter : 4,2 cm', 'Tali Kulit', 1200, 5, 1, 'julius-watch-dlp-ja099-PRD5577002.html', 'Out Of Stock', 'usr55880001', '2019-12-17 09:11:22'),
('PRD5577003', '62', 'PRD5577003usr55880001', 'New TWIN BLADES 6 Jarum DLP-TB.1003', '<p>New TWIN BLADES 6 Jarum DLP-TB.1003<br>Diameter : 4,5 Cm<br>ORIGINAL<br>Three Eye Korean Version<br>Leather Strap<br>Ready 5 Colours : Black, Black White, Blue, Coffee, Red<br>Kelengkapan : Tgl Aktif , 6 Jarum, Kartu Garansi, Box Twin Blades<br>Berat : 0,2 Kg<br>Garansi Mesin 1 Tahun<br></p>', '580000', 5, 'Diameter : 4,5 cm', 'Kulit', 200, 4, 1, 'new-twin-blades-6-jarum-dlp-tb.1003-PRD5577003.html', 'In Stock', 'usr55880001', '2019-12-17 09:20:51'),
('PRD5577004', '62', 'PRD5577004usr55880001', 'New JULIUS Watch DLP-JA782', '<p>Unisex Watch<br>\r\nNew JULIUS Watch DLP-JA782<br>\r\nDiameter : 4 Cm<br>\r\nORIGINAL<br>\r\nGenuine Leather Strap<br>\r\nReady 5 Warna : Apricot, Black, Brown, Coffee, White.<br>\r\nLebar Tali : 20 Mm<br>\r\nKorea Design<br>\r\nBerat : 0,2 Kg<br>\r\nFree : Box Julius<br>\r\nGaransi Mesin 1 Tahun<b>?</b><br></p><br>', '280000', 12, 'Diameter : 4 cm', 'Kulit', 200, 4, 2, 'new-julius-watch-dlp-ja782-PRD5577004.html', 'In Stock', 'usr55880001', '2019-12-17 09:23:34'),
('PRD5577005', '62', 'PRD5577005usr55880001', 'New JULIUS Leaf Style DLP-JA1090', '<p>New JULIUS Leaf Style DLP-JA1090<br>\r\nOriginal Brand<br>\r\nDiameter : 3,2 Cm<br>\r\nGenuine Leather Strap<br>\r\n5 Warna : Brown,Green,Pink, Tosca, White<br>\r\nGeometrical Pattern Modern Design<br>\r\nFree : Box Julius<br>\r\nBerat : 0,2 Kg<br>\r\nGaransi Mesin 1 Tahun<br></p>', '350000', 18, 'Diameter : 3,2 cm', 'Kulit', 200, 0, 0, 'new-julius-leaf-style-dlp-ja1090-PRD5577005.html', 'In Stock', 'usr55880001', '2019-12-17 09:26:16'),
('PRD5577006', '62', 'PRD5577006usr55880001', 'New JULIUS Leaf Style DLP-J', '<p>Original Brand<br>\r\nDiameter : 3,2 Cm<br>\r\nGenuine Leather Strap<br>\r\n5 Warna : Brown,Green,Pink, Tosca, White<br>\r\nGeometrical Pattern Modern Design<br>\r\nFree : Box Julius<br>\r\nBerat : 0,2 Kg<br>\r\nGaransi Mesin 1 Tahun<br></p>', '850000', 11, 'Diameter 4', 'Kulit', 200, 0, 0, 'new-julius-leaf-style-dlp-j-PRD5577006.html', 'In Stock', 'usr55880001', '2019-12-17 09:27:26'),
('PRD5577007', '50', 'PRD5577007usr55880001', 'Tas FSL Bernadette Speedy DLP-8502', '<p>Semi Premium<br>\r\nBahan Leather<br>\r\nUk. 28x25x14 Cm<br>\r\nBerat 700 Gram<br></p>', '325000', 7, 'Uk. 28x25x14 cm', 'Semi Premium\r\nBahan Leather\r\nUk. 28x25x14 cm\r\nBerat 700 gram', 1000, 4, 1, 'tas-fsl-bernadette-speedy-dlp-8502-PRD5577007.html', 'In Stock', 'usr55880001', '2019-12-17 09:30:55'),
('PRD5577008', '53', 'PRD5577008usr55880001', 'FSL Bernadette', '<p>Semi Premium<br>\r\nBahan Leather<br>\r\nUk. 28x25x14 Cm<br>\r\nBerat 700 Gram<br></p>', '450000', 2, 'Uk. 28x25x14 cm', 'Semi Premium\r\nBahan Leather\r\nUk. 28x25x14 cm\r\nBerat 700 gram', 1000, 5, 1, 'fsl-bernadette-PRD5577008.html', 'In Stock', 'usr55880001', '2019-12-17 09:35:25'),
('PRD5577009', '68', 'PRD5577009usr55880001', 'Gorden Blackout Salur Tulip', '<p>\r\n\r\n</p><h2>Deskripsi Gorden Blackout Emboss Serat Minimalis</h2><p>Gorden Nikita Lokal Terbaik<br><br>Warna :<br>Kuning READY<br>Pink READY<br><br>Ukuran :<br>Lebar Kain 120cm<br>Tinggi 200cm<br>5 Gelembung<br>10 Lubang Smokring<br><br>Bisa Request Ukuran Karena Kami Produksi Sendiri. Silahkan Sebutkan Ukurannya.<br>Ukuran : L 140cm Tinggi = 225 Cm<br>Bonus Tali Dari Kain Yang Sama<br><br>Pengiriman Setiap Hari Kecuali Hujan. Karena Kita Di Pick Up Ke Gudang Oleh Kurir.</p>\r\n\r\n<br><p></p>', '139900', 29, 'Ukuran : L 140cm Tinggi = 225 cm', 'Bisa di cuci', 800, 5, 1, 'gorden-blackout-salur-tulip-PRD5577009.html', 'In Stock', 'usr55880001', '2019-12-17 17:44:08'),
('PRD5577010', 'NULL', 'PRD5577010', 'NULL', 'NULL', 'NULL', 0, 'NULL', 'NULL', 0, 0, 0, 'NULL', 'temp', NULL, '2019-12-18 02:36:15'),
('PRD5577011', '66', 'PRD5577011usr55880001', 'Kanaya', '<p>\r\n\r\nBerat : 260&nbsp;gr<p></p><p>Bahan : Wollpeach</p>Hanya 1 Ukuran : XL&nbsp;&nbsp;<p>- Tali Diujung Tangan Bisa Ditarik</p><p></p><p>- Lingkar Dada : 104 Cm</p>- Lebar Bahu :  40 Cm<p>- Panjang Baju : 90 Cm</p>- Lingkar Lengan :  38 Cm<p></p><p></p><p>- Panjang Tangan : 52 Cm</p>\r\n\r\n<br></p>', '80000', 98, 'Ukuran XL', 'Wolpeach', 2300, 5, 2, 'kanaya-PRD5577011.html', 'In Stock', 'usr55880001', '2019-12-18 13:54:01'),
('PRD5577012', '68', 'PRD5577012usr55880001', 'Gorden Blackout Prada Motif Matahari Strip Baru Murah', '<p>Gorden Jendela Prada Yang Sangat Indah Untuk Mempercantik Ruangan Anda. Bisa Dicuci Ulang. Motif Cocok Untuk Semua Type Rumah. Berkesan Sangat Elegan.<br>Kemiripan Warna Pada Foto 90% Karena Efek Cahaya.<br>===========================================<br>Lebar Kain 135cm (bila Dibentangkan Lurus Tanpa Gelombang)<br>Tinggi : 225cm<br>Terdiri Dari 6 Lipatan/gelombang<br>Terpasang 12 Lubang Smokring Warna GOLD<br>===========================================<br>jika Ingin Ganti Warna Smokring Dikenakan Biaya Rp 1500/pcs.<br>Satu Helai Gorden Ini Cocok Untuk Ukuran Jendela Dengan Lebar Minimal 40cm Dan Maksimal 100cm.<br>Apabila Tinggi Nya Hendak Dirubah Menjadi Lebih Pendek Bisa Kami Bantu Potong Dengan Biaya Rp 10,000 Per Helai Dan Akan Kami Buatkan Link Nya.<br>===========================================<br>Harga Untuk 1 Helai<br>Vitrase Dan Rel Tidak Termasuk.<br></p>', '139900', 18, 'Lebar 130cm x Tinggi 225cm', '- Bahan Prada\r\n- Bahan bisa di cuci', 800, 0, 0, 'gorden-blackout-prada-motif-matahari-strip-baru-murah-PRD5577012.html', 'In Stock', 'usr55880001', '2019-12-19 02:09:36'),
('PRD5577013', '72', 'PRD5577013usr55880001', 'Guru', '<p>lkdfs</p>', '100000', 234, '37', 'dkfm', 68, 0, 0, 'guru-PRD5577013.html', 'In Stock', 'usr55880001', '2019-12-23 03:32:51'),
('PRD5577014', 'NULL', 'PRD5577014usr55880001', 'NULL', 'NULL', 'NULL', 0, 'NULL', 'NULL', 0, 0, 0, 'NULL', 'temp', 'usr55880001', '2020-06-26 20:23:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_product_bestseller`
--

CREATE TABLE `t_product_bestseller` (
  `id` int(50) NOT NULL,
  `idproduct` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_product_bestseller`
--

INSERT INTO `t_product_bestseller` (`id`, `idproduct`) VALUES
(5, 'PRD5577004'),
(6, 'PRD5577007'),
(7, 'PRD5577005'),
(8, 'PRD5577003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_product_color`
--

CREATE TABLE `t_product_color` (
  `id` int(120) NOT NULL,
  `idproduct` varchar(120) NOT NULL,
  `idcolor` int(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_product_retur`
--

CREATE TABLE `t_product_retur` (
  `idretur` varchar(80) NOT NULL,
  `request_retur_solution` text,
  `confirm_retur_solution` text,
  `comment_retur` text NOT NULL,
  `qty_retur` int(11) NOT NULL,
  `img_product_retur` text NOT NULL,
  `retur_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_reply` text NOT NULL,
  `money_back` int(11) NOT NULL DEFAULT '0',
  `date_confirm` datetime NOT NULL,
  `retur_status` text NOT NULL,
  `email_status` text NOT NULL,
  `idproduct_retur` varchar(80) NOT NULL,
  `idorder_retur` varchar(80) NOT NULL,
  `iduser_submit` varchar(80) NOT NULL,
  `confirm_by` varchar(80) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_product_retur`
--

INSERT INTO `t_product_retur` (`idretur`, `request_retur_solution`, `confirm_retur_solution`, `comment_retur`, `qty_retur`, `img_product_retur`, `retur_date`, `comment_reply`, `money_back`, `date_confirm`, `retur_status`, `email_status`, `idproduct_retur`, `idorder_retur`, `iduser_submit`, `confirm_by`) VALUES
('R-580001', 'pengembalian barang', NULL, 'warna barang tidak sesuai pesanan', 1, 'asset/img/uploads/retur/R-580001.jpg', '2019-12-18 14:30:53', '', 0, '0000-00-00 00:00:00', 'submit', '', 'PRD5577007', '58575800001', 'usr55880001', '0'),
('R-580002', 'pengembalian barang', NULL, 'Baju kegedean', 1, 'asset/img/uploads/retur/R-580002.jpg', '2019-12-19 09:56:44', '', 0, '0000-00-00 00:00:00', 'submit', '', 'PRD5577011', '58575800028', 'usr55880003', '0'),
('R-580003', 'pengembalian barang', 'pengembalian barang', 'Baju kegedean', 1, 'asset/img/uploads/retur/R-580003.jpg', '2019-12-19 09:57:01', '<p>test proses</p>', 0, '2019-12-19 14:24:55', 'confirmed', 'sent at 2019-12-19 14:10:14', 'PRD5577011', '58575800028', 'usr55880003', 'usr55880001'),
('R-580004', 'pengembalian barang', 'pengembalian barang', '12', 1, 'asset/img/uploads/retur/R-580004.jpg', '2019-12-19 13:54:06', '<p>test confirm<br></p>', 0, '2019-12-19 14:19:31', 'confirmed', 'sent at 2019-12-19 14:19:40', 'PRD5577004', '58575800030', 'usr55880006', 'usr55880001'),
('R-580005', 'pengembalian barang', 'pengembalian barang', 'kebagusan', 1, 'asset/img/uploads/retur/R-580005.jpg', '2019-12-19 16:16:01', '<p>oke saya prorese</p>', 0, '2019-12-19 16:19:44', 'confirmed', 'sent at 2019-12-19 16:19:54', 'PRD5577004', '58575800039', 'usr55880006', 'usr55880001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_product_sale`
--

CREATE TABLE `t_product_sale` (
  `idproductsale` int(50) NOT NULL,
  `idproduct` varchar(50) NOT NULL,
  `saleDescription` text NOT NULL,
  `pricesale` double NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_product_sale`
--

INSERT INTO `t_product_sale` (`idproductsale`, `idproduct`, `saleDescription`, `pricesale`, `startDate`, `endDate`) VALUES
(18, 'PRD5577004', '', 180000, '2019-12-16', '2020-01-29'),
(19, 'PRD5577005', '', 300000, '2019-12-16', '2020-01-31'),
(20, 'PRD5577007', '', 300000, '2019-12-09', '2020-01-18'),
(22, 'PRD5577009', '', 129900, '2019-12-20', '2019-12-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_rating_product`
--

CREATE TABLE `t_rating_product` (
  `idratingproduct` int(11) NOT NULL,
  `idproduct` text NOT NULL,
  `ratingProduct` double NOT NULL,
  `volunteerProduct` text NOT NULL,
  `comment` text NOT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_rating_product`
--

INSERT INTO `t_rating_product` (`idratingproduct`, `idproduct`, `ratingProduct`, `volunteerProduct`, `comment`, `date_create`, `data_update`) VALUES
(10, 'PRD5577007', 4, 'usr55880001', 'barang bagus sesuai gambar', '2019-12-18 14:26:43', '2019-12-18 14:26:43'),
(11, 'PRD5577002', 5, 'usr55880001', 'barang sesuai gambar bagus', '2019-12-18 14:27:09', '2019-12-18 14:27:09'),
(12, 'PRD5577004', 4, 'usr55880001', '', '2019-12-18 14:28:41', '2019-12-18 14:28:41'),
(13, 'PRD5577008', 5, 'usr55880002', 'barang bagus, warna sesuai, kualitas OK', '2019-12-18 15:39:46', '2019-12-18 15:39:46'),
(14, 'PRD5577003', 4, 'usr55880001', '', '2019-12-18 17:07:30', '2019-12-18 17:07:30'),
(15, 'PRD5577009', 5, 'usr55880003', 'Bahan tebal\r\nHarga murah\r\nKualitasnya mantul dah\r\nGk nyesel belinya juga1', '2019-12-19 09:54:30', '2019-12-21 21:16:43'),
(16, 'PRD5577011', 5, 'usr55880006', 'bagus', '2019-12-19 11:34:35', '2019-12-19 11:34:35'),
(17, 'PRD5577004', 4, 'usr55880006', 'bagus\r\n', '2019-12-19 11:34:41', '2019-12-19 11:34:41'),
(18, 'PRD5577011', 5, 'usr55880003', 'bagus', '2019-12-21 21:17:01', '2019-12-21 21:17:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_shiping_gateway`
--

CREATE TABLE `t_shiping_gateway` (
  `id` int(11) NOT NULL,
  `shipingGatewayName` varchar(50) NOT NULL,
  `apiToken` text NOT NULL,
  `originProvinceCode` int(5) DEFAULT NULL,
  `originCityCode` int(5) DEFAULT NULL,
  `originProvinceName` text,
  `originCityName` text,
  `upCost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_shiping_gateway`
--

INSERT INTO `t_shiping_gateway` (`id`, `shipingGatewayName`, `apiToken`, `originProvinceCode`, `originCityCode`, `originProvinceName`, `originCityName`, `upCost`) VALUES
(1, 'Raja Ongkir', '2f59db743a14c2d926216b663891b8bd', 13, 36, ' Kalimantan Selatan ', ' Banjarmasin ', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `iduser` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `lastName` text,
  `alamat` text,
  `kabupaten` varchar(80) DEFAULT NULL,
  `provinsi` varchar(80) DEFAULT NULL,
  `codeKabupaten` text,
  `codeProvinsi` text,
  `codeKecamatan` int(11) NOT NULL DEFAULT '0',
  `desa` text,
  `kecamatan` text,
  `rt` text,
  `rw` text,
  `kodepos` text,
  `useremail` varchar(50) NOT NULL,
  `password` varchar(80) NOT NULL,
  `userHp` varchar(15) DEFAULT NULL,
  `tipeuser` varchar(10) NOT NULL,
  `foto` varchar(80) NOT NULL DEFAULT 'user.jpg',
  `idref` varchar(50) NOT NULL,
  `userStatus` varchar(10) NOT NULL,
  `joindate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`iduser`, `username`, `lastName`, `alamat`, `kabupaten`, `provinsi`, `codeKabupaten`, `codeProvinsi`, `codeKecamatan`, `desa`, `kecamatan`, `rt`, `rw`, `kodepos`, `useremail`, `password`, `userHp`, `tipeuser`, `foto`, `idref`, `userStatus`, `joindate`) VALUES
('usr55880001', 'admin', 'a', 'a', '0', '0', '395', '12', 5447, 'a', 'Belitang', '2', '2', '33333', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', '0818045156485', '1', 'user.jpg', '', 'Active', '2019-02-13 15:21:50'),
('usr55880003', 'Mustapa Ahmad Kamal', NULL, NULL, 'Hulu Sungai Utara', 'Kalimantan Selatan', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'mstpahmdkml@gmail.com', '0192023a7bbd73250516f069df18b500', '082237755772', '1', 'user.jpg', '', 'Active', '2020-05-28 15:16:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_voucher`
--

CREATE TABLE `t_voucher` (
  `idvoucher` int(100) NOT NULL,
  `voucherName` varchar(90) NOT NULL,
  `voucherCode` varbinary(90) NOT NULL,
  `voucherPrice` varchar(25) NOT NULL,
  `voucherDescription` text NOT NULL,
  `minTransaction` varchar(100) DEFAULT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_voucher`
--

INSERT INTO `t_voucher` (`idvoucher`, `voucherName`, `voucherCode`, `voucherPrice`, `voucherDescription`, `minTransaction`, `startDate`, `endDate`) VALUES
(1, 'BLACKFRIDAY', 0x4d59424c41434b46, '50000', 'Voucher BLACKFRIDAY,nikmati belanja dengan diskon Rp. 50.000 untuk semua pembelian produk. hanya dengan minimum belanja Rp.5000', '5000', '2019-05-23', '2020-03-03'),
(2, 'SHOPADDYCT', 0x53484f50414443, '150000', 'Voucher BLACKFRIDAY,nikmati belanja dengan diskon Rp. 150.000 untuk semua pembelian produk. hanya dengan minimum belanja Rp.50000', '50000', '2019-05-23', '2020-03-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_widget`
--

CREATE TABLE `t_widget` (
  `id` int(60) NOT NULL,
  `widgetName` text NOT NULL,
  `widgetStatus` text NOT NULL,
  `widgetScriptId` varchar(120) DEFAULT NULL,
  `widgetCta` text,
  `widgetPosition` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_widget`
--

INSERT INTO `t_widget` (`id`, `widgetName`, `widgetStatus`, `widgetScriptId`, `widgetCta`, `widgetPosition`) VALUES
(1, 'Chat Button', 'Active', NULL, 'Chat Dengan CS', 'left'),
(2, 'Share Button', 'Active', '5cb5702f36f4e100127fee16', NULL, NULL),
(3, 'Facebook Comment', 'Active', '281591579445412', NULL, NULL),
(4, 'Order Via WhatsApp', 'Active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_wishlist`
--

CREATE TABLE `t_wishlist` (
  `idwishlist` int(10) NOT NULL,
  `idproduct` varchar(50) NOT NULL,
  `dateSubmit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(15) DEFAULT NULL,
  `ipAddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `anggota_kpu`
--
ALTER TABLE `anggota_kpu`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `bawaslu`
--
ALTER TABLE `bawaslu`
  ADD PRIMARY KEY (`id_bawaslu`);

--
-- Indeks untuk tabel `gakkumdu`
--
ALTER TABLE `gakkumdu`
  ADD PRIMARY KEY (`id_gakkumdu`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`id_jenjang`);

--
-- Indeks untuk tabel `kejaksaan`
--
ALTER TABLE `kejaksaan`
  ADD PRIMARY KEY (`id_kejaksaan`);

--
-- Indeks untuk tabel `kepolisian`
--
ALTER TABLE `kepolisian`
  ADD PRIMARY KEY (`id_kepolisian`);

--
-- Indeks untuk tabel `kpu`
--
ALTER TABLE `kpu`
  ADD PRIMARY KEY (`id_kpu`);

--
-- Indeks untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`id_murid`);

--
-- Indeks untuk tabel `paslon`
--
ALTER TABLE `paslon`
  ADD PRIMARY KEY (`id_paslon`);

--
-- Indeks untuk tabel `penyelenggara`
--
ALTER TABLE `penyelenggara`
  ADD PRIMARY KEY (`id_penyelenggara`);

--
-- Indeks untuk tabel `t_ads`
--
ALTER TABLE `t_ads`
  ADD PRIMARY KEY (`idads`);

--
-- Indeks untuk tabel `t_bank`
--
ALTER TABLE `t_bank`
  ADD PRIMARY KEY (`idbank`);

--
-- Indeks untuk tabel `t_banner_image`
--
ALTER TABLE `t_banner_image`
  ADD PRIMARY KEY (`idbannerimage`);

--
-- Indeks untuk tabel `t_blog_category`
--
ALTER TABLE `t_blog_category`
  ADD PRIMARY KEY (`idblogcategory`);

--
-- Indeks untuk tabel `t_blog_post`
--
ALTER TABLE `t_blog_post`
  ADD PRIMARY KEY (`idblogpost`);

--
-- Indeks untuk tabel `t_category`
--
ALTER TABLE `t_category`
  ADD PRIMARY KEY (`idcategory`);

--
-- Indeks untuk tabel `t_company`
--
ALTER TABLE `t_company`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_contact`
--
ALTER TABLE `t_contact`
  ADD PRIMARY KEY (`idcontact`);

--
-- Indeks untuk tabel `t_cs`
--
ALTER TABLE `t_cs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_email_sender`
--
ALTER TABLE `t_email_sender`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `t_email_subcribe`
--
ALTER TABLE `t_email_subcribe`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_footer_tagline`
--
ALTER TABLE `t_footer_tagline`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_foto`
--
ALTER TABLE `t_foto`
  ADD PRIMARY KEY (`idFoto`);

--
-- Indeks untuk tabel `t_invoice`
--
ALTER TABLE `t_invoice`
  ADD PRIMARY KEY (`idinvoice`);

--
-- Indeks untuk tabel `t_invoice_partner`
--
ALTER TABLE `t_invoice_partner`
  ADD PRIMARY KEY (`idinvoicepartner`);

--
-- Indeks untuk tabel `t_keuangan`
--
ALTER TABLE `t_keuangan`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indeks untuk tabel `t_order`
--
ALTER TABLE `t_order`
  ADD PRIMARY KEY (`idorder`);

--
-- Indeks untuk tabel `t_order_detail`
--
ALTER TABLE `t_order_detail`
  ADD PRIMARY KEY (`idorderDetail`);

--
-- Indeks untuk tabel `t_order_shiping`
--
ALTER TABLE `t_order_shiping`
  ADD PRIMARY KEY (`idordershiping`);

--
-- Indeks untuk tabel `t_page_gallery`
--
ALTER TABLE `t_page_gallery`
  ADD PRIMARY KEY (`idpagegallery`);

--
-- Indeks untuk tabel `t_page_privacy_policy`
--
ALTER TABLE `t_page_privacy_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_page_service`
--
ALTER TABLE `t_page_service`
  ADD PRIMARY KEY (`idpageservice`);

--
-- Indeks untuk tabel `t_page_term_condition`
--
ALTER TABLE `t_page_term_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_partner`
--
ALTER TABLE `t_partner`
  ADD PRIMARY KEY (`idpartner`);

--
-- Indeks untuk tabel `t_popup`
--
ALTER TABLE `t_popup`
  ADD PRIMARY KEY (`idpopup`);

--
-- Indeks untuk tabel `t_product`
--
ALTER TABLE `t_product`
  ADD PRIMARY KEY (`idproduct`);

--
-- Indeks untuk tabel `t_product_bestseller`
--
ALTER TABLE `t_product_bestseller`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_product_color`
--
ALTER TABLE `t_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_product_retur`
--
ALTER TABLE `t_product_retur`
  ADD PRIMARY KEY (`idretur`);

--
-- Indeks untuk tabel `t_product_sale`
--
ALTER TABLE `t_product_sale`
  ADD PRIMARY KEY (`idproductsale`);

--
-- Indeks untuk tabel `t_rating_product`
--
ALTER TABLE `t_rating_product`
  ADD PRIMARY KEY (`idratingproduct`);

--
-- Indeks untuk tabel `t_shiping_gateway`
--
ALTER TABLE `t_shiping_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`iduser`);

--
-- Indeks untuk tabel `t_voucher`
--
ALTER TABLE `t_voucher`
  ADD PRIMARY KEY (`idvoucher`);

--
-- Indeks untuk tabel `t_widget`
--
ALTER TABLE `t_widget`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_wishlist`
--
ALTER TABLE `t_wishlist`
  ADD PRIMARY KEY (`idwishlist`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `anggota_kpu`
--
ALTER TABLE `anggota_kpu`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bawaslu`
--
ALTER TABLE `bawaslu`
  MODIFY `id_bawaslu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `gakkumdu`
--
ALTER TABLE `gakkumdu`
  MODIFY `id_gakkumdu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jenjang`
--
ALTER TABLE `jenjang`
  MODIFY `id_jenjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kejaksaan`
--
ALTER TABLE `kejaksaan`
  MODIFY `id_kejaksaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kepolisian`
--
ALTER TABLE `kepolisian`
  MODIFY `id_kepolisian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `kpu`
--
ALTER TABLE `kpu`
  MODIFY `id_kpu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id_kurikulum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `murid`
--
ALTER TABLE `murid`
  MODIFY `id_murid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `paslon`
--
ALTER TABLE `paslon`
  MODIFY `id_paslon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penyelenggara`
--
ALTER TABLE `penyelenggara`
  MODIFY `id_penyelenggara` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_ads`
--
ALTER TABLE `t_ads`
  MODIFY `idads` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_bank`
--
ALTER TABLE `t_bank`
  MODIFY `idbank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `t_banner_image`
--
ALTER TABLE `t_banner_image`
  MODIFY `idbannerimage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `t_blog_category`
--
ALTER TABLE `t_blog_category`
  MODIFY `idblogcategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_blog_post`
--
ALTER TABLE `t_blog_post`
  MODIFY `idblogpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `t_category`
--
ALTER TABLE `t_category`
  MODIFY `idcategory` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `t_company`
--
ALTER TABLE `t_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_contact`
--
ALTER TABLE `t_contact`
  MODIFY `idcontact` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_cs`
--
ALTER TABLE `t_cs`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_email_sender`
--
ALTER TABLE `t_email_sender`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_email_subcribe`
--
ALTER TABLE `t_email_subcribe`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_footer_tagline`
--
ALTER TABLE `t_footer_tagline`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `t_foto`
--
ALTER TABLE `t_foto`
  MODIFY `idFoto` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT untuk tabel `t_invoice`
--
ALTER TABLE `t_invoice`
  MODIFY `idinvoice` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `t_keuangan`
--
ALTER TABLE `t_keuangan`
  MODIFY `idtransaksi` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `t_order_detail`
--
ALTER TABLE `t_order_detail`
  MODIFY `idorderDetail` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `t_order_shiping`
--
ALTER TABLE `t_order_shiping`
  MODIFY `idordershiping` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `t_page_gallery`
--
ALTER TABLE `t_page_gallery`
  MODIFY `idpagegallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `t_page_privacy_policy`
--
ALTER TABLE `t_page_privacy_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_page_service`
--
ALTER TABLE `t_page_service`
  MODIFY `idpageservice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `t_page_term_condition`
--
ALTER TABLE `t_page_term_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_partner`
--
ALTER TABLE `t_partner`
  MODIFY `idpartner` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `t_popup`
--
ALTER TABLE `t_popup`
  MODIFY `idpopup` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `t_product_bestseller`
--
ALTER TABLE `t_product_bestseller`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `t_product_color`
--
ALTER TABLE `t_product_color`
  MODIFY `id` int(120) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_product_sale`
--
ALTER TABLE `t_product_sale`
  MODIFY `idproductsale` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `t_rating_product`
--
ALTER TABLE `t_rating_product`
  MODIFY `idratingproduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `t_voucher`
--
ALTER TABLE `t_voucher`
  MODIFY `idvoucher` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_widget`
--
ALTER TABLE `t_widget`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `t_wishlist`
--
ALTER TABLE `t_wishlist`
  MODIFY `idwishlist` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
