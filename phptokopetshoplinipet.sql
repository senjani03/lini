-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2025 at 09:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phptokopetshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(16, 'Makanan Kucing'),
(17, 'Makanan Anjing'),
(18, 'Obat Kucing');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `idbeli` int(11) NOT NULL,
  `nama` text NOT NULL,
  `tanggaltransfer` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `bukti` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `idbeli`, `nama`, `tanggaltransfer`, `tanggal`, `bukti`) VALUES
(1, 1, 'Syarwah', '2025-07-01', '2025-07-01 00:00:00', '20250701075730buktimandiri.jpg'),
(2, 2, 'Prabowo', '2025-07-02', '2025-07-02 00:00:00', '20250702074839buktimandiri.jpg'),
(3, 3, 'aris', '2025-10-12', '2025-07-22 00:00:00', '20250722090500Rectangle 22.png');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `idbeli` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `tanggalbeli` datetime NOT NULL,
  `totalbeli` text NOT NULL DEFAULT '\'belum bayar\'',
  `alamatpengiriman` text NOT NULL,
  `totalberat` varchar(255) NOT NULL,
  `kota` text NOT NULL,
  `ongkir` text NOT NULL,
  `statusbeli` text NOT NULL,
  `resipengiriman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`idbeli`, `id`, `tanggalbeli`, `totalbeli`, `alamatpengiriman`, `totalberat`, `kota`, `ongkir`, `statusbeli`, `resipengiriman`) VALUES
(1, 8, '2025-07-01 00:00:00', '83000', 'Jl. Nungcik', '3', 'Palembang', '10000', 'Barang Di Kirim', '521521'),
(2, 9, '2025-07-02 00:00:00', '135000', 'Jl. MH. Thamrin, Tanggerang, Banten', '3', 'Banten', '10000', 'Barang Di Kirim', '9085102521'),
(3, 10, '2025-07-22 00:00:00', '10000', 'bandung', '1', 'Bandung', '7000', 'Barang Di Kirim', '123121na111');

-- --------------------------------------------------------

--
-- Table structure for table `pembelianproduk`
--

CREATE TABLE `pembelianproduk` (
  `idbeli_produk` int(11) NOT NULL,
  `idbeli` text NOT NULL,
  `id` text NOT NULL,
  `idproduk` text NOT NULL,
  `nama` text NOT NULL,
  `harga` text NOT NULL,
  `berat` text NOT NULL,
  `subberat` text NOT NULL,
  `subharga` text NOT NULL,
  `jumlah` text NOT NULL,
  `statusulasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelianproduk`
--

INSERT INTO `pembelianproduk` (`idbeli_produk`, `idbeli`, `id`, `idproduk`, `nama`, `harga`, `berat`, `subberat`, `subharga`, `jumlah`, `statusulasan`) VALUES
(1, '1', '', '13', 'Bolt Dog Beef segi tiga Makanan Anjing Dog Food Repack 800 gr', '35000', '1', '1', '35000', '1', ''),
(2, '1', '', '14', 'PEDIGREE 400 GR BEEF', '24000', '1', '2', '48000', '2', ''),
(3, '2', '', '13', 'Bolt Dog Beef segi tiga Makanan Anjing Dog Food Repack 800 gr', '35000', '1', '1', '35000', '1', ''),
(4, '2', '', '4', 'WHISKAS Makanan Kucing Kering 1 Kg', '50000', '1', '2', '100000', '2', ''),
(5, '3', '', '9', 'Meo POUCH Adult Kitten 80Gr / Makanan Basah Kucing', '10000', '1', '1', '10000', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `telepon` varchar(12) NOT NULL,
  `alamat` text NOT NULL,
  `fotoprofil` varchar(255) NOT NULL,
  `level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `email`, `password`, `telepon`, `alamat`, `fotoprofil`, `level`) VALUES
(1, 'Administrator', 'admin@gmail.com', 'admin', '0812345678', 'Palembang', 'Untitled.png', 'Admin'),
(8, 'Syarwah', 'syarwah@gmail.com', 'syarwah', '0819025215', 'Jl. Palembang', 'Untitled.png', 'Pelanggan'),
(9, 'Prabowo', 'prabowo@gmail.com', 'prabowo', '08509215021', 'Jl. Palembang', 'Untitled.png', 'Pelanggan'),
(10, 'aris', 'aris@gmail.com', 'aris', '412312', 'asdas', 'Untitled.png', 'Pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `id_kategori` text NOT NULL,
  `namaproduk` text NOT NULL,
  `hargaproduk` text NOT NULL,
  `beratproduk` text NOT NULL,
  `stokproduk` text NOT NULL,
  `fotoproduk` text NOT NULL,
  `deskripsiproduk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `id_kategori`, `namaproduk`, `hargaproduk`, `beratproduk`, `stokproduk`, `fotoproduk`, `deskripsiproduk`) VALUES
(3, '16', 'Makanan Kucing Meo Tuna Cat Food Me-O Frespack 1,2 Kg', '65000', '1', '4', 'produk2.jpg', '<p>Me-O Cat Food Tuna untuk Kucing dewasa bernutrisi lengkap dan seimbang, Lezat Taurin adalah asam amino yang sangat penting untuk berfungsinya mata dan meningkatkan penglihatan Vitamin sepatu C sistem kekebalan tubuh kucing kucing dan membantu mengurangi efek merusak dari stres pada Kalsium kesehatan kucing Anda, Fosfor dan Vitamin D membantu memperkuat gigi dan tulang Formula ini dikembangkan untuk membantu mencegah risiko FLUTD (Feline Bawah kemih Penyakit Saluran) Omega-3 dan Omega-6 dari minyak berkualitas tinggi dalam kombinasi dengan Zinc akan membantu menyuburkan rambut kucing dan kulit rumus rendah natrium membantu mengurangi risiko tekanan darah tinggi, ginjal dan penyakit jantung pada kucing.<br />\r\n<br />\r\n<br />\r\nTerbuat dari Tuna<br />\r\nMeningkatkan penglihatan kucing<br />\r\nMeningkatkan sistem kekebalan tubuh kucing<br />\r\nMenguatkan gigi dan tulang<br />\r\nMencegah risiko batu kandung kemih<br />\r\nMemelihara kulit dan rambut kucing<br />\r\nMengurangi resiko tekanan darah tinggi, ginjal dan penyakit jantung pada kucing</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(4, '16', 'WHISKAS Makanan Kucing Kering 1 Kg', '50000', '1', '1', 'produk3.jpeg', '<p>WHISKAS&reg; Makanan Kucing Kering 1 Kg<br />\r\n<br />\r\n*Terdapat varian rasa : Tuna, Ocean Fish, Mackerel<br />\r\n<br />\r\nWHISKAS&reg; Makanan Kucing mengandung:<br />\r\n1. WHISKAS makanan kucing lengkap dan seimbang, dirancang khusus untuk memenuhi kebutuhan kucing Anda pada tahap kehidupan mereka.<br />\r\n2. Renyah di luar dengan tekstur lembut yang creamy di tengah.<br />\r\n3. Lengkungan WHISKAS Dry akan membantu merawat kesehatan mulut dan gigi mereka.<br />\r\n4. Diperkaya dengan omega 3 &amp; 6, asam lemak dan seng untuk kulit sehat dan bulu yang mengkilap.<br />\r\n5. Vitamin A dan taurine yang ditingkatkan untuk Penglihatan sehat.<br />\r\n6. Protein berkualitas yang dipilih dari ikan sungguhan, termasuk lemak, vitamin &amp; mineral untuk hidup dan energik.</p>\r\n'),
(5, '16', 'Whiskas tuna kaleng 400gr', '25000', '1', '20', 'produk6.jpg', '<p>Makanan kucing Whiskas Tuna terbuat dari bahan ikan tuna laut segar yang bernutrisi tinggi,dengan proses teknologi sehingga terjaga mutu dan kualitasnya terkandung Taurine untuk pengelihatan mata,Omega 3 dan 6 yang membuat bulu dan kulit semakin sehat dan halus serta Vitamin E yang berfungsi menguatkan daya tahan tubuh kucing</p>\r\n'),
(8, '16', 'Makanan Kucing / Cat Food MEO ME-O KALENG 400 GRAM All Variants', '27000', '1', '8', 'produk8.jpg', '<p>MEO ME-O Kaleng Makanan Kucing Basah Wet Food 400 gr<br />\r\nMEO, makanan Kucing dewasa dan anakan yang di sajikan dengan keadaan basah, yang di penuhi dengan nutri yang mampu membantu pertumbuhan kucing dewasa dan anakan, yang di lengkapi dengan:<br />\r\n<br />\r\nVitamin A : Minyak ikan dan suplemen vitamin A khusus kucing, bermanfaat untuk mempertajam penglihatan kucing, menyehatkan kulit kucing dan bagus untuk kekebalan tubuh kucing.<br />\r\n<br />\r\nVitamin E+C : Minyak sayur dan suplemen vitamin E+C, bermanfaat untuk menjaga kesehatan tulang dan gigi.<br />\r\n<br />\r\nOmega 3 &amp; 6 : Kuning telur, minyak ikan dan flaxseed, bermanfaat untuk memperindah dan mencegah bulu kucing rontok.<br />\r\n<br />\r\nCalcium : Daging ayam, daging domba dan ikan, calcium hampir sama seperti vitamin e dan c yang bermanfaat untuk menjaga tulang dan gigi tetap sehat.<br />\r\n<br />\r\nFosfor : Daging dan kuning telur, bermanfaat untuk membantu tulang, gigi dan sel otot selalu bekerja dengan baik<br />\r\n<br />\r\nMakanan Kucing Merek MEO untuk Adult dan kitten dengan berbagai macam pilihan rasa :<br />\r\n1. SEAFOOD<br />\r\n2. TUNA<br />\r\n3. SARDINE</p>\r\n'),
(9, '16', 'Meo POUCH Adult Kitten 80Gr / Makanan Basah Kucing', '10000', '1', '6', 'produk7.jpg', '<p>Dibuat dari ikan segar asli , dilengkapi dengan nutrisi seimbang dan komposisi aroma yang sangat menggoda selera makan kucing anda tersedia dengan varian rasa:</p>\r\n\r\n<p>- tuna - tuna chicken</p>\r\n\r\n<p>- beef chunk jelly</p>\r\n\r\n<p>- ocean fish</p>\r\n\r\n<p>- sardine w/ chicken and rice</p>\r\n\r\n<p>- tuna whitefish</p>\r\n\r\n<p>- sardine red snapper in jelly</p>\r\n\r\n<p>- mackarel jelly</p>\r\n\r\n<p>- kitten tuna</p>\r\n\r\n<p>- kitten tuna sardine in jelly</p>\r\n'),
(10, '18', 'Bio Cat - Obat Infeksi Pernafasan & Pencernaan Kucing Kitten', '16000', '4', '10', 'produk1.jpg', '<p>Bio Cat membantu imun daya tahan tubuh kucing dan kitten agar terhindar dari berbagai penyakit, membantu kekebalan tubuh kucing dari serangan flu, diare dan penyakit lainya. Bio cat adalah antibiotik modern yang sangat efektif berspektrum luas untuk membasmi bakteri gram positif dan negatif pada inti sel bakteri.<br />\r\n<br />\r\nIndikasi:<br />\r\nBakteri gram negatif dan positif, Infeksi pencernaan (diare) dan pernafasan(pilek dan batuk) pada kucing.<br />\r\n<br />\r\nDosis:<br />\r\nKucing Besar : 5 Tetes<br />\r\nKucing Kecil : 2-3 Tetes<br />\r\nDiberikan secara langsung ke mulut Hewan 3 x sehari, selama 5 hari<br />\r\n<br />\r\nHarga Per 1 botol ya<br />\r\n<br />\r\nKOMPOSISI, INDIKASI, CARA PEMAKAIAN DAN ANJURAN ADA DIKEMASAN, SILAHKAN DIBACA SEBELUM PENGGUNAAN !!!!<br />\r\n<br />\r\nBILA SAKIT BERLANJUT, HUBUNGI DOKTER HEWAN TERDEKAT!</p>\r\n'),
(13, '17', 'Bolt Dog Beef segi tiga Makanan Anjing Dog Food Repack 800 gr', '35000', '1', '2', 'produk4.jpg', '<p>BOLT Dog Food - 800 gr merupakan pakan anjing untuk usia di atas 1 tahun, yang diformulasikan untuk memenuhi nutrisi standar Profil Nutrisi Makanan Anjing yang disahkan oleh AAFCO (Association of American Feed Control Officials). Pakan ini diperkaya dengan antioksidan, vitamin, dan mineral. Bermanfaat untuk meningkatkan sistem imunitas, membuat kulit lebih sehat dan bulu berkilau serta meningkatkan kesehatan sendi dan tulang.<br />\r\n<br />\r\nDog Food<br />\r\nFlavor : Beef<br />\r\nBerat Bersih : 800 Gr<br />\r\nKibble : Segitiga<br />\r\nUntuk anjing usia : &gt; 1 tahun<br />\r\nDiperkaya antioksidan, vitamin E, Vitamin C, dan selenium untuk menjaga imunitas tubuh.<br />\r\n<br />\r\nKeunggulan :<br />\r\n&#39;&#39; Meningkatkan sistem imunitas tubuh<br />\r\n&#39;&#39; Menjaga kesehatan gigi<br />\r\n&#39;&#39; Meningkatkan kesehatan kulit dan kilau pada bulu<br />\r\n&#39;&#39; Mudah dicerna<br />\r\n&#39;&#39; Meningkatkan kesehatan sendi dan tulang<br />\r\n<br />\r\nBahan-bahan :<br />\r\nRice, Corn, Poultry Meat Meal, Meat Bone Meal, Soybean Meal, Wheat Flour, Fish Oil, Vegetable Oil, Chicken Liver Digest, L-Lysine, Vitamin and mineral (Vitamin A, D, E, L-ascorbyl-2-polyphosphate, Niacin, Pantothenic Acid, Pyridoxine, Biotin, Folic Acid, Potassium Chloride, Ferrous Sulfate, Zinc Sulfate, Copper Sulfate, Manganese Sulfate Sodium Selenite, Calcium Iodate).</p>\r\n'),
(14, '17', 'PEDIGREE 400 GR BEEF', '24000', '1', '0', 'produk9.jpg', '<p>Makanan Anjing Pedigree mengandung:<br />\r\n<br />\r\nPedigree Baik untuk kesehatan kulit &amp; membuat bulu bersinar.<br />\r\nMenjaga kesehatan &amp; kekuatan tulang<br />\r\nMenjaga kesehatan pencernaan anjing<br />\r\nMembuat otot lebih kuat<br />\r\nMengandung Nutrisi tepat untuk membangun sistem kekebalan tubuh yang baik</p>\r\n'),
(15, '18', 'Vitamin Bulu Dermatrix for dogs & cats 180tab', '130000', '1', '0', 'produk10.jpg', '<p>DERMATRIX is a great tasting fatty acid supplement containing all the nutrients needed to promote a healthy skin and shiny coat, and reduce normal shedding in dogs, cats and other companion animals. It contains a high concentration of Omega 3, 6 and 9 essential fatty acids (EFA) from plant and fish sources, MSM (OptiMSM, methylsulfonylmethane), vitamins and minerals important for skin and fur health. Daily supplementation with DERMATRIX prevents nutrition deficiencies which may result in lackluster coats and unwanted shedding in dogs and cats.</p>\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`idbeli`);

--
-- Indexes for table `pembelianproduk`
--
ALTER TABLE `pembelianproduk`
  ADD PRIMARY KEY (`idbeli_produk`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `idbeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pembelianproduk`
--
ALTER TABLE `pembelianproduk`
  MODIFY `idbeli_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
