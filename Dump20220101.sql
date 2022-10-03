-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: pharmacy
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `idpatient` int NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(45) NOT NULL,
  `patient_age` int DEFAULT NULL,
  `patient_address` varchar(45) NOT NULL,
  `Patient_UserName` varchar(20) NOT NULL,
  `Patient_Password` varchar(20) NOT NULL,
  `Patient_gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idpatient`),
  UNIQUE KEY `idpatient_UNIQUE` (`idpatient`) /*!80000 INVISIBLE */
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (4,'a',22,'aa','aaa','aaa','male'),(5,'ahmed',22,'aa','Ahmed','Ahmed','male'),(6,'a',22,'a','Ahmedaladdin','2','male'),(7,'elsayed',20,'aa','root','root','male');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_orders`
--

DROP TABLE IF EXISTS `patient_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_orders` (
  `idorders` int NOT NULL AUTO_INCREMENT,
  `patient_idpatient` int NOT NULL,
  `drugs_name` varchar(45) NOT NULL,
  `orders_quantity` int NOT NULL,
  `orders_date` date NOT NULL,
  PRIMARY KEY (`idorders`,`patient_idpatient`,`drugs_name`),
  UNIQUE KEY `idorders_UNIQUE` (`idorders`),
  KEY `fk_orders_patient1_idx` (`patient_idpatient`),
  CONSTRAINT `fk_orders_patient1` FOREIGN KEY (`patient_idpatient`) REFERENCES `patient` (`idpatient`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_orders`
--

LOCK TABLES `patient_orders` WRITE;
/*!40000 ALTER TABLE `patient_orders` DISABLE KEYS */;
INSERT INTO `patient_orders` VALUES (6,5,'Antodin 40 mg ',7,'2022-01-01');
/*!40000 ALTER TABLE `patient_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ph_drugs`
--

DROP TABLE IF EXISTS `ph_drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ph_drugs` (
  `drugs_name` varchar(45) NOT NULL,
  `drugs_quantity` int(10) unsigned zerofill DEFAULT NULL,
  `drugs_price` float NOT NULL,
  `pharmacy_idpharmacy` int unsigned NOT NULL,
  PRIMARY KEY (`drugs_name`,`pharmacy_idpharmacy`),
  UNIQUE KEY `drugs_name_UNIQUE` (`drugs_name`),
  KEY `fk_drugs_pharmacy1_idx` (`pharmacy_idpharmacy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ph_drugs`
--

LOCK TABLES `ph_drugs` WRITE;
/*!40000 ALTER TABLE `ph_drugs` DISABLE KEYS */;
INSERT INTO `ph_drugs` VALUES ('Anoxicam ',0000000195,28.25,1),('Antodin 20mg',0000000395,29.25,1),('Antodin 40 mg  ',0000000091,47.25,1),('Arthro fast 150mg ',0000000085,50.5,1),('Baclofen 10mg',0000000095,14.25,1),('Baclofen 20mg',0000000076,21.75,1),('Betacor 80',0000000123,18,1),('Betaserc 24 ',0000000077,88.25,1),('Bristaflam',0000000078,47,1),('Brufen 400mg',0000000098,28.5,1),('Cinnarizine 75',0000000295,9.25,1),('Concor 5mg ',0000000185,40.25,1),('Cymbatex 20mg',0000000076,126,1),('D-dep 5000',0000000075,90,1),('Diamicron 30mg ',0000000135,29.25,1),('Diamicron 60mg ',0000000125,50.25,1),('Dimra',0000000115,34.25,1),('Epicotil 20mg ',0000000195,21.25,1),('Esmorap 20mg',0000000175,39,1),('Eucarbon ',0000000155,36,1),('Ezastatin 10/10',0000000095,96,1),('Faverin 100mg ',0000000065,136,1),('Forxiga 10mg ',0000000065,333,1),('Futapan 40mg  ',0000000085,30,1),('Gast-reg 200mg ',0000000085,36,1),('Gliflozino 10mg ',0000000065,214,1),('Glucophage XR 1000mg',0000000765,60,1),('Gufidrexn ',0000000165,21.75,1),('Heli-Cure ',0000000165,85,1),('Hepato-Forte',0000000234,24,1),('Hydroquine ',0000000065,45,1),('Immuno-flu',0000000165,20,1),('Ipanten 100mg ',0000000155,29,1),('Karbalta 30mg',0000000095,126,1),('Karbalta 60mg',0000000065,148.5,1),('Kast 10mg',0000000135,42,1),('Kellagon',0000000165,16,1),('Ketolgin',0000000165,12,1),('Lantopep 30mg',0000000145,62,1),('Lantopep 60mg ',0000000115,104,1),('Librax',0000000565,10.5,1),('Mark Fast',0000000195,27,1),('Matrix ',0000000115,49,1),('Matrix Cream ',0000000065,72,1),('Milga Advance',0000000095,60,1),('Multi-relax 10mg ',0000000145,20,1),('Multi-relax 5mg ',0000000165,17,1),('Nexium 10mg Sach',0000000065,270,1),('Nexium 20mg ',0000000035,196,1),('Nitora ',0000000253,22,1);
/*!40000 ALTER TABLE `ph_drugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy`
--

DROP TABLE IF EXISTS `pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy` (
  `idpharmacy` int unsigned NOT NULL AUTO_INCREMENT,
  `pharmacy_name` varchar(45) NOT NULL,
  `pharmacy_phone` int NOT NULL,
  `pharmacy_email` varchar(45) NOT NULL,
  `pharmacy_address` varchar(45) NOT NULL,
  `store_idstore` int NOT NULL,
  PRIMARY KEY (`idpharmacy`,`store_idstore`),
  KEY `fk_pharmacy_store1_idx` (`store_idstore`),
  CONSTRAINT `fk_pharmacy_store1` FOREIGN KEY (`store_idstore`) REFERENCES `store` (`idstore`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy`
--

LOCK TABLES `pharmacy` WRITE;
/*!40000 ALTER TABLE `pharmacy` DISABLE KEYS */;
INSERT INTO `pharmacy` VALUES (1,'Alive pharmacy',1547364856,'pharmacy@gmail.com','benha Ahmed oraby street',1);
/*!40000 ALTER TABLE `pharmacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy_orders`
--

DROP TABLE IF EXISTS `pharmacy_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy_orders` (
  `pharmacy_ordersID` int NOT NULL AUTO_INCREMENT,
  `drugs_name` varchar(45) NOT NULL,
  `orders_quantity` int DEFAULT NULL,
  `orders_date` date NOT NULL,
  PRIMARY KEY (`pharmacy_ordersID`,`drugs_name`),
  UNIQUE KEY `idpharmacy_orders_UNIQUE` (`pharmacy_ordersID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy_orders`
--

LOCK TABLES `pharmacy_orders` WRITE;
/*!40000 ALTER TABLE `pharmacy_orders` DISABLE KEYS */;
INSERT INTO `pharmacy_orders` VALUES (1,'test',6,'2022-01-01'),(6,'test',4,'2022-01-01'),(7,'test',3,'2022-01-01');
/*!40000 ALTER TABLE `pharmacy_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `idstore` int NOT NULL AUTO_INCREMENT,
  `store_name` varchar(45) NOT NULL,
  `store_address` varchar(45) NOT NULL,
  PRIMARY KEY (`idstore`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'el-Amal store','benha saad zagloul street');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_drugs`
--

DROP TABLE IF EXISTS `store_drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_drugs` (
  `stored_drugsID` int NOT NULL AUTO_INCREMENT,
  `drugs_name` varchar(45) NOT NULL,
  `drugs_price` float NOT NULL,
  `drugs_quantity` int DEFAULT NULL,
  PRIMARY KEY (`stored_drugsID`,`drugs_name`),
  UNIQUE KEY `idstore_drugs_UNIQUE` (`stored_drugsID`),
  UNIQUE KEY `drugs_name_UNIQUE` (`drugs_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_drugs`
--

LOCK TABLES `store_drugs` WRITE;
/*!40000 ALTER TABLE `store_drugs` DISABLE KEYS */;
INSERT INTO `store_drugs` VALUES (1,'Test',5.5,20),(3,'test2',555,26),(5,'test3',69,61);
/*!40000 ALTER TABLE `store_drugs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-01  5:30:47
