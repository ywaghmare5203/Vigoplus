-- MySQL dump 10.13  Distrib 5.5.57, for Linux (x86_64)
--
-- Host: localhost    Database: cogoplus
-- ------------------------------------------------------
-- Server version	5.5.57

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
-- Table structure for table `installer`
--

DROP TABLE IF EXISTS `installer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `installer` (
  `id` int(1) NOT NULL,
  `installer_flag` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installer`
--

LOCK TABLES `installer` WRITE;
/*!40000 ALTER TABLE `installer` DISABLE KEYS */;
INSERT INTO `installer` VALUES (1,1);
/*!40000 ALTER TABLE `installer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_account_details`
--

DROP TABLE IF EXISTS `tbl_account_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_account_details` (
  `account_details_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employment_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'en_US',
  `address` varchar(64) COLLATE utf8_unicode_ci DEFAULT '-',
  `phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT '-',
  `mobile` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `skype` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `language` varchar(40) COLLATE utf8_unicode_ci DEFAULT 'english',
  `designations_id` int(11) DEFAULT '0',
  `avatar` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'uploads/default_avatar.jpg',
  `joining_date` date DEFAULT NULL,
  `present_address` text COLLATE utf8_unicode_ci,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maratial_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departments_id` int(11) NOT NULL,
  PRIMARY KEY (`account_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_account_details`
--

LOCK TABLES `tbl_account_details` WRITE;
/*!40000 ALTER TABLE `tbl_account_details` DISABLE KEYS */;
INSERT INTO `tbl_account_details` VALUES (1,1,'cogo admin','12365','-',NULL,NULL,'en_US','-','1234567890','0172361125','skype','english',1,'uploads/user_pic.png','2016-06-07','Okk','1991-06-03','male','unmarried','Abdul jabbar','Amena',NULL,0),(48,49,'Rupal Juneja','CNSGSIN56','-',NULL,NULL,'en_GB','-','','','rupal.juneja@consagous.com','english',34,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(49,50,'Naveen Sharma','CNSGSIN13','-',NULL,NULL,'en_IN','-','','','','english',49,'uploads/UNADJUSTEDNONRAW_thumb_1.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(50,51,'Deepti Rai','CNSGSIN05','-',NULL,NULL,'aa_DJ','-','','','','english',62,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(51,52,'Aditya Patel','CNSGSIN57','-',NULL,NULL,'aa_DJ','-','','','','english',39,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(52,53,'Vipin Sharma','CNSGSIN48','-',NULL,NULL,'aa_DJ','-','','','','english',37,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(53,54,'Mukesh Singh','CNSGSIN00','-',NULL,NULL,'aa_DJ','-','','','','english',33,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(54,55,'Chetan Sant','CNSGSIN41','-',NULL,NULL,'en_IN','-','','','','english',35,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(55,56,'Mayank Neema','CNSGSIN24','-',NULL,NULL,'aa_DJ','-','','','','english',54,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(56,57,'Ambuj Singh','CNSGSIN10','-',NULL,NULL,'aa_DJ','-','','','','english',59,'uploads/prooo.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(57,58,'Rajesh Sijoria','CNSGSIN20','-',NULL,NULL,'aa_DJ','-','','','','english',50,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(58,59,'Rajesh Yadav ','CNSGSIN52','-',NULL,NULL,'aa_DJ','-','','','','english',50,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(59,60,'HEMANT KUMAR HEMANI ','CNSGSIN34','-',NULL,NULL,'aa_DJ','-','','','','english',52,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(60,61,'Megha Neema','CNSGSIN17','-',NULL,NULL,'aa_DJ','-','','','','english',51,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(61,62,'Pankaj Saad','CNSGSIN22','-',NULL,NULL,'aa_DJ','-','9009866517','','','english',52,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(62,63,'KRISHNAPAL SINGH THAKUR ','CNSGSIN25','-',NULL,NULL,'aa_DJ','-','','','','english',52,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(63,64,'Salman Khan','CNSGSIN26','-',NULL,NULL,'aa_DJ','-','','','','english',53,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(64,65,'Vishal Dubey','CNSGSIN31','-',NULL,NULL,'hi_IN','-','9754555280','','','english',60,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(65,66,'Govind Chilwal','CNSGSIN21','-',NULL,NULL,'aa_DJ','-','','','','english',46,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(66,67,'Ravikant Verma','CNSGSIN11','-',NULL,NULL,'aa_DJ','-','','','','english',46,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(67,68,'Pramod Jain','CNSGSIN18','-',NULL,NULL,'aa_DJ','-','','','','english',47,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(68,69,'Devendra Sharma','CNSGSIN30','-',NULL,NULL,'aa_DJ','-','','','','english',47,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(69,70,'Gourav Pandya','CNSGSIN33','-',NULL,NULL,'aa_DJ','-','','','','english',47,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(70,71,'Anuj Kumar Burnwal','CNSGSIN09','-',NULL,NULL,'hi_IN','-','','','','english',48,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(71,72,'Bhanuprakash Jaiswal','CNSGSIN19','-',NULL,NULL,'aa_DJ','-','','','','english',48,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(72,73,'Farhan Shaikh','CNSGSIN15','-',NULL,NULL,'aa_DJ','-','','','','english',61,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(73,74,'Deepak Pathak','CNSGSIN058','-',NULL,NULL,'aa_DJ','-','','','','english',63,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(74,75,'Pooja Jagga','CNSGSIN32','-',NULL,NULL,'aa_DJ','-','','','','english',55,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(75,76,'Nidhi Trivedi ','CNSGSIN50','-',NULL,NULL,'aa_DJ','-','','','','english',56,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(76,77,'Divya Patil','CNSGSIN45','-',NULL,NULL,'aa_DJ','-','','','','english',57,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(77,78,'Shalini Silarpuriya','CNSGSIN43','-',NULL,NULL,'aa_DJ','-','','','','english',57,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(78,79,'Arvind Shakya','CNSGSIN16','-',NULL,NULL,'aa_DJ','-','','','','english',57,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(79,80,'Kritika Joshi','CNSGSIN59','-',NULL,NULL,'aa_DJ','-','','','','english',58,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(80,81,'Vivek Kaushik','CNSGSIN60','-',NULL,NULL,'aa_DJ','-','','','','english',38,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(81,82,'Rashmi Chouhan','CNSGSIN47','-',NULL,NULL,'aa_DJ','-','','','','english',57,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(82,83,'Ravikant Varma',NULL,'20',NULL,NULL,'en_US','-','-','','','english',0,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(83,84,'Akhilesh Sharma','CNSGSIN003','-',NULL,NULL,'aa_DJ','-','','9424595373','','english',38,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(84,85,'Suraj Palsania','','-',NULL,NULL,'aa_DJ','-','','','','english',64,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(85,86,'Kaushalendra Pandey','','-',NULL,NULL,'aa_DJ','-','','','','english',34,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(86,87,'Kishor Pawar','','-',NULL,NULL,'hi_IN','-','','','','english',48,'uploads/default_avatar.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `tbl_account_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_accounts`
--

DROP TABLE IF EXISTS `tbl_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_accounts` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `balance` decimal(18,2) NOT NULL DEFAULT '0.00',
  `permission` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_accounts`
--

LOCK TABLES `tbl_accounts` WRITE;
/*!40000 ALTER TABLE `tbl_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_activities`
--

DROP TABLE IF EXISTS `tbl_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_activities` (
  `activities_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_field_id` int(11) DEFAULT NULL,
  `activity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `icon` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'fa-coffee',
  `value1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activities_id`)
) ENGINE=MyISAM AUTO_INCREMENT=638 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activities`
--

LOCK TABLES `tbl_activities` WRITE;
/*!40000 ALTER TABLE `tbl_activities` DISABLE KEYS */;
INSERT INTO `tbl_activities` VALUES (228,1,'user',76,'activity_added_new_user','2017-09-06 09:25:26','fa-user','nidhitrivedi',NULL,0),(227,1,'user',75,'activity_added_new_user','2017-09-06 09:23:48','fa-user','poojajagga',NULL,0),(226,1,'user',74,'activity_added_new_user','2017-09-06 09:22:11','fa-user','deepakpathak',NULL,0),(225,1,'user',73,'activity_added_new_user','2017-09-06 09:20:41','fa-user','farhansheikh',NULL,0),(224,1,'user',65,'activity_added_new_user','2017-09-06 09:18:44','fa-user','vishaldubey',NULL,0),(223,1,'user',72,'activity_added_new_user','2017-09-06 09:15:20','fa-user','bhanuprakashjaiswal',NULL,0),(222,1,'user',71,'activity_added_new_user','2017-09-06 09:13:21','fa-user','anujburnawal',NULL,0),(221,1,'user',70,'activity_added_new_user','2017-09-06 09:11:43','fa-user','gouravpandya',NULL,0),(220,1,'user',69,'activity_added_new_user','2017-09-06 09:09:39','fa-user','devendrasharma',NULL,0),(219,1,'user',68,'activity_added_new_user','2017-09-06 09:08:06','fa-user','pramodjain',NULL,0),(218,1,'user',67,'activity_added_new_user','2017-09-06 09:05:56','fa-user','ravikantverma',NULL,0),(217,1,'user',66,'activity_added_new_user','2017-09-06 09:04:10','fa-user','govindchilwal',NULL,0),(216,1,'user',65,'activity_added_new_user','2017-09-06 09:01:22','fa-user','vishaldubey',NULL,0),(215,1,'user',64,'activity_added_new_user','2017-09-06 08:59:20','fa-user','salmankhan',NULL,0),(214,1,'user',63,'activity_added_new_user','2017-09-06 08:57:23','fa-user','krishnapalsingh',NULL,0),(213,1,'user',62,'activity_added_new_user','2017-09-06 08:55:04','fa-user','pankajsaad',NULL,0),(212,1,'user',61,'activity_added_new_user','2017-09-06 08:51:35','fa-user','meghaneema',NULL,0),(211,1,'user',60,'activity_added_new_user','2017-09-06 08:50:05','fa-user','hemantkumar',NULL,0),(210,1,'user',59,'activity_added_new_user','2017-09-06 08:47:48','fa-user','rajeshyadav',NULL,0),(209,1,'user',58,'activity_added_new_user','2017-09-06 08:44:16','fa-user','rajeshsijoria',NULL,0),(208,1,'user',57,'activity_added_new_user','2017-09-06 07:45:07','fa-user','ambujsingh',NULL,0),(207,1,'user',56,'activity_added_new_user','2017-09-06 07:36:31','fa-user','mayankneema',NULL,0),(206,1,'user',55,'activity_added_new_user','2017-09-06 07:34:45','fa-user','chetansant',NULL,0),(205,1,'user',54,'activity_added_new_user','2017-09-06 07:33:23','fa-user','mukeshsingh',NULL,0),(204,1,'user',53,'activity_added_new_user','2017-09-06 07:31:57','fa-user','vipinsharma',NULL,0),(203,1,'user',52,'activity_added_new_user','2017-09-06 07:27:14','fa-user','adityapatel',NULL,0),(202,1,'user',51,'activity_added_new_user','2017-09-06 07:24:50','fa-user','deeptirai',NULL,0),(201,1,'departments',20,'activity_added_a_department','2017-09-06 07:22:27','fa-coffee','Human Resources',NULL,0),(200,1,'departments',20,'activity_added_a_department','2017-09-06 07:21:00','fa-coffee','Human Resources',NULL,0),(199,1,'departments',NULL,'activity_added_a_department','2017-09-06 07:18:41','fa-coffee','Human Resources',NULL,0),(198,1,'departments',22,'activity_added_a_department','2017-09-06 07:17:49','fa-coffee','Mobile Development',NULL,0),(197,1,'departments',22,'activity_added_a_department','2017-09-06 07:16:59','fa-coffee','Mobile Development',NULL,0),(196,1,'departments',22,'activity_added_a_department','2017-09-06 07:15:48','fa-coffee','Mobile Development',NULL,0),(195,1,'departments',22,'activity_added_a_department','2017-09-06 06:54:11','fa-coffee','Mobile Development',NULL,0),(194,1,'departments',22,'activity_added_a_department','2017-09-06 06:48:06','fa-coffee','Mobile Development',NULL,0),(193,1,'departments',22,'activity_added_a_department','2017-09-06 06:44:25','fa-coffee','Mobile Development',NULL,0),(192,1,'user',50,'activity_added_new_user','2017-09-06 06:42:41','fa-user','naveensharma',NULL,0),(191,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:21:52','fa-coffee','Human Resources',NULL,0),(190,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:18:17','fa-coffee','UI / UX',NULL,0),(189,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:18:05','fa-coffee','UI / UX',NULL,0),(188,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:17:12','fa-coffee','UI / UX',NULL,0),(187,1,'departments',18,'activity_added_a_department','2017-09-06 05:16:38','fa-coffee','UI / UX',NULL,0),(186,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:15:21','fa-coffee','SEO',NULL,0),(185,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:15:10','fa-coffee','SEO',NULL,0),(184,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:13:35','fa-coffee','Digital Marketing',NULL,0),(183,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:13:22','fa-coffee','Digital Marketing',NULL,0),(182,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:13:01','fa-coffee','Digital Marketing',NULL,0),(181,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:11:57','fa-coffee','Mobile Development',NULL,0),(180,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:11:34','fa-coffee','Mobile Development',NULL,0),(179,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:11:09','fa-coffee','Mobile Development',NULL,0),(178,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:10:56','fa-coffee','Mobile Development',NULL,0),(177,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:09:58','fa-coffee','Mobile Development',NULL,0),(176,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:07:11','fa-coffee','Web Development',NULL,0),(175,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:06:33','fa-coffee','Web Development',NULL,0),(174,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:06:23','fa-coffee','Web Development',NULL,0),(173,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:05:36','fa-coffee','Web Development',NULL,0),(172,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:05:02','fa-coffee','Sales',NULL,0),(171,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:04:28','fa-coffee','Sales',NULL,0),(170,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:04:10','fa-coffee','Sales',NULL,0),(169,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:04:00','fa-coffee','Sales',NULL,0),(168,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:03:46','fa-coffee','Sales',NULL,0),(167,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:03:25','fa-coffee','Sales',NULL,0),(166,1,'departments',NULL,'activity_added_a_department','2017-09-06 05:02:14','fa-coffee','Project Management',NULL,0),(165,1,'departments',20,'activity_update_a_department','2017-09-06 05:01:51','fa-coffee','Human Resources',NULL,0),(164,1,'announcements',NULL,'activity_added_announcements','2017-09-04 11:11:50','fa-ticket','Welcome Onboard!',NULL,0),(163,1,'holiday',8,'Event Added','2017-09-04 11:08:25','fa-ticket','Republic Day',NULL,0),(162,1,'holiday',7,'Event Updated','2017-09-04 11:06:26','fa-ticket','Christmas',NULL,0),(161,1,'holiday',7,'Event Added','2017-09-04 11:05:35','fa-ticket','Christmas',NULL,0),(160,1,'holiday',6,'Event Added','2017-09-04 11:04:56','fa-ticket','Gandhi Jayanti',NULL,0),(159,1,'holiday',5,'Event Added','2017-09-04 11:03:46','fa-ticket','Diwali Break',NULL,0),(158,1,'projects',9,'activity_save_project','2017-09-04 09:39:59','fa-circle-o','ClothFarm',NULL,0),(157,1,'client',17,'activity_update_company','2017-09-04 09:36:30','fa-user','Fayas Kamar',NULL,0),(156,1,'user',49,'activity_added_new_user','2017-09-04 07:29:59','fa-user','rupal',NULL,0),(155,1,'departments',NULL,'activity_added_a_department','2017-09-04 07:25:45','fa-coffee','Web Development',NULL,0),(154,1,'departments',18,'activity_added_a_department','2017-09-04 07:22:39','fa-coffee','UI / UX',NULL,0),(153,1,'departments',18,'activity_added_a_department','2017-09-04 07:22:37','fa-coffee','UI / UX',NULL,0),(152,1,'departments',NULL,'activity_added_a_department','2017-09-04 07:21:21','fa-coffee','UI / UX',NULL,0),(151,1,'departments',NULL,'activity_added_a_department','2017-09-04 07:20:50','fa-coffee','UI / UX',NULL,0),(150,1,'departments',17,'activity_update_a_department','2017-09-04 07:18:37','fa-coffee','Project Management',NULL,0),(149,1,'departments',NULL,'activity_added_a_department','2017-09-04 07:18:14','fa-coffee','',NULL,0),(148,1,'departments',NULL,'activity_added_a_department','2017-09-04 07:16:48','fa-coffee','Top Management',NULL,0),(147,1,'departments',16,'activity_update_a_department','2017-09-04 07:16:27','fa-coffee','Top Management',NULL,0),(146,1,'departments',16,'activity_added_a_department','2017-09-04 07:15:37','fa-coffee','Top Management',NULL,0),(145,1,'departments',NULL,'activity_added_a_department','2017-09-04 07:15:02','fa-coffee','Top Management',NULL,0),(144,1,'settings',2,'activity_added_a_leave_category','2017-09-04 07:13:26','fa-coffee','Marriage Leaves',NULL,0),(143,1,'settings',3,'activity_added_a_leave_category','2017-09-04 07:13:19','fa-coffee','BL',NULL,0),(142,1,'settings',4,'activity_added_a_leave_category','2017-09-04 07:13:06','fa-coffee','Paternity Leave',NULL,0),(141,1,'settings',5,'activity_added_a_leave_category','2017-09-04 07:12:58','fa-coffee','Maternity Leave',NULL,0),(140,1,'settings',5,'activity_added_a_leave_category','2017-09-04 07:12:41','fa-coffee','Maternity Leave',NULL,0),(139,1,'settings',4,'activity_added_a_leave_category','2017-09-04 07:12:26','fa-coffee','Paternity Leave',NULL,0),(138,1,'settings',3,'activity_added_a_leave_category','2017-09-04 07:12:09','fa-coffee','BL',NULL,0),(137,1,'settings',2,'activity_added_a_leave_category','2017-09-04 07:12:00','fa-coffee','Marriage Leaves',NULL,0),(136,1,'settings',1,'activity_added_a_leave_category','2017-09-04 07:11:50','fa-coffee','Casual Leaves',NULL,0),(135,1,'settings',1,'activity_save_email_settings','2017-09-04 07:11:00','fa-coffee','consagous@consagous.com',NULL,0),(134,1,'settings',1,'activity_save_system_settings','2017-09-04 07:10:28','fa-coffee','english',NULL,0),(133,1,'settings',1,'activity_update_working_days','2017-09-04 06:05:58','fa-coffee','same_time',NULL,0),(229,1,'user',77,'activity_added_new_user','2017-09-06 09:27:03','fa-user','divyapatil',NULL,0),(230,1,'user',78,'activity_added_new_user','2017-09-06 09:28:50','fa-user','shalinisilarpuriya',NULL,0),(231,1,'user',79,'activity_added_new_user','2017-09-06 09:31:16','fa-user','anvindshakya',NULL,0),(232,1,'user',49,'activity_added_new_user','2017-09-06 09:32:05','fa-user','rupal',NULL,0),(233,1,'user',80,'activity_added_new_user','2017-09-06 09:33:32','fa-user','kritikajoshi',NULL,0),(234,1,'user',81,'activity_added_new_user','2017-09-06 09:34:43','fa-user','vivekkaushik',NULL,0),(235,1,'user',82,'activity_added_new_user','2017-09-06 09:38:22','fa-user','rashmichouhan',NULL,0),(236,1,'project',2,'activity_added_new_milestones','2017-09-06 09:41:44','fa-rocket','Design Theme Approval',NULL,0),(237,1,'tasks',3,'activity_update_task','2017-09-06 09:44:17','fa-ticket','First design draft creation',NULL,0),(238,1,'projects',9,'activity_update_project','2017-09-06 09:46:28','fa-circle-o','ClothFarm',NULL,0),(239,1,'client',18,'activity_update_company','2017-09-06 09:50:03','fa-user','Lauren Leisk',NULL,0),(240,1,'projects',10,'activity_save_project','2017-09-06 09:51:52','fa-circle-o','Educational Toys',NULL,0),(241,1,'tasks',4,'activity_update_task','2017-09-06 09:53:32','fa-ticket','Get FTP & cpanel detail from client ',NULL,0),(242,1,'client',19,'activity_update_company','2017-09-06 09:57:05','fa-user','Consagous',NULL,0),(243,1,'projects',11,'activity_save_project','2017-09-06 10:00:52','fa-circle-o','Consagous Australia Website',NULL,0),(244,1,'tasks',5,'activity_update_task','2017-09-06 10:03:19','fa-ticket','Fix Service page - Mobile development',NULL,0),(245,1,'projects',12,'activity_save_project','2017-09-06 10:05:14','fa-circle-o','PM / BA / Documentation Tasks',NULL,0),(246,1,'project',10,'activity_update_project','2017-09-06 11:37:26','fa-ticket','Educational Toys',NULL,0),(247,54,'tasks',5,'activity_tasks_timer_on','2017-09-06 11:41:51','fa-copy','Fix Service page - Mobile development',NULL,0),(248,54,'tasks',5,'activity_tasks_timer_off','2017-09-06 11:42:38','fa-copy','Fix Service page - Mobile development',NULL,0),(249,54,'tasks',5,'activity_update_task','2017-09-06 11:43:53','fa-ticket','Fix Service page - Mobile development',NULL,0),(250,54,'tasks',5,'activity_tasks_timer_on','2017-09-06 11:44:08','fa-copy','Fix Service page - Mobile development',NULL,0),(251,54,'tasks',5,'activity_tasks_timer_off','2017-09-06 11:44:23','fa-copy','Fix Service page - Mobile development',NULL,0),(252,54,'tasks',5,'activity_update_task','2017-09-06 11:44:46','fa-ticket','Fix Service page - Mobile development',NULL,0),(253,1,'tasks',5,'activity_update_task','2017-09-06 11:45:24','fa-ticket','Fix Service page - Mobile development',NULL,0),(254,1,'tasks',5,'activity_update_task','2017-09-06 11:45:50','fa-ticket','Fix Service page - Mobile development',NULL,0),(255,50,'projects',13,'activity_save_project','2017-09-07 05:13:41','fa-circle-o','MyPanditG',NULL,0),(256,59,'project',13,'activity_tasks_timer_on','2017-09-07 05:31:57','fa-copy','MyPanditG',NULL,0),(257,59,'project',13,'activity_tasks_timer_off','2017-09-07 05:32:03','fa-copy','MyPanditG',NULL,0),(258,50,'projects',14,'activity_save_project','2017-09-07 05:35:56','fa-circle-o','QuickChat',NULL,0),(259,58,'projects',13,'activity_update_project','2017-09-07 05:36:59','fa-circle-o','MyPanditG',NULL,0),(260,50,'project',3,'activity_added_new_milestones','2017-09-07 05:39:02','fa-rocket','Group chat',NULL,0),(261,50,'tasks',6,'activity_update_task','2017-09-07 05:40:19','fa-ticket','group chat',NULL,0),(262,63,'tasks',6,'activity_tasks_timer_on','2017-09-07 05:43:19','fa-copy','group chat',NULL,0),(263,63,'tasks',6,'activity_tasks_timer_off','2017-09-07 05:44:21','fa-copy','group chat',NULL,0),(264,63,'tasks',6,'activity_tasks_timer_on','2017-09-07 05:44:31','fa-copy','group chat',NULL,0),(265,63,'tasks',6,'activity_tasks_timer_off','2017-09-07 05:55:26','fa-copy','group chat',NULL,0),(266,63,'tasks',6,'activity_tasks_timer_on','2017-09-07 05:55:41','fa-copy','group chat',NULL,0),(267,59,'project',4,'activity_added_new_milestones','2017-09-07 06:03:02','fa-rocket','First Milestone',NULL,0),(268,59,'project',5,'activity_added_new_milestones','2017-09-07 06:12:31','fa-rocket','Second Milestone',NULL,0),(269,59,'project',6,'activity_added_new_milestones','2017-09-07 06:16:35','fa-rocket','First mileston',NULL,0),(270,59,'project',6,'activity_updated_milestones','2017-09-07 06:18:00','fa-rocket','First mileston',NULL,0),(271,59,'project',7,'activity_added_new_milestones','2017-09-07 06:20:13','fa-rocket','Second Milestone',NULL,0),(272,59,'project',6,'activity_updated_milestones','2017-09-07 06:20:22','fa-rocket','First milestone',NULL,0),(273,59,'tasks',7,'activity_update_task','2017-09-07 06:23:04','fa-ticket','API + API test cases',NULL,0),(274,59,'tasks',7,'activity_tasks_timer_on','2017-09-07 06:28:35','fa-copy','API + API test cases',NULL,0),(275,59,'tasks',7,'activity_update_task','2017-09-07 06:29:11','fa-ticket','API + API test cases',NULL,0),(276,62,'settings',62,'activity_update_profile','2017-09-07 06:31:40','fa-coffee','Pankaj Saad',NULL,0),(277,59,'project',13,'activity_tasks_timer_on','2017-09-07 06:34:56','fa-copy','MyPanditG',NULL,0),(278,58,'project',6,'activity_updated_milestones','2017-09-07 06:40:22','fa-rocket','First milestone',NULL,0),(279,58,'tasks',8,'activity_update_task','2017-09-07 06:43:08','fa-ticket','Create architecture of Side bar',NULL,0),(280,58,'tasks',9,'activity_update_task','2017-09-07 06:43:35','fa-ticket','Create architecture of Side bar',NULL,0),(281,58,'tasks',9,'activity_update_task','2017-09-07 06:43:57','fa-ticket','100',NULL,0),(282,59,'tasks',9,'activity_task_deleted','2017-09-07 06:45:00','fa-ticket','Create architecture of Side bar',NULL,0),(283,59,'tasks',7,'activity_update_task','2017-09-07 06:47:19','fa-ticket','100',NULL,0),(284,59,'tasks',7,'activity_update_task','2017-09-07 06:47:48','fa-ticket','0',NULL,0),(285,59,'tasks',7,'activity_update_task','2017-09-07 06:48:00','fa-ticket','API + API test cases',NULL,0),(286,59,'tasks',7,'activity_tasks_timer_off','2017-09-07 06:48:05','fa-copy','API + API test cases',NULL,0),(287,59,'tasks',7,'activity_tasks_timer_on','2017-09-07 06:48:10','fa-copy','API + API test cases',NULL,0),(288,63,'tasks',6,'activity_tasks_timer_off','2017-09-07 09:30:19','fa-copy','group chat',NULL,0),(289,63,'tasks',6,'activity_tasks_timer_on','2017-09-07 09:30:25','fa-copy','group chat',NULL,0),(290,71,'settings',71,'activity_update_profile','2017-09-07 11:19:29','fa-coffee','Anuj Kumar Burnwal',NULL,0),(291,71,'settings',71,'activity_password_update','2017-09-07 11:19:49','fa-coffee','anujburnawal',NULL,0),(292,71,'settings',71,'Changed email','2017-09-07 11:20:41','fa-coffee','anuj.burnawal@consagous.com','anuj@consagous.com',0),(293,71,'settings',71,'activity_username_updated','2017-09-07 11:21:44','fa-coffee','anujburnawal','anujburnwal',0),(294,55,'tasks',3,'activity_update_task','2017-09-07 11:29:23','fa-ticket','First design draft creation',NULL,0),(295,55,'project',12,'activity_update_task','2017-09-07 11:35:09','fa-ticket','Test',NULL,0),(296,65,'settings',65,'activity_password_update','2017-09-07 11:39:43','fa-coffee','vishaldubey',NULL,0),(297,65,'settings',65,'activity_update_profile','2017-09-07 11:41:23','fa-coffee','Vishal Dubey',NULL,0),(298,69,'settings',69,'activity_update_profile','2017-09-07 11:58:32','fa-coffee','Devendra Sharma',NULL,0),(299,72,'settings',72,'activity_password_update','2017-09-07 11:58:52','fa-coffee','bhanuprakashjaiswal',NULL,0),(300,69,'settings',69,'activity_update_profile','2017-09-07 11:58:56','fa-coffee','Devendra Sharma',NULL,0),(301,53,'settings',53,'activity_password_update','2017-09-07 12:09:11','fa-coffee','vipinsharma',NULL,0),(302,62,'projects',15,'activity_save_project','2017-09-07 13:03:50','fa-circle-o','React Native',NULL,0),(303,62,'projects',15,'activity_update_project','2017-09-07 13:04:13','fa-circle-o','React Native',NULL,0),(304,62,'project',8,'activity_added_new_milestones','2017-09-07 13:08:21','fa-rocket','Splesh Screen',NULL,0),(305,62,'tasks',10,'activity_update_task','2017-09-07 13:10:08','fa-ticket','Splesh Screen',NULL,0),(306,63,'tasks',6,'activity_tasks_timer_off','2017-09-07 15:07:54','fa-copy','group chat',NULL,0),(307,64,'settings',64,'activity_password_update','2017-09-08 03:46:44','fa-coffee','salmankhan',NULL,0),(308,59,'award',21,'activity_time_change_request','2017-09-08 04:31:21','fa-ticket','Rajesh Yadav ','',0),(309,59,'award',21,'activity_time_change_request','2017-09-08 04:32:25','fa-ticket','Rajesh Yadav ','',0),(310,59,'award',21,'activity_time_change_request','2017-09-08 04:33:08','fa-ticket','Rajesh Yadav ','Leave early due to fever',0),(311,63,'project',14,'activity_tasks_timer_on','2017-09-08 05:45:59','fa-copy','QuickChat',NULL,0),(312,63,'project',14,'activity_tasks_timer_off','2017-09-08 05:46:18','fa-copy','QuickChat',NULL,0),(313,63,'tasks',6,'activity_tasks_timer_on','2017-09-08 05:48:23','fa-copy','group chat',NULL,0),(314,50,'award',19,'activity_time_change_request','2017-09-08 10:26:40','fa-ticket','Naveen Sharma','SKIP CLOCK OUT',0),(315,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:22','fa-copy','group chat',NULL,0),(316,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:23','fa-copy','group chat',NULL,0),(317,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:24','fa-copy','group chat',NULL,0),(318,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:24','fa-copy','group chat',NULL,0),(319,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:25','fa-copy','group chat',NULL,0),(320,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:26','fa-copy','group chat',NULL,0),(321,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:26','fa-copy','group chat',NULL,0),(322,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:27','fa-copy','group chat',NULL,0),(323,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:28','fa-copy','group chat',NULL,0),(324,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:29','fa-copy','group chat',NULL,0),(325,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:29','fa-copy','group chat',NULL,0),(326,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:30','fa-copy','group chat',NULL,0),(327,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:31','fa-copy','group chat',NULL,0),(328,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:32','fa-copy','group chat',NULL,0),(329,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:33','fa-copy','group chat',NULL,0),(330,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:34','fa-copy','group chat',NULL,0),(331,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:35','fa-copy','group chat',NULL,0),(332,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:35','fa-copy','group chat',NULL,0),(333,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:36','fa-copy','group chat',NULL,0),(334,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:37','fa-copy','group chat',NULL,0),(335,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:38','fa-copy','group chat',NULL,0),(336,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:38','fa-copy','group chat',NULL,0),(337,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:39','fa-copy','group chat',NULL,0),(338,63,'tasks',6,'activity_tasks_timer_off','2017-09-08 15:09:40','fa-copy','group chat',NULL,0),(339,59,'tasks',7,'activity_tasks_timer_off','2017-09-08 15:42:34','fa-copy','API + API test cases',NULL,0),(340,50,'client',21,'activity_update_company','2017-09-11 04:45:06','fa-user','sean cooper',NULL,0),(341,50,'projects',16,'activity_save_project','2017-09-11 04:46:57','fa-circle-o','purposs',NULL,0),(342,1,'project',16,'activity_update_project','2017-09-11 04:51:59','fa-ticket','purposs',NULL,0),(343,1,'project',16,'activity_update_project','2017-09-11 04:57:37','fa-ticket','purposs',NULL,0),(344,50,'bugs',5,'activity_new_bug','2017-09-11 05:02:33','fa-ticket','slow chat response',NULL,0),(345,1,'project',9,'activity_update_project','2017-09-11 05:03:39','fa-ticket','ClothFarm',NULL,0),(346,1,'project',9,'activity_update_project','2017-09-11 05:04:27','fa-ticket','ClothFarm',NULL,0),(347,1,'bugs',5,'activity_update_bug','2017-09-11 05:06:18','fa-ticket','slow chat response',NULL,0),(348,57,'settings',57,'activity_password_update','2017-09-11 05:20:09','fa-coffee','ambujsingh',NULL,0),(349,50,'settings',50,'activity_update_profile','2017-09-11 05:25:20','fa-coffee','Naveen Sharma',NULL,0),(350,50,'settings',50,'activity_update_profile','2017-09-11 05:25:43','fa-coffee','Naveen Sharma',NULL,0),(351,63,'tasks',6,'activity_tasks_timer_on','2017-09-11 05:44:37','fa-copy','group chat',NULL,0),(352,63,'tasks',6,'activity_tasks_timer_off','2017-09-11 05:44:48','fa-copy','group chat',NULL,0),(353,63,'tasks',6,'activity_tasks_timer_on','2017-09-11 05:45:07','fa-copy','group chat',NULL,0),(354,63,'tasks',6,'activity_tasks_timer_off','2017-09-11 05:48:07','fa-copy','group chat',NULL,0),(355,63,'tasks',6,'activity_update_task','2017-09-11 05:48:12','fa-ticket','group chat',NULL,0),(356,1,'tasks',11,'activity_update_task','2017-09-11 05:56:10','fa-ticket','revised draft finalization',NULL,0),(357,63,'tasks',12,'activity_update_task','2017-09-11 06:01:57','fa-ticket','Group and one to one chat info and Details',NULL,0),(358,63,'tasks',12,'activity_tasks_timer_on','2017-09-11 06:03:14','fa-copy','Group and one to one chat info and Details',NULL,0),(359,1,'tasks',13,'activity_update_task','2017-09-11 06:59:08','fa-ticket','Market Analysis of COGO as a Project management tool',NULL,0),(360,1,'leave_management',1,'activity_leave_save','2017-09-11 09:27:00','fa-ticket','cogo admin -> Casual Leaves','09-12-2017 TO 09-12-2017',0),(361,1,'user',51,'activity_added_new_user','2017-09-11 09:58:07','fa-user','deeptirai',NULL,0),(362,63,'tasks',12,'activity_tasks_timer_off','2017-09-11 10:12:28','fa-copy','Group and one to one chat info and Details',NULL,0),(363,63,'tasks',12,'activity_tasks_timer_on','2017-09-11 10:12:40','fa-copy','Group and one to one chat info and Details',NULL,0),(364,58,'bugs',5,'activity_update_bug','2017-09-11 10:13:17','fa-ticket','In Progress',NULL,0),(365,59,'tasks',64,'activity_update_task_timesheet','2017-09-11 10:15:04','fa-users','API + API test cases',NULL,0),(366,57,'settings',57,'activity_update_profile','2017-09-11 11:29:34','fa-coffee','Ambuj Singh',NULL,0),(367,57,'settings',57,'activity_update_profile','2017-09-11 11:29:38','fa-coffee','Ambuj Singh',NULL,0),(368,57,'settings',57,'activity_update_profile','2017-09-11 11:32:23','fa-coffee','Ambuj Singh',NULL,0),(369,57,'settings',57,'activity_update_profile','2017-09-11 11:35:19','fa-coffee','Ambuj Singh',NULL,0),(370,57,'settings',57,'activity_update_profile','2017-09-11 11:35:22','fa-coffee','Ambuj Singh',NULL,0),(371,57,'settings',57,'activity_update_profile','2017-09-11 11:35:46','fa-coffee','Ambuj Singh',NULL,0),(372,57,'settings',57,'activity_update_profile','2017-09-11 11:35:58','fa-coffee','Ambuj Singh',NULL,0),(373,57,'settings',57,'activity_update_profile','2017-09-11 11:37:09','fa-coffee','Ambuj Singh',NULL,0),(374,1,'projects',17,'activity_save_project','2017-09-11 12:23:44','fa-circle-o','COGO Corrections',NULL,0),(375,1,'tasks',14,'activity_update_task','2017-09-11 12:43:08','fa-ticket','Add Bug- Showing error on form submission',NULL,0),(376,1,'tasks',15,'activity_update_task','2017-09-11 12:44:08','fa-ticket','Assign Task to - Not showing correct user list',NULL,0),(377,1,'tasks',16,'activity_update_task','2017-09-11 12:45:06','fa-ticket','Create Task - error page on form submission',NULL,0),(378,1,'tasks',17,'activity_update_task','2017-09-11 12:45:44','fa-ticket','Create project - Not able to add all desired people in the project',NULL,0),(379,50,'client',22,'activity_update_company','2017-09-11 12:47:04','fa-user','Qliniqo',NULL,0),(380,50,'client',23,'activity_update_company','2017-09-11 12:47:44','fa-user','HalaReward',NULL,0),(381,55,'settings',55,'activity_password_update','2017-09-11 13:10:27','fa-coffee','chetansant',NULL,0),(382,55,'settings',55,'activity_update_profile','2017-09-11 13:11:46','fa-coffee','Chetan Sant',NULL,0),(383,63,'tasks',12,'activity_tasks_timer_off','2017-09-11 14:33:46','fa-copy','Group and one to one chat info and Details',NULL,0),(384,1,'user',70,'activity_added_new_user','2017-09-12 04:45:21','fa-user','gouravpandya',NULL,0),(385,1,'departments',19,'activity_added_a_department','2017-09-12 04:47:01','fa-coffee','Web Development',NULL,0),(386,1,'departments',19,'activity_added_a_department','2017-09-12 04:47:21','fa-coffee','Web Development',NULL,0),(387,1,'departments',19,'activity_added_a_department','2017-09-12 04:47:56','fa-coffee','Web Development',NULL,0),(388,63,'tasks',12,'activity_update_task','2017-09-12 06:42:56','fa-ticket','Group and one to one chat info and Details',NULL,0),(389,63,'tasks',12,'activity_tasks_timer_on','2017-09-12 06:53:18','fa-copy','Group and one to one chat info and Details',NULL,0),(390,59,'tasks',73,'activity_update_task_timesheet','2017-09-12 06:55:18','fa-users','API + API test cases',NULL,0),(391,59,'tasks',7,'activity_tasks_timer_on','2017-09-12 06:55:47','fa-copy','API + API test cases',NULL,0),(392,59,'tasks',7,'activity_tasks_timer_off','2017-09-12 06:56:09','fa-copy','API + API test cases',NULL,0),(393,50,'client',24,'activity_update_company','2017-09-12 07:11:54','fa-user','Gpayments',NULL,0),(394,50,'client',25,'activity_update_company','2017-09-12 07:12:20','fa-user','Sail',NULL,0),(395,50,'client',25,'activity_added_new_company','2017-09-12 07:12:50','fa-user','masato(sail)',NULL,0),(396,1,'projects',18,'activity_save_project','2017-09-12 07:14:04','fa-circle-o','Estimations',NULL,0),(397,1,'tasks',18,'activity_update_task','2017-09-12 07:15:00','fa-ticket','Fitness App',NULL,0),(398,1,'tasks',19,'activity_update_task','2017-09-12 07:16:00','fa-ticket','Transporter\'s app',NULL,0),(399,1,'tasks',20,'activity_update_task','2017-09-12 07:16:42','fa-ticket','Moodle Task- estimates breakup',NULL,0),(400,61,'projects',19,'activity_save_project','2017-09-12 07:26:22','fa-circle-o','Three DS Secure Payment SDK',NULL,0),(401,61,'project',19,'activity_tasks_timer_on','2017-09-12 07:26:49','fa-copy','Three DS Secure Payment SDK',NULL,0),(402,61,'project',19,'activity_tasks_timer_off','2017-09-12 07:26:52','fa-copy','Three DS Secure Payment SDK',NULL,0),(403,61,'project',19,'activity_tasks_timer_on','2017-09-12 07:27:25','fa-copy','Three DS Secure Payment SDK',NULL,0),(404,53,'tasks',17,'activity_update_task','2017-09-12 08:59:36','fa-ticket','100',NULL,0),(405,1,'tasks',18,'activity_update_task','2017-09-12 09:54:31','fa-ticket','Fitness App',NULL,0),(406,73,'settings',73,'activity_update_profile','2017-09-12 12:20:15','fa-coffee','Farhan Shaikh',NULL,0),(407,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:08','fa-copy','Three DS Secure Payment SDK',NULL,0),(408,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:09','fa-copy','Three DS Secure Payment SDK',NULL,0),(409,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:10','fa-copy','Three DS Secure Payment SDK',NULL,0),(410,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:11','fa-copy','Three DS Secure Payment SDK',NULL,0),(411,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:12','fa-copy','Three DS Secure Payment SDK',NULL,0),(412,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:12','fa-copy','Three DS Secure Payment SDK',NULL,0),(413,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:13','fa-copy','Three DS Secure Payment SDK',NULL,0),(414,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:14','fa-copy','Three DS Secure Payment SDK',NULL,0),(415,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:15','fa-copy','Three DS Secure Payment SDK',NULL,0),(416,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:15','fa-copy','Three DS Secure Payment SDK',NULL,0),(417,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:16','fa-copy','Three DS Secure Payment SDK',NULL,0),(418,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:17','fa-copy','Three DS Secure Payment SDK',NULL,0),(419,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:18','fa-copy','Three DS Secure Payment SDK',NULL,0),(420,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:19','fa-copy','Three DS Secure Payment SDK',NULL,0),(421,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:19','fa-copy','Three DS Secure Payment SDK',NULL,0),(422,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:20','fa-copy','Three DS Secure Payment SDK',NULL,0),(423,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:21','fa-copy','Three DS Secure Payment SDK',NULL,0),(424,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:22','fa-copy','Three DS Secure Payment SDK',NULL,0),(425,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:23','fa-copy','Three DS Secure Payment SDK',NULL,0),(426,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:24','fa-copy','Three DS Secure Payment SDK',NULL,0),(427,61,'project',19,'activity_tasks_timer_off','2017-09-12 13:55:24','fa-copy','Three DS Secure Payment SDK',NULL,0),(428,63,'tasks',12,'activity_update_task','2017-09-12 14:12:00','fa-ticket','100',NULL,0),(429,63,'tasks',12,'activity_update_task','2017-09-12 14:12:04','fa-ticket','0',NULL,0),(430,63,'tasks',12,'activity_tasks_timer_off','2017-09-12 14:12:29','fa-copy','Group and one to one chat info and Details',NULL,0),(431,63,'tasks',12,'activity_update_task','2017-09-12 14:12:35','fa-ticket','Group and one to one chat info and Details',NULL,0),(432,61,'project',19,'activity_tasks_timer_off','2017-09-13 04:49:02','fa-copy','Three DS Secure Payment SDK',NULL,0),(433,61,'project',19,'activity_tasks_timer_off','2017-09-13 04:49:03','fa-copy','Three DS Secure Payment SDK',NULL,0),(434,61,'project',19,'activity_tasks_timer_off','2017-09-13 04:49:04','fa-copy','Three DS Secure Payment SDK',NULL,0),(435,61,'project',19,'activity_tasks_timer_off','2017-09-13 04:49:04','fa-copy','Three DS Secure Payment SDK',NULL,0),(436,61,'project',19,'activity_tasks_timer_off','2017-09-13 04:49:05','fa-copy','Three DS Secure Payment SDK',NULL,0),(437,61,'project',19,'activity_tasks_timer_off','2017-09-13 04:49:09','fa-copy','Three DS Secure Payment SDK',NULL,0),(438,61,'project',19,'activity_tasks_timer_off','2017-09-13 04:49:11','fa-copy','Three DS Secure Payment SDK',NULL,0),(439,61,'project',19,'activity_tasks_timer_off','2017-09-13 04:49:13','fa-copy','Three DS Secure Payment SDK',NULL,0),(440,61,'project',19,'activity_tasks_timer_off','2017-09-13 04:49:16','fa-copy','Three DS Secure Payment SDK',NULL,0),(441,61,'project',19,'activity_tasks_timer_off','2017-09-13 04:49:17','fa-copy','Three DS Secure Payment SDK',NULL,0),(442,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:05','fa-copy','Three DS Secure Payment SDK',NULL,0),(443,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:06','fa-copy','Three DS Secure Payment SDK',NULL,0),(444,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:06','fa-copy','Three DS Secure Payment SDK',NULL,0),(445,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:07','fa-copy','Three DS Secure Payment SDK',NULL,0),(446,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:09','fa-copy','Three DS Secure Payment SDK',NULL,0),(447,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:09','fa-copy','Three DS Secure Payment SDK',NULL,0),(448,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:10','fa-copy','Three DS Secure Payment SDK',NULL,0),(449,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:11','fa-copy','Three DS Secure Payment SDK',NULL,0),(450,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:11','fa-copy','Three DS Secure Payment SDK',NULL,0),(451,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:12','fa-copy','Three DS Secure Payment SDK',NULL,0),(452,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:12','fa-copy','Three DS Secure Payment SDK',NULL,0),(453,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:13','fa-copy','Three DS Secure Payment SDK',NULL,0),(454,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:14','fa-copy','Three DS Secure Payment SDK',NULL,0),(455,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:15','fa-copy','Three DS Secure Payment SDK',NULL,0),(456,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:15','fa-copy','Three DS Secure Payment SDK',NULL,0),(457,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:16','fa-copy','Three DS Secure Payment SDK',NULL,0),(458,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:17','fa-copy','Three DS Secure Payment SDK',NULL,0),(459,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:18','fa-copy','Three DS Secure Payment SDK',NULL,0),(460,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:19','fa-copy','Three DS Secure Payment SDK',NULL,0),(461,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:19','fa-copy','Three DS Secure Payment SDK',NULL,0),(462,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:20','fa-copy','Three DS Secure Payment SDK',NULL,0),(463,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:20','fa-copy','Three DS Secure Payment SDK',NULL,0),(464,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:21','fa-copy','Three DS Secure Payment SDK',NULL,0),(465,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:22','fa-copy','Three DS Secure Payment SDK',NULL,0),(466,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:01:23','fa-copy','Three DS Secure Payment SDK',NULL,0),(467,58,'tasks',8,'activity_update_task','2017-09-13 05:18:04','fa-ticket','Create architecture of Side bar',NULL,0),(468,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:18:52','fa-copy','Three DS Secure Payment SDK',NULL,0),(469,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:18:53','fa-copy','Three DS Secure Payment SDK',NULL,0),(470,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:18:53','fa-copy','Three DS Secure Payment SDK',NULL,0),(471,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:18:54','fa-copy','Three DS Secure Payment SDK',NULL,0),(472,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:18:56','fa-copy','Three DS Secure Payment SDK',NULL,0),(473,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:18:57','fa-copy','Three DS Secure Payment SDK',NULL,0),(474,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:18:58','fa-copy','Three DS Secure Payment SDK',NULL,0),(475,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:19:24','fa-copy','Three DS Secure Payment SDK',NULL,0),(476,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:19:25','fa-copy','Three DS Secure Payment SDK',NULL,0),(477,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:19:34','fa-copy','Three DS Secure Payment SDK',NULL,0),(478,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:19:35','fa-copy','Three DS Secure Payment SDK',NULL,0),(479,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:19:35','fa-copy','Three DS Secure Payment SDK',NULL,0),(480,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:19:38','fa-copy','Three DS Secure Payment SDK',NULL,0),(481,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:19:39','fa-copy','Three DS Secure Payment SDK',NULL,0),(482,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:19:39','fa-copy','Three DS Secure Payment SDK',NULL,0),(483,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:19:40','fa-copy','Three DS Secure Payment SDK',NULL,0),(484,61,'project',19,'activity_tasks_timer_off','2017-09-13 05:19:42','fa-copy','Three DS Secure Payment SDK',NULL,0),(485,1,'tasks',21,'activity_update_task','2017-09-13 05:39:53','fa-ticket','Clock In/out- not able to edit on the next day',NULL,0),(486,1,'project',9,'activity_added_new_milestones','2017-09-13 05:43:50','fa-rocket','Design Completion',NULL,0),(487,59,'tasks',7,'activity_update_task','2017-09-13 05:49:21','fa-ticket','100',NULL,0),(488,63,'tasks',22,'activity_update_task','2017-09-13 05:52:35','fa-ticket','Update Profile Pic and Change Status',NULL,0),(489,63,'tasks',22,'activity_update_task','2017-09-13 05:53:30','fa-ticket','Update Profile Pic and Change Status',NULL,0),(490,63,'tasks',22,'activity_tasks_timer_on','2017-09-13 05:53:46','fa-copy','Update Profile Pic and Change Status',NULL,0),(491,63,'tasks',22,'activity_tasks_timer_on','2017-09-13 05:53:46','fa-copy','Update Profile Pic and Change Status',NULL,0),(492,63,'tasks',22,'activity_update_task','2017-09-13 05:54:05','fa-ticket','Update Profile Pic and Change Status',NULL,0),(493,59,'tasks',23,'activity_update_task','2017-09-13 05:57:12','fa-ticket','All Screen + custom component Design',NULL,0),(494,59,'tasks',24,'activity_update_task','2017-09-13 05:58:28','fa-ticket','All Screen API integration with application flow',NULL,0),(495,1,'project',10,'activity_added_new_milestones','2017-09-13 05:58:53','fa-rocket','Project setup on server ',NULL,0),(496,1,'project',11,'activity_added_new_milestones','2017-09-13 06:01:26','fa-rocket','IOS front-end of MVP-1',NULL,0),(497,1,'project',12,'activity_added_new_milestones','2017-09-13 06:04:39','fa-rocket','Android front-end of MVP-1',NULL,0),(498,61,'project',19,'activity_tasks_timer_off','2017-09-13 06:04:54','fa-copy','Three DS Secure Payment SDK',NULL,0),(499,61,'project',19,'activity_tasks_timer_off','2017-09-13 06:04:54','fa-copy','Three DS Secure Payment SDK',NULL,0),(500,61,'project',19,'activity_tasks_timer_off','2017-09-13 06:04:55','fa-copy','Three DS Secure Payment SDK',NULL,0),(501,61,'project',19,'activity_tasks_timer_off','2017-09-13 06:04:56','fa-copy','Three DS Secure Payment SDK',NULL,0),(502,61,'project',19,'activity_tasks_timer_off','2017-09-13 06:04:57','fa-copy','Three DS Secure Payment SDK',NULL,0),(503,61,'project',19,'activity_tasks_timer_off','2017-09-13 06:04:58','fa-copy','Three DS Secure Payment SDK',NULL,0),(504,61,'project',19,'activity_tasks_timer_off','2017-09-13 06:04:58','fa-copy','Three DS Secure Payment SDK',NULL,0),(505,61,'project',19,'activity_tasks_timer_off','2017-09-13 06:04:59','fa-copy','Three DS Secure Payment SDK',NULL,0),(506,61,'project',19,'activity_tasks_timer_off','2017-09-13 06:05:00','fa-copy','Three DS Secure Payment SDK',NULL,0),(507,61,'project',19,'activity_tasks_timer_off','2017-09-13 06:05:01','fa-copy','Three DS Secure Payment SDK',NULL,0),(508,1,'tasks',25,'activity_update_task','2017-09-13 06:06:44','fa-ticket','IOS design completion',NULL,0),(509,1,'tasks',26,'activity_update_task','2017-09-13 06:07:55','fa-ticket','Android Design completion',NULL,0),(510,59,'tasks',24,'activity_tasks_timer_on','2017-09-13 06:09:12','fa-copy','All Screen API integration with application flow',NULL,0),(511,1,'tasks',27,'activity_update_task','2017-09-13 06:09:47','fa-ticket','Create a DB clone on our local server and get API access',NULL,0),(512,1,'tasks',28,'activity_update_task','2017-09-13 06:10:48','fa-ticket','Review provided APIs and make changes wherever needed',NULL,0),(513,1,'tasks',29,'activity_update_task','2017-09-13 06:12:41','fa-ticket','Increase the page size in all listings (projects/users/tasks/leaves) from 10 to 60',NULL,0),(514,63,'tasks',22,'activity_update_task','2017-09-13 09:57:12','fa-ticket','Update Profile Pic and Change Status',NULL,0),(515,1,'client',26,'activity_update_company','2017-09-13 10:13:11','fa-user','Manuel Enrique',NULL,0),(516,1,'projects',20,'activity_save_project','2017-09-13 10:15:36','fa-circle-o','Doctor\'s Appointment App',NULL,0),(517,72,'tasks',17,'activity_update_task','2017-09-13 11:25:47','fa-ticket','0',NULL,0),(518,63,'tasks',22,'activity_tasks_timer_off','2017-09-13 14:27:57','fa-copy','Update Profile Pic and Change Status',NULL,0),(519,63,'tasks',22,'activity_update_task','2017-09-13 14:28:00','fa-ticket','Update Profile Pic and Change Status',NULL,0),(520,50,'award',52,'activity_time_change_request','2017-09-13 14:44:26','fa-ticket','Naveen Sharma','',0),(521,50,'award',52,'activity_time_change_request','2017-09-13 14:44:59','fa-ticket','Naveen Sharma','error in am pm',0),(522,59,'tasks',24,'activity_tasks_timer_off','2017-09-13 15:01:30','fa-copy','All Screen API integration with application flow',NULL,0),(523,59,'tasks',24,'activity_tasks_timer_off','2017-09-13 15:01:31','fa-copy','All Screen API integration with application flow',NULL,0),(524,70,'leave_management',2,'activity_leave_save','2017-09-14 04:44:43','fa-ticket','Gourav Pandya -> Casual Leaves','10-16-2017 TO 10-18-2017',0),(525,59,'project',13,'activity_tasks_timer_on','2017-09-14 04:54:40','fa-copy','MyPanditG',NULL,0),(526,59,'project',169,'activity_update_task_timesheet','2017-09-14 04:56:21','fa-users','MyPanditG',NULL,0),(527,59,'tasks',30,'activity_update_task','2017-09-14 04:58:16','fa-ticket','All Screen API integration with application flow',NULL,0),(528,59,'tasks',30,'activity_tasks_timer_on','2017-09-14 04:58:41','fa-copy','All Screen API integration with application flow',NULL,0),(529,59,'tasks',170,'activity_update_task_timesheet','2017-09-14 05:00:16','fa-users','All Screen API integration with application flow',NULL,0),(530,61,'project',19,'activity_tasks_timer_on','2017-09-14 05:36:28','fa-copy','Three DS Secure Payment SDK',NULL,0),(531,50,'leave_management',3,'activity_leave_save','2017-09-14 11:20:56','fa-ticket','Naveen Sharma -> Casual Leaves','09-28-2017 TO 09-29-2017',0),(532,1,'departments',23,'activity_added_a_department','2017-09-14 12:32:20','fa-coffee','Digital Marketing',NULL,0),(533,59,'project',13,'activity_tasks_timer_off','2017-09-14 13:03:40','fa-copy','MyPanditG',NULL,0),(534,59,'tasks',30,'activity_tasks_timer_off','2017-09-14 13:03:51','fa-copy','All Screen API integration with application flow',NULL,0),(535,72,'tasks',15,'activity_update_task','2017-09-15 04:31:09','fa-ticket','100',NULL,0),(536,59,'tasks',30,'activity_tasks_timer_on','2017-09-15 04:34:13','fa-copy','All Screen API integration with application flow',NULL,0),(537,61,'project',19,'activity_tasks_timer_off','2017-09-15 04:44:09','fa-copy','Three DS Secure Payment SDK',NULL,0),(538,61,'project',19,'activity_tasks_timer_on','2017-09-15 04:46:18','fa-copy','Three DS Secure Payment SDK',NULL,0),(539,50,'award',241,'activity_time_change_request','2017-09-15 07:08:16','fa-ticket','Naveen Sharma','test',0),(540,1,'award',69,'activity_time_change_request','2017-09-15 07:11:04','fa-ticket','cogo admin','',0),(541,1,'departments',23,'activity_added_a_department','2017-09-15 09:08:17','fa-coffee','Digital Marketing',NULL,0),(542,1,'departments',23,'activity_added_a_department','2017-09-15 09:08:51','fa-coffee','Digital Marketing',NULL,0),(543,1,'departments',24,'activity_added_a_department','2017-09-15 09:09:30','fa-coffee','SEO',NULL,0),(544,1,'departments',24,'activity_added_a_department','2017-09-15 09:10:23','fa-coffee','SEO',NULL,0),(545,1,'project',15,'activity_new_project_comment','2017-09-15 11:43:52','fa-ticket','Added a Comments.',NULL,0),(546,1,'bugs',6,'activity_new_bug','2017-09-15 14:18:27','fa-ticket','demotest',NULL,0),(547,1,'bugs',6,'activity_update_bug','2017-09-15 14:18:49','fa-ticket','demotest',NULL,0),(548,59,'tasks',30,'activity_tasks_timer_off','2017-09-15 14:45:01','fa-copy','All Screen API integration with application flow',NULL,0),(549,59,'tasks',30,'activity_tasks_timer_on','2017-09-18 04:52:01','fa-copy','All Screen API integration with application flow',NULL,0),(550,59,'tasks',30,'activity_tasks_timer_off','2017-09-18 05:45:12','fa-copy','All Screen API integration with application flow',NULL,0),(551,59,'tasks',30,'activity_tasks_timer_on','2017-09-18 06:01:47','fa-copy','All Screen API integration with application flow',NULL,0),(552,59,'tasks',30,'activity_tasks_timer_off','2017-09-18 09:25:28','fa-copy','All Screen API integration with application flow',NULL,0),(553,1,'bugs',7,'activity_new_bug','2017-09-19 11:02:03','fa-ticket','testdemo',NULL,0),(554,1,'bugs',7,'activity_bug_deleted','2017-09-19 11:03:04','fa-ticket','testdemo',NULL,0),(555,1,'tasks',15,'activity_update_task','2017-09-19 11:37:02','fa-ticket','0',NULL,0),(556,1,'tasks',31,'activity_update_task','2017-09-19 11:38:22','fa-ticket','need to create a feature to manage time log for non-project tasks as well',NULL,0),(557,72,'tasks',21,'activity_update_task','2017-09-20 04:48:07','fa-ticket','100',NULL,0),(558,72,'tasks',21,'activity_update_task','2017-09-20 04:48:08','fa-ticket','0',NULL,0),(559,1,'tasks',32,'activity_update_task','2017-09-20 05:59:36','fa-ticket','Logged in as Admin and NOT able to ClockOut',NULL,0),(560,1,'departments',22,'activity_added_a_department','2017-09-20 06:06:32','fa-coffee','Mobile Development',NULL,0),(561,1,'departments',22,'activity_added_a_department','2017-09-20 06:06:58','fa-coffee','Mobile Development',NULL,0),(562,62,'leave_management',4,'activity_leave_save','2017-09-21 14:17:14','fa-ticket','Pankaj Saad -> Casual Leaves','09-28-2017 TO 09-29-2017',0),(563,76,'leave_management',5,'activity_leave_save','2017-09-22 12:33:24','fa-ticket','Nidhi Trivedi  -> Casual Leaves','09-29-2017 TO 09-29-2017',0),(564,1,'tasks',33,'activity_update_task','2017-09-22 12:34:02','fa-ticket','Leave Management- Allow half day leaves as well',NULL,0),(565,1,'leave_management',5,'activity_leave_change','2017-09-22 12:36:17','fa-ticket','Accepted','09-29-2017 TO 09-29-2017',0),(566,1,'leave_management',1,'activity_leave_deleted','2017-09-22 12:42:37','fa-ticket','cogo admin -> Casual Leaves','09-12-2017 TO 09-12-2017',0),(567,1,'tasks',34,'activity_update_task','2017-09-22 12:50:17','fa-ticket','Notifications for applied leaves - When request is made, the notify HR. On acceptance or rejection, ',NULL,0),(568,1,'leave_management',4,'activity_leave_change','2017-09-26 12:18:58','fa-ticket','Accepted','09-28-2017 TO 09-29-2017',0),(569,1,'leave_management',2,'activity_leave_change','2017-09-27 06:16:28','fa-ticket','Accepted','10-16-2017 TO 10-18-2017',0),(570,51,'leave_management',3,'activity_leave_change','2017-09-27 10:38:17','fa-ticket','Accepted','09-28-2017 TO 09-29-2017',0),(571,51,'user',84,'activity_added_new_user','2017-09-27 11:50:57','fa-user','akhileshsharma',NULL,0),(572,69,'leave_management',6,'activity_leave_save','2017-09-28 06:06:54','fa-ticket','Devendra Sharma -> Casual Leaves','09-29-2017 TO 09-29-2017',0),(573,63,'settings',63,'activity_password_update','2017-09-29 14:24:04','fa-coffee','krishnapalsingh',NULL,0),(574,1,'departments',NULL,'activity_added_a_department','2017-10-03 12:03:52','fa-coffee','QA',NULL,0),(575,1,'departments',25,'activity_added_a_department','2017-10-03 12:04:44','fa-coffee','QA',NULL,0),(576,1,'user',85,'activity_added_new_user','2017-10-03 12:06:20','fa-user','surajpalsania',NULL,0),(577,50,'projects',21,'activity_save_project','2017-10-03 12:11:59','fa-circle-o','qliniqo',NULL,0),(578,50,'project',21,'activity_update_project','2017-10-03 12:13:01','fa-ticket','qliniqo',NULL,0),(579,1,'project',21,'activity_update_project','2017-10-03 12:14:40','fa-ticket','qliniqo',NULL,0),(580,1,'user',86,'activity_added_new_user','2017-10-03 13:13:31','fa-user','kaushalendrapandey',NULL,0),(581,86,'projects',22,'activity_save_project','2017-10-04 09:33:43','fa-circle-o','CloathForm',NULL,0),(582,86,'projects',23,'activity_save_project','2017-10-04 09:35:09','fa-circle-o','CloathForm',NULL,0),(583,86,'project',13,'activity_added_new_milestones','2017-10-04 09:44:48','fa-rocket','MVP-1 (Web-Site)',NULL,0),(584,1,'project',23,'activity_project_deleted','2017-10-04 09:48:48','fa-circle-o','CloathForm',NULL,0),(585,1,'project',22,'activity_project_deleted','2017-10-04 09:49:00','fa-circle-o','CloathForm',NULL,0),(586,1,'project',9,'activity_update_project','2017-10-04 09:49:21','fa-ticket','ClothFarm',NULL,0),(587,86,'project',14,'activity_added_new_milestones','2017-10-04 09:51:56','fa-rocket','Theme Integration ',NULL,0),(588,86,'project',14,'activity_updated_milestones','2017-10-04 09:53:24','fa-rocket','Web-Site, with theme Payment, shipment details',NULL,0),(589,86,'tasks',35,'activity_update_task','2017-10-04 09:58:29','fa-ticket','Theme Integration with Categories / sub-categories & relevant Images',NULL,0),(590,86,'tasks',36,'activity_update_task','2017-10-04 10:01:14','fa-ticket','Payment Gateway Integration ',NULL,0),(591,1,'user',87,'activity_added_new_user','2017-10-04 10:11:00','fa-user','kishorpanar',NULL,0),(592,69,'bugs',8,'activity_new_bug','2017-10-05 05:11:12','fa-ticket','test bug Add',NULL,0),(593,69,'bugs',8,'activity_update_bug','2017-10-05 05:13:44','fa-ticket','Verified',NULL,0),(594,69,'bugs',8,'activity_update_bug','2017-10-05 05:13:53','fa-ticket','test bug Add',NULL,0),(595,69,'bugs',8,'activity_update_bug','2017-10-05 05:14:04','fa-ticket','Resolved',NULL,0),(596,69,'bugs',8,'activity_update_bug','2017-10-05 05:14:13','fa-ticket','test bug Add',NULL,0),(597,69,'bugs',9,'activity_new_bug','2017-10-05 05:18:41','fa-ticket','Demo One ',NULL,0),(598,69,'tasks',14,'activity_update_task','2017-10-05 05:19:29','fa-ticket','Add Bug- Showing error on form submission',NULL,0),(599,69,'tasks',14,'activity_update_task','2017-10-05 05:36:01','fa-ticket','Add Bug- Showing error on form submission',NULL,0),(600,1,'settings',1,'activity_save_email_settings','2017-10-05 06:10:37','fa-coffee','info@neerajhotel.com',NULL,0),(601,1,'settings',1,'activity_save_email_settings','2017-10-05 06:35:16','fa-coffee','devendra.sharma@cosnagous.com',NULL,0),(602,1,'mailbox',1,'Mail Sent','2017-10-05 06:36:49','fa-circle-o','devendra.sharma@consagous.com',NULL,0),(603,1,'mailbox',1,'Mail Sent','2017-10-05 06:39:08','fa-circle-o','devendra.sharma@consagous.com',NULL,0),(604,69,'tasks',37,'activity_update_task','2017-10-05 06:41:36','fa-ticket','Demo Task',NULL,0),(605,69,'tasks',37,'activity_task_deleted','2017-10-05 06:42:20','fa-ticket','Demo Task',NULL,0),(606,69,'projects',24,'activity_save_project','2017-10-05 06:44:43','fa-circle-o','Demo',NULL,0),(607,69,'project',24,'activity_project_deleted','2017-10-05 06:45:55','fa-circle-o','Demo',NULL,0),(608,69,'projects',25,'activity_save_project','2017-10-05 06:47:27','fa-circle-o','test project create',NULL,0),(609,69,'project',15,'activity_added_new_milestones','2017-10-05 07:07:10','fa-rocket','test milestone',NULL,0),(610,69,'tasks',38,'activity_update_task','2017-10-05 07:14:22','fa-ticket','task test',NULL,0),(611,69,'tasks',38,'activity_update_task','2017-10-05 07:14:26','fa-ticket','100',NULL,0),(612,69,'tasks',38,'activity_update_task','2017-10-05 07:15:17','fa-ticket','0',NULL,0),(613,69,'tasks',38,'activity_update_task','2017-10-05 07:15:21','fa-ticket','100',NULL,0),(614,69,'tasks',38,'activity_update_task','2017-10-05 07:15:24','fa-ticket','0',NULL,0),(615,69,'tasks',39,'activity_update_task','2017-10-05 07:17:59','fa-ticket','demo',NULL,0),(616,69,'tasks',38,'activity_update_task','2017-10-05 07:18:07','fa-ticket','100',NULL,0),(617,69,'tasks',39,'activity_update_task','2017-10-05 07:18:16','fa-ticket','100',NULL,0),(618,1,'project',25,'activity_project_deleted','2017-10-05 10:51:46','fa-circle-o','test project create',NULL,0),(619,1,'tasks',37,'activity_update_task','2017-10-05 10:52:10','fa-ticket','100',NULL,0),(620,1,'tasks',15,'activity_update_task','2017-10-05 10:52:28','fa-ticket','100',NULL,0),(621,1,'tasks',40,'activity_update_task','2017-10-05 10:53:43','fa-ticket','new task check',NULL,0),(622,1,'tasks',40,'activity_update_task','2017-10-05 10:53:54','fa-ticket','100',NULL,0),(623,69,'tasks',32,'activity_update_task','2017-10-05 12:37:07','fa-ticket','Logged in as Admin and NOT able to ClockOut',NULL,0),(624,69,'tasks',41,'activity_update_task','2017-10-05 12:38:35','fa-ticket','task test',NULL,0),(625,69,'tasks',41,'activity_update_task','2017-10-05 12:38:43','fa-ticket','100',NULL,0),(626,1,'bugs',8,'activity_bug_deleted','2017-10-05 12:40:18','fa-ticket','test bug Add',NULL,0),(627,1,'bugs',9,'activity_bug_deleted','2017-10-05 12:40:24','fa-ticket','Demo One ',NULL,0),(628,69,'tasks',17,'activity_update_task','2017-10-05 13:18:47','fa-ticket','100',NULL,0),(629,69,'projects',26,'activity_save_project','2017-10-05 13:43:18','fa-circle-o','Cogo test',NULL,0),(630,69,'tasks',42,'activity_update_task','2017-10-05 13:45:57','fa-ticket','task ',NULL,0),(631,69,'project',26,'activity_project_deleted','2017-10-05 13:46:20','fa-circle-o','Cogo test',NULL,0),(632,1,'projects',27,'activity_save_project','2017-10-05 14:00:18','fa-circle-o','cogo test',NULL,0),(633,1,'project',27,'activity_project_deleted','2017-10-05 14:07:03','fa-circle-o','cogo test',NULL,0),(634,1,'tasks',16,'activity_update_task','2017-10-05 14:07:20','fa-ticket','100',NULL,0),(635,1,'award',178,'activity_time_change_request','2017-10-05 14:09:09','fa-ticket','cogo admin','',0),(636,69,'leave_management',7,'activity_leave_save','2017-10-16 08:03:02','fa-ticket','Devendra Sharma -> Casual Leaves','10-18-2017 TO 10-18-2017',0),(637,62,'leave_management',8,'activity_leave_save','2017-11-13 09:02:24','fa-ticket','Pankaj Saad -> Casual Leaves','12-04-2017 TO 12-05-2017',0);
/*!40000 ALTER TABLE `tbl_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_advance_salary`
--

DROP TABLE IF EXISTS `tbl_advance_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_advance_salary` (
  `advance_salary_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `advance_amount` varchar(200) NOT NULL,
  `deduct_month` varchar(30) DEFAULT NULL,
  `reason` text,
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 =pending,1=accpect , 2 = reject and 3 = paid',
  `approve_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`advance_salary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_advance_salary`
--

LOCK TABLES `tbl_advance_salary` WRITE;
/*!40000 ALTER TABLE `tbl_advance_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_advance_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_announcements`
--

DROP TABLE IF EXISTS `tbl_announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_announcements` (
  `announcements_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('published','unpublished') NOT NULL DEFAULT 'unpublished' COMMENT '0 = unpublished, 1 = published',
  `view_status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Read 2=Unread',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `all_client` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`announcements_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_announcements`
--

LOCK TABLES `tbl_announcements` WRITE;
/*!40000 ALTER TABLE `tbl_announcements` DISABLE KEYS */;
INSERT INTO `tbl_announcements` VALUES (2,'Welcome Onboard!','Let us all start using COGO to manage all our day-to-day activities including projects, tasks, time-logs, attendance, leaves.&nbsp;<br>This will make the system more robust and will reduce the chances of error.',1,'2017-09-04 11:11:50','published',1,'2017-09-06','2017-09-30','1');
/*!40000 ALTER TABLE `tbl_announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_assign_item`
--

DROP TABLE IF EXISTS `tbl_assign_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_assign_item` (
  `assign_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assign_inventory` int(5) NOT NULL,
  `assign_date` date NOT NULL,
  PRIMARY KEY (`assign_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_assign_item`
--

LOCK TABLES `tbl_assign_item` WRITE;
/*!40000 ALTER TABLE `tbl_assign_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_assign_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_attendance`
--

DROP TABLE IF EXISTS `tbl_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `leave_category_id` int(11) DEFAULT '0',
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `attendance_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'status 0=absent 1=present 3 = onleave',
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1069 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attendance`
--

LOCK TABLES `tbl_attendance` WRITE;
/*!40000 ALTER TABLE `tbl_attendance` DISABLE KEYS */;
INSERT INTO `tbl_attendance` VALUES (13,54,0,'2017-09-06','2017-09-06',1),(14,50,0,'2017-09-07','2017-09-08',1),(15,58,0,'2017-09-07','2017-09-08',1),(16,59,0,'2017-09-07','2017-09-08',1),(17,61,0,'2017-09-07','2017-09-08',1),(18,62,0,'2017-09-07','2017-09-11',1),(19,70,0,'2017-09-07',NULL,1),(21,69,0,'2017-09-07','2017-09-07',1),(22,60,0,'2017-09-07','2017-09-11',1),(23,64,0,'2017-09-07','2017-09-07',1),(24,63,0,'2017-09-07','2017-09-07',1),(25,56,0,'2017-09-07','2017-09-07',1),(26,55,0,'2017-09-07','2017-09-07',1),(27,67,0,'2017-09-07','2017-09-07',1),(28,72,0,'2017-09-07','2017-09-07',1),(29,53,0,'2017-09-08','2017-09-11',1),(30,64,0,'2017-09-08','2017-09-12',1),(31,59,0,'2017-09-08','2017-09-08',1),(32,71,0,'2017-09-08','2017-09-11',1),(33,57,0,'2017-09-08','2017-09-08',1),(34,61,0,'2017-09-08','2017-09-14',1),(35,70,0,'2017-09-08','2017-09-11',1),(36,72,0,'2017-09-08','2017-09-08',1),(37,69,0,'2017-09-08','2017-09-11',1),(38,50,0,'2017-09-08','2017-09-08',1),(39,67,0,'2017-09-08','2017-09-11',1),(40,58,0,'2017-09-08','2017-09-08',1),(41,68,0,'2017-09-08','2017-09-11',1),(42,63,0,'2017-09-08','2017-09-08',1),(43,70,0,'2017-09-11','2017-09-11',1),(44,50,0,'2017-09-11','2017-09-11',1),(45,71,0,'2017-09-11','2017-09-11',1),(46,60,0,'2017-09-11','2017-09-11',1),(47,59,0,'2017-09-11','2017-09-11',1),(48,69,0,'2017-09-11','2017-09-11',1),(49,62,0,'2017-09-11','2017-09-12',1),(51,53,0,'2017-09-11','2017-09-13',1),(52,68,0,'2017-09-11','2017-09-12',1),(53,56,0,'2017-09-11','2017-09-12',1),(54,67,0,'2017-09-11','2017-09-12',1),(55,58,0,'2017-09-11','2017-09-11',1),(56,57,0,'2017-09-11','2017-09-12',1),(57,65,0,'2017-09-11','2017-09-11',1),(58,55,0,'2017-09-11','2017-09-11',1),(59,63,0,'2017-09-11','2017-09-11',1),(61,77,0,'2017-09-12','2017-09-12',1),(62,70,0,'2017-09-12','2017-09-13',1),(63,50,0,'2017-09-12','2017-09-12',1),(64,79,0,'2017-09-12','2017-09-12',1),(65,82,0,'2017-09-12','2017-09-12',1),(66,78,0,'2017-09-12','2017-09-12',1),(67,59,0,'2017-09-12','2017-09-13',1),(68,80,0,'2017-09-12','2017-09-13',1),(69,51,0,'2017-09-12','2017-09-12',1),(70,56,0,'2017-09-12','2017-09-12',1),(71,60,0,'2017-09-12','2017-09-13',1),(72,71,0,'2017-09-12','2017-09-12',1),(73,65,0,'2017-09-12','2017-09-14',1),(74,58,0,'2017-09-12','2017-09-12',1),(75,63,0,'2017-09-12','2017-09-12',1),(76,64,0,'2017-09-12','2017-09-12',1),(77,63,0,'2017-09-12','2017-09-12',1),(78,68,0,'2017-09-12','2017-09-13',1),(79,62,0,'2017-09-12','2017-09-12',1),(80,57,0,'2017-09-12','2017-09-12',1),(81,67,0,'2017-09-12','2017-09-15',1),(134,77,0,'2017-09-13','2017-09-14',1),(135,62,0,'2017-09-13','2017-09-13',1),(136,82,0,'2017-09-13','2017-09-13',1),(137,70,0,'2017-09-13','2017-09-13',1),(138,64,0,'2017-09-13','2017-09-13',1),(139,72,0,'2017-09-13','2017-09-14',1),(140,71,0,'2017-09-13','2017-09-13',1),(141,78,0,'2017-09-13','2017-09-13',1),(142,60,0,'2017-09-13','2017-09-14',1),(143,80,0,'2017-09-13','2017-09-14',1),(144,59,0,'2017-09-13','2017-09-13',1),(145,56,0,'2017-09-13','2017-09-14',1),(156,58,0,'2017-09-13','2017-09-13',1),(157,69,0,'2017-09-13','2017-09-13',1),(158,50,0,'2017-09-13','2017-09-13',1),(166,1,0,NULL,'2017-09-13',1),(167,1,0,NULL,'2017-09-13',1),(168,1,0,NULL,'2017-09-13',1),(169,1,0,NULL,'2017-09-13',1),(170,1,0,NULL,'2017-09-13',1),(171,1,0,NULL,'2017-09-13',1),(172,1,0,'2017-10-05','2017-10-05',1),(187,75,0,'2017-09-13','2017-09-14',1),(188,63,0,'2017-09-13','2017-09-14',1),(189,53,0,'2017-09-13','2017-09-21',1),(190,68,0,'2017-09-13','2017-09-15',1),(191,79,0,'2017-09-13','2017-09-13',1),(192,77,0,'2017-09-14','2017-09-14',1),(193,70,0,'2017-09-14','2017-09-14',1),(194,71,0,'2017-09-14','2017-09-14',1),(195,82,0,'2017-09-14','2017-09-14',1),(196,62,0,'2017-09-14','2017-09-15',1),(197,78,0,'2017-09-14','2017-09-14',1),(198,60,0,'2017-09-14','2017-09-14',1),(199,59,0,'2017-09-14','2017-09-14',1),(200,75,0,'2017-09-14','2017-09-15',1),(201,79,0,'2017-09-14','2017-09-15',1),(202,64,0,'2017-09-14','2017-09-14',1),(203,72,0,'2017-09-14','2017-09-14',1),(204,57,0,'2017-09-14','2017-09-15',1),(205,69,0,'2017-09-14','2017-09-15',1),(206,65,0,'2017-09-14','2017-09-14',1),(207,58,0,NULL,'2017-09-15',1),(208,58,0,NULL,'2017-09-15',1),(209,58,0,NULL,'2017-09-15',1),(210,58,0,NULL,'2017-09-15',1),(211,58,0,NULL,'2017-09-15',1),(212,58,0,NULL,'2017-09-15',1),(213,58,0,NULL,'2017-09-15',1),(214,58,0,NULL,'2017-09-15',1),(215,58,0,NULL,'2017-09-14',1),(216,58,0,NULL,'2017-09-14',1),(217,58,0,NULL,'2017-09-14',1),(218,58,0,NULL,'2017-09-14',1),(219,58,0,NULL,'2017-09-14',1),(220,58,0,NULL,'2017-09-14',1),(221,58,0,NULL,'2017-09-14',1),(222,58,0,NULL,'2017-09-14',1),(223,58,0,NULL,'2017-09-14',1),(224,56,0,'2017-09-14','2017-09-14',1),(225,80,0,'2017-09-14','2017-09-15',1),(226,63,0,'2017-09-14','2017-09-15',1),(227,50,0,'2017-09-14','2017-09-15',1),(228,77,0,'2017-09-15','2017-09-15',1),(229,62,0,'2017-09-15','2017-09-15',1),(230,72,0,'2017-09-15','2017-09-15',1),(231,59,0,'2017-09-15','2017-09-15',1),(232,60,0,'2017-09-15','2017-09-15',1),(233,71,0,'2017-09-15','2017-09-15',1),(234,82,0,'2017-09-15','2017-09-18',1),(235,61,0,'2017-09-15',NULL,1),(236,64,0,'2017-09-15','2017-09-15',1),(237,57,0,'2017-09-15','2017-09-18',1),(238,79,0,'2017-09-15','2017-09-18',1),(239,78,0,'2017-09-15','2017-09-18',1),(240,70,0,'2017-09-15','2017-09-15',1),(241,56,0,'2017-09-15','2017-09-15',1),(242,75,0,'2017-09-15','2017-09-18',1),(243,69,0,'2017-09-15','2017-09-15',1),(244,80,0,'2017-09-15','2017-09-18',1),(245,65,0,'2017-09-15','2017-09-15',1),(246,50,0,'2017-09-15','2017-09-18',1),(247,58,0,'2017-09-15','2017-09-15',1),(248,67,0,'2017-09-15','2017-09-18',1),(249,68,0,'2017-09-15','2017-09-18',1),(250,55,0,'2017-09-15','2017-09-18',1),(251,63,0,'2017-09-15','2017-09-18',1),(252,77,0,'2017-09-18','2017-09-19',1),(253,72,0,'2017-09-18','2017-09-18',1),(254,70,0,'2017-09-18','2017-09-18',1),(255,59,0,'2017-09-18','2017-09-18',1),(256,82,0,'2017-09-18','2017-09-18',1),(257,57,0,'2017-09-18','2017-09-20',1),(258,78,0,'2017-09-18','2017-09-19',1),(259,71,0,'2017-09-18','2017-09-18',1),(260,64,0,'2017-09-18','2017-09-18',1),(261,60,0,'2017-09-18','2017-09-18',1),(262,79,0,'2017-09-18','2017-09-18',1),(263,65,0,'2017-09-18','2017-09-18',1),(264,55,0,'2017-09-18','2017-09-20',1),(265,56,0,'2017-09-18','2017-09-18',1),(266,75,0,'2017-09-18','2017-09-18',1),(267,80,0,'2017-09-18','2017-09-18',1),(268,58,0,'2017-09-18','2017-09-19',1),(269,62,0,'2017-09-18','2017-09-18',1),(270,69,0,'2017-09-18','2017-09-18',1),(271,67,0,'2017-09-18','2017-09-20',1),(272,63,0,'2017-09-18','2017-09-18',1),(273,68,0,'2017-09-18','2017-09-19',1),(274,50,0,'2017-09-18','2017-09-19',1),(275,77,0,'2017-09-19','2017-09-20',1),(276,80,0,'2017-09-19','2017-09-19',1),(277,70,0,'2017-09-19','2017-09-19',1),(278,50,0,'2017-09-19','2017-09-21',1),(279,65,0,'2017-09-19','2017-09-19',1),(280,82,0,'2017-09-19','2017-09-19',1),(281,62,0,'2017-09-19',NULL,1),(282,72,0,'2017-09-19','2017-09-19',1),(283,71,0,'2017-09-19','2017-09-20',1),(284,60,0,'2017-09-19','2017-09-19',1),(285,79,0,'2017-09-19','2017-09-20',1),(286,69,0,'2017-09-19','2017-09-20',1),(287,73,0,'2017-09-19',NULL,1),(288,78,0,'2017-09-19','2017-09-20',1),(289,58,0,'2017-09-19','2017-09-19',1),(290,56,0,'2017-09-19','2017-09-20',1),(291,75,0,'2017-09-19','2017-09-20',1),(292,59,0,'2017-09-19','2017-09-19',1),(293,64,0,'2017-09-19','2017-09-19',1),(294,63,0,'2017-09-19','2017-09-19',1),(295,77,0,'2017-09-20','2017-09-20',1),(296,57,0,'2017-09-20','2017-09-21',1),(297,62,0,'2017-09-20','2017-09-20',1),(298,70,0,'2017-09-20','2017-09-20',1),(299,72,0,'2017-09-20','2017-09-20',1),(300,60,0,'2017-09-20','2017-09-20',1),(301,71,0,'2017-09-20','2017-09-20',1),(302,82,0,'2017-09-20','2017-09-20',1),(303,80,0,'2017-09-20','2017-09-21',1),(304,78,0,'2017-09-20','2017-09-21',1),(305,59,0,'2017-09-20','2017-09-20',1),(306,55,0,'2017-09-20','2017-09-20',1),(307,79,0,'2017-09-20','2017-09-21',1),(308,58,0,'2017-09-20','2017-09-20',1),(309,56,0,'2017-09-20','2017-09-20',1),(310,65,0,'2017-09-20','2017-09-20',1),(311,64,0,'2017-09-20','2017-09-20',1),(312,68,0,'2017-09-20','2017-09-20',1),(313,69,0,'2017-09-20','2017-09-21',1),(314,63,0,'2017-09-20','2017-09-20',1),(315,77,0,'2017-09-21','2017-09-21',1),(316,62,0,'2017-09-21','2017-09-21',1),(317,72,0,'2017-09-21','2017-09-21',1),(318,82,0,'2017-09-21','2017-09-21',1),(319,71,0,'2017-09-21','2017-09-21',1),(320,59,0,'2017-09-21','2017-09-21',1),(321,60,0,'2017-09-21','2017-09-21',1),(322,80,0,'2017-09-21','2017-09-21',1),(323,50,0,'2017-09-21','2017-09-25',1),(324,64,0,'2017-09-21','2017-09-21',1),(325,70,0,'2017-09-21','2017-09-21',1),(326,65,0,'2017-09-21','2017-09-21',1),(327,57,0,'2017-09-21','2017-09-22',1),(328,56,0,'2017-09-21','2017-09-21',1),(329,58,0,'2017-09-21','2017-09-22',1),(330,78,0,'2017-09-21','2017-09-22',1),(331,79,0,'2017-09-21',NULL,1),(332,63,0,'2017-09-21','2017-09-21',1),(333,69,0,'2017-09-21','2017-09-21',1),(334,73,0,'2017-09-21','2017-09-21',1),(335,53,0,'2017-09-21','2017-09-28',1),(336,71,0,'2017-09-22','2017-09-22',1),(337,55,0,'2017-09-22','2017-09-22',1),(338,72,0,'2017-09-22','2017-09-22',1),(339,70,0,'2017-09-22','2017-09-22',1),(340,60,0,'2017-09-22','2017-09-22',1),(341,62,0,'2017-09-22','2017-09-25',1),(342,58,0,'2017-09-22','2017-09-25',1),(343,82,0,'2017-09-22','2017-09-22',1),(344,75,0,'2017-09-22','2017-09-25',1),(345,64,0,'2017-09-22','2017-09-22',1),(346,65,0,'2017-09-22','2017-09-22',1),(347,78,0,'2017-09-22','2017-09-22',1),(348,59,0,'2017-09-22','2017-09-22',1),(349,57,0,'2017-09-22','2017-09-29',1),(350,69,0,'2017-09-22','2017-09-25',1),(351,63,0,'2017-09-22','2017-09-22',1),(352,68,0,'2017-09-22','2017-09-22',1),(353,56,0,'2017-09-22','2017-09-25',1),(354,76,1,'2017-09-29','2017-09-29',3),(355,77,0,'2017-09-25','2017-09-26',1),(356,71,0,'2017-09-25','2017-09-25',1),(357,62,0,'2017-09-25','2017-09-25',1),(358,59,0,'2017-09-25','2017-09-25',1),(359,70,0,'2017-09-25','2017-09-25',1),(360,65,0,'2017-09-25','2017-09-25',1),(361,72,0,'2017-09-25','2017-09-25',1),(362,80,0,'2017-09-25','2017-09-26',1),(363,58,0,'2017-09-25','2017-09-25',1),(364,60,0,'2017-09-25','2017-09-25',1),(365,82,0,'2017-09-25','2017-09-25',1),(366,75,0,'2017-09-25','2017-09-26',1),(367,64,0,'2017-09-25','2017-09-25',1),(368,50,0,'2017-09-25','2017-09-26',1),(369,69,0,'2017-09-25','2017-09-26',1),(370,78,0,'2017-09-25','2017-09-25',1),(371,63,0,'2017-09-25','2017-09-25',1),(372,77,0,'2017-09-26','2017-09-26',1),(373,71,0,'2017-09-26','2017-09-26',1),(374,82,0,'2017-09-26','2017-09-26',1),(375,59,0,'2017-09-26','2017-09-27',1),(376,80,0,'2017-09-26','2017-09-27',1),(377,64,0,'2017-09-26','2017-09-27',1),(378,70,0,'2017-09-26','2017-09-27',1),(379,72,0,'2017-09-26','2017-09-26',1),(380,78,0,'2017-09-26','2017-09-27',1),(381,62,0,'2017-09-26','2017-09-26',1),(382,60,0,'2017-09-26','2017-09-26',1),(383,65,0,'2017-09-26','2017-09-26',1),(384,69,0,'2017-09-26','2017-09-27',1),(385,58,0,'2017-09-26','2017-09-26',1),(386,63,0,'2017-09-26','2017-09-26',1),(387,50,0,'2017-09-26','2017-10-03',1),(388,75,0,'2017-09-26','2017-09-27',1),(389,62,1,'2017-09-28','2017-09-28',3),(390,62,1,'2017-09-29','2017-09-29',3),(391,77,0,'2017-09-27','2017-09-27',1),(392,62,0,'2017-09-27','2017-09-27',1),(393,70,0,'2017-09-27','2017-09-27',1),(394,59,0,'2017-09-27','2017-09-27',1),(395,56,0,'2017-09-27','2017-09-29',1),(396,82,0,'2017-09-27','2017-09-27',1),(397,71,0,'2017-09-27','2017-09-27',1),(398,64,0,'2017-09-27','2017-09-27',1),(399,60,0,'2017-09-27','2017-09-27',1),(400,78,0,'2017-09-27','2017-09-28',1),(401,72,0,'2017-09-27','2017-09-27',1),(402,65,0,'2017-09-27','2017-09-27',1),(403,69,0,'2017-09-27','2017-09-27',1),(404,63,0,'2017-09-27','2017-09-27',1),(405,58,0,'2017-09-27','2017-09-27',1),(406,75,0,'2017-09-27','2017-09-28',1),(407,70,1,'2017-10-16','2017-10-16',3),(408,70,1,'2017-10-17','2017-10-17',3),(409,70,1,'2017-10-18','2017-10-18',3),(410,50,1,'2017-09-28','2017-09-28',3),(411,50,1,'2017-09-29','2017-09-29',3),(412,59,0,'2017-09-28','2017-09-28',1),(413,72,0,'2017-09-28','2017-09-28',1),(414,82,0,'2017-09-28','2017-09-28',1),(415,70,0,'2017-09-28','2017-09-28',1),(416,78,0,'2017-09-28','2017-10-03',1),(417,60,0,'2017-09-28','2017-09-28',1),(418,64,0,'2017-09-28','2017-09-28',1),(419,65,0,'2017-09-28','2017-09-28',1),(420,75,0,'2017-09-28',NULL,1),(421,80,0,'2017-09-28','2017-09-28',1),(422,73,0,'2017-09-28','2017-09-28',1),(423,58,0,'2017-09-28','2017-09-28',1),(424,69,0,'2017-09-28','2017-09-29',1),(425,63,0,'2017-09-28','2017-09-29',1),(426,53,0,'2017-09-28',NULL,1),(427,77,0,'2017-09-29','2017-09-29',1),(428,70,0,'2017-09-29','2017-09-29',1),(429,59,0,'2017-09-29','2017-09-29',1),(430,56,0,'2017-09-29','2017-10-03',1),(431,71,0,'2017-09-29','2017-09-29',1),(432,72,0,'2017-09-29','2017-09-29',1),(433,64,0,'2017-09-29','2017-09-29',1),(434,60,0,'2017-09-29','2017-09-29',1),(435,57,0,'2017-09-29','2017-10-03',1),(436,69,0,'2017-09-29','2017-09-29',1),(437,68,0,'2017-09-29','2017-10-04',1),(438,73,0,'2017-09-29','2017-09-29',1),(439,63,0,'2017-09-29','2017-09-29',1),(440,58,0,'2017-09-29','2017-09-29',1),(441,80,0,'2017-09-29','2017-09-29',1),(442,72,0,'2017-10-03','2017-10-03',1),(443,77,0,'2017-10-03','2017-10-03',1),(444,71,0,'2017-10-03','2017-10-04',1),(445,70,0,'2017-10-03','2017-10-03',1),(446,56,0,'2017-10-03','2017-10-04',1),(447,80,0,'2017-10-03','2017-10-04',1),(448,59,0,'2017-10-03','2017-10-04',1),(449,58,0,'2017-10-03','2017-10-03',1),(450,60,0,'2017-10-03','2017-10-03',1),(451,64,0,'2017-10-03','2017-10-03',1),(452,69,0,'2017-10-03','2017-10-04',1),(453,73,0,'2017-10-03','2017-10-03',1),(454,82,0,'2017-10-03','2017-10-03',1),(455,57,0,'2017-10-03','2017-10-04',1),(456,65,0,'2017-10-03','2017-10-03',1),(457,78,0,'2017-10-03','2017-10-04',1),(458,50,0,'2017-10-03',NULL,1),(459,63,0,'2017-10-03','2017-10-04',1),(460,77,0,'2017-10-04','2017-10-04',1),(461,62,0,'2017-10-04','2017-10-04',1),(462,82,0,'2017-10-04','2017-10-04',1),(463,60,0,'2017-10-04','2017-10-04',1),(464,71,0,'2017-10-04','2017-10-04',1),(465,72,0,'2017-10-04','2017-10-05',1),(466,64,0,'2017-10-04','2017-10-04',1),(467,65,0,'2017-10-04','2017-10-04',1),(468,59,0,'2017-10-04','2017-10-04',1),(469,70,0,'2017-10-04','2017-10-04',1),(470,56,0,'2017-10-04','2017-10-09',1),(471,58,0,'2017-10-04','2017-10-04',1),(472,80,0,'2017-10-04','2017-10-04',1),(473,57,0,'2017-10-04','2017-10-05',1),(474,69,0,'2017-10-04','2017-10-04',1),(475,68,0,'2017-10-04',NULL,1),(476,63,0,'2017-10-04','2017-10-05',1),(477,77,0,'2017-10-05',NULL,1),(478,70,0,'2017-10-05',NULL,1),(479,72,0,'2017-10-05','2017-10-05',1),(480,62,0,'2017-10-05',NULL,1),(481,82,0,'2017-10-05',NULL,1),(482,71,0,'2017-10-05','2017-10-05',1),(483,64,0,'2017-10-05','2017-10-05',1),(484,59,0,'2017-10-05','2017-10-05',1),(485,78,0,'2017-10-05',NULL,1),(486,65,0,'2017-10-05','2017-10-05',1),(487,69,0,'2017-10-05','2017-10-05',1),(488,57,0,'2017-10-05','2017-10-06',1),(489,58,0,'2017-10-05','2017-10-05',1),(490,63,0,'2017-10-05','2017-10-05',1),(491,80,0,'2017-10-05','2017-10-09',1),(492,60,0,'2017-10-05','2017-10-05',1),(493,77,0,'2017-10-06','2017-10-06',1),(494,57,0,'2017-10-06',NULL,1),(495,64,0,'2017-10-06','2017-10-09',1),(496,72,0,'2017-10-06','2017-10-06',1),(497,62,0,'2017-10-06','2017-10-06',1),(498,59,0,'2017-10-06','2017-10-06',1),(499,71,0,'2017-10-06','2017-10-06',1),(500,60,0,'2017-10-06','2017-10-06',1),(501,70,0,'2017-10-06','2017-10-06',1),(502,82,0,'2017-10-06','2017-10-06',1),(503,58,0,'2017-10-06','2017-10-06',1),(504,69,0,'2017-10-06','2017-10-09',1),(505,63,0,'2017-10-06','2017-10-06',1),(506,65,0,'2017-10-06','2017-10-06',1),(507,78,0,'2017-10-06','2017-10-06',1),(508,71,0,'2017-10-09','2017-10-09',1),(509,77,0,'2017-10-09','2017-10-09',1),(510,70,0,'2017-10-09','2017-10-10',1),(511,72,0,'2017-10-09','2017-10-09',1),(512,62,0,'2017-10-09','2017-10-09',1),(513,64,0,'2017-10-09','2017-10-09',1),(514,59,0,'2017-10-09','2017-10-09',1),(515,82,0,'2017-10-09','2017-10-09',1),(516,60,0,'2017-10-09','2017-10-09',1),(517,78,0,'2017-10-09','2017-10-11',1),(518,65,0,'2017-10-09','2017-10-09',1),(519,73,0,'2017-10-09','2017-10-09',1),(520,80,0,'2017-10-09','2017-10-09',1),(521,63,0,'2017-10-09','2017-10-10',1),(522,69,0,'2017-10-09','2017-10-10',1),(523,58,0,'2017-10-09','2017-10-09',1),(524,71,0,'2017-10-10','2017-10-11',1),(525,77,0,'2017-10-10','2017-10-10',1),(526,72,0,'2017-10-10','2017-10-10',1),(527,62,0,'2017-10-10','2017-10-10',1),(528,70,0,'2017-10-10','2017-10-10',1),(529,64,0,'2017-10-10','2017-10-10',1),(530,80,0,'2017-10-10','2017-10-10',1),(531,65,0,'2017-10-10','2017-10-10',1),(532,59,0,'2017-10-10','2017-10-10',1),(533,60,0,'2017-10-10','2017-10-10',1),(534,73,0,'2017-10-10','2017-10-10',1),(535,56,0,'2017-10-10','2017-10-11',1),(536,82,0,'2017-10-10','2017-10-10',1),(537,58,0,'2017-10-10','2017-10-10',1),(538,69,0,'2017-10-10','2017-10-11',1),(539,63,0,'2017-10-10','2017-10-10',1),(540,71,0,'2017-10-11','2017-10-11',1),(541,77,0,'2017-10-11','2017-10-12',1),(542,70,0,'2017-10-11','2017-10-11',1),(543,72,0,'2017-10-11','2017-10-11',1),(544,59,0,'2017-10-11','2017-10-11',1),(545,60,0,'2017-10-11','2017-10-11',1),(546,82,0,'2017-10-11','2017-10-11',1),(547,69,0,'2017-10-11','2017-10-16',1),(548,65,0,'2017-10-11','2017-10-11',1),(549,58,0,'2017-10-11','2017-10-11',1),(550,80,0,'2017-10-11','2017-10-11',1),(551,73,0,'2017-10-11','2017-10-11',1),(552,56,0,'2017-10-11','2017-10-11',1),(553,64,0,'2017-10-11','2017-10-11',1),(554,62,0,'2017-10-11','2017-10-11',1),(555,63,0,'2017-10-11','2017-10-11',1),(556,78,0,'2017-10-11','2017-10-11',1),(557,71,0,'2017-10-12','2017-10-12',1),(558,77,0,'2017-10-12','2017-10-12',1),(559,59,0,'2017-10-12','2017-10-13',1),(560,60,0,'2017-10-12','2017-10-12',1),(561,72,0,'2017-10-12','2017-10-12',1),(562,82,0,'2017-10-12','2017-10-12',1),(563,70,0,'2017-10-12','2017-10-12',1),(564,58,0,'2017-10-12','2017-10-12',1),(565,80,0,'2017-10-12','2017-10-13',1),(566,62,0,'2017-10-12','2017-10-12',1),(567,64,0,'2017-10-12','2017-10-12',1),(568,73,0,'2017-10-12','2017-10-12',1),(569,78,0,'2017-10-12','2017-10-16',1),(570,63,0,'2017-10-12','2017-10-12',1),(571,65,0,'2017-10-12','2017-10-13',1),(572,71,0,'2017-10-13','2017-10-13',1),(573,77,0,'2017-10-13','2017-10-13',1),(574,70,0,'2017-10-13','2017-10-13',1),(575,72,0,'2017-10-13','2017-10-13',1),(576,60,0,'2017-10-13','2017-10-13',1),(577,80,0,'2017-10-13','2017-10-13',1),(578,64,0,'2017-10-13','2017-10-13',1),(579,62,0,'2017-10-13','2017-10-13',1),(580,73,0,'2017-10-13','2017-10-13',1),(581,58,0,'2017-10-13','2017-10-13',1),(582,63,0,'2017-10-13','2017-10-13',1),(583,82,0,'2017-10-13',NULL,1),(584,71,0,'2017-10-16','2017-10-16',1),(585,77,0,'2017-10-16','2017-10-17',1),(586,62,0,'2017-10-16','2017-10-16',1),(587,72,0,'2017-10-16','2017-10-16',1),(588,65,0,'2017-10-16','2017-10-16',1),(589,59,0,'2017-10-16','2017-10-16',1),(590,64,0,'2017-10-16','2017-10-16',1),(591,60,0,'2017-10-16','2017-10-16',1),(592,78,0,'2017-10-16','2017-10-27',1),(593,69,0,'2017-10-16','2017-10-17',1),(594,82,0,'2017-10-16','2017-10-23',1),(595,72,0,'2017-10-17','2017-10-17',1),(596,64,0,'2017-10-17','2017-10-17',1),(597,71,0,'2017-10-17','2017-10-17',1),(598,59,0,'2017-10-17','2017-10-18',1),(599,60,0,'2017-10-17','2017-10-17',1),(600,77,0,'2017-10-17','2017-10-18',1),(601,80,0,'2017-10-17','2017-10-18',1),(602,65,0,'2017-10-17','2017-10-17',1),(603,63,0,'2017-10-17','2017-10-17',1),(604,69,0,'2017-10-17','2017-10-23',1),(605,60,0,'2017-10-18','2017-10-18',1),(606,72,0,'2017-10-18','2017-10-18',1),(607,71,0,'2017-10-18','2017-10-18',1),(608,65,0,'2017-10-18','2017-10-18',1),(609,64,0,'2017-10-18','2017-10-18',1),(610,59,0,'2017-10-18','2017-10-18',1),(611,80,0,'2017-10-18','2017-10-23',1),(612,63,0,'2017-10-18','2017-10-18',1),(613,77,0,'2017-10-23','2017-10-23',1),(614,59,0,'2017-10-23','2017-10-23',1),(615,82,0,'2017-10-23','2017-10-23',1),(616,63,0,'2017-10-23',NULL,1),(617,72,0,'2017-10-23','2017-10-23',1),(618,62,0,'2017-10-23','2017-10-23',1),(619,60,0,'2017-10-23','2017-10-23',1),(620,80,0,'2017-10-23','2017-10-25',1),(621,70,0,'2017-10-23','2017-10-23',1),(622,64,0,'2017-10-23','2017-10-23',1),(623,73,0,'2017-10-23','2017-10-23',1),(624,69,0,'2017-10-23',NULL,1),(625,65,0,'2017-10-23','2017-10-23',1),(626,60,0,'2017-10-24','2017-10-24',1),(627,64,0,'2017-10-24','2017-10-24',1),(628,62,0,'2017-10-24','2017-10-24',1),(629,77,0,'2017-10-24','2017-10-24',1),(630,70,0,'2017-10-24','2017-10-25',1),(631,72,0,'2017-10-24','2017-10-24',1),(632,59,0,'2017-10-24','2017-10-24',1),(633,65,0,'2017-10-24','2017-10-24',1),(634,82,0,'2017-10-24','2017-10-24',1),(635,73,0,'2017-10-24','2017-10-24',1),(636,72,0,'2017-10-25','2017-10-25',1),(637,62,0,'2017-10-25','2017-10-25',1),(638,70,0,'2017-10-25','2017-10-25',1),(639,59,0,'2017-10-25','2017-10-25',1),(640,64,0,NULL,'2017-11-06',1),(641,64,0,NULL,'2017-11-02',1),(642,64,0,NULL,'2017-11-02',1),(643,64,0,NULL,'2017-10-30',1),(644,64,0,NULL,'2017-10-30',1),(645,64,0,NULL,'2017-10-27',1),(646,64,0,NULL,'2017-10-26',1),(647,64,0,NULL,'2017-10-26',1),(648,64,0,NULL,'2017-10-26',1),(649,64,0,NULL,'2017-10-26',1),(650,64,0,NULL,'2017-10-26',1),(651,64,0,NULL,'2017-10-26',1),(652,64,0,NULL,'2017-10-26',1),(653,64,0,NULL,'2017-10-26',1),(654,64,0,NULL,'2017-10-26',1),(655,64,0,NULL,'2017-10-26',1),(656,64,0,NULL,'2017-10-26',1),(657,64,0,NULL,'2017-10-25',1),(658,64,0,NULL,'2017-10-25',1),(659,64,0,NULL,'2017-10-25',1),(660,64,0,NULL,'2017-10-25',1),(661,64,0,NULL,'2017-10-25',1),(662,64,0,NULL,'2017-10-25',1),(663,64,0,NULL,'2017-10-25',1),(664,64,0,NULL,'2017-10-25',1),(665,64,0,NULL,'2017-10-25',1),(666,64,0,NULL,'2017-10-25',1),(667,64,0,NULL,'2017-10-25',1),(668,64,0,NULL,'2017-10-25',1),(669,64,0,NULL,'2017-10-25',1),(670,60,0,'2017-10-25','2017-10-25',1),(671,77,0,'2017-10-25','2017-10-25',1),(672,82,0,'2017-10-25','2017-10-25',1),(673,73,0,'2017-10-25','2017-10-25',1),(674,65,0,'2017-10-25','2017-10-25',1),(675,80,0,'2017-10-25','2017-10-26',1),(676,65,0,'2017-10-26','2017-10-26',1),(677,72,0,'2017-10-26','2017-10-26',1),(678,60,0,'2017-10-26','2017-10-26',1),(679,82,0,'2017-10-26','2017-10-26',1),(680,70,0,'2017-10-26','2017-10-26',1),(681,80,0,'2017-10-26','2017-10-27',1),(682,62,0,'2017-10-26','2017-10-26',1),(683,73,0,'2017-10-26',NULL,1),(684,59,0,'2017-10-26','2017-10-26',1),(685,77,0,'2017-10-27','2017-10-27',1),(686,70,0,NULL,'2017-10-27',1),(687,70,0,NULL,'2017-10-27',1),(688,70,0,NULL,'2017-10-27',1),(689,70,0,NULL,'2017-10-27',1),(690,70,0,NULL,'2017-10-27',1),(691,70,0,NULL,'2017-10-27',1),(692,70,0,NULL,'2017-10-27',1),(693,70,0,NULL,'2017-10-27',1),(694,70,0,NULL,'2017-10-27',1),(695,70,0,NULL,'2017-10-27',1),(696,70,0,NULL,'2017-10-27',1),(697,70,0,NULL,'2017-10-27',1),(698,70,0,NULL,'2017-10-27',1),(699,70,0,NULL,'2017-10-27',1),(700,70,0,NULL,'2017-10-27',1),(701,70,0,NULL,'2017-10-27',1),(702,70,0,NULL,'2017-10-27',1),(703,70,0,NULL,'2017-10-27',1),(704,70,0,NULL,'2017-10-27',1),(705,70,0,NULL,'2017-10-27',1),(706,70,0,NULL,'2017-10-27',1),(707,70,0,NULL,'2017-10-27',1),(708,70,0,NULL,'2017-10-27',1),(709,70,0,NULL,'2017-10-27',1),(710,70,0,NULL,'2017-10-27',1),(711,70,0,NULL,'2017-10-27',1),(712,70,0,NULL,'2017-10-27',1),(713,70,0,NULL,'2017-10-27',1),(714,70,0,NULL,'2017-10-27',1),(715,70,0,NULL,'2017-10-27',1),(716,70,0,NULL,'2017-10-27',1),(717,70,0,NULL,'2017-10-27',1),(718,70,0,NULL,'2017-10-27',1),(719,70,0,NULL,'2017-10-27',1),(720,70,0,NULL,'2017-10-27',1),(721,70,0,NULL,'2017-10-27',1),(722,70,0,NULL,'2017-10-27',1),(723,70,0,NULL,'2017-10-27',1),(724,70,0,NULL,'2017-10-27',1),(725,70,0,NULL,'2017-10-27',1),(726,70,0,NULL,'2017-10-27',1),(727,70,0,NULL,'2017-10-27',1),(728,70,0,NULL,'2017-10-27',1),(729,70,0,NULL,'2017-10-27',1),(730,70,0,NULL,'2017-10-27',1),(731,70,0,NULL,'2017-10-27',1),(732,70,0,NULL,'2017-10-27',1),(733,70,0,NULL,'2017-10-27',1),(734,70,0,NULL,'2017-10-27',1),(735,70,0,NULL,'2017-10-27',1),(736,70,0,NULL,'2017-10-27',1),(737,70,0,NULL,'2017-10-27',1),(738,70,0,NULL,'2017-10-27',1),(739,70,0,NULL,'2017-10-27',1),(740,70,0,NULL,'2017-10-27',1),(741,70,0,NULL,'2017-10-27',1),(742,70,0,NULL,'2017-10-27',1),(743,70,0,NULL,'2017-10-27',1),(744,70,0,NULL,'2017-10-27',1),(745,70,0,NULL,'2017-10-27',1),(746,70,0,NULL,'2017-10-27',1),(747,70,0,NULL,'2017-10-27',1),(748,70,0,NULL,'2017-10-27',1),(749,70,0,NULL,'2017-10-27',1),(750,70,0,NULL,'2017-10-27',1),(751,70,0,NULL,'2017-10-27',1),(752,70,0,NULL,'2017-10-27',1),(753,70,0,NULL,'2017-10-27',1),(754,70,0,NULL,'2017-10-27',1),(755,70,0,NULL,'2017-10-27',1),(756,70,0,NULL,'2017-10-27',1),(757,70,0,NULL,'2017-10-27',1),(758,70,0,NULL,'2017-10-27',1),(759,70,0,NULL,'2017-10-27',1),(760,70,0,NULL,'2017-10-27',1),(761,70,0,NULL,'2017-10-27',1),(762,70,0,NULL,'2017-10-27',1),(763,70,0,NULL,'2017-10-27',1),(764,70,0,NULL,'2017-10-27',1),(765,70,0,NULL,'2017-10-27',1),(766,70,0,NULL,'2017-10-27',1),(767,70,0,NULL,'2017-10-27',1),(768,70,0,NULL,'2017-10-27',1),(769,70,0,NULL,'2017-10-27',1),(770,70,0,NULL,'2017-10-27',1),(771,70,0,NULL,'2017-10-27',1),(772,70,0,NULL,'2017-10-27',1),(773,70,0,NULL,'2017-10-27',1),(774,70,0,NULL,'2017-10-27',1),(775,70,0,NULL,'2017-10-27',1),(776,70,0,NULL,'2017-10-27',1),(777,70,0,NULL,'2017-10-27',1),(778,70,0,NULL,'2017-10-27',1),(779,70,0,NULL,'2017-10-27',1),(780,70,0,NULL,'2017-10-27',1),(781,70,0,NULL,'2017-10-27',1),(782,70,0,NULL,'2017-10-27',1),(783,70,0,NULL,'2017-10-27',1),(784,70,0,NULL,'2017-10-27',1),(785,70,0,NULL,'2017-10-27',1),(786,70,0,NULL,'2017-10-27',1),(787,70,0,NULL,'2017-10-27',1),(788,70,0,NULL,'2017-10-27',1),(789,70,0,NULL,'2017-10-27',1),(790,70,0,NULL,'2017-10-27',1),(791,70,0,NULL,'2017-10-27',1),(792,70,0,NULL,'2017-10-27',1),(793,70,0,NULL,'2017-10-27',1),(794,70,0,NULL,'2017-10-27',1),(795,70,0,NULL,'2017-10-27',1),(796,70,0,NULL,'2017-10-27',1),(797,70,0,NULL,'2017-10-27',1),(798,70,0,NULL,'2017-10-27',1),(799,70,0,NULL,'2017-10-27',1),(800,70,0,NULL,'2017-10-27',1),(801,70,0,NULL,'2017-10-27',1),(802,70,0,NULL,'2017-10-27',1),(803,70,0,NULL,'2017-10-27',1),(804,70,0,NULL,'2017-10-27',1),(805,70,0,NULL,'2017-10-27',1),(806,70,0,NULL,'2017-10-27',1),(807,70,0,NULL,'2017-10-27',1),(808,70,0,NULL,'2017-10-27',1),(809,70,0,NULL,'2017-10-27',1),(810,70,0,NULL,'2017-10-27',1),(811,70,0,NULL,'2017-10-27',1),(812,70,0,NULL,'2017-10-27',1),(813,70,0,NULL,'2017-10-27',1),(814,70,0,NULL,'2017-10-27',1),(815,70,0,NULL,'2017-10-27',1),(816,70,0,NULL,'2017-10-27',1),(817,70,0,NULL,'2017-10-27',1),(818,70,0,NULL,'2017-10-27',1),(819,70,0,NULL,'2017-10-27',1),(820,70,0,NULL,'2017-10-27',1),(821,70,0,NULL,'2017-10-27',1),(822,70,0,NULL,'2017-10-27',1),(823,70,0,NULL,'2017-10-27',1),(824,70,0,NULL,'2017-10-27',1),(825,70,0,NULL,'2017-10-27',1),(826,70,0,NULL,'2017-10-27',1),(827,70,0,NULL,'2017-10-27',1),(828,70,0,NULL,'2017-10-27',1),(829,70,0,NULL,'2017-10-27',1),(830,70,0,NULL,'2017-10-27',1),(831,70,0,NULL,'2017-10-27',1),(832,70,0,NULL,'2017-10-27',1),(833,70,0,NULL,'2017-10-27',1),(834,70,0,NULL,'2017-10-27',1),(835,70,0,NULL,'2017-10-27',1),(836,70,0,NULL,'2017-10-27',1),(837,70,0,NULL,'2017-10-27',1),(838,70,0,NULL,'2017-10-27',1),(839,70,0,NULL,'2017-10-27',1),(840,70,0,NULL,'2017-10-27',1),(841,70,0,NULL,'2017-10-27',1),(842,70,0,NULL,'2017-10-27',1),(843,70,0,NULL,'2017-10-27',1),(844,70,0,NULL,'2017-10-27',1),(845,70,0,NULL,'2017-10-27',1),(846,70,0,NULL,'2017-10-27',1),(847,70,0,NULL,'2017-10-27',1),(848,70,0,NULL,'2017-10-27',1),(849,70,0,NULL,'2017-10-27',1),(850,70,0,NULL,'2017-10-27',1),(851,70,0,NULL,'2017-10-27',1),(852,70,0,NULL,'2017-10-27',1),(853,70,0,NULL,'2017-10-27',1),(854,72,0,'2017-10-27','2017-10-27',1),(855,70,0,NULL,'2017-10-27',1),(856,70,0,NULL,'2017-10-27',1),(857,70,0,NULL,'2017-10-27',1),(858,70,0,NULL,'2017-10-27',1),(859,70,0,NULL,'2017-10-27',1),(860,70,0,NULL,'2017-10-27',1),(861,70,0,NULL,'2017-10-27',1),(862,70,0,NULL,'2017-10-27',1),(863,70,0,NULL,'2017-10-27',1),(864,70,0,NULL,'2017-10-27',1),(865,60,0,'2017-10-27','2017-10-27',1),(866,80,0,'2017-10-27','2017-10-30',1),(867,78,0,'2017-10-27','2017-10-30',1),(868,62,0,'2017-10-27','2017-10-27',1),(869,59,0,'2017-10-27','2017-10-27',1),(870,77,0,'2017-10-30','2017-10-30',1),(871,60,0,'2017-10-30','2017-11-01',1),(872,62,0,'2017-10-30','2017-10-30',1),(873,72,0,'2017-10-30','2017-10-30',1),(874,80,0,'2017-10-30','2017-10-31',1),(875,65,0,'2017-10-30','2017-10-31',1),(876,78,0,'2017-10-30','2017-10-31',1),(877,82,0,'2017-10-30','2017-10-30',1),(878,73,0,'2017-10-30','2017-10-30',1),(879,59,0,'2017-10-30','2017-10-30',1),(880,77,0,'2017-10-31','2017-10-31',1),(881,62,0,'2017-10-31','2017-10-31',1),(882,59,0,'2017-10-31','2017-10-31',1),(883,72,0,'2017-10-31','2017-10-31',1),(884,65,0,'2017-10-31','2017-10-31',1),(885,78,0,'2017-10-31','2017-11-01',1),(886,82,0,'2017-10-31','2017-11-01',1),(887,73,0,'2017-10-31','2017-10-31',1),(888,80,0,'2017-10-31','2017-11-01',1),(889,77,0,'2017-11-01','2017-11-01',1),(890,80,0,'2017-11-01','2017-11-01',1),(891,62,0,'2017-11-01','2017-11-01',1),(892,59,0,'2017-11-01','2017-11-01',1),(893,60,0,'2017-11-01','2017-11-01',1),(894,82,0,'2017-11-01','2017-11-02',1),(895,78,0,'2017-11-01','2017-11-02',1),(896,72,0,'2017-11-01','2017-11-01',1),(897,73,0,'2017-11-01','2017-11-01',1),(898,65,0,'2017-11-01','2017-11-01',1),(899,77,0,'2017-11-02','2017-11-02',1),(900,80,0,'2017-11-02','2017-11-02',1),(901,60,0,'2017-11-02','2017-11-02',1),(902,72,0,'2017-11-02','2017-11-03',1),(903,65,0,'2017-11-02','2017-11-02',1),(904,71,0,'2017-11-02',NULL,1),(905,82,0,'2017-11-02','2017-11-02',1),(906,62,0,'2017-11-02','2017-11-02',1),(907,59,0,'2017-11-02','2017-11-02',1),(908,78,0,'2017-11-02','2017-11-03',1),(909,73,0,'2017-11-02','2017-11-02',1),(910,77,0,'2017-11-03','2017-11-03',1),(911,62,0,'2017-11-03','2017-11-03',1),(912,72,0,'2017-11-03','2017-11-03',1),(913,65,0,'2017-11-03','2017-11-03',1),(914,60,0,'2017-11-03','2017-11-03',1),(915,82,0,'2017-11-03','2017-11-03',1),(916,78,0,'2017-11-03','2017-11-10',1),(917,77,0,'2017-11-06','2017-11-06',1),(918,62,0,'2017-11-06','2017-11-06',1),(919,60,0,'2017-11-06','2017-11-06',1),(920,72,0,'2017-11-06','2017-11-06',1),(921,73,0,'2017-11-06','2017-11-06',1),(922,80,0,'2017-11-06','2017-11-07',1),(923,82,0,'2017-11-06','2017-11-06',1),(924,65,0,'2017-11-06','2017-11-06',1),(925,62,0,'2017-11-07','2017-11-07',1),(926,60,0,'2017-11-07','2017-11-07',1),(927,80,0,'2017-11-07','2017-11-08',1),(928,73,0,'2017-11-07','2017-11-07',1),(929,82,0,'2017-11-07','2017-11-07',1),(930,72,0,NULL,'2017-11-07',1),(931,72,0,NULL,'2017-11-07',1),(932,72,0,NULL,'2017-11-07',1),(933,72,0,NULL,'2017-11-07',1),(934,72,0,NULL,'2017-11-07',1),(935,72,0,NULL,'2017-11-07',1),(936,72,0,NULL,'2017-11-07',1),(937,72,0,NULL,'2017-11-07',1),(938,72,0,NULL,'2017-11-07',1),(939,72,0,NULL,'2017-11-07',1),(940,72,0,NULL,'2017-11-07',1),(941,72,0,NULL,'2017-11-07',1),(942,72,0,NULL,'2017-11-10',1),(943,72,0,NULL,'2017-11-09',1),(944,72,0,NULL,'2017-11-09',1),(945,72,0,NULL,'2017-11-08',1),(946,72,0,NULL,'2017-11-08',1),(947,72,0,NULL,'2017-11-08',1),(948,72,0,NULL,'2017-11-08',1),(949,72,0,NULL,'2017-11-08',1),(950,60,0,'2017-11-08','2017-11-08',1),(951,80,0,'2017-11-08','2017-11-08',1),(952,62,0,'2017-11-08','2017-11-08',1),(953,73,0,'2017-11-08','2017-11-08',1),(954,62,0,'2017-11-09','2017-11-09',1),(955,60,0,'2017-11-09','2017-11-09',1),(956,77,0,'2017-11-09','2017-11-09',1),(957,80,0,'2017-11-09','2017-11-10',1),(958,77,0,'2017-11-10','2017-11-10',1),(959,60,0,'2017-11-10','2017-11-10',1),(960,62,0,'2017-11-10','2017-11-10',1),(961,80,0,'2017-11-10','2017-11-10',1),(962,78,0,'2017-11-10','2017-11-13',1),(963,77,0,'2017-11-13','2017-11-13',1),(964,80,0,'2017-11-13','2017-11-13',1),(965,60,0,'2017-11-13','2017-11-13',1),(966,62,0,'2017-11-13','2017-11-13',1),(967,78,0,'2017-11-13','2017-11-14',1),(968,64,0,'2017-11-13','2017-11-14',1),(969,77,0,'2017-11-14','2017-11-15',1),(970,60,0,'2017-11-14','2017-11-14',1),(971,64,0,'2017-11-14','2017-11-14',1),(972,62,0,'2017-11-14','2017-11-14',1),(973,78,0,'2017-11-14','2017-11-21',1),(974,77,0,'2017-11-15','2017-11-15',1),(975,80,0,'2017-11-15','2017-11-15',1),(976,60,0,'2017-11-15','2017-11-15',1),(977,62,0,'2017-11-15','2017-11-15',1),(978,60,0,'2017-11-16','2017-11-16',1),(979,77,0,'2017-11-16','2017-11-16',1),(980,80,0,'2017-11-16','2017-11-16',1),(981,64,0,'2017-11-16','2017-11-17',1),(982,62,0,'2017-11-16','2017-11-16',1),(983,77,0,'2017-11-17','2017-11-17',1),(984,80,0,'2017-11-17','2017-11-17',1),(985,60,0,'2017-11-17','2017-11-17',1),(986,62,0,'2017-11-17','2017-11-17',1),(987,64,0,'2017-11-17','2017-11-21',1),(988,60,0,'2017-11-18','2017-11-18',1),(989,77,0,'2017-11-20','2017-11-20',1),(990,80,0,'2017-11-20','2017-11-20',1),(991,60,0,'2017-11-20','2017-11-20',1),(992,62,0,'2017-11-20','2017-11-20',1),(993,62,0,'2017-11-21','2017-11-21',1),(994,77,0,'2017-11-21','2017-11-21',1),(995,64,0,'2017-11-21','2017-11-23',1),(996,80,0,'2017-11-21','2017-11-22',1),(997,78,0,'2017-11-21',NULL,1),(998,80,0,'2017-11-22','2017-11-22',1),(999,77,0,'2017-11-22','2017-11-23',1),(1000,62,0,'2017-11-22','2017-11-22',1),(1001,62,0,'2017-11-23','2017-11-23',1),(1002,60,0,'2017-11-23','2017-11-23',1),(1003,77,0,'2017-11-23','2017-11-23',1),(1004,80,0,'2017-11-23','2017-11-23',1),(1005,64,0,'2017-11-23','2017-11-24',1),(1006,77,0,'2017-11-24','2017-11-24',1),(1007,62,0,'2017-11-24','2017-11-24',1),(1008,60,0,'2017-11-24','2017-11-27',1),(1009,64,0,'2017-11-24',NULL,1),(1010,80,0,'2017-11-25','2017-11-26',1),(1011,77,0,'2017-11-27','2017-11-27',1),(1012,62,0,'2017-11-27','2017-11-27',1),(1013,60,0,'2017-11-27','2017-12-05',1),(1014,80,0,'2017-11-27','2017-11-27',1),(1015,77,0,'2017-11-28','2017-11-29',1),(1016,80,0,'2017-11-28','2017-11-29',1),(1017,62,0,'2017-11-28','2017-11-29',1),(1018,77,0,'2017-11-29','2017-11-29',1),(1019,80,0,'2017-11-29','2017-11-30',1),(1020,62,0,'2017-11-29',NULL,1),(1021,77,0,'2017-11-30','2017-11-30',1),(1022,80,0,'2017-11-30','2017-12-01',1),(1023,77,0,'2017-12-01','2017-12-01',1),(1024,80,0,'2017-12-01','2017-12-04',1),(1025,77,0,'2017-12-04','2017-12-04',1),(1026,80,0,'2017-12-04','2017-12-04',1),(1027,80,0,'2017-12-05','2017-12-05',1),(1028,77,0,'2017-12-05','2017-12-05',1),(1029,60,0,'2017-12-05',NULL,1),(1030,80,0,'2017-12-06','2017-12-06',1),(1031,77,0,'2017-12-06','2017-12-06',1),(1032,80,0,'2017-12-07','2017-12-07',1),(1033,77,0,'2017-12-07','2017-12-08',1),(1034,80,0,'2017-12-08','2017-12-08',1),(1035,77,0,'2017-12-08','2017-12-11',1),(1036,80,0,'2017-12-11','2017-12-11',1),(1037,77,0,'2017-12-11','2017-12-11',1),(1038,77,0,'2017-12-12','2017-12-13',1),(1039,77,0,'2017-12-13','2017-12-13',1),(1040,77,0,'2017-12-14','2017-12-14',1),(1041,80,0,'2017-12-15','2017-12-15',1),(1042,80,0,'2017-12-18','2017-12-19',1),(1043,77,0,'2017-12-18','2017-12-18',1),(1044,80,0,'2017-12-19','2017-12-20',1),(1045,77,0,'2017-12-19','2017-12-21',1),(1046,80,0,'2017-12-20','2017-12-21',1),(1047,80,0,'2017-12-21','2017-12-26',1),(1048,77,0,'2017-12-21','2017-12-21',1),(1049,77,0,'2017-12-22','2017-12-22',1),(1050,80,0,'2017-12-26','2017-12-27',1),(1051,77,0,'2017-12-26','2017-12-26',1),(1052,80,0,'2017-12-27','2017-12-27',1),(1053,77,0,'2017-12-27','2017-12-28',1),(1054,80,0,'2017-12-28','2017-12-28',1),(1055,77,0,'2017-12-28','2017-12-28',1),(1056,77,0,'2017-12-29','2017-12-29',1),(1057,80,0,'2017-12-29','2018-01-02',1),(1058,80,0,'2018-01-02','2018-01-02',1),(1059,77,0,'2018-01-02','2018-01-02',1),(1060,80,0,'2018-01-03','2018-01-04',1),(1061,77,0,'2018-01-03','2018-01-04',1),(1062,80,0,'2018-01-04','2018-01-05',1),(1063,77,0,'2018-01-04','2018-01-05',1),(1064,77,0,'2018-01-05','2018-01-05',1),(1065,80,0,'2018-01-05','2018-01-08',1),(1066,77,0,'2018-01-08','2018-01-08',1),(1067,80,0,'2018-01-08','2018-01-08',1),(1068,77,0,'2018-01-09','2018-01-09',1);
/*!40000 ALTER TABLE `tbl_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bug`
--

DROP TABLE IF EXISTS `tbl_bug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bug` (
  `bug_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `bug_title` varchar(200) NOT NULL,
  `bug_description` text NOT NULL,
  `bug_status` varchar(30) DEFAULT NULL,
  `notes` text NOT NULL,
  `priority` varchar(10) NOT NULL,
  `reporter` int(11) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `permission` text,
  `client_visible` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`bug_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bug`
--

LOCK TABLES `tbl_bug` WRITE;
/*!40000 ALTER TABLE `tbl_bug` DISABLE KEYS */;
INSERT INTO `tbl_bug` VALUES (5,16,NULL,'slow chat response','<p>need to check IOS chat. Has speed issue, notification issue, and status issue. Speed issue: When chat button selected, waiting for the chat screen to open is slow. A loading spinner pops up and stays on for a long time. Notification issue: when user receives a pop-up notification message, the notification message disappears. Unless user looks at phone immediately, they will only hear a ping, but not see the notification message. When a user sends a chat message to ios user, a notification should stay on screen, until user checks it. Once they press the notification, it should take user into the chat. Lastly, ios is not showing when a user is online in the app.</p>\r\n','in_progress','','High',50,NULL,'2017-09-11 10:13:17','{\"58\":[\"edit\",\"delete\",\"view\"],\"50\":[\"edit\",\"delete\",\"view\"]}',NULL),(6,9,NULL,'demotest','<p>test</p>\r\n','unconfirmed','','low',1,NULL,'2017-09-15 14:18:49','{\"69\":[\"view\"]}',NULL);
/*!40000 ALTER TABLE `tbl_bug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_calls`
--

DROP TABLE IF EXISTS `tbl_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_calls` (
  `calls_id` int(11) NOT NULL AUTO_INCREMENT,
  `leads_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(20) CHARACTER SET latin1 NOT NULL,
  `call_summary` varchar(200) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`calls_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_calls`
--

LOCK TABLES `tbl_calls` WRITE;
/*!40000 ALTER TABLE `tbl_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_client`
--

DROP TABLE IF EXISTS `tbl_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `primary_contact` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_note` text COLLATE utf8_unicode_ci,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `currency` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `skype_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hosting_company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_status` tinyint(1) NOT NULL COMMENT '1 = person and 2 = company',
  `profile_photo` text COLLATE utf8_unicode_ci,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `leads_id` int(11) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_client`
--

LOCK TABLES `tbl_client` WRITE;
/*!40000 ALTER TABLE `tbl_client` DISABLE KEYS */;
INSERT INTO `tbl_client` VALUES (17,NULL,'Fayas Kamar','fayas47@gmail.com','','','','','','','','','USD','','','','','english','India',NULL,'','','','','',1,NULL,'2017-09-04 09:36:30',0),(18,NULL,'Lauren Leisk','laurenamos@hotmail.com','','','','','','','','','AUD','','','','','english','India',NULL,'','','','','',1,NULL,'2017-09-06 09:50:03',0),(19,NULL,'Consagous','info@consagous.com','In-house projects','','','','','','',NULL,'INR','','','','','english','India','','','','','','',2,NULL,'2017-09-06 09:57:05',0),(20,0,'Ravikant Varma','ravikant.varma@consagous.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,'2017-09-07 11:46:56',0),(21,NULL,'sean cooper','sean@purposs.com','','','','','','','','','USD','','','','','english','India',NULL,'','','','','',1,NULL,'2017-09-11 04:45:06',0),(22,NULL,'Qliniqo','viktor.kgl@gmail.com','','','','','','','',NULL,'USD','','','','','english','India','','','','','','',2,NULL,'2017-09-11 12:47:04',0),(23,NULL,'HalaReward','aelbadri@gmail.com','','','','','','','',NULL,'USD','','','','','english','India','','','','','','',2,NULL,'2017-09-11 12:47:44',0),(24,NULL,'Gpayments','megha.neema.3003@gmail.com','','','','','','','','','USD','','','','','english','India',NULL,'','','','','',1,NULL,'2017-09-12 07:11:54',0),(25,NULL,'masato(sail)','megha.neema.3003@gmail.com','','','','','','','','','USD','','','','','english','India',NULL,'','','','','',1,NULL,'2017-09-12 07:12:20',0),(26,NULL,'Manuel Enrique','mebautistad@hotmail.com','','','','','','','','','USD','','','','','english','India',NULL,'','','','','',1,NULL,'2017-09-13 10:13:11',0);
/*!40000 ALTER TABLE `tbl_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_clock`
--

DROP TABLE IF EXISTS `tbl_clock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_clock` (
  `clock_id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance_id` int(11) NOT NULL,
  `clockin_time` time DEFAULT NULL,
  `clockout_time` time DEFAULT NULL,
  `comments` text,
  `clocking_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1= clockin_time',
  PRIMARY KEY (`clock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_clock`
--

LOCK TABLES `tbl_clock` WRITE;
/*!40000 ALTER TABLE `tbl_clock` DISABLE KEYS */;
INSERT INTO `tbl_clock` VALUES (18,13,'17:16:17','17:16:38',NULL,0),(19,14,'10:39:00','19:30:00',NULL,0),(20,15,'10:44:46','10:33:50',NULL,0),(21,16,'10:42:00','16:00:00',NULL,0),(22,17,'10:45:08','10:15:35',NULL,0),(23,18,'10:50:16','10:32:40',NULL,0),(24,19,'10:50:29','00:00:00',NULL,0),(25,20,'10:51:11','10:51:14',NULL,0),(26,21,'10:51:37','20:38:10',NULL,0),(27,22,'10:52:51','10:24:56',NULL,0),(28,23,'10:53:06','20:03:43',NULL,0),(29,24,'11:12:55','20:38:17',NULL,0),(30,25,'11:55:01','11:55:09',NULL,0),(31,26,'17:01:42','17:09:52',NULL,0),(32,27,'17:29:55','17:30:00',NULL,0),(33,28,'17:51:54','17:51:57',NULL,0),(34,29,'09:06:16','10:32:53',NULL,0),(35,30,'09:16:19','12:12:14',NULL,0),(36,31,'09:56:37','09:05:43',NULL,0),(37,32,'10:06:59','10:16:36',NULL,0),(38,33,'10:14:43','10:23:38',NULL,0),(39,34,'10:15:38','12:57:15',NULL,0),(40,34,'10:15:39','12:57:20',NULL,0),(41,34,'10:15:39','11:06:03',NULL,0),(42,35,'10:17:01','09:57:28',NULL,0),(43,36,'10:19:55','20:14:49',NULL,0),(44,37,'10:20:48','10:31:56',NULL,0),(45,38,'10:30:57','21:07:52',NULL,0),(46,39,'10:31:39','10:42:18',NULL,0),(47,40,'10:33:51','21:24:57',NULL,0),(48,41,'11:02:33','10:34:55',NULL,0),(49,42,'20:40:18','20:40:59',NULL,0),(50,38,'21:08:05','21:55:59',NULL,0),(51,43,'09:57:31','19:05:12',NULL,0),(52,44,'10:13:00','20:37:00',NULL,0),(53,45,'10:16:43','20:19:13',NULL,0),(54,46,'10:25:02','15:28:59',NULL,0),(55,47,'10:30:39','20:33:49',NULL,0),(56,48,'10:32:00','08:11:55',NULL,0),(57,49,'10:32:44','12:14:22',NULL,0),(58,50,'10:32:54','00:00:00',NULL,0),(59,51,'10:32:56','13:29:26',NULL,0),(60,52,'10:34:58','12:12:33',NULL,0),(61,53,'10:35:05','11:32:48',NULL,0),(62,54,'10:42:23','12:33:13',NULL,0),(63,55,'10:43:29','08:36:06',NULL,0),(64,56,'10:49:24','12:21:59',NULL,0),(65,57,'10:50:07','19:37:53',NULL,0),(66,58,'10:50:45','19:00:41',NULL,0),(67,59,'11:13:36','20:03:48',NULL,0),(68,46,'15:29:02','19:40:49',NULL,0),(69,60,'09:41:00','08:00:00',NULL,0),(70,61,'09:48:13','18:56:46',NULL,0),(71,62,'10:09:16','10:05:51',NULL,0),(72,63,'10:11:13','19:50:09',NULL,0),(73,64,'10:19:12','00:00:00',NULL,0),(74,65,'10:19:47','07:21:04',NULL,0),(75,66,'10:21:44','19:21:31',NULL,0),(76,67,'10:24:04','10:49:59',NULL,0),(77,68,'10:32:59','10:37:12',NULL,0),(78,69,'10:59:08','11:01:18',NULL,0),(79,70,'11:32:52','07:35:31',NULL,0),(80,71,'12:08:58','10:28:15',NULL,0),(81,72,'12:09:02','20:20:15',NULL,0),(82,73,'12:09:40','10:51:28',NULL,0),(83,74,'12:09:49','20:00:21',NULL,0),(84,75,'12:11:54','08:16:04',NULL,0),(85,76,'12:12:23','20:04:02',NULL,0),(86,77,'12:12:23','08:16:14',NULL,0),(87,78,'12:12:36','12:15:15',NULL,0),(88,79,'12:14:24','18:52:59',NULL,0),(89,78,'12:15:17','13:30:02',NULL,0),(90,80,'12:22:04','19:39:35',NULL,0),(91,81,'12:33:16','11:45:35',NULL,0),(92,64,'19:23:17','07:23:22',NULL,0),(93,82,NULL,'09:24:07',NULL,1),(94,83,NULL,'09:24:08',NULL,1),(95,84,NULL,'09:24:08',NULL,1),(96,85,NULL,'09:24:09',NULL,1),(97,86,NULL,'09:24:10',NULL,1),(98,87,NULL,'09:24:10',NULL,1),(99,88,NULL,'09:24:11',NULL,1),(100,89,NULL,'09:24:11',NULL,1),(101,90,NULL,'09:24:12',NULL,1),(102,91,NULL,'09:24:13',NULL,1),(103,92,NULL,'09:24:15',NULL,1),(104,93,NULL,'09:24:15',NULL,1),(105,94,NULL,'09:24:16',NULL,1),(106,95,NULL,'09:24:17',NULL,1),(107,96,NULL,'09:24:17',NULL,1),(108,97,NULL,'09:24:18',NULL,1),(109,98,NULL,'09:24:18',NULL,1),(110,99,NULL,'09:24:19',NULL,1),(111,100,NULL,'09:24:20',NULL,1),(112,101,NULL,'09:24:21',NULL,1),(113,102,NULL,'09:24:21',NULL,1),(114,103,NULL,'09:24:22',NULL,1),(115,104,NULL,'09:24:23',NULL,1),(116,105,NULL,'09:24:23',NULL,1),(117,106,NULL,'09:24:24',NULL,1),(118,107,NULL,'09:24:24',NULL,1),(119,108,NULL,'09:24:25',NULL,1),(120,109,NULL,'09:24:26',NULL,1),(121,110,NULL,'09:24:26',NULL,1),(122,111,NULL,'09:24:27',NULL,1),(123,112,NULL,'09:24:33',NULL,1),(124,113,NULL,'09:24:33',NULL,1),(125,114,NULL,'09:24:34',NULL,1),(126,115,NULL,'09:24:34',NULL,1),(127,116,NULL,'09:24:35',NULL,1),(128,117,NULL,'09:24:36',NULL,1),(129,118,NULL,'09:24:36',NULL,1),(130,119,NULL,'09:24:37',NULL,1),(131,120,NULL,'09:24:38',NULL,1),(132,121,NULL,'09:24:38',NULL,1),(133,122,NULL,'09:24:39',NULL,1),(134,123,NULL,'09:24:44',NULL,1),(135,124,NULL,'09:24:45',NULL,1),(136,125,NULL,'09:24:46',NULL,1),(137,126,NULL,'09:24:46',NULL,1),(138,127,NULL,'09:24:47',NULL,1),(139,128,NULL,'09:24:48',NULL,1),(140,129,NULL,'09:24:49',NULL,1),(141,130,NULL,'09:24:49',NULL,1),(142,131,NULL,'09:24:50',NULL,1),(143,132,NULL,'09:24:51',NULL,1),(144,133,NULL,'09:24:51',NULL,1),(145,134,'09:49:58','09:50:14',NULL,0),(146,135,'09:59:55','19:28:22',NULL,0),(147,136,'10:05:07','12:22:26',NULL,0),(148,137,'10:06:20','20:09:24',NULL,0),(149,138,'10:17:29','20:31:14',NULL,0),(150,139,'10:20:23','10:34:15',NULL,0),(151,140,'10:23:44','08:34:56',NULL,0),(152,141,'10:24:09','12:22:04',NULL,0),(153,142,'10:28:18','10:22:46',NULL,0),(154,143,'10:37:35','11:00:12',NULL,0),(155,144,'10:40:15','08:35:14',NULL,0),(156,145,'10:42:15','11:00:27',NULL,0),(157,146,NULL,'10:43:04',NULL,1),(158,147,NULL,'10:43:06',NULL,1),(159,148,NULL,'10:43:06',NULL,1),(160,149,NULL,'10:43:14',NULL,1),(161,150,NULL,'10:43:15',NULL,1),(162,151,NULL,'10:43:16',NULL,1),(163,152,NULL,'10:43:18',NULL,1),(164,153,NULL,'10:43:19',NULL,1),(165,154,NULL,'10:43:21',NULL,1),(166,155,NULL,'10:43:23',NULL,1),(167,156,'10:44:41','20:40:24',NULL,0),(168,157,'10:46:01','08:21:54',NULL,0),(169,158,'10:46:02','20:13:46',NULL,0),(170,159,NULL,'10:53:29',NULL,1),(171,160,NULL,'10:53:31',NULL,1),(172,161,NULL,'10:53:32',NULL,1),(173,162,NULL,'10:53:34',NULL,1),(174,163,NULL,'10:53:35',NULL,1),(175,164,NULL,'10:53:35',NULL,1),(176,165,NULL,'10:53:36',NULL,1),(177,172,'06:02:01','10:53:38',NULL,0),(178,172,'17:57:00','10:53:00',NULL,0),(179,172,'17:41:49','10:53:41',NULL,0),(180,172,'17:41:46','10:53:43',NULL,0),(181,172,'05:11:34','10:53:44',NULL,0),(182,172,'17:09:43','10:53:45',NULL,0),(183,172,'17:09:38','10:53:46',NULL,0),(184,173,NULL,'17:06:44',NULL,0),(185,174,NULL,'16:58:27',NULL,0),(186,175,NULL,'16:56:35',NULL,0),(187,176,NULL,'04:55:18',NULL,0),(188,177,NULL,'16:40:13',NULL,0),(189,178,NULL,'16:39:52',NULL,0),(190,179,NULL,'16:25:45',NULL,0),(191,180,NULL,'16:24:34',NULL,0),(192,181,NULL,'16:24:29',NULL,0),(193,182,NULL,'11:25:43',NULL,0),(194,183,NULL,'11:25:38',NULL,0),(195,184,NULL,'11:25:32',NULL,0),(196,185,NULL,'11:25:31',NULL,0),(197,186,NULL,'11:25:25',NULL,0),(198,187,'11:02:07','10:25:04',NULL,0),(199,188,'11:23:48','11:04:58',NULL,0),(200,136,'12:33:10','12:33:14',NULL,0),(201,141,'12:33:18','19:18:21',NULL,0),(202,189,'01:29:29','11:14:57',NULL,0),(203,190,'13:30:07','12:10:19',NULL,0),(204,136,'19:18:16','00:00:00',NULL,0),(205,191,'19:22:16','19:28:04',NULL,0),(206,192,'09:50:18','18:57:33',NULL,0),(207,193,'10:06:32','19:35:19',NULL,0),(208,194,'10:07:39','20:02:00',NULL,0),(209,195,'10:13:14','19:25:36',NULL,0),(210,196,'10:18:10','09:57:54',NULL,0),(211,197,'10:22:09','19:25:51',NULL,0),(212,198,'10:22:48','19:52:54',NULL,0),(213,199,'10:22:12','20:04:03',NULL,0),(214,200,'10:25:09','10:37:50',NULL,0),(215,201,'10:28:28','10:24:48',NULL,0),(216,202,'10:33:08','19:35:37',NULL,0),(217,203,'10:34:21','19:56:32',NULL,0),(218,204,'10:40:12','10:21:06',NULL,0),(219,205,'10:44:08','10:37:56',NULL,0),(220,206,'10:51:35','19:54:16',NULL,0),(221,207,NULL,'10:55:35',NULL,0),(222,208,NULL,'10:55:07',NULL,0),(223,209,NULL,'10:54:58',NULL,0),(224,210,NULL,'10:54:53',NULL,0),(225,211,NULL,'10:54:50',NULL,0),(226,212,NULL,'10:54:41',NULL,0),(227,213,NULL,'10:53:12',NULL,0),(228,214,NULL,'10:53:08',NULL,0),(229,215,NULL,'20:14:20',NULL,0),(230,216,NULL,'20:13:59',NULL,0),(231,217,NULL,'20:13:53',NULL,0),(232,218,NULL,'20:13:50',NULL,0),(233,219,NULL,'20:13:34',NULL,0),(234,220,NULL,'20:13:32',NULL,0),(235,221,NULL,'20:13:28',NULL,0),(236,222,NULL,'20:13:23',NULL,0),(237,223,NULL,'08:13:15',NULL,0),(238,224,'11:00:31','21:50:40',NULL,0),(239,225,'11:00:38','10:41:54',NULL,0),(240,226,'11:05:07','12:51:24',NULL,0),(241,227,'16:23:00','20:00:00',NULL,0),(242,228,'09:46:47','19:00:44',NULL,0),(243,229,'09:57:57','06:57:51',NULL,0),(244,230,'10:01:22','20:11:40',NULL,0),(245,231,'10:02:06','08:21:53',NULL,0),(246,232,'10:12:54','20:33:02',NULL,0),(247,233,'10:14:24','20:29:42',NULL,0),(248,234,'10:14:44','10:12:20',NULL,0),(249,235,'10:15:45','00:00:00',NULL,0),(250,236,'10:20:35','19:32:22',NULL,0),(251,237,'10:21:08','10:02:48',NULL,0),(252,237,'10:21:10','10:02:49',NULL,0),(253,238,'10:24:57','10:23:08',NULL,0),(254,239,'10:25:38','10:17:27',NULL,0),(255,240,'10:27:05','00:00:00',NULL,0),(256,241,'10:35:13','19:39:16',NULL,0),(257,242,'10:37:53','10:42:40',NULL,0),(258,243,'10:38:03','20:01:36',NULL,0),(259,244,'10:41:41','10:48:16',NULL,0),(260,245,'10:44:32','07:56:48',NULL,0),(261,240,'10:49:12','20:17:18',NULL,0),(262,246,'10:55:46','18:49:43',NULL,0),(263,247,'10:55:54','20:41:22',NULL,0),(264,248,'11:45:38','11:34:51',NULL,0),(265,249,'12:10:28','11:54:35',NULL,0),(266,250,'12:41:33','10:34:27',NULL,0),(267,251,'12:51:27','11:53:41',NULL,0),(268,252,'09:46:42','09:54:31',NULL,0),(269,253,'10:06:29','20:23:00',NULL,0),(270,254,'10:11:10','19:38:32',NULL,0),(271,255,'10:09:49','08:23:42',NULL,0),(272,256,'10:12:25','19:12:28',NULL,0),(273,257,'10:14:11','10:02:51',NULL,0),(274,258,'10:17:29','10:43:18',NULL,0),(275,259,'10:18:06','20:25:38',NULL,0),(276,260,'10:19:46','19:51:37',NULL,0),(277,261,'10:22:29','08:21:55',NULL,0),(278,262,'10:23:12','19:37:15',NULL,0),(279,263,'10:29:35','08:15:23',NULL,0),(280,264,'10:34:31','10:25:32',NULL,0),(281,265,'10:41:56','19:33:06',NULL,0),(282,266,'10:43:12','19:35:30',NULL,0),(283,267,'10:48:47','19:31:51',NULL,0),(284,268,'11:00:43','10:44:48',NULL,0),(285,269,'11:02:59','19:57:16',NULL,0),(286,270,'11:03:22','20:18:12',NULL,0),(287,271,'11:34:52','12:02:15',NULL,0),(288,272,'11:53:43','20:21:24',NULL,0),(289,273,'11:54:50','11:03:25',NULL,0),(290,274,'18:49:46','10:05:23',NULL,0),(291,275,'09:54:34','09:03:17',NULL,0),(292,276,'09:53:57','06:47:45',NULL,0),(293,277,'09:57:20','07:35:05',NULL,0),(294,278,'10:05:25','10:28:33',NULL,0),(295,279,'10:09:23','20:14:44',NULL,0),(296,280,'10:11:32','19:05:03',NULL,0),(297,281,'10:11:40','00:00:00',NULL,0),(298,282,'10:15:05','20:18:58',NULL,0),(299,283,'10:16:41','10:17:39',NULL,0),(300,284,'10:30:32','20:18:43',NULL,0),(301,285,'10:38:43','10:34:24',NULL,0),(302,286,'10:39:23','11:03:08',NULL,0),(303,287,'10:42:18','00:00:00',NULL,0),(304,288,'10:43:04','10:21:20',NULL,0),(305,289,'10:44:51','08:27:19',NULL,0),(306,290,'10:45:24','10:42:13',NULL,0),(307,291,'10:48:43','18:09:16',NULL,0),(308,292,'10:56:30','20:10:12',NULL,0),(309,293,'11:15:06','20:15:16',NULL,0),(310,294,'17:16:47','20:08:19',NULL,0),(311,277,'19:36:58','19:37:01',NULL,0),(312,295,'09:03:20','06:09:15',NULL,0),(313,296,'10:02:54','10:34:34',NULL,0),(314,297,'10:04:52','19:55:27',NULL,0),(315,298,'10:08:31','09:18:04',NULL,0),(316,299,'10:14:11','20:50:44',NULL,0),(317,300,'10:17:36','09:18:47',NULL,0),(318,301,'10:17:43','20:51:55',NULL,0),(319,302,'10:19:19','07:20:28',NULL,0),(320,303,'10:19:37','10:27:55',NULL,0),(321,304,'10:21:27','10:50:43',NULL,0),(322,305,'10:23:57','20:44:16',NULL,0),(323,306,'10:25:37','20:04:48',NULL,0),(324,307,'10:34:38','10:53:54',NULL,0),(325,308,'10:42:13','08:54:20',NULL,0),(326,309,'10:42:22','07:28:39',NULL,0),(327,310,'10:47:27','21:15:20',NULL,0),(328,311,'10:48:24','20:13:16',NULL,0),(329,312,'11:02:36','11:02:40',NULL,0),(330,313,'11:03:00','10:57:42',NULL,0),(331,314,'12:15:12','20:42:45',NULL,0),(332,315,'09:58:34','18:58:36',NULL,0),(333,316,'10:06:26','19:49:02',NULL,0),(334,317,'10:12:36','08:53:23',NULL,0),(335,318,'10:15:13','07:11:06',NULL,0),(336,319,'10:16:30','08:53:58',NULL,0),(337,320,'10:18:25','20:09:39',NULL,0),(338,321,'10:25:45','21:34:20',NULL,0),(339,322,'10:28:32','07:06:53',NULL,0),(340,323,'10:28:35','10:29:15',NULL,0),(341,323,'10:29:18','10:53:02',NULL,0),(342,324,'10:31:49','20:02:54',NULL,0),(343,325,'10:37:56','21:34:01',NULL,0),(344,326,'10:33:34','08:47:22',NULL,0),(345,327,'10:34:27','10:46:38',NULL,0),(346,328,'10:42:05','19:40:22',NULL,0),(347,329,'10:48:52','10:26:49',NULL,0),(348,330,'10:50:47','10:38:53',NULL,0),(349,331,'10:54:08',NULL,NULL,1),(350,332,'10:57:10','20:12:03',NULL,0),(351,333,'10:57:45','11:01:49',NULL,0),(352,334,'11:00:20','20:17:41',NULL,0),(353,333,'11:01:41','20:19:59',NULL,0),(354,335,'11:15:01','11:22:32',NULL,0),(355,336,'10:09:31','20:20:31',NULL,0),(356,337,'10:12:36','08:22:49',NULL,0),(357,338,'10:25:31','10:24:09',NULL,0),(358,339,'10:25:37','22:24:08',NULL,0),(359,340,'10:25:54','10:24:23',NULL,0),(360,341,'10:25:58','10:09:55',NULL,0),(361,342,'10:26:52','10:38:00',NULL,0),(362,343,'10:29:25','07:33:48',NULL,0),(363,344,'10:29:05','10:49:04',NULL,0),(364,345,'10:36:30','20:18:08',NULL,0),(365,346,'10:37:00','19:36:35',NULL,0),(366,347,'10:38:33','07:34:14',NULL,0),(367,348,'10:40:51','08:46:22',NULL,0),(368,349,'10:46:42','10:50:10',NULL,0),(369,350,'10:49:56','10:58:51',NULL,0),(370,351,'11:07:11','20:27:52',NULL,0),(371,352,'12:07:12','12:07:35',NULL,0),(372,353,'14:11:59','19:46:57',NULL,0),(373,355,'09:49:03','09:45:27',NULL,0),(374,356,'10:07:14','21:07:21',NULL,0),(375,357,'10:10:01','19:52:30',NULL,0),(376,358,'10:08:17','08:53:04',NULL,0),(377,359,'10:27:04','09:33:18',NULL,0),(378,360,'10:27:26','07:44:13',NULL,0),(379,361,'10:28:45','09:33:30',NULL,0),(380,362,'10:32:07','10:16:07',NULL,0),(381,363,'10:37:58','20:36:31',NULL,0),(382,364,'10:44:33','21:12:07',NULL,0),(383,365,'10:47:07','07:31:00',NULL,0),(384,366,'10:48:36','12:01:10',NULL,0),(385,367,'10:52:28','20:28:57',NULL,0),(386,368,'10:53:42','11:32:16',NULL,0),(387,369,'10:58:55','10:58:37',NULL,0),(388,370,'11:00:04','07:30:35',NULL,0),(389,371,'11:20:47','20:25:03',NULL,0),(390,364,'09:13:07','21:32:56',NULL,0),(391,372,'09:45:31','18:56:37',NULL,0),(392,373,'10:09:18','08:52:53',NULL,0),(393,374,'10:13:58','19:18:10',NULL,0),(394,375,'10:12:50','07:43:45',NULL,0),(395,376,'10:16:14','18:57:49',NULL,0),(396,377,'10:17:07','10:22:27',NULL,0),(397,378,'10:21:19','09:57:49',NULL,0),(398,379,'10:25:58','07:51:58',NULL,0),(399,380,'10:26:55','10:37:36',NULL,0),(400,381,'10:26:34','19:34:12',NULL,0),(401,382,'10:27:05','07:50:20',NULL,0),(402,383,'10:29:25','19:42:06',NULL,0),(403,384,'10:58:40','10:43:30',NULL,0),(404,385,'11:00:42','20:54:26',NULL,0),(405,386,'11:14:10','08:47:00',NULL,0),(406,387,'11:32:18','17:39:14',NULL,0),(407,388,'12:00:29','11:33:06',NULL,0),(408,382,'19:50:00','19:51:10',NULL,0),(409,391,'09:54:09','06:57:38',NULL,0),(410,392,'09:57:17','20:14:22',NULL,0),(411,393,'09:57:52','19:56:02',NULL,0),(412,394,'10:01:09','19:41:10',NULL,0),(413,395,'10:13:36','10:16:47',NULL,0),(414,396,'10:18:54','07:17:28',NULL,0),(415,397,'10:21:40','09:10:40',NULL,0),(416,398,'10:22:33','19:42:43',NULL,0),(417,399,'10:22:58','21:11:35',NULL,0),(418,400,'10:37:39','10:29:08',NULL,0),(419,401,'10:38:40','21:11:37',NULL,0),(420,402,'10:41:52','20:09:32',NULL,0),(421,403,'10:43:32','20:09:34',NULL,0),(422,404,'11:05:16','08:14:28',NULL,0),(423,405,'11:10:09','08:30:04',NULL,0),(424,406,'11:32:24','10:45:16',NULL,0),(425,412,'10:07:10','19:41:30',NULL,0),(426,413,'10:10:23','20:13:59',NULL,0),(427,414,'10:18:15','16:00:37',NULL,0),(428,415,'10:26:14','19:47:43',NULL,0),(429,416,'10:28:33','11:08:56',NULL,0),(430,417,'10:28:56','19:33:31',NULL,0),(431,418,'10:37:09','19:37:19',NULL,0),(432,419,'10:43:29','19:50:48',NULL,0),(433,420,'10:44:32',NULL,NULL,1),(434,421,'10:52:43','19:24:33',NULL,0),(435,422,'10:54:22','19:52:04',NULL,0),(436,423,'11:03:56','07:59:33',NULL,0),(437,424,'11:09:36','10:59:53',NULL,0),(438,425,'11:21:39','11:09:49',NULL,0),(439,426,'11:22:36',NULL,NULL,1),(440,427,'09:51:25','06:58:45',NULL,0),(441,428,'09:57:26','07:04:21',NULL,0),(442,429,'10:13:16','19:44:13',NULL,0),(443,430,'10:17:05','10:22:11',NULL,0),(444,431,'10:17:18','20:36:27',NULL,0),(445,432,'10:23:42','20:20:22',NULL,0),(446,433,'10:25:08','07:53:15',NULL,0),(447,434,'10:31:18','19:30:47',NULL,0),(448,435,'10:50:14','10:40:35',NULL,0),(449,436,'11:00:00','20:19:11',NULL,0),(450,437,'11:00:34','10:54:51',NULL,0),(451,438,'11:09:36','07:51:51',NULL,0),(452,439,'11:09:52','00:00:00',NULL,0),(453,440,'11:31:22','08:31:23',NULL,0),(454,441,'06:58:28','06:58:31',NULL,0),(455,427,'18:59:11','06:58:41',NULL,0),(456,428,'07:04:23','07:04:26',NULL,0),(457,439,'19:54:37','20:15:10',NULL,0),(458,442,'09:51:21','08:17:18',NULL,0),(459,443,'09:52:33','18:46:04',NULL,0),(460,444,'09:59:25','10:20:24',NULL,0),(461,445,'10:14:29','19:19:50',NULL,0),(462,446,'10:22:34','10:34:55',NULL,0),(463,447,'10:23:32','10:44:01',NULL,0),(464,448,'10:24:02','10:28:55',NULL,0),(465,449,'10:25:19','20:19:56',NULL,0),(466,450,'10:31:54','10:33:55',NULL,0),(467,451,'10:33:31','20:18:04',NULL,0),(468,450,'10:34:00','19:52:12',NULL,0),(469,452,'10:37:16','10:54:24',NULL,0),(470,453,'10:37:13','20:08:36',NULL,0),(471,454,'10:40:25','19:41:24',NULL,0),(472,455,'10:40:38','10:51:19',NULL,0),(473,456,'11:00:03','20:14:25',NULL,0),(474,457,'11:09:01','07:31:44',NULL,0),(475,458,'05:39:02',NULL,NULL,1),(476,459,'07:20:17','11:16:37',NULL,0),(477,460,'09:47:00','19:24:06',NULL,0),(478,461,'10:02:14','19:22:28',NULL,0),(479,462,'10:06:27','07:31:50',NULL,0),(480,463,'10:19:18','19:20:02',NULL,0),(481,464,'10:20:31','08:37:16',NULL,0),(482,465,'10:24:08','10:10:12',NULL,0),(483,466,'10:24:30','19:32:26',NULL,0),(484,467,'10:30:45','20:12:20',NULL,0),(485,468,'10:28:59','08:42:14',NULL,0),(486,469,'10:36:34','19:34:41',NULL,0),(487,470,'10:34:58','19:33:16',NULL,0),(488,471,'10:43:06','09:13:08',NULL,0),(489,472,'10:45:03','19:24:26',NULL,0),(490,473,'10:51:38','10:39:14',NULL,0),(491,474,'10:54:27','20:32:51',NULL,0),(492,475,'10:54:54',NULL,NULL,1),(493,476,'11:16:39','11:08:18',NULL,0),(494,477,'18:55:11',NULL,NULL,0),(495,478,'19:22:51',NULL,NULL,0),(496,479,'10:10:16','08:25:08',NULL,0),(497,480,'19:18:32',NULL,NULL,0),(498,481,'07:20:21','00:00:00',NULL,0),(499,482,'10:22:01','20:35:47',NULL,0),(500,483,'10:23:22','19:35:07',NULL,0),(501,484,'10:28:15','20:15:13',NULL,0),(502,485,'07:20:32',NULL,NULL,0),(503,486,'10:33:49','19:50:15',NULL,0),(504,487,'10:39:06','04:33:26',NULL,0),(505,488,'10:39:19','09:57:54',NULL,0),(506,489,'10:53:19','08:29:35',NULL,0),(507,490,'11:08:20','13:04:48',NULL,0),(508,491,'12:42:43','10:54:57',NULL,0),(509,490,'13:04:51','20:31:03',NULL,0),(510,492,'02:19:27','08:32:25',NULL,0),(511,487,'16:34:16','16:34:20',NULL,0),(512,487,'16:34:30','16:34:37',NULL,0),(513,487,'16:34:44','16:38:04',NULL,0),(514,487,'16:38:08','00:00:00',NULL,0),(515,487,'16:38:47','16:55:20',NULL,0),(516,487,'18:01:55','00:00:00',NULL,0),(517,487,'18:05:57',NULL,NULL,0),(518,172,'18:02:32','00:00:00',NULL,0),(519,172,'18:02:41',NULL,NULL,0),(520,172,'18:03:55',NULL,NULL,0),(521,172,'18:04:03',NULL,NULL,0),(522,172,'18:05:55',NULL,NULL,0),(523,172,'18:06:19',NULL,NULL,0),(524,487,'19:22:13',NULL,NULL,0),(525,172,'18:06:32',NULL,NULL,0),(526,172,'18:45:43',NULL,NULL,0),(527,172,'18:45:40','19:29:08',NULL,0),(528,480,'19:21:03',NULL,NULL,0),(529,487,'19:22:26','19:23:24',NULL,0),(530,487,'19:23:33','19:23:39',NULL,0),(531,487,'19:28:20','08:30:34',NULL,0),(532,172,'19:29:13','19:29:31',NULL,0),(533,172,'19:32:29','19:32:32',NULL,0),(534,492,'20:31:28','20:31:31',NULL,0),(535,493,'09:50:51','06:56:24',NULL,0),(536,494,'09:57:57',NULL,NULL,1),(537,495,'10:15:57','10:30:56',NULL,0),(538,496,'10:16:09','20:43:46',NULL,0),(539,497,'10:19:47','20:07:02',NULL,0),(540,498,'10:18:08','20:36:29',NULL,0),(541,499,'10:20:33','19:32:23',NULL,0),(542,500,'10:30:15','21:59:11',NULL,0),(543,501,'10:45:44','07:35:47',NULL,0),(544,502,'10:42:57','07:19:53',NULL,0),(545,503,'10:50:55','08:36:45',NULL,0),(546,504,'10:58:28','13:16:03',NULL,0),(547,505,'11:16:22','20:48:33',NULL,0),(548,506,'12:41:38','21:00:50',NULL,0),(549,507,'19:20:26','19:20:32',NULL,0),(550,508,'09:24:03','20:26:51',NULL,0),(551,509,'09:50:05','18:58:21',NULL,0),(552,510,'10:19:32','10:23:30',NULL,0),(553,511,'10:20:20','08:31:06',NULL,0),(554,512,'10:23:51','08:06:27',NULL,0),(555,513,'10:31:44','20:55:27',NULL,0),(556,514,'10:32:47','08:42:27',NULL,0),(557,515,'10:32:50','19:30:30',NULL,0),(558,516,'10:38:15','08:00:05',NULL,0),(559,517,'10:42:26','11:16:23',NULL,0),(560,518,'10:43:20','20:01:04',NULL,0),(561,519,'10:55:50','08:15:24',NULL,0),(562,520,'10:56:14','19:33:11',NULL,0),(563,521,'11:05:12','11:21:18',NULL,0),(564,522,'01:15:45','11:18:15',NULL,0),(565,516,'08:00:20','08:00:23',NULL,0),(566,523,'20:40:02','20:43:43',NULL,0),(567,524,'09:26:50','09:19:16',NULL,0),(568,525,'09:48:34','06:57:14',NULL,0),(569,526,'10:07:12','20:02:06',NULL,0),(570,527,'10:10:36','20:08:47',NULL,0),(571,528,'10:23:34','19:38:02',NULL,0),(572,529,'10:19:10','20:36:04',NULL,0),(573,530,'10:25:07','19:08:19',NULL,0),(574,531,'10:36:13','20:13:57',NULL,0),(575,532,'10:37:11','08:38:17',NULL,0),(576,532,'10:37:21','20:35:59',NULL,0),(577,533,'10:37:38','19:57:57',NULL,0),(578,534,'10:46:38','20:12:46',NULL,0),(579,535,'11:00:20','10:58:29',NULL,0),(580,536,'11:02:53','07:14:27',NULL,0),(581,537,'11:08:11','08:37:40',NULL,0),(582,538,'11:18:17','10:38:46',NULL,0),(583,539,'11:20:57','20:35:23',NULL,0),(584,540,'09:19:18','20:09:25',NULL,0),(585,541,'09:47:47','09:49:15',NULL,0),(586,542,'10:05:07','07:18:30',NULL,0),(587,543,'10:14:04','08:32:13',NULL,0),(588,544,'10:23:37','20:32:48',NULL,0),(589,545,'10:32:52','19:36:23',NULL,0),(590,546,'10:36:18','07:37:59',NULL,0),(591,547,'10:38:26','01:29:25',NULL,0),(592,548,'10:41:44','20:27:17',NULL,0),(593,549,'10:53:58','20:48:59',NULL,0),(594,550,'10:53:12','19:28:12',NULL,0),(595,551,'10:56:11','20:27:01',NULL,0),(596,552,'10:58:34','11:02:08',NULL,0),(597,552,'11:02:22',NULL,NULL,1),(598,553,'11:03:13','20:30:27',NULL,0),(599,554,'11:10:13','20:24:49',NULL,0),(600,555,'11:12:08','20:40:35',NULL,0),(601,556,'11:15:21','07:41:15',NULL,0),(602,557,'09:24:26','19:54:22',NULL,0),(603,558,'09:49:19','06:56:16',NULL,0),(604,559,'10:07:34','08:19:25',NULL,0),(605,560,'10:10:31','19:42:52',NULL,0),(606,561,'10:14:44','08:28:29',NULL,0),(607,562,'10:16:32','07:47:49',NULL,0),(608,563,'10:23:49','19:50:05',NULL,0),(609,564,'10:28:21','20:39:58',NULL,0),(610,565,'10:38:14','10:28:46',NULL,0),(611,566,'10:40:27','20:08:57',NULL,0),(612,567,'10:47:06','20:27:33',NULL,0),(613,568,'10:48:13','20:21:17',NULL,0),(614,569,'11:27:30','10:48:59',NULL,0),(615,570,'11:45:05','20:31:35',NULL,0),(616,571,'20:22:44','20:08:10',NULL,0),(617,572,'09:18:32','19:41:46',NULL,0),(618,573,'09:52:34','18:48:06',NULL,0),(619,574,'10:02:51','19:18:48',NULL,0),(620,575,'10:13:32','20:16:25',NULL,0),(621,576,'10:15:41','20:18:53',NULL,0),(622,577,'10:28:49','18:33:18',NULL,0),(623,578,'10:31:23','20:05:37',NULL,0),(624,579,'10:34:38','20:06:01',NULL,0),(625,580,'10:48:54','08:07:32',NULL,0),(626,581,'10:53:32','20:17:47',NULL,0),(627,582,'15:33:42','20:11:13',NULL,0),(628,583,'07:50:49','00:00:00',NULL,0),(629,584,'09:16:28','08:09:31',NULL,0),(630,585,'09:51:41','09:49:18',NULL,0),(631,586,'10:15:13','20:05:30',NULL,0),(632,587,'10:21:59','08:32:25',NULL,0),(633,588,'10:28:03','20:08:08',NULL,0),(634,589,'10:30:07','20:10:08',NULL,0),(635,590,'10:33:37','20:06:19',NULL,0),(636,591,'10:39:20','10:41:27',NULL,0),(637,591,'10:41:30','00:00:00',NULL,0),(638,592,'10:49:03','10:29:00',NULL,0),(639,591,'11:24:37','20:06:52',NULL,0),(640,593,'13:29:29','12:01:35',NULL,0),(641,594,'07:26:12','10:11:13',NULL,0),(642,595,'08:03:40','19:57:25',NULL,0),(643,596,'08:04:18','19:27:46',NULL,0),(644,597,'08:07:02','07:56:19',NULL,0),(645,598,'08:08:19','10:38:50',NULL,0),(646,599,'08:30:50','20:31:10',NULL,0),(647,600,'09:49:20','09:14:34',NULL,0),(648,601,'10:11:36','10:52:45',NULL,0),(649,602,'10:36:24','19:25:03',NULL,0),(650,603,'11:41:32','19:28:04',NULL,0),(651,604,'12:01:36','10:45:22',NULL,0),(652,605,'10:10:29','18:15:06',NULL,0),(653,606,'10:12:39','19:11:08',NULL,0),(654,607,'10:19:20','19:11:51',NULL,0),(655,608,'10:31:35','19:06:01',NULL,0),(656,609,'10:32:24','19:17:01',NULL,0),(657,610,'10:36:12','07:16:34',NULL,0),(658,611,'10:52:45','10:31:22',NULL,0),(659,605,'06:17:09','18:21:13',NULL,0),(660,612,'18:19:38','18:57:52',NULL,0),(661,613,'09:46:29','06:47:32',NULL,0),(662,614,'10:08:23','20:38:42',NULL,0),(663,615,'10:11:16','19:35:42',NULL,0),(664,616,'10:12:06',NULL,NULL,1),(665,617,'10:12:23','20:23:23',NULL,0),(666,618,'10:16:02','19:57:34',NULL,0),(667,619,'10:18:04','20:38:49',NULL,0),(668,620,'10:31:24','12:04:59',NULL,0),(669,621,'10:36:58','19:43:05',NULL,0),(670,622,'10:37:04','20:25:49',NULL,0),(671,623,'10:38:03','20:02:12',NULL,0),(672,624,'10:45:25',NULL,NULL,1),(673,625,'10:48:28','19:50:48',NULL,0),(674,626,'09:04:11','00:00:00',NULL,0),(675,627,'09:06:19','07:20:35',NULL,0),(676,626,'09:14:37','20:23:22',NULL,0),(677,628,'09:27:37','19:12:27',NULL,0),(678,629,'09:47:47','06:51:21',NULL,0),(679,630,'10:07:43','09:11:22',NULL,0),(680,631,'10:12:26','08:24:35',NULL,0),(681,632,'10:32:25','20:32:38',NULL,0),(682,633,'10:35:24','19:58:12',NULL,0),(683,634,'10:39:13','19:32:59',NULL,0),(684,635,'10:45:28','19:55:20',NULL,0),(685,636,'09:01:28','19:44:01',NULL,0),(686,637,'09:03:17','19:29:13',NULL,0),(687,638,'09:05:16','19:44:04',NULL,0),(688,639,'09:07:04','19:36:20',NULL,0),(689,640,NULL,'17:33:35',NULL,0),(690,641,NULL,'03:37:51',NULL,0),(691,642,NULL,'03:37:50',NULL,0),(692,643,NULL,'10:41:54',NULL,0),(693,644,NULL,'10:41:53',NULL,0),(694,645,NULL,'10:36:36',NULL,0),(695,646,NULL,'10:51:39',NULL,0),(696,647,NULL,'10:51:27',NULL,0),(697,648,NULL,'10:47:53',NULL,0),(698,649,NULL,'10:47:50',NULL,0),(699,650,NULL,'10:47:46',NULL,0),(700,651,NULL,'10:50:58',NULL,0),(701,652,NULL,'10:46:19',NULL,0),(702,653,NULL,'10:45:13',NULL,0),(703,654,NULL,'10:45:05',NULL,0),(704,655,NULL,'10:45:00',NULL,0),(705,656,NULL,'10:44:52',NULL,0),(706,657,NULL,'19:11:21',NULL,0),(707,658,NULL,'19:11:18',NULL,0),(708,659,NULL,'19:10:55',NULL,0),(709,660,NULL,'19:10:53',NULL,0),(710,661,NULL,'19:10:45',NULL,0),(711,662,NULL,'19:10:41',NULL,0),(712,663,NULL,'19:10:35',NULL,0),(713,664,NULL,'19:10:23',NULL,0),(714,665,NULL,'19:10:21',NULL,0),(715,666,NULL,'19:10:17',NULL,0),(716,667,NULL,'19:10:04',NULL,0),(717,668,NULL,'19:09:58',NULL,0),(718,669,NULL,'19:09:08',NULL,0),(719,670,'09:33:10','19:04:48',NULL,0),(720,671,'09:51:52','18:53:23',NULL,0),(721,672,'10:37:05','19:36:27',NULL,0),(722,673,'10:43:50','19:39:23',NULL,0),(723,674,'10:44:27','19:22:39',NULL,0),(724,675,'12:04:58','10:32:14',NULL,0),(725,676,'09:47:10','19:13:08',NULL,0),(726,677,'09:59:39','09:22:20',NULL,0),(727,678,'10:10:27','19:22:57',NULL,0),(728,679,'10:20:59','07:21:33',NULL,0),(729,680,'10:28:25','19:11:47',NULL,0),(730,681,'10:32:17','10:28:33',NULL,0),(731,682,'10:37:25','19:33:15',NULL,0),(732,683,'10:39:36','00:00:00',NULL,0),(733,684,'11:00:25','09:20:43',NULL,0),(734,685,'09:51:37','18:51:06',NULL,0),(735,686,NULL,'10:07:08',NULL,1),(736,687,NULL,'10:07:09',NULL,1),(737,688,NULL,'10:07:09',NULL,1),(738,689,NULL,'10:07:10',NULL,1),(739,690,NULL,'10:07:10',NULL,1),(740,691,NULL,'10:07:11',NULL,1),(741,692,NULL,'10:07:12',NULL,1),(742,693,NULL,'10:07:12',NULL,1),(743,694,NULL,'10:07:13',NULL,1),(744,695,NULL,'10:07:14',NULL,1),(745,696,NULL,'10:07:15',NULL,1),(746,697,NULL,'10:07:15',NULL,1),(747,698,NULL,'10:07:16',NULL,1),(748,699,NULL,'10:07:17',NULL,1),(749,700,NULL,'10:07:17',NULL,1),(750,701,NULL,'10:07:18',NULL,1),(751,702,NULL,'10:07:19',NULL,1),(752,703,NULL,'10:07:19',NULL,1),(753,704,NULL,'10:07:20',NULL,1),(754,705,NULL,'10:07:21',NULL,1),(755,706,NULL,'10:07:27',NULL,1),(756,707,NULL,'10:07:27',NULL,1),(757,708,NULL,'10:07:29',NULL,1),(758,709,NULL,'10:07:29',NULL,1),(759,710,NULL,'10:07:30',NULL,1),(760,711,NULL,'10:07:31',NULL,1),(761,712,NULL,'10:07:31',NULL,1),(762,713,NULL,'10:07:32',NULL,1),(763,714,NULL,'10:07:33',NULL,1),(764,715,NULL,'10:07:33',NULL,1),(765,716,NULL,'10:07:34',NULL,1),(766,717,NULL,'10:07:34',NULL,1),(767,718,NULL,'10:07:41',NULL,1),(768,719,NULL,'10:07:42',NULL,1),(769,720,NULL,'10:07:43',NULL,1),(770,721,NULL,'10:07:43',NULL,1),(771,722,NULL,'10:07:44',NULL,1),(772,723,NULL,'10:07:45',NULL,1),(773,724,NULL,'10:07:45',NULL,1),(774,725,NULL,'10:07:46',NULL,1),(775,726,NULL,'10:07:47',NULL,1),(776,727,NULL,'10:07:47',NULL,1),(777,728,NULL,'10:07:54',NULL,1),(778,729,NULL,'10:07:55',NULL,1),(779,730,NULL,'10:07:56',NULL,1),(780,731,NULL,'10:07:56',NULL,1),(781,732,NULL,'10:07:57',NULL,1),(782,733,NULL,'10:07:57',NULL,1),(783,734,NULL,'10:07:58',NULL,1),(784,735,NULL,'10:07:59',NULL,1),(785,736,NULL,'10:07:59',NULL,1),(786,737,NULL,'10:08:00',NULL,1),(787,738,NULL,'10:08:31',NULL,1),(788,739,NULL,'10:08:32',NULL,1),(789,740,NULL,'10:08:33',NULL,1),(790,741,NULL,'10:08:33',NULL,1),(791,742,NULL,'10:08:34',NULL,1),(792,743,NULL,'10:08:34',NULL,1),(793,744,NULL,'10:08:35',NULL,1),(794,745,NULL,'10:08:36',NULL,1),(795,746,NULL,'10:08:36',NULL,1),(796,747,NULL,'10:08:37',NULL,1),(797,748,NULL,'10:08:38',NULL,1),(798,749,NULL,'10:08:38',NULL,1),(799,750,NULL,'10:08:52',NULL,1),(800,751,NULL,'10:08:53',NULL,1),(801,752,NULL,'10:08:54',NULL,1),(802,753,NULL,'10:08:54',NULL,1),(803,754,NULL,'10:08:55',NULL,1),(804,755,NULL,'10:08:56',NULL,1),(805,756,NULL,'10:08:56',NULL,1),(806,757,NULL,'10:08:57',NULL,1),(807,758,NULL,'10:08:57',NULL,1),(808,759,NULL,'10:08:58',NULL,1),(809,760,NULL,'10:08:59',NULL,1),(810,761,NULL,'10:09:00',NULL,1),(811,762,NULL,'10:09:01',NULL,1),(812,763,NULL,'10:09:02',NULL,1),(813,764,NULL,'10:09:02',NULL,1),(814,765,NULL,'10:09:03',NULL,1),(815,766,NULL,'10:09:03',NULL,1),(816,767,NULL,'10:09:04',NULL,1),(817,768,NULL,'10:09:05',NULL,1),(818,769,NULL,'10:09:05',NULL,1),(819,770,NULL,'10:09:11',NULL,1),(820,771,NULL,'10:09:12',NULL,1),(821,772,NULL,'10:09:12',NULL,1),(822,773,NULL,'10:09:13',NULL,1),(823,774,NULL,'10:09:14',NULL,1),(824,775,NULL,'10:09:14',NULL,1),(825,776,NULL,'10:09:15',NULL,1),(826,777,NULL,'10:09:16',NULL,1),(827,778,NULL,'10:09:16',NULL,1),(828,779,NULL,'10:09:17',NULL,1),(829,780,NULL,'10:09:48',NULL,1),(830,781,NULL,'10:09:48',NULL,1),(831,782,NULL,'10:09:49',NULL,1),(832,783,NULL,'10:09:50',NULL,1),(833,784,NULL,'10:09:50',NULL,1),(834,785,NULL,'10:09:51',NULL,1),(835,786,NULL,'10:09:52',NULL,1),(836,787,NULL,'10:09:52',NULL,1),(837,788,NULL,'10:09:53',NULL,1),(838,789,NULL,'10:09:54',NULL,1),(839,790,NULL,'10:10:04',NULL,1),(840,791,NULL,'10:10:05',NULL,1),(841,792,NULL,'10:10:06',NULL,1),(842,793,NULL,'10:10:06',NULL,1),(843,794,NULL,'10:10:07',NULL,1),(844,795,NULL,'10:10:08',NULL,1),(845,796,NULL,'10:10:09',NULL,1),(846,797,NULL,'10:10:09',NULL,1),(847,798,NULL,'10:10:10',NULL,1),(848,799,NULL,'10:10:11',NULL,1),(849,800,NULL,'10:10:33',NULL,1),(850,801,NULL,'10:10:34',NULL,1),(851,802,NULL,'10:10:35',NULL,1),(852,803,NULL,'10:10:36',NULL,1),(853,804,NULL,'10:10:37',NULL,1),(854,805,NULL,'10:10:38',NULL,1),(855,806,NULL,'10:10:39',NULL,1),(856,807,NULL,'10:10:41',NULL,1),(857,808,NULL,'10:10:42',NULL,1),(858,809,NULL,'10:10:43',NULL,1),(859,810,NULL,'10:11:07',NULL,1),(860,811,NULL,'10:11:08',NULL,1),(861,812,NULL,'10:11:09',NULL,1),(862,813,NULL,'10:11:09',NULL,1),(863,814,NULL,'10:11:10',NULL,1),(864,815,NULL,'10:11:10',NULL,1),(865,816,NULL,'10:11:20',NULL,0),(866,817,NULL,'10:19:54',NULL,0),(867,818,NULL,'10:19:50',NULL,0),(868,819,NULL,'10:11:28',NULL,0),(869,820,NULL,'10:19:29',NULL,0),(870,821,NULL,'10:19:06',NULL,0),(871,822,NULL,'10:18:36',NULL,0),(872,823,NULL,'10:12:10',NULL,0),(873,824,NULL,'10:13:47',NULL,1),(874,825,NULL,'10:13:47',NULL,1),(875,826,NULL,'10:13:48',NULL,1),(876,827,NULL,'10:13:48',NULL,1),(877,828,NULL,'10:13:49',NULL,1),(878,829,NULL,'10:13:50',NULL,1),(879,830,NULL,'10:13:50',NULL,1),(880,831,NULL,'10:13:51',NULL,1),(881,832,NULL,'10:13:51',NULL,1),(882,833,NULL,'10:13:52',NULL,1),(883,834,NULL,'10:13:53',NULL,1),(884,835,NULL,'10:13:54',NULL,1),(885,836,NULL,'10:13:54',NULL,1),(886,837,NULL,'10:13:55',NULL,1),(887,838,NULL,'10:13:56',NULL,1),(888,839,NULL,'10:13:56',NULL,1),(889,840,NULL,'10:13:57',NULL,1),(890,841,NULL,'10:13:58',NULL,1),(891,842,NULL,'10:13:58',NULL,1),(892,843,NULL,'10:13:59',NULL,1),(893,844,NULL,'10:14:05',NULL,1),(894,845,NULL,'10:14:05',NULL,1),(895,846,NULL,'10:14:06',NULL,1),(896,847,NULL,'10:14:07',NULL,1),(897,848,NULL,'10:14:07',NULL,1),(898,849,NULL,'10:14:08',NULL,1),(899,850,NULL,'10:14:08',NULL,1),(900,851,NULL,'10:14:09',NULL,1),(901,852,NULL,'10:14:10',NULL,1),(902,853,NULL,'10:14:10',NULL,1),(903,854,'10:14:13','08:42:43',NULL,0),(904,855,NULL,'10:14:41',NULL,1),(905,856,NULL,'10:14:42',NULL,1),(906,857,NULL,'10:14:42',NULL,1),(907,858,NULL,'10:14:43',NULL,1),(908,859,NULL,'10:14:44',NULL,1),(909,860,NULL,'10:14:48',NULL,0),(910,861,NULL,'10:14:45',NULL,1),(911,862,NULL,'10:14:45',NULL,1),(912,863,NULL,'10:14:46',NULL,1),(913,864,NULL,'10:14:51',NULL,0),(914,865,'10:17:43','07:57:20',NULL,0),(915,866,'10:28:36','10:29:33',NULL,0),(916,867,'10:28:57','10:47:40',NULL,0),(917,868,'10:35:44','19:42:48',NULL,0),(918,869,'10:43:59','21:37:55',NULL,0),(919,865,'19:58:02','19:58:04',NULL,0),(920,865,'19:58:22','00:00:00',NULL,0),(921,865,'20:34:35','21:40:12',NULL,0),(922,870,'09:52:15','18:54:21',NULL,0),(923,871,'10:16:29','10:19:25',NULL,0),(924,872,'10:22:14','19:45:43',NULL,0),(925,873,'10:23:18','08:20:01',NULL,0),(926,874,'10:29:36','12:03:32',NULL,0),(927,875,'10:37:56','10:29:52',NULL,0),(928,876,'10:47:44','10:36:12',NULL,0),(929,877,'10:49:27','07:38:24',NULL,0),(930,878,'10:52:24','20:10:10',NULL,0),(931,879,'10:53:04','08:18:39',NULL,0),(932,880,'09:54:24','18:52:27',NULL,0),(933,881,'10:15:53','20:04:49',NULL,0),(934,882,'10:22:01','20:22:59',NULL,0),(935,883,'10:26:30','20:29:34',NULL,0),(936,884,'10:29:55','20:02:55',NULL,0),(937,885,'10:36:14','10:25:41',NULL,0),(938,886,'10:39:58','10:20:59',NULL,0),(939,887,'10:49:48','20:04:29',NULL,0),(940,888,'12:20:04','10:05:26',NULL,0),(941,889,'10:00:13','19:31:26',NULL,0),(942,890,'10:05:29','06:18:47',NULL,0),(943,891,'10:08:31','20:02:22',NULL,0),(944,892,'10:16:40','20:32:02',NULL,0),(945,893,'10:19:29','19:37:46',NULL,0),(946,894,'10:21:11','10:23:19',NULL,0),(947,895,'10:25:52','10:41:06',NULL,0),(948,896,'10:27:02','08:36:17',NULL,0),(949,897,'10:42:12','19:58:03',NULL,0),(950,898,'10:46:06','07:56:44',NULL,0),(951,899,'09:49:16','18:52:26',NULL,0),(952,900,'09:59:24','18:43:43',NULL,0),(953,901,'10:11:07','19:11:14',NULL,0),(954,902,'10:13:33','10:12:24',NULL,0),(955,903,'10:15:40','07:44:35',NULL,0),(956,904,'10:20:15',NULL,NULL,1),(957,905,'10:23:21','19:17:41',NULL,0),(958,906,'10:25:23','19:35:55',NULL,0),(959,907,'10:27:07','08:33:06',NULL,0),(960,908,'10:41:04','10:54:28',NULL,0),(961,909,'10:50:54','20:01:02',NULL,0),(962,910,'09:48:56','18:42:26',NULL,0),(963,911,'10:06:05','20:28:12',NULL,0),(964,912,'10:12:27','08:53:35',NULL,0),(965,913,'10:27:29','20:04:52',NULL,0),(966,914,'10:28:34','19:40:10',NULL,0),(967,915,'10:49:43','19:33:29',NULL,0),(968,916,'10:54:23','10:40:51',NULL,0),(969,917,'09:51:03','18:49:23',NULL,0),(970,918,'10:05:10','20:02:07',NULL,0),(971,919,'10:16:05','20:36:41',NULL,0),(972,920,'10:26:35','20:32:46',NULL,0),(973,921,'10:47:39','20:04:38',NULL,0),(974,922,'10:50:41','10:28:31',NULL,0),(975,923,'11:00:04','19:46:27',NULL,0),(976,924,'11:10:28','20:30:21',NULL,0),(977,923,'19:46:45','07:46:47',NULL,0),(978,925,'09:07:32','19:15:50',NULL,0),(979,926,'09:13:56','19:16:03',NULL,0),(980,927,'10:28:34','10:22:07',NULL,0),(981,928,'10:46:55','19:46:36',NULL,0),(982,929,'10:48:18','19:34:56',NULL,0),(983,930,NULL,'08:02:13',NULL,1),(984,931,NULL,'08:02:14',NULL,1),(985,932,NULL,'08:02:14',NULL,1),(986,933,NULL,'08:02:15',NULL,1),(987,934,NULL,'08:02:16',NULL,1),(988,935,NULL,'08:02:16',NULL,1),(989,936,NULL,'08:02:17',NULL,1),(990,937,NULL,'08:02:18',NULL,1),(991,938,NULL,'08:02:18',NULL,1),(992,939,NULL,'08:02:19',NULL,1),(993,940,NULL,'08:02:26',NULL,1),(994,941,NULL,'08:02:27',NULL,1),(995,942,NULL,'10:20:27',NULL,0),(996,943,NULL,'09:11:03',NULL,0),(997,944,NULL,'09:11:00',NULL,0),(998,945,NULL,'19:55:18',NULL,0),(999,946,NULL,'07:55:07',NULL,0),(1000,947,NULL,'10:16:18',NULL,0),(1001,948,NULL,'10:16:10',NULL,0),(1002,949,NULL,'10:15:49',NULL,0),(1003,950,'10:06:54','19:08:09',NULL,0),(1004,951,'10:22:08','19:12:46',NULL,0),(1005,952,'10:29:42','19:58:34',NULL,0),(1006,953,'10:47:56','19:41:52',NULL,0),(1007,954,'09:16:46','19:12:26',NULL,0),(1008,955,'09:20:55','19:10:02',NULL,0),(1009,956,'09:52:31','18:48:49',NULL,0),(1010,957,'10:13:45','10:22:06',NULL,0),(1011,958,'09:50:07','18:49:44',NULL,0),(1012,959,'10:19:13','19:16:01',NULL,0),(1013,960,'10:21:33','19:14:54',NULL,0),(1014,961,'10:22:07','07:08:56',NULL,0),(1015,962,'10:40:45','10:45:29',NULL,0),(1016,963,'09:52:40','18:56:11',NULL,0),(1017,964,'09:55:45','05:54:46',NULL,0),(1018,965,'10:18:13','19:21:10',NULL,0),(1019,966,'10:27:36','19:24:07',NULL,0),(1020,967,'10:46:59','10:36:18',NULL,0),(1021,968,'12:12:56','10:17:54',NULL,0),(1022,969,'09:51:21','09:50:46',NULL,0),(1023,970,'10:15:53','19:21:56',NULL,0),(1024,971,'10:17:56','20:19:35',NULL,0),(1025,972,'10:32:40','19:38:54',NULL,0),(1026,973,'10:36:18','10:57:14',NULL,0),(1027,974,'09:50:48','18:51:47',NULL,0),(1028,975,'09:56:44','06:47:56',NULL,0),(1029,976,'10:18:14','19:30:18',NULL,0),(1030,977,'10:38:37','07:44:38',NULL,0),(1031,976,'19:30:30','19:36:52',NULL,0),(1032,978,'09:15:51','19:04:32',NULL,0),(1033,979,'09:47:22','18:37:06',NULL,0),(1034,980,'09:52:30','06:38:06',NULL,0),(1035,981,'10:52:55','10:49:59',NULL,0),(1036,982,'10:56:21','19:52:03',NULL,0),(1037,980,'06:38:08','06:38:10',NULL,0),(1038,983,'09:05:02','16:54:36',NULL,0),(1039,984,'09:39:55','18:40:20',NULL,0),(1040,985,'10:18:08','19:45:41',NULL,0),(1041,986,'10:20:53','20:00:02',NULL,0),(1042,987,'10:50:01','10:14:45',NULL,0),(1043,988,'11:20:52','03:57:36',NULL,0),(1044,988,'15:58:27','16:35:06',NULL,0),(1045,989,'09:51:15','18:48:20',NULL,0),(1046,990,'10:01:22','18:55:02',NULL,0),(1047,991,'10:39:54','19:42:21',NULL,0),(1048,992,'11:31:04','20:10:38',NULL,0),(1049,993,'08:56:36','19:33:53',NULL,0),(1050,994,'09:51:42','18:50:40',NULL,0),(1051,995,'10:14:46','10:56:13',NULL,0),(1052,996,'10:52:06','09:37:29',NULL,0),(1053,997,'10:57:21',NULL,NULL,1),(1054,997,'10:57:21',NULL,NULL,1),(1055,998,'09:37:32','18:17:21',NULL,0),(1056,999,'09:38:45','09:47:34',NULL,0),(1057,1000,'10:27:22','20:11:48',NULL,0),(1058,1001,'09:08:10','19:36:06',NULL,0),(1059,1002,'09:26:57','19:43:21',NULL,0),(1060,1003,'09:47:37','18:41:00',NULL,0),(1061,1004,'09:49:57','17:37:23',NULL,0),(1062,1005,'10:56:15','10:44:25',NULL,0),(1063,1004,'17:37:36','17:41:16',NULL,0),(1064,1004,'05:41:49','17:57:39',NULL,0),(1065,1006,'09:34:02','18:47:14',NULL,0),(1066,1007,'10:14:39','19:34:31',NULL,0),(1067,1008,'10:18:17','10:32:10',NULL,0),(1068,1009,'10:44:28',NULL,NULL,1),(1069,1010,'10:06:06','12:07:32',NULL,0),(1070,1011,'09:49:02','18:43:46',NULL,0),(1071,1012,'10:23:19','19:48:48',NULL,0),(1072,1013,'10:32:11','10:31:09',NULL,0),(1073,1014,'11:16:14','07:04:23',NULL,0),(1074,1015,'09:52:59','09:37:52',NULL,0),(1075,1016,'09:59:19','10:07:15',NULL,0),(1076,1017,'10:25:38','11:10:23',NULL,0),(1077,1018,'09:37:55','18:31:38',NULL,0),(1078,1019,'10:07:16','10:07:25',NULL,0),(1079,1020,'11:10:26',NULL,NULL,1),(1080,1021,'09:47:35','06:44:49',NULL,0),(1081,1022,'10:07:23','10:01:32',NULL,0),(1082,1023,'09:54:12','18:47:36',NULL,0),(1083,1024,'10:01:30','10:09:05',NULL,0),(1084,1025,'09:50:34','06:43:49',NULL,0),(1085,1026,'10:09:08','18:43:10',NULL,0),(1086,1027,'09:49:06','06:53:38',NULL,0),(1087,1028,'09:52:19','18:53:18',NULL,0),(1088,1029,'10:31:13',NULL,NULL,1),(1089,1030,'09:49:17','06:41:39',NULL,0),(1090,1031,'09:52:16','18:44:05',NULL,0),(1091,1030,'18:41:43','18:41:47',NULL,0),(1092,1032,'09:51:21','18:45:53',NULL,0),(1093,1033,'09:52:38','09:50:39',NULL,0),(1094,1034,'09:49:13','18:47:32',NULL,0),(1095,1035,'09:50:35','09:53:13',NULL,0),(1096,1036,'09:52:42','06:46:29',NULL,0),(1097,1037,'09:53:15','09:53:42',NULL,0),(1098,1037,'09:53:32','18:46:24',NULL,0),(1099,1038,'09:48:05','10:06:27',NULL,0),(1100,1039,'10:06:29','18:40:37',NULL,0),(1101,1040,'09:52:03','18:38:48',NULL,0),(1102,1041,'09:39:36','18:18:53',NULL,0),(1103,1042,'09:30:51','09:25:06',NULL,0),(1104,1043,'09:31:51','18:25:12',NULL,0),(1105,1044,'09:25:10','03:08:37',NULL,0),(1106,1045,'09:32:35','09:22:28',NULL,0),(1107,1044,'15:08:48','09:24:45',NULL,0),(1108,1046,'09:24:45','09:20:46',NULL,0),(1109,1047,'09:20:51','09:33:49',NULL,0),(1110,1048,'09:22:31','18:18:05',NULL,0),(1111,1049,'09:42:31','06:51:59',NULL,0),(1112,1050,'09:33:42','09:28:39',NULL,0),(1113,1051,'09:34:28','18:29:59',NULL,0),(1114,1052,'09:28:40','18:25:49',NULL,0),(1115,1053,'18:25:18','09:34:15',NULL,0),(1116,1054,'09:32:41','18:29:53',NULL,0),(1117,1055,'09:34:18','18:29:48',NULL,0),(1118,1056,'09:29:57','07:23:00',NULL,0),(1119,1057,'09:30:06','09:43:39',NULL,0),(1120,1058,'09:43:42','16:19:37',NULL,0),(1121,1059,'09:47:59','06:51:16',NULL,0),(1122,1060,'09:41:54','09:46:58',NULL,0),(1123,1061,'09:43:06','09:54:55',NULL,0),(1124,1062,'09:47:01','09:49:52',NULL,0),(1125,1063,'09:54:56','09:44:59',NULL,0),(1126,1064,'09:45:02','18:43:50',NULL,0),(1127,1065,'09:49:51','10:13:48',NULL,0),(1128,1066,'09:45:24','18:40:17',NULL,0),(1129,1067,'10:13:50','18:24:10',NULL,0),(1130,1068,'09:46:11','18:48:38',NULL,0);
/*!40000 ALTER TABLE `tbl_clock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_clock_history`
--

DROP TABLE IF EXISTS `tbl_clock_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_clock_history` (
  `clock_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `clock_id` int(11) NOT NULL,
  `clockin_edit` time NOT NULL,
  `clockout_edit` time DEFAULT NULL,
  `reason` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=pending and 2 = accept  3= reject',
  `notify_me` tinyint(4) NOT NULL DEFAULT '1',
  `view_status` tinyint(4) NOT NULL DEFAULT '2',
  `request_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`clock_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_clock_history`
--

LOCK TABLES `tbl_clock_history` WRITE;
/*!40000 ALTER TABLE `tbl_clock_history` DISABLE KEYS */;
INSERT INTO `tbl_clock_history` VALUES (5,59,21,'10:42:00','16:00:00','',3,1,2,'2017-09-08 04:31:21'),(6,59,21,'10:42:00','16:00:00','',2,1,2,'2017-09-08 04:32:25'),(7,59,21,'10:42:00','16:00:00','Leave early due to fever',3,1,2,'2017-09-08 04:33:08'),(8,50,19,'10:39:00','19:30:00','SKIP CLOCK OUT',2,1,2,'2017-09-08 10:26:40'),(9,50,52,'10:13:00','20:37:00','',1,1,2,'2017-09-13 14:44:26'),(10,50,52,'10:13:00','20:37:00','error in am pm',2,1,2,'2017-09-13 14:44:59'),(11,50,241,'16:23:00','20:00:00','test',2,1,2,'2017-09-15 07:08:16'),(12,1,69,'09:41:00','08:00:00','',2,1,2,'2017-09-15 07:11:04'),(13,1,178,'17:57:00','10:53:00','',2,1,2,'2017-10-05 14:09:09');
/*!40000 ALTER TABLE `tbl_clock_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_config`
--

DROP TABLE IF EXISTS `tbl_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_config` (
  `config_key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`config_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_config`
--

LOCK TABLES `tbl_config` WRITE;
/*!40000 ALTER TABLE `tbl_config` DISABLE KEYS */;
INSERT INTO `tbl_config` VALUES ('2checkout_private_key','privatekey'),('2checkout_publishable_key','checkoutkey'),('2checkout_seller_id','seled id'),('2checkout_status','active'),('absent_color','rgba(247,23,36,0.92)'),('absent_on_calendar','on'),('accounting_snapshot','0'),('active_cronjob','on'),('advance_salary','true'),('advance_salary_email','1'),('allowed_files','gif|png|jpeg|jpg|pdf|doc|txt|docx|xls|zip|rar|xls|mp4'),('allow_client_project',''),('allow_client_registration','TRUE'),('announcements_email','1'),('aside-collapsed','0'),('aside-float','0'),('attendance_report','1'),('authorize','login id'),('authorize_status','active'),('authorize_transaction_key','transfer key'),('automatic_database_backup','on'),('automatic_email_on_recur','TRUE'),('auto_close_ticket','200'),('award_email','1'),('bank_cash','0'),('bitcoin_address',''),('bitcoin_status','active'),('braintree_default_account','Braintree Defual allcount'),('braintree_live_or_sandbox','Braintree Live or Sandbox'),('braintree_merchant_id','Braintree Merchant ID'),('braintree_private_key','Braintree Private Key'),('braintree_public_key','Braintree Defual allcount'),('braintree_status','active'),('bugs_color','#1f3d1c'),('bugs_on_calendar','on'),('build','0'),('ccavenue_key','CCAvenue Working Key'),('ccavenue_merchant_id','CCAvenue Merchant ID'),('ccavenue_status','active'),('company_address','403, Gold Stone Building, 3/5 New Palasia, Near 56 Shops, Indore, Madhya Pradesh 452001'),('company_city','indore'),('company_country','India'),('company_domain','www.consagous.com'),('company_email','devendra.sharma@cosnagous.com'),('company_legal_name','Consagous Technologies Pvt Ltd'),('company_logo','uploads/230524_1-2011-01-06-05-01-11_(1).jpg'),('company_name','Consagous Technologies Pvt Ltd'),('company_phone','90095 55503'),('company_phone_2',''),('company_vat',''),('company_zip_code',''),('config_additional_flag','0'),('config_host','0'),('config_imap','0'),('config_imap_or_pop','0'),('config_mailbox','0'),('config_password','0'),('config_pop3','0'),('config_port','0'),('config_ssl','0'),('config_username','0'),('contact_person','Mukesh Singh'),('contract_expiration_reminder',''),('country','0'),('cron_key','34WI2L12L87I1A65M90M9A42N41D08A26I'),('currency_position','1'),('date_format','%m-%d-%Y'),('date_php_format','m-d-Y'),('date_picker_format','mm-dd-yyyy'),('decimal_separator',''),('default_account',''),('default_currency','USD'),('default_currency_symbol','$'),('default_department','0'),('default_language','english'),('default_leads_source','0'),('default_lead_permission','all'),('default_lead_status','0'),('default_priority','low'),('default_status','closed'),('default_tax','0'),('default_terms','Thank you for <span style=\"font-weight: bold;\">your</span> busasiness. Please process this invoice within the due date.'),('delete_mail_after_import','0'),('demo_mode','FALSE'),('developer','ig63Yd/+yuA8127gEyTz9TY4pnoeKq8dtocVP44+BJvtlRp8Vqcetwjk51dhSB6Rx8aVIKOPfUmNyKGWK7C/gg=='),('display_estimate_badge','0'),('display_invoice_badge','FALSE'),('email_account_details','TRUE'),('email_estimate_message','Hi {CLIENT}<br>Thanks for your business inquiry. <br>The estimate EST {REF} is attached with this email. <br>Estimate Overview:<br>Estimate # : EST {REF}<br>Amount: {CURRENCY} {AMOUNT}<br> You can view the estimate online at:<br>{LINK}<br>Best Regards,<br>{COMPANY}'),('email_invoice_message','Hello {CLIENT}<br>Here is the invoice of {CURRENCY} {AMOUNT}<br>You can view the invoice online at:<br>{LINK}<br>Best Regards,<br>{COMPANY}'),('email_staff_tickets','TRUE'),('enable_languages','TRUE'),('estimate_color','rgba(160,29,171,1)'),('estimate_footer','<span style=\"font-weight: bold; line-height: 21.4px; text-align: right;\">Estimate&nbsp;</span>was created on a computer and is valid without the signature and seal'),('estimate_language','en'),('estimate_on_calendar','on'),('estimate_prefix','EST'),('estimate_start_no','1'),('estimate_terms','Hey Looking forward to doing business with you.'),('expense_email','1'),('file_max_size','80000'),('for_invoice','0'),('for_leads','0'),('for_tickets','0'),('gcal_api_key','AIzaSyBXcmmcboEyAgtoUtXjKXe4TfpsnEtoUDQ'),('gcal_id','kla83orf1u7hrj6p0u5gdmpji4@group.calendar.google.com'),('goal_tracking_color','#537015'),('goal_tracking_on_calendar','on'),('holiday_on_calendar','on'),('imap_search','0'),('imap_search_for_leads','0'),('imap_search_for_tickets','0'),('increment_estimate_number','TRUE'),('increment_invoice_number','TRUE'),('installed','TRUE'),('invoices_due_after','5'),('invoice_color','#53b567'),('invoice_footer','Invoice was created on a computer and is valid without the signature and seal'),('invoice_language','en'),('invoice_logo','uploads/logo.png'),('invoice_on_calendar','on'),('invoice_prefix','INV'),('invoice_start_no','1'),('job_circular_email','1'),('language','english'),('languages','spanish'),('last_autobackup','1469404563'),('last_check','1436363002'),('last_cronjob_run','1469404562'),('last_postmaster_run','1461786636'),('last_seen_activities','0'),('layout-boxed','0'),('layout-fixed','0'),('leads_keyword','0'),('leave_email','1'),('locale','aa_DJ'),('login_bg','bg-login.jpg'),('logofile','0'),('logo_or_icon','logo_title'),('milestone_color','#a86495'),('milestone_on_calendar','on'),('money_format','1'),('notified_user','false'),('notify_bug_assignment','TRUE'),('notify_bug_comments','TRUE'),('notify_bug_status','TRUE'),('notify_message_received','TRUE'),('notify_project_assignments','TRUE'),('notify_project_comments','TRUE'),('notify_project_files','TRUE'),('notify_task_assignments','TRUE'),('office_time','same_time'),('on_leave_color','#e6dd11'),('on_leave_on_calendar','on'),('opportunities_color','#349685'),('opportunities_on_calendar','on'),('overtime_email','1'),('payments_color','#7f21c9'),('payments_on_calendar','on'),('paypal_cancel_url','paypal/cancel'),('paypal_email','billing@coderitems.com'),('paypal_ipn_url','paypal/t_ipn/ipn'),('paypal_live','TRUE'),('paypal_status','active'),('paypal_success_url','paypal/success'),('payslip_email','1'),('pdf_engine','invoicr'),('performance_email','1'),('postmark_api_key',''),('postmark_from_address',''),('project_color','#e61755'),('project_on_calendar','on'),('project_prefix','PRO'),('protocol','smtp'),('purchase_code',''),('recurring_invoice','0'),('reminder_message','Hello {CLIENT}<br>This is a friendly reminder to pay your invoice of {CURRENCY} {AMOUNT}<br>You can view the invoice online at:<br>{LINK}<br>Best Regards,<br>{COMPANY}'),('reset_key','34WI2L12L87I1A65M90M9A42N41D08A26I'),('rows_per_table','25'),('security_token','5027133599'),('send_email_when_recur','TRUE'),('settings','theme'),('show_estimate_tax','FALSE'),('show_invoice_tax','TRUE'),('show_item_tax','0'),('show_login_image','TRUE'),('show_only_logo','FALSE'),('sidebar_theme','bg-green-dark'),('site_appleicon','logo.png'),('site_author','William M.'),('site_desc','Freelancer Office is a Web based PHP application for Freelancers - buy it on Codecanyon'),('site_favicon','logo.png'),('site_icon','fa-flask'),('smtp_encryption',''),('smtp_host','smtp.gmail.com'),('smtp_pass','DEVU007619##'),('smtp_port','587'),('smtp_user','devendra.sharma@cosnagous.com'),('stripe_private_key','sk_test_g7PUZTcwwFnxdlHrWSOicHfu'),('stripe_public_key','pk_test_x9as1c9jBDpODI7IbC7D0MEB'),('stripe_status','deactive'),('system_font','roboto_condensed'),('tasks_color','#0239c7'),('tasks_on_calendar','on'),('thousand_separator',','),('tickets_keyword','0'),('timezone','Asia/Kolkata'),('training_email','1'),('use_gravatar','TRUE'),('use_postmark','FALSE'),('valid_license','TRUE'),('webmaster_email','support@example.com'),('website_name','Ultimate Project Manager COGO+');
/*!40000 ALTER TABLE `tbl_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_countries`
--

DROP TABLE IF EXISTS `tbl_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_countries` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `value` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_countries`
--

LOCK TABLES `tbl_countries` WRITE;
/*!40000 ALTER TABLE `tbl_countries` DISABLE KEYS */;
INSERT INTO `tbl_countries` VALUES (1,'Afghanistan'),(2,'Aringland Islands'),(3,'Albania'),(4,'Algeria'),(5,'American Samoa'),(6,'Andorra'),(7,'Angola'),(8,'Anguilla'),(9,'Antarctica'),(10,'Antigua and Barbuda'),(11,'Argentina'),(12,'Armenia'),(13,'Aruba'),(14,'Australia'),(15,'Austria'),(16,'Azerbaijan'),(17,'Bahamas'),(18,'Bahrain'),(19,'Bangladesh'),(20,'Barbados'),(21,'Belarus'),(22,'Belgium'),(23,'Belize'),(24,'Benin'),(25,'Bermuda'),(26,'Bhutan'),(27,'Bolivia'),(28,'Bosnia and Herzegovina'),(29,'Botswana'),(30,'Bouvet Island'),(31,'Brazil'),(32,'British Indian Ocean territory'),(33,'Brunei Darussalam'),(34,'Bulgaria'),(35,'Burkina Faso'),(36,'Burundi'),(37,'Cambodia'),(38,'Cameroon'),(39,'Canada'),(40,'Cape Verde'),(41,'Cayman Islands'),(42,'Central African Republic'),(43,'Chad'),(44,'Chile'),(45,'China'),(46,'Christmas Island'),(47,'Cocos (Keeling) Islands'),(48,'Colombia'),(49,'Comoros'),(50,'Congo'),(51,'Congo'),(52,' Democratic Republic'),(53,'Cook Islands'),(54,'Costa Rica'),(55,'Ivory Coast (Ivory Coast)'),(56,'Croatia (Hrvatska)'),(57,'Cuba'),(58,'Cyprus'),(59,'Czech Republic'),(60,'Denmark'),(61,'Djibouti'),(62,'Dominica'),(63,'Dominican Republic'),(64,'East Timor'),(65,'Ecuador'),(66,'Egypt'),(67,'El Salvador'),(68,'Equatorial Guinea'),(69,'Eritrea'),(70,'Estonia'),(71,'Ethiopia'),(72,'Falkland Islands'),(73,'Faroe Islands'),(74,'Fiji'),(75,'Finland'),(76,'France'),(77,'French Guiana'),(78,'French Polynesia'),(79,'French Southern Territories'),(80,'Gabon'),(81,'Gambia'),(82,'Georgia'),(83,'Germany'),(84,'Ghana'),(85,'Gibraltar'),(86,'Greece'),(87,'Greenland'),(88,'Grenada'),(89,'Guadeloupe'),(90,'Guam'),(91,'Guatemala'),(92,'Guinea'),(93,'Guinea-Bissau'),(94,'Guyana'),(95,'Haiti'),(96,'Heard and McDonald Islands'),(97,'Honduras'),(98,'Hong Kong'),(99,'Hungary'),(100,'Iceland'),(101,'India'),(102,'Indonesia'),(103,'Iran'),(104,'Iraq'),(105,'Ireland'),(106,'Israel'),(107,'Italy'),(108,'Jamaica'),(109,'Japan'),(110,'Jordan'),(111,'Kazakhstan'),(112,'Kenya'),(113,'Kiribati'),(114,'Korea (north)'),(115,'Korea (south)'),(116,'Kuwait'),(117,'Kyrgyzstan'),(118,'Lao People\'s Democratic Republic'),(119,'Latvia'),(120,'Lebanon'),(121,'Lesotho'),(122,'Liberia'),(123,'Libyan Arab Jamahiriya'),(124,'Liechtenstein'),(125,'Lithuania'),(126,'Luxembourg'),(127,'Macao'),(128,'Macedonia'),(129,'Madagascar'),(130,'Malawi'),(131,'Malaysia'),(132,'Maldives'),(133,'Mali'),(134,'Malta'),(135,'Marshall Islands'),(136,'Martinique'),(137,'Mauritania'),(138,'Mauritius'),(139,'Mayotte'),(140,'Mexico'),(141,'Micronesia'),(142,'Moldova'),(143,'Monaco'),(144,'Mongolia'),(145,'Montserrat'),(146,'Morocco'),(147,'Mozambique'),(148,'Myanmar'),(149,'Namibia'),(150,'Nauru'),(151,'Nepal'),(152,'Netherlands'),(153,'Netherlands Antilles'),(154,'New Caledonia'),(155,'New Zealand'),(156,'Nicaragua'),(157,'Niger'),(158,'Nigeria'),(159,'Niue'),(160,'Norfolk Island'),(161,'Northern Mariana Islands'),(162,'Norway'),(163,'Oman'),(164,'Pakistan'),(165,'Palau'),(166,'Palestinian Territories'),(167,'Panama'),(168,'Papua New Guinea'),(169,'Paraguay'),(170,'Peru'),(171,'Philippines'),(172,'Pitcairn'),(173,'Poland'),(174,'Portugal'),(175,'Puerto Rico'),(176,'Qatar'),(177,'Runion'),(178,'Romania'),(179,'Russian Federation'),(180,'Rwanda'),(181,'Saint Helena'),(182,'Saint Kitts and Nevis'),(183,'Saint Lucia'),(184,'Saint Pierre and Miquelon'),(185,'Saint Vincent and the Grenadines'),(186,'Samoa'),(187,'San Marino'),(188,'Sao Tome and Principe'),(189,'Saudi Arabia'),(190,'Senegal'),(191,'Serbia and Montenegro'),(192,'Seychelles'),(193,'Sierra Leone'),(194,'Singapore'),(195,'Slovakia'),(196,'Slovenia'),(197,'Solomon Islands'),(198,'Somalia'),(199,'South Africa'),(200,'South Georgia and the South Sandwich Islands'),(201,'Spain'),(202,'Sri Lanka'),(203,'Sudan'),(204,'Suriname'),(205,'Svalbard and Jan Mayen Islands'),(206,'Swaziland'),(207,'Sweden'),(208,'Switzerland'),(209,'Syria'),(210,'Taiwan'),(211,'Tajikistan'),(212,'Tanzania'),(213,'Thailand'),(214,'Togo'),(215,'Tokelau'),(216,'Tonga'),(217,'Trinidad and Tobago'),(218,'Tunisia'),(219,'Turkey'),(220,'Turkmenistan'),(221,'Turks and Caicos Islands'),(222,'Tuvalu'),(223,'Uganda'),(224,'Ukraine'),(225,'United Arab Emirates'),(226,'United Kingdom'),(227,'United States of America'),(228,'Uruguay'),(229,'Uzbekistan'),(230,'Vanuatu'),(231,'Vatican City'),(232,'Venezuela'),(233,'Vietnam'),(234,'Virgin Islands (British)'),(235,'Virgin Islands (US)'),(236,'Wallis and Futuna Islands'),(237,'Western Sahara'),(238,'Yemen'),(239,'Zaire'),(240,'Zambia'),(241,'Zimbabwe');
/*!40000 ALTER TABLE `tbl_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_currencies`
--

DROP TABLE IF EXISTS `tbl_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_currencies` (
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xrate` decimal(12,5) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_currencies`
--

LOCK TABLES `tbl_currencies` WRITE;
/*!40000 ALTER TABLE `tbl_currencies` DISABLE KEYS */;
INSERT INTO `tbl_currencies` VALUES ('AUD','Australian Dollar','$',NULL),('BAN','Bangladesh','BDT',NULL),('BRL','Brazilian Real','R$',NULL),('CAD','Canadian Dollar','$',NULL),('CHF','Swiss Franc','Fr',NULL),('CLP','Chilean Peso','$',NULL),('CNY','Chinese Yuan','?',NULL),('CZK','Czech Koruna','K??',NULL),('DKK','Danish Krone','kr',NULL),('EUR','Euro','?',NULL),('GBP','British Pound','?',NULL),('HKD','Hong Kong Dollar','$',NULL),('HUF','Hungarian Forint','Ft',NULL),('IDR','Indonesian Rupiah','Rp',NULL),('ILS','Israeli New Shekel','?',NULL),('INR','Indian Rupee','INR',NULL),('JPY','Japanese Yen','?',NULL),('KRW','Korean Won','?',NULL),('MXN','Mexican Peso','$',NULL),('MYR','Malaysian Ringgit','RM',NULL),('NOK','Norwegian Krone','kr',NULL),('NZD','New Zealand Dollar','$',NULL),('PHP','Philippine Peso','?',NULL),('PKR','Pakistan Rupee','?',NULL),('PLN','Polish Zloty','zl',NULL),('RUB','Russian Ruble','?',NULL),('SEK','Swedish Krona','kr',NULL),('SGD','Singapore Dollar','$',NULL),('THB','Thai Baht','?',NULL),('TRY','Turkish Lira','?',NULL),('TWD','Taiwan Dollar','$',NULL),('USD','US Dollar','$',1.00000),('VEF','Bol?var Fuerte','Bs.',NULL),('ZAR','South African Rand','R',NULL);
/*!40000 ALTER TABLE `tbl_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_custom_field`
--

DROP TABLE IF EXISTS `tbl_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) DEFAULT NULL,
  `field_label` varchar(100) NOT NULL,
  `default_value` text,
  `help_text` varchar(200) NOT NULL,
  `field_type` enum('text','textarea','dropdown','date','checkbox','numeric','url') NOT NULL,
  `required` varchar(5) NOT NULL DEFAULT 'false',
  `status` enum('active','deactive') NOT NULL DEFAULT 'deactive',
  `show_on_details` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_custom_field`
--

LOCK TABLES `tbl_custom_field` WRITE;
/*!40000 ALTER TABLE `tbl_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_days`
--

DROP TABLE IF EXISTS `tbl_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_days` (
  `day_id` int(5) NOT NULL AUTO_INCREMENT,
  `day` varchar(100) NOT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_days`
--

LOCK TABLES `tbl_days` WRITE;
/*!40000 ALTER TABLE `tbl_days` DISABLE KEYS */;
INSERT INTO `tbl_days` VALUES (1,'Saturday'),(2,'Sunday'),(3,'Monday'),(4,'Tuesday'),(5,'Wednesday'),(6,'Thursday'),(7,'Friday');
/*!40000 ALTER TABLE `tbl_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_departments`
--

DROP TABLE IF EXISTS `tbl_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_departments` (
  `departments_id` int(10) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_head_id` int(11) DEFAULT NULL COMMENT 'department_head_id == user_id',
  PRIMARY KEY (`departments_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_departments`
--

LOCK TABLES `tbl_departments` WRITE;
/*!40000 ALTER TABLE `tbl_departments` DISABLE KEYS */;
INSERT INTO `tbl_departments` VALUES (25,'QA',NULL),(24,'SEO',NULL),(23,'Digital Marketing',56),(22,'Mobile Development',NULL),(21,'Sales',52),(20,'Human Resources',51),(19,'Web Development',53),(18,'UI / UX',55),(17,'Project Management',49),(16,'Top Management',54);
/*!40000 ALTER TABLE `tbl_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_designations`
--

DROP TABLE IF EXISTS `tbl_designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_designations` (
  `designations_id` int(5) NOT NULL AUTO_INCREMENT,
  `departments_id` int(11) NOT NULL,
  `designations` varchar(100) NOT NULL,
  `permission` text,
  PRIMARY KEY (`designations_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_designations`
--

LOCK TABLES `tbl_designations` WRITE;
/*!40000 ALTER TABLE `tbl_designations` DISABLE KEYS */;
INSERT INTO `tbl_designations` VALUES (32,16,'Managing Director',NULL),(33,16,'CEO',NULL),(34,17,'Project Manager',NULL),(35,18,'Design Head / UX Lead',NULL),(36,18,'Designer',NULL),(37,19,'Tech-lead',NULL),(38,17,'Business Analyst',NULL),(39,21,'Sales Head',NULL),(40,21,'BDM',NULL),(41,21,'Sr. BDE',NULL),(42,21,'BDE',NULL),(43,21,'Data Mining Exec.',NULL),(44,21,'Jr. Business Developer',NULL),(45,19,'PHP Team Lead',NULL),(46,19,'Sr. Developer',NULL),(47,19,'Developer',NULL),(48,19,'Jr. Developer',NULL),(49,22,'Director- Mobile App Development',NULL),(50,22,'Sr. IOS Developer',NULL),(51,22,'IOS Developer',NULL),(52,22,'Sr. Android Developer',NULL),(53,22,'Jr. Android Developer',NULL),(54,23,'Manager',NULL),(55,23,'Expert',NULL),(56,23,'Executive',NULL),(57,24,'SEO',NULL),(58,24,'Content Writer',NULL),(59,18,'UI / UX Developer',NULL),(60,18,'Sr. Web Designer',NULL),(61,18,'Web Designer',NULL),(62,20,'HR Generalist',NULL),(63,20,'Jr. Accounts Co-ordinator',NULL),(64,25,'QA',NULL);
/*!40000 ALTER TABLE `tbl_designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_discipline`
--

DROP TABLE IF EXISTS `tbl_discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_discipline` (
  `discipline_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `offence_id` int(5) NOT NULL,
  `penalty_id` int(5) NOT NULL,
  `discipline_break_date` varchar(100) NOT NULL,
  `discipline_action_date` varchar(100) NOT NULL,
  `discipline_remarks` varchar(200) NOT NULL,
  `discipline_comments` varchar(200) NOT NULL,
  PRIMARY KEY (`discipline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_discipline`
--

LOCK TABLES `tbl_discipline` WRITE;
/*!40000 ALTER TABLE `tbl_discipline` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_draft`
--

DROP TABLE IF EXISTS `tbl_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_draft` (
  `draft_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `to` text NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message_body` text NOT NULL,
  `attach_file` varchar(200) DEFAULT NULL,
  `attach_file_path` text,
  `attach_filename` text,
  `message_time` datetime NOT NULL,
  `deleted` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`draft_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_draft`
--

LOCK TABLES `tbl_draft` WRITE;
/*!40000 ALTER TABLE `tbl_draft` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_email_templates`
--

DROP TABLE IF EXISTS `tbl_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_email_templates` (
  `email_templates_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_group` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_body` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`email_templates_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_email_templates`
--

LOCK TABLES `tbl_email_templates` WRITE;
/*!40000 ALTER TABLE `tbl_email_templates` DISABLE KEYS */;
INSERT INTO `tbl_email_templates` VALUES (1,'registration','Welcome to COGO+','<p>Welcome to {SITE_NAME}</p>\r\n\r\n<p>Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe.<br />\r\nTo open your {SITE_NAME} homepage, please follow this link:<br />\r\n<big><strong><a href=\"{SITE_URL}\">{SITE_NAME} Account!</a></strong></big><br />\r\nLink doesn&#39;t work? Copy the following link to your browser address bar:<br />\r\n<a href=\"{SITE_URL}\">{SITE_URL}</a><br />\r\nYour username: {USERNAME}<br />\r\nYour email address: {EMAIL}<br />\r\nYour password: {PASSWORD}<br />\r\nHave fun!<br />\r\nThe {SITE_NAME} Team.<br />\r\n&nbsp;</p>\r\n'),(2,'forgot_password','Forgot Password','        <div style=\"height: 7px; background-color: #535353;\"></div><div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">New Password</div><div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">Forgot your password, huh? No big deal.<br>To create a new password, just follow this link:<br><br><big><b><a href=\"{PASS_KEY_URL}\">Create a new password</a></b></big><br>Link doesn\'t work? Copy the following link to your browser address bar:<br><a href=\"{PASS_KEY_URL}\">{PASS_KEY_URL}</a><br><br><br>You received this email, because it was requested by a <a href=\"{SITE_URL}\">{SITE_NAME}</a> user. <p></p><p>This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.</p><br>Thank you,<br>The {SITE_NAME} Team</div></div>'),(3,'change_email','Change Email','<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">New email address on {SITE_NAME}</div>\r\n\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">You have changed your email address for {SITE_NAME}.<br>Follow this link to confirm your new email address:<br><big><b><a href=\"{NEW_EMAIL_KEY_URL}\">Confirm your new email</a></b></big><br>Link doesn\'t work? Copy the following link to your browser address bar:<br><a href=\"{NEW_EMAIL_KEY_URL}\">{NEW_EMAIL_KEY_URL}</a><br><br>Your email address: {NEW_EMAIL}<br><br>You received this email, because it was requested by a <a href=\"{SITE_URL}\">{SITE_NAME}</a> user. If you have received this by mistake, please DO NOT click the confirmation link, and simply delete this email. After a short time, the request will be removed from the system.<br>Thank you,<br>The {SITE_NAME} Team</div>\r\n\r\n</div>'),(4,'activate_account','Activate COGO+ Account','<p>Welcome to {SITE_NAME}!</p>\r\n\r\n<p>Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe.</p>\r\n\r\n<p>To verify your email address, please follow this link:<br />\r\n<big><strong><a href=\"{ACTIVATE_URL}\">Finish your registration...</a></strong></big><br />\r\nLink doesn&#39;t work? Copy the following link to your browser address bar:<br />\r\n<a href=\"{ACTIVATE_URL}\">{ACTIVATE_URL}</a></p>\r\n\r\n<p><br />\r\n<br />\r\nPlease verify your email within {ACTIVATION_PERIOD} hours, otherwise your registration will become invalid and you will have to register again.<br />\r\n<br />\r\n<br />\r\nYour username: {USERNAME}<br />\r\nYour email address: {EMAIL}<br />\r\nYour password: {PASSWORD}<br />\r\n<br />\r\nHave fun!<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(5,'reset_password','Reset Password','<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">New password on {SITE_NAME}</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>You have changed your password.<br>Please, keep it in your records so you don\'t forget it.<br></p>\r\nYour username: {USERNAME}<br>Your email address: {EMAIL}<br>Your new password: {NEW_PASSWORD}<br><br>Thank you,<br>The {SITE_NAME} Team</div>\r\n</div>'),(6,'bug_assigned','New Bug Assigned','<p>Hi there,</p>\r\n\r\n<p>A new bug &nbsp;{BUG_TITLE} &nbsp;has been assigned to you by {ASSIGNED_BY}.</p>\r\n\r\n<p>You can view this bug by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{BUG_URL}\">View Bug</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(7,'bug_updated','Bug status changed','<p>Hi there,</p>\r\n\r\n<p>Bug {BUG_TITLE} has been marked as {STATUS} by {MARKED_BY}.</p>\r\n\r\n<p>You can view this bug by logging in to the portal using the link below.</p>\r\n\r\n<p><big><strong><a href=\"{BUG_URL}\">View Bug</a></strong></big><br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),(8,'bug_comments','New Bug Comment Received','<p>Hi there,</p>\r\n\r\n<p>A new comment has been posted by {POSTED_BY} to bug {BUG_TITLE}.</p>\r\n\r\n<p>You can view the comment using the link below.</p>\r\n\r\n<p><em>{COMMENT_MESSAGE}</em></p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{COMMENT_URL}\">View Comment</a></strong></big><br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),(9,'bug_attachment','New bug attachment','<p>Hi there,</p>\r\n\r\n<p>A new attachment&nbsp;has been uploaded by {UPLOADED_BY} to issue {BUG_TITLE}.</p>\r\n\r\n<p>You can view the bug using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{BUG_URL}\">View Bug</a></strong></big></p>\r\n\r\n<p><br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(10,'bug_reported','New bug Reported','<p>Hi there,</p>\r\n\r\n<p>A new bug ({BUG_TITLE}) has been reported by {ADDED_BY}.</p>\r\n\r\n<p>You can view the Bug using the Dashboard Page.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{BUG_URL}\">View Bug</a></strong></big></p>\r\n\r\n<p><br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(13,'refund_confirmation','Refund Confirmation','<p>Refund Confirmation</p>\r\n\r\n<p>Hello {CLIENT}</p>\r\n\r\n<p>This is confirmation that a refund has been processed for Invoice&nbsp; of {CURRENCY} {AMOUNT}&nbsp;sent on {INVOICE_DATE}.<br />\r\nYou can view the invoice online at:<br />\r\n<big><strong><a href=\"{INVOICE_LINK}\">View Invoice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(14,'payment_confirmation','Payment Confirmation','<p>Payment Confirmation</p>\r\n\r\n<p>Hello {CLIENT}</p>\r\n\r\n<p>This is a payment receipt for your invoice of {CURRENCY} {AMOUNT}&nbsp;sent on {INVOICE_DATE}.<br />\r\nYou can view the invoice online at:<br />\r\n<big><strong><a href=\"{INVOICE_LINK}\">View Invoice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(15,'payment_email','Payment Received','<div style=\"height: 7px; background-color: #535353;\"></div>\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Payment Received</div>\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>Dear Customer</p>\n<p>We have received your payment of {INVOICE_CURRENCY} {PAID_AMOUNT}. </p>\n<p>Thank you for your Payment and business. We look forward to working with you again.</p>\n--------------------------<br>Regards<br>The {SITE_NAME} Team</div>\n</div>'),(16,'invoice_overdue_email','Invoice Overdue Notice','<p>Invoice Overdue</p>\r\n\r\n<p>INVOICE {REF}</p>\r\n\r\n<p><strong>Hello {CLIENT}</strong></p>\r\n\r\n<p>This is the notice that your invoice overdue.&nbsp;The invoice {CURRENCY} {AMOUNT}. and Due Date: {DUE_DATE}</p>\r\n\r\n<p>You can view the invoice online at:<br />\r\n<big><strong><a href=\"{INVOICE_LINK}\">View Invoice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),(17,'invoice_message','New Invoice','<div style=\"height: 7px; background-color: #535353;\"></div><div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">INVOICE {REF}</div><div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><span class=\"style1\"><span style=\"font-weight:bold;\">Hello {CLIENT}</span></span><br><br>Here is the invoice of {CURRENCY} {AMOUNT}.<br><br>You can view the invoice online at:<br><big><b><a href=\"{INVOICE_LINK}\">View Invoice</a></b></big><br><br>Best Regards<br><br>The {SITE_NAME} Team</div></div>'),(18,'invoice_reminder','Invoice Reminder','<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Invoice Reminder</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>Hello {CLIENT}</p>\r\n<br><p>This is a friendly reminder to pay your invoice of {CURRENCY} {AMOUNT}<br>You can view the invoice online at:<br><big><b><a href=\"{INVOICE_LINK}\">View Invoice</a></b></big><br><br>Best Regards,<br>The {SITE_NAME} Team</p>\r\n</div>\r\n</div>'),(19,'message_received','Message Received','<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Message Received</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>Hi {RECIPIENT},</p>\r\n<p>You have received a message from {SENDER}. </p>\r\n------------------------------------------------------------------<br><blockquote>\r\n{MESSAGE}</blockquote>\r\n<big><b><a href=\"{SITE_URL}\">Go to Account</a></b></big><br><br>Regards<br>The {SITE_NAME} Team</div>\r\n</div>'),(20,'estimate_email','New Estimate','<p>Estimate {ESTIMATE_REF}</p>\r\n\r\n<p>Hi {CLIENT}</p>\r\n\r\n<p>Thanks for your business inquiry.</p>\r\n\r\n<p>The estimate {ESTIMATE_REF} is attached with this email.<br />\r\nEstimate Overview:<br />\r\nEstimate # : {ESTIMATE_REF}<br />\r\nAmount: {CURRENCY} {AMOUNT}<br />\r\n<br />\r\nYou can view the estimate online at:<br />\r\n<big><strong><a href=\"{ESTIMATE_LINK}\">View Estimate</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(21,'ticket_staff_email','New Ticket [TICKET_CODE]','<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">New Ticket</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>Ticket #{TICKET_CODE} has been created by the client.</p>\r\n<p>You may view the ticket by clicking on the following link <br><br>  Client Email : {REPORTER_EMAIL}<br><br> <big><b><a href=\"{TICKET_LINK}\">View Ticket</a></b></big> <br><br>Regards<br><br>{SITE_NAME}</p>\r\n</div>\r\n</div>'),(22,'ticket_client_email','Ticket [TICKET_CODE] Opened','<p>Ticket Opened</p>\r\n\r\n<p>Hello {CLIENT_EMAIL},</p>\r\n\r\n<p>Your ticket has been opened with us.<br />\r\n<br />\r\nTicket # {TICKET_CODE}<br />\r\nStatus : Open<br />\r\n<br />\r\nClick on the below link to see the ticket details and post additional comments.<br />\r\n<br />\r\n<big><strong><a href=\"{TICKET_LINK}\">View Ticket</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(23,'ticket_reply_email','Ticket [TICKET_CODE] Response','<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Ticket Response</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>A new response has been added to Ticket #{TICKET_CODE}<br><br> Ticket : #{TICKET_CODE} <br>Status : {TICKET_STATUS} <br><br></p>\r\nTo see the response and post additional comments, click on the link below.<br><br>         <big><b><a href=\"{TICKET_LINK}\">View Reply</a> </b></big><br><br>          Note: Do not reply to this email as this email is not monitored.<br><br>     Regards<br>The {SITE_NAME} Team<br></div>\r\n</div>'),(24,'ticket_closed_email','Ticket [TICKET_CODE] Closed','<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Ticket Closed</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\">Hi {REPORTER_EMAIL}<br><br>Ticket #{TICKET_CODE} has been closed by {STAFF_USERNAME} <br><br>          Ticket : #{TICKET_CODE} <br>     Status : {TICKET_STATUS}<br><br>Replies : {NO_OF_REPLIES}<br><br>          To see the responses or open the ticket, click on the link below.<br><br>          <big><b><a href=\"{TICKET_LINK}\">View Ticket</a></b></big> <br><br>          Note: Do not reply to this email as this email is not monitored.<br><br>    Regards<br>The {SITE_NAME} Team</div>\r\n</div>'),(26,'task_updated','Task updated','<div style=\"height: 7px; background-color: #535353;\"></div>\r\n<div style=\"background-color:#E8E8E8; margin:0px; padding:55px 20px 40px 20px; font-family:Open Sans, Helvetica, sans-serif; font-size:12px; color:#535353;\"><div style=\"text-align:center; font-size:24px; font-weight:bold; color:#535353;\">Task updated</div>\r\n<div style=\"border-radius: 5px 5px 5px 5px; padding:20px; margin-top:45px; background-color:#FFFFFF; font-family:Open Sans, Helvetica, sans-serif; font-size:13px;\"><p>Hi there,</p>\r\n<p>{TASK_NAME} in {PROJECT_TITLE} has been updated by {ASSIGNED_BY}.</p>\r\n<p>You can view this project by logging in to the portal using the link below.</p>\r\n-----------------------------------<br><big><b><a href=\"{PROJECT_URL}\">View Project</a></b></big><br><br>Regards<br>The {SITE_NAME} Team</div>\r\n</div>'),(27,'quotations_form','Your Quotation Request','<p>QUOTATION</p>\r\n\r\n<p><strong>Hello {CLIENT}</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>Thank you for you for filling in our Quotation Request Form.<br />\r\n<br />\r\nPlease find below are our quotation:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellpadding=\"8\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Quotation Date</td>\r\n			<td><strong>{DATE}</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Our Quotation</td>\r\n			<td><strong>{CURRENCY} {AMOUNT}</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Addtitional Comments</td>\r\n			<td><strong>{NOTES}</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\nYou can view the estimate online at:<br />\r\n<big><strong><a href=\"{QUOTATION LINK}\">View Quotation</a></strong></big></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nThank you and we look forward to working with you.<br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),(28,'client_notification','New project created','<p>Hello, <strong>{CLIENT_NAME}</strong>,<br />\r\nwe have created a new project with your account.<br />\r\n<br />\r\nProject name : <strong>{PROJECT_NAME}</strong><br />\r\nYou can login to see the status of your project by using this link:<br />\r\n<big><a href=\"{PROJECT_LINK}\"><strong>View Project</strong></a></big></p>\r\n\r\n<p><br />\r\nBest Regards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),(29,'assigned_project','Assigned Project','<p>Hi There,</p>\r\n\r\n<p>A<strong> {PROJECT_NAME}</strong> has been assigned by <strong>{ASSIGNED_BY} </strong>to you.You can view this project by logging in to the portal using the link below:<br />\r\n<big><a href=\"{PROJECT_URL}\"><strong>View Project</strong></a></big><br />\r\n<br />\r\nBest Regards<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n'),(30,'complete_projects','Project Completed','<p>Hi <strong>{CLIENT_NAME}</strong>,</p>\r\n\r\n<p>Project : <strong>{PROJECT_NAME}</strong> &nbsp;has been completed.<br />\r\nYou can view the project by logging into your portal Account:<br />\r\n<big><a href=\"{PROJECT_LINK}\"><strong>View Project</strong></a></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(31,'project_comments','New Project Comment Received','<p>Hi There,</p>\r\n\r\n<p>A new comment has been posted by <strong>{POSTED_BY}</strong> to project <strong>{PROJECT_NAME}</strong>.</p>\r\n\r\n<p>You can view the comment using the link below:<br />\r\n<big><a href=\"{COMMENT_URL}\"><strong>View Project</strong></a></big><br />\r\n<br />\r\n<em>{COMMENT_MESSAGE}</em><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(32,'project_attachment','New Project  Attachment','<p>Hi There,</p>\r\n\r\n<p>A new file has been uploaded by <strong>{UPLOADED_BY}</strong> to project <strong>{PROJECT_NAME}</strong>.<br />\r\nYou can view the Project using the link below:<br />\r\n<big><a href=\"{PROJECT_URL}\"><strong>View Project</strong></a></big><br />\r\n<br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(33,'responsible_milestone','Responsible for a Milestone','<p>Hi There,</p>\r\n\r\n<p>You are a responsible&nbsp;for a project milestone&nbsp;<strong>{MILESTONE_NAME}</strong>&nbsp; assigned to you by <strong>{ASSIGNED_BY}</strong> in project <strong>{PROJECT_NAME}</strong>.</p>\r\n\r\n<p>You can view this Milestone&nbsp;by logging in to the portal using the link below:<br />\r\n<big><strong><a href=\"{PROJECT_URL}\">View Project</a></strong></big><br />\r\n<br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(34,'task_assigned','Task assigned','<p>Hi there,</p>\r\n\r\n<p>A new task <strong>{TASK_NAME}</strong> &nbsp;has been assigned to you by <strong>{ASSIGNED_BY}</strong>.</p>\r\n\r\n<p>You can view this task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{TASK_URL}\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(35,'tasks_comments','New Task Comment Received','<p>Hi There,</p>\r\n\r\n<p>A new comment has been posted by <strong>{POSTED_BY}</strong> to <strong>{TASK_NAME}</strong>.</p>\r\n\r\n<p>You can view the comment using the link below:<br />\r\n<big><strong><a href=\"{COMMENT_URL}\">View Comment</a></strong></big><br />\r\n<br />\r\n<em>{COMMENT_MESSAGE}</em><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(36,'tasks_attachment','New Tasks Attachment','<p>Hi There,</p>\r\n\r\n<p>A new file has been uploaded by <strong>{UPLOADED_BY} </strong>to Task <strong>{TASK_NAME}</strong>.<br />\r\nYou can view the Task&nbsp;using the link below:</p>\r\n\r\n<p><br />\r\n<big><a href=\"{TASK_URL}\"><strong>View Task</strong></a></big><br />\r\n<br />\r\nBest Regards,<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(37,'tasks_updated','Task updated','<p>Hi there,</p>\r\n\r\n<p><strong>{TASK_NAME}</strong> has been updated by <strong>{ASSIGNED_BY}</strong>.</p>\r\n\r\n<p>You can view this Task by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{TASK_URL}\">View Task</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(38,'goal_not_achieve','Not Achieve Goal','<p><strong>Unfortunately!</strong> We failed to achieve goal!</p>\r\n\r\n<p><strong>Here is a Goal Details</strong></p>\r\n\r\n<p>Goal Type :&nbsp;<strong>{Goal_Type}</strong><br />\r\nTarget Achievement:&nbsp;<strong>{achievement}</strong><br />\r\nTotal Achievement:&nbsp;<strong>{total_achievement}</strong><br />\r\nStart Date:&nbsp;<strong>{start_date}</strong><br />\r\nEnd Date:&nbsp;<strong>{End_date}</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),(39,'goal_achieve','Achieve Goal','<p><strong>Congratulation!</strong> We achieved new goal.</p>\r\n\r\n<p><strong>Here is a Goal Details</strong></p>\r\n\r\n<p>Goal Type :<strong>{Goal_Type}</strong><br />\r\nTarget Achievement:<strong>{achievement}</strong><br />\r\nTotal Achievement:<strong>{total_achievement}</strong><br />\r\nStart Date:<strong>{start_date}</strong><br />\r\nEnd Date:<strong>{End_date}</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),(40,'leave_request_email','A Leave Request from you','<p>Hi there,</p>\r\n\r\n<p><strong>{NAME}</strong> &nbsp;Want to leave from you.</p>\r\n\r\n<p>You can view this leave request by logging in to the portal using the link below.ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â¬Ãƒâ€¦Ã‚Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¢ÃƒÆ’Ã‚Â¢ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡Ãƒâ€šÃ‚Â¬ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¹<br />\r\n<br />\r\n<big><strong><a href=\"{APPLICATION_LINK}\">View Application</a></strong></big><br />\r\n<br />\r\n<br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),(41,'leave_approve_email','Your leave request has been approved','<h1>Your leave request has been approved</h1>\r\n\r\n<p><strong>Congratulations!</strong> Your leave request from <strong>{START_DATE}</strong> to <strong>{END_DATE}</strong> has been approved by your company management.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),(42,'leave_reject_email','Your leave request has been Rejected','<h1>Your leave request has been Rejected</h1>\r\n\r\n<p><strong>Unfortunately !</strong>&nbsp;Your leave request from&nbsp;<strong>{START_DATE}</strong>&nbsp;to&nbsp;<strong>{END_DATE}</strong>&nbsp;has been Rejected by your company management.</p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(43,'overtime_request_email','Overtime Request','<p>Hi there,</p>\r\n\r\n<p><strong>{NAME}</strong>&nbsp;&nbsp;to do an overtime.<br />\r\n<br />\r\n<br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(44,'overtime_approved_email','Your overtime request has been approved','<h1>Your leave request has been approved</h1>\r\n\r\n<p><strong>Congratulations!</strong>&nbsp;Your overtime&nbsp;request at&nbsp;<strong>{DATE}</strong>&nbsp;and&nbsp;<strong>{HOUR}</strong>&nbsp;has been approved by your company management.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(45,'overtime_reject_email','Your Overtime request has been Rejected','<h1>Your leave request has been Rejected</h1>\r\n\r\n<p><strong>Unfortunately&nbsp;!</strong>&nbsp;Your overtime&nbsp;request at&nbsp;<strong>{DATE}</strong>&nbsp;and&nbsp;<strong>{HOUR}</strong>&nbsp;has been Rejected by your company management.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(46,'wellcome_email','Welcome Email ','<p>Hello <strong>{NAME}</strong>,</p>\r\n\r\n<p>Welcome to <strong>{COMPANY_NAME}</strong> .Thanks for joining <strong>{COMPANY_NAME}</strong>. We listed your sign in details below, make sure you keep them safe.</p>\r\n\r\n<p><br />\r\nHave fun!<br />\r\nThe <strong>{COMPANY_NAME}</strong> Team.</p>\r\n'),(47,'payslip_generated_email','Payslip generated','<p>Hello&nbsp;<strong>{NAME}</strong>,</p>\r\n\r\n<p>Your payslip generated for the month <strong>{MONTH_YEAR} .</strong></p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(48,'advance_salary_email','Advance Salary Reqeust','<p>Hi there,</p>\r\n\r\n<p><strong>{NAME}</strong>&nbsp;&nbsp;Want to Advance Salary from you.</p>\r\n\r\n<p>You can view this Advance Salary by logging in to the portal using the link below.<br />\r\n<br />\r\n<big><strong><a href=\"{LINK}\">View Advance Salary</a></strong></big><br />\r\n<br />\r\n<br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(49,'advance_salary_approve_email','Your advance salary request has been approved','<h1>Your advance salary request has been approved</h1>\r\n\r\n<p><strong>Congratulations!</strong>&nbsp;Your advance salary&nbsp;requested &nbsp;<strong>{AMOUNT}</strong>&nbsp;has been approved by your company management.</p>\r\n\r\n<p>This advance amount will deduct the next <strong>{DEDUCT_MOTNH}</strong> .</p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(50,'advance_salary_reject_email','Your advance salary request has been Rejected','<h1>Your advance salary request has been Rejected</h1>\r\n\r\n<p><strong>Unfortunately !</strong>&nbsp;Your advance salary requested&nbsp;<strong>{AMOUNT}</strong>&nbsp;has been Rejected by your company management.</p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(51,'award_email','Award Received','<p>Hello&nbsp;<strong>{NAME}</strong>,</p>\r\n\r\n<p>You have been&nbsp;awarded <strong>{AWARD_NAME} </strong>for this<strong> {MONTH} .</strong></p>\r\n\r\n<p><br />\r\nRegards<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(52,'new_job_application_email','New job application submitted','<p>Hi there,</p>\r\n\r\n<p>&nbsp;<strong>{NAME}&nbsp;</strong>has submitted the job application</p>\r\n\r\n<p>Please find below are job application Details:</p>\r\n\r\n<table cellpadding=\"8\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Job Title</td>\r\n			<td><strong>{JOB_TITLE}</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Email</td>\r\n			<td><strong>{EMAIL}</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mobile</td>\r\n			<td><strong>{MOBILE}</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cover Latter</td>\r\n			<td><strong>{COVER_LETTER}</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><br />\r\nYou can view the Job Application online at:<br />\r\n<br />\r\n<big><strong><a href=\"{LINK}\">View Job Application</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(53,'new_notice_published','New Notice published','<p>Hello&nbsp;<strong>{NAME}</strong>,</p>\r\n\r\n<p>New Notice Published&nbsp;<strong>{TITLE}</strong></p>\r\n\r\n<p><br />\r\nYou can view the Notice online at:<br />\r\n<br />\r\n<big><strong><a href=\"{LINK}\">View Notice</a></strong></big><br />\r\n<br />\r\nBest Regards,<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(54,'new_training_email','Training  Assigned ','<p>Hi there,</p>\r\n\r\n<p>A new Training  &nbsp;<strong>{TRAINING_NAME}</strong>&nbsp;&nbsp;has been assigned to you by&nbsp;<strong>{ASSIGNED_BY}</strong>.</p>\r\n\r\n<p>You can view this Training  by logging in to the portal using the link below.</p>\r\n\r\n<p><br />\r\n<big><strong><a href=\"{LINK}\">View Training</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(55,'performance_appraisal_email','New Performance Appraisal',''),(56,'expense_request_email','A New Expense Request have been Recieved','<p>Hi there,</p>\r\n\r\n<p><strong>{NAME}</strong> &nbsp;Create a New Expense The Amount is <strong>{AMOUNT}</strong></p>\r\n\r\n<p>You can view this expense by logging in to the portal using the link below.<br />\r\n<br />\r\n<big><strong><a href=\"{URL}\">View Expense</a></strong></big><br />\r\n<br />\r\n<br />\r\nRegards,<br />\r\n<br />\r\nThe <strong>{SITE_NAME}</strong> Team</p>\r\n'),(57,'expense_approved_email','Expense Approved','<p>Dear&nbsp;<strong>{NAME} ,</strong></p>\r\n\r\n<h1>Your Expense request has been approved</h1>\r\n\r\n<p><strong>Congratulations!</strong>&nbsp;Your Expense request from&nbsp;<strong>{AMOUNT}</strong>&nbsp;has been approved by your company management.</p>\r\n\r\n<p>Please Contact&nbsp;with our Accountant for collect the amount.</p>\r\n\r\n<p><br />\r\nRegards,<br />\r\n<br />\r\nThe {SITE_NAME} Team</p>\r\n'),(58,'expense_paid_email','Expense have been Paid','<p>Hi there,</p>\r\n\r\n<p>The&nbsp;<strong>{NAME}</strong>&nbsp;expense&nbsp;<strong>{AMOUNT}&nbsp;</strong>has been paid by <strong>{PAID_BY}.</strong></p>\r\n\r\n<p>You can view this expense by logging in to the portal using the link below.<br />\r\n<br />\r\n<big><strong><a href=\"{URL}\">View Expense</a></strong></big><br />\r\n<br />\r\n<br />\r\nRegards,<br />\r\n<br />\r\nThe&nbsp;<strong>{SITE_NAME}</strong>&nbsp;Team</p>\r\n'),(59,'auto_close_ticket','Ticket Auto Closed','<p>Ticket Closed</p>\r\n\r\n<p>Hello <strong>{REPORTER_EMAIL}</strong>,</p>\r\n\r\n<p>Ticket&nbsp;<strong>{SUBJECT}</strong>&nbsp;has been auto closed due to inactivity.&nbsp;<br />\r\n<br />\r\nTicket # <strong>{TICKET_CODE}</strong><br />\r\nStatus : &nbsp;<strong>{TICKET_STATUS}</strong><br />\r\n<br />\r\nTo see the responses or open the ticket, click on the link below:â€‹<br />\r\n<br />\r\n<big><strong><a href=\"{TICKET_LINK}\">View Ticket</a></strong></big><br />\r\n<br />\r\nRegards<br />\r\n<br />\r\nThe <strong>{SITE_NAME}</strong> Team</p>\r\n');
/*!40000 ALTER TABLE `tbl_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employee_award`
--

DROP TABLE IF EXISTS `tbl_employee_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_employee_award` (
  `employee_award_id` int(11) NOT NULL AUTO_INCREMENT,
  `award_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gift_item` varchar(300) NOT NULL,
  `award_amount` int(5) NOT NULL,
  `award_date` varchar(10) NOT NULL,
  `view_status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Read 2=Unread',
  `given_date` date DEFAULT NULL,
  PRIMARY KEY (`employee_award_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employee_award`
--

LOCK TABLES `tbl_employee_award` WRITE;
/*!40000 ALTER TABLE `tbl_employee_award` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_employee_award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employee_bank`
--

DROP TABLE IF EXISTS `tbl_employee_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_employee_bank` (
  `employee_bank_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bank_name` varchar(300) NOT NULL,
  `branch_name` varchar(300) NOT NULL,
  `account_name` varchar(300) NOT NULL,
  `account_number` varchar(300) NOT NULL,
  PRIMARY KEY (`employee_bank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employee_bank`
--

LOCK TABLES `tbl_employee_bank` WRITE;
/*!40000 ALTER TABLE `tbl_employee_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_employee_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employee_document`
--

DROP TABLE IF EXISTS `tbl_employee_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_employee_document` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `resume` text,
  `resume_path` text,
  `resume_filename` text,
  `offer_letter` text,
  `offer_letter_filename` text,
  `offer_letter_path` text,
  `joining_letter` text,
  `joining_letter_filename` text,
  `joining_letter_path` text,
  `contract_paper` text,
  `contract_paper_filename` text,
  `contract_paper_path` text,
  `id_proff` text,
  `id_proff_filename` text,
  `id_proff_path` text,
  `other_document` text,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employee_document`
--

LOCK TABLES `tbl_employee_document` WRITE;
/*!40000 ALTER TABLE `tbl_employee_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_employee_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employee_payroll`
--

DROP TABLE IF EXISTS `tbl_employee_payroll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_employee_payroll` (
  `payroll_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `salary_template_id` int(11) DEFAULT NULL,
  `hourly_rate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`payroll_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employee_payroll`
--

LOCK TABLES `tbl_employee_payroll` WRITE;
/*!40000 ALTER TABLE `tbl_employee_payroll` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_employee_payroll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estimate_items`
--

DROP TABLE IF EXISTS `tbl_estimate_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estimate_items` (
  `estimate_items_id` int(11) NOT NULL AUTO_INCREMENT,
  `estimates_id` int(11) NOT NULL,
  `item_tax_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext COLLATE utf8_unicode_ci,
  `unit_cost` decimal(10,2) DEFAULT '0.00',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `item_tax_total` decimal(10,2) DEFAULT '0.00',
  `total_cost` decimal(10,2) DEFAULT '0.00',
  `date_saved` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `item_order` int(11) DEFAULT '0',
  PRIMARY KEY (`estimate_items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estimate_items`
--

LOCK TABLES `tbl_estimate_items` WRITE;
/*!40000 ALTER TABLE `tbl_estimate_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estimate_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estimates`
--

DROP TABLE IF EXISTS `tbl_estimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estimates` (
  `estimates_id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT '0',
  `due_date` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `discount` float NOT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `tax` int(11) NOT NULL DEFAULT '0',
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `date_sent` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `est_deleted` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `date_saved` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `emailed` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `show_client` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `invoiced` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  `permission` text COLLATE utf8_unicode_ci,
  `client_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  PRIMARY KEY (`estimates_id`),
  UNIQUE KEY `reference_no` (`reference_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estimates`
--

LOCK TABLES `tbl_estimates` WRITE;
/*!40000 ALTER TABLE `tbl_estimates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estimates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_expense_category`
--

DROP TABLE IF EXISTS `tbl_expense_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_expense_category` (
  `expense_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_category` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`expense_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_expense_category`
--

LOCK TABLES `tbl_expense_category` WRITE;
/*!40000 ALTER TABLE `tbl_expense_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_expense_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_files`
--

DROP TABLE IF EXISTS `tbl_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_files` (
  `files_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `uploaded_by` int(11) NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`files_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_files`
--

LOCK TABLES `tbl_files` WRITE;
/*!40000 ALTER TABLE `tbl_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_form`
--

DROP TABLE IF EXISTS `tbl_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_form` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(100) NOT NULL,
  `tbl_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_form`
--

LOCK TABLES `tbl_form` WRITE;
/*!40000 ALTER TABLE `tbl_form` DISABLE KEYS */;
INSERT INTO `tbl_form` VALUES (1,'deposit','tbl_transactions'),(2,'expense','tbl_transactions'),(3,'tasks','tbl_task'),(4,'project','tbl_project'),(5,'leads','tbl_leads'),(6,'bugs','tbl_bug'),(7,'tickets','tbl_tickets'),(8,'opportunities','tbl_opportunities'),(9,'invoice','tbl_invoices'),(10,'estimates','tbl_estimates');
/*!40000 ALTER TABLE `tbl_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_goal_tracking`
--

DROP TABLE IF EXISTS `tbl_goal_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_goal_tracking` (
  `goal_tracking_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(200) NOT NULL,
  `goal_type_id` int(11) NOT NULL,
  `achievement` int(10) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `account_id` int(11) DEFAULT '0',
  `description` text NOT NULL,
  `notify_goal_achive` varchar(5) DEFAULT NULL,
  `notify_goal_not_achive` varchar(5) DEFAULT NULL,
  `permission` text,
  `email_send` varchar(5) NOT NULL DEFAULT 'no',
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`goal_tracking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_goal_tracking`
--

LOCK TABLES `tbl_goal_tracking` WRITE;
/*!40000 ALTER TABLE `tbl_goal_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_goal_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_goal_type`
--

DROP TABLE IF EXISTS `tbl_goal_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_goal_type` (
  `goal_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `tbl_name` varchar(200) NOT NULL,
  `query` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`goal_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_goal_type`
--

LOCK TABLES `tbl_goal_type` WRITE;
/*!40000 ALTER TABLE `tbl_goal_type` DISABLE KEYS */;
INSERT INTO `tbl_goal_type` VALUES (1,'achive_total_income','to get total income report from this start and end date and notify user. ','tbl_transactions','Income'),(2,'achive_total_income_by_bank','to get total income report from this start and end date and notify user. ','tbl_transactions','Income'),(3,'achieve_total_expense','to get total expense report from this start and end date and notify user. ','tbl_transactions','Expense'),(4,'achive_total_expense_by_bank','to get total expense report from this start and end date and notify user. ','tbl_transactions','Expense'),(5,'make_invoice','to get targeted invoice from this start and end date and notify user. ','tbl_invoices',NULL),(6,'make_estimate','to get targeted estimate from this start and end date and notify user.','tbl_estimates',NULL),(7,'goal_payment','to get total payment report from this start and end date and notify user. ','tbl_payments',NULL),(8,'task_done','to get total done tasks report from this start and end date and notify user. ','tbl_task',NULL),(9,'resolved_bugs','to get total resolve bugs report from this start and end date and notify user. ','tbl_bug',NULL),(10,'convert_leads_to_client','to get total Convert leads to client report from this start and end date and notify user. ','tbl_client',NULL),(11,'direct_client','to get total client report from this start and end date and notify user. ','tbl_client',NULL),(12,'complete_project_goal','to get total complete project report from this start and end date and notify user. ','tbl_project',NULL);
/*!40000 ALTER TABLE `tbl_goal_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_holiday`
--

DROP TABLE IF EXISTS `tbl_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_holiday` (
  `holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `location` varchar(200) DEFAULT NULL,
  `color` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`holiday_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_holiday`
--

LOCK TABLES `tbl_holiday` WRITE;
/*!40000 ALTER TABLE `tbl_holiday` DISABLE KEYS */;
INSERT INTO `tbl_holiday` VALUES (5,'Diwali Break','Diwali and next day','2017-10-19','2017-10-20','','#83c340'),(6,'Gandhi Jayanti','Birth anniversary of Gandhi Ji.','2017-10-02','2017-10-02','','#29c2c2'),(7,'Christmas','X Mas','2017-12-25','2017-12-25','','#83c340'),(8,'Republic Day','Republic day','2018-01-26','2018-01-26','','#29c2c2');
/*!40000 ALTER TABLE `tbl_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_hourly_rate`
--

DROP TABLE IF EXISTS `tbl_hourly_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_hourly_rate` (
  `hourly_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `hourly_grade` varchar(200) NOT NULL,
  `hourly_rate` varchar(50) NOT NULL,
  PRIMARY KEY (`hourly_rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hourly_rate`
--

LOCK TABLES `tbl_hourly_rate` WRITE;
/*!40000 ALTER TABLE `tbl_hourly_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_hourly_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_inbox`
--

DROP TABLE IF EXISTS `tbl_inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `to` varchar(100) NOT NULL,
  `from` varchar(100) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message_body` text NOT NULL,
  `attach_file` varchar(200) DEFAULT NULL,
  `attach_file_path` text,
  `attach_filename` text,
  `message_time` datetime NOT NULL,
  `view_status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Read 2=Unread',
  `favourites` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0= no 1=yes',
  `notify_me` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=on 0=off',
  `deleted` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`inbox_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_inbox`
--

LOCK TABLES `tbl_inbox` WRITE;
/*!40000 ALTER TABLE `tbl_inbox` DISABLE KEYS */;
INSERT INTO `tbl_inbox` VALUES (2,1,'devendra.sharma@consagous.com','demo@gmail.com','Test','<p>Demo</p>\r\n',NULL,NULL,NULL,'2017-10-05 12:06:49',2,0,1,'No'),(3,1,'devendra.sharma@consagous.com','demo@gmail.com','test','<p>test</p>\r\n',NULL,NULL,NULL,'2017-10-05 12:09:08',2,0,1,'No');
/*!40000 ALTER TABLE `tbl_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_income_category`
--

DROP TABLE IF EXISTS `tbl_income_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_income_category` (
  `income_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `income_category` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`income_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_income_category`
--

LOCK TABLES `tbl_income_category` WRITE;
/*!40000 ALTER TABLE `tbl_income_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_income_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_invoices`
--

DROP TABLE IF EXISTS `tbl_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_invoices` (
  `invoices_id` int(11) NOT NULL AUTO_INCREMENT,
  `recur_start_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `recur_end_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reference_no` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `due_date` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `recurring` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `recuring_frequency` int(11) NOT NULL DEFAULT '31',
  `recur_frequency` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recur_next_date` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USD',
  `status` enum('Cancelled','Unpaid','Paid','draft') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `archived` int(11) DEFAULT '0',
  `date_sent` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inv_deleted` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `date_saved` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `emailed` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `show_client` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `viewed` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `allow_paypal` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `allow_stripe` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `allow_2checkout` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `allow_authorize` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `allow_ccavenue` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `allow_braintree` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `permission` text COLLATE utf8_unicode_ci,
  `client_visible` enum('Yes','No') COLLATE utf8_unicode_ci DEFAULT 'No',
  PRIMARY KEY (`invoices_id`),
  UNIQUE KEY `reference_no` (`reference_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_invoices`
--

LOCK TABLES `tbl_invoices` WRITE;
/*!40000 ALTER TABLE `tbl_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_item_history`
--

DROP TABLE IF EXISTS `tbl_item_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_item_history` (
  `item_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` int(11) NOT NULL,
  `inventory` int(5) NOT NULL,
  `purchase_date` date NOT NULL,
  PRIMARY KEY (`item_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_item_history`
--

LOCK TABLES `tbl_item_history` WRITE;
/*!40000 ALTER TABLE `tbl_item_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_item_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_items`
--

DROP TABLE IF EXISTS `tbl_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_items` (
  `items_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoices_id` int(11) NOT NULL,
  `item_tax_rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `item_tax_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `total_cost` decimal(10,2) DEFAULT '0.00',
  `item_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext COLLATE utf8_unicode_ci,
  `unit_cost` decimal(10,2) DEFAULT '0.00',
  `item_order` int(11) DEFAULT '0',
  `date_saved` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_items`
--

LOCK TABLES `tbl_items` WRITE;
/*!40000 ALTER TABLE `tbl_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_job_appliactions`
--

DROP TABLE IF EXISTS `tbl_job_appliactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_job_appliactions` (
  `job_appliactions_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_circular_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `cover_letter` text NOT NULL,
  `resume` text NOT NULL,
  `application_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=pending 1=accept 2 = reject',
  `apply_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`job_appliactions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_job_appliactions`
--

LOCK TABLES `tbl_job_appliactions` WRITE;
/*!40000 ALTER TABLE `tbl_job_appliactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_job_appliactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_job_circular`
--

DROP TABLE IF EXISTS `tbl_job_circular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_job_circular` (
  `job_circular_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_title` varchar(200) NOT NULL,
  `designations_id` int(11) NOT NULL,
  `vacancy_no` varchar(50) NOT NULL,
  `posted_date` date NOT NULL,
  `employment_type` enum('full_time','part_time') NOT NULL DEFAULT 'full_time',
  `last_date` date NOT NULL,
  `description` text NOT NULL,
  `status` enum('published','unpublished') NOT NULL DEFAULT 'unpublished' COMMENT '1=publish 2=unpublish',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `permission` text,
  PRIMARY KEY (`job_circular_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_job_circular`
--

LOCK TABLES `tbl_job_circular` WRITE;
/*!40000 ALTER TABLE `tbl_job_circular` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_job_circular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_languages`
--

DROP TABLE IF EXISTS `tbl_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_languages` (
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(2) DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_languages`
--

LOCK TABLES `tbl_languages` WRITE;
/*!40000 ALTER TABLE `tbl_languages` DISABLE KEYS */;
INSERT INTO `tbl_languages` VALUES ('ar','arabic','ae',1),('cs','czech','cz',1),('da','danish','dk',1),('de','german','at',1),('el','greek','cy',1),('en','english','us',1),('es','spanish','ar',1),('fr','french','be',1),('gu','gujarati','in',1),('hi','hindi','in',1),('id','indonesian','id',1),('it','italian','ch',1),('ja','japanese','jp',1),('nl','dutch','aw',1),('no','norwegian','no',1),('pl','polish','pl',1),('pt','portuguese','br',1),('ro','romanian','md',1),('ru','russian','ru',1),('tr','turkish','cy',1),('zh','chinese','cn',1);
/*!40000 ALTER TABLE `tbl_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lead_source`
--

DROP TABLE IF EXISTS `tbl_lead_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lead_source` (
  `lead_source_id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_source` varchar(100) NOT NULL,
  PRIMARY KEY (`lead_source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lead_source`
--

LOCK TABLES `tbl_lead_source` WRITE;
/*!40000 ALTER TABLE `tbl_lead_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lead_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lead_status`
--

DROP TABLE IF EXISTS `tbl_lead_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lead_status` (
  `lead_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_status` varchar(50) NOT NULL,
  `lead_type` enum('open','close') NOT NULL,
  PRIMARY KEY (`lead_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lead_status`
--

LOCK TABLES `tbl_lead_status` WRITE;
/*!40000 ALTER TABLE `tbl_lead_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lead_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_leads`
--

DROP TABLE IF EXISTS `tbl_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_leads` (
  `leads_id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_name` varchar(50) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `organization` varchar(50) NOT NULL,
  `lead_status_id` int(11) DEFAULT NULL,
  `lead_source_id` int(11) DEFAULT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `mobile` varchar(32) NOT NULL,
  `facebook` varchar(32) NOT NULL,
  `notes` text NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `skype` varchar(200) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `permission` text,
  `converted_client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`leads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_leads`
--

LOCK TABLES `tbl_leads` WRITE;
/*!40000 ALTER TABLE `tbl_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_leave_application`
--

DROP TABLE IF EXISTS `tbl_leave_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_leave_application` (
  `leave_application_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `leave_category_id` int(2) NOT NULL,
  `reason` text NOT NULL,
  `leave_start_date` date NOT NULL,
  `leave_end_date` date NOT NULL,
  `application_status` int(2) NOT NULL DEFAULT '1' COMMENT '1=pending,2=accepted 3=rejected',
  `view_status` tinyint(1) NOT NULL DEFAULT '2',
  `application_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `attachment` text,
  `comments` text,
  `approve_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`leave_application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_leave_application`
--

LOCK TABLES `tbl_leave_application` WRITE;
/*!40000 ALTER TABLE `tbl_leave_application` DISABLE KEYS */;
INSERT INTO `tbl_leave_application` VALUES (2,70,1,'Going to home for diwali occasion','2017-10-16','2017-10-18',2,2,'2017-09-27 06:16:28',NULL,'Approved by Naveen',1),(3,50,1,'Durga puja and then leave out of city to visit wife\'s home as her grand mother is not well.','2017-09-28','2017-09-29',2,2,'2017-09-27 10:38:17',NULL,'Approved by Mukesh Ji',51),(4,62,1,'My Grandmother passed away on last Tuesday. I have to attend 10th and 11th day ceremony. ','2017-09-28','2017-09-29',2,2,'2017-09-26 12:18:58',NULL,'Approved by Naveen',1),(5,76,1,'Test ','2017-09-29','2017-09-29',2,2,'2017-09-22 12:36:17',NULL,'approved.',1),(6,69,1,'Hello Deepti ,\r\n\r\nHalf-day Leave\r\n\r\nI am writing this letter to inform you that I am in need of half-day leave on 29th Sept, 2017 , due to some personal reasons.\r\n\r\nI will make sure that my work will not suffer due to this leave.  During this time, you can contact me on phone at (9770043068)  when you need my assistance.','2017-09-29','2017-09-29',1,2,'2017-09-28 06:06:54',NULL,NULL,NULL),(7,69,1,'Need  One day leave on 18th Oct, 2017 , due to some personal reasons and Diwali Preprations.\r\n\r\n\r\n\r\n\r\n','2017-10-18','2017-10-18',1,2,'2017-10-16 08:03:02',NULL,NULL,NULL),(8,62,1,'Going to cousin marriage','2017-12-04','2017-12-05',1,2,'2017-11-13 09:02:24',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_leave_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_leave_category`
--

DROP TABLE IF EXISTS `tbl_leave_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_leave_category` (
  `leave_category_id` int(2) NOT NULL AUTO_INCREMENT,
  `leave_category` varchar(100) NOT NULL,
  `leave_quota` int(2) NOT NULL,
  PRIMARY KEY (`leave_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_leave_category`
--

LOCK TABLES `tbl_leave_category` WRITE;
/*!40000 ALTER TABLE `tbl_leave_category` DISABLE KEYS */;
INSERT INTO `tbl_leave_category` VALUES (1,'Casual Leaves',24),(2,'Marriage Leaves',7),(3,'BL',7),(4,'Paternity Leave',7),(5,'Maternity Leave',90);
/*!40000 ALTER TABLE `tbl_leave_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_locales`
--

DROP TABLE IF EXISTS `tbl_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_locales` (
  `locale` varchar(10) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_locales`
--

LOCK TABLES `tbl_locales` WRITE;
/*!40000 ALTER TABLE `tbl_locales` DISABLE KEYS */;
INSERT INTO `tbl_locales` VALUES ('aa_DJ','aa','afar','Afar (Djibouti)'),('aa_ER','aa','afar','Afar (Eritrea)'),('aa_ET','aa','afar','Afar (Ethiopia)'),('af_ZA','af','afrikaans','Afrikaans (South Africa)'),('am_ET','am','amharic','Amharic (Ethiopia)'),('an_ES','an','aragonese','Aragonese (Spain)'),('ar_AE','ar','arabic','Arabic (United Arab Emirates)'),('ar_BH','ar','arabic','Arabic (Bahrain)'),('ar_DZ','ar','arabic','Arabic (Algeria)'),('ar_EG','ar','arabic','Arabic (Egypt)'),('ar_IN','ar','arabic','Arabic (India)'),('ar_IQ','ar','arabic','Arabic (Iraq)'),('ar_JO','ar','arabic','Arabic (Jordan)'),('ar_KW','ar','arabic','Arabic (Kuwait)'),('ar_LB','ar','arabic','Arabic (Lebanon)'),('ar_LY','ar','arabic','Arabic (Libya)'),('ar_MA','ar','arabic','Arabic (Morocco)'),('ar_OM','ar','arabic','Arabic (Oman)'),('ar_QA','ar','arabic','Arabic (Qatar)'),('ar_SA','ar','arabic','Arabic (Saudi Arabia)'),('ar_SD','ar','arabic','Arabic (Sudan)'),('ar_SY','ar','arabic','Arabic (Syria)'),('ar_TN','ar','arabic','Arabic (Tunisia)'),('ar_YE','ar','arabic','Arabic (Yemen)'),('ast_ES','ast','asturian','Asturian (Spain)'),('as_IN','as','assamese','Assamese (India)'),('az_AZ','az','azerbaijani','Azerbaijani (Azerbaijan)'),('az_TR','az','azerbaijani','Azerbaijani (Turkey)'),('bem_ZM','bem','bemba','Bemba (Zambia)'),('ber_DZ','ber','berber','Berber (Algeria)'),('ber_MA','ber','berber','Berber (Morocco)'),('be_BY','be','belarusian','Belarusian (Belarus)'),('bg_BG','bg','bulgarian','Bulgarian (Bulgaria)'),('bn_BD','bn','bengali','Bengali (Bangladesh)'),('bn_IN','bn','bengali','Bengali (India)'),('bo_CN','bo','tibetan','Tibetan (China)'),('bo_IN','bo','tibetan','Tibetan (India)'),('br_FR','br','breton','Breton (France)'),('bs_BA','bs','bosnian','Bosnian (Bosnia and Herzegovina)'),('byn_ER','byn','blin','Blin (Eritrea)'),('ca_AD','ca','catalan','Catalan (Andorra)'),('ca_ES','ca','catalan','Catalan (Spain)'),('ca_FR','ca','catalan','Catalan (France)'),('ca_IT','ca','catalan','Catalan (Italy)'),('crh_UA','crh','crimean turkish','Crimean Turkish (Ukraine)'),('csb_PL','csb','kashubian','Kashubian (Poland)'),('cs_CZ','cs','czech','Czech (Czech Republic)'),('cv_RU','cv','chuvash','Chuvash (Russia)'),('cy_GB','cy','welsh','Welsh (United Kingdom)'),('da_DK','da','danish','Danish (Denmark)'),('de_AT','de','german','German (Austria)'),('de_BE','de','german','German (Belgium)'),('de_CH','de','german','German (Switzerland)'),('de_DE','de','german','German (Germany)'),('de_LI','de','german','German (Liechtenstein)'),('de_LU','de','german','German (Luxembourg)'),('dv_MV','dv','divehi','Divehi (Maldives)'),('dz_BT','dz','dzongkha','Dzongkha (Bhutan)'),('ee_GH','ee','ewe','Ewe (Ghana)'),('el_CY','el','greek','Greek (Cyprus)'),('el_GR','el','greek','Greek (Greece)'),('en_AG','en','english','English (Antigua and Barbuda)'),('en_AS','en','english','English (American Samoa)'),('en_AU','en','english','English (Australia)'),('en_BW','en','english','English (Botswana)'),('en_CA','en','english','English (Canada)'),('en_DK','en','english','English (Denmark)'),('en_GB','en','english','English (United Kingdom)'),('en_GU','en','english','English (Guam)'),('en_HK','en','english','English (Hong Kong SAR China)'),('en_IE','en','english','English (Ireland)'),('en_IN','en','english','English (India)'),('en_JM','en','english','English (Jamaica)'),('en_MH','en','english','English (Marshall Islands)'),('en_MP','en','english','English (Northern Mariana Islands)'),('en_MU','en','english','English (Mauritius)'),('en_NG','en','english','English (Nigeria)'),('en_NZ','en','english','English (New Zealand)'),('en_PH','en','english','English (Philippines)'),('en_SG','en','english','English (Singapore)'),('en_TT','en','english','English (Trinidad and Tobago)'),('en_US','en','english','English (United States)'),('en_VI','en','english','English (Virgin Islands)'),('en_ZA','en','english','English (South Africa)'),('en_ZM','en','english','English (Zambia)'),('en_ZW','en','english','English (Zimbabwe)'),('eo','eo','esperanto','Esperanto'),('es_AR','es','spanish','Spanish (Argentina)'),('es_BO','es','spanish','Spanish (Bolivia)'),('es_CL','es','spanish','Spanish (Chile)'),('es_CO','es','spanish','Spanish (Colombia)'),('es_CR','es','spanish','Spanish (Costa Rica)'),('es_DO','es','spanish','Spanish (Dominican Republic)'),('es_EC','es','spanish','Spanish (Ecuador)'),('es_ES','es','spanish','Spanish (Spain)'),('es_GT','es','spanish','Spanish (Guatemala)'),('es_HN','es','spanish','Spanish (Honduras)'),('es_MX','es','spanish','Spanish (Mexico)'),('es_NI','es','spanish','Spanish (Nicaragua)'),('es_PA','es','spanish','Spanish (Panama)'),('es_PE','es','spanish','Spanish (Peru)'),('es_PR','es','spanish','Spanish (Puerto Rico)'),('es_PY','es','spanish','Spanish (Paraguay)'),('es_SV','es','spanish','Spanish (El Salvador)'),('es_US','es','spanish','Spanish (United States)'),('es_UY','es','spanish','Spanish (Uruguay)'),('es_VE','es','spanish','Spanish (Venezuela)'),('et_EE','et','estonian','Estonian (Estonia)'),('eu_ES','eu','basque','Basque (Spain)'),('eu_FR','eu','basque','Basque (France)'),('fa_AF','fa','persian','Persian (Afghanistan)'),('fa_IR','fa','persian','Persian (Iran)'),('ff_SN','ff','fulah','Fulah (Senegal)'),('fil_PH','fil','filipino','Filipino (Philippines)'),('fi_FI','fi','finnish','Finnish (Finland)'),('fo_FO','fo','faroese','Faroese (Faroe Islands)'),('fr_BE','fr','french','French (Belgium)'),('fr_BF','fr','french','French (Burkina Faso)'),('fr_BI','fr','french','French (Burundi)'),('fr_BJ','fr','french','French (Benin)'),('fr_CA','fr','french','French (Canada)'),('fr_CF','fr','french','French (Central African Republic)'),('fr_CG','fr','french','French (Congo)'),('fr_CH','fr','french','French (Switzerland)'),('fr_CM','fr','french','French (Cameroon)'),('fr_FR','fr','french','French (France)'),('fr_GA','fr','french','French (Gabon)'),('fr_GN','fr','french','French (Guinea)'),('fr_GP','fr','french','French (Guadeloupe)'),('fr_GQ','fr','french','French (Equatorial Guinea)'),('fr_KM','fr','french','French (Comoros)'),('fr_LU','fr','french','French (Luxembourg)'),('fr_MC','fr','french','French (Monaco)'),('fr_MG','fr','french','French (Madagascar)'),('fr_ML','fr','french','French (Mali)'),('fr_MQ','fr','french','French (Martinique)'),('fr_NE','fr','french','French (Niger)'),('fr_SN','fr','french','French (Senegal)'),('fr_TD','fr','french','French (Chad)'),('fr_TG','fr','french','French (Togo)'),('fur_IT','fur','friulian','Friulian (Italy)'),('fy_DE','fy','western frisian','Western Frisian (Germany)'),('fy_NL','fy','western frisian','Western Frisian (Netherlands)'),('ga_IE','ga','irish','Irish (Ireland)'),('gd_GB','gd','scottish gaelic','Scottish Gaelic (United Kingdom)'),('gez_ER','gez','geez','Geez (Eritrea)'),('gez_ET','gez','geez','Geez (Ethiopia)'),('gl_ES','gl','galician','Galician (Spain)'),('gu_IN','gu','gujarati','Gujarati (India)'),('gv_GB','gv','manx','Manx (United Kingdom)'),('ha_NG','ha','hausa','Hausa (Nigeria)'),('he_IL','he','hebrew','Hebrew (Israel)'),('hi_IN','hi','hindi','Hindi (India)'),('hr_HR','hr','croatian','Croatian (Croatia)'),('hsb_DE','hsb','upper sorbian','Upper Sorbian (Germany)'),('ht_HT','ht','haitian','Haitian (Haiti)'),('hu_HU','hu','hungarian','Hungarian (Hungary)'),('hy_AM','hy','armenian','Armenian (Armenia)'),('ia','ia','interlingua','Interlingua'),('id_ID','id','indonesian','Indonesian (Indonesia)'),('ig_NG','ig','igbo','Igbo (Nigeria)'),('ik_CA','ik','inupiaq','Inupiaq (Canada)'),('is_IS','is','icelandic','Icelandic (Iceland)'),('it_CH','it','italian','Italian (Switzerland)'),('it_IT','it','italian','Italian (Italy)'),('iu_CA','iu','inuktitut','Inuktitut (Canada)'),('ja_JP','ja','japanese','Japanese (Japan)'),('ka_GE','ka','georgian','Georgian (Georgia)'),('kk_KZ','kk','kazakh','Kazakh (Kazakhstan)'),('kl_GL','kl','kalaallisut','Kalaallisut (Greenland)'),('km_KH','km','khmer','Khmer (Cambodia)'),('kn_IN','kn','kannada','Kannada (India)'),('kok_IN','kok','konkani','Konkani (India)'),('ko_KR','ko','korean','Korean (South Korea)'),('ks_IN','ks','kashmiri','Kashmiri (India)'),('ku_TR','ku','kurdish','Kurdish (Turkey)'),('kw_GB','kw','cornish','Cornish (United Kingdom)'),('ky_KG','ky','kirghiz','Kirghiz (Kyrgyzstan)'),('lg_UG','lg','ganda','Ganda (Uganda)'),('li_BE','li','limburgish','Limburgish (Belgium)'),('li_NL','li','limburgish','Limburgish (Netherlands)'),('lo_LA','lo','lao','Lao (Laos)'),('lt_LT','lt','lithuanian','Lithuanian (Lithuania)'),('lv_LV','lv','latvian','Latvian (Latvia)'),('mai_IN','mai','maithili','Maithili (India)'),('mg_MG','mg','malagasy','Malagasy (Madagascar)'),('mi_NZ','mi','maori','Maori (New Zealand)'),('mk_MK','mk','macedonian','Macedonian (Macedonia)'),('ml_IN','ml','malayalam','Malayalam (India)'),('mn_MN','mn','mongolian','Mongolian (Mongolia)'),('mr_IN','mr','marathi','Marathi (India)'),('ms_BN','ms','malay','Malay (Brunei)'),('ms_MY','ms','malay','Malay (Malaysia)'),('mt_MT','mt','maltese','Maltese (Malta)'),('my_MM','my','burmese','Burmese (Myanmar)'),('naq_NA','naq','namibia','Namibia'),('nb_NO','nb','norwegian bokm?l','Norwegian Bokm?l (Norway)'),('nds_DE','nds','low german','Low German (Germany)'),('nds_NL','nds','low german','Low German (Netherlands)'),('ne_NP','ne','nepali','Nepali (Nepal)'),('nl_AW','nl','dutch','Dutch (Aruba)'),('nl_BE','nl','dutch','Dutch (Belgium)'),('nl_NL','nl','dutch','Dutch (Netherlands)'),('nn_NO','nn','norwegian nynorsk','Norwegian Nynorsk (Norway)'),('no_NO','no','norwegian','Norwegian (Norway)'),('nr_ZA','nr','south ndebele','South Ndebele (South Africa)'),('nso_ZA','nso','northern sotho','Northern Sotho (South Africa)'),('oc_FR','oc','occitan','Occitan (France)'),('om_ET','om','oromo','Oromo (Ethiopia)'),('om_KE','om','oromo','Oromo (Kenya)'),('or_IN','or','oriya','Oriya (India)'),('os_RU','os','ossetic','Ossetic (Russia)'),('pap_AN','pap','papiamento','Papiamento (Netherlands Antilles)'),('pa_IN','pa','punjabi','Punjabi (India)'),('pa_PK','pa','punjabi','Punjabi (Pakistan)'),('pl_PL','pl','polish','Polish (Poland)'),('ps_AF','ps','pashto','Pashto (Afghanistan)'),('pt_BR','pt','portuguese','Portuguese (Brazil)'),('pt_GW','pt','portuguese','Portuguese (Guinea-Bissau)'),('pt_PT','pt','portuguese','Portuguese (Portugal)'),('ro_MD','ro','romanian','Romanian (Moldova)'),('ro_RO','ro','romanian','Romanian (Romania)'),('ru_RU','ru','russian','Russian (Russia)'),('ru_UA','ru','russian','Russian (Ukraine)'),('rw_RW','rw','kinyarwanda','Kinyarwanda (Rwanda)'),('sa_IN','sa','sanskrit','Sanskrit (India)'),('sc_IT','sc','sardinian','Sardinian (Italy)'),('sd_IN','sd','sindhi','Sindhi (India)'),('seh_MZ','seh','sena','Sena (Mozambique)'),('se_NO','se','northern sami','Northern Sami (Norway)'),('sid_ET','sid','sidamo','Sidamo (Ethiopia)'),('si_LK','si','sinhala','Sinhala (Sri Lanka)'),('sk_SK','sk','slovak','Slovak (Slovakia)'),('sl_SI','sl','slovenian','Slovenian (Slovenia)'),('sn_ZW','sn','shona','Shona (Zimbabwe)'),('so_DJ','so','somali','Somali (Djibouti)'),('so_ET','so','somali','Somali (Ethiopia)'),('so_KE','so','somali','Somali (Kenya)'),('so_SO','so','somali','Somali (Somalia)'),('sq_AL','sq','albanian','Albanian (Albania)'),('sq_MK','sq','albanian','Albanian (Macedonia)'),('sr_BA','sr','serbian','Serbian (Bosnia and Herzegovina)'),('sr_ME','sr','serbian','Serbian (Montenegro)'),('sr_RS','sr','serbian','Serbian (Serbia)'),('ss_ZA','ss','swati','Swati (South Africa)'),('st_ZA','st','southern sotho','Southern Sotho (South Africa)'),('sv_FI','sv','swedish','Swedish (Finland)'),('sv_SE','sv','swedish','Swedish (Sweden)'),('sw_KE','sw','swahili','Swahili (Kenya)'),('sw_TZ','sw','swahili','Swahili (Tanzania)'),('ta_IN','ta','tamil','Tamil (India)'),('teo_UG','teo','teso','Teso (Uganda)'),('te_IN','te','telugu','Telugu (India)'),('tg_TJ','tg','tajik','Tajik (Tajikistan)'),('th_TH','th','thai','Thai (Thailand)'),('tig_ER','tig','tigre','Tigre (Eritrea)'),('ti_ER','ti','tigrinya','Tigrinya (Eritrea)'),('ti_ET','ti','tigrinya','Tigrinya (Ethiopia)'),('tk_TM','tk','turkmen','Turkmen (Turkmenistan)'),('tl_PH','tl','tagalog','Tagalog (Philippines)'),('tn_ZA','tn','tswana','Tswana (South Africa)'),('to_TO','to','tongan','Tongan (Tonga)'),('tr_CY','tr','turkish','Turkish (Cyprus)'),('tr_TR','tr','turkish','Turkish (Turkey)'),('ts_ZA','ts','tsonga','Tsonga (South Africa)'),('tt_RU','tt','tatar','Tatar (Russia)'),('ug_CN','ug','uighur','Uighur (China)'),('uk_UA','uk','ukrainian','Ukrainian (Ukraine)'),('ur_PK','ur','urdu','Urdu (Pakistan)'),('uz_UZ','uz','uzbek','Uzbek (Uzbekistan)'),('ve_ZA','ve','venda','Venda (South Africa)'),('vi_VN','vi','vietnamese','Vietnamese (Vietnam)'),('wa_BE','wa','walloon','Walloon (Belgium)'),('wo_SN','wo','wolof','Wolof (Senegal)'),('xh_ZA','xh','xhosa','Xhosa (South Africa)'),('yi_US','yi','yiddish','Yiddish (United States)'),('yo_NG','yo','yoruba','Yoruba (Nigeria)'),('zh_CN','zh','chinese','Chinese (China)'),('zh_HK','zh','chinese','Chinese (Hong Kong SAR China)'),('zh_SG','zh','chinese','Chinese (Singapore)'),('zh_TW','zh','chinese','Chinese (Taiwan)'),('zu_ZA','zu','zulu','Zulu (South Africa)');
/*!40000 ALTER TABLE `tbl_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1' COMMENT '1= active 0=inactive',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu`
--

LOCK TABLES `tbl_menu` WRITE;
/*!40000 ALTER TABLE `tbl_menu` DISABLE KEYS */;
INSERT INTO `tbl_menu` VALUES (1,'dashboard','admin/dashboard','fa fa-dashboard',0,0,'2016-05-31 21:39:50',1),(2,'calendar','admin/calendar','fa fa-calendar',0,1,'2016-05-31 21:40:42',1),(4,'client','admin/client/manage_client','fa fa-users',0,17,'2016-12-08 00:21:10',1),(5,'mailbox','admin/mailbox','fa fa-envelope-o',0,18,'2016-12-08 00:21:10',1),(6,'tickets','#','fa fa-ticket',0,19,'2016-07-30 10:37:58',1),(7,'all_tickets','admin/tickets','fa fa-ticket',6,4,'2016-05-30 17:50:22',1),(8,'answered','admin/tickets/answered','fa fa-circle-o',6,0,'2016-05-30 17:50:22',1),(9,'open','admin/tickets/open','fa fa-circle-o',6,1,'2016-05-30 17:50:22',1),(10,'in_progress','admin/tickets/in_progress','fa fa-circle-o',6,2,'2016-05-30 17:50:22',1),(11,'closed','admin/tickets/closed','fa fa-circle-o',6,3,'2016-05-30 17:50:22',1),(12,'sales','#','fa fa-shopping-cart',0,5,'2016-12-08 00:21:10',1),(13,'invoice','admin/invoice/manage_invoice','fa fa-circle-o',12,0,'2016-07-30 10:37:57',1),(14,'estimates','admin/estimates','fa fa-circle-o',12,2,'2016-07-30 10:37:58',1),(15,'payments_received','admin/invoice/all_payments','fa fa-circle-o',12,3,'2016-05-30 17:58:36',1),(16,'tax_rates','admin/invoice/tax_rates','fa fa-circle-o',12,4,'2016-05-30 17:58:36',1),(21,'quotations','#','fa fa-paste',0,26,'2016-07-30 10:37:59',1),(22,'quotations','admin/quotations','fa fa-circle-o',21,0,'2016-05-30 17:50:23',1),(23,'quotations_form','admin/quotations/quotations_form','fa fa-circle-o',21,1,'2016-05-30 17:50:23',1),(24,'user','admin/user/user_list','fa fa-users',0,29,'2016-07-30 10:37:59',1),(25,'settings','admin/settings','fa fa-cogs',0,31,'2016-07-30 10:37:59',1),(26,'database_backup','admin/settings/database_backup','fa fa-database',0,34,'2016-07-30 10:37:59',1),(29,'transactions','#','fa fa-building-o',0,4,'2016-12-08 00:21:10',1),(30,'deposit','admin/transactions/deposit','fa fa-circle-o',29,2,'2016-05-31 21:55:24',1),(31,'expense','admin/transactions/expense','fa fa-circle-o',29,1,'2016-05-31 21:55:24',1),(32,'transfer','admin/transactions/transfer','fa fa-circle-o',29,0,'2016-05-31 21:55:24',1),(33,'transactions_report','admin/transactions/transactions_report','fa fa-circle-o',29,3,'2016-05-31 21:55:24',1),(34,'balance_sheet','admin/transactions/balance_sheet','fa fa-circle-o',29,4,'2016-05-31 21:55:24',1),(36,'bank_cash','admin/account/manage_account','fa fa-money',0,20,'2016-07-30 10:37:59',1),(39,'items','admin/items/items_list','fa fa-cube',0,22,'2016-07-30 10:37:59',1),(42,'report','#','fa fa-bar-chart',0,24,'2016-07-30 10:37:59',1),(43,'account_statement','admin/report/account_statement','fa fa-circle-o',42,5,'2016-05-30 17:50:23',1),(44,'income_report','admin/report/income_report','fa fa-circle-o',42,6,'2016-05-30 17:50:23',1),(45,'expense_report','admin/report/expense_report','fa fa-circle-o',42,7,'2016-05-30 17:50:23',1),(46,'income_expense','admin/report/income_expense','fa fa-circle-o',42,8,'2016-05-30 17:50:23',1),(47,'date_wise_report','admin/report/date_wise_report','fa fa-circle-o',42,9,'2016-05-30 17:50:23',1),(48,'all_income','admin/report/all_income','fa fa-circle-o',42,10,'2016-05-30 17:50:23',1),(49,'all_expense','admin/report/all_expense','fa fa-circle-o',42,11,'2016-05-30 17:50:23',1),(50,'all_transaction','admin/report/all_transaction','fa fa-circle-o',42,12,'2016-05-30 17:50:23',1),(51,'recurring_invoice','admin/invoice/recurring_invoice','fa fa-circle-o',12,1,'2016-07-30 10:37:58',1),(52,'transfer_report','admin/transactions/transfer_report','fa fa-circle-o',29,5,'2016-05-31 21:55:24',1),(53,'report_by_month','admin/report/report_by_month','fa fa-circle-o',42,13,'2016-05-30 17:50:23',1),(54,'tasks','admin/tasks/all_task','fa fa-tasks',0,11,'2016-12-08 00:21:10',1),(55,'leads','admin/leads','fa fa-rocket',0,10,'2016-12-08 00:21:10',1),(56,'opportunities','admin/opportunities','fa fa-filter',0,13,'2016-12-08 00:21:10',1),(57,'projects','admin/projects','fa fa-folder-open-o',0,2,'2016-12-08 00:21:09',1),(58,'bugs','admin/bugs','fa fa-bug',0,16,'2016-12-08 00:21:10',1),(59,'project','#','fa fa-folder-open-o',42,0,'2016-05-30 17:50:22',1),(60,'tasks_report','admin/report/tasks_report','fa fa-circle-o',42,1,'2016-05-30 17:50:22',1),(61,'bugs_report','admin/report/bugs_report','fa fa-circle-o',42,2,'2016-05-30 17:50:22',1),(62,'tickets_report','admin/report/tickets_report','fa fa-circle-o',42,3,'2016-05-30 17:50:22',1),(63,'client_report','admin/report/client_report','fa fa-circle-o',42,4,'2016-05-30 17:50:23',1),(66,'tasks_assignment','admin/report/tasks_assignment','fa fa-dot-circle-o',59,0,'2016-05-30 17:55:02',1),(67,'bugs_assignment','admin/report/bugs_assignment','fa fa-dot-circle-o',59,1,'2016-05-30 17:55:02',1),(68,'project_report','admin/report/project_report','fa fa-dot-circle-o',59,2,'2016-05-30 17:55:02',1),(69,'goal_tracking','admin/goal_tracking','fa fa-shield',0,25,'2016-07-30 10:37:59',1),(70,'departments','admin/departments','fa fa-user-secret',0,30,'2016-07-30 10:37:59',1),(71,'holiday','admin/holiday','fa fa-calendar-plus-o',0,27,'2016-07-30 10:37:59',1),(72,'leave_management','admin/leave_management','fa fa-plane',0,21,'2016-07-30 10:37:59',1),(73,'utilities','#','fa fa-gift',0,32,'2016-07-30 10:37:59',1),(74,'overtime','admin/utilities/overtime','fa fa-clock-o',73,0,'2016-05-30 17:50:23',1),(75,'stock','#','fa fa-codepen',0,28,'2016-07-30 10:37:59',1),(76,'stock_category','admin/stock/stock_category','fa fa-sliders',75,0,'2016-05-30 17:50:23',1),(77,'manage_stock','#','fa fa-archive',75,1,'2016-05-30 17:50:23',1),(78,'assign_stock','#','fa fa-align-left',75,2,'2016-05-30 17:50:23',1),(79,'stock_report','admin/stock/report','fa fa-line-chart',75,3,'2016-05-30 17:50:23',1),(81,'stock_list','admin/stock/stock_list','fa fa-stack-exchange',77,1,'2016-05-30 17:55:02',1),(82,'assign_stock','admin/stock/assign_stock','fa fa-align-left',78,0,'2016-05-30 17:55:02',1),(83,'assign_stock_report','admin/stock/assign_stock_report','fa fa-bar-chart',78,1,'2016-05-30 17:55:02',1),(84,'stock_history','admin/stock/stock_history','fa fa-file-text-o',77,0,'2016-05-30 17:55:02',1),(85,'performance','#','fa fa-dribbble',0,33,'2016-07-30 10:37:59',1),(86,'performance_indicator','admin/performance/performance_indicator','fa fa-random',85,0,'2016-05-30 17:50:23',1),(87,'performance_report','admin/performance/performance_report','fa fa-calendar-o',85,2,'2016-05-30 17:50:23',1),(88,'give_appraisal','admin/performance/give_performance_appraisal','fa fa-plus',85,1,'2016-05-30 17:50:23',1),(89,'payroll','#','fa fa-usd',0,12,'2016-12-08 00:21:10',1),(90,'manage_salary_details','admin/payroll/manage_salary_details','fa fa-usd',89,2,'2016-05-20 08:37:02',1),(91,'employee_salary_list','admin/payroll/employee_salary_list','fa fa-user-secret',89,3,'2016-05-20 08:37:02',1),(92,'make_payment','admin/payroll/make_payment','fa fa-tasks',89,4,'2016-05-20 08:37:02',1),(93,'generate_payslip','admin/payroll/generate_payslip','fa fa-list-ul',89,5,'2016-05-20 08:37:02',1),(94,'salary_template','admin/payroll/salary_template','fa fa-money',89,0,'2016-05-30 17:50:21',1),(95,'hourly_rate','admin/payroll/hourly_rate','fa fa-clock-o',89,1,'2016-05-30 17:50:22',1),(96,'payroll_summary','admin/payroll/payroll_summary','fa fa-camera-retro',89,6,'2016-05-30 17:50:22',1),(97,'provident_fund','admin/payroll/provident_fund','fa fa-briefcase',0,14,'2016-12-08 00:21:10',1),(98,'advance_salary','admin/payroll/advance_salary','fa fa-cc-mastercard',0,23,'2016-07-30 10:37:59',1),(99,'employee_award','admin/award','fa fa-trophy',0,15,'2016-12-08 00:21:10',1),(100,'announcements','admin/announcements','fa fa-bullhorn icon',0,9,'2016-12-08 00:21:10',1),(101,'training','admin/training','fa fa-suitcase',0,8,'2016-12-08 00:21:10',1),(102,'job_circular','#','fa fa-globe',0,7,'2016-12-08 00:21:10',1),(103,'jobs_posted','admin/job_circular/jobs_posted','fa fa-ticket',102,0,'2016-05-30 17:50:21',1),(104,'jobs_applications','admin/job_circular/jobs_applications','fa fa-compass',102,1,'2016-05-30 17:50:21',1),(105,'attendance','#','fa fa-file-text',0,6,'2016-12-08 00:21:10',1),(106,'timechange_request','admin/attendance/timechange_request','fa fa-calendar-o',105,1,'2016-05-30 17:50:21',1),(107,'attendance_report','admin/attendance/attendance_report','fa fa-file-text',105,2,'2016-05-30 17:50:21',1),(108,'time_history','admin/attendance/time_history','fa fa-clock-o',105,0,'2016-05-30 17:50:21',1),(109,'pull-down','','',0,0,'2016-05-31 21:43:20',0),(110,'filemanager','admin/filemanager','fa fa-file',0,3,'2016-12-08 00:21:10',1);
/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mettings`
--

DROP TABLE IF EXISTS `tbl_mettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mettings` (
  `mettings_id` int(11) NOT NULL AUTO_INCREMENT,
  `leads_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `meeting_subject` varchar(200) NOT NULL,
  `attendees` varchar(300) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`mettings_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mettings`
--

LOCK TABLES `tbl_mettings` WRITE;
/*!40000 ALTER TABLE `tbl_mettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_mettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_migrations`
--

DROP TABLE IF EXISTS `tbl_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_migrations`
--

LOCK TABLES `tbl_migrations` WRITE;
/*!40000 ALTER TABLE `tbl_migrations` DISABLE KEYS */;
INSERT INTO `tbl_migrations` VALUES (112);
/*!40000 ALTER TABLE `tbl_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_milestones`
--

DROP TABLE IF EXISTS `tbl_milestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_milestones` (
  `milestones_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `milestone_name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `client_visible` text,
  PRIMARY KEY (`milestones_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_milestones`
--

LOCK TABLES `tbl_milestones` WRITE;
/*!40000 ALTER TABLE `tbl_milestones` DISABLE KEYS */;
INSERT INTO `tbl_milestones` VALUES (2,57,9,'Design Theme Approval','We need to get the theme for mobile apps finalized.','2017-09-04','2017-09-08',NULL),(3,63,14,'Group chat','Typing status,  online offline','2017-09-07','2017-09-08',NULL),(4,59,12,'First Milestone','Login, Registration, API + API test cases','2017-09-07','2017-09-13',NULL),(5,58,12,'Second Milestone','Side bar (Hamburger), Articals list and detail, Pandit Booking, display and edit Profile','2017-09-14','2017-09-20',NULL),(6,59,13,'First milestone','API + API test cases, Login, Registration and Dashboard\r\nSide bar Create and manage navigation flow','2017-09-07','2017-09-13',NULL),(7,58,13,'Second Milestone','Side bar (Hamburger Menu), Articles list, Articles Detail, Book Pandit and display-edit profile,  search pandit and search articles','2017-09-14','2017-09-20',NULL),(8,50,15,'Splesh Screen','UI And coding','2017-09-11','2017-09-12','Yes'),(9,55,9,'Design Completion','All the IOS and Android App designs','2017-09-14','2017-09-28',NULL),(10,53,9,'Project setup on server ','Set up the clone of web setup on our server so that we make changes to APIs if needed','2017-09-18','2017-09-22',NULL),(11,50,9,'IOS front-end of MVP-1','This includes\r\nUser Onboarding + Hoek screen + categories + Item/product list','2017-09-25','2017-10-06',NULL),(12,50,9,'Android front-end of MVP-1','Moble front end of MVP 1 (follow IOS)','2017-10-01','2017-10-13',NULL),(14,86,9,'Web-Site, with theme Payment, shipment details','We have to integrate the theme provided by the client, integrate payment gateway and the shipment details. ','2017-10-04','2017-10-13',NULL);
/*!40000 ALTER TABLE `tbl_milestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_offence_category`
--

DROP TABLE IF EXISTS `tbl_offence_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_offence_category` (
  `offence_id` int(2) NOT NULL AUTO_INCREMENT,
  `offence_category` varchar(100) NOT NULL,
  PRIMARY KEY (`offence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_offence_category`
--

LOCK TABLES `tbl_offence_category` WRITE;
/*!40000 ALTER TABLE `tbl_offence_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_offence_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_online_payment`
--

DROP TABLE IF EXISTS `tbl_online_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_online_payment` (
  `online_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `icon` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`online_payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_online_payment`
--

LOCK TABLES `tbl_online_payment` WRITE;
/*!40000 ALTER TABLE `tbl_online_payment` DISABLE KEYS */;
INSERT INTO `tbl_online_payment` VALUES (1,'paypal','paypal.png'),(2,'Stripe','stripe.jpg'),(3,'2checkout','2checkout.jpg'),(4,'Authorize.net','Authorizenet.png'),(5,'CCAvenue','CCAvenue.jpg'),(6,'Braintree','Braintree.png');
/*!40000 ALTER TABLE `tbl_online_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_opportunities`
--

DROP TABLE IF EXISTS `tbl_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_opportunities` (
  `opportunities_id` int(11) NOT NULL AUTO_INCREMENT,
  `opportunity_name` varchar(100) NOT NULL,
  `stages` varchar(20) NOT NULL,
  `probability` varchar(20) NOT NULL,
  `close_date` varchar(20) NOT NULL,
  `opportunities_state_reason_id` int(2) NOT NULL,
  `expected_revenue` decimal(10,2) NOT NULL,
  `new_link` varchar(20) NOT NULL,
  `next_action` varchar(100) NOT NULL,
  `next_action_date` varchar(20) NOT NULL,
  `notes` varchar(500) NOT NULL,
  `permission` text,
  PRIMARY KEY (`opportunities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_opportunities`
--

LOCK TABLES `tbl_opportunities` WRITE;
/*!40000 ALTER TABLE `tbl_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_opportunities_state_reason`
--

DROP TABLE IF EXISTS `tbl_opportunities_state_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_opportunities_state_reason` (
  `opportunities_state_reason_id` int(2) NOT NULL AUTO_INCREMENT,
  `opportunities_state` varchar(20) NOT NULL,
  `opportunities_state_reason` varchar(100) NOT NULL,
  PRIMARY KEY (`opportunities_state_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_opportunities_state_reason`
--

LOCK TABLES `tbl_opportunities_state_reason` WRITE;
/*!40000 ALTER TABLE `tbl_opportunities_state_reason` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_opportunities_state_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_overtime`
--

DROP TABLE IF EXISTS `tbl_overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_overtime` (
  `overtime_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `overtime_date` date NOT NULL,
  `overtime_hours` varchar(20) NOT NULL,
  `notes` text,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`overtime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_overtime`
--

LOCK TABLES `tbl_overtime` WRITE;
/*!40000 ALTER TABLE `tbl_overtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_overtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_payment_methods`
--

DROP TABLE IF EXISTS `tbl_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_payment_methods` (
  `payment_methods_id` int(11) NOT NULL AUTO_INCREMENT,
  `method_name` varchar(64) NOT NULL DEFAULT 'Paypal',
  PRIMARY KEY (`payment_methods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment_methods`
--

LOCK TABLES `tbl_payment_methods` WRITE;
/*!40000 ALTER TABLE `tbl_payment_methods` DISABLE KEYS */;
INSERT INTO `tbl_payment_methods` VALUES (1,'Online'),(2,'PayPal'),(3,'Payoneer'),(4,'Bank Transfer'),(5,'Cash ');
/*!40000 ALTER TABLE `tbl_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_payments`
--

DROP TABLE IF EXISTS `tbl_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_payments` (
  `payments_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoices_id` int(11) NOT NULL,
  `trans_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` longtext COLLATE utf8_unicode_ci,
  `currency` varchar(64) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month_paid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_paid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payments`
--

LOCK TABLES `tbl_payments` WRITE;
/*!40000 ALTER TABLE `tbl_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_penalty_category`
--

DROP TABLE IF EXISTS `tbl_penalty_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_penalty_category` (
  `penalty_id` int(2) NOT NULL AUTO_INCREMENT,
  `penalty_type` varchar(100) NOT NULL,
  `fine_amount` int(11) NOT NULL,
  `penalty_days` varchar(10) NOT NULL,
  PRIMARY KEY (`penalty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_penalty_category`
--

LOCK TABLES `tbl_penalty_category` WRITE;
/*!40000 ALTER TABLE `tbl_penalty_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_penalty_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_performance_apprisal`
--

DROP TABLE IF EXISTS `tbl_performance_apprisal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_performance_apprisal` (
  `performance_appraisal_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(2) NOT NULL,
  `general_remarks` text NOT NULL,
  `appraisal_month` varchar(100) NOT NULL,
  `customer_experiece_management` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `marketing` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `management` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `administration` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `presentation_skill` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `quality_of_work` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `efficiency` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `integrity` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  `professionalism` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  `team_work` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  `critical_thinking` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  `conflict_management` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  `attendance` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  `ability_to_meed_deadline` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 (S) = Satisfactory, 2 (U) = Unsatisfactory, 3 (N) = Needs Improvement',
  PRIMARY KEY (`performance_appraisal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_performance_apprisal`
--

LOCK TABLES `tbl_performance_apprisal` WRITE;
/*!40000 ALTER TABLE `tbl_performance_apprisal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_performance_apprisal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_performance_indicator`
--

DROP TABLE IF EXISTS `tbl_performance_indicator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_performance_indicator` (
  `performance_indicator_id` int(5) NOT NULL AUTO_INCREMENT,
  `designations_id` int(2) NOT NULL,
  `customer_experiece_management` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `marketing` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `management` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `administration` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `presentation_skill` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `quality_of_work` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `efficiency` tinyint(1) DEFAULT NULL COMMENT 'Technical - 1 = Beginner, 2 = Intermediate, 3 = Advanced, 4 = Expert / Leader',
  `integrity` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  `professionalism` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  `team_work` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  `critical_thinking` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  `conflict_management` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  `attendance` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  `ability_to_meed_deadline` tinyint(1) DEFAULT NULL COMMENT 'Behavioural - 1 = Beginner, 2 = Intermediate, 3 = Advanced',
  PRIMARY KEY (`performance_indicator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_performance_indicator`
--

LOCK TABLES `tbl_performance_indicator` WRITE;
/*!40000 ALTER TABLE `tbl_performance_indicator` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_performance_indicator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pinaction`
--

DROP TABLE IF EXISTS `tbl_pinaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pinaction` (
  `pinaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pinaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pinaction`
--

LOCK TABLES `tbl_pinaction` WRITE;
/*!40000 ALTER TABLE `tbl_pinaction` DISABLE KEYS */;
INSERT INTO `tbl_pinaction` VALUES (4,63,6,'tasks'),(5,59,13,'project');
/*!40000 ALTER TABLE `tbl_pinaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_priorities`
--

DROP TABLE IF EXISTS `tbl_priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_priorities` (
  `priority` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_priorities`
--

LOCK TABLES `tbl_priorities` WRITE;
/*!40000 ALTER TABLE `tbl_priorities` DISABLE KEYS */;
INSERT INTO `tbl_priorities` VALUES ('High'),('medium'),('low');
/*!40000 ALTER TABLE `tbl_priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_private_message_send`
--

DROP TABLE IF EXISTS `tbl_private_message_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_private_message_send` (
  `private_message_send_id` int(11) NOT NULL AUTO_INCREMENT,
  `send_user_id` int(11) NOT NULL,
  `receive_user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `message_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`private_message_send_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_private_message_send`
--

LOCK TABLES `tbl_private_message_send` WRITE;
/*!40000 ALTER TABLE `tbl_private_message_send` DISABLE KEYS */;
INSERT INTO `tbl_private_message_send` VALUES (5,1,50,'hi','2017-09-06 12:11:09'),(6,1,54,'hi','2017-09-06 12:11:32'),(7,54,1,'hi','2017-09-06 12:12:11'),(8,54,1,'yes','2017-09-06 12:12:26'),(9,70,58,'hi','2017-09-07 05:19:42'),(10,69,62,'test','2017-09-07 05:29:46'),(11,55,50,'Hello, H r u?','2017-09-07 11:10:12'),(12,55,72,'Hi','2017-09-07 11:26:58'),(13,55,72,'Hi','2017-09-07 11:26:59'),(14,72,55,'hello','2017-09-07 11:27:34'),(15,72,55,'Google is an American multinational technology company that specializes in Internet-related services and products. These include online advertising technologies, search, cloud computing, software, and hardware. Wikipedia','2017-09-07 11:28:27'),(16,67,53,'Hello','2017-09-07 11:58:21'),(17,67,71,'hello','2017-09-07 11:58:50'),(18,72,71,'hi','2017-09-07 12:00:00'),(19,71,72,'hello','2017-09-07 12:00:11'),(20,64,53,'hi','2017-09-08 03:48:39'),(21,53,64,'Hello','2017-09-08 03:49:21'),(22,69,72,'hello','2017-09-08 04:51:42'),(23,72,69,'hello','2017-09-08 04:52:29'),(24,65,57,'hi','2017-09-11 13:48:08'),(25,57,65,'HI ','2017-09-11 13:48:31'),(26,57,65,'Dikha me','2017-09-11 13:48:40'),(27,65,57,'Ha Bhai Dikh Gai teri image','2017-09-11 13:49:12'),(28,57,65,'==============================','2017-09-11 13:49:13'),(29,69,76,'hello','2017-09-15 11:21:48'),(30,73,1,'farhan','2017-09-29 05:50:39');
/*!40000 ALTER TABLE `tbl_private_message_send` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_project`
--

DROP TABLE IF EXISTS `tbl_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) NOT NULL,
  `client_id` int(11) NOT NULL,
  `progress` varchar(50) NOT NULL,
  `calculate_progress` varchar(50) DEFAULT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `project_cost` int(11) DEFAULT NULL,
  `demo_url` varchar(100) NOT NULL,
  `project_status` varchar(20) NOT NULL,
  `description` text,
  `notify_client` enum('Yes','No') NOT NULL,
  `timer_status` enum('on','off') DEFAULT NULL,
  `timer_started_by` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `logged_time` int(11) DEFAULT NULL,
  `permission` text,
  `notes` text,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hourly_rate` varchar(200) DEFAULT NULL,
  `fixed_rate` varchar(10) DEFAULT NULL,
  `project_settings` text,
  `with_tasks` enum('yes','no') NOT NULL DEFAULT 'no',
  `estimate_hours` varchar(50) DEFAULT NULL,
  `billing_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_project`
--

LOCK TABLES `tbl_project` WRITE;
/*!40000 ALTER TABLE `tbl_project` DISABLE KEYS */;
INSERT INTO `tbl_project` VALUES (9,'ClothFarm',17,'13','through_tasks','2017-09-04','2017-11-03',0,'www.clothfarm.com','started','<div>E commerce mobile app Native Android and iOS with order tracking feature</div><div><br></div>','Yes','off',NULL,0,1511529441,'{\"49\":[\"view\"],\"50\":[\"view\"],\"55\":[\"view\"],\"57\":[\"view\"],\"71\":[\"view\"],\"86\":[\"edit\",\"delete\",\"view\"]}',NULL,'2017-11-24 13:17:21','',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no','600:00','fixed_rate'),(10,'Educational Toys',18,'0','through_tasks','2017-09-06','2017-10-06',0,'','started','','Yes',NULL,NULL,NULL,NULL,'{\"49\":[\"view\"],\"52\":[\"view\"],\"53\":[\"view\"],\"54\":[\"view\"],\"55\":[\"view\"],\"73\":[\"edit\",\"view\"]}',NULL,'2017-09-06 11:37:24','',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no','160:00','fixed_rate'),(11,'Consagous Australia Website',19,'0','through_tasks','2017-09-06','2017-10-18',0,'','started','','Yes',NULL,NULL,NULL,NULL,'{\"54\":[\"view\"],\"49\":[\"view\"],\"52\":[\"view\"],\"55\":[\"view\"]}',NULL,'2017-09-06 11:45:50','',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no',':00','fixed_rate'),(12,'PM / BA / Documentation Tasks',19,'0','through_tasks','2017-09-06','2017-12-31',0,'','started','','Yes',NULL,NULL,NULL,NULL,'all','Test','2017-09-07 11:35:09','',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no',':00','fixed_rate'),(13,'MyPanditG',19,'100','through_project_hours','2017-09-07','2017-09-22',100,'','in_progress','','Yes','off',59,0,442178,'{\"58\":[\"edit\",\"delete\",\"view\"],\"59\":[\"edit\",\"delete\",\"view\"],\"50\":[\"edit\",\"delete\",\"view\"]}',NULL,'2017-09-14 13:03:40','',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no','100:00','project_hours'),(14,'QuickChat',19,'0','through_project_hours','2017-09-07','2017-09-15',10,'','in_progress','','Yes','off',63,0,1507215651,'{\"50\":[\"edit\",\"delete\",\"view\"],\"63\":[\"edit\",\"delete\",\"view\"]}',NULL,'2017-10-05 15:00:51','1',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no','50:00','project_hours'),(15,'React Native',19,'0','through_tasks','2017-09-11','2017-10-31',10,'','started','For learning purpose','Yes',NULL,NULL,NULL,NULL,'{\"50\":[\"edit\",\"delete\",\"view\"],\"62\":[\"edit\",\"delete\",\"view\"],\"63\":[\"edit\",\"delete\",\"view\"]}',NULL,'2017-09-07 13:03:50','',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no','500:00','fixed_rate'),(16,'purposs',21,'0','through_tasks','2017-09-11','2017-09-12',10,'','completed','issues of slowness and search&nbsp;','Yes',NULL,NULL,NULL,NULL,'{\"50\":[\"edit\",\"delete\",\"view\"],\"58\":[\"edit\",\"delete\",\"view\"]}',NULL,'2017-09-13 06:04:13','10',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no','8:00','project_hours'),(17,'COGO Corrections',19,'54','through_tasks','2017-09-11','2017-10-11',0,'','started','','Yes',NULL,NULL,NULL,NULL,'all',NULL,'2017-10-05 14:07:20','',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no',':00','fixed_rate'),(18,'Estimations',19,'67','through_tasks','2017-09-11','2018-09-30',0,'','started','','Yes',NULL,NULL,NULL,NULL,'all',NULL,'2017-09-12 07:16:42','',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no',':00','fixed_rate'),(19,'Three DS Secure Payment SDK',24,'100',NULL,'2017-09-12','2017-10-31',50,'','in_progress','dfsfdsf','Yes','off',61,0,3628682,'all',NULL,'2017-10-27 04:44:20','45',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no','100:00','project_hours'),(20,'Doctor\'s Appointment App',26,'0',NULL,'2017-09-08','2017-11-30',0,'','started','','Yes',NULL,NULL,NULL,NULL,'all',NULL,'2017-09-13 10:15:35','',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no','984:00','fixed_rate'),(21,'qliniqo',22,'0','through_project_hours','2017-07-25','2017-10-10',0,'https://qliniqo-b6c85.firebaseapp.com/#/signin','started','','Yes',NULL,NULL,NULL,NULL,'{\"50\":[\"edit\",\"delete\",\"view\"],\"70\":[\"edit\",\"delete\",\"view\"],\"85\":[\"edit\",\"view\"]}',NULL,'2017-10-03 12:14:40','',NULL,'[\"show_team_members\",\"show_milestones\",\"show_project_tasks\",\"show_project_attachments\",\"show_timesheets\",\"show_project_bugs\",\"show_project_history\",\"show_project_calendar\",\"show_project_comments\",\"show_gantt_chart\",\"show_project_hours\",\"comment_on_project_tasks\",\"show_project_tasks_attachments\",\"show_tasks_hours\",\"show_finance_overview\"]','no','100:00','fixed_rate');
/*!40000 ALTER TABLE `tbl_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_project_settings`
--

DROP TABLE IF EXISTS `tbl_project_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_project_settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `settings` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_project_settings`
--

LOCK TABLES `tbl_project_settings` WRITE;
/*!40000 ALTER TABLE `tbl_project_settings` DISABLE KEYS */;
INSERT INTO `tbl_project_settings` VALUES (1,'show_team_members','view team members'),(2,'show_milestones','view project milestones'),(5,'show_project_tasks','view project tasks'),(6,'show_project_attachments','view project attachments'),(7,'show_timesheets','view project timesheets'),(8,'show_project_bugs','view project bugs'),(9,'show_project_history','view project history'),(10,'show_project_calendar','view project calendars'),(11,'show_project_comments','view project comments'),(13,'show_gantt_chart','view Gantt chart'),(14,'show_project_hours','view project hours'),(15,'comment_on_project_tasks','access To comment on project tasks'),(16,'show_project_tasks_attachments','view task attachments'),(20,'show_tasks_hours','show_tasks_hours'),(21,'show_finance_overview','show_finance_overview');
/*!40000 ALTER TABLE `tbl_project_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_quotation_details`
--

DROP TABLE IF EXISTS `tbl_quotation_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_quotation_details` (
  `quotation_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `quotations_id` int(11) NOT NULL,
  `quotation_form_data` text,
  `quotation_data` text,
  PRIMARY KEY (`quotation_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_quotation_details`
--

LOCK TABLES `tbl_quotation_details` WRITE;
/*!40000 ALTER TABLE `tbl_quotation_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_quotation_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_quotationforms`
--

DROP TABLE IF EXISTS `tbl_quotationforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_quotationforms` (
  `quotationforms_id` int(11) NOT NULL AUTO_INCREMENT,
  `quotationforms_title` varchar(200) NOT NULL,
  `quotationforms_code` text NOT NULL,
  `quotationforms_status` varchar(20) NOT NULL DEFAULT 'enabled' COMMENT 'enabled/disabled',
  `quotations_created_by_id` int(11) NOT NULL,
  `quotationforms_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`quotationforms_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_quotationforms`
--

LOCK TABLES `tbl_quotationforms` WRITE;
/*!40000 ALTER TABLE `tbl_quotationforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_quotationforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_quotations`
--

DROP TABLE IF EXISTS `tbl_quotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_quotations` (
  `quotations_id` int(11) NOT NULL AUTO_INCREMENT,
  `quotations_form_title` varchar(250) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `quotations_amount` decimal(10,2) DEFAULT NULL,
  `notes` text,
  `reviewer_id` int(11) DEFAULT NULL,
  `reviewed_date` date DEFAULT NULL,
  `quotations_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quotations_status` varchar(15) DEFAULT 'pending' COMMENT 'completed/pending',
  PRIMARY KEY (`quotations_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_quotations`
--

LOCK TABLES `tbl_quotations` WRITE;
/*!40000 ALTER TABLE `tbl_quotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_quotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salary_allowance`
--

DROP TABLE IF EXISTS `tbl_salary_allowance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_salary_allowance` (
  `salary_allowance_id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_template_id` int(11) NOT NULL,
  `allowance_label` varchar(200) NOT NULL,
  `allowance_value` varchar(200) NOT NULL,
  PRIMARY KEY (`salary_allowance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salary_allowance`
--

LOCK TABLES `tbl_salary_allowance` WRITE;
/*!40000 ALTER TABLE `tbl_salary_allowance` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_salary_allowance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salary_deduction`
--

DROP TABLE IF EXISTS `tbl_salary_deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_salary_deduction` (
  `salary_deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_template_id` int(11) NOT NULL,
  `deduction_label` varchar(200) NOT NULL,
  `deduction_value` varchar(200) NOT NULL,
  PRIMARY KEY (`salary_deduction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salary_deduction`
--

LOCK TABLES `tbl_salary_deduction` WRITE;
/*!40000 ALTER TABLE `tbl_salary_deduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_salary_deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salary_payment`
--

DROP TABLE IF EXISTS `tbl_salary_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_salary_payment` (
  `salary_payment_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `payment_month` varchar(20) NOT NULL,
  `fine_deduction` varchar(200) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `comments` text,
  `paid_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`salary_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salary_payment`
--

LOCK TABLES `tbl_salary_payment` WRITE;
/*!40000 ALTER TABLE `tbl_salary_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_salary_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salary_payment_allowance`
--

DROP TABLE IF EXISTS `tbl_salary_payment_allowance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_salary_payment_allowance` (
  `salary_payment_allowance_id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_payment_id` int(11) NOT NULL,
  `salary_payment_allowance_label` varchar(200) NOT NULL,
  `salary_payment_allowance_value` varchar(200) NOT NULL,
  PRIMARY KEY (`salary_payment_allowance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salary_payment_allowance`
--

LOCK TABLES `tbl_salary_payment_allowance` WRITE;
/*!40000 ALTER TABLE `tbl_salary_payment_allowance` DISABLE KEYS */;
INSERT INTO `tbl_salary_payment_allowance` VALUES (1,1,'House Rent Allowance','300'),(2,1,'Medical Allowance','100'),(3,1,'Unit Trust','200'),(4,2,'House Rent Allowance','300'),(5,2,'Medical Allowance','100'),(6,2,'Unit Trust','200');
/*!40000 ALTER TABLE `tbl_salary_payment_allowance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salary_payment_deduction`
--

DROP TABLE IF EXISTS `tbl_salary_payment_deduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_salary_payment_deduction` (
  `salary_payment_deduction` int(11) NOT NULL AUTO_INCREMENT,
  `salary_payment_id` int(11) NOT NULL,
  `salary_payment_deduction_label` varchar(200) NOT NULL,
  `salary_payment_deduction_value` varchar(200) NOT NULL,
  PRIMARY KEY (`salary_payment_deduction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salary_payment_deduction`
--

LOCK TABLES `tbl_salary_payment_deduction` WRITE;
/*!40000 ALTER TABLE `tbl_salary_payment_deduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_salary_payment_deduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salary_payment_details`
--

DROP TABLE IF EXISTS `tbl_salary_payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_salary_payment_details` (
  `salary_payment_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_payment_id` int(11) NOT NULL,
  `salary_payment_details_label` varchar(200) NOT NULL,
  `salary_payment_details_value` varchar(200) NOT NULL,
  PRIMARY KEY (`salary_payment_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salary_payment_details`
--

LOCK TABLES `tbl_salary_payment_details` WRITE;
/*!40000 ALTER TABLE `tbl_salary_payment_details` DISABLE KEYS */;
INSERT INTO `tbl_salary_payment_details` VALUES (1,1,'Salary Grades','Manager'),(2,1,'Basic Salary','2000'),(3,1,'Overtime Salary <small>( Per Hour)</small>','20'),(4,1,'Overtime Hours','0:0'),(5,1,'Overtime Amount','0'),(6,2,'Salary Grades','Manager'),(7,2,'Basic Salary','2000'),(8,2,'Overtime Salary <small>( Per Hour)</small>','20'),(9,2,'Overtime Hours','0:0'),(10,2,'Overtime Amount','0');
/*!40000 ALTER TABLE `tbl_salary_payment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salary_payslip`
--

DROP TABLE IF EXISTS `tbl_salary_payslip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_salary_payslip` (
  `payslip_id` int(5) NOT NULL AUTO_INCREMENT,
  `payslip_number` varchar(100) DEFAULT NULL,
  `salary_payment_id` int(5) NOT NULL,
  `payslip_generate_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`payslip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salary_payslip`
--

LOCK TABLES `tbl_salary_payslip` WRITE;
/*!40000 ALTER TABLE `tbl_salary_payslip` DISABLE KEYS */;
INSERT INTO `tbl_salary_payslip` VALUES (1,NULL,2,'2017-02-15 19:30:55');
/*!40000 ALTER TABLE `tbl_salary_payslip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_salary_template`
--

DROP TABLE IF EXISTS `tbl_salary_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_salary_template` (
  `salary_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_grade` varchar(200) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `overtime_salary` varchar(100) NOT NULL,
  PRIMARY KEY (`salary_template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_salary_template`
--

LOCK TABLES `tbl_salary_template` WRITE;
/*!40000 ALTER TABLE `tbl_salary_template` DISABLE KEYS */;
INSERT INTO `tbl_salary_template` VALUES (1,'Manager','2000','20');
/*!40000 ALTER TABLE `tbl_salary_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saved_items`
--

DROP TABLE IF EXISTS `tbl_saved_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_saved_items` (
  `saved_items_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'Item Name',
  `item_desc` longtext COLLATE utf8_unicode_ci,
  `unit_cost` decimal(10,2) DEFAULT '0.00',
  `item_tax_rate` decimal(10,2) DEFAULT '0.00',
  `item_tax_total` decimal(10,2) DEFAULT '0.00',
  `quantity` decimal(10,2) DEFAULT '0.00',
  `total_cost` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`saved_items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saved_items`
--

LOCK TABLES `tbl_saved_items` WRITE;
/*!40000 ALTER TABLE `tbl_saved_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_saved_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sent`
--

DROP TABLE IF EXISTS `tbl_sent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sent` (
  `sent_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `to` varchar(100) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message_body` text NOT NULL,
  `attach_file` varchar(200) DEFAULT NULL,
  `attach_file_path` text,
  `attach_filename` text,
  `message_time` datetime NOT NULL,
  `deleted` enum('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`sent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sent`
--

LOCK TABLES `tbl_sent` WRITE;
/*!40000 ALTER TABLE `tbl_sent` DISABLE KEYS */;
INSERT INTO `tbl_sent` VALUES (3,1,'devendra.sharma@consagous.com','Test','<p>Demo</p>\r\n',NULL,NULL,NULL,'2017-10-05 12:06:49','No'),(4,1,'devendra.sharma@consagous.com','test','<p>test</p>\r\n',NULL,NULL,NULL,'2017-10-05 12:09:07','No');
/*!40000 ALTER TABLE `tbl_sent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_status`
--

DROP TABLE IF EXISTS `tbl_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_status`
--

LOCK TABLES `tbl_status` WRITE;
/*!40000 ALTER TABLE `tbl_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_stock`
--

DROP TABLE IF EXISTS `tbl_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_sub_category_id` int(11) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `total_stock` int(5) DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_stock`
--

LOCK TABLES `tbl_stock` WRITE;
/*!40000 ALTER TABLE `tbl_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_stock_category`
--

DROP TABLE IF EXISTS `tbl_stock_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_stock_category` (
  `stock_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_category` varchar(200) NOT NULL,
  PRIMARY KEY (`stock_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_stock_category`
--

LOCK TABLES `tbl_stock_category` WRITE;
/*!40000 ALTER TABLE `tbl_stock_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_stock_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_stock_sub_category`
--

DROP TABLE IF EXISTS `tbl_stock_sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_stock_sub_category` (
  `stock_sub_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_category_id` int(11) NOT NULL,
  `stock_sub_category` varchar(200) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`stock_sub_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_stock_sub_category`
--

LOCK TABLES `tbl_stock_sub_category` WRITE;
/*!40000 ALTER TABLE `tbl_stock_sub_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_stock_sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_task`
--

DROP TABLE IF EXISTS `tbl_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_task` (
  `task_id` int(5) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `milestones_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `goal_tracking_id` int(11) DEFAULT NULL,
  `task_name` varchar(200) NOT NULL,
  `task_description` text NOT NULL,
  `task_start_date` date NOT NULL,
  `due_date` date NOT NULL,
  `task_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `task_status` varchar(30) DEFAULT NULL,
  `task_progress` int(2) NOT NULL,
  `task_hour` varchar(10) NOT NULL,
  `tasks_notes` text,
  `timer_status` enum('on','off') NOT NULL DEFAULT 'off',
  `timer_started_by` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `logged_time` int(11) NOT NULL DEFAULT '0',
  `leads_id` int(11) DEFAULT NULL,
  `bug_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `permission` text,
  `client_visible` varchar(5) DEFAULT NULL,
  `custom_date` text,
  `hourly_rate` decimal(18,2) DEFAULT '0.00',
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_task`
--

LOCK TABLES `tbl_task` WRITE;
/*!40000 ALTER TABLE `tbl_task` DISABLE KEYS */;
INSERT INTO `tbl_task` VALUES (3,9,2,NULL,NULL,'First design draft creation','Designer has been shown the website and is asked to follow the same these to create first draft of designs for PM\'s review','2017-09-04','2017-09-06','2017-09-11 10:01:07','completed',100,'20',NULL,'off',NULL,0,2147483647,NULL,NULL,1,'{\"55\":[\"edit\",\"view\"]}',NULL,NULL,0.00),(4,10,0,NULL,NULL,'Get FTP & cpanel detail from client ','','2017-09-04','2017-09-06','2017-09-06 09:53:32','in_progress',0,'0',NULL,'off',NULL,NULL,0,NULL,NULL,1,'{\"52\":[\"edit\",\"view\"]}',NULL,NULL,0.00),(5,11,0,NULL,NULL,'Fix Service page - Mobile development','','2017-09-08','2017-09-12','2017-09-06 11:45:50','in_progress',100,'8',NULL,'off',54,0,62,NULL,NULL,1,'{\"1\":[\"view\"],\"54\":[\"view\"],\"52\":[\"view\"],\"55\":[\"view\"]}',NULL,NULL,0.00),(6,14,3,NULL,NULL,'group chat','','2017-09-07','2017-09-08','2017-09-11 05:48:12','completed',100,'16',NULL,'off',63,0,2147483647,NULL,NULL,50,'all',NULL,NULL,10.00),(7,13,6,NULL,NULL,'API + API test cases','Prepare API arch. as depend on Clean Shit arch. + prepare test cases for API calling','2017-09-07','2017-09-12','2017-09-13 15:09:05','completed',100,'32',NULL,'off',59,0,1505346957,NULL,NULL,59,'all',NULL,NULL,10.00),(8,13,6,NULL,NULL,'Create architecture of Side bar','Create navigation flow and Side bar and there related view.','2017-09-07','2017-09-13','2017-09-13 05:18:04','completed',100,'24',NULL,'off',NULL,NULL,0,NULL,NULL,58,'all',NULL,NULL,20.00),(9,13,6,NULL,NULL,'Create architecture of Side bar','Create navigation flow and Side bar and there related view.','2017-09-07','2017-09-13','2017-09-07 06:43:57','completed',100,'24',NULL,'off',NULL,NULL,0,NULL,NULL,58,'all',NULL,NULL,20.00),(10,15,8,NULL,NULL,'Splesh Screen','Ui and Coding','2017-09-11','2017-09-12','2017-09-07 13:10:08','not_started',0,'16',NULL,'off',NULL,NULL,0,NULL,NULL,62,'{\"50\":[\"edit\",\"delete\",\"view\"]}',NULL,NULL,10.00),(11,9,2,NULL,NULL,'revised draft finalization','','2017-09-11','2017-09-11','2017-09-11 05:56:10','not_started',0,'3',NULL,'off',NULL,NULL,0,NULL,NULL,1,'{\"55\":[\"view\"]}',NULL,NULL,0.00),(12,14,3,NULL,NULL,'Group and one to one chat info and Details','','2017-09-11','2017-09-13','2017-09-12 14:12:35','completed',100,'16',NULL,'off',63,0,56971,NULL,NULL,63,'all',NULL,NULL,13.00),(13,12,4,NULL,NULL,'Market Analysis of COGO as a Project management tool','','2017-09-11','2017-09-13','2017-09-11 06:59:08','not_started',0,'8',NULL,'off',NULL,NULL,0,NULL,NULL,1,'null',NULL,NULL,0.00),(14,17,0,NULL,NULL,'Add Bug- Showing error on form submission','','2017-09-11','2017-09-13','2017-10-05 05:36:01','deferred',100,'1',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(15,17,0,NULL,NULL,'Assign Task to - Not showing correct user list','','2017-09-11','2017-09-13','2017-10-05 10:52:28','completed',100,'2',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(16,17,0,NULL,NULL,'Create Task - error page on form submission','','2017-09-11','2017-09-13','2017-10-05 14:07:20','completed',100,'2',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(17,17,0,NULL,NULL,'Create project - Not able to add all desired people in the project','','2017-09-11','2017-09-13','2017-10-05 13:18:47','completed',100,'2',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(18,18,0,NULL,NULL,'Fitness App','','2017-09-12','2017-09-12','2017-09-12 09:54:31','in_progress',0,'2',NULL,'off',NULL,NULL,0,NULL,NULL,1,'null',NULL,NULL,0.00),(19,18,0,NULL,NULL,'Transporter\'s app','','2017-09-12','2017-09-12','2017-09-12 07:15:59','completed',100,'1',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(20,18,0,NULL,NULL,'Moodle Task- estimates breakup','','2017-09-12','2017-09-12','2017-09-12 07:16:41','completed',100,'1',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(21,17,0,NULL,NULL,'Clock In/out- not able to edit on the next day','','2017-09-13','2017-09-15','2017-09-20 04:48:08','not_started',0,'2',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(22,14,3,NULL,NULL,'Update Profile Pic and Change Status','','2017-09-13','2017-09-14','2017-09-13 14:28:00','completed',100,'8',NULL,'off',63,0,30851,NULL,NULL,63,'all',NULL,NULL,13.00),(23,13,7,NULL,NULL,'All Screen + custom component Design','','2017-09-13','2017-09-19','2017-09-13 05:57:12','in_progress',0,'40',NULL,'off',NULL,NULL,0,NULL,NULL,59,'all',NULL,NULL,10.00),(24,NULL,NULL,NULL,NULL,'All Screen API integration with application flow','','2017-09-13','2017-09-19','2017-09-13 15:01:31','in_progress',0,'40',NULL,'off',59,0,1505346829,NULL,NULL,59,'all',NULL,NULL,10.00),(25,9,9,NULL,NULL,'IOS design completion','','2017-09-13','2017-09-19','2017-09-13 06:06:43','not_started',0,'40',NULL,'off',NULL,NULL,0,NULL,NULL,1,'{\"55\":[\"edit\",\"view\"]}',NULL,NULL,0.00),(26,9,0,NULL,NULL,'Android Design completion','','2017-09-20','2017-09-28','2017-09-13 06:07:55','not_started',0,'40',NULL,'off',NULL,NULL,0,NULL,NULL,1,'{\"55\":[\"edit\",\"view\"]}',NULL,NULL,0.00),(27,9,10,NULL,NULL,'Create a DB clone on our local server and get API access','','2017-09-18','2017-09-19','2017-09-13 06:09:47','not_started',0,'8',NULL,'off',NULL,NULL,0,NULL,NULL,1,'{\"53\":[\"edit\",\"view\"]}',NULL,NULL,0.00),(28,9,10,NULL,NULL,'Review provided APIs and make changes wherever needed','','2017-09-20','2017-09-22','2017-09-13 06:10:48','not_started',0,'20',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(29,17,0,NULL,NULL,'Increase the page size in all listings (projects/users/tasks/leaves) from 10 to 60','','2017-09-13','2017-09-19','2017-09-13 06:12:41','not_started',0,'4',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(30,13,7,NULL,NULL,'All Screen API integration with application flow','','2017-09-13','2017-09-19','2017-09-18 09:25:28','in_progress',0,'40',NULL,'off',59,0,108170,NULL,NULL,59,'all',NULL,NULL,10.00),(31,17,0,NULL,NULL,'need to create a feature to manage time log for non-project tasks as well','','2017-09-19','2017-10-18','2017-09-19 11:38:21','not_started',0,'0',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(32,17,0,NULL,NULL,'Logged in as Admin and NOT able to ClockOut','','2017-09-20','2017-10-10','2017-10-05 12:36:56','completed',100,'20',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(33,17,0,NULL,NULL,'Leave Management- Allow half day leaves as well','','2017-09-22','2017-10-07','2017-09-22 12:34:01','not_started',0,'8',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(34,17,0,NULL,NULL,'Notifications for applied leaves - When request is made, the notify HR. On acceptance or rejection, notify the user','','2017-09-22','2017-09-29','2017-09-22 12:50:15','not_started',0,'8',NULL,'off',NULL,NULL,0,NULL,NULL,1,'all',NULL,NULL,0.00),(35,9,14,NULL,NULL,'Theme Integration with Categories / sub-categories & relevant Images','<p>The list of tasks is as follows:</p><p>Integration of the theme provided by the client, replace its images with Indian outlook / images.&nbsp;</p><p>Creation of Features products / categories / sub-categories similar to that of mobile app.&nbsp;</p><p><br></p>','2017-10-04','2017-10-05','2017-10-04 09:58:28','in_progress',34,'10',NULL,'off',NULL,NULL,0,NULL,NULL,86,'all',NULL,NULL,0.00),(36,9,14,NULL,NULL,'Payment Gateway Integration ','<p>We have to integrate PayU as a payment gateway for India.&nbsp;</p><p>Payment gateway for UAE will be informed later on.&nbsp;</p>','2017-10-05','2017-10-06','2017-10-04 10:01:13','not_started',0,'0',NULL,'off',NULL,NULL,0,NULL,NULL,86,'all',NULL,NULL,0.00),(37,17,NULL,NULL,NULL,'Demo Task','dfdsfdf','2017-10-05','2017-10-05','2017-10-05 10:52:10','completed',100,'10',NULL,'off',NULL,NULL,0,NULL,NULL,69,'{\"69\":[\"edit\",\"delete\",\"view\"]}',NULL,NULL,20.50),(40,17,0,NULL,NULL,'new task check','','2017-10-05','2017-10-05','2017-10-05 10:53:54','completed',100,'1',NULL,'off',NULL,NULL,0,NULL,NULL,1,'{\"69\":[\"edit\",\"delete\",\"view\"]}',NULL,NULL,1.00),(41,17,NULL,NULL,NULL,'task test','dfdfdf','2017-10-05','2017-10-05','2017-10-05 12:38:43','completed',100,'10',NULL,'off',NULL,NULL,0,NULL,NULL,69,'{\"69\":[\"edit\",\"delete\",\"view\"]}',NULL,NULL,20.00);
/*!40000 ALTER TABLE `tbl_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_task_attachment`
--

DROP TABLE IF EXISTS `tbl_task_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_task_attachment` (
  `task_attachment_id` int(5) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `upload_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `leads_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `bug_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`task_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_task_attachment`
--

LOCK TABLES `tbl_task_attachment` WRITE;
/*!40000 ALTER TABLE `tbl_task_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_task_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_task_comment`
--

DROP TABLE IF EXISTS `tbl_task_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_task_comment` (
  `task_comment_id` int(5) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment` text NOT NULL,
  `comment_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `leads_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `bug_id` int(11) DEFAULT NULL,
  `goal_tracking_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`task_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_task_comment`
--

LOCK TABLES `tbl_task_comment` WRITE;
/*!40000 ALTER TABLE `tbl_task_comment` DISABLE KEYS */;
INSERT INTO `tbl_task_comment` VALUES (5,NULL,1,'IN PROGRESS&nbsp;','2017-09-15 11:43:52',NULL,NULL,15,NULL,NULL);
/*!40000 ALTER TABLE `tbl_task_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_task_uploaded_files`
--

DROP TABLE IF EXISTS `tbl_task_uploaded_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_task_uploaded_files` (
  `uploaded_files_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_attachment_id` int(11) NOT NULL,
  `files` text NOT NULL,
  `uploaded_path` text NOT NULL,
  `file_name` text NOT NULL,
  `size` int(10) NOT NULL,
  `ext` varchar(100) NOT NULL,
  `is_image` int(2) NOT NULL,
  `image_width` int(5) NOT NULL,
  `image_height` int(5) NOT NULL,
  PRIMARY KEY (`uploaded_files_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_task_uploaded_files`
--

LOCK TABLES `tbl_task_uploaded_files` WRITE;
/*!40000 ALTER TABLE `tbl_task_uploaded_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_task_uploaded_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tasks_timer`
--

DROP TABLE IF EXISTS `tbl_tasks_timer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tasks_timer` (
  `tasks_timer_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `start_time` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_timed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reason` text CHARACTER SET utf8,
  `edited_by` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tasks_timer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tasks_timer`
--

LOCK TABLES `tbl_tasks_timer` WRITE;
/*!40000 ALTER TABLE `tbl_tasks_timer` DISABLE KEYS */;
INSERT INTO `tbl_tasks_timer` VALUES (24,5,54,'1504698111','1504698158','2017-09-06 11:42:38',NULL,NULL,NULL),(25,5,54,'1504698248','1504698263','2017-09-06 11:44:23',NULL,NULL,NULL),(26,0,59,'1504762317','1504762323','2017-09-07 05:32:03',NULL,NULL,13),(27,6,63,'1504762999','1504763061','2017-09-07 05:44:21',NULL,NULL,NULL),(28,6,63,'1504763071','1504763726','2017-09-07 05:55:26',NULL,NULL,NULL),(29,7,59,'1504765715','1504766885','2017-09-07 06:48:05',NULL,NULL,NULL),(30,6,63,'1504763741','1504776619','2017-09-07 09:30:19',NULL,NULL,NULL),(31,3,NULL,NULL,'1504793644','2017-09-07 14:14:04',NULL,NULL,NULL),(32,0,NULL,NULL,'1504793644','2017-09-07 14:14:04',NULL,NULL,9),(33,6,63,'1504776625','1504796874','2017-09-07 15:07:54',NULL,NULL,NULL),(34,3,NULL,'0','1504796902','2017-09-07 15:08:22',NULL,NULL,NULL),(35,0,NULL,'0','1504796902','2017-09-07 15:08:22',NULL,NULL,9),(36,6,63,'0','1504796905','2017-09-07 15:08:25',NULL,NULL,NULL),(37,0,63,'1504849559','1504849578','2017-09-08 05:46:18',NULL,NULL,14),(38,6,63,'1504849703','1504883362','2017-09-08 15:09:22',NULL,NULL,NULL),(39,6,63,'0','1504883363','2017-09-08 15:09:23',NULL,NULL,NULL),(40,6,63,'0','1504883363','2017-09-08 15:09:23',NULL,NULL,NULL),(41,6,63,'0','1504883364','2017-09-08 15:09:24',NULL,NULL,NULL),(42,6,63,'0','1504883365','2017-09-08 15:09:25',NULL,NULL,NULL),(43,6,63,'0','1504883366','2017-09-08 15:09:26',NULL,NULL,NULL),(44,6,63,'0','1504883366','2017-09-08 15:09:26',NULL,NULL,NULL),(45,6,63,'0','1504883367','2017-09-08 15:09:27',NULL,NULL,NULL),(46,6,63,'0','1504883368','2017-09-08 15:09:28',NULL,NULL,NULL),(47,6,63,'0','1504883369','2017-09-08 15:09:29',NULL,NULL,NULL),(48,6,63,'0','1504883369','2017-09-08 15:09:29',NULL,NULL,NULL),(49,6,63,'0','1504883370','2017-09-08 15:09:30',NULL,NULL,NULL),(50,6,63,'0','1504883371','2017-09-08 15:09:31',NULL,NULL,NULL),(51,6,63,'0','1504883372','2017-09-08 15:09:32',NULL,NULL,NULL),(52,6,63,'0','1504883373','2017-09-08 15:09:33',NULL,NULL,NULL),(53,6,63,'0','1504883374','2017-09-08 15:09:34',NULL,NULL,NULL),(54,6,63,'0','1504883375','2017-09-08 15:09:35',NULL,NULL,NULL),(55,6,63,'0','1504883375','2017-09-08 15:09:35',NULL,NULL,NULL),(56,6,63,'0','1504883376','2017-09-08 15:09:36',NULL,NULL,NULL),(57,6,63,'0','1504883377','2017-09-08 15:09:37',NULL,NULL,NULL),(58,6,63,'0','1504883378','2017-09-08 15:09:38',NULL,NULL,NULL),(59,6,63,'0','1504883378','2017-09-08 15:09:38',NULL,NULL,NULL),(60,6,63,'0','1504883379','2017-09-08 15:09:39',NULL,NULL,NULL),(61,6,63,'0','1504883380','2017-09-08 15:09:40',NULL,NULL,NULL),(62,6,63,'0','1504883465','2017-09-08 15:11:05',NULL,NULL,NULL),(63,0,63,'0','1504883465','2017-09-08 15:11:05',NULL,NULL,14),(64,7,59,'1504766880','1504781100','2017-09-08 15:42:34','leave early due to fever',59,NULL),(65,6,63,'1505108677','1505108688','2017-09-11 05:44:48',NULL,NULL,NULL),(66,6,63,'1505108707','1505108887','2017-09-11 05:48:07',NULL,NULL,NULL),(67,3,NULL,'0','1505124067','2017-09-11 10:01:07',NULL,NULL,NULL),(68,0,NULL,'0','1505124067','2017-09-11 10:01:08',NULL,NULL,9),(69,12,63,'1505109794','1505124748','2017-09-11 10:12:28',NULL,NULL,NULL),(70,3,NULL,'0','1505136981','2017-09-11 13:36:21',NULL,NULL,NULL),(71,0,NULL,'0','1505136981','2017-09-11 13:36:21',NULL,NULL,9),(72,12,63,'1505124760','1505140426','2017-09-11 14:33:46',NULL,NULL,NULL),(73,7,59,'1505106000','1505122200','2017-09-11 15:06:28','Time display mismatch',59,NULL),(74,0,59,'1504766096','1505142388','2017-09-11 15:06:28',NULL,NULL,13),(75,7,59,'1505199347','1505199369','2017-09-12 06:56:09',NULL,NULL,NULL),(76,0,61,'1505201209','1505201212','2017-09-12 07:26:52',NULL,NULL,19),(77,0,61,'1505201245','1505224508','2017-09-12 13:55:08',NULL,NULL,19),(78,0,61,'0','1505224509','2017-09-12 13:55:09',NULL,NULL,19),(79,0,61,'0','1505224510','2017-09-12 13:55:10',NULL,NULL,19),(80,0,61,'0','1505224511','2017-09-12 13:55:11',NULL,NULL,19),(81,0,61,'0','1505224512','2017-09-12 13:55:12',NULL,NULL,19),(82,0,61,'0','1505224512','2017-09-12 13:55:12',NULL,NULL,19),(83,0,61,'0','1505224513','2017-09-12 13:55:13',NULL,NULL,19),(84,0,61,'0','1505224514','2017-09-12 13:55:14',NULL,NULL,19),(85,0,61,'0','1505224515','2017-09-12 13:55:15',NULL,NULL,19),(86,0,61,'0','1505224515','2017-09-12 13:55:15',NULL,NULL,19),(87,0,61,'0','1505224516','2017-09-12 13:55:16',NULL,NULL,19),(88,0,61,'0','1505224517','2017-09-12 13:55:17',NULL,NULL,19),(89,0,61,'0','1505224518','2017-09-12 13:55:18',NULL,NULL,19),(90,0,61,'0','1505224519','2017-09-12 13:55:19',NULL,NULL,19),(91,0,61,'0','1505224519','2017-09-12 13:55:19',NULL,NULL,19),(92,0,61,'0','1505224520','2017-09-12 13:55:20',NULL,NULL,19),(93,0,61,'0','1505224521','2017-09-12 13:55:21',NULL,NULL,19),(94,0,61,'0','1505224522','2017-09-12 13:55:22',NULL,NULL,19),(95,0,61,'0','1505224523','2017-09-12 13:55:23',NULL,NULL,19),(96,0,61,'0','1505224524','2017-09-12 13:55:24',NULL,NULL,19),(97,0,61,'0','1505224524','2017-09-12 13:55:24',NULL,NULL,19),(98,12,63,'1505199198','1505225549','2017-09-12 14:12:29',NULL,NULL,NULL),(99,6,63,'0','1505227574','2017-09-12 14:46:14',NULL,NULL,NULL),(100,0,63,'0','1505227574','2017-09-12 14:46:14',NULL,NULL,14),(101,0,61,'0','1505278142','2017-09-13 04:49:02',NULL,NULL,19),(102,0,61,'0','1505278143','2017-09-13 04:49:03',NULL,NULL,19),(103,0,61,'0','1505278144','2017-09-13 04:49:04',NULL,NULL,19),(104,0,61,'0','1505278144','2017-09-13 04:49:04',NULL,NULL,19),(105,0,61,'0','1505278145','2017-09-13 04:49:05',NULL,NULL,19),(106,0,61,'0','1505278149','2017-09-13 04:49:09',NULL,NULL,19),(107,0,61,'0','1505278151','2017-09-13 04:49:11',NULL,NULL,19),(108,0,61,'0','1505278153','2017-09-13 04:49:13',NULL,NULL,19),(109,0,61,'0','1505278155','2017-09-13 04:49:15',NULL,NULL,19),(110,0,61,'0','1505278157','2017-09-13 04:49:17',NULL,NULL,19),(111,0,61,'0','1505278865','2017-09-13 05:01:05',NULL,NULL,19),(112,0,61,'0','1505278866','2017-09-13 05:01:06',NULL,NULL,19),(113,0,61,'0','1505278866','2017-09-13 05:01:06',NULL,NULL,19),(114,0,61,'0','1505278867','2017-09-13 05:01:07',NULL,NULL,19),(115,0,61,'0','1505278869','2017-09-13 05:01:09',NULL,NULL,19),(116,0,61,'0','1505278869','2017-09-13 05:01:09',NULL,NULL,19),(117,0,61,'0','1505278870','2017-09-13 05:01:10',NULL,NULL,19),(118,0,61,'0','1505278871','2017-09-13 05:01:11',NULL,NULL,19),(119,0,61,'0','1505278871','2017-09-13 05:01:11',NULL,NULL,19),(120,0,61,'0','1505278872','2017-09-13 05:01:12',NULL,NULL,19),(121,0,61,'0','1505278872','2017-09-13 05:01:12',NULL,NULL,19),(122,0,61,'0','1505278873','2017-09-13 05:01:13',NULL,NULL,19),(123,0,61,'0','1505278874','2017-09-13 05:01:14',NULL,NULL,19),(124,0,61,'0','1505278874','2017-09-13 05:01:14',NULL,NULL,19),(125,0,61,'0','1505278875','2017-09-13 05:01:15',NULL,NULL,19),(126,0,61,'0','1505278876','2017-09-13 05:01:16',NULL,NULL,19),(127,0,61,'0','1505278877','2017-09-13 05:01:17',NULL,NULL,19),(128,0,61,'0','1505278878','2017-09-13 05:01:18',NULL,NULL,19),(129,0,61,'0','1505278879','2017-09-13 05:01:19',NULL,NULL,19),(130,0,61,'0','1505278879','2017-09-13 05:01:19',NULL,NULL,19),(131,0,61,'0','1505278880','2017-09-13 05:01:20',NULL,NULL,19),(132,0,61,'0','1505278880','2017-09-13 05:01:20',NULL,NULL,19),(133,0,61,'0','1505278881','2017-09-13 05:01:21',NULL,NULL,19),(134,0,61,'0','1505278882','2017-09-13 05:01:22',NULL,NULL,19),(135,0,61,'0','1505278882','2017-09-13 05:01:22',NULL,NULL,19),(136,0,61,'0','1505279932','2017-09-13 05:18:52',NULL,NULL,19),(137,0,61,'0','1505279933','2017-09-13 05:18:53',NULL,NULL,19),(138,0,61,'0','1505279933','2017-09-13 05:18:53',NULL,NULL,19),(139,0,61,'0','1505279934','2017-09-13 05:18:54',NULL,NULL,19),(140,0,61,'0','1505279936','2017-09-13 05:18:56',NULL,NULL,19),(141,0,61,'0','1505279937','2017-09-13 05:18:57',NULL,NULL,19),(142,0,61,'0','1505279938','2017-09-13 05:18:58',NULL,NULL,19),(143,0,61,'0','1505279964','2017-09-13 05:19:24',NULL,NULL,19),(144,0,61,'0','1505279965','2017-09-13 05:19:25',NULL,NULL,19),(145,0,61,'0','1505279974','2017-09-13 05:19:34',NULL,NULL,19),(146,0,61,'0','1505279975','2017-09-13 05:19:35',NULL,NULL,19),(147,0,61,'0','1505279975','2017-09-13 05:19:35',NULL,NULL,19),(148,0,61,'0','1505279978','2017-09-13 05:19:38',NULL,NULL,19),(149,0,61,'0','1505279979','2017-09-13 05:19:39',NULL,NULL,19),(150,0,61,'0','1505279979','2017-09-13 05:19:39',NULL,NULL,19),(151,0,61,'0','1505279980','2017-09-13 05:19:40',NULL,NULL,19),(152,0,61,'0','1505279982','2017-09-13 05:19:42',NULL,NULL,19),(153,0,61,'0','1505282694','2017-09-13 06:04:54',NULL,NULL,19),(154,0,61,'0','1505282694','2017-09-13 06:04:54',NULL,NULL,19),(155,0,61,'0','1505282695','2017-09-13 06:04:55',NULL,NULL,19),(156,0,61,'0','1505282696','2017-09-13 06:04:56',NULL,NULL,19),(157,0,61,'0','1505282697','2017-09-13 06:04:57',NULL,NULL,19),(158,0,61,'0','1505282698','2017-09-13 06:04:58',NULL,NULL,19),(159,0,61,'0','1505282698','2017-09-13 06:04:58',NULL,NULL,19),(160,0,61,'0','1505282699','2017-09-13 06:04:59',NULL,NULL,19),(161,0,61,'0','1505282700','2017-09-13 06:05:00',NULL,NULL,19),(162,0,61,'0','1505282701','2017-09-13 06:05:01',NULL,NULL,19),(163,22,63,'1505282026','1505312877','2017-09-13 14:27:57',NULL,NULL,NULL),(164,24,59,'1505282952','1505314890','2017-09-13 15:01:30',NULL,NULL,NULL),(165,24,59,'0','1505314891','2017-09-13 15:01:31',NULL,NULL,NULL),(166,3,NULL,'0','1505315273','2017-09-13 15:07:53',NULL,NULL,NULL),(167,0,NULL,'0','1505315273','2017-09-13 15:07:53',NULL,NULL,9),(168,7,59,'0','1505315345','2017-09-13 15:09:05',NULL,NULL,NULL),(169,0,59,'1505278800','1505315340','2017-09-13 15:09:05','start time display from 1970.',59,13),(170,30,59,'1505284200','1505311200','2017-09-14 05:00:16','time issue',59,NULL),(171,0,59,'1505364880','1505394220','2017-09-14 13:03:40',NULL,NULL,13),(172,30,59,'1505365121','1505394231','2017-09-14 13:03:51',NULL,NULL,NULL),(173,0,61,'1505367388','1505450649','2017-09-15 04:44:09',NULL,NULL,19),(174,30,59,'1505450053','1505486701','2017-09-15 14:45:01',NULL,NULL,NULL),(175,30,59,'1505710321','1505713512','2017-09-18 05:45:12',NULL,NULL,NULL),(176,30,59,'1505714507','1505726728','2017-09-18 09:25:28',NULL,NULL,NULL),(177,3,NULL,'0','1505738441','2017-09-18 12:40:41',NULL,NULL,NULL),(178,0,NULL,'0','1505738441','2017-09-18 12:40:41',NULL,NULL,9),(179,3,NULL,'0','1505917349','2017-09-20 14:22:29',NULL,NULL,NULL),(180,0,NULL,'0','1505917349','2017-09-20 14:22:29',NULL,NULL,9),(181,3,NULL,'0','1506348123','2017-09-25 14:02:03',NULL,NULL,NULL),(182,0,NULL,'0','1506348124','2017-09-25 14:02:04',NULL,NULL,9),(183,3,NULL,'0','1506413560','2017-09-26 08:12:40',NULL,NULL,NULL),(184,0,NULL,'0','1506413560','2017-09-26 08:12:40',NULL,NULL,9),(185,6,63,'0','1506695050','2017-09-29 14:24:10',NULL,NULL,NULL),(186,0,63,'0','1506695050','2017-09-29 14:24:10',NULL,NULL,14),(187,3,NULL,'0','1507042478','2017-10-03 14:54:38',NULL,NULL,NULL),(188,0,NULL,'0','1507042479','2017-10-03 14:54:39',NULL,NULL,9),(189,6,63,'0','1507215651','2017-10-05 15:00:51',NULL,NULL,NULL),(190,0,63,'0','1507215651','2017-10-05 15:00:51',NULL,NULL,14),(191,3,NULL,'0','1508250371','2017-10-17 14:26:11',NULL,NULL,NULL),(192,0,NULL,'0','1508250371','2017-10-17 14:26:11',NULL,NULL,9),(193,0,61,'1505450778','1509079460','2017-10-27 04:44:20',NULL,NULL,19),(194,3,NULL,'0','1511439089','2017-11-23 12:11:29',NULL,NULL,NULL),(195,0,NULL,'0','1511439089','2017-11-23 12:11:29',NULL,NULL,9),(196,3,NULL,'0','1511529441','2017-11-24 13:17:21',NULL,NULL,NULL),(197,0,NULL,'0','1511529441','2017-11-24 13:17:21',NULL,NULL,9);
/*!40000 ALTER TABLE `tbl_tasks_timer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tax_rates`
--

DROP TABLE IF EXISTS `tbl_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tax_rates` (
  `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_rate_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `tax_rate_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `permission` text COLLATE utf8_unicode_ci,
  KEY `Index 1` (`tax_rates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tax_rates`
--

LOCK TABLES `tbl_tax_rates` WRITE;
/*!40000 ALTER TABLE `tbl_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tickets`
--

DROP TABLE IF EXISTS `tbl_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tickets` (
  `tickets_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT '0',
  `ticket_code` varchar(32) DEFAULT NULL,
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text,
  `status` varchar(200) DEFAULT NULL,
  `departments_id` int(11) DEFAULT NULL,
  `reporter` int(10) DEFAULT '0',
  `priority` varchar(50) DEFAULT NULL,
  `upload_file` text,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `permission` text,
  `last_reply` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tickets_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tickets`
--

LOCK TABLES `tbl_tickets` WRITE;
/*!40000 ALTER TABLE `tbl_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tickets_replies`
--

DROP TABLE IF EXISTS `tbl_tickets_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tickets_replies` (
  `tickets_replies_id` int(10) NOT NULL AUTO_INCREMENT,
  `tickets_id` bigint(10) DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `replier` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `replierid` int(10) DEFAULT NULL,
  `attachment` text COLLATE utf8_unicode_ci,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tickets_replies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tickets_replies`
--

LOCK TABLES `tbl_tickets_replies` WRITE;
/*!40000 ALTER TABLE `tbl_tickets_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tickets_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_todo`
--

DROP TABLE IF EXISTS `tbl_todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_todo` (
  `todo_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL,
  PRIMARY KEY (`todo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_todo`
--

LOCK TABLES `tbl_todo` WRITE;
/*!40000 ALTER TABLE `tbl_todo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_todo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_training`
--

DROP TABLE IF EXISTS `tbl_training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_training` (
  `training_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `assigned_by` int(11) NOT NULL,
  `training_name` varchar(100) NOT NULL,
  `vendor_name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `finish_date` date NOT NULL,
  `training_cost` varchar(300) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = pending, 1 = started, 2 = completed, 3 = terminated',
  `performance` tinyint(1) DEFAULT '0' COMMENT '0 = not concluded, 1 = satisfactory, 2 = average, 3 = poor, 4 = excellent',
  `remarks` text NOT NULL,
  `upload_file` text NOT NULL,
  `permission` text,
  PRIMARY KEY (`training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_training`
--

LOCK TABLES `tbl_training` WRITE;
/*!40000 ALTER TABLE `tbl_training` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transactions`
--

DROP TABLE IF EXISTS `tbl_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_transactions` (
  `transactions_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `type` enum('Income','Expense','Transfer') NOT NULL,
  `category_id` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `paid_by` int(11) NOT NULL DEFAULT '0',
  `payment_methods_id` int(11) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `status` enum('non_approved','paid','unpaid') DEFAULT 'non_approved',
  `notes` text NOT NULL,
  `tags` text NOT NULL,
  `tax` decimal(18,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `debit` decimal(18,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(18,2) NOT NULL DEFAULT '0.00',
  `total_balance` decimal(18,2) NOT NULL DEFAULT '0.00',
  `transfer_id` int(11) NOT NULL DEFAULT '0',
  `permission` text,
  `attachement` text,
  `client_visible` enum('Yes','No') NOT NULL DEFAULT 'No',
  `added_by` int(11) NOT NULL DEFAULT '0',
  `paid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`transactions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transactions`
--

LOCK TABLES `tbl_transactions` WRITE;
/*!40000 ALTER TABLE `tbl_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transfer`
--

DROP TABLE IF EXISTS `tbl_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_transfer` (
  `transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `to_account_id` int(11) NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `reference` varchar(200) CHARACTER SET utf8 NOT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') CHARACTER SET utf8 NOT NULL DEFAULT 'Cleared',
  `notes` text CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'Transfer',
  `permission` text,
  `attachement` text,
  PRIMARY KEY (`transfer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transfer`
--

LOCK TABLES `tbl_transfer` WRITE;
/*!40000 ALTER TABLE `tbl_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_updates`
--

DROP TABLE IF EXISTS `tbl_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_updates` (
  `build` int(11) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `version` varchar(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `filename` varchar(255) DEFAULT NULL,
  `importance` enum('low','medium','high') DEFAULT 'low',
  `dependencies` varchar(255) DEFAULT NULL,
  `installed` int(11) DEFAULT '0',
  `sql` text,
  `files` text,
  `depends` varchar(255) DEFAULT NULL,
  `includes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`build`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_updates`
--

LOCK TABLES `tbl_updates` WRITE;
/*!40000 ALTER TABLE `tbl_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_uploaded_files`
--

DROP TABLE IF EXISTS `tbl_uploaded_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_uploaded_files` (
  `uploaded_files_id` int(11) NOT NULL AUTO_INCREMENT,
  `files_id` int(11) NOT NULL,
  `files` text NOT NULL,
  `uploaded_path` text NOT NULL,
  `file_name` text NOT NULL,
  `size` int(10) NOT NULL,
  `ext` varchar(100) NOT NULL,
  `is_image` int(2) NOT NULL,
  `image_width` int(5) NOT NULL,
  `image_height` int(5) NOT NULL,
  PRIMARY KEY (`uploaded_files_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_uploaded_files`
--

LOCK TABLES `tbl_uploaded_files` WRITE;
/*!40000 ALTER TABLE `tbl_uploaded_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_uploaded_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_role`
--

DROP TABLE IF EXISTS `tbl_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `designations_id` int(11) DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1986 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_role`
--

LOCK TABLES `tbl_user_role` WRITE;
/*!40000 ALTER TABLE `tbl_user_role` DISABLE KEYS */;
INSERT INTO `tbl_user_role` VALUES (566,1,1),(567,1,2),(568,1,110),(569,1,29),(570,1,32),(571,1,31),(572,1,30),(573,1,33),(574,1,34),(575,1,52),(576,1,12),(577,1,13),(578,1,51),(579,1,14),(580,1,15),(581,1,16),(582,1,105),(583,1,108),(584,1,106),(585,1,107),(586,1,102),(587,1,103),(588,1,104),(589,1,101),(590,1,100),(591,1,55),(592,1,54),(593,1,89),(594,1,94),(595,1,95),(596,1,90),(597,1,91),(598,1,92),(599,1,93),(600,1,96),(601,1,56),(602,1,97),(603,1,99),(604,1,58),(605,1,4),(606,1,5),(607,1,57),(608,1,6),(609,1,8),(610,1,9),(611,1,10),(612,1,11),(613,1,7),(614,1,36),(615,1,72),(616,1,39),(617,1,98),(618,1,42),(619,1,59),(620,1,66),(621,1,67),(622,1,68),(623,1,60),(624,1,61),(625,1,62),(626,1,63),(627,1,43),(628,1,44),(629,1,45),(630,1,46),(631,1,47),(632,1,48),(633,1,49),(634,1,50),(635,1,53),(636,1,69),(637,1,21),(638,1,22),(639,1,23),(640,1,71),(641,1,75),(642,1,76),(643,1,77),(644,1,84),(645,1,81),(646,1,78),(647,1,82),(648,1,83),(649,1,79),(650,1,24),(651,1,70),(652,1,25),(653,1,73),(654,1,74),(655,1,85),(656,1,86),(657,1,88),(658,1,87),(659,1,26),(847,2,1),(848,2,2),(849,2,57),(850,2,110),(851,2,29),(852,2,32),(853,2,31),(854,2,30),(855,2,33),(856,2,34),(857,2,52),(858,2,12),(859,2,13),(860,2,51),(861,2,14),(862,2,15),(863,2,16),(864,2,105),(865,2,108),(866,2,106),(867,2,107),(868,2,102),(869,2,103),(870,2,104),(871,2,101),(872,2,100),(873,2,55),(874,2,54),(875,2,89),(876,2,94),(877,2,95),(878,2,90),(879,2,91),(880,2,92),(881,2,93),(882,2,96),(883,2,56),(884,2,97),(885,2,99),(886,2,58),(887,2,4),(888,2,5),(889,2,6),(890,2,8),(891,2,9),(892,2,10),(893,2,11),(894,2,7),(895,2,36),(896,2,72),(897,2,39),(898,2,98),(899,2,42),(900,2,59),(901,2,66),(902,2,67),(903,2,68),(904,2,60),(905,2,61),(906,2,62),(907,2,63),(908,2,43),(909,2,44),(910,2,45),(911,2,46),(912,2,47),(913,2,48),(914,2,49),(915,2,50),(916,2,53),(917,2,69),(918,2,21),(919,2,22),(920,2,23),(921,2,71),(922,2,75),(923,2,76),(924,2,77),(925,2,84),(926,2,81),(927,2,78),(928,2,82),(929,2,83),(930,2,79),(931,2,24),(932,2,70),(933,2,25),(934,2,73),(935,2,74),(936,2,85),(937,2,86),(938,2,88),(939,2,87),(940,2,26),(941,3,1),(942,3,2),(943,4,1),(944,4,2),(945,5,1),(946,5,2),(947,6,1),(948,6,2),(949,7,1),(950,7,2),(951,31,1),(952,31,2),(953,31,57),(954,31,54),(955,31,58),(956,31,6),(957,31,8),(958,31,9),(959,31,10),(960,31,11),(961,31,7),(962,12,1),(963,12,2),(964,12,57),(965,12,54),(966,12,58),(967,12,5),(968,12,6),(969,12,8),(970,12,9),(971,12,10),(972,12,11),(973,12,7),(976,32,1),(977,32,2),(978,32,57),(979,32,110),(980,32,29),(981,32,32),(982,32,31),(983,32,30),(984,32,33),(985,32,34),(986,32,52),(987,32,12),(988,32,13),(989,32,51),(990,32,14),(991,32,15),(992,32,16),(993,32,105),(994,32,108),(995,32,106),(996,32,107),(997,32,102),(998,32,103),(999,32,104),(1000,32,101),(1001,32,100),(1002,32,55),(1003,32,54),(1004,32,89),(1005,32,94),(1006,32,95),(1007,32,90),(1008,32,91),(1009,32,92),(1010,32,93),(1011,32,96),(1012,32,56),(1013,32,97),(1014,32,99),(1015,32,58),(1016,32,4),(1017,32,5),(1018,32,6),(1019,32,8),(1020,32,9),(1021,32,10),(1022,32,11),(1023,32,7),(1024,32,36),(1025,32,72),(1026,32,39),(1027,32,98),(1028,32,42),(1029,32,59),(1030,32,66),(1031,32,67),(1032,32,68),(1033,32,60),(1034,32,61),(1035,32,62),(1036,32,63),(1037,32,43),(1038,32,44),(1039,32,45),(1040,32,46),(1041,32,47),(1042,32,48),(1043,32,49),(1044,32,50),(1045,32,53),(1046,32,69),(1047,32,21),(1048,32,22),(1049,32,23),(1050,32,71),(1051,32,75),(1052,32,76),(1053,32,77),(1054,32,84),(1055,32,81),(1056,32,78),(1057,32,82),(1058,32,83),(1059,32,79),(1060,32,24),(1061,32,70),(1062,32,25),(1063,32,73),(1064,32,74),(1065,32,85),(1066,32,86),(1067,32,88),(1068,32,87),(1069,32,26),(1070,33,1),(1071,33,2),(1072,33,57),(1073,33,110),(1074,33,29),(1075,33,32),(1076,33,31),(1077,33,30),(1078,33,33),(1079,33,34),(1080,33,52),(1081,33,12),(1082,33,13),(1083,33,51),(1084,33,14),(1085,33,15),(1086,33,16),(1087,33,105),(1088,33,108),(1089,33,106),(1090,33,107),(1091,33,102),(1092,33,103),(1093,33,104),(1094,33,101),(1095,33,100),(1096,33,55),(1097,33,54),(1098,33,89),(1099,33,94),(1100,33,95),(1101,33,90),(1102,33,91),(1103,33,92),(1104,33,93),(1105,33,96),(1106,33,56),(1107,33,97),(1108,33,99),(1109,33,58),(1110,33,4),(1111,33,5),(1112,33,6),(1113,33,8),(1114,33,9),(1115,33,10),(1116,33,11),(1117,33,7),(1118,33,36),(1119,33,72),(1120,33,39),(1121,33,98),(1122,33,42),(1123,33,59),(1124,33,66),(1125,33,67),(1126,33,68),(1127,33,60),(1128,33,61),(1129,33,62),(1130,33,63),(1131,33,43),(1132,33,44),(1133,33,45),(1134,33,46),(1135,33,47),(1136,33,48),(1137,33,49),(1138,33,50),(1139,33,53),(1140,33,69),(1141,33,21),(1142,33,22),(1143,33,23),(1144,33,71),(1145,33,75),(1146,33,76),(1147,33,77),(1148,33,84),(1149,33,81),(1150,33,78),(1151,33,82),(1152,33,83),(1153,33,79),(1154,33,24),(1155,33,70),(1156,33,25),(1157,33,73),(1158,33,74),(1159,33,85),(1160,33,86),(1161,33,88),(1162,33,87),(1163,33,26),(1164,34,1),(1165,34,2),(1166,34,57),(1167,34,110),(1168,34,6),(1169,34,8),(1170,34,9),(1171,34,10),(1172,34,11),(1173,34,7),(1174,34,72),(1175,34,42),(1176,34,59),(1177,34,66),(1178,34,67),(1179,34,68),(1180,34,60),(1181,34,61),(1182,34,62),(1183,34,63),(1184,34,43),(1185,34,44),(1186,34,45),(1187,34,46),(1188,34,47),(1189,34,48),(1190,34,49),(1191,34,50),(1192,34,53),(1193,34,71),(1194,34,85),(1195,34,86),(1196,34,88),(1197,34,87),(1238,36,1),(1239,36,2),(1240,36,57),(1241,36,110),(1242,36,105),(1243,36,108),(1244,36,106),(1245,36,107),(1246,36,6),(1247,36,8),(1248,36,9),(1249,36,10),(1250,36,11),(1251,36,7),(1252,36,71),(1253,36,85),(1254,36,86),(1255,36,88),(1256,36,87),(1287,38,1),(1288,38,2),(1289,39,1),(1290,39,2),(1291,39,57),(1292,39,110),(1293,39,29),(1294,39,32),(1295,39,31),(1296,39,30),(1297,39,33),(1298,39,34),(1299,39,52),(1300,39,12),(1301,39,13),(1302,39,51),(1303,39,14),(1304,39,15),(1305,39,16),(1306,39,105),(1307,39,108),(1308,39,106),(1309,39,107),(1310,39,102),(1311,39,103),(1312,39,104),(1313,39,101),(1314,39,100),(1315,39,55),(1316,39,54),(1317,39,89),(1318,39,94),(1319,39,95),(1320,39,90),(1321,39,91),(1322,39,92),(1323,39,93),(1324,39,96),(1325,39,56),(1326,39,97),(1327,39,99),(1328,39,58),(1329,39,4),(1330,39,5),(1331,39,6),(1332,39,8),(1333,39,9),(1334,39,10),(1335,39,11),(1336,39,7),(1337,39,36),(1338,39,72),(1339,39,39),(1340,39,98),(1341,39,42),(1342,39,59),(1343,39,66),(1344,39,67),(1345,39,68),(1346,39,60),(1347,39,61),(1348,39,62),(1349,39,63),(1350,39,43),(1351,39,44),(1352,39,45),(1353,39,46),(1354,39,47),(1355,39,48),(1356,39,49),(1357,39,50),(1358,39,53),(1359,39,69),(1360,39,21),(1361,39,22),(1362,39,23),(1363,39,71),(1364,39,75),(1365,39,76),(1366,39,77),(1367,39,84),(1368,39,81),(1369,39,78),(1370,39,82),(1371,39,83),(1372,39,79),(1373,39,24),(1374,39,70),(1375,39,25),(1376,39,73),(1377,39,74),(1378,39,85),(1379,39,86),(1380,39,88),(1381,39,87),(1382,39,26),(1383,40,1),(1384,40,2),(1385,41,1),(1386,41,2),(1387,42,1),(1388,42,2),(1389,43,1),(1390,43,2),(1391,44,1),(1392,44,2),(1395,46,1),(1396,46,2),(1399,48,1),(1400,48,2),(1513,35,1),(1514,35,2),(1515,35,57),(1516,35,110),(1517,35,105),(1518,35,108),(1519,35,106),(1520,35,107),(1521,35,100),(1522,35,54),(1523,35,6),(1524,35,8),(1525,35,9),(1526,35,10),(1527,35,11),(1528,35,7),(1529,35,71),(1530,35,85),(1531,35,87),(1532,59,1),(1533,59,2),(1534,60,1),(1535,60,2),(1536,61,1),(1537,61,2),(1600,50,1),(1601,50,2),(1602,50,57),(1603,50,110),(1604,50,105),(1605,50,108),(1606,50,106),(1607,50,100),(1608,50,58),(1609,50,5),(1610,50,6),(1611,50,8),(1612,50,9),(1613,50,10),(1614,50,11),(1615,50,7),(1616,50,72),(1617,50,71),(1618,49,1),(1619,49,2),(1620,49,57),(1621,49,110),(1622,49,105),(1623,49,108),(1624,49,106),(1625,49,107),(1626,49,100),(1627,49,54),(1628,49,58),(1629,49,4),(1630,49,5),(1631,49,6),(1632,49,8),(1633,49,9),(1634,49,10),(1635,49,11),(1636,49,7),(1637,49,72),(1638,49,98),(1639,49,42),(1640,49,59),(1641,49,66),(1642,49,67),(1643,49,68),(1644,49,60),(1645,49,61),(1646,49,62),(1647,49,47),(1648,49,53),(1649,49,69),(1650,49,71),(1651,49,73),(1652,49,74),(1653,49,26),(1654,51,1),(1655,51,2),(1656,51,57),(1657,51,110),(1658,51,100),(1659,51,58),(1660,51,5),(1661,51,6),(1662,51,8),(1663,51,9),(1664,51,10),(1665,51,11),(1666,51,7),(1667,51,72),(1668,51,71),(1701,63,1),(1702,63,2),(1703,63,29),(1704,63,32),(1705,63,31),(1706,63,30),(1707,63,33),(1708,63,34),(1709,63,52),(1710,63,105),(1711,63,107),(1712,63,102),(1713,63,103),(1714,63,104),(1715,63,97),(1716,63,99),(1717,63,4),(1718,63,5),(1719,63,72),(1720,63,39),(1721,63,21),(1722,63,22),(1723,63,23),(1724,63,71),(1725,63,75),(1726,63,76),(1727,63,77),(1728,63,84),(1729,63,81),(1730,63,78),(1731,63,82),(1732,63,83),(1733,63,79),(1734,62,1),(1735,62,2),(1736,62,29),(1737,62,32),(1738,62,31),(1739,62,30),(1740,62,33),(1741,62,34),(1742,62,52),(1743,62,105),(1744,62,108),(1745,62,106),(1746,62,107),(1747,62,102),(1748,62,103),(1749,62,104),(1750,62,101),(1751,62,100),(1752,62,54),(1753,62,89),(1754,62,94),(1755,62,95),(1756,62,90),(1757,62,91),(1758,62,92),(1759,62,93),(1760,62,96),(1761,62,97),(1762,62,99),(1763,62,4),(1764,62,5),(1765,62,36),(1766,62,72),(1767,62,39),(1768,62,98),(1769,62,42),(1770,62,43),(1771,62,44),(1772,62,45),(1773,62,46),(1774,62,47),(1775,62,48),(1776,62,49),(1777,62,50),(1778,62,53),(1779,62,21),(1780,62,22),(1781,62,23),(1782,62,71),(1783,62,24),(1784,62,85),(1785,62,86),(1786,62,88),(1787,62,87),(1788,47,1),(1789,47,2),(1790,47,57),(1791,47,105),(1792,47,108),(1793,47,106),(1794,47,107),(1795,47,54),(1796,47,58),(1797,47,6),(1798,47,8),(1799,47,9),(1800,47,10),(1801,47,11),(1802,47,7),(1803,47,72),(1804,47,71),(1805,37,1),(1806,37,2),(1807,37,57),(1808,37,110),(1809,37,105),(1810,37,108),(1811,37,106),(1812,37,107),(1813,37,102),(1814,37,104),(1815,37,100),(1816,37,54),(1817,37,58),(1818,37,6),(1819,37,8),(1820,37,9),(1821,37,10),(1822,37,11),(1823,37,7),(1824,37,72),(1825,37,42),(1826,37,59),(1827,37,66),(1828,37,67),(1829,37,68),(1830,37,60),(1831,37,61),(1832,37,62),(1833,37,63),(1834,37,71),(1835,45,1),(1836,45,2),(1837,45,57),(1838,45,105),(1839,45,108),(1840,45,106),(1841,45,107),(1842,45,100),(1843,45,58),(1844,45,6),(1845,45,8),(1846,45,9),(1847,45,10),(1848,45,11),(1849,45,7),(1850,45,72),(1851,45,71),(1852,54,1),(1853,54,2),(1854,54,57),(1855,54,105),(1856,54,108),(1857,54,106),(1858,54,107),(1859,54,58),(1860,54,6),(1861,54,8),(1862,54,9),(1863,54,10),(1864,54,11),(1865,54,7),(1866,54,72),(1867,54,71),(1868,55,1),(1869,55,2),(1870,55,57),(1871,55,105),(1872,55,108),(1873,55,106),(1874,55,107),(1875,55,58),(1876,55,6),(1877,55,8),(1878,55,9),(1879,55,10),(1880,55,11),(1881,55,7),(1882,55,72),(1883,55,71),(1884,56,1),(1885,56,2),(1886,56,57),(1887,56,54),(1888,56,58),(1889,56,6),(1890,56,8),(1891,56,9),(1892,56,10),(1893,56,11),(1894,56,7),(1895,56,72),(1896,56,71),(1897,58,1),(1898,58,2),(1899,58,57),(1900,58,105),(1901,58,108),(1902,58,106),(1903,58,107),(1904,58,58),(1905,58,6),(1906,58,8),(1907,58,9),(1908,58,10),(1909,58,11),(1910,58,7),(1911,58,72),(1912,58,71),(1913,57,1),(1914,57,2),(1915,57,57),(1916,57,105),(1917,57,108),(1918,57,106),(1919,57,107),(1920,57,58),(1921,57,6),(1922,57,8),(1923,57,9),(1924,57,10),(1925,57,11),(1926,57,7),(1927,57,72),(1928,57,71),(1929,52,1),(1930,52,2),(1931,52,57),(1932,52,110),(1933,52,105),(1934,52,108),(1935,52,106),(1936,52,107),(1937,52,100),(1938,52,58),(1939,52,5),(1940,52,6),(1941,52,8),(1942,52,9),(1943,52,10),(1944,52,11),(1945,52,7),(1946,52,72),(1947,52,71),(1948,53,1),(1949,53,2),(1950,53,57),(1951,53,110),(1952,53,105),(1953,53,108),(1954,53,106),(1955,53,107),(1956,53,100),(1957,53,58),(1958,53,5),(1959,53,6),(1960,53,8),(1961,53,9),(1962,53,10),(1963,53,11),(1964,53,7),(1965,53,72),(1966,53,71),(1969,64,1),(1970,64,2),(1971,64,57),(1972,64,105),(1973,64,108),(1974,64,106),(1975,64,107),(1976,64,54),(1977,64,58),(1978,64,6),(1979,64,8),(1980,64,9),(1981,64,10),(1982,64,11),(1983,64,7),(1984,64,72),(1985,64,71);
/*!40000 ALTER TABLE `tbl_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(4) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `online_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = online 0 = offline ',
  `permission` text COLLATE utf8_unicode_ci,
  `active_email` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_email_type` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_encription` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_action` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_host_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_additional_flag` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_postmaster_run` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_path_slug` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'admin','a9ae5e33a66a71176d5fe3dc7bbeef2531f42054f352da619b8ca75dea06ef5d320d49fcd919275ef32d04048c53668e5b4c22940ddef16615fe04a9f67caf1d','demo@gmail.com',1,1,0,'',NULL,NULL,'admin@teamdeck.co','49315fd6116d162eea47a98904e37b9a','::1','2017-10-05 20:30:14','0000-00-00 00:00:00','2017-10-05 15:00:14',0,'all','on','on','on','on','imap.gmail.com','nayeem.edu01@gmail.com','23611125','993','/notls','1462138336',NULL),(49,'rupal','abe9afadbdfe2f2287cbe72098e6f68c35078227887771c0e06dd15fee4b06e4e82c07ed049ff390e698e1092b8c1954f970f7ec894f828011d06e551d38b94c','rupal.juneja@consagous.com',1,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-04 07:29:59',0,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'naveensharma','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','naveen.sharma@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-06 06:44:50',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'naveensharma'),(51,'deeptirai','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','deepti.rai@consagous.com',1,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-09-11 15:26:34','0000-00-00 00:00:00','2017-09-12 05:29:01',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'adityapatel','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','aditya.patel@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-06 07:27:13',0,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'vipinsharma','d73a54c99192b872440addae837fce6964168a216e0e259e0e2381c9aba1336953c116d46dac34f90cd372b1b347613014f68799dc91dfdc7fdda48df5ffe2e3','vipin.sharma@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-09-07 17:41:35','0000-00-00 00:00:00','2017-09-08 03:35:59',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'mukeshsingh','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','mukesh.singh@consagous.com',1,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-06 11:40:17',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'chetansant','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','chetan.sant@consagous.com',3,1,0,NULL,'cceee85500c1f7b0e9ad1e7ba2c565f4','2017-09-13 16:26:32',NULL,NULL,'111.118.252.146','2017-09-21 22:27:03','0000-00-00 00:00:00','2017-09-22 04:42:30',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'chetansant'),(56,'mayankneema','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','mayank.neema@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-07 06:20:31',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'ambujsingh','3dc6d38f15a152dda7b682679905ec24b57906b382ae51e6073282d891a4fe9298f4db983e9a75bff8e4d6e70a5fac292d0fdd75b217174cd1022551d213baa9','ambul.singh@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-11 05:20:09',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'rajeshsijoria','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','rajesh.sijoria@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-09-15 10:54:57','0000-00-00 00:00:00','2017-09-15 05:24:59',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rajeshsijoria'),(59,'rajeshyadav','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','rajesh.yadav@consagous.com',3,1,0,NULL,'e285d4f1ebfe210de137c9659ac69388','2017-11-06 10:21:39',NULL,NULL,'111.118.252.146','2017-09-13 20:39:05','0000-00-00 00:00:00','2017-11-06 04:51:39',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rajeshyadav'),(60,'hemantkumar','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','hemant.himnani@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-11-17 19:45:45','0000-00-00 00:00:00','2017-11-18 05:50:49',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'meghaneema','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','megha.neema@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-10-27 10:14:20','0000-00-00 00:00:00','2017-10-27 04:44:20',0,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'pankajsaad','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','pankaj.saad@consagous.com',3,1,0,NULL,'f51f1ca797735c7221accde2abea140b','2017-12-01 20:17:42',NULL,NULL,'111.118.252.146','2017-10-16 20:05:35','0000-00-00 00:00:00','2017-12-01 14:47:42',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'krishnapalsingh','3e2129849a267ecdf2f23bb4f4708de660c8d5f10d88de4bc1823551c9424cd36555982a6d8a8446666c076ddd8251194975d96bb0f9893053e9720fe9582f6f','krishnapal.singh@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-10-05 20:30:51','0000-00-00 00:00:00','2017-10-06 05:45:08',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'salmankhan','c4eedf9ca6ebb3f6e676a6fc51ae27c10eed51d9d85ab5c65e1060b86b7d1918935db3d380a223969b58286c028f5d7e1259f330cd8571e1957b93af06c88fd1','salman.khan@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-10-26 10:51:01','0000-00-00 00:00:00','2017-10-26 05:21:21',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'salmankhan'),(65,'vishaldubey','a06e65e5cf4b1507ec4046e0a1a6e83fed3aa1ee242adc0a0f957ae8ee49be181ff5e2509e106ecb35bd1115dab0baedd2c2e771ac77ecdc2f0ede0d5cd17b8b','vishal.dubey@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-09-22 19:37:18','0000-00-00 00:00:00','2017-09-25 04:57:48',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,'govindchilwal','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','govind.chilwal@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-06 09:04:10',0,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,'ravikantverma','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','ravikant.verma@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-07 11:57:59',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'pramodjain','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','pramod.jain@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-08 05:32:23',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'devendrasharma','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','devendra.sharma@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-10-05 20:30:39','0000-00-00 00:00:00','2017-10-06 05:28:06',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,'gouravpandya','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','gaurav.pandya@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-10-27 10:13:00','0000-00-00 00:00:00','2017-10-27 04:43:04',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,'anujburnwal','f98bce9a4239ab3453acecf6ee82c721e11a47fb2a8c221c72d544343248795db926ecb68e10c8a950c5e21da48f61e344600f8b65b058f6e0af3a0b467185fc','anuj.burnawal@consagous.com',3,1,0,NULL,NULL,NULL,'anuj@consagous.com','425bf38f321ef2e14da3536b1623a356','111.118.252.146','2017-10-18 19:12:01','0000-00-00 00:00:00','2017-11-02 04:47:54',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'bhanuprakashjaiswal','81f21da8292a540a0fa8fb091fd9b2e264f399b61641c9421d7c2f6743c6553939a426976fc21e583ece214a5dde59f2160cdd5e21235c2eef68b315039641ae','bhanupraksh.jaiswal@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-11-10 10:21:04','0000-00-00 00:00:00','2017-11-10 04:51:04',0,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,'farhansheikh','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','farhan.sheikh@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-11-08 19:42:01','0000-00-00 00:00:00','2017-11-08 14:12:01',0,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,'deepakpathak','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','deepak.pathak@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-06 09:22:11',0,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,'poojajagga','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','pooja.jagga@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-13 05:31:43',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'nidhitrivedi','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','nidhi.trivedi@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-09-22 18:05:14','0000-00-00 00:00:00','2017-09-22 12:35:14',0,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,'divyapatil','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','divya.patil@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-11-24 18:47:21','0000-00-00 00:00:00','2017-11-27 04:18:54',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,'shalinisilarpuriya','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','shalini.silarpuriya@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-10-06 19:20:31','0000-00-00 00:00:00','2017-10-09 05:12:21',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,'arvindshakya','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','arvind.shakya@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-09-13 19:28:13','0000-00-00 00:00:00','2017-09-14 04:58:04',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,'kritikajoshi','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','kritika.joshi@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-11-27 19:04:28','0000-00-00 00:00:00','2017-11-28 04:29:15',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,'vivekkaushik','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','vivek.kaushuik@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-06 09:34:43',0,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,'rashmichouhan','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','rashmi.chouhan@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-11-06 19:46:50','0000-00-00 00:00:00','2017-11-07 04:53:33',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,'ravikantvarma','0d861854c7817d078ed297892ba8a4eac01128196d48c0f0fc29466eb878516cf7b69664b67e8739a3341390738f785a9c98bf7f850ff72e9575785f1d85bdca','ravikant.varma@consagous.com',2,0,0,NULL,NULL,NULL,NULL,'fe453c6f97b91e08e612e078facff0b1','0','0000-00-00 00:00:00','2017-09-07 17:16:56','2017-09-07 11:46:56',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,'akhileshsharma','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','akhilesh.sharma@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-27 11:50:57',0,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,'surajpalsania','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','suraj.palsania@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-10-03 12:07:19',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,'kaushalendrapandey','17ada7ce7a6a9f01f0aabbb431321d365b01a3e3474f107562e738afbfe0c13abf9ea7ee61e22c990912fd2bc5ef0e4c657b4c82f132bf8e79f6dacb14d3c466','kaushalendra.pandey@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','2017-10-04 15:37:13','0000-00-00 00:00:00','2017-10-04 10:07:13',0,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kaushalendrapandey'),(87,'kishorpanar','6b55e1dbc8cf2399d49eebf8f5431a3cf225125f2f0108a0565a28f44d0b808a56ed96462d83466221e9efde37b5a77c1b587c31d4e028cc035b207ad2ea30cc','kishor.pawar@consagous.com',3,1,0,NULL,NULL,NULL,NULL,NULL,'111.118.252.146','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-10-04 10:14:46',1,'all',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_working_days`
--

DROP TABLE IF EXISTS `tbl_working_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_working_days` (
  `working_days_id` int(11) NOT NULL AUTO_INCREMENT,
  `day_id` int(5) NOT NULL,
  `start_hours` time NOT NULL,
  `end_hours` time NOT NULL,
  `flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`working_days_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_working_days`
--

LOCK TABLES `tbl_working_days` WRITE;
/*!40000 ALTER TABLE `tbl_working_days` DISABLE KEYS */;
INSERT INTO `tbl_working_days` VALUES (1,1,'09:30:00','19:00:00',0),(2,2,'09:30:00','19:00:00',0),(3,3,'09:30:00','19:00:00',1),(4,4,'09:30:00','19:00:00',1),(5,5,'09:30:00','19:00:00',1),(6,6,'09:30:00','19:00:00',1),(7,7,'09:30:00','19:00:00',1);
/*!40000 ALTER TABLE `tbl_working_days` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-09 14:58:12
