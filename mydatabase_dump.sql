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
  `url_img` text NOT NULL,
  `unit_price` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_99c39b067cfa73c783f0fc49a6` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (4,'12345671','BATATA CONG NOISETTE SADIA PC400GR UN','https://storage.googleapis.com/phygital_files/mercado-milenio/uploads/produto/batata_cong_noisette_sadia_pc400gr_bc899539-59c7-400c-8f7c-2f2fa085eb7a.png',23.45),(5,'12345672','SABÃO COCO BARRA 100G UN','https://storage.googleapis.com/phygital_files/comercial-bambina/uploads/produto/sabao_de_coco_barra_100g_5f4276ff-fbcf-4c17-a080-c3807b6a8991.png',4.56),(6,'12345673','MACARRAO INSTANTÂNEO LUCAS NETO - SABOR CARNE UN','https://images-americanas.b2w.io/produtos/3398641894/imagens/macarrao-instantaneo-luccas-neto-sabor-carne-sandella/3398641894_1_large.jpg',4.75),(7,'12345674','MUCILON ARROZ E AVEIA SH360GR UN','https://storage.googleapis.com/phygital_files/mercado-milenio/uploads/produto/mucilon_arroz_e_aveia_sh360gr_c1ebc0e9-fec9-43cb-b180-7c6be0a8998d.png',24.49),(8,'12345675','PÃO FRANCÊS KG','https://www.jauserve.com.br/dw/image/v2/BFJL_PRD/on/demandware.static/-/Sites-jauserve-master/default/dwfc43c8bb/7150.png?sw=1800',16.2);
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
  `refresh_token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsInVzZXJuYW1lIjoiY2hyaWRzMkBnbWFpbC5jb20iLCJpYXQiOjE3MDYwMTQ1NjksImV4cCI6MTcwNjYxOTM2OX0.Pw-UpNAw65PBLIzNJX2MlqNrJEMCmjDUYZqhJOhQJxo'),(2,4,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQsInVzZXJuYW1lIjoiY2hyaWRzZjJAZ21haWwuY29tIiwiaWF0IjoxNzA2MDE1MTIwLCJleHAiOjE3MDY2MTk5MjB9.mziAOQ8paeeDmu4jXynTGdu-EWlVHRiSHF06o6Ecza4'),(3,5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjUsInVzZXJuYW1lIjoiY2hyaWNkc2YyQGdtYWlsLmNvbSIsImlhdCI6MTcwNjAxNTIwOSwiZXhwIjoxNzA2NjIwMDA5fQ.kFK7NNtoUQL4JeuTvI0oqr3o1kBpvaGndWz_Wtyzi1M'),(4,7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjcsInVzZXJuYW1lIjoiRXZ2ZXZlZWNAZ21haWwuY29tICIsImlhdCI6MTcwNjAxNTY4OSwiZXhwIjoxNzA2NjIwNDg5fQ.4zmJkxfE1hSvawLmHgSNbID-1GR6klOVv3xjoezCQr0'),(5,8,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjgsInVzZXJuYW1lIjoiQUBnbWFpbC5jb20gIiwiaWF0IjoxNzA2MDE1ODU1LCJleHAiOjE3MDY2MjA2NTV9.GJfFC1Fsi7NSkbz0i5fBOMZ8NMsAUkyehCiHB2uqARc'),(6,11,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjExLCJ1c2VybmFtZSI6ImFiQGdtYWlsLmNvbSAiLCJpYXQiOjE3MDYwMTc5MjQsImV4cCI6MTcwNjYyMjcyNH0.YC6O8Uy0PeJ5nG_Pmn2t_G1KEgjjN-fDUgh6ubGCli8'),(7,12,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEyLCJ1c2VybmFtZSI6IjEyMzQiLCJpYXQiOjE3MDYwMTgxNDcsImV4cCI6MTcwNjYyMjk0N30.RVo-AXxlGycQRbLFwKQPM9UAFKk6xYXVlt77XDjfCvU'),(8,13,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEzLCJ1c2VybmFtZSI6IkRoaGVoZSIsImlhdCI6MTcwNjAyMDA0MiwiZXhwIjoxNzA2NjI0ODQyfQ.slkWyXK5lu8Msl0vId9oLnv59I9VbM2x5DfunNk0nPY'),(9,14,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE0LCJ1c2VybmFtZSI6IkNocmlzQGdtYWlsLmNvbSIsImlhdCI6MTcwNzE2NDcyOCwiZXhwIjoxNzA3NzY5NTI4fQ.7Y-bvIJaqvFrJ-FWziJqoKe6lo79o_UkFqKN-CuiyeE'),(10,15,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE1LCJ1c2VybmFtZSI6IlNmYndkdndmIiwiaWF0IjoxNzA2MTA0Nzg4LCJleHAiOjE3MDY3MDk1ODh9.jnElxFpYbuOgCMXeccPDZAasFjLrq4MdPI-aq8OYd-o'),(11,16,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE2LCJ1c2VybmFtZSI6IkEiLCJpYXQiOjE3MDY1NDYzNTIsImV4cCI6MTcwNzE1MTE1Mn0.Pibmkd4B4V2gy6wSDZcMbX_P2srOiF5Jbq0k82S_UvY'),(12,17,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE3LCJ1c2VybmFtZSI6IkQiLCJpYXQiOjE3MDY3MjYwMzAsImV4cCI6MTcwNzMzMDgzMH0.kGET11slwqsqkVpKB-ZdHRFv8OKjtqw8om73AlhYH0Y'),(13,18,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE4LCJ1c2VybmFtZSI6IlUiLCJpYXQiOjE3MDY1NDk3NDIsImV4cCI6MTcwNzE1NDU0Mn0.ZMQH_l87W-LFKokK_YIrbCjQK2IY0M1Nq3RTGpEs6vM'),(14,19,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE5LCJ1c2VybmFtZSI6IkciLCJpYXQiOjE3MDY4OTg3ODIsImV4cCI6MTcwNzUwMzU4Mn0.K5Nt91Lff5i9DvTLk1zVK6Yw9DcmxB9CA-fq0bcHgTc'),(15,20,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjIwLCJ1c2VybmFtZSI6IkwiLCJpYXQiOjE3MDY5MDEzNTQsImV4cCI6MTcwNzUwNjE1NH0.9QKyoWhGQHu6OQbIkxAim2-1f38ljO2YuwBEuuchrV0');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'chris','chrids2@gmail.com','$2b$10$.EzePogeVpZOzM/kKZo2tu20hC/y9nmXhtT5g0P0zUlj/okfg.sie','U2FsdGVkX18tGPFVaAC/U2PtHUi4XmqAzI02LCdKiYk='),(4,'chris','chridsf2@gmail.com','$2b$10$iNrROdhjXRU3BR2xg.zRKO4QVdUdxyXLNWajnp4ak3ZoC17Pu/4dG','U2FsdGVkX1/WaibFtAMq7zCrO79Sojr1fCANqIoFqTc='),(5,'chris','chricdsf2@gmail.com','$2b$10$54m7eFPQUmykslVeFS7uCusJhWjgT7O1YUXZbNALefQ.frCp5loj6','U2FsdGVkX1+DLjVQbQuWiJWzvxpBNPT3MRZa05eJYQc='),(7,'Gbtvtgv','Evveveec@gmail.com ','$2b$10$q0lJT2g9aRO0l6tbUaK70OykttCl9V1yrjU5xke8DN0q1CCyp5gqm','U2FsdGVkX1+DUg3l1evHMobE2ivo7PDBQN/NBvXEICk='),(8,'Dhdhdbh','A@gmail.com ','$2b$10$vcprlUgQll2AcGzR8zLN6.zqBxA2vu9Agj0bQcs1.eAuGbI5326sG','U2FsdGVkX19rw2Spsk2W7t5KSgBLa8ILarRVf/F1EWs='),(11,'3g2gg2','ab@gmail.com ','$2b$10$f/f016liwM29pv1UkelEHuRZDRbmjJ17irtNt.pSjz8/UaypNq7p.','U2FsdGVkX18nQvhs7Gs0An0LmBnx5BmiGWO3CsjoqZc='),(12,'Hdhdhd','1234','$2b$10$cjsw6XxDqLBQMwbMFb3.Nu2p8fs3Fgqh6D.f9neeop/PQsf9hscy.','U2FsdGVkX1920E5oW2qlcxypItQoTiYdSTxtP/76Y6A='),(13,'Ehhe','Dhhehe','$2b$10$5QDb7AKN8qV35xGTUKoEM.CWJWM52vtvUnMZ8bsvv5dkO4liHqWT2','U2FsdGVkX18ui+rANoV3TPAtVeMbFUvfjlGEfIsmkM0='),(14,'Chris','Chris@gmail.com','$2b$10$exuklvmGC2vDQTzyLXzD9O.FHMxHFArMiHqyZfIrt7JGtdSmEfSUq','U2FsdGVkX18NHzn6rjiskKm9vZXnurPUEoZcz4GqoWA='),(15,'Fnegbe','Sfbwdvwf','$2b$10$Tvgz2rl0p/XKyG/QBV80SeR8lxxj3CFeljDMp76T4lZyomtEZjgxG','U2FsdGVkX19U9bTaMGDw5YAb7cb3UknGQoIojdqSt4E='),(16,'A','A','$2b$10$WlwoFeaSoo6p7wL1FvQq1OqPRO4LhO2t6pQfRlRSrrjcqDQATlhzC','U2FsdGVkX1/V/JDJdVHlGBHVnUO81A3ZBRzE3xgBKZw='),(17,'D','D','$2b$10$R7g/KcKD3fai0xt14oC9B.BK5FeUW0Bzz0DWkQ9CS5.J6OWUYBu8u','U2FsdGVkX1/9aOpY/Fi/ybavn/3l4gHXIz3R8RPv9dk='),(18,'U','U','$2b$10$yeQjH7OvgyxpeJuO.d1qFuhPrFl1wsXVXnRXjIr.Bv3ljm2hzSPoC','U2FsdGVkX19MZm9GbMWnZDThZOeWIZJDsVuw4o/+UZA='),(19,'G','G','$2b$10$FvbQcJ2h3MgMUVnArHpA9uVklmIzKBp27B5oiqk.TmJl7bwtnbiKq','U2FsdGVkX1+CjvyJ/EEkfuSx03n6Arn/xGD/LBVDM5g='),(20,'L','L','$2b$10$g0WlCF667fi0UlI09qzP0e/IdO/.f7xIedEsQv8GaWpsGSm66Qw2e','U2FsdGVkX1+uNmJpvJIZI3x18zNEFM90+529HwFgLZY=');
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

-- Dump completed on 2024-02-05 18:10:23
