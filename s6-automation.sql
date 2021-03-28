-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: s6_automation
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Dumping data for table `employees`
--

/*!40000 ALTER TABLE employees DISABLE KEYS */;
INSERT INTO employees VALUES (1,'Stephanie','Hoang','(609) 816-8665','stephanie.hoang.mil@mail.mil',3);
INSERT INTO employees VALUES (2,'Tyler','Frazier','(609) 816-8863','tyler.frazier.mil@mail.mil',2);
INSERT INTO employees VALUES (3,'Geron','Smart','(609) 815-8874','geron.smart.mil@mail.mil',2);
INSERT INTO employees VALUES (4,'Georgia','Varoucha','(609) 818-8573','georgia.varoucha.mil@mail.mil',1);
INSERT INTO employees VALUES (5,'Edwin','Reyes','(609) 815-3255','edwin.reyes.mil@mail.mil',1);
INSERT INTO employees VALUES (6,'Ralph','Bird','(609) 819-8811','ralph.bird.mil@mail.mil',3);
/*!40000 ALTER TABLE employees ENABLE KEYS */;

--
-- Dumping data for table `handreceipt`
--

/*!40000 ALTER TABLE handreceipt DISABLE KEYS */;
/*!40000 ALTER TABLE handreceipt ENABLE KEYS */;

--
-- Dumping data for table `inventory`
--

/*!40000 ALTER TABLE inventory DISABLE KEYS */;
INSERT INTO inventory VALUES (1,'GDELF2OU',1);
INSERT INTO inventory VALUES (2,'6VQZPIGN',1);
INSERT INTO inventory VALUES (3,'QWR1KWUF',1);
INSERT INTO inventory VALUES (4,'DTWJSZDHH5',2);
INSERT INTO inventory VALUES (5,'36T8KP2W4E',2);
INSERT INTO inventory VALUES (6,'QFFMVDEAKL',2);
INSERT INTO inventory VALUES (7,'7973MR1H',3);
INSERT INTO inventory VALUES (8,'6E2DLJTX',3);
INSERT INTO inventory VALUES (9,'WDUX0XUT',3);
INSERT INTO inventory VALUES (10,'7973MR1H',3);
/*!40000 ALTER TABLE inventory ENABLE KEYS */;

--
-- Dumping data for table `office`
--

/*!40000 ALTER TABLE office DISABLE KEYS */;
INSERT INTO office VALUES (1,'117th CSB Battalion','625 Main Street','NJ','Woodbridge','07095');
INSERT INTO office VALUES (2,'42nd HQ RSG ','1060 Hamilton Street','NJ','Somerset','08873');
INSERT INTO office VALUES (3,'RU Army ROTC','157 College Ave','NJ','New Brunswick','08901');
/*!40000 ALTER TABLE office ENABLE KEYS */;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE product DISABLE KEYS */;
INSERT INTO product VALUES (1,'Apple Iphone XS','Phone');
INSERT INTO product VALUES (2,'Dell Latitude 5290','Computer');
INSERT INTO product VALUES (3,'Lexmark MS 821','Printer');
/*!40000 ALTER TABLE product ENABLE KEYS */;

--
-- Dumping routines for database 's6_automation'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-27 22:41:19
