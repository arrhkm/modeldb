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
-- Dumping data for table `hkmmasterpermit`
--

LOCK TABLES `hkmmasterpermit` WRITE;
/*!40000 ALTER TABLE `hkmmasterpermit` DISABLE KEYS */;
INSERT INTO `hkmmasterpermit` VALUES ('AL01','Alpha',6,'Tidak masuk tanpa ijin'),('CT01','Cuti tahunan',1,'Memotong jatah cuti 1 hari (laman 1 tahun ada 12 hari jatah cuti)'),('CT02','Cuti hamil',2,'Cuti max 3 bulan setelah kelahiran '),('IJ01','Ijin khusus dispensasi',4,'Tidak memotong Cuti, bersifat seperti cuti'),('IJ02','Ijin datang terlambat atau pulang cepat',5,'Memotong premi hadir '),('SK01','ijin Sakit dengan surat dokter',3,'Ijin disertai adanya surat dokter sebagai bukti bahwa yang bersangkutan medapatkan hak untuk istirahat selama masa penyembuhan');
/*!40000 ALTER TABLE `hkmmasterpermit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-15 18:37:47
