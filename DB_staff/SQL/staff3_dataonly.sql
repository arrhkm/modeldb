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
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (2,'S15280','2015-10-22'),(3,'S15282','2015-11-25'),(5,'S13210','2015-11-25'),(6,'S09063','2015-11-25'),(7,'S15283','2015-12-29'),(9,'S03005','2016-01-25'),(10,'S16291','2016-04-11'),(3001,'S02004','2015-07-30'),(3003,'S04006','2015-07-31'),(3004,'S04007','2015-07-31'),(3005,'S04008','2015-07-31'),(3006,'S05009','2015-07-30'),(3007,'S05010','2015-07-31'),(3008,'S05013','2015-07-30'),(3009,'S05015','2015-07-31'),(3010,'S05019','2015-07-30'),(3012,'S06021','2015-07-31'),(3013,'S06023','2015-07-30'),(3014,'S06024','2015-07-30'),(3015,'S06027','2015-07-31'),(3016,'S06030','2015-07-31'),(3017,'S07032','2015-07-31'),(3018,'S07034','2015-07-30'),(3019,'S07035','2015-07-30'),(3020,'S08041','2015-07-30'),(3021,'S08042','2015-07-30'),(3022,'S08043','2015-07-31'),(3023,'S08044','2015-07-30'),(3024,'S08047','2015-07-30'),(3025,'S08048','2015-07-30'),(3026,'S08049','2015-07-30'),(3027,'S08052','2015-07-31'),(3028,'S08054','2015-07-31'),(3029,'S08057','2015-07-30'),(3030,'S08058','2015-07-30'),(3032,'S09065','2015-07-31'),(3033,'S09070','2015-07-30'),(3035,'S09074','2015-07-30'),(3037,'S09078','2015-07-30'),(3040,'S10091','2015-07-30'),(3041,'S10094','2015-07-30'),(3042,'S11103','2015-07-30'),(3043,'S11108','2015-07-31'),(3044,'S11110','2015-07-31'),(3045,'S11117','2015-07-30'),(3046,'S11123','2015-07-31'),(3048,'S11133','2015-07-30'),(3049,'S11134','2015-07-30'),(3050,'S11140','2015-07-31'),(3052,'S11142','2015-07-31'),(3053,'S11148','2015-07-30'),(3054,'S11149','2015-07-31'),(3055,'S11152','2015-07-30'),(3056,'S11158','2015-07-31'),(3057,'S11159','2015-07-31'),(3058,'S11162','2015-07-30'),(3059,'S11165','2015-07-31'),(3062,'S12181','2015-07-31'),(3063,'S12187','2015-07-31'),(3064,'S12189','2015-07-30'),(3065,'S12194','2015-07-30'),(3066,'S13200','2015-07-30'),(3068,'S13206','2015-07-31'),(3069,'S13208','2015-07-30'),(3070,'S13209','2015-07-30'),(3072,'S13213','2015-07-31'),(3073,'S13219','2015-07-30'),(3074,'S13224','2015-07-30'),(3075,'S14231','2015-07-31'),(3076,'S14233','2015-07-30'),(3077,'S14235','2015-07-31'),(3078,'S14239','2015-07-30'),(3079,'S14243','2015-07-31'),(3080,'S14246','2015-07-31'),(3081,'S14252','2015-07-30'),(3082,'S14264','2015-07-30'),(3083,'S14265','2015-07-30');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `departement`
--

LOCK TABLES `departement` WRITE;
/*!40000 ALTER TABLE `departement` DISABLE KEYS */;
INSERT INTO `departement` VALUES (1,'HRD'),(2,'HSE');
/*!40000 ALTER TABLE `departement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detilfaktor`
--

LOCK TABLES `detilfaktor` WRITE;
/*!40000 ALTER TABLE `detilfaktor` DISABLE KEYS */;
INSERT INTO `detilfaktor` VALUES (1,5,'SMP, Sekolah Kejuruan Tingkat Pertama',1),(2,15,'SMA, Sekolah Kejuruan Tingkat Atas',1),(3,25,'Diploma III',1),(4,35,'S1',1),(5,45,'S2',1),(6,5,'Sampai dengan 6 bulan',2),(7,10,'Antara > dari 6 bulan sampai dengan =< dari 1 tahun',2),(8,15,'Antara > dari 1 tahun sampai dengan =< dari 3 tahun',2),(9,25,'Antara > dari 3 tahun sampai dengan =< dari 5 tahun',2),(10,35,'Antara > dari 5 tahun sampai dengan =< dari 7 tahun',2),(11,45,'Antara > dari 7 tahun sampai dengan =< dari 10 tahun',2),(12,55,'Antara > dari 10 tahun sampai dengan =< dari 15 tahun',2),(13,65,'Lebih dari 15 tahun',2),(14,5,'Diperlukan pengetahuan mengenai kegiatan/fungsi-fungsi area lain di dalam dept.',3),(15,10,'Sedikit pengetahuan diperlukan untuk kegiatan/fungsi-fungsi area lain di dalam dan di luar dept.',3),(16,20,'Pengetahuan yang baik diperlukan untuk kegiatan/fungsi-fungsi area lain di dalam dan luar dept.',3),(17,30,'Pengetahuan menyeluruh untuk kegiatan/fungsi2 area di dalam perusahaan & informasi domestik',3),(18,40,'Pengetahuan menyeluruh mengenai grup serta informasi domestik & internasional',3),(19,0,'0',4),(20,10,'1 - 4',4),(21,20,'5 - 10',4),(22,30,'11 - 50',4),(23,40,'51 - 200',4),(24,50,'201 - 1,000',4),(25,60,'1,001 - 5,000',4),(26,0,'Lainnya',5),(27,10,'Spesialis',5),(28,20,'Manajer',5),(29,30,'General Manajer',5),(30,0,'Tidak ada',6),(31,20,'Interaksi di dalam perusahaan',6),(32,40,'Interaksi di dalam corporate (group)',6),(33,60,'Interaksi di dalam group (corporate) dan di luar group (corporate)',6),(34,1,'Tidak ada',7),(35,15,'Informasi / Tujuan koordinasi',7),(36,30,'Hubungan di dalam perusahaan dimana diperlukan negosiasi dan konfrontasi',7),(37,45,'Hubungan di luar perusahaan dengan Wawancara, pembelian, pengiklanan, dan hubungan tehnik',7),(38,60,'Hubungan di luar perusahaan dimana diperlukan negosiasi dan konfrontasi',7),(39,1,'Dalam menjalankan tugasnya, harus diawasi secara terus menerus',8),(40,10,'Sejumlah instruksi diberikan dengan pemeriksaan jangka pendek',8),(41,25,'Tujuan khusus diberikan dengan pemeriksaan terhadap checkpoint saja',8),(42,45,'Petunjuk umum diberikan dan dilakukan pemeriksaan diakhir pekerjaan',8),(43,65,'Pengukuran pelaksanaan tugas dilihat dari pencapaian tujuan perusahaan (unit)',8),(44,90,'Pengukuran dilihat dari pencapaian tujuan korporasi ( Corporate )',8),(45,1,'Rutin, Mudah',9),(46,10,'Sedikit sulit, tapi instruksi tersedia',9),(47,25,'Kesulitan sedang, diperlukan analisa',9),(48,45,'Sulit, masalah harus di definisikan dan di analisa',9),(49,70,'Sangat sulit, penyelidikan menyeluruh dan melibatkan beberapa bagian perusahaan',9),(50,100,'Teramat sulit, melibatkan beberapa perusahaan',9),(51,1,'Rutin dan tugas yang berulang',10),(52,10,'Pengawasan kegiatan yang sama di dalam area fungsional/departemen',10),(53,20,'Pengawasan kegiatan yang berlainan di dalam area fungsional/departemen',10),(54,30,'Mengelola sebuah area fungsional/departemen',10),(55,40,'Mengelola dua atau lebih area fungsional/departemen',10),(56,55,'Mengelola satu perusahaan dengan satu produk besar atau satu pabrik',10),(57,70,'Mengelola sebuah perusahaan dengan dua produk besar atau beberapa pabrik',10),(58,90,'Mengelola lebih dari satu perusahaan dengan tiga atau lebih produk besar atau beberapa pabrik',10),(59,1,'Tidak memerlukan pengembangan',11),(60,5,'Peningkatan biasa menggunakan teknik yang sudah ada',11),(61,15,'Peningkatan / pembaharuan dari metode dan tehnik yang memerlukan pengertian antar fungsi',11),(62,30,'Pengembangan metode & tehnik baru yg secara nyata meningkatkan efisiensi perusahaan',11),(63,50,'Menciptakan metode & cara kerja baru menggunakan ide-ide dari luar',11),(64,80,'Pengembangan konsep baru dan pendekatan yang imajinatif',11),(65,0,'Sangat sedikit pengaruhnya di seksi',12),(66,1,'Sedikit pengaruhnya di seksi',12),(67,5,'Sedang pengaruhnya di seksi',12),(68,10,'Pengaruh yang berarti di seksi ATAU sedikit pengaruh di departemen',12),(69,20,'Sedang pengaruhnya di departemen',12),(70,35,'Pengaruh yang berarti di departemen ATAU sedikit pengaruh di perusahaan',12),(71,55,'Sedang pengaruhnya di perusahaan',12),(72,80,'Pengaruh yang berarti di perusahaan ATAU sedikit pengaruh di Group',12),(73,100,'Sedang pengaruhnya di Group',12),(74,130,'Pengaruh yang berarti di Group',12),(75,1,'Nilai peralatan  tidak lebih dari Rp 200,000.-',13),(76,2,'Nilai peralatan  antara >= Rp 200,000.- sampai < Rp 500,000.-',13),(77,3,'Nilai peralatan  antara >= Rp 500,000.- sampai < Rp 1,500,000.-',13),(78,6,'Nilai peralatan  antara >= Rp 1,500,000.- sampai < Rp 5,000,000.-',13),(79,9,'Nilai peralatan  antara >= Rp 5,000,000.- sampai < Rp 10,000,000.-',13),(80,12,'Nilai peralatan  antara >= Rp 10,000,000.- sampai < Rp 30,000,000.-',13),(81,15,'Nilai peralatan  antara >= Rp 30,000,000.- sampai < Rp 100,000,000.-',13),(82,18,'Nilai peralatan antara >= Rp 100,000,000.- sampai < Rp 300,000,000.-',13),(83,21,'Nilai peralatan  antara >= Rp 300,000,000.- sampai < Rp 1,000,000,000.-',13),(84,24,'Nilai peralatan  antara >= Rp 1,000,000,000.- sampai < Rp 5,000,000,000.-',13),(85,27,'Nilai peralatan  antara >= Rp 5,000,000,000.- sampai < Rp 10,000,000,000.-',13),(86,30,'Nilai peralatan  >= Rp 10,000,000,000.-',13),(87,5,'Kerugian tidak lebih dari Rp 500,000.-',14),(88,10,'Kerugian antara >= Rp 500,000.- sampai < Rp 1,500,000.-',14),(89,15,'Kerugian antara >= Rp 1,500,000.- sampai < Rp 5,000,000.-',14),(90,20,'Kerugian antara >= Rp 5,000,000.- sampai < Rp 15,000,000.-',14),(91,25,'Kerugian antara >= Rp 15,000,000.- sampai < Rp 50,000,000.-',14),(92,30,'Kerugian antara >= Rp 50,000,000.- sampai < Rp 150,000,000.-',14),(93,35,'Kerugian antara >= Rp 150,000,000.- sampai < Rp 500,000,000.-',14),(94,40,'Kerugian antara >= Rp 500,000,000.- sampai < Rp 1,500,000,000.-',14),(95,45,'Kerugian antara >= Rp 1,500,000,000.- sampai < Rp 5,000,000,000.-',14),(96,50,'Kerugian antara >= Rp 5,000,000,000.- sampai < Rp 10,000,000,000.-',14),(97,60,'Kerugian antara >= Rp 10,000,000,000.- sampai < Rp 15,000,000,000.-',14),(98,70,'Kerugian >= Rp 15,000,000,000.-',14),(99,0,'Tidak mengandung salah satu dari factor yang ada sama sekali',15),(100,1,'Mengandung satu dari delapan faktor yang ada',15),(101,2,'Mengandung dua dari delapan faktor yang ada',15),(102,4,'Mengandung tiga dari delapan faktor yang ada',15),(103,6,'Mengandung empat dari delapan faktor yang ada',15),(104,8,'Mengandung lima dari delapan faktor yang ada',15),(105,10,'Mengandung enam dari delapan faktor yang ada',15),(106,12,'Mengandung tujuh dari delapan faktor yang ada',15),(107,15,'Mengandung semua dari delapan faktor yang ada',15),(108,1,'Resiko kecelakaan tidak ada atau sangat kecil',16),(109,10,'Resiko kecelakaan kecil  (dapat disembuhkan)',16),(110,20,'Resiko kecelakaan cukup besar  (dapat mengakibatkan cacat)',16),(111,35,'Resiko kecelakaan sangat besar (dapat mengakibatkan kematian)',16);
/*!40000 ALTER TABLE `detilfaktor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES ('BRP001','Luluk Aryuni','f','2015-01-02',0,NULL,'','','','','luluk@brp.co.id',0,'',NULL),('S02004','Imam Wahyudi','m','0000-00-00',1,'0000-00-00','','','68147796','','imam@lintech.co.id',0,NULL,NULL),('S03005','Ahmad Zarkarsi','m','0000-00-00',0,'0000-00-00','','','69184410','','zarkarsi@lintech.co.id',0,NULL,NULL),('S04006','Jonny Asra','m','0000-00-00',0,'0000-00-00','','','54295401','','jonny_asra@lintech.co.id',0,NULL,NULL),('S04007','Tatuk Bargijono','m','0000-00-00',0,'0000-00-00','','','68147275','','tatuk@lintech.co.id',0,NULL,NULL),('S04008','Ahmad Fudholi','m','0000-00-00',0,'0000-00-00','','','68145755','','ahmad_fudholi@lintech.co.id',0,NULL,NULL),('S05009','Yuri Widyastuti','f','0000-00-00',0,'0000-00-00','','','68650440','','accounting_staff@lintech.co.id',0,NULL,NULL),('S05010','Adi Irmantyo','m','0000-00-00',0,'0000-00-00','','','68145483','','adi_irmantyo@lintech.co.id',0,NULL,NULL),('S05013','Kuncoro','m','0000-00-00',0,'0000-00-00','','','85085883','','',0,NULL,NULL),('S05015','Rianto Halim','','0000-00-00',0,'0000-00-00','','','0222664482','','rianto_halim@lintech.co.id',0,NULL,1),('S05019','Neni Rahayu','f','0000-00-00',0,'0000-00-00','Surabaya','','105153969','','neni@lintech.co.id',0,NULL,1),('S06021','Dicky Hari Joko Irawan','m','0000-00-00',0,'0000-00-00','','','105132520','','dicky@lintech.co.id',0,NULL,NULL),('S06023','Nia Nelviza','f','0000-00-00',0,'0000-00-00','','','0182730186','','nia_nelviza@lintech.co.id',0,NULL,NULL),('S06024','Nur Aini','f','0000-00-00',0,'0000-00-00','','','105155220','','accounting_head@lintech.co.id',0,NULL,NULL),('S06026','Ahmad','m','0000-00-00',0,'0000-00-00','','','105155843','','ahmad@lintech.co.id',0,NULL,NULL),('S06027','Hendro Susilo','m','0000-00-00',0,'0000-00-00','','','108208566','','hendro@lintech.co.id',0,NULL,NULL),('S06030','Daniel Ariefin Soendjoto','m','0000-00-00',0,'0000-00-00','','','345276239','','d.ariefin@lintech.co.id',0,NULL,NULL),('S07032','Muhammad Nadzir Zaini','m','0000-00-00',0,'0000-00-00','','','118091893','','',0,NULL,NULL),('S07034','Mochmmad Arifin','m','0000-00-00',0,'0000-00-00','','','0132858742','','arifin@lintech.co.id',0,NULL,NULL),('S07035','Pudji Arijadi','','0000-00-00',0,'0000-00-00','','','0136701819','','pudji@lintech.co.id',0,NULL,NULL),('S08041','Nizma Hasbiyasari','P','0000-00-00',0,'0000-00-00','','','','','nizma@lintech.co.id',0,'',NULL),('S08042','Dessy Nurmasari','','0000-00-00',0,'0000-00-00','','','','','dessy@lintech.co.id',0,NULL,NULL),('S08043','Nefertitie Anggen','','0000-00-00',0,'0000-00-00','','','','','evie@lintech.co.id',0,NULL,NULL),('S08044','Benny Kurniawan','','0000-00-00',0,'0000-00-00','','','','','benny@lintech.co.id',0,NULL,NULL),('S08047','Haryono','','0000-00-00',0,'0000-00-00','','','','','haryono@lintech.co.id',0,NULL,NULL),('S08048','Arlika Widya Manggar Sari','','0000-00-00',0,'0000-00-00','','','','','arlika@lintech.co.id',0,NULL,NULL),('S08049','Anita Yuliana','','0000-00-00',0,'0000-00-00','','','','','anita@lintech.co.id',0,NULL,NULL),('S08052','Khushoyin','','0000-00-00',0,'0000-00-00','','','','','soyin@lintech.co.id',0,NULL,NULL),('S08054','Ari Susanto','','0000-00-00',0,'0000-00-00','','','','','ary_susanto@lintech.co.id',0,NULL,NULL),('S08057','R. Ichwanul Hakim','','0000-00-00',0,'0000-00-00','','','','','ichwan_hakim@lintech.co.id',0,NULL,1),('S08058','Agus Budiono','','0000-00-00',0,'0000-00-00','','','','','agus_b@lintech.co.id',0,NULL,NULL),('S09063','Ahmad Zainuddin','m','0000-00-00',0,'2017-02-02','','','','','',0,NULL,NULL),('S09065','Akhmad Zamroni','','0000-00-00',0,'0000-00-00','','','','','zamroni@lintech.co.id',0,NULL,NULL),('S09070','Andri Hermawan','','0000-00-00',0,'2015-06-01','','','','','andri_hermawan@lintech.co.id',0,NULL,NULL),('S09074','Novi Kurniawan','','0000-00-00',0,'2016-03-18','','','','','novi@lintech.co.id',0,NULL,NULL),('S09078','Muhammad Arraf Hakam','f','0000-00-00',1,'0000-00-00','','','','','hakam@lintech.co.id',0,NULL,1),('S10086','Yulianto Noor Hidayat','','0000-00-00',0,'2016-08-08','','','','','yulianto@lintech.co.id',0,NULL,NULL),('S10091','Made Astawa Adi Dharma','','0000-00-00',0,'0000-00-00','','','','','made_aad@lintech.co.id',0,NULL,NULL),('S10094','Bondan Cahyadi','','0000-00-00',0,'2015-08-22','','','','','bondan@lintech.co.id',0,NULL,1),('S11103','Abdul Syakur','','0000-00-00',0,'2015-04-30','','','','','saqur@lintech.co.id',0,NULL,NULL),('S11108','Agus Rohadi Wibowo','','0000-00-00',0,'2015-03-17','','','','','agus_rw@lintech.co.id',0,NULL,NULL),('S11109','Arif Sujono Hadi Saputro','','0000-00-00',0,'0000-00-00','','','','','arif_soejono@lintech.co.id',0,NULL,NULL),('S11110','Agus Hermawan','','0000-00-00',0,'0000-00-00','','','','','agus_hermawan@lintech.co.id',0,NULL,NULL),('S11117','David Kurniawan','m','0000-00-00',0,'2016-01-18','','','','','david_kurniawan@lintech.co.id',0,NULL,NULL),('S11123','Andhita Raheng Permadhi','','0000-00-00',0,'2015-02-19','','','','','raheng.permadhi@lintech.co.id',0,NULL,NULL),('S11133','Agung Joko Purnomo','','0000-00-00',0,'2014-12-10','','','','','agung@lintech.co.id',0,NULL,NULL),('S11134','Satriyo Luhur Prasetyo','','0000-00-00',0,'2015-06-15','','','','','satriyo@lintech.co.id',0,NULL,NULL),('S11140','Ilham','','0000-00-00',0,'2015-10-01','','','','','ilham@lintech.co.id',0,NULL,NULL),('S11142','Zulfikar Rusdi Firmansyah','','0000-00-00',0,'0000-00-00','','','','','zulfikar@lintech.co.id',0,NULL,NULL),('S11148','Choirul Huda','','0000-00-00',0,'2015-04-14','','','','','choirul_huda@lintech.co.id',0,NULL,NULL),('S11149','Yuniati','','0000-00-00',0,'2016-10-07','','','','','hse@lintech.co.id',0,NULL,2),('S11152','Anthon Widodo','','0000-00-00',0,'2016-05-01','','','','','anthon@lintech.co.id',0,NULL,NULL),('S11158','Exiardhi Sri Wiyono Aji','','0000-00-00',0,'2015-06-07','','','','','exiardhi@lintech.co.id',0,NULL,2),('S11159','Naharis Salam','','0000-00-00',0,'0000-00-00','','','','','naharis@lintech.co.id',0,NULL,NULL),('S11162','Peni Choidjah','','0000-00-00',0,'2015-08-01','','','','','peni@lintech.co.id',0,NULL,NULL),('S11165','Muhammad Hoir','','0000-00-00',0,'2016-05-17','','','','','hoir@lintech.co.id',0,NULL,NULL),('S12173','Awik Priono','','0000-00-00',0,'2015-04-17','','','','','awik@lintech.co.id',0,NULL,NULL),('S12176','Sugeng Cahyo Wiyono','','0000-00-00',0,'2016-02-01','','','','','sugeng@lintech.co.id',0,NULL,2),('S12181','Asnan Wijaya','','0000-00-00',0,'0000-00-00','','','','','asnan@lintech.co.id',0,NULL,NULL),('S12183','Media Lestika Sari','f','0000-00-00',0,'2015-07-08','','','','','media@lintech.co.id',0,NULL,NULL),('S12187','Yudha Anggara','','0000-00-00',0,'2017-02-01','','','','','yudha@lintech.co.id',0,NULL,NULL),('S12189','Winda Sulistiana','','0000-00-00',0,'2015-06-04','','','','','winda@lintech.co.id',0,NULL,NULL),('S12194','Siwi Dwi Lestari','','0000-00-00',0,'2016-05-01','','','','','siwi@lintech.co.id',0,NULL,NULL),('S13198','Achmad Syaiful Faried','m','0000-00-00',0,'2015-05-15','','','','','',0,NULL,NULL),('S13200','Made Endra Purwata','','0000-00-00',0,'2016-02-08','','','','','made_endra@lintech.co.id',0,NULL,NULL),('S13206','Heru Darmawan','','0000-00-00',0,'2015-06-02','','','','','heru_darmawan@lintech.co.id',0,NULL,NULL),('S13208','Andry Widya Putra','m','2013-03-15',0,'2015-04-09','','','','','andre@lintech.co.id',0,NULL,1),('S13209','Dian Agustina Retnowati','','0000-00-00',0,'2015-06-16','','','','','dian_agustina@lintech.co.id',0,NULL,NULL),('S13210','M Saiful Hidayat','','0000-00-00',0,'2015-02-15','','','','','',0,NULL,NULL),('S13213','Handy Susanto','','0000-00-00',0,'2015-07-30','','','','','handhy@lintech.co.id',0,NULL,NULL),('S13218','Endro Budiono','m','0000-00-00',0,'0000-00-00','','','','','endro_budiono@lintech.co.id',0,NULL,NULL),('S13219','Zudva Widiaranma Putri','','0000-00-00',0,'2015-02-11','','','','','zudva@lintech.co.id',0,NULL,NULL),('S13220','Abdul Majid','','0000-00-00',0,'2015-03-03','','','','','majid@lintech.co.id',0,NULL,NULL),('S13223','Heri Kurniawan','m','0000-00-00',0,'0000-00-00','','','','','heri@lintech.co.id',0,NULL,NULL),('S13224','Noval Robiq','','0000-00-00',0,'2014-12-16','','','','','noval@lintech.co.id',0,NULL,NULL),('S14231','Sugiono Setiawan','','0000-00-00',0,'2015-03-03','','','','','sugiono_setiawan@lintech.co.id',0,NULL,NULL),('S14233','Shafarudin Shafar','','0000-00-00',0,'2016-06-05','','','','','shafarudin@lintech.co.id',0,NULL,NULL),('S14235','M Irfan Samsu Nuhan','','0000-00-00',0,'2015-06-03','','','','','irfan_nuhan@lintech.co.id',0,NULL,NULL),('S14239','Rina Buawan Fatmawati','','0000-00-00',0,'2015-06-18','','','','','rina@lintech.co.id',0,NULL,NULL),('S14243','Dede Afrianto','','0000-00-00',0,'2015-06-24','','','','','dede_afrianto@lintech.co.id',0,NULL,NULL),('S14246','Akhmad Hisyam','m','2014-04-07',0,'2015-01-07','Malang','','','','hisyam@lintech.co.id',0,NULL,NULL),('S14252','Sugiarto','','0000-00-00',0,'2016-01-28','','','','','sugiarto@lintech.co.id',0,NULL,NULL),('S14256','Wahyu Diah Aliani','','0000-00-00',0,'0000-00-00','','','','','',0,NULL,NULL),('S14260','Agus Sigit Susanto','','0000-00-00',0,'0000-00-00','','','','','agus_santoso@lintech.co.id',0,NULL,NULL),('S14264','Istianah','','0000-00-00',0,'2015-06-06','','','','','isti@lintech.co.id',0,NULL,NULL),('S14265','Indah Heriningrum','','0000-00-00',0,'2015-08-04','','','','','indah@lintech.co.id',0,NULL,NULL),('S14269','Agus Santoso','m','2014-11-21',1,'2015-05-21','Indonesia','0','0','0','agus_santoso@lintech.co.id',0,NULL,NULL),('S15274','Achmad Faizal','m','2015-03-09',1,'2015-06-09','','','','','achmad_faizal@lintech.co.id',0,NULL,NULL),('S15280','Dewi Ari Cahyanti','f','2015-10-12',1,'2016-01-12','Indonesia','','','','dewiaricahyanti@gmail.com',0,NULL,NULL),('S15282','Muhammad Reza Al Haq','m','0000-00-00',0,'0000-00-00','','','','','muhammad.reza@ymail.com',0,NULL,NULL),('S15283','Nurma Virgian Masudiana','f','0000-00-00',0,'0000-00-00','','','','','nurma@lintech.co.id',0,NULL,NULL),('S16291','Muhammad Yusuf','m','0000-00-00',0,'0000-00-00','Indonesia','','','','yusuf@lintech.co.id',0,'',NULL),('S16292','Thoriq M Azam','m','0000-00-00',0,'0000-00-00','','','','','azam@lintech.co.id',0,'',NULL);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `faktor`
--

LOCK TABLES `faktor` WRITE;
/*!40000 ALTER TABLE `faktor` DISABLE KEYS */;
INSERT INTO `faktor` VALUES (1,'Tingkat Pendidikan'),(2,'Pengalaman Training'),(3,'Pengetahuan dalam bidang pekerjaan'),(4,'Jumlah Bawahan'),(5,'Jenis Bawahan'),(6,'Luas Interaksi dengan orang lain selain atasan langsung dan bawahan langsung'),(7,'Jenis atau tujuan dari keperluan hubungan'),(8,'Pengukuran pelaksanaan tugas'),(9,'Tingkat Kesulitan dari Pemecahan Masalah'),(10,'Ruang Lingkup Tanggung Jawab'),(11,'Tanggung Jawab Inovasi atau Pembaharuan'),(12,'Pengaruh dari Pengambilan Keputusan'),(13,'Nilai dari Peralatan'),(14,'Kerugian yg timbul akibat pekerjaan thdp bahan baku, peralatan kerja,mesin, data & informasi'),(15,'Lingkungan Kerja'),(16,'Resiko Kerja');
/*!40000 ALTER TABLE `faktor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
INSERT INTO `manage` VALUES ('S09078',1),('S11149',2);
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `officetime`
--

LOCK TABLES `officetime` WRITE;
/*!40000 ALTER TABLE `officetime` DISABLE KEYS */;
INSERT INTO `officetime` VALUES (1,'Standart','08:05:59','17:00:00','03:00:00','15:59:00','17:00:00','24:59:00');
/*!40000 ALTER TABLE `officetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `officetimeemp`
--

LOCK TABLES `officetimeemp` WRITE;
/*!40000 ALTER TABLE `officetimeemp` DISABLE KEYS */;
/*!40000 ALTER TABLE `officetimeemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `periodebulan`
--

LOCK TABLES `periodebulan` WRITE;
/*!40000 ALTER TABLE `periodebulan` DISABLE KEYS */;
INSERT INTO `periodebulan` VALUES (1,'2015-12-22','2016-01-21',2016),(2,'2016-01-22','2016-01-21',2016),(3,'2016-02-22','2016-03-21',2016),(4,'2016-03-22','2016-04-21',2016),(5,'2016-04-22','2016-05-21',2016),(6,'2016-05-22','2016-06-21',2016),(7,'2016-06-22','2016-07-21',2016),(8,'2016-07-22','2016-08-21',2016);
/*!40000 ALTER TABLE `periodebulan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `periodetahun`
--

LOCK TABLES `periodetahun` WRITE;
/*!40000 ALTER TABLE `periodetahun` DISABLE KEYS */;
INSERT INTO `periodetahun` VALUES (2016,'Tahun 2016');
/*!40000 ALTER TABLE `periodetahun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','YaUMSd3Kjr30m9h800Ex0rvA0loS9qm3','$2y$13$aWew5.iYCzt8JkRnIr2upeTC5ySGkChqt5HH3MQqDCSSXg46.OQTi',NULL,'admin@lintech.co.id',10,1458111829,1458111829,NULL,1),(15,'andre','i3ikN46RxPqZwqzmdhKQi-peAgd2XaAH','$2y$13$hdj0MkfnGUyfmbLrCg2kduzacUft7Lz4XkudznZK9XsPc7QdUF15W',NULL,'andre@lintech.co.id',10,1458720997,1458720997,'S13208',2),(17,'exiardhi','rQwfJgAdHDSGny9mTzXIy50gXWMgDgXR','$2y$13$aWew5.iYCzt8JkRnIr2upeTC5ySGkChqt5HH3MQqDCSSXg46.OQTi',NULL,'exiardhi@lintech.co.id',10,1459069692,1459069692,'S11158',2),(18,'hakam','VSZnXlUbih4pNAeb-Ms6SYfQgod1HJIP','$2y$13$aWew5.iYCzt8JkRnIr2upeTC5ySGkChqt5HH3MQqDCSSXg46.OQTi',NULL,'hakam@lintech.co.id',10,1459399666,1459399666,'S09078',2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-15 19:21:19
