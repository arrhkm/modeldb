-- MySQL dump 10.13  Distrib 5.6.31, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: staff
-- ------------------------------------------------------
-- Server version	5.6.31-0ubuntu0.15.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detilfaktor`
--

DROP TABLE IF EXISTS `detilfaktor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detilfaktor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(10) DEFAULT NULL,
  `dscription` varchar(225) DEFAULT NULL,
  `faktor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detilfaktor_faktor1_idx` (`faktor_id`),
  CONSTRAINT `fk_detilfaktor_faktor1` FOREIGN KEY (`faktor_id`) REFERENCES `faktor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detilfaktor`
--

LOCK TABLES `detilfaktor` WRITE;
/*!40000 ALTER TABLE `detilfaktor` DISABLE KEYS */;
INSERT INTO `detilfaktor` VALUES (1,5,'SMP, Sekolah Kejuruan Tingkat Pertama',1),(2,15,'SMA, Sekolah Kejuruan Tingkat Atas',1),(3,25,'Diploma III',1),(4,35,'S1',1),(5,45,'S2',1),(6,5,'Sampai dengan 6 bulan',2),(7,10,'Antara > dari 6 bulan sampai dengan =< dari 1 tahun',2),(8,15,'Antara > dari 1 tahun sampai dengan =< dari 3 tahun',2),(9,25,'Antara > dari 3 tahun sampai dengan =< dari 5 tahun',2),(10,35,'Antara > dari 5 tahun sampai dengan =< dari 7 tahun',2),(11,45,'Antara > dari 7 tahun sampai dengan =< dari 10 tahun',2),(12,55,'Antara > dari 10 tahun sampai dengan =< dari 15 tahun',2),(13,65,'Lebih dari 15 tahun',2),(14,5,'Diperlukan pengetahuan mengenai kegiatan/fungsi-fungsi area lain di dalam dept.',3),(15,10,'Sedikit pengetahuan diperlukan untuk kegiatan/fungsi-fungsi area lain di dalam dan di luar dept.',3),(16,20,'Pengetahuan yang baik diperlukan untuk kegiatan/fungsi-fungsi area lain di dalam dan luar dept.',3),(17,30,'Pengetahuan menyeluruh untuk kegiatan/fungsi2 area di dalam perusahaan & informasi domestik',3),(18,40,'Pengetahuan menyeluruh mengenai grup serta informasi domestik & internasional',3),(19,0,'0',4),(20,10,'1 - 4',4),(21,20,'5 - 10',4),(22,30,'11 - 50',4),(23,40,'51 - 200',4),(24,50,'201 - 1,000',4),(25,60,'1,001 - 5,000',4),(26,0,'Lainnya',5),(27,10,'Spesialis',5),(28,20,'Manajer',5),(29,30,'General Manajer',5),(30,0,'Tidak ada',6),(31,20,'Interaksi di dalam perusahaan',6),(32,40,'Interaksi di dalam corporate (group)',6),(33,60,'Interaksi di dalam group (corporate) dan di luar group (corporate)',6),(34,1,'Tidak ada',7),(35,15,'Informasi / Tujuan koordinasi',7),(36,30,'Hubungan di dalam perusahaan dimana diperlukan negosiasi dan konfrontasi',7),(37,45,'Hubungan di luar perusahaan dengan Wawancara, pembelian, pengiklanan, dan hubungan tehnik',7),(38,60,'Hubungan di luar perusahaan dimana diperlukan negosiasi dan konfrontasi',7),(39,1,'Dalam menjalankan tugasnya, harus diawasi secara terus menerus',8),(40,10,'Sejumlah instruksi diberikan dengan pemeriksaan jangka pendek',8),(41,25,'Tujuan khusus diberikan dengan pemeriksaan terhadap checkpoint saja',8),(42,45,'Petunjuk umum diberikan dan dilakukan pemeriksaan diakhir pekerjaan',8),(43,65,'Pengukuran pelaksanaan tugas dilihat dari pencapaian tujuan perusahaan (unit)',8),(44,90,'Pengukuran dilihat dari pencapaian tujuan korporasi ( Corporate )',8),(45,1,'Rutin, Mudah',9),(46,10,'Sedikit sulit, tapi instruksi tersedia',9),(47,25,'Kesulitan sedang, diperlukan analisa',9),(48,45,'Sulit, masalah harus di definisikan dan di analisa',9),(49,70,'Sangat sulit, penyelidikan menyeluruh dan melibatkan beberapa bagian perusahaan',9),(50,100,'Teramat sulit, melibatkan beberapa perusahaan',9),(51,1,'Rutin dan tugas yang berulang',10),(52,10,'Pengawasan kegiatan yang sama di dalam area fungsional/departemen',10),(53,20,'Pengawasan kegiatan yang berlainan di dalam area fungsional/departemen',10),(54,30,'Mengelola sebuah area fungsional/departemen',10),(55,40,'Mengelola dua atau lebih area fungsional/departemen',10),(56,55,'Mengelola satu perusahaan dengan satu produk besar atau satu pabrik',10),(57,70,'Mengelola sebuah perusahaan dengan dua produk besar atau beberapa pabrik',10),(58,90,'Mengelola lebih dari satu perusahaan dengan tiga atau lebih produk besar atau beberapa pabrik',10),(59,1,'Tidak memerlukan pengembangan',11),(60,5,'Peningkatan biasa menggunakan teknik yang sudah ada',11),(61,15,'Peningkatan / pembaharuan dari metode dan tehnik yang memerlukan pengertian antar fungsi',11),(62,30,'Pengembangan metode & tehnik baru yg secara nyata meningkatkan efisiensi perusahaan',11),(63,50,'Menciptakan metode & cara kerja baru menggunakan ide-ide dari luar',11),(64,80,'Pengembangan konsep baru dan pendekatan yang imajinatif',11),(65,0,'Sangat sedikit pengaruhnya di seksi',12),(66,1,'Sedikit pengaruhnya di seksi',12),(67,5,'Sedang pengaruhnya di seksi',12),(68,10,'Pengaruh yang berarti di seksi ATAU sedikit pengaruh di departemen',12),(69,20,'Sedang pengaruhnya di departemen',12),(70,35,'Pengaruh yang berarti di departemen ATAU sedikit pengaruh di perusahaan',12),(71,55,'Sedang pengaruhnya di perusahaan',12),(72,80,'Pengaruh yang berarti di perusahaan ATAU sedikit pengaruh di Group',12),(73,100,'Sedang pengaruhnya di Group',12),(74,130,'Pengaruh yang berarti di Group',12),(75,1,'Nilai peralatan  tidak lebih dari Rp 200,000.-',13),(76,2,'Nilai peralatan  antara >= Rp 200,000.- sampai < Rp 500,000.-',13),(77,3,'Nilai peralatan  antara >= Rp 500,000.- sampai < Rp 1,500,000.-',13),(78,6,'Nilai peralatan  antara >= Rp 1,500,000.- sampai < Rp 5,000,000.-',13),(79,9,'Nilai peralatan  antara >= Rp 5,000,000.- sampai < Rp 10,000,000.-',13),(80,12,'Nilai peralatan  antara >= Rp 10,000,000.- sampai < Rp 30,000,000.-',13),(81,15,'Nilai peralatan  antara >= Rp 30,000,000.- sampai < Rp 100,000,000.-',13),(82,18,'Nilai peralatan antara >= Rp 100,000,000.- sampai < Rp 300,000,000.-',13),(83,21,'Nilai peralatan  antara >= Rp 300,000,000.- sampai < Rp 1,000,000,000.-',13),(84,24,'Nilai peralatan  antara >= Rp 1,000,000,000.- sampai < Rp 5,000,000,000.-',13),(85,27,'Nilai peralatan  antara >= Rp 5,000,000,000.- sampai < Rp 10,000,000,000.-',13),(86,30,'Nilai peralatan  >= Rp 10,000,000,000.-',13),(87,5,'Kerugian tidak lebih dari Rp 500,000.-',14),(88,10,'Kerugian antara >= Rp 500,000.- sampai < Rp 1,500,000.-',14),(89,15,'Kerugian antara >= Rp 1,500,000.- sampai < Rp 5,000,000.-',14),(90,20,'Kerugian antara >= Rp 5,000,000.- sampai < Rp 15,000,000.-',14),(91,25,'Kerugian antara >= Rp 15,000,000.- sampai < Rp 50,000,000.-',14),(92,30,'Kerugian antara >= Rp 50,000,000.- sampai < Rp 150,000,000.-',14),(93,35,'Kerugian antara >= Rp 150,000,000.- sampai < Rp 500,000,000.-',14),(94,40,'Kerugian antara >= Rp 500,000,000.- sampai < Rp 1,500,000,000.-',14),(95,45,'Kerugian antara >= Rp 1,500,000,000.- sampai < Rp 5,000,000,000.-',14),(96,50,'Kerugian antara >= Rp 5,000,000,000.- sampai < Rp 10,000,000,000.-',14),(97,60,'Kerugian antara >= Rp 10,000,000,000.- sampai < Rp 15,000,000,000.-',14),(98,70,'Kerugian >= Rp 15,000,000,000.-',14),(99,0,'Tidak mengandung salah satu dari factor yang ada sama sekali',15),(100,1,'Mengandung satu dari delapan faktor yang ada',15),(101,2,'Mengandung dua dari delapan faktor yang ada',15),(102,4,'Mengandung tiga dari delapan faktor yang ada',15),(103,6,'Mengandung empat dari delapan faktor yang ada',15),(104,8,'Mengandung lima dari delapan faktor yang ada',15),(105,10,'Mengandung enam dari delapan faktor yang ada',15),(106,12,'Mengandung tujuh dari delapan faktor yang ada',15),(107,15,'Mengandung semua dari delapan faktor yang ada',15),(108,1,'Resiko kecelakaan tidak ada atau sangat kecil',16),(109,10,'Resiko kecelakaan kecil  (dapat disembuhkan)',16),(110,20,'Resiko kecelakaan cukup besar  (dapat mengakibatkan cacat)',16),(111,35,'Resiko kecelakaan sangat besar (dapat mengakibatkan kematian)',16);
/*!40000 ALTER TABLE `detilfaktor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-11 18:21:45
