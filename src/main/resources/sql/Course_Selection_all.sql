-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: course_selection_system
-- ------------------------------------------------------
-- Server version	5.7.18-1

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
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course` (
  `classId` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `className` varchar(200) NOT NULL COMMENT '课程名',
  `classNum` int(11) NOT NULL COMMENT '课容量',
  `teaId` int(11) NOT NULL COMMENT '老师id',
  `classChooseNum` int(11) NOT NULL COMMENT '已经被选中的数量',
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES (1001,'c语言程序设计',5,2018100001,2),(1002,'宏观经济学',3,2018100002,3),(1004,'java程序设计',4,2018100001,1),(1005,'市场营销学',6,2018100002,2),(1006,'大学英语',3,2018100003,1),(1007,'大学英语',3,2018100003,1),(1008,'高等数学',6,2018100004,1);
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `Course_choose`
--

DROP TABLE IF EXISTS `Course_choose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course_choose` (
  `chooseId` int(11) NOT NULL AUTO_INCREMENT COMMENT '已选课程的表id',
  `stuId` int(11) NOT NULL COMMENT '选课学生的id',
  `classId` int(11) NOT NULL COMMENT '被选课程的id',
  `score` int(11) NOT NULL COMMENT '选课学生的分数',
  PRIMARY KEY (`chooseId`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course_choose`
--

LOCK TABLES `Course_choose` WRITE;
/*!40000 ALTER TABLE `Course_choose` DISABLE KEYS */;
INSERT INTO `Course_choose` VALUES (2,2018000003,1002,85),(3,2018000004,1002,60),(9,2018000002,1001,100),(10,2018000001,1002,0),(11,2018000006,1001,0),(12,2018000001,1005,0),(13,2018000001,1007,0),(14,2018000002,1004,0),(15,2018000002,1006,0),(16,2018000002,1008,0),(17,2018000004,1005,0);
/*!40000 ALTER TABLE `Course_choose` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `Course_limit`
--

DROP TABLE IF EXISTS `Course_limit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course_limit` (
  `limitId` int(11) NOT NULL AUTO_INCREMENT COMMENT '根据学院限制学生选择该课程',
  `classId` int(11) NOT NULL COMMENT '课程id',
  `insId` int(11) NOT NULL COMMENT '学院id',
  PRIMARY KEY (`limitId`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course_limit`
--

LOCK TABLES `Course_limit` WRITE;
/*!40000 ALTER TABLE `Course_limit` DISABLE KEYS */;
INSERT INTO `Course_limit` VALUES (1001,1001,1001),(1002,1002,1004),(1003,1002,1005),(1005,1004,1001),(1006,1005,1005),(1007,1006,1001),(1008,1006,1002),(1009,1007,1004),(1010,1007,1005),(1011,1008,1001);
/*!40000 ALTER TABLE `Course_limit` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `Institution`
--

DROP TABLE IF EXISTS `Institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Institution` (
  `insId` int(11) NOT NULL AUTO_INCREMENT COMMENT '学院id',
  `insName` varchar(200) NOT NULL COMMENT '学院名',
  PRIMARY KEY (`insId`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Institution`
--

LOCK TABLES `Institution` WRITE;
/*!40000 ALTER TABLE `Institution` DISABLE KEYS */;
INSERT INTO `Institution` VALUES (1001,'信息科学技术学院'),(1002,'医学院'),(1004,'管理学院'),(1005,'经济学院');
/*!40000 ALTER TABLE `Institution` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Student` (
  `stuId` int(11) NOT NULL COMMENT '学生id',
  `stuName` varchar(200) NOT NULL COMMENT '学生名字',
  `stuPass` varchar(200) NOT NULL COMMENT '学生密码',
  `insId` int(11) DEFAULT NULL COMMENT '学院id',
  `insName` varchar(200) DEFAULT NULL COMMENT '学院名',
  PRIMARY KEY (`stuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (2018000001,'张三','2018000001',1005,'经济学院'),(2018000002,'李四','2018000002',1001,'信息科学技术学院'),(2018000003,'王五','2018000003',1005,'经济学院'),(2018000004,'赵六','2018000004',1005,'经济学院'),(2018000005,'孙七','2018000005',1004,'管理学院'),(2018000006,'周八','2018000006',1001,'信息科学技术学院'),(2018000007,'吴九','2018000007',1004,'管理学院'),(2018000008,'郑十','2018000008',1001,'信息科学技术学院'),(2018000009,'刘备','2018000009',1004,'管理学院'),(2018000010,'关羽','2018000010',1002,'医学院'),(2018000011,'张飞','2018000011',1002,'医学院');
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `Teacher`
--

DROP TABLE IF EXISTS `Teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teacher` (
  `teaId` int(11) NOT NULL COMMENT '老师id',
  `teaName` varchar(200) NOT NULL COMMENT '老师名字',
  `teaPass` varchar(200) NOT NULL COMMENT '老师的密码',
  PRIMARY KEY (`teaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teacher`
--

LOCK TABLES `Teacher` WRITE;
/*!40000 ALTER TABLE `Teacher` DISABLE KEYS */;
INSERT INTO `Teacher` VALUES (2018100001,'张老师','2018100001'),(2018100002,'李老师','2018100002'),(2018100003,'王老师','2018100003'),(2018100004,'陈老师','2018100004');
/*!40000 ALTER TABLE `Teacher` ENABLE KEYS */;
UNLOCK TABLES;



