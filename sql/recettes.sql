-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: we_love_food
-- ------------------------------------------------------
-- Server version       8.0.22

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `recipe_id` int NOT NULL,
  `comment` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `review` int NOT NULL DEFAULT '3',
  PRIMARY KEY (`comment_id`),
  KEY `user_id` (`user_id`),
  KEY `recipe_id` (`recipe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (2,3,1,'Deuxi├¿me commentaire','2021-07-06 13:56:48',0),(1,1,1,'Premier commentaire\n','2021-07-06 13:56:48',1),(3,2,1,'J\'adore le cassoulet mais je pr├®f├¿re manger des kebabs !','2021-07-06 13:56:48',3),(5,2,1,'Et de 5 ! trop bien la recette :)','2021-07-06 14:10:50',3),(7,2,1,'Test de 5','2021-07-06 14:14:39',5);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `recipe_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `recipe` text NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `author` varchar(512) NOT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,'Cassoulet Toulousain','                                                                Le cassoulet (de l\'occitan cassolet, ca├ºolet) est une sp├®cialit├® r├®gionale du Languedoc, ├á base de haricots secs, g├®n├®ralement blancs, et de viande. ├Ç son origine, il ├®tait ├á base de f├¿ves. Le cassoulet tient son nom de la cassole en terre cuite ├®maill├®e dite ca├º├▓la1 en occitan et fabriqu├®e ├á Issel.\r\n
                              ',1,'mickael.andrieu@exemple.com'),(2,'Couscous','Le couscous (en berb├¿re : ÔÁÖÔ┤¢ÔÁÖÔÁô seksu ou Ô┤¢ÔÁÖÔ┤¢ÔÁÖÔÁô keskesu1, en arabe maghr├®bin : Ïº┘äÏÀÏ╣Ïº┘àÏî ┘âÏ│┘âÏ│┘èÏî ┘âÏ│┘âÏ│Ïî Ï│┘âÏ│┘ê, seksu, kuskus, kusksi, kesksu, tÔÇÖam) est d\'une part une semoule de bl├® dur pr├®par├®e ├á l\'huile d\'olive (un des aliments de base traditionnel de la cuisine des pays du Maghreb) et d\'autre part, une sp├®cialit├® culinaire issue de la cuisine berb├¿re, ├á base de couscous, de l├®gumes, d\'├®pices, d\'huile d\'olive et de viande (rouge ou de volaille) ou de poisson.',0,'mickael.andrieu@exemple.com'),(3,'Escalope milanaise','L\'escalope ├á la milanaise, ou escalope milanaise (co(s)toleta a la milanesa in langue lombarde), est une escalope pan├®e, de viande de veau, traditionnellement prise dans le faux-filet. Historiquement, on la cuit avec du beurre. Elle est g├®n├®ralement servie avec salade ou frites, accompagn├®e de sauce mayonnaise. On peut y ajouter un filet de jus de citron.\n\nEn Italie, ce mets ne se sert pas avec des p├ótes.',1,'mathieu.nebra@exemple.com'),(4,'Salade Romaine','La salade C├®sar (en anglais : Caesar salad ; en espagnol : ensalada C├®sar ; en italien : Caesar salad) est une recette de cuisine de salade compos├®e de la cuisine am├®ricaine, traditionnellement pr├®par├®e en salle ├á c├┤t├® de la table, ├á base de laitue romaine, ┼ôuf dur, cro├╗tons, parmesan et de ┬½ sauce C├®sar ┬╗ ├á base de parmesan r├óp├®, huile d\'olive, p├óte d\'anchois, ail, vinaigre de vin, moutarde, jaune d\'┼ôuf et sauce Worcestershire4.',0,'laurene.castor@exemple.com'),(10,'Paella','La paella est un plat traditionnel ├á base de riz rond, originaire de la r├®gion de Valence en Espagne, qui tient son nom de la po├¬le qui sert ├á la cuisiner.',1,'mathieu.nebra@exemple.com'),(11,'Tartiflette','La tartiflette (d├®riv├® de tartifle, ou tartifl├ó, pomme de terre, en savoyard) est une recette de cuisine, ├á base de gratin de pommes de terre, oignons, lardons, le tout gratin├® au reblochon (fromage AOP des pays de Savoie).',1,'mickael.andrieu@exemple.com'),(12,'Steak tartare','Le steak tartare ou tartare est une recette ├á base de viande de b┼ôuf ou de viande de cheval crue, g├®n├®ralement hach├®e gros, ou coup├®e en petits cubes au couteau (d\'o├╣ l\'appellation de tartare au couteau) .\r\n\r\nLe filet am├®ricain est une variante belge et du nord de la France.',0,'mickael.andrieu@exemple.com'),(13,'Quiche lorraine','La quiche lorraine est une variante de quiche / tarte sal├®e de la cuisine lorraine et de la cuisine fran├ºaise, ├á base de p├óte bris├®e ou de p├óte feuillet├®e, de migaine d\'┼ôufs, de cr├¿me fra├«che et de lardons.',1,'laurene.castor@exemple.com');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(64) NOT NULL,
  `email` varchar(512) NOT NULL,
  `password` varchar(512) NOT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Micka├½l Andrieu','mickael.andrieu@exemple.com','S3cr3t',34),(2,'Mathieu Nebra','mathieu.nebra@exemple.com','MiamMiam',34),(3,'Laur├¿ne Castor','laurene.castor@exemple.com','laCasto28',28);
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

-- Dump completed on 2021-09-15 22:16:35