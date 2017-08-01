-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: bookboard2_development
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-07-22 19:25:36','2017-07-22 19:25:36');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Михаил','Лермонтов','2017-07-22 19:30:51','2017-07-22 19:33:13'),(2,'Фёдор','Достоевский','2017-07-22 19:32:56','2017-07-22 19:32:56'),(3,'Рэй','Брэдбэри','2017-07-22 19:33:39','2017-07-22 19:33:39'),(4,'Александр','Пушкин','2017-07-30 18:18:51','2017-07-30 18:18:51');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `description` text,
  `user_id` bigint(20) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `genre_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_books_on_user_id` (`user_id`),
  KEY `index_books_on_author_id` (`author_id`),
  KEY `index_books_on_genre_id` (`genre_id`),
  KEY `index_books_on_location_id` (`location_id`),
  CONSTRAINT `fk_rails_53d51ce16a` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `fk_rails_776de3933f` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  CONSTRAINT `fk_rails_8370e76c68` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  CONSTRAINT `fk_rails_bc582ddd02` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Вино из одуванчиков','русский','«Винo из одуванчиков» — повесть Рэя Брэдбери, впервые изданная в 1957 году.',1,3,12,'2017-07-23 18:40:22','2017-07-23 19:29:42',1),(2,'Герой нашего времени','русский','«Геро́й на́шего вре́мени» — первый в русской прозе лирико-психологический роман в литературном направлении реализма, близкого к романтизму,',2,1,8,'2017-07-23 19:31:32','2017-07-23 19:31:32',2),(3,'Евгений Онегин','русский','Впервые опублинован в 1825 году.',2,4,8,'2017-07-30 18:44:24','2017-07-30 18:50:39',3),(4,'Приступление и наказание','русский','Опубликовано в 1866 году.',6,4,8,'2017-07-31 11:34:54','2017-07-31 11:34:54',3);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'зарубежная классика','2017-07-22 19:39:20','2017-07-22 19:42:58'),(2,'детективы и триллеры','2017-07-22 19:43:49','2017-07-22 19:43:49'),(3,'исторические романы','2017-07-22 19:44:12','2017-07-22 19:44:12'),(4,'любовные романы','2017-07-22 19:44:27','2017-07-22 19:44:37'),(5,'мемуары и биографии','2017-07-22 19:44:55','2017-07-22 19:44:55'),(6,'мифы и легенды','2017-07-22 19:45:16','2017-07-22 19:45:16'),(7,'приключенческие романы','2017-07-22 19:45:34','2017-07-22 19:45:34'),(8,'русская классика','2017-07-22 19:45:50','2017-07-22 19:45:50'),(9,'современная проза','2017-07-22 19:46:10','2017-07-22 19:46:10'),(10,'ужасы и мистика','2017-07-22 19:46:27','2017-07-22 19:46:27'),(11,'украинская литература','2017-07-22 19:46:50','2017-07-22 19:46:50'),(12,'фантастика и фэнтэзи','2017-07-22 19:47:04','2017-07-22 19:47:04');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `description` text,
  `email` varchar(255) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'IQspace','Одесса, ул. Жуковского, 9','Креативное IT-сообщество.','info@iqspace.biz',949457105,'2017-07-22 19:51:23','2017-07-22 19:51:23'),(2,'McDonald\'s','Одесса,площадь Независимости, 1','Ресторан быстрого питания.','mcdonalds@odessa.ua',487461023,'2017-07-22 19:53:27','2017-07-22 19:53:27'),(3,'White Whale','Одесса,переулок Вице-Адмирала Жукова 3/7','Городское кафе','white@whale.ua',977773052,'2017-07-22 19:55:49','2017-07-22 19:55:49');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170721174020'),('20170721174036'),('20170721174047'),('20170721174059'),('20170721174124'),('20170723183133');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alexandr','Ivanov',941004000,'sasha@ukr.net',0,'2017-07-23 17:55:32','2017-07-23 17:55:32'),(2,'Vadim','Tkach',984001515,'vadim@gmail.com',0,'2017-07-23 17:56:22','2017-07-23 17:56:22'),(3,'Han','Solo',935551239,'han@stars.net',0,'2017-07-23 17:57:01','2017-07-23 17:57:01'),(4,'Luke','Skywalker',971118942,'luke@skywalker.com',0,'2017-07-29 14:26:34','2017-07-29 14:26:34'),(5,'Marhall','Mathers',636633897,'slim@shady.com',0,'2017-07-29 14:36:32','2017-07-29 14:36:55'),(6,'Lebron','James',964189300,'lebron@ukr.net',0,'2017-07-30 07:52:51','2017-07-30 07:52:51');
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

-- Dump completed on 2017-07-31 18:45:33
