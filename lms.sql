-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `username` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `sec_q` varchar(25) DEFAULT NULL,
  `sec_ans` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('admin','pamendra','12345','Your NickName?','bittu'),('chandan@11','chandan dewangan','12345','Your NickName?','chintu'),('pdhurwe','pamendra','pam2018','Your NickName?','bittu');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `publisher` varchar(25) DEFAULT NULL,
  `edition` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `pages` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('210','JAVA','978-3-16','BALAGURUSWAMY','3','440','420'),('121','C++','123-7624-987','E-Balaguruswamy','4','399','250'),('101','Cloud Computing','123-233-543-2345-121','Ray Rafaels','3','499','300'),('685','Data Science','123-9877-1145-1348','Dr. Smita Selot','3','599','349');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuebook`
--

DROP TABLE IF EXISTS `issuebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuebook` (
  `book_id` varchar(20) DEFAULT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `bname` varchar(20) DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `dateofissue` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuebook`
--

LOCK TABLES `issuebook` WRITE;
/*!40000 ALTER TABLE `issuebook` DISABLE KEYS */;
INSERT INTO `issuebook` VALUES ('101','2014','Cloud Computing','Pamendra singh','MCA','CSE','23-Dec-2022');
/*!40000 ALTER TABLE `issuebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returnbook`
--

DROP TABLE IF EXISTS `returnbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returnbook` (
  `book_id` varchar(20) DEFAULT NULL,
  `student_id` varchar(20) DEFAULT NULL,
  `bname` varchar(20) DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `dateofissue` varchar(20) DEFAULT NULL,
  `dateofReturn` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returnbook`
--

LOCK TABLES `returnbook` WRITE;
/*!40000 ALTER TABLE `returnbook` DISABLE KEYS */;
INSERT INTO `returnbook` VALUES ('210','2014','JAVA','Pamendra singh','MCA','CSE','09-Dec-2022','09-Dec-2022'),('121','9212','C++','CHANDAN DEWANGAN','MCA','CSE','10-Dec-2022','10-Dec-2022');
/*!40000 ALTER TABLE `returnbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` varchar(20) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `father` varchar(25) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('2014','Pamendra singh','Mohan lal','MCA','CSE','Second','3rd'),('9212','CHANDAN DEWANGAN','PURUSHOTTAM DEWANGAN','MCA','CSE','Second','3rd');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-29 21:51:51
