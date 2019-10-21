-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: nutrition_db
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material` varchar(45) NOT NULL,
  `calorie` float NOT NULL,
  `protein` float NOT NULL,
  `totalFat` float NOT NULL,
  `saturated` float NOT NULL,
  `mufa` float NOT NULL,
  `pufa` float NOT NULL,
  `carbohydrat` float NOT NULL,
  `fiber` float NOT NULL,
  `price` int(11) NOT NULL,
  `source_url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Apple',47,0.29,0.33,0.053,0.013,0.095,12,1.3,376,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/173932/nutrients'),(2,'Strawberry',35,0.43,0.11,0.006,0.015,0.054,9.13,2.1,2068,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/341674/nutrients'),(3,'Melon',33,0.84,0.25,0.064,0.006,0.098,7.94,0.7,442,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/169912/nutrients'),(4,'HoneyDew',36,0.54,0.14,0.038,0.003,0.059,9.09,0.8,442,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/341576/nutrients'),(5,'Raspberry',52,1.2,0.65,0.019,0.064,0.375,11.94,6.5,6380,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/341666/nutrients'),(6,'Blueberry',51,0.42,0.64,0.053,0.091,0.279,12.17,2.7,10392,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/341647/nutrients'),(7,'Papaya',43,0.47,0.26,0.081,0.072,0.058,10.82,1.7,142,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/169926/nutrients'),(8,'Banana',89,0.33,0.33,0.112,0.032,0.073,22.84,2.6,294,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/341529/nutrients'),(9,'Pumpkin',109,1,0.1,0.052,0.013,0.005,6.5,0.5,412,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/168448/nutrients'),(10,'Mango',60,0.82,0.38,0.092,0.14,0.071,14.98,1.6,215,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/341577/nutrients'),(11,'Pear',57,0.36,0.14,0.022,0.084,0.094,15.23,3.1,399,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/341598/nutrients'),(12,'Dragon fruit (Red)',60,1.18,0,0,0,0,12.94,2.9,419,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/537279/nutrients'),(13,'Dragon fruit (White)',60,1.18,0,0,0,0,12.94,2.9,0,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/537279/nutrients'),(14,'Edamame*',109,11.22,4.73,0,0,0,7.61,4.8,245,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/168410/nutrients'),(15,'Pea*',81,5.42,0.4,0.071,0.035,0.187,14.45,5.7,0,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/170419/nutrients'),(16,'Chickpeas*',163,8.81,2.57,0.267,0.579,1.149,27.25,7.6,275,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/339321/nutrients'),(17,'Avocado Oil',884,0,100,11.56,70.554,13.486,0,0,8000,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/173573/nutrients'),(18,'Virgin Coconut Oil*',892,0,99.06,82.475,6.332,1.702,0,0,4300,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/343868/nutrients'),(19,'Olive oil',884,0,100,13.808,72.961,10.523,0,0,2120,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/343873/nutrients'),(20,'Coconut milk*',31,0.21,2.08,2.083,0,0,2.92,0,0,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/336111/nutrients'),(21,'Carrot',41,0.93,0.24,0.037,0.014,0.117,9.58,2.8,240,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/342354/nutrients'),(22,'Asparagus',24,3.23,0.23,0.052,0.007,0.101,4.1,1.9,2300,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/169208/nutrients'),(23,'Kale',28,2.66,0.46,0.059,0.034,0.219,4.88,2,900,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/169239/nutrients'),(24,'Cauliflower',24,2.01,0.27,0.041,0.019,0.128,4.68,2.3,340,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/170398/nutrients'),(25,'Tomato',18,0.88,0.2,0.028,0.031,0.083,3.89,1.2,317,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/342502/nutrients'),(26,'Zucchini',21,1.05,0,0,0,0,4.21,1.1,300,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/595040/nutrients'),(27,'Broccoli',34,2.82,0.37,0.114,0.031,0.112,6.64,2.6,554,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/170379/nutrients'),(28,'Potato',243,2.57,0.1,0.026,0.002,0.043,12.44,2.5,360,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/170032/nutrients'),(29,'Spinach',23,2.86,0.39,0.063,0.01,0.165,3.63,2.2,224,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/168462/nutrients'),(30,'Oat',379,13.15,6.52,1.11,1.98,2.3,10.1,0.99,300,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/340734/nutrients'),(31,'Quinoa',120,4.4,1.92,0.231,0.528,1.078,21.3,2.8,3905,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/168917/nutrients'),(32,'Garlic',149,6.36,0.5,0.089,0.011,0.249,33.06,2.1,555,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/169230/nutrients'),(33,'Turmeric',312,9.68,3.25,1.838,0.449,0.756,67.14,22.7,340,'https://fdc.nal.usda.gov/fdc-app.html#/food-details/172231/nutrients');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_detail`
--

DROP TABLE IF EXISTS `recipe_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NOT NULL,
  `gram` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_detail`
--

LOCK TABLES `recipe_detail` WRITE;
/*!40000 ALTER TABLE `recipe_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipeName` varchar(45) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-21 11:09:34
