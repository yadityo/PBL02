-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: warung
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detail_penjualan`
--

DROP TABLE IF EXISTS `detail_penjualan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_penjualan` (
  `No_Jual` varchar(10) NOT NULL,
  `Kode_Produk` varchar(10) NOT NULL,
  `Jumlah` int DEFAULT NULL,
  PRIMARY KEY (`No_Jual`,`Kode_Produk`),
  KEY `Kode_Produk` (`Kode_Produk`),
  CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`No_Jual`) REFERENCES `penjualan` (`No_Jual`),
  CONSTRAINT `detail_penjualan_ibfk_2` FOREIGN KEY (`Kode_Produk`) REFERENCES `produk` (`Kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_penjualan`
--

LOCK TABLES `detail_penjualan` WRITE;
/*!40000 ALTER TABLE `detail_penjualan` DISABLE KEYS */;
INSERT INTO `detail_penjualan` VALUES ('J001','P001',2),('J001','P003',1),('J001','P004',1),('J002','P006',3),('J002','P007',1),('J003','P001',5),('J003','P003',1),('J003','P004',2),('J003','P008',2),('J004','P002',1),('J004','P004',2),('J004','P006',2),('J004','P007',1),('J004','P008',1);
/*!40000 ALTER TABLE `detail_penjualan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelanggan` (
  `Kode` varchar(10) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Kelamin` enum('Pria','Wanita') DEFAULT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `Kota` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
INSERT INTO `pelanggan` VALUES ('PLG01','Mohamad','Pria','Priok','Jakarta'),('PLG02','Naufal','Pria','Cilincing','Jakarta'),('PLG03','Atila','Pria','Bojongsoang','Bandung'),('PLG04','Tsalsa','Wanita','Buah Batu','Bandung'),('PLG05','Damay','Wanita','Gubeng','Surabaya'),('PLG06','Tsaniy','Pria','Darmo','Surabaya'),('PLG07','Nabila','Wanita','Lebak Bulus','Jakarta');
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penjualan`
--

DROP TABLE IF EXISTS `penjualan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penjualan` (
  `No_Jual` varchar(10) NOT NULL,
  `Tgl_Jual` date DEFAULT NULL,
  `Kode_Pelanggan` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`No_Jual`),
  KEY `Kode_Pelanggan` (`Kode_Pelanggan`),
  CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`Kode_Pelanggan`) REFERENCES `pelanggan` (`Kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penjualan`
--

LOCK TABLES `penjualan` WRITE;
/*!40000 ALTER TABLE `penjualan` DISABLE KEYS */;
INSERT INTO `penjualan` VALUES ('J001','2025-09-08','PLG03'),('J002','2025-09-08','PLG07'),('J003','2025-09-09','PLG02'),('J004','2025-09-10','PLG05');
/*!40000 ALTER TABLE `penjualan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produk`
--

DROP TABLE IF EXISTS `produk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produk` (
  `Kode` varchar(10) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Satuan` varchar(50) DEFAULT NULL,
  `Stok` int DEFAULT NULL,
  `Harga` int DEFAULT NULL,
  PRIMARY KEY (`Kode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produk`
--

LOCK TABLES `produk` WRITE;
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` VALUES ('P001','Indomie','Bungkus',10,3000),('P002','Roti','Pak',3,18000),('P003','Kecap','Botol',8,4700),('P004','Saos Tomat','Botol',8,5800),('P005','Bihun','Bungkus',5,3500),('P006','Sikat Gigi','Pak',5,15000),('P007','Pasta Gigi','Pak',7,10000),('P008','Saos Sambal','Botol',5,7300);
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_penjualan_lengkap`
--

DROP TABLE IF EXISTS `vw_penjualan_lengkap`;
/*!50001 DROP VIEW IF EXISTS `vw_penjualan_lengkap`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_penjualan_lengkap` AS SELECT 
 1 AS `No_Jual`,
 1 AS `Tgl_Jual`,
 1 AS `Nama_Pelanggan`,
 1 AS `Nama_Produk`,
 1 AS `Jumlah`,
 1 AS `Harga`,
 1 AS `Total_Harga`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_penjualan_lengkap`
--

/*!50001 DROP VIEW IF EXISTS `vw_penjualan_lengkap`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_penjualan_lengkap` AS select `pj`.`No_Jual` AS `No_Jual`,`pj`.`Tgl_Jual` AS `Tgl_Jual`,`plg`.`Nama` AS `Nama_Pelanggan`,`prd`.`Nama` AS `Nama_Produk`,`dp`.`Jumlah` AS `Jumlah`,`prd`.`Harga` AS `Harga`,(`dp`.`Jumlah` * `prd`.`Harga`) AS `Total_Harga` from (((`penjualan` `pj` join `pelanggan` `plg` on((`pj`.`Kode_Pelanggan` = `plg`.`Kode`))) join `detail_penjualan` `dp` on((`pj`.`No_Jual` = `dp`.`No_Jual`))) join `produk` `prd` on((`dp`.`Kode_Produk` = `prd`.`Kode`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-19  8:38:18
