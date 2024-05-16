-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: Personal_portfolio
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `contact_form`
--

DROP TABLE IF EXISTS `contact_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `message` text,
  `contact_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `contact_form_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_form`
--

LOCK TABLES `contact_form` WRITE;
/*!40000 ALTER TABLE `contact_form` DISABLE KEYS */;
INSERT INTO `contact_form` VALUES (1,'nagu@1','wipro','wipro@gmail.com','764636','we are interested','2024-04-16 10:24:53');
/*!40000 ALTER TABLE `contact_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `pid` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `caption` text,
  `descp` text,
  `images` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES ('E2fC2iP9l','Avanish','Design Digest #85','If you are a little creative and have the time to do research, you don\'t need to hire a professional interior designer to design your interior. ','E2fC2iP9l','2024-05-14 13:03:15'),('F6vZ9xG3w','Avanish','UI Interfaces Of The Week','User interface (UI) design is the process of developing and creating menus and tools that allow users to navigate a digital product.','F6vZ9xG3w','2024-05-14 12:57:58'),('H7uL6oV3f','Avanish','Best Fonts Ever Designer','The Popular Sans Serif fonts. Newake. Futura. Aileron. Gilroy. Helvetica Neue. Univers. Lato. Nexa. Archive Grotesk. Animosa. Public sans. Salt.','H7uL6oV3f','2024-05-14 12:54:07'),('N8yI1qF4m','Avanish','The Forgetten Art Of Spacing ','Animation can be defined as ‘management of a set of still images at a certain speed to generate the illusion of movement’. ','N8yI1qF4m','2024-05-14 13:01:14'),('Y4iY5tB8w','Avanish','Design Conferences in 2024','A great design conference or talk in general can help you find your communities in terms of further exploring your research areas, connecting with other collaborators, looking for possible research opportunities, funding, and much more','Y4iY5tB8w','2024-05-14 12:52:37'),('Z5vB2oT6k','Avanish','Design digest #80','\r\nAutomatic renewal and cancellation: After your initial one year term, your subscription will automatically renew at one year for $49.99 (or the then current rate) plus applicable sales tax.','Z5vB2oT6k','2024-05-14 12:56:07');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `introduction` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `phnumber` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `profile` text NOT NULL,
  `skills` text NOT NULL,
  `languages` text NOT NULL,
  `education` text NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `resume_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_data`
--

LOCK TABLES `user_data` WRITE;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
INSERT INTO `user_data` VALUES (19,'Software developers use their programming skills to create new software and improve existing software applications. They design and write the code used to build everything from operating systems to mobile apps to video games. Often, project managers provide software developers with an organization\'s business goals, and they translate those needs into software requirements. ','Avanish','8374723799','8374723799tnva@gmail.com','Software developers use their programming skills to create new software and improve existing software applications. They design and write the code used to build everything from operating systems to mobile apps to video games. Often, project managers provide software developers with an organization\'s business goals, and they translate those needs into software requirements. ','A profile is a set of metadata that describes the content and structure of a data set. Profiling and data discovery is often the first step in a project. You can run a profile to evaluate the structure of data and verify that data columns are populated with the types of information you expect.','Java, Python, DBMS, HTML, CSS & JS','English, Telugu','BCA','Portfolio','Software developers use their programming skills to create new software and improve existing software applications. ','pexels-pixabay-531880.jpg','http://127.0.0.1:5000/submit_form','avanish_Resume_new.pdf');
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Avanish','1235','tatikondaavanish72@gmail.com'),('nagu@1','123','nagalakshmi@codegnan.com');
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

-- Dump completed on 2024-05-16 23:12:12
