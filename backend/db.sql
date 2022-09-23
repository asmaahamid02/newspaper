CREATE DATABASE  IF NOT EXISTS `newspaper` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `newspaper`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: newspaper
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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `publisher_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` longtext NOT NULL,
  `image` longtext NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_news_publishers_publisher_id_idx` (`publisher_id`),
  CONSTRAINT `fk_news_publishers_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (20,1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque hendrerit lacinia nunc, at consectetur nunc tempor sed. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque in tincidunt tortor. Pellentesque id mollis nunc. Phasellus sit amet vulputate erat. Maecenas imperdiet bibendum tincidunt. Quisque dapibus nunc lectus, finibus luctus lorem iaculis at. Vivamus et urna at arcu euismod maximus id ut dui. Nullam rutrum consequat sem a pulvinar.','1.jpg','2022-09-11 21:00:00'),(21,2,'Phasellus id libero et elit finibus porttitor','Sed viverra, enim in rhoncus accumsan, erat orci malesuada mauris, nec pharetra nisl eros eu felis. In dapibus velit at nulla laoreet, ac ultrices ex consectetur. Vestibulum ut pretium elit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque iaculis ullamcorper magna non pellentesque. Suspendisse convallis fringilla felis, eu tincidunt elit efficitur non. Ut eget tristique libero, vel consectetur est. Maecenas et tincidunt quam.','2.jpg','2022-09-18 21:00:00'),(22,3,'Phasellus gravida mauris sit amet tellus mattis, quis ultrices nunc ullamcorper.','Aliquam porta at erat eu dapibus. Morbi sem lacus, auctor a leo eu, tincidunt accumsan libero. Nullam arcu erat, porta ut volutpat a, mattis at libero. Fusce at interdum velit. Pellentesque sollicitudin lacinia viverra. Quisque id lacus quis leo sodales egestas. Curabitur mi libero, faucibus venenatis mi bibendum, congue semper nunc. Curabitur luctus rutrum justo, at tempus lorem. Nam nec bibendum sem. Aliquam erat volutpat. Etiam fringilla tincidunt eleifend. Fusce condimentum sapien nec mattis porttitor. Suspendisse a odio at neque pellentesque interdum. Sed ac auctor dui.','3.jpg','2022-09-21 21:00:00'),(23,4,'Maecenas ut nulla mattis, eleifend tellus in, porta nulla.','Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla lacus neque, aliquet quis tempus quis, hendrerit sit amet nunc. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed scelerisque mauris ac lacus hendrerit fringilla. Morbi sed luctus nunc. Integer consectetur sodales mollis. Suspendisse quis tellus eros. Mauris velit ligula, mollis viverra condimentum vitae, dictum in lectus. Suspendisse non justo semper, mollis arcu sed, ullamcorper eros. Quisque maximus a arcu in convallis.','4.jpg','2022-09-22 21:00:00'),(24,5,'Etiam aliquet nibh ac feugiat ultricies.','Pellentesque hendrerit placerat eros at accumsan. Aliquam elementum enim ut nulla euismod tempus. Donec lorem ex, dapibus vel sodales in, volutpat quis leo. Pellentesque a massa ac lorem aliquam fringilla. Ut sodales urna mattis odio placerat, sed malesuada est bibendum. Curabitur sollicitudin at ante vitae suscipit. Nullam elementum sapien et nibh suscipit, vel vehicula velit vestibulum. Phasellus ac ante porttitor erat congue consectetur. Praesent quis velit in nisl hendrerit mollis ut nec nunc. Praesent ut fermentum mi, in lacinia ante. Praesent porta malesuada lorem, ac gravida tellus mollis gravida. Duis feugiat, dui a facilisis faucibus, est mauris tempus libero, auctor interdum ante mi eu metus. Sed finibus ipsum dolor, nec gravida enim finibus eget. Donec a auctor neque, in vestibulum ex.','5.jpg','2022-09-22 21:00:00'),(25,6,'Donec vitae arcu sit amet velit mollis feugiat at at nisi.','Phasellus nec maximus mi. Praesent nec erat non quam euismod tristique. Aliquam cursus ac quam eget auctor. Maecenas laoreet diam eget euismod bibendum. Nunc molestie ipsum velit, ut varius ex aliquet vitae. Sed suscipit lobortis quam, id ultricies ligula aliquet vel. Fusce sed massa et metus interdum vehicula. Pellentesque posuere libero eu mi vulputate molestie. Pellentesque arcu nisi, tincidunt sit amet neque quis, mattis tempor enim. Vestibulum maximus erat sit amet mi tincidunt, vitae consequat sem condimentum. Suspendisse nulla massa, efficitur non magna eget, ullamcorper tincidunt turpis. Etiam aliquet euismod risus, at scelerisque felis. Duis id eleifend nulla. Nunc efficitur volutpat gravida.','6.jpg','2022-09-13 21:00:00'),(26,7,'Donec mattis lacus vitae nulla vehicula, ut tempus lacus feugiat.','Vivamus laoreet urna vel ipsum molestie, non lobortis odio volutpat. In hac habitasse platea dictumst. Nam non mollis libero. Pellentesque congue dui tortor, id malesuada metus fermentum eu. Phasellus non nunc vel metus aliquam egestas non eget urna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','7.jpg','2022-09-14 21:00:00'),(27,8,'Sed at magna in augue scelerisque pellentesque.','Nullam tincidunt ligula vitae ligula lacinia condimentum. Duis porttitor faucibus rhoncus. Praesent sed ipsum a dui condimentum commodo nec nec sapien. Vestibulum maximus, felis at bibendum rutrum, turpis urna auctor diam, vel pharetra ante dolor eget augue. Quisque mattis consequat leo, ut varius mauris dapibus vel. Sed blandit, mauris nec efficitur finibus, dolor mi convallis metus, vitae placerat risus dui non libero. Nunc vitae nisl feugiat, feugiat massa eu, finibus neque. Nulla rutrum, nulla non ultricies ornare, est dui viverra diam, ac convallis nulla sem eget nisi.','8.jpg','2022-09-10 21:00:00'),(28,9,'Sed venenatis est sit amet efficitur aliquam','Proin purus libero, egestas nec libero nec, tempus porta ligula. Nunc sed mattis quam. Phasellus cursus at enim sed porta. Cras eget sodales augue. Fusce eget rutrum lectus. Aenean iaculis bibendum purus, ut sollicitudin augue sagittis id. Morbi id dolor a ligula sodales sollicitudin. Donec tincidunt dui ipsum, non commodo neque placerat non. Ut hendrerit ligula ut enim semper congue sed ut justo. Morbi at turpis et ex venenatis sollicitudin. Duis justo tortor, dictum et magna a, dictum maximus odio. Mauris gravida et quam eu tempus.','9.jpg','2022-09-20 21:00:00'),(29,10,'Vivamus sit amet metus scelerisque, ornare nunc ac, porta ex.','Curabitur eget metus vel nulla maximus aliquet. Aliquam suscipit ornare lectus nec viverra. Morbi id sollicitudin odio, eget vulputate ligula. Nunc varius pulvinar euismod. Aliquam erat volutpat. Ut hendrerit enim sed mattis maximus. Maecenas enim nisi, malesuada quis elit varius, finibus auctor erat. Donec blandit iaculis mauris quis maximus. Nulla facilisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Cras massa lectus, laoreet vitae ultrices eu, fringilla in quam. Duis congue nibh sapien, vitae accumsan sem rutrum et. Suspendisse potenti.','10.jpg','2022-09-09 21:00:00');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,'Evie-Mae Preston'),(2,'Rufus Woodley'),(3,'Caroline Olsen'),(4,'Aaron Padilla'),(5,'Addie Brewer'),(6,'Kristie Myers'),(7,'Fern Moran'),(8,'Alena Povey'),(9,'Aine Bond'),(10,'River Bourne');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-23 13:30:03
