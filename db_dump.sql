-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: fm
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `unit_price` int NOT NULL,
  `kilogram_price` int DEFAULT NULL,
  `url_img` text NOT NULL,
  `units` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_99c39b067cfa73c783f0fc49a6` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (4,'12345671','BATATA CONG NOISETTE SADIA PC400GR',23,NULL,'https://storage.googleapis.com/phygital_files/mercado-milenio/uploads/produto/batata_cong_noisette_sadia_pc400gr_bc899539-59c7-400c-8f7c-2f2fa085eb7a.png',0),(5,'12345672','SABAO DE COCO BARRA 100G',4,NULL,'https://storage.googleapis.com/phygital_files/comercial-bambina/uploads/produto/sabao_de_coco_barra_100g_5f4276ff-fbcf-4c17-a080-c3807b6a8991.png',0),(6,'12345673','Macarrão instantâneo luccas neto - sabor carne',5,NULL,'https://images-americanas.b2w.io/produtos/3398641894/imagens/macarrao-instantaneo-luccas-neto-sabor-carne-sandella/3398641894_1_large.jpg',0),(7,'12345674','MUCILON ARROZ E AVEIA SH360GR',14,NULL,'https://storage.googleapis.com/phygital_files/mercado-milenio/uploads/produto/mucilon_arroz_e_aveia_sh360gr_c1ebc0e9-fec9-43cb-b180-7c6be0a8998d.png',0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `access_token` text NOT NULL,
  `refresh_token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsInVzZXJuYW1lIjoiY2hyaXNAZ21haWwuY28zbSIsImlhdCI6MTcwNTE4OTYyOSwiZXhwIjoxNzA1MTg5Njg5fQ.TGJwDqnRmLFnA1eT7uxZCQ38FUgVcclusr5yS7i3z9E','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsInVzZXJuYW1lIjoiY2hyaXNAZ21haWwuY28zbSIsImlhdCI6MTcwNTE4OTYyOSwiZXhwIjoxNzA1Nzk0NDI5fQ.KhpXlzEkxhmLNdrn8z7TVmNtd2i8CSwqiUp7cf5tTmQ'),(2,2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjIsInVzZXJuYW1lIjoiY2hyaWRzQGdtYWlsLmNvM20iLCJpYXQiOjE3MDQ0ODA2MzIsImV4cCI6MTcwNDQ4MDczMn0.9mYJouOBDSsQMdgha-U7I_7nPLowiMoymf-gMi59ni4','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjIsInVzZXJuYW1lIjoiY2hyaWRzQGdtYWlsLmNvM20iLCJpYXQiOjE3MDQ0ODA2MzIsImV4cCI6MTcwNTA4NTQzMn0.R70Kd3gfGgp9kHYD-ZqK7P2-I8-q1MO12TlWltlUyL8'),(3,3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjMsInVzZXJuYW1lIjoiY2hyaWRzZ0BnbWFpbC5jbzNtIiwiaWF0IjoxNzA0NDgwODYxLCJleHAiOjE3MDQ0ODA5NjF9.EpP-a-xq6VSajbXRhZOj-iUaO8-U4yYbVgRLJkaUGjI','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjMsInVzZXJuYW1lIjoiY2hyaWRzZ0BnbWFpbC5jbzNtIiwiaWF0IjoxNzA0NDgwODYxLCJleHAiOjE3MDUwODU2NjF9.HmMVJEOISQ8FW--lNfDRRtRDEHuWP1azuWxakH8S7bM'),(4,4,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQsInVzZXJuYW1lIjoiY2hyaWRkc2dAZ21haWwuY28zbSIsImlhdCI6MTcwNDQ4NzU0MywiZXhwIjoxNzA0NDg3NjQzfQ.P37LEdid5-hQ6I-fXpe7ljzCztr6L9bRhk-wUGcn4kw','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQsInVzZXJuYW1lIjoiY2hyaWRkc2dAZ21haWwuY28zbSIsImlhdCI6MTcwNDQ4NzU0MywiZXhwIjoxNzA1MDkyMzQzfQ.AaAYHYBsm8sfgnPOZk5n0SYIAD3wfiJ8VDndXJffNJw'),(5,15,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE1LCJ1c2VybmFtZSI6ImNocmlkZGRjY2NkZHNnY2RAZ21haWwuY28zbSIsImlhdCI6MTcwNTI3MzcwMCwiZXhwIjoxNzA1MjczNzYwfQ.0aVQUMtkDJYF4kexnr9FEw9euPrqaE6RbuFigj3LBzg','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE1LCJ1c2VybmFtZSI6ImNocmlkZGRjY2NkZHNnY2RAZ21haWwuY28zbSIsImlhdCI6MTkwNTI3MzcwMCwiZXhwIjoxOTA1MjczNzYwfQ.I9915MhFwk9WSSV63H3DfTGd6FidVnyOx_4HeLgXzdo');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_78a916df40e02a9deb1c4b75ed` (`username`),
  UNIQUE KEY `IDX_a6235b5ef0939d8deaad755fc8` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'chris','chris@gmail.co3m','$2b$10$Skq96H75PqzMHpvKl1Y//OkWvv9luPCk3pvFFr99AkIoj7RtWmGvi','U2FsdGVkX18EWemdkHunYId1pgo3vjDbShZ6qxwOOK8='),(2,'chris','chrids@gmail.co3m','$2b$10$wuRt1yLq03zv8Ft4DgCYru.fzrqL1UCQtvguPrdUq6RZcaj7AF3mW','U2FsdGVkX1+f1LRP1/5eCSawVLloSH6sgHERyf2jM88='),(3,'chris','chridsg@gmail.co3m','$2b$10$wSMjhHs7wlXtJjlahit0YuiATSApU/oMqirxhz7Ap1DecZgNeMYlG','U2FsdGVkX19vHsX/msL0R2agec/xWgazCmExQIoXd7Rm/nXVNZHGA2Vx82Mzpg1+'),(4,'chris','chriddsg@gmail.co3m','$2b$10$L84E.1h0ZnGIZPAU0qIK9.mUEOyjdQbP3RCFQw4F2t7TFmPsk5Anq','U2FsdGVkX1/PIZXRMycBN1cRyiKW8awcLLt6BXB15rRRwTtdgAQykjYr7ERpFlaO'),(5,'chris','chriddsgd@gmail.co3m','$2b$10$LV4IPSxYN5cAf0ClqvFHJuqUWdttnYExAmdNFrDswYHhJoq3H.myG','U2FsdGVkX1/dZTf9eFrVhYL5J7+Ellvo0aI94ggJFCOvsdmnzdEbXhIJWrQw+lhR'),(7,'chris','chriddcsgd@gmail.co3m','$2b$10$1.M3Itx0NUO0ITpBdVOlQuse9Nw1EBVyeEqvD/u4kX81lH.q8om2e','U2FsdGVkX18oXOBEo/3WVtvNH2i8mUt3olgBg0jE7WUm5tZ19Zz8ZcPZ0Y2EAsvg'),(9,'chris','chriddccsgd@gmail.co3m','$2b$10$2YNh7fXvxmY.4v4PMtP4SuEt4PxzQ4jjwlOj.xRlp/OYxloJSwAqi','U2FsdGVkX1+QrKup2/DQgheCSLoOf6sKgwW2cBXUXei+J25udxCRcm4cpLkMjnB9'),(11,'chris','chriddccsgcd@gmail.co3m','$2b$10$aX2kZtMguXgzBsh7fCXadO5ox47vvuyvXULDtQaiyXoUoNGtHaLEa','U2FsdGVkX199Cr5pgpR92ub3rscfVrgh21ejX2nM1uqF5FVE5TR+eEP1TM66MemJ'),(12,'chris','chriddcccsgcd@gmail.co3m','$2b$10$8ZxdjmVM10Ovk/YiNi9pWeSXKo.E1DaOchOWAc0W4kwpsPo12BzPW','U2FsdGVkX1/h4dtl+WhwO2Qo4ivITe9M9YaME/SQ1Jfgqb6JxHTPqm7FBOdwr47P'),(13,'chris','chridddcccsgcd@gmail.co3m','$2b$10$09nj81TYUteLbAmZYNIq5uxoe/VtHcsezwtrjleIn2LLsKZJOr1FS','U2FsdGVkX18RWPsYuDYDjY11OuhUb/6fNP6UFH+5eZCMBodFED7gme42uE5PnVnE'),(15,'chris','chridddcccddsgcd@gmail.co3m','$2b$10$rsK.O5Kd8knhisdbA.dp.u/nkUOeZzA0c7ldWrq1zaq/WJmsJjckm','U2FsdGVkX1/nCw6YiiEvazI8KbypaOi+8a/wS1IVnLDUJuQmd5vExvcgEGHiAikp');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 14:56:17
