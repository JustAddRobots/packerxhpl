-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: xhplconsole
-- ------------------------------------------------------
-- Server version	10.5.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `xhpltest`
--

DROP TABLE IF EXISTS `xhpltest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xhpltest` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `uuid` char(36) DEFAULT NULL,
  `serial_num` varchar(64) DEFAULT NULL,
  `log_id` varchar(40) DEFAULT NULL,
  `cpu_vendor` varchar(32) DEFAULT NULL,
  `cpu_family_model_stepping` text DEFAULT NULL,
  `cpu_core_count` int(4) DEFAULT NULL,
  `cpu_flags` text DEFAULT NULL,
  `lscpu` longtext DEFAULT NULL,
  `cpuinfo` longtext DEFAULT NULL,
  `dmidecode` longtext DEFAULT NULL,
  `meminfo` longtext DEFAULT NULL,
  `test_name` varchar(32) DEFAULT NULL,
  `test_cmd` text DEFAULT NULL,
  `time_start` datetime DEFAULT NULL,
  `time_end` datetime DEFAULT NULL,
  `test_params` longtext DEFAULT NULL,
  `test_metric` varchar(32) DEFAULT NULL,
  `test_status` varchar(16) DEFAULT NULL,
  `test_log` mediumtext DEFAULT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-16 16:51:52
