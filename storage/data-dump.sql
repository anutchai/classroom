-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: classroom
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from` bigint NOT NULL,
  `to` bigint NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (1,7,15,'เด็กเวร',1,'2021-03-23 15:18:44','2021-03-23 15:19:16'),(2,3,15,'เหมือนหล่ออะ',1,'2021-03-23 15:18:47','2021-03-23 15:19:17'),(3,3,15,'หิวๆๆๆๆๆ',1,'2021-03-23 15:18:50','2021-03-23 15:19:17'),(4,3,15,'ๆ',1,'2021-03-23 15:18:51','2021-03-23 15:19:17'),(5,3,15,'ๆ',1,'2021-03-23 15:18:51','2021-03-23 15:19:17'),(6,3,15,'ๆ',1,'2021-03-23 15:18:51','2021-03-23 15:19:17'),(7,3,15,'ๆ',1,'2021-03-23 15:18:51','2021-03-23 15:19:17'),(8,3,15,'ๆ',1,'2021-03-23 15:18:52','2021-03-23 15:19:17'),(9,3,15,'ๆ',1,'2021-03-23 15:18:52','2021-03-23 15:19:17'),(10,3,15,'ๆ',1,'2021-03-23 15:18:52','2021-03-23 15:19:17'),(11,3,15,'ๆ',1,'2021-03-23 15:18:52','2021-03-23 15:19:17'),(12,3,15,'ๆ',1,'2021-03-23 15:18:52','2021-03-23 15:19:17'),(13,3,15,'ๆ',1,'2021-03-23 15:18:53','2021-03-23 15:19:17'),(14,3,15,'ๆ',1,'2021-03-23 15:18:53','2021-03-23 15:19:17'),(15,3,15,'ๆ',1,'2021-03-23 15:18:53','2021-03-23 15:19:17'),(16,3,15,'ๆ',1,'2021-03-23 15:18:53','2021-03-23 15:19:17'),(17,3,15,'ๆ',1,'2021-03-23 15:18:54','2021-03-23 15:19:17'),(18,3,15,'ๆๆ',1,'2021-03-23 15:18:54','2021-03-23 15:19:17'),(19,3,15,'ๆ',1,'2021-03-23 15:18:54','2021-03-23 15:19:17'),(20,3,15,'ๆ',1,'2021-03-23 15:18:54','2021-03-23 15:19:17'),(21,3,15,'ๆ',1,'2021-03-23 15:18:55','2021-03-23 15:19:17'),(22,3,15,'ๆ',1,'2021-03-23 15:18:55','2021-03-23 15:19:17'),(23,3,15,'ๆ',1,'2021-03-23 15:18:55','2021-03-23 15:19:17'),(24,3,15,'หิวครับ',0,'2021-03-23 15:19:29','2021-03-23 15:19:29'),(25,15,3,'สักเหงี่ยมั้ย',0,'2021-03-23 15:19:29','2021-03-23 15:19:29'),(26,11,13,'eieiei',1,'2021-03-23 15:19:37','2021-03-23 15:20:08'),(27,13,11,'อิอิ',1,'2021-03-23 15:19:41','2021-03-23 15:20:02'),(28,17,33,'Say somethings...',0,'2021-03-23 15:19:58','2021-03-23 15:19:58');
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_comments`
--

DROP TABLE IF EXISTS `classroom_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom_comments` (
  `cmt_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `con_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `cmt_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cmt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom_comments`
--

LOCK TABLES `classroom_comments` WRITE;
/*!40000 ALTER TABLE `classroom_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `classroom_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_contents`
--

DROP TABLE IF EXISTS `classroom_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom_contents` (
  `con_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cls_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `con_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `con_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `con_originalname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom_contents`
--

LOCK TABLES `classroom_contents` WRITE;
/*!40000 ALTER TABLE `classroom_contents` DISABLE KEYS */;
INSERT INTO `classroom_contents` VALUES (2,1,1,'เฉลยข้อสอบกลางภาค','files/1/RMGWKHqulGKXhVw8fasfTA6syDLC5TXs0I8gJIeJ.pdf','เฉลยข้อสอบ1.pdf','2021-03-22 22:33:16','2021-03-22 22:33:16'),(3,1,1,'Week 12: Preprocessor and Macro\r\n1. เนื้อหารายวิชา\r\n2. เขียนโปรแกรมในภาคปฏิบัติ\r\n3. ทำความเข้าใจกับเกม\r\n4. เล่นเกมเกี่ยวกับเนื้อหา','files/1/3kbBsDHngC08D9yP6HD57ds5zKx9PuzkJy5dd2qp.pdf','Computer and Programming 12 Preprocessor and Macro.pdf','2021-03-29 19:12:05','2021-03-29 19:12:05'),(4,1,1,'Source Code','files/1/OqEfZ2sEi6Vn3SOsVtBb24WJ39CA5IndQA76TFhu.c','question.c','2021-03-30 14:02:37','2021-03-30 14:02:37'),(5,1,19,'code','files/1/sQbM7HtN4q3AOaV0ZvW74a4xNSanA2NZ7E3HUrJJ.png','166443633_170741348213161_6592054482676377492_n.png','2021-03-30 14:38:41','2021-03-30 14:38:41'),(6,1,3,'.','files/1/mDHHn2AwsQ2wGRgcDI1siozKIrW5zDiYiMrmu2jA.png','Screenshot 2021-03-30 144326.png','2021-03-30 14:45:48','2021-03-30 14:45:48'),(7,1,2,'v','files/1/oXWF1OmdFwaFsBbCZmo77XI7yIMBjJO1bUH3cBJY.png','Screenshot 2021-03-30 144622.png','2021-03-30 14:47:01','2021-03-30 14:47:01'),(8,1,1,'แบบประเมินความพึงพอใจต่อการเรียนในรายวิชาภาษา C\r\nhttps://forms.gle/vvJ68BN49oBVcZULA',NULL,NULL,'2021-04-20 09:58:10','2021-04-20 09:58:10'),(9,1,1,'Final Week: เรื่องการจัดการ File\r\nhttps://www.youtube.com/watch?v=8CahiQnPiEk&list=PLXFtvFbzHDly2LCu1j8BHsmfD946kv9Si&index=30\r\nหมายเหตุ นักศึกษาสามารถเรียนทบทวนความจากช่องนี้ ของ ผศ.ดร.สรเดช ครุฑจ้อน ได้ทั้งหมด','files/1/QZPfT4JXc6Jfhvcq5y2mCsL6Ard1XATcoEJuXY8t.png','C Video.PNG','2021-04-20 10:15:57','2021-04-20 10:15:57'),(10,1,1,'ข้อสอบจำนวนทั้งหมด 10 (60 คะแนน)\r\nข้อเขียนทั้งหมด\r\nแนวข้อสอบ\r\n1. Pointer เรื่อง Address Result\r\n2. Pointer เรื่อง Array\r\n3.1 Struct เรื่อง การวิเคราะห์ข้อมูลเพื่อสร้าง Struct\r\n3.2 Struct เรื่อง เขียนโปรแกรมจากที่ทำการวิเคราะห์\r\n4. Union เรื่อง Concept\r\n5. Enum เรื่อง ให้เติมคำ\r\n6. Preprocessor เรื่อง ความหมายของแต่ละตัว\r\n7. Macro เรื่อง Object Like Macro และ Function Like Macro\r\n8. File เรื่อง ความหมายของ Mode การทำงานแต่ละตัว\r\n9. File เรื่อง เขียนโปรแกรม export file text\r\n10 Summary เรื่อง mind map สรุปความคิดรวบยอดด้านการเขียนโปรแกรม','files/1/vPte8Re21wq1YCkdWHRIgb6XtfZunXK4NQz0cso1.txt','แนวข้อสอบปลายภาค.txt','2021-04-20 10:16:48','2021-04-20 12:59:44');
/*!40000 ALTER TABLE `classroom_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_division_users`
--

DROP TABLE IF EXISTS `classroom_division_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom_division_users` (
  `divu_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `div_id` bigint unsigned NOT NULL,
  `cls_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `div_usr_total_match` tinyint NOT NULL,
  `div_usr_total_win` tinyint NOT NULL,
  `div_usr_total_draw` tinyint NOT NULL,
  `div_usr_total_lose` tinyint NOT NULL,
  `div_usr_total_point` int NOT NULL,
  `div_usr_rank` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`divu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom_division_users`
--

LOCK TABLES `classroom_division_users` WRITE;
/*!40000 ALTER TABLE `classroom_division_users` DISABLE KEYS */;
INSERT INTO `classroom_division_users` VALUES (5,6,1,2,2,2,0,0,6,1,NULL,'2021-04-26 13:23:18'),(6,6,1,7,2,0,0,2,0,4,NULL,'2021-04-26 13:23:18'),(7,6,1,3,2,1,0,1,3,2,NULL,'2021-04-26 13:23:18'),(8,6,1,15,2,1,0,1,3,3,NULL,'2021-04-26 13:23:18'),(9,7,1,5,2,0,1,1,1,4,NULL,'2021-04-26 13:23:18'),(10,7,1,6,2,1,0,1,3,3,NULL,'2021-04-26 13:23:18'),(11,7,1,9,2,1,0,1,3,2,NULL,'2021-04-26 13:23:18'),(12,7,1,8,2,1,1,0,4,1,NULL,'2021-04-26 13:23:18'),(14,8,1,19,2,2,0,0,6,1,NULL,'2021-04-26 13:23:18'),(15,8,1,17,2,0,0,2,0,4,NULL,'2021-04-26 13:23:18'),(16,8,1,28,2,1,1,0,4,2,NULL,'2021-04-26 13:23:18'),(17,9,1,23,2,1,1,0,4,2,NULL,'2021-04-26 13:23:18'),(18,9,1,22,2,0,1,1,1,4,NULL,'2021-04-26 13:23:18'),(19,9,1,25,2,0,1,1,1,3,NULL,'2021-04-26 13:23:18'),(20,9,1,27,2,1,1,0,4,1,NULL,'2021-04-26 13:23:18'),(25,5,1,13,2,0,1,1,1,3,NULL,'2021-04-26 13:23:18'),(26,5,1,4,2,0,0,2,0,4,NULL,'2021-04-26 13:23:18'),(27,5,1,11,2,1,1,0,4,2,NULL,'2021-04-26 13:23:18'),(28,5,1,14,2,2,0,0,6,1,NULL,'2021-04-26 13:23:18'),(35,8,1,32,2,0,1,1,1,3,NULL,'2021-04-26 13:23:18'),(36,11,1,16,2,1,0,1,3,2,NULL,'2021-04-26 13:23:18'),(37,11,1,12,2,0,1,1,1,4,NULL,'2021-04-26 13:23:18'),(38,11,1,29,2,1,1,0,4,1,NULL,'2021-04-26 13:23:18'),(39,11,1,30,2,0,2,0,2,3,NULL,'2021-04-26 13:23:18'),(40,10,1,21,2,1,0,1,3,2,NULL,'2021-04-26 13:23:18'),(41,10,1,20,2,0,1,1,1,3,NULL,'2021-04-26 13:23:18'),(42,10,1,31,2,0,1,1,1,4,NULL,'2021-04-26 13:23:18'),(43,10,1,33,2,2,0,0,6,1,NULL,'2021-04-26 13:23:18');
/*!40000 ALTER TABLE `classroom_division_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_divisions`
--

DROP TABLE IF EXISTS `classroom_divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom_divisions` (
  `div_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cls_id` bigint unsigned NOT NULL,
  `div_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `div_role` longtext COLLATE utf8mb4_unicode_ci,
  `div_win` tinyint NOT NULL,
  `div_draw` tinyint NOT NULL,
  `div_lose` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`div_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom_divisions`
--

LOCK TABLES `classroom_divisions` WRITE;
/*!40000 ALTER TABLE `classroom_divisions` DISABLE KEYS */;
INSERT INTO `classroom_divisions` VALUES (5,1,'Dog Division','--',3,1,0,'2021-03-16 16:12:27','2021-03-16 16:12:27'),(6,1,'Cat Division','--',3,1,0,'2021-03-16 16:12:46','2021-03-16 16:12:46'),(7,1,'Bird Division','--',3,1,0,'2021-03-16 16:12:58','2021-03-16 16:12:58'),(8,1,'Ant Division','--',3,1,0,'2021-03-16 16:13:09','2021-03-16 16:13:09'),(9,1,'Panda Division','--',3,1,0,'2021-03-16 16:13:21','2021-03-16 16:13:21'),(10,1,'Lion Division','--',3,1,0,'2021-03-16 16:13:32','2021-03-16 16:13:32'),(11,1,'Tiger Division','--',3,1,0,'2021-03-16 16:13:41','2021-03-16 16:13:41'),(12,1,'Fish Division','--',3,1,0,'2021-03-16 16:13:54','2021-03-16 16:13:54');
/*!40000 ALTER TABLE `classroom_divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_parings`
--

DROP TABLE IF EXISTS `classroom_parings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom_parings` (
  `par_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cls_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `usr_paring` bigint unsigned NOT NULL,
  `par_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`par_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom_parings`
--

LOCK TABLES `classroom_parings` WRITE;
/*!40000 ALTER TABLE `classroom_parings` DISABLE KEYS */;
INSERT INTO `classroom_parings` VALUES (1,1,15,13,'Like','2021-03-23 14:39:16','2021-03-23 14:39:16'),(2,1,15,11,'Like','2021-03-23 14:39:22','2021-03-23 14:39:22'),(3,1,15,7,'Like','2021-03-23 14:39:32','2021-03-23 14:39:32'),(4,1,15,3,'Like','2021-03-23 14:39:36','2021-03-23 14:39:36'),(5,1,32,25,'Unlike','2021-03-23 14:45:42','2021-03-23 14:45:42'),(6,1,3,15,'Like','2021-03-23 15:18:19','2021-03-23 15:18:19'),(7,1,29,23,'Unlike','2021-03-23 15:18:22','2021-03-23 15:18:22'),(8,1,3,2,'Like','2021-03-23 15:18:27','2021-03-23 15:18:27'),(9,1,29,12,'Like','2021-03-23 15:18:27','2021-03-23 15:18:27'),(10,1,16,17,'Unlike','2021-03-23 15:18:29','2021-03-23 15:18:29'),(11,1,7,15,'Like','2021-03-23 15:18:30','2021-03-23 15:18:30'),(12,1,30,8,'Like','2021-03-23 15:18:34','2021-03-23 15:18:34'),(13,1,11,13,'Like','2021-03-23 15:18:34','2021-03-23 15:18:34'),(14,1,4,14,'Like','2021-03-23 15:18:42','2021-03-23 15:18:42'),(15,1,31,2,'Like','2021-03-23 15:18:44','2021-03-23 15:18:44'),(16,1,20,17,'Like','2021-03-23 15:18:44','2021-03-23 15:18:44'),(17,1,17,33,'Like','2021-03-23 15:18:47','2021-03-23 15:18:47'),(18,1,9,5,'Like','2021-03-23 15:18:48','2021-03-23 15:18:48'),(19,1,31,8,'Like','2021-03-23 15:18:50','2021-03-23 15:18:50'),(20,1,31,28,'Like','2021-03-23 15:18:55','2021-03-23 15:18:55'),(21,1,14,3,'Like','2021-03-23 15:18:55','2021-03-23 15:18:55'),(22,1,9,6,'Like','2021-03-23 15:18:56','2021-03-23 15:18:56'),(23,1,14,21,'Like','2021-03-23 15:19:01','2021-03-23 15:19:01'),(24,1,6,16,'Like','2021-03-23 15:19:02','2021-03-23 15:19:02'),(25,1,29,7,'Unlike','2021-03-23 15:19:08','2021-03-23 15:19:08'),(26,1,9,30,'Like','2021-03-23 15:19:11','2021-03-23 15:19:11'),(27,1,29,32,'Like','2021-03-23 15:19:15','2021-03-23 15:19:15'),(28,1,6,9,'Like','2021-03-23 15:19:17','2021-03-23 15:19:17'),(29,1,17,27,'Like','2021-03-23 15:19:17','2021-03-23 15:19:17'),(30,1,17,9,'Like','2021-03-23 15:19:20','2021-03-23 15:19:20'),(31,1,29,31,'Like','2021-03-23 15:19:20','2021-03-23 15:19:20'),(32,1,9,31,'Like','2021-03-23 15:19:20','2021-03-23 15:19:20'),(33,1,29,3,'Like','2021-03-23 15:19:23','2021-03-23 15:19:23'),(34,1,17,28,'Like','2021-03-23 15:19:23','2021-03-23 15:19:23'),(35,1,13,11,'Like','2021-03-23 15:19:23','2021-03-23 15:19:23'),(36,1,20,4,'Like','2021-03-23 15:19:25','2021-03-23 15:19:25'),(37,1,31,20,'Like','2021-03-23 15:19:25','2021-03-23 15:19:25'),(38,1,33,17,'Like','2021-03-23 15:19:25','2021-03-23 15:19:25'),(39,1,17,14,'Like','2021-03-23 15:19:25','2021-03-23 15:19:25'),(40,1,29,6,'Like','2021-03-23 15:19:27','2021-03-23 15:19:27'),(41,1,20,3,'Like','2021-03-23 15:19:27','2021-03-23 15:19:27'),(42,1,4,15,'Like','2021-03-23 15:19:29','2021-03-23 15:19:29'),(43,1,8,31,'Like','2021-03-23 15:19:31','2021-03-23 15:19:31'),(44,1,20,11,'Like','2021-03-23 15:19:31','2021-03-23 15:19:31'),(45,1,21,15,'Like','2021-03-23 15:19:32','2021-03-23 15:19:32'),(46,1,19,32,'Like','2021-03-23 15:19:34','2021-03-23 15:19:34'),(47,1,20,23,'Like','2021-03-23 15:19:34','2021-03-23 15:19:34'),(48,1,17,8,'Like','2021-03-23 15:19:35','2021-03-23 15:19:35'),(49,1,17,15,'Like','2021-03-23 15:19:37','2021-03-23 15:19:37'),(50,1,20,6,'Like','2021-03-23 15:19:39','2021-03-23 15:19:39'),(51,1,17,13,'Like','2021-03-23 15:19:40','2021-03-23 15:19:40'),(52,1,19,22,'Like','2021-03-23 15:19:41','2021-03-23 15:19:41'),(53,1,20,12,'Like','2021-03-23 15:19:42','2021-03-23 15:19:42'),(54,1,20,30,'Like','2021-03-23 15:19:46','2021-03-23 15:19:46'),(55,1,19,23,'Like','2021-03-23 15:19:47','2021-03-23 15:19:47'),(56,1,20,22,'Like','2021-03-23 15:19:49','2021-03-23 15:19:49'),(57,1,20,7,'Like','2021-03-23 15:19:52','2021-03-23 15:19:52'),(58,1,20,21,'Like','2021-03-23 15:19:55','2021-03-23 15:19:55'),(59,1,20,32,'Like','2021-03-23 15:19:57','2021-03-23 15:19:57'),(60,1,20,5,'Like','2021-03-23 15:19:59','2021-03-23 15:19:59'),(61,1,20,31,'Like','2021-03-23 15:20:02','2021-03-23 15:20:02'),(62,1,17,29,'Unlike','2021-03-23 15:20:18','2021-03-23 15:20:18'),(63,1,17,2,'Like','2021-03-23 15:20:22','2021-03-23 15:20:22'),(64,1,17,25,'Like','2021-03-23 15:20:29','2021-03-23 15:20:29'),(65,1,33,31,'Like','2021-03-23 15:20:58','2021-03-23 15:20:58'),(66,1,33,30,'Like','2021-03-23 15:21:10','2021-03-23 15:21:10'),(67,1,27,6,'Like','2021-03-30 14:02:39','2021-03-30 14:02:39'),(68,1,17,16,'Like','2021-03-30 14:34:51','2021-03-30 14:34:51');
/*!40000 ALTER TABLE `classroom_parings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_pretest_exams`
--

DROP TABLE IF EXISTS `classroom_pretest_exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom_pretest_exams` (
  `exm_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pt_id` bigint unsigned NOT NULL,
  `cls_id` bigint unsigned NOT NULL,
  `exm_question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exm_choice_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exm_choice_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exm_choice_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exm_choice_4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `exm_answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`exm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom_pretest_exams`
--

LOCK TABLES `classroom_pretest_exams` WRITE;
/*!40000 ALTER TABLE `classroom_pretest_exams` DISABLE KEYS */;
INSERT INTO `classroom_pretest_exams` VALUES (1,1,1,'ข้อใดต่อไปนี้ไม่ใช่ภาษาที่ใช้สำหรับการเขียนโปรแกรม ','C','PHP','Jhva','Python','3','2021-04-20 09:40:26','2021-04-20 09:40:26'),(2,1,1,'การแปลภาษาคอมพิวเตอร์เป็นรหัสภาษาเครื่องมือที่มีการแปลทีละบรรทัดเรียกว่าอะไร ','Compiler','Interpreter','Assembler','Run-time','2','2021-04-20 09:40:26','2021-04-20 09:40:26'),(3,1,1,'การแปลภาษาคอมพิวเตอร์เป็นรหัสภาษาเครื่องมือที่มีการแปลพร้อมกันทั้งหมดเรียกว่าอะไร ','Compiler','Interpreter','Assembler','Run-time','1','2021-04-20 09:40:26','2021-04-20 09:40:26'),(4,1,1,'ข้อใดต่อไปนี้ไม่ใช่ Text Editor ที่ใช้สำหรับการเขียนโปรแกรม ','Dev-C++','MinGW','Notepad','VS-Code','2','2021-04-20 09:40:26','2021-04-20 09:40:26'),(5,1,1,'ข้อใดต่อไปนี้คือประโยชน์มากที่สุดของ Version Control','ช่วยให้เขียนโปรแกรมได้เร็วขึ้น','ช่วยให้เขียนโปรแกรมได้ทุกที่','ช่วยให้ย้อนกลับไปใช้โปรแกรมเดิมได้','ช่วยให้เขียนโปรแกรมได้อย่างถูกต้อง','3','2021-04-20 09:40:26','2021-04-20 09:40:26'),(6,1,1,'ข้อใดต่อไปนี้ไม่ใช่ขั้นตอนหลักในการพัฒนาระบบ','วิเคราะห์ระบบ','ทดสอบระบบ','จัดทำคู่มือ','ขายระบบ','4','2021-04-20 09:40:26','2021-04-20 09:40:26'),(7,1,1,'ข้อใดต่อไปนี้คือความหมายของ ซูโดโค้ด (Pseudocode)','การเขียนรหัสเทียมเพื่อให้สามารถพัฒนาระบบได้ง่าย','การเขียนหลักการของกระบวนการทำงาน','การเขียนอัลกอริทึมโดยใช้ภาษาอังกฤษที่สื่อความหมายง่าย ๆ','การเขียนตรรกะศาสตร์ของโปรแกรม','3','2021-04-20 09:40:26','2021-04-20 09:40:26'),(8,1,1,'ข้อใดต่อไปนี้คือความหมายของ โฟลวชาร์ต (FlowChart)','การเขียนรหัสเทียม โดยใช้สัญลักษณ์รูปภาพ','การเขียนหลักการของกระบวนการทำงาน ','การเขียนอัลกอริทึมโดยใช้สัญลักษณ์รูปภาพ','การเขียนตรรกะศาสตร์ของโปรแกรม','3','2021-04-20 09:40:26','2021-04-20 09:40:26'),(9,1,1,'สัญลักษณ์รูปสี่เหลี่ยมผืนผ้ามีความหมายตรงกับข้อใด','จุดเริ่มต้น','รับข้อมูล','รับข้อมูลนำเข้าจากคีย์บอร์ด','การคำนวณ','4','2021-04-20 09:40:26','2021-04-20 09:40:26'),(10,1,1,'ตัวแปรใช้เพื่อทำอะไรในการเขียนโปรแกรม','การเขียนข้อมูล','การเก็บข้อมูล','การทำงานอย่างมีเงื่อนไข','การทำงานซ้ำ','2','2021-04-20 09:40:26','2021-04-20 09:40:26'),(11,1,1,'ข้อใดต่อไปนี้ประกาศชื่อตัวแปรไม่ถูกต้อง','int abc;','float _name;','double 2a;','char TeSt4;','3','2021-04-20 09:40:26','2021-04-20 09:40:26'),(12,1,1,'เมื่อ x += 10 ; มีความหมายเหมือนกับข้อใด','x+10;','x++;','x = x+10;','x ^ 10;','3','2021-04-20 09:40:26','2021-04-20 09:40:26'),(13,1,1,'ถ้า A มีค่าความจริงเป็น จริง และเมื่อ B มีค่าความจริงเป็นเท็จ ถ้าใช้ตรรกะ && จะได้ผลลัพท์เป็นอะไร','0','จริง','เท็จ','ไม่มีค่า','3','2021-04-20 09:40:26','2021-04-20 09:40:26'),(14,1,1,'ฟังก์ชันที่สำหรับแสดงผลออกทางหน้าจอในภาษา C ใช้ฟังก์ชันใด','print()','printf()','display()','echo()','2','2021-04-20 09:40:26','2021-04-20 09:40:26'),(15,1,1,'ถ้าต้องการใช้ข้อมูลตัวแปรประเภท int จะต้องใช้ตัวแทนชนิดข้อมูลข้อใด','%c','%s','%f','%d','4','2021-04-20 09:40:26','2021-04-20 09:40:26'),(16,1,1,'รหัส \\n มีความหมายตรงกับข้อใด','ส่งเสียง 1 ครั้ง','ขึ้นหน้าใหม่','แท็บแนวนอน','ขึ้นบรรทัดใหม่','4','2021-04-20 09:40:26','2021-04-20 09:40:26'),(17,1,1,'ฟังก์ชัน scanf() ไว้สำหรับทำอะไรในภาษา C','เพิ่มข้อมูล','รับข้อมูล','ลบข้อมูล','ตรวจสอบข้อมูล','2','2021-04-20 09:40:26','2021-04-20 09:40:26'),(18,1,1,'ถ้าต้องการโปรแกรมแบบมีเงื่อนไขควรใช้คำสั่งใดต่อไปนี้','if','then','for','while','1','2021-04-20 09:40:26','2021-04-20 09:40:26'),(19,1,1,'การเขียนโปรแกรมแบบตรวจสอบเงื่อนด้วยคำสั่ง Switch Case มีได้กี่เงื่อนไข','0','1','100','ไม่จำกัด','4','2021-04-20 09:40:26','2021-04-20 09:40:26'),(20,1,1,'รูปแบบ นิพจน์เงื่อนไข ? นิพจน์ที่1 : นิพจน์ที่2 การเป็นเขียนลักษณะใด','การเขียน if-else แบบย่อ','การเขียนทางอัลกอริทึม','การเขียน switch case แบบง่าย','การเขียนคอมเม้น','1','2021-04-20 09:40:26','2021-04-20 09:40:26'),(21,1,1,'คำสั่ง else ตรงกับคำสั่งใดใน Switch Case','break','default','case','then','2','2021-04-20 09:40:26','2021-04-20 09:40:26'),(22,1,1,'ถ้าต้องการเขียนโปรแกรมแสดงชื่อตนเอง 100,000 ควรใช้คำสั่งใดเข้ามาช่วยเพื่อให้ประหยัดเวลาในการเขียนโปรแกรม','array','for','lexical scope','pointer','2','2021-04-20 09:40:26','2021-04-20 09:40:26'),(23,1,1,'คำสั่ง do..while โปรแกรมจะทำงานซ้ำอย่างน้อยที่สุดกี่รอบ','0','1','100','ไม่จำกัด','2','2021-04-20 09:40:26','2021-04-20 09:40:26'),(24,1,1,'คำสั่ง while ใช้สำหรับการทำงานลักษณะใด','การทำงานแบบตรวจเงื่อนไข','การทำงานแบบโครงสร้าง','การทำงานเชิงวัตถุ','การทำงานซ้ำ','4','2021-04-20 09:40:26','2021-04-20 09:40:26'),(25,1,1,'ถ้าต้องการเก็บข้อมูลปริมาณค่าฝุ่น 2.5 จำนวน 30 วันจะเก็บด้วยชนิดข้อมูลแบบใด','array','structure','lexical scope','pointer','1','2021-04-20 09:40:26','2021-04-20 09:40:26'),(26,1,1,'int a[10] ตำแหน่งของข้อมูลตัวแรก มีค่าเป็นอะไร','0','1','10','ไม่มีเลขตำแหน่ง','1','2021-04-20 09:40:26','2021-04-20 09:40:26'),(27,1,1,'int num[4] = {1,3,5,7}; โดย num[3] มีค่าเป็นอะไร','1','3','5','7','4','2021-04-20 09:40:26','2021-04-20 09:40:26'),(28,1,1,'ข้อใดต่อไปนี้คือฟังก์ชันประเภท User-Defined','main()','getch()','kmutnb()','clrscr()','3','2021-04-20 09:40:26','2021-04-20 09:40:26'),(29,1,1,'void add(int a, int b){} จากคำสั่งต่อไปนี้รับ argument จำนวนทั้งหมดกี่ตัว','0','1','2','ไม่รับ','3','2021-04-20 09:40:26','2021-04-20 09:40:26'),(30,1,1,'คำสั่ง void มีไว้สำหรับทำอะไรเมื่อประกาศหน้าชื่อของฟังก์ชัน','ให้ส่งค่ากลับเมื่อจบฟังก์ชัน','ไม่ให้ส่งค่ากลับเมื่อจบฟังก์ชัน','ให้รับ parameter เข้ามาในฟังก์ชัน','ไม่ให้รับ parameter เข้ามาในฟังก์ชัน','2','2021-04-20 09:40:26','2021-04-20 09:40:26'),(31,1,1,'ในภาษา C จะเริ่มทำงานฟังก์ชันใดก่อนเสมอ','start()','always()','getch()','main()','4','2021-04-20 09:40:26','2021-04-20 09:40:26'),(32,1,1,'ฟังก์ชัน getch() จัดเป็นฟังก์ชันประเภทใด','User-Defined','Standard Library','Original Function','Basic Based','2','2021-04-20 09:40:26','2021-04-20 09:40:26'),(33,1,1,'ถ้าต้องการเก็บข้อมูลที่มีความสัมพันธ์กันเช่น ชื่อ นามสกุล สาขา เพศ อายุ ของนักศึกษาพระจอมเกล้า ควรเก็บเป็นแบบใด','Structure','Union','Macro','Stack','1','2021-04-20 09:40:26','2021-04-20 09:40:26'),(34,1,1,'typedef ในภาษา C ไว้สำหรับทำอะไร','สำหรับระบุประเภทของข้อมูล','สำหรับหาข้อผิดพลาดของข้อมูล','สำหรับกำหนดชนิดข้อมูลประเภทใหม่ขึ้นมาเอง','สำหรับหาความแตกต่างของข้อมูล','3','2021-04-20 09:40:26','2021-04-20 09:40:26'),(35,1,1,'#include มีความหมายว่าอย่างไร','ใช้สำหรับรวมไฟล์ที่ระบุ เข้าไว้ในการแปลโปรแกรม','ใช้ระบุจุดสิ้นสุดของเงื่อนไข','ใช้สำหรับกำหนด preprocessor ','ใช้สำหรับกำหนด macro','1','2021-04-20 09:40:26','2021-04-20 09:40:26'),(36,1,1,'macro ถูกกำหนดขึ้นจาก preprocessor ข้อใด','#def','#undef','#else','#define','4','2021-04-20 09:40:26','2021-04-20 09:40:26'),(37,1,1,'บัฟเฟอร์ (Buffer) มีความหมายตรงกับข้อใด','หน่วยความจำถาวร','หน่วยความจำหลัก','พื้นที่ในหน่วยความจำที่ใช้สำหรับเก็บข้อมูลชั่วคราว','พื้นที่ในหน่วยประมวลผล','3','2021-04-20 09:40:26','2021-04-20 09:40:26'),(38,1,1,'ถ้าต้องการเปิดไฟล์สำหรับการอ่านเพียงอย่างเดียวควรเลือกใช้ Mode ใด','a','r','w','x','2','2021-04-20 09:40:26','2021-04-20 09:40:26'),(39,1,1,'ถ้าต้องการเปิดไฟล์เพื่อเขียนข้อมูลต่อท้ายจากไฟล์เดิมควรเลือกใช้ Mode ใด','a','r','w','x','1','2021-04-20 09:40:26','2021-04-20 09:40:26'),(40,1,1,'แนวคิดการเขียนโปรแกรมด้วยภาษาเป็นลักษณะใด','Structure','OOP','MVC','BLoC','1','2021-04-20 09:40:26','2021-04-20 09:40:26');
/*!40000 ALTER TABLE `classroom_pretest_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_pretest_users`
--

DROP TABLE IF EXISTS `classroom_pretest_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom_pretest_users` (
  `cpu_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cls_id` bigint unsigned DEFAULT NULL COMMENT 'แหล่งข้อมูลใด',
  `id` bigint unsigned DEFAULT NULL COMMENT 'แหล่งข้อมูลใด',
  `pt_id` bigint unsigned DEFAULT NULL COMMENT 'แหล่งข้อมูลใด',
  `cpu_score` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cpu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom_pretest_users`
--

LOCK TABLES `classroom_pretest_users` WRITE;
/*!40000 ALTER TABLE `classroom_pretest_users` DISABLE KEYS */;
INSERT INTO `classroom_pretest_users` VALUES (1,1,7,1,33,'2021-04-20 13:39:59','2021-04-20 13:39:59'),(2,1,8,1,23,'2021-04-20 13:40:51','2021-04-20 13:40:51'),(3,1,27,1,29,'2021-04-20 13:46:38','2021-04-20 13:46:38'),(4,1,11,1,38,'2021-04-20 13:50:55','2021-04-20 13:50:55'),(5,1,15,1,37,'2021-04-20 13:51:44','2021-04-20 13:51:44'),(6,1,13,1,31,'2021-04-20 14:01:09','2021-04-20 14:01:09'),(7,1,21,1,35,'2021-04-20 14:02:51','2021-04-20 14:02:51'),(8,1,16,1,23,'2021-04-20 14:04:04','2021-04-20 14:04:04'),(9,1,12,1,32,'2021-04-20 14:05:53','2021-04-20 14:05:53'),(10,1,2,1,35,'2021-04-20 14:07:38','2021-04-20 14:07:38'),(11,1,14,1,35,'2021-04-20 14:10:35','2021-04-20 14:10:35'),(12,1,19,1,36,'2021-04-20 14:23:43','2021-04-20 14:23:43'),(13,1,32,1,30,'2021-04-20 14:38:00','2021-04-20 14:38:00'),(14,1,35,1,29,'2021-04-20 14:38:44','2021-04-20 14:38:44'),(15,1,33,1,31,'2021-04-20 14:39:43','2021-04-20 14:39:43'),(16,1,23,1,20,'2021-04-20 14:49:13','2021-04-20 14:49:13'),(17,1,26,1,22,'2021-04-20 15:13:02','2021-04-20 15:13:02'),(18,1,9,1,30,'2021-04-20 15:37:39','2021-04-20 15:37:39'),(19,1,5,1,25,'2021-04-20 15:46:01','2021-04-20 15:46:01'),(20,1,17,1,34,'2021-04-20 18:53:45','2021-04-20 18:53:45'),(21,1,25,1,26,'2021-04-20 20:36:36','2021-04-20 20:36:36'),(22,1,6,1,24,'2021-04-21 02:10:34','2021-04-21 02:10:34'),(23,1,28,1,29,'2021-04-21 02:36:59','2021-04-21 02:36:59'),(24,1,29,1,22,'2021-04-26 13:34:59','2021-04-26 13:34:59'),(25,1,3,1,36,'2021-04-26 13:38:01','2021-04-26 13:38:01'),(26,1,22,1,33,'2021-04-26 16:27:45','2021-04-26 16:27:45');
/*!40000 ALTER TABLE `classroom_pretest_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_pretests`
--

DROP TABLE IF EXISTS `classroom_pretests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom_pretests` (
  `pt_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cls_id` bigint unsigned NOT NULL,
  `pt_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pt_number_of_exam` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom_pretests`
--

LOCK TABLES `classroom_pretests` WRITE;
/*!40000 ALTER TABLE `classroom_pretests` DISABLE KEYS */;
INSERT INTO `classroom_pretests` VALUES (1,1,'แบบทดสอบหลังเรียน',40,'2021-04-20 09:40:26','2021-04-20 09:40:26');
/*!40000 ALTER TABLE `classroom_pretests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_schedules`
--

DROP TABLE IF EXISTS `classroom_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom_schedules` (
  `scd_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `div_id` bigint unsigned NOT NULL,
  `com_week` tinyint NOT NULL,
  `com_date` date NOT NULL,
  `com_user1` bigint unsigned NOT NULL,
  `com_scoreuser1` tinyint NOT NULL,
  `com_user2` bigint unsigned NOT NULL,
  `com_scoreuser2` tinyint NOT NULL,
  `com_result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`scd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom_schedules`
--

LOCK TABLES `classroom_schedules` WRITE;
/*!40000 ALTER TABLE `classroom_schedules` DISABLE KEYS */;
INSERT INTO `classroom_schedules` VALUES (7,6,1,'2021-03-22',2,5,3,4,'Win','Finished','2021-03-22 22:28:04','2021-03-23 15:17:21'),(8,6,1,'2021-03-22',15,4,7,3,'Win','Finished','2021-03-22 22:28:04','2021-03-23 15:17:22'),(9,6,2,'2021-03-29',2,20,15,17,'Win','Finished','2021-03-22 22:28:04','2021-03-30 14:36:19'),(10,6,2,'2021-03-29',7,18,3,20,'Lose','Finished','2021-03-22 22:28:04','2021-03-30 14:36:21'),(11,6,3,'2021-04-05',2,0,7,0,'Draw','Competing','2021-03-22 22:28:04','2021-03-22 22:28:04'),(12,6,3,'2021-04-05',3,0,15,0,'Draw','Competing','2021-03-22 22:28:04','2021-03-22 22:28:04'),(13,7,1,'2021-03-22',9,4,5,3,'Win','Finished','2021-03-22 22:28:23','2021-03-23 15:17:24'),(14,7,1,'2021-03-22',6,2,8,3,'Lose','Finished','2021-03-22 22:28:23','2021-03-23 15:17:29'),(15,7,2,'2021-03-29',9,19,6,20,'Lose','Finished','2021-03-22 22:28:23','2021-03-30 14:41:57'),(16,7,2,'2021-03-29',8,20,5,20,'Draw','Finished','2021-03-22 22:28:23','2021-03-30 14:42:00'),(17,7,3,'2021-04-05',9,0,8,0,'Draw','Waiting','2021-03-22 22:28:23','2021-03-23 15:15:35'),(18,7,3,'2021-04-05',5,0,6,0,'Draw','Competing','2021-03-22 22:28:23','2021-03-22 22:28:23'),(25,9,1,'2021-03-22',22,0,27,0,'Draw','Finished','2021-03-22 22:28:27','2021-03-23 15:17:35'),(26,9,1,'2021-03-22',23,0,25,0,'Draw','Finished','2021-03-22 22:28:27','2021-03-23 15:17:36'),(27,9,2,'2021-03-29',22,19,23,20,'Lose','Finished','2021-03-22 22:28:27','2021-03-30 14:38:55'),(28,9,2,'2021-03-29',25,10,27,20,'Lose','Finished','2021-03-22 22:28:27','2021-04-01 02:02:09'),(29,9,3,'2021-04-05',22,0,25,0,'Draw','Competing','2021-03-22 22:28:27','2021-03-22 22:28:27'),(30,9,3,'2021-04-05',27,0,23,0,'Draw','Competing','2021-03-22 22:28:27','2021-03-22 22:28:27'),(37,5,1,'2021-03-23',4,2,14,5,'Lose','Finished','2021-03-23 14:35:58','2021-03-23 15:16:38'),(38,5,1,'2021-03-23',11,5,13,5,'Draw','Finished','2021-03-23 14:35:58','2021-03-23 15:16:41'),(39,5,2,'2021-03-30',4,18,11,20,'Lose','Finished','2021-03-23 14:35:58','2021-03-30 14:40:34'),(40,5,2,'2021-03-30',13,19,14,20,'Lose','Finished','2021-03-23 14:35:58','2021-03-30 14:40:25'),(41,5,3,'2021-04-06',4,0,13,0,'Draw','Competing','2021-03-23 14:35:58','2021-03-23 14:35:58'),(42,5,3,'2021-04-06',14,0,11,0,'Draw','Competing','2021-03-23 14:35:58','2021-03-23 14:35:58'),(49,11,1,'2021-03-23',16,2,12,0,'Win','Finished','2021-03-23 14:40:35','2021-03-23 15:17:41'),(50,11,1,'2021-03-23',29,4,30,4,'Draw','Finished','2021-03-23 14:40:35','2021-03-23 15:17:42'),(51,11,2,'2021-03-30',16,10,29,20,'Lose','Finished','2021-03-23 14:40:35','2021-04-01 02:02:21'),(52,11,2,'2021-03-30',30,20,12,20,'Draw','Finished','2021-03-23 14:40:35','2021-04-01 02:02:24'),(53,11,3,'2021-04-06',16,0,30,0,'Draw','Competing','2021-03-23 14:40:35','2021-03-23 14:40:35'),(54,11,3,'2021-04-06',12,0,29,0,'Draw','Competing','2021-03-23 14:40:35','2021-03-23 14:40:35'),(55,8,1,'2021-03-23',19,5,32,3,'Win','Finished','2021-03-23 14:40:46','2021-03-23 15:17:32'),(56,8,1,'2021-03-23',17,2,28,3,'Lose','Finished','2021-03-23 14:40:46','2021-03-23 15:17:33'),(57,8,2,'2021-03-30',19,20,17,11,'Win','Finished','2021-03-23 14:40:46','2021-03-30 14:38:10'),(58,8,2,'2021-03-30',28,20,32,20,'Draw','Finished','2021-03-23 14:40:46','2021-04-01 02:02:05'),(59,8,3,'2021-04-06',19,0,28,0,'Draw','Competing','2021-03-23 14:40:46','2021-03-23 14:40:46'),(60,8,3,'2021-04-06',32,0,17,0,'Draw','Competing','2021-03-23 14:40:46','2021-03-23 14:40:46'),(97,10,1,'2021-03-23',33,5,21,3,'Win','Finished','2021-03-23 14:50:02','2021-03-23 15:17:38'),(98,10,1,'2021-03-23',20,5,31,5,'Draw','Finished','2021-03-23 14:50:02','2021-03-23 15:17:39'),(99,10,2,'2021-03-30',33,20,20,19,'Win','Finished','2021-03-23 14:50:02','2021-04-01 02:02:13'),(100,10,2,'2021-03-30',31,19,21,20,'Lose','Finished','2021-03-23 14:50:02','2021-04-01 02:02:14'),(101,10,3,'2021-04-06',33,0,31,0,'Draw','Competing','2021-03-23 14:50:02','2021-03-23 14:50:02'),(102,10,3,'2021-04-06',21,0,20,0,'Draw','Competing','2021-03-23 14:50:02','2021-03-23 14:50:02');
/*!40000 ALTER TABLE `classroom_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_types`
--

DROP TABLE IF EXISTS `classroom_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom_types` (
  `cls_type` bigint unsigned NOT NULL AUTO_INCREMENT,
  `clst_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clst_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cls_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom_types`
--

LOCK TABLES `classroom_types` WRITE;
/*!40000 ALTER TABLE `classroom_types` DISABLE KEYS */;
INSERT INTO `classroom_types` VALUES (1,'League Learning','Available',NULL,NULL),(2,'Tranditional','Available',NULL,NULL);
/*!40000 ALTER TABLE `classroom_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_users`
--

DROP TABLE IF EXISTS `classroom_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom_users` (
  `usrc_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cls_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`usrc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom_users`
--

LOCK TABLES `classroom_users` WRITE;
/*!40000 ALTER TABLE `classroom_users` DISABLE KEYS */;
INSERT INTO `classroom_users` VALUES (1,1,1,'2021-03-09 00:50:23','2021-03-09 00:50:23'),(2,1,2,'2021-03-16 16:08:25','2021-03-16 16:08:25'),(3,1,7,'2021-03-16 16:08:31','2021-03-16 16:08:31'),(4,1,3,'2021-03-16 16:08:33','2021-03-16 16:08:33'),(6,1,13,'2021-03-16 16:09:10','2021-03-16 16:09:10'),(8,1,21,'2021-03-16 16:09:47','2021-03-16 16:09:47'),(9,1,16,'2021-03-16 16:09:51','2021-03-16 16:09:51'),(11,1,4,'2021-03-16 16:10:23','2021-03-16 16:10:23'),(12,1,5,'2021-03-16 16:10:28','2021-03-16 16:10:28'),(13,1,19,'2021-03-16 16:10:35','2021-03-16 16:10:35'),(14,1,6,'2021-03-16 16:10:54','2021-03-16 16:10:54'),(15,1,9,'2021-03-16 16:10:56','2021-03-16 16:10:56'),(16,1,20,'2021-03-16 16:11:03','2021-03-16 16:11:03'),(18,1,23,'2021-03-16 16:11:16','2021-03-16 16:11:16'),(19,1,17,'2021-03-16 16:11:43','2021-03-16 16:11:43'),(20,1,15,'2021-03-16 16:11:59','2021-03-16 16:11:59'),(21,1,12,'2021-03-16 16:12:30','2021-03-16 16:12:30'),(22,1,22,'2021-03-16 16:12:32','2021-03-16 16:12:32'),(23,1,8,'2021-03-16 16:12:36','2021-03-16 16:12:36'),(24,1,25,'2021-03-16 16:12:53','2021-03-16 16:12:53'),(25,1,11,'2021-03-16 16:13:49','2021-03-16 16:13:49'),(26,1,27,'2021-03-16 16:14:52','2021-03-16 16:14:52'),(27,1,28,'2021-03-16 16:15:34','2021-03-16 16:15:34'),(29,2,1,'2021-03-22 19:47:33','2021-03-22 19:47:33'),(30,1,14,'2021-03-23 14:34:52','2021-03-23 14:34:52'),(31,1,32,'2021-03-23 14:35:09','2021-03-23 14:35:09'),(32,1,29,'2021-03-23 14:36:32','2021-03-23 14:36:32'),(33,1,30,'2021-03-23 14:36:34','2021-03-23 14:36:34'),(34,1,31,'2021-03-23 14:38:12','2021-03-23 14:38:12'),(35,1,33,'2021-03-23 14:49:09','2021-03-23 14:49:09'),(36,1,26,'2021-03-30 14:02:53','2021-03-30 14:02:53'),(37,1,34,'2021-03-30 14:12:34','2021-03-30 14:12:34'),(38,1,35,'2021-04-20 13:18:48','2021-04-20 13:18:48');
/*!40000 ALTER TABLE `classroom_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classrooms` (
  `cls_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `cls_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cls_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cls_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cls_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cls_term` tinyint NOT NULL,
  `cls_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cls_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cls_type` tinyint NOT NULL,
  `cls_status` tinyint DEFAULT NULL,
  `cls_setting` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cls_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
INSERT INTO `classrooms` VALUES (1,1,'z6werTFj','Computer and Programming','classrooms_cover/LE4TMs5pwL8qc0z7ThpZ75zoihHA40IFcrID6Z13.jpeg','Computer and Programming',1,'4','CED1',1,1,NULL,'2021-03-09 00:50:23','2021-03-16 16:11:28'),(2,1,'p5ghGDOA','Emi Smith',NULL,'Dolorem dolorem quis',2,'19','Magnam debitis Nam a',1,1,NULL,'2021-03-22 19:47:33','2021-03-22 19:47:33');
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_04_01_081606_create_profiles_table',1),(5,'2020_04_03_145217_create_classrooms_table',1),(6,'2020_04_03_164423_create_classroom_types_table',1),(7,'2020_04_05_183130_create_classroom_users_table',1),(8,'2020_04_06_154917_create_classroom_contents_table',1),(9,'2020_04_08_000813_create_classroom_comments_table',1),(10,'2020_04_08_192709_create_classroom_divisions_table',1),(11,'2020_04_08_193432_create_classroom_division_users_table',1),(12,'2020_04_10_175538_create_classroom_schedules_table',1),(13,'2020_04_12_182913_create_classroom_parings_table',1),(14,'2020_04_18_002908_create_chats_table',1),(15,'2020_05_20_141024_create_classroom_pretests_table',1),(16,'2020_05_20_141435_create_classroom_prestest_users_table',1),(17,'2020_05_20_151613_create_classroom_pretest_exams_table',1),(18,'2021_03_08_234902_create_sessions_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `prf_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `prf_imgcover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prf_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prf_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prf_firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prf_lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prf_birthday` date DEFAULT NULL,
  `cty_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crr_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grd_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prf_workaddress` longtext COLLATE utf8mb4_unicode_ci,
  `prf_tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prf_status` smallint DEFAULT NULL,
  `prf_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`prf_id`),
  KEY `profiles_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,'profiles_cover/bz4ZQrwBnYaA8cEAPgw0kNYQsdIkgoxCAarAQ2kT.jpeg','profiles/Iq0xLkXl40or1qvAmB6gMXHwzzyOekuRREUtENCn.png','นาย','อนัตต์ชัย','ชุติภาสเจริญ','1991-07-18','Thailand','อาจารย์','ปริญญาโท','มหาลัยวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0646068922',1,'id line:anutchaim','2021-03-09 00:04:02','2021-03-09 00:55:41'),(2,2,NULL,'profiles/BAOKL6Ai6uc4G6Wdtp6tKhpDzoRNEQfTcY0Fqnk2.jpeg','นาย','คฑาวุธ','สิงห์สา','2002-02-10','ไทย','นักศึกษา','ประกาศนียบัตรวิชาชีพ','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','095-4895019',1,'Katawut505@gmail.com','2021-03-16 16:03:38','2021-03-23 14:33:54'),(3,3,NULL,'profiles/DLgb8rHxc9LO2MismChVkin0JjOCBmWNscTLIHnG.jpeg','นาย','วรรณชล','พิณพรม','2001-03-16','ไทย','นักศึกษา','ปริญญาตรี','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0929955324',1,'-','2021-03-16 16:04:02','2021-03-16 16:07:46'),(4,4,NULL,'profiles/UXRWExvAttKO19amQEs3dkDg7C4BI4JyftX5qZvD.jpeg','นาย','Supanut','Jangchudjai','2002-06-06','ไทย','นักศึกษา','ประกาศนียบัตรวิชาชีพ','เทคนิคราชบุรี','0615926451',1,'FB: otto supanut','2021-03-16 16:04:48','2021-03-23 15:17:45'),(5,5,NULL,'profiles/htu4eCxb755n7bdWWZ5Q8xzG8S07tipH2iBW3AN1.jpeg','นางสาว','nuttaporn','Wuttijun','2001-12-20','ไทย','นักศึกษา','ประกาศนียบัตรวิชาชีพชั้นสูง','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0954188839',1,'0954188839','2021-03-16 16:04:50','2021-03-16 16:09:54'),(6,6,NULL,'profiles/4qbdyx9TE8pYi8V9FAYm6U2R5wJ1wR9VLyuDYoE2.jpeg','นาย','Muhammadsubha','masalaeh','2002-02-05','ไทย','นักศึกษา','ปริญญาตรี','มหาวิทยาลัยพระจอมเกล้าพระนครเหนือ','0872873828',1,'0872873828','2021-03-16 16:04:52','2021-03-16 16:12:25'),(7,7,NULL,'profiles/vHB19wIRGwj0llFbZe0XplabpGrpPAVG52wniE0n.jpeg','นาย','ณภพ','พลเสน','2001-10-22','ไทย','นักศึกษา','ปริญญาตรี','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0841479555',1,'-','2021-03-16 16:04:53','2021-03-16 16:08:13'),(8,8,NULL,'profiles/pDmUSyq2qcDPy29gZWFCRkqLdttdUlzSTisBaYSi.jpeg','นางสาว','Siriporn','Noppakhun','2000-09-13','Thailand','นักศึกษา','ปริญญาตรี','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0860500290',1,'0860500290','2021-03-16 16:05:03','2021-03-16 16:12:06'),(9,9,NULL,'profiles/aQBpf8o0wCVE0wvD8v5Ze9mrNXrJkGRwPLDYDlxd.jpeg',NULL,'chutikarn','Phayakkawong','2001-08-03','ไทย','นักศึกษา','ปริญญาตรี','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0802146975',1,'0861018856','2021-03-16 16:05:05','2021-03-16 16:10:01'),(10,10,'profiles_cover/8jXZIgGsuQvEE0tE3OpredU8zL3RQXUNFkAMaF7H.jpeg','profiles/RgPoDrKkRQbISpe9IGa4363HkRXaElR52VFt2E1m.jpeg','นาย','ยศรินทร์','หรี่จินดา','2000-12-27','ไทย','นักศึกษา','ประกาศนียบัตรวิชาชีพ','วิทยาลัยเทคโนโลยีพงษ์สวัสดิ์','0859971954',1,'0859971954','2021-03-16 16:05:13','2021-03-16 16:09:34'),(11,11,'profiles_cover/qnfJOoCT72OIewrFSfPsP4NLwg70cnJkMtE3CWNL.jpeg','profiles/JavToIlPrAKs9ml5BJrSgDJiEtQA2rkqV7vF6rwc.jpeg',NULL,'Kritidaj','Jangmongkulkarn','2001-09-07','ไทย','นักศึกษา','ปริญญาตรี','มจพ.','0924543970',1,'0924543970','2021-03-16 16:05:13','2021-03-16 16:13:04'),(12,12,NULL,NULL,'นาย','กุลชัย','แซ่ลี้','2544-06-07','ไทย','นักศึกษา','ปริญญาตรี','มจพ','0971349168',1,'0954959168','2021-03-16 16:05:29','2021-03-16 16:11:04'),(13,13,'profiles_cover/Na2Uq8VdmMzDOeR6pg4eY2WNfxu8sUWbjIS4agEQ.jpeg','profiles/bW1uVmab2UTFpfhdgKl1S0gijGuKNyVrmHGKK1jS.jpeg','นาย','Kittisak','Bunkad','2002-05-24','ไทย','นักศึกษา','ปริญญาตรี','มจพ.','0987686389',1,'facebook:Kittisak Bunkad','2021-03-16 16:05:30','2021-03-23 14:33:59'),(14,14,NULL,'profiles/UsRiO7JJU2JBMcyFwsklIkfm5A21GYs1mP52ZFqD.jpeg','นาย','Anan','Charoensap','2002-12-03','Thai','นักศึกษา','ประกาศนียบัตรวิชาชีพชั้นสูง','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0994960109',1,'-','2021-03-16 16:05:42','2021-03-16 16:09:28'),(15,15,NULL,'profiles/To5WqOR6m6bDm5eLiii2TS4siT7MSRkrwTsudRQ1.jpeg','นาย','ภควรรธ','ปราบทอง','2002-05-20','ไทย','นักศึกษา','มัธยมศึกษาตอนต้นปลาย','ปทุมวิไล','0809669810',1,'-`','2021-03-16 16:05:47','2021-03-16 16:11:31'),(16,16,NULL,NULL,'นาย','Meta','Dunagmal','2002-01-30','Thailandonly','นักเรียน','ปริญญาตรี','มหาลัยพระจอมเกล้าพระนครเหนือ','0631720633',1,'โทรศัพท์มือถือ','2021-03-16 16:05:47','2021-03-16 16:10:52'),(17,17,NULL,'profiles/nCkfKlHTFDJiNzeWwqEd6WntIzohHTBD1SD3GCs1.png',NULL,'Ryu','Takasu','2000-09-15','THAI','นักศึกษา','ประกาศนียบัตรวิชาชีพ','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0802244406',1,'0802244406','2021-03-16 16:06:02','2021-03-16 16:11:17'),(18,18,NULL,'profiles/fqLeKJPITanv578YTuDIMu08gWIWVIEJSlj6hdLe.jpeg',NULL,'Afdol','Lateh','2001-02-09','THAILAND','Student','ปริญญาตรี','KMUTNB','0987969460',1,'s6302041620176@email.kmutnb.ac.th','2021-03-16 16:06:05','2021-03-16 16:15:47'),(19,19,NULL,NULL,'นาย','คฤหบดี','บุ้งทิม','2001-09-19','Thailand','student','ปริญญาตรี','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0617948922',1,'-','2021-03-16 16:06:28','2021-03-16 16:10:07'),(20,20,NULL,NULL,NULL,'Tretap','Khovintavong','2002-01-22','Thailand','นักเรียน','ปริญญาตรี','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0917679966',1,'มือถือ','2021-03-16 16:06:30','2021-03-16 16:10:46'),(21,21,NULL,'profiles/T7xbZyWa2Xj3mMfgyUcvYxtnzTetcR2I8gVWkYaX.jpeg','นางสาว','สุภารัตน์','พูลสวัสดิ์','2001-02-06','ไทย','เรียน','ประกาศนียบัตรวิชาชีพ','วิทยาลัยเทคนิคสมุทรสาคร','0993083367',1,'F:suparat poonsawat','2021-03-16 16:06:33','2021-03-16 16:09:31'),(22,22,NULL,'profiles/8tR3PJHrsbFSJi0si7IsPEPf5I7BsTcy9nbaQlB8.jpeg','นาย','Jadsadaporn','Boonchom','2001-11-05','Thailand','Student','ปริญญาตรี','King mongkut’s university of technology north bangkok','0957042841',1,'s6302041610014@email.kmutnb.ac.th','2021-03-16 16:07:52','2021-03-30 14:06:51'),(23,23,NULL,'profiles/ahRKH1Fqoi64EuzXRereKNTuo2RgpmGFcrAdsodL.jpeg','นาย','จิรายุทธ','ธงชัย','2002-01-25','ไทย','นักศึกษา','ปริญญาตรี','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0973406278',1,'FB : Jirayut Thongchai','2021-03-16 16:07:57','2021-03-23 14:41:35'),(24,24,NULL,NULL,'นาย','ธนาศักดิ์','เที่ยงสาย','2001-10-19','ไทย','นักศึกษา','ปริญญาตรี','มจพ.','0971022435',1,'-','2021-03-16 16:07:59','2021-03-16 16:09:39'),(25,25,NULL,'profiles/2xm8y1w3NV40e4PweyQNVlMNMHxeuYs8u6Rs6bUf.jpeg','นาย','พัทธกานต์','สาทริยารัตน์กุล','2001-10-10','ไทย','นักศึกษา','ปริญญาตรี','มหาวิทยาลัยพระจอมเกล้าพระนครเหนือ','0612157889',1,'bossx50@gmail.com','2021-03-16 16:08:32','2021-03-16 16:12:00'),(26,26,NULL,'profiles/zlnonAMxQKCDT0zQkZ6jk8VMP6RoC5lLaI6N1Qot.jpeg',NULL,'Warittha','Boonmee','2002-05-29','ไทย','นักศึ','ปริญญาตรี','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0864919913',1,'0864919913','2021-03-16 16:09:53','2021-03-30 14:08:21'),(27,27,NULL,'profiles/TqrYRdHLEYyNziXGA0v7hhbSG16FvCYkI5TUBfig.jpeg','นาย','achit','Ngamkunnathum','2001-06-29','Thai','Student','มัธยมศึกษาตอนต้นปลาย','วัดหนองงูใหญ่','0880994448',1,'Achit ngamkunnathum','2021-03-16 16:12:06','2021-03-30 14:03:30'),(28,28,NULL,'profiles/Yi8CpHuUbm5Zm7HGoTKdNc9rECFdJeoMA1azlXI1.jpeg','นาย','Thanabadee','Thpha','2545-01-10','ไทย','นักศึกษา','ปริญญาตรี','มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0623087563',1,'0623087563','2021-03-16 16:15:25','2021-03-23 14:39:08'),(29,29,NULL,'profiles/qcCpufTrhdSJqUhby3DfFDfcRRO087Nju2XtWNbI.jpeg','นาย','Yossarin','Leejinda','2000-12-27','ไทย','นักศึกษา','ประกาศนียบัตรวิชาชีพ','วิทยาลัยเทคโนโลยีพงษ์สวัสดิ์','0859971954',1,'0859971954','2021-03-23 14:34:17','2021-03-23 14:39:31'),(30,30,NULL,NULL,NULL,'Warakorn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-23 14:34:35','2021-03-23 14:34:35'),(31,31,NULL,'profiles/c5HvupX1rwxjCOgIC8y7vbZKM2DbuKodeoku6tzL.jpeg',NULL,'Warittha','Boonmee','2002-05-29','ไทย','นักศึกษา',NULL,'มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ','0864919913',1,'0864919913','2021-03-23 14:34:48','2021-03-23 14:37:20'),(32,32,NULL,'profiles/S8nHiJVMYUzgUyda2SocLzrkyCMqi34tnsAGf9ud.png','นาย','ธนาศักดิ์','เที่ยงสาย','2001-10-19','ไทย','นักศึกษา','ปริญญาตรี','มจพ.','0971022435',1,'-','2021-03-23 14:34:54','2021-03-30 14:09:20'),(33,33,NULL,NULL,NULL,'Afdol Lateh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-23 14:47:55','2021-03-23 14:47:55'),(34,34,NULL,NULL,NULL,'111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-30 14:10:23','2021-03-30 14:10:23'),(35,35,NULL,NULL,NULL,'Tretap',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-20 13:17:57','2021-04-20 13:17:57');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('4EXUStHQC6hZPgHFi3svXYdXwdJ6j3ESXCVABqSC',22,'58.8.0.222','Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMW91SHJiS0t4WDBxOFNjSUpEem5NckdtWHUycXd6aEVGMTgxUE5QdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly90ZWFjaGhlYWwuY29tL3ByZXRlc3Qvc2hvdy8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjI7fQ==',1619427963),('71bsnvypaLiTrr7hLgth2fnypPt9d8K8Xbt2KjBV',NULL,'45.155.205.27','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlhIZWlQVE12bEw2OWtlam92MWpHOEphbWFHdmZvejg4eFZ4WTZkYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6OTM6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Lz9hPWZldGNoJmNvbnRlbnQ9JTNDcGhwJTNFZGllJTI4JTQwbWQ1JTI4SGVsbG9UaGlua0NNRiUyOSUyOSUzQyUyRnBocCUzRSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1619441982),('AmqhST2nwPMIdxEP3SjDQvaxkacAuRXdVQhnhGCL',7,'223.205.184.112','Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Safari Line/11.6.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ09aTUpLV3p6TEwxaERmTW1DODRoN3hlemFydW56U2RCMm1LT3BFQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly90ZWFjaGhlYWwuY29tL3ByZXRlc3Qvc2hvdy8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Nzt9',1619439636),('bLGk4TLSttLvuFzQN81svIwoSAwiGOXFYJObFEru',NULL,'49.49.248.194','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0JMU3ZsbEJlOUd4dGw0MTNGZGQzVWFqTDJRWGxyUlhmc3lKQ0tYcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly90ZWFjaGhlYWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619445733),('bR8ympDQu8MNhcB8FqJt8lmWCmddbNmeOkPuBBGJ',NULL,'162.142.125.53','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0Vod0hqd0hFdFpmVDR5YjNLRUI1emhIVndlMTNqdG5KdXhsSUtoTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619444594),('cyJpZAuttzuNp3CswxNs4yuRvE7eHRwYr6d8pkaq',22,'58.8.0.222','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT2ZCaGxkVWE0eHlOd3lQQTJ1V1dsRDdBUFo1cE42WUljalFwMHZVOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly90ZWFjaGhlYWwuY29tL3ByZXRlc3Qvc2hvdy8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjI7fQ==',1619429265),('fqmfbkpLUrmzFdKConFaRIjIfF4DQsRHDrFec8V2',NULL,'45.155.205.27','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUVIRXNKaW44dmRrZnYyZGM5b0xTVHY1d01rbGpqUGE3NXBJb21WdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Lz9YREVCVUdfU0VTU0lPTl9TVEFSVD1waHBzdG9ybSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1619441981),('G2wY13HcPnqnbmn0qtVXHkeNtwlNP2SpKTe0Ddt4',NULL,'103.212.128.83','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoib2RKSUtENGQ2bWpkTVpCQmZwaURWZktIUkpPYUxOejAySzBKNUVzcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619436784),('GR8wLS4EwdA9dcG5pC4OAzfP2DaHFQ8iQxcke5OS',NULL,'128.14.211.190','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNldVWTlIN1NRU01RZkxHYmFBbGFtaEV2N00yMjRwVkVZcHZLQWk2bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619434558),('Ju8SSvQb9zeHkOozvqGOjeHcZF5jWR0QCRgEHotL',NULL,'103.116.116.230','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibmRUbWhUWlBJUW9BYlptNGJzUUpCenVXNXVkRVNCVFdicHBzQmZtcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619438849),('kbqRdvHAPu2XVvuUGUhi0ZHYBF1iQ281CO5kdbbn',NULL,'89.248.170.22','Linux Gnu (cow)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaXlYSDd0UlBXTkFCUWpiYWxCWEVWV1Vkcm53aUFtVUpCSTdGQVZFMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619428443),('kZlmPw5Qk2epaXhm46xH5hu5MzshlqKaYzAB1D0u',NULL,'162.142.125.53','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUt6MktDTXRwc2pUWXNaWFhTZWNzRjZiUFhNblVYazhtVWJ6SG5taCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619444593),('lufs6NyJcwP1ScTJlT3k7pgF5z6AO9TsqTYtmkYL',NULL,'45.155.205.27','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFpzOUc3U0duR1VTWENvODBwQ3l4cFU5ZHRLZGhJdmdQcXZyN2s5eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTU2OiJodHRwOi8vMzQuODcuMTUwLjIyOS9pbmRleC5waHA/ZnVuY3Rpb249Y2FsbF91c2VyX2Z1bmNfYXJyYXkmcz0lMkZJbmRleCUyRiU1Q3RoaW5rJTVDYXBwJTJGaW52b2tlZnVuY3Rpb24mdmFycyU1QjAlNUQ9bWQ1JnZhcnMlNUIxJTVEJTVCMCU1RD1IZWxsb1RoaW5rUEhQMjEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1619441980),('MDeaFmmwfgARZJVfrJ1XE7yTZLBlgG7HjoK468Ex',5,'27.55.90.231','Mozilla/5.0 (iPad; CPU OS 14_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Safari Line/11.6.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaWw3WHZxaFowa2wwcHJvbFZ4dHZMelFwUkJvVVRmQk92ak91TVNGSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly90ZWFjaGhlYWwuY29tL3Jvb20vMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7fQ==',1619441045),('NroUylKYKMGJQWJ3ux9PlRUdw4d1e3gagKHPTsoX',NULL,'186.33.112.240','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnNzdGdVQlhxVmRYaDRSMTNsbE56T3RDQThQV0pIT29GYXI5VVoweSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619422676),('o6dQc73hIt8aPy9GCFHd0OUdyIT7lVByhgOf5dXV',NULL,'65.49.20.67','','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2xSRlNnWHZNaXJlT2l3dWZTcDlsTTg3N3dGSEQwTURsSmJmY1lESSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619427584),('OAcyMf2miBxHswpHcMQgRYWXW0HZ4FHG74eTCaLn',NULL,'186.33.99.88','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/601.7.7 (KHTML, like Gecko) Version/9.1.2 Safari/601.7.7','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzBvTDBGWlozVmozYkQyUXFVRURLam1BaUluRmlEV3JEeWlER01jaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619424734),('pC0RzhMDyA89Y1BqTUvozSDxyDOOsmlXtWadNMJF',NULL,'89.248.165.163','libwww-perl/6.52','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN0NNcjk4dTFkUmtxY1p6RDQ5THZ4UDN4TGpIeEQzSzJUMEpIRU1URyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619442284),('rGo4QxWXevKnhze9sdgByiwtHdRIS9EhcGDNR5uX',NULL,'58.8.0.222','Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Safari Line/11.6.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoidWhaY21xWlJmeTZqTFMxSDJXVjBQWGUydDNZOFNWRWZsaWZSQ2paSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly90ZWFjaGhlYWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619426557),('UbzTGokPUW5ea1oCrBM8YdOJqpHc2rQo6dex9oqC',1,'171.6.140.189','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibThhTUZWY0g1Z0lHRlRrUld5SXpMd1RNbmkxVWVkTUpNZ3pXUGV4VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly90ZWFjaGhlYWwuY29tL3Jvb20vMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',1619444405),('UPEsTnVURUqHCipy31vMdiQ5H6cdK4QcoD9dPc7b',NULL,'115.87.238.12','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0puZWJ0RFVERmdZS2pqNW9OcUc0SWt6aGtQQ3ZGaEZnTnJrd1VwVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly93d3cudGVhY2hoZWFsLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1619427438),('V92b71vgiMlao4dgGPczlrgaNJ8zKCqewK1nJ2Vb',2,'184.22.164.243','Mozilla/5.0 (Linux; Android 9; vivo 1723 Build/PKQ1.190118.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/88.0.4324.181 Mobile Safari/537.36 Line/11.6.0/IAB','YTo0OntzOjY6Il90b2tlbiI7czo0MDoic1FaZlRQR2h0QVpieE5raGR4NVNHZndnWndXWE9TbVdHamRlMUl3OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly90ZWFjaGhlYWwuY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9',1619422271),('vHKMZeIjkejkbbFk9DEm9UBMes3kpm5r9vghRoEm',NULL,'128.14.134.134','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnk2Y01USDFBdnNyT1QyYmpRSld3cG9RaGFlQTQwZWdENzlGeWs3NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619451541),('wPp02Xk6X6ao3WA1zLmcB5wXYZwpYR6cJb7Fj2Qt',NULL,'44.234.84.105','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibW56Ujh0Sk8zR1gzV1lCbmlQN0F5RWxxVkxSaHlJeXNtS3BlYzJHUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly90ZWFjaGhlYWwuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619429525),('yS2jevx33E8H9EP4ED4EwQ9mCWmMyiJz6EgQ28lg',NULL,'201.158.47.50','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXRjN3FnWkFpQTRNTGJ6Y2RjM2kwY2JFd29PUnF5OGluMmd2a3N1USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly8zNC44Ny4xNTAuMjI5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1619424339);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'anutchai','anuschai.bsod@gmail.com',NULL,'$2y$10$h2eg/B8WUcZgSJve1RWEH.CzeKp5I7GiHu9lrxI5jCzIBfNk7iSdW',NULL,'2021-03-09 00:04:02','2021-03-09 00:04:02'),(2,'jewkata','s6302041620036@email.kmutnb.ac',NULL,'$2y$10$TCEBhY./psVWzAaoXtYjWOCUaM0bgRUDnkJo4ZaM/eLdByvYagpH2',NULL,'2021-03-16 16:03:38','2021-03-16 16:03:38'),(3,'natkung4','s6302041620125@kmutnb.ac.th',NULL,'$2y$10$eZt64Xw321fv0Jb1e4wPUezkIuqzpv022EvMYZqotWvt2lsLEkHhC',NULL,'2021-03-16 16:04:02','2021-03-16 16:04:02'),(4,'sunnyto','sunnyto515@gmail.com',NULL,'$2y$10$ngNtcJDtbPdhRV9tfAGIvubsD2LZiVriCh5i6dqg.bT.QNoGuR5kS',NULL,'2021-03-16 16:04:48','2021-03-16 16:04:48'),(5,'nuttaporn','nut5852666@gmail.com',NULL,'$2y$10$TNUhfRcYkdRq2UW9IeB6V.MAlNiN1Me461Q1lbLq7zqyOsoTweFYu',NULL,'2021-03-16 16:04:50','2021-03-16 16:04:50'),(6,'subha','zxsaere123@gmail.com',NULL,'$2y$10$9skfPSGyi.j0pffdvS9g6uigepQY5hIinuRdTfBuNa8x069aqILkO',NULL,'2021-03-16 16:04:52','2021-03-16 16:04:52'),(7,'champ4826','s6302041620061@kmutnb.ac.th',NULL,'$2y$10$sQ6p/OzTCqXrlrASJU5OFOzT/I1SHNsY5hRJWI2uvW6qaMGY0T9Pe',NULL,'2021-03-16 16:04:53','2021-03-16 16:04:53'),(8,'Siriporn','meew_see@hotmail.com',NULL,'$2y$10$x5UedsNOfvpHCEqv1/qjN.5tKtYMZ3Xn/D92lpmmTAYoT9ITsa41W',NULL,'2021-03-16 16:05:03','2021-03-16 16:05:03'),(9,'chutikarn','baifern252619@gmail.com',NULL,'$2y$10$u.liTl3vD6WXVjjSZNj9re3fLuhNgky0ixsw97NYAVHSDubWSA3hG',NULL,'2021-03-16 16:05:05','2021-03-16 16:05:05'),(10,'YOSSARIN LEEJINDA','ymarcrhabbti@gmail.com',NULL,'$2y$10$yrSV28X/2CX0mpqY0wbwO.q1CU/4vou0S3fYeSXNdReKtu9JhhTCC',NULL,'2021-03-16 16:05:13','2021-03-16 16:05:13'),(11,'Kritidaj','monbernard14852@gmail.com',NULL,'$2y$10$9L3RDGM.0UK/Ev2PpP9ta.oV.q7179HRTCJgVYhfgdd6VCuLVJ8Tq',NULL,'2021-03-16 16:05:13','2021-03-16 16:05:13'),(12,'kulachai','kulachai.lee@gmail.com',NULL,'$2y$10$p/T77Umc04LjuXDgG8BtP.SPW8ARiH7l9UdQFqi85sqkj1Y89ycBu',NULL,'2021-03-16 16:05:29','2021-03-16 16:05:29'),(13,'Kittisak','nookzaa992@gmail.com',NULL,'$2y$10$vnktTvn2uqupd3vMspsChOFR34ZsnzUL45Bp6Qlur1eUt3D6y2Y2C',NULL,'2021-03-16 16:05:30','2021-03-16 16:05:30'),(14,'Anan Charoensap','ix.arm009@gmail.com',NULL,'$2y$10$z/CiPsAPKuPj7sI.ChCa7uLEkLQFYm/ylWrZY7OXJBxr0RmPEwQou',NULL,'2021-03-16 16:05:42','2021-03-16 16:05:42'),(15,'Pakawat Prabthong','pakawat20prabthong@gmail.com',NULL,'$2y$10$Tqima3I5iiyWNHhScAXFSOdISNJToKWXerVh38czhPpwH9uJdUKS6',NULL,'2021-03-16 16:05:47','2021-03-16 16:05:47'),(16,'Meta','Meta3252@gmail.com',NULL,'$2y$10$K/fzWQ2kGZycVjZoORycoeOomlJxqNbpCDesu.UAlMUdQmLkQSLkq',NULL,'2021-03-16 16:05:47','2021-03-16 16:05:47'),(17,'Ryu','eyejangei@gmail.com',NULL,'$2y$10$qTbh1YxsP93KNHg2aPYHv.FFCAXokZEpuf5Xc2dZfCw4WjC4FQ6La',NULL,'2021-03-16 16:06:02','2021-03-16 16:06:02'),(18,'Afdol','afdollateh2544@gmail.com',NULL,'$2y$10$2GOhSfHH1TLHecDClslW/ugFtuAGRxAIXv6irpxfbYad8FwwfDHDi',NULL,'2021-03-16 16:06:05','2021-03-16 16:06:05'),(19,'bookbungtim','bookrock1046@gmail.com',NULL,'$2y$10$XYVSoK79paGZjUCfa38Gouuc3JhOa65aAy4FUCfPWR9B666M0cxcq',NULL,'2021-03-16 16:06:28','2021-03-16 16:06:28'),(20,'Ti_Tee','kankanny@gmail.com',NULL,'$2y$10$AqpQkHlF.dgYc7dG/X6Ske.Qpm4Y8XIvnwphxxSCWypu6c9Ultr..',NULL,'2021-03-16 16:06:30','2021-03-16 16:06:30'),(21,'suparat poonsawat','suparat060244@gmail.com',NULL,'$2y$10$DyQJOzUBP1DyHB.j.SAXauX5pfGzXnU7eiCXBTv8dz72WXBfnNT2u',NULL,'2021-03-16 16:06:33','2021-03-16 16:06:33'),(22,'Jadsadaporn boonchom','earthjadsadaporn@gmail.com',NULL,'$2y$10$eKqHyKNgwo4ikHI9eO0bL.wTWEd18Dr2SKIpK4mvXIduNDcb7pjVy',NULL,'2021-03-16 16:07:52','2021-03-16 16:07:52'),(23,'jardeenlee','jirayut.thong@gmail.com',NULL,'$2y$10$k3wbLTFEgsFtRDjDxY6ApOf//CaTCUDzO1emt4l9jLgQO0sLYxdGe',NULL,'2021-03-16 16:07:57','2021-03-16 16:07:57'),(24,'revomiwxz','s6302041610103@email.kmutnb.ac',NULL,'$2y$10$GJGHs7qyF.JUiJfqRcRdbuVUknALYVYeFdDXS7o3Gt1Dww3ExUI/O',NULL,'2021-03-16 16:07:59','2021-03-16 16:07:59'),(25,'Broxyss','s6302041610049@email.kmutnb.ac.th',NULL,'$2y$10$TgPWp7aGqKeJliy0.Yk/6.2iTXS2pZaVvMI.icrqN6ixcchj6dG2y',NULL,'2021-03-16 16:08:32','2021-03-16 16:08:32'),(26,'Warittha','s6302041610111@email.kmutnb.ac.th',NULL,'$2y$10$GPn5lUXQD3xJ0WCjwN.vleXnBkP.mbuVh3Uvuk8mzeBMwJy7ls05i',NULL,'2021-03-16 16:09:53','2021-03-16 16:09:53'),(27,'acninwza','achitngam@gmail.com',NULL,'$2y$10$vbL3xGIMxjUQYJhhs8FYSOfTjfeeebHBta/KFxllNQSj3vh9RFqpu',NULL,'2021-03-16 16:12:06','2021-03-16 16:12:06'),(28,'ttayza14598','kkornzaza2@gmail.com',NULL,'$2y$10$y8kbjYfnRno1jce6fw4ZtOGKjhXd08456sxYm.ek7kONeV3oNSRra',NULL,'2021-03-16 16:15:25','2021-03-16 16:15:25'),(29,'Yossarin Leejinda','s6302041620117@email.kmutnb.ac',NULL,'$2y$10$Ku9vjPjFtQFcQI86SLkJDOBkcKwL/dUbfRbzqD6F2B3y/l48ujg/u',NULL,'2021-03-23 14:34:17','2021-03-23 14:34:17'),(30,'Warakorn','s6302041620133@email.kmutnb.ac.th',NULL,'$2y$10$4c0Gl.spVQUVbl7J.tR.8e4DpjdAP5hotZZrwPtNRvB.f4kY5T4Ja',NULL,'2021-03-23 14:34:35','2021-03-23 14:34:35'),(31,'Wraiths Boonmee','s63020416101@email.kmutnd.ac.th',NULL,'$2y$10$OXq0NT5KQ5H7we1j0dxk5.HyybRK5Z6I./amMZ22GYjiUQxVaEXzu',NULL,'2021-03-23 14:34:48','2021-03-23 14:34:48'),(32,'revomiwxz','miwza259@gmail.com',NULL,'$2y$10$4ZBWYKoXufPOEVI6SneWkuyTG1Lq/E4tvI2OiZ28qWP7z4zs7DbBS',NULL,'2021-03-23 14:34:54','2021-03-23 14:34:54'),(33,'Afdol Lateh','s6302041620176@email.kmutnb.ac.th',NULL,'$2y$10$QF1Dmku96NnCqiRaVwpA4Oy6OQ2SvLrdNGB70aW05z7NECYIiDto6',NULL,'2021-03-23 14:47:55','2021-03-23 14:47:55'),(34,'111','kankanny07@email.com',NULL,'$2y$10$Lhhd5Dv47xNfO6FW20mV/eOnqVLMuHKXfYO0s51ipto1x22rYGdY2',NULL,'2021-03-30 14:10:23','2021-03-30 14:10:23'),(35,'Tretap','kankanny07@gmail.co.th',NULL,'$2y$10$xoncbAIr1k57XzHxeGEtxO/6KhcIKpsJRs69j3BlVPAREer6jBjVK',NULL,'2021-04-20 13:17:57','2021-04-20 13:17:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27 13:15:45
