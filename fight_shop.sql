CREATE DATABASE  IF NOT EXISTS `fight_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fight_shop`;
-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: 192.168.0.5    Database: fight_shop
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

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

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_item_product` (`product_id`),
  KEY `fk_cart_item_shopping_session` (`session_id`),
  CONSTRAINT `fk_cart_item_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_cart_item_shopping_session` FOREIGN KEY (`session_id`) REFERENCES `shopping_session` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `created_at` date DEFAULT NULL,
  `modified_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'plugn','$2y$10$KFwyv8XNdWeGDfoJ6zISI.m.NrcCXKx33EgJ4iHbI.6d..BNcwaLC','Michaël','Nass','2022-10-22','2022-10-22 22:20:53'),(2,'caF2j4klca','$2y$10$QG2NE6II6XdrSBaD.xLme.YORSnkypxGpYGQSpW.0BgXn/4fIOTta','cun4jll321i','F21l;4j1kl2gus','2022-10-22','2022-10-22 22:21:26'),(3,'caF2j','$2y$10$l78evn/ocnOSxK0twkM7jOw.P/2.mHSo/4wx6r.CR/vaXpmL8Jl7a','cu21i','F21l2gus','2022-10-23','2022-10-23 02:34:06'),(4,'yuyudfsa','$2y$10$KiIVwM56fWAkJP70V/qdY.acLjBvi.phAb4riKwUM/5tb9q..EV.G','Jony','Cuni','2022-10-23','2022-10-23 02:49:36'),(5,'carre','$2y$10$yIK/QrTVanLd0LxQQ6lokeUNwNTdwFmzFSaEj4rye.R17rYPCK4O2','Jofdsafdsa','Jofdsafdsa','2022-10-23','2022-10-23 03:04:15'),(6,'Couille','$2y$10$56sQ.yuZQUB8DBeNrz.4OeOBCL.iV9gkwVw55A6myHYLUlutP63lm','Jofdsaf','cd','2022-10-23','2022-10-23 03:14:13'),(7,'jojo','$2y$10$C.r4ETjpm9J3155Ge0u9B.BOSadJHUPbpQRJoefswVOkvgkfbrGTK','jonu','elbz','2022-10-23','2022-10-23 03:28:39');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_adress`
--

DROP TABLE IF EXISTS `client_adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_adress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adress_line` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `postal_code` char(5) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `telephone` char(10) DEFAULT NULL,
  `client_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_client_adress_client` (`client_id`),
  CONSTRAINT `fk_client_adress_client` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_adress`
--

LOCK TABLES `client_adress` WRITE;
/*!40000 ALTER TABLE `client_adress` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_payment`
--

DROP TABLE IF EXISTS `client_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(10) DEFAULT NULL,
  `provider` varchar(50) DEFAULT NULL,
  `account_no` int DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `client_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_client_payment_client` (`client_id`),
  CONSTRAINT `fk_client_payment_client` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_payment`
--

LOCK TABLES `client_payment` WRITE;
/*!40000 ALTER TABLE `client_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_token`
--

DROP TABLE IF EXISTS `client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_token` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user` int NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_token`
--

LOCK TABLES `client_token` WRITE;
/*!40000 ALTER TABLE `client_token` DISABLE KEYS */;
INSERT INTO `client_token` VALUES (1,2,'KPIVvSgmvmsCdeYoERhSox5olqo7MMeEq00uvy6PpO2FayEIDmGIZA48v0uX55qA2DfpijkRKzDvolf4rGWqXTNg38zEkrgCxogValgyNJuqWlFP3Yj6NBp46BcroVkmPNDjj5ctzucFn8lwfpIminEm9iPr13P2GCi4izSVHbAFWOubtmcXzmc4z7JS3xxB7dmJwya8JwYrxCam7OzjF6ss4njovVSH4uXLYX2HPcnlDbybDJzBwsNMm07XoMf','2023-10-22 22:28:24'),(2,7,'onVjkLXhLSQGCAy86xmIuzraMeaCQWgJLkKILEbebNH9VulAYlwD4qkyTNjyQjFT8UEOpxuWniXoibYP1xc5icpMbuUvPkcq7vZV0LhzoaA7uh5bWqbT8JiNlxxMrO0cbqlHZYOoaQBnvWQkFiHP0lDCjCukq1C8YeM1NRMdVh5oZIPYGvXHtA3IBhe2lRmbQTuk9X6R2H4KEhrcvBnwLohXnsDTmTJeb7G4Oq50GFXCGk5DqZztHzA8JzqHj5b','2023-10-23 04:00:42'),(3,2,'YbMKLWhX3OcMl8Rp1N2JiiWbomctqRGodU2CVAqsh39TyATDIJvlBqG8VtdSoIdQds5cZilu8H2kuyXeAvoMzuExK5M9cmlR43O9UwzQTDr6Gd1jgFtOSHOLfUa4bcghIeLQDA1hrmuNlJkw7xpEBXwSeuGPYm3Ml5xq81adCunKnEglJrCgRlxfPOzs6QMGVWQ4VLKYtl1rgYCS6VDWgz3fhpvibgZvRnqMN9mj2NwJSktsGK4JecmaWofuRxY','2023-10-23 04:07:38'),(4,2,'teZNANTAtmscYyr2UoWmC5u6JM6LuDeo7GnXhEgmy5Qmt8Tf6CkaqIOBQYtOv6l3Oa4BoJKYLajStTCtxL8jNygNQWrhzxsl0xRysz9V7Q2f8j3YaX4JBwOWKBG8NKI5jPYuYCSK0R4x8srH0Tg2E72yNddZ0ZcQGg42M2GrYtSe3JYCZCIbNjFqf7oZA1ZMMkSGOqO4tpnXHtDVwpdP2wAL07Pli0VVjBhtbYEJdLGFSBvzCr57toBNcsYowmI','2023-10-23 04:07:40'),(5,2,'YPEbceH4o3Dw0sEGalSuS0u5bRPe5I74vBIjkto5anucm4Rf30sNupTIpAl4Xi6XuGAtBXGeo7zE9NiR9ep7ms5P78oLSSik4LJgw2WfWVmEQ7SYeGOyimczB0eg5vNHEzI1scWDuK1RUnEHPEuR2248x579ugjCjw3WVTE4Zd5nSZA227S5ZJgcUaedgTZ8e6Z0UHn1ataYwVZpSG3arUdnP8y9ZRQBpIfRPhoGBT8DZyEuh1CI9FBdFkJp9Gk','2023-10-23 04:07:54'),(6,2,'wC8v13z8fTUIx72HIQPhyyrvPNjaLAqswbUSgsFF44zM0BlJ2tn4CzTu2vvYTFy2g6zDiBnhCAUuqFxgb8NPVTzweKMuQXvAbehVgjFyWCBgn6hW709YUnbbR1P3zszyNM2MWYKCMo1E7IUhEVNdLDyvaLX6OESHPBvMfqmEF744CbmRQWgoCaLnz5L6ALLAWyL7nVGPtmYKd4n5msSY0tDtnVbXr57HU4aJVlnwl7SAEZJ568cSEMZj7Lno3GP','2023-10-23 04:25:54'),(7,2,'azLy1A0X7higbYs5Kkmgidbzv8IoMiqOmgC7Ra0ajvpfv0sCF3CnMNGL2CYJiSXxjt2P0TF8UQ2moFcIS1M8b70w4ItKZmP1zvWslwE0n8OK2OIB7iGVL1Qog3GbeGNQAX4tbhWZr2oxBCvdOYWVfYWkTCrKK7rZAYTCJOcRLp7L7Py2t9WYtTXbBU79nkfq9oqGZFaC1L60qE1yUkMTzgPDIxaZDqipDAt6OEbXRs9mtNYR23wX4PuAvdwQs44','2023-10-24 15:29:02'),(8,2,'yKI0lIOYMNY8KimVV4csWtNawlSr3l3YQXIUpRP41Tn0eCp20ryGR5LIFdUexvFuPEZPHOM9jbOtHHDcnSzoT9EetuxBmjrpOacvmhwshRsfcukan50wnTKhyVwP3HXoFI2bZtZsgsBku9VjzfrOF6x2sZk8TvMewS5k3h91r89SUdl7Xc0nZ9HLI8P6ajJ9TjogMlOQoiZfxHlNHT2TT6GshjtH2zot3p6N4Ko87hXtrvqVis66sckv9eyefuv','2023-10-24 15:32:17'),(9,2,'jkthzUh9297yC8U0PIhn5DlcAwZ4mC3MCL55KHR2moU8CZyv8zGzwhhucQapQ65VcdIk4SxP9RQMFfBIY4pElg1s37ggg0786QOAqX6gP9DsIyc9JQAF6yFxkxnkDKrsDmycWCrAuJKla0e8jaVtHeHJjQDME2H5p3CCflmRa4EP08kizy7H8BnBT6MmSrOBB6Y20IW1rdET3m5NAUgoxkl79iuWBXwNnrBJDbwiZadOErY2y6wno3MvKUfClPc','2023-10-24 15:32:28'),(10,2,'HFk4OuQUWkQyploXi97cOrGUQd9s2MjnY8zlSh2cXOO0dMqXd7WOxyxio0tBmY8bl9Sh9t2h8oiFfoJ2yxhMlI6FgFJT2dPNE0HKg2lhyZ1KRvZlItAHCUU8o2Mgyqn0FYyL1oosDljvlThnnLQfaXL4lAXAeVyCReEAMhlxVBGrqA2p7ESyNA3Hj42RnVMqUGteOHW3QlaGxsvo0REs2XoRyOS1Gwd0sFGgW4FIEciMWVetxldNFYsBNzaUfCf','2023-10-24 15:32:36'),(11,2,'e65SaMWHLg4noH1MmZGUcLNmJgt4VGVdG1IKDkgTOXlEGcufCNfg13as4VSGc7j9hRi70JzufeSJkRmXHtlyAvC4cGutKUmxNt13saWKf4MvYj91lAyjTKHXtTVi9BVflDQDDzHmxutJKDgQPLTgC4p745LcL7u6u0fVf4YbyQR0ZcUQ2GodxOcDoDaYP4lbsEDePfjTKy8ZATaIf4Pm1BG4WPJlhluIDNmjNXSR372x7FflGjSIIwyTwT8sqMS','2023-10-24 15:33:07'),(12,2,'hGOUStGZdOgiZMPHhgDXQJL2cUl7L9oi8iSuJpoHk3YUjaD7cQ7z6tnPkgSN2cIooXN90Ate2tqJm23T6gyEPf7lC7oUFrWPfSd3BbG02iBDgr1cOtT2iJfXtDzluypsqsMHEdx79de4JQmQTNi47jEoWOiVSRFLbm2HTkKvgBkHkJDTKqSKmFP9hOX4boT04uhjKMzByWTfxJOrWQ6pw5a1rx8wjUnQSDJ7zCei3oPmF8g2S01HFuy8W11YSd6','2023-10-24 15:33:55'),(13,2,'o5a08rIPGNpnk656Zq66B5gij9n79NwudEjYjDLRhbJDFJgLCcNVvwkigOVrCUz2U78g1xVIxDTlhjdzimenCulUpGo991HBpvzPc1gS46MIOKheIUCNYcuGf385t8M6C1IZPFY0SsOomazKXhEe3TVS3qfFRYo0Jta74y3nNRUZOLquIwwQyGpLMh2iR1hTv3qFdtapcuMk9blQN8ICrk3IS3D5kDP0tBMnyeEG074CR5RifBgDCvvTwC2rJWr','2023-10-24 15:34:15'),(14,2,'rN98Sa8gftDNAVzq3Pw3Fi1xxEXUPiJRUdHfNW2gDdLFK5v5OxO9SoeHfx4GZKbhtAvjvWtrfFUVJ7AgrW4vYlIKXll2SbmuOj760tEHOt7H2mVAbPDVxO2y5tUP4tLyxBplbH2N1PORMPQmQXamYisHLxN18ZORP74gJ4f4pwm4fPBzyt35QwISJJZ0dyE0JYAVW1UW0rQskMfyK2gTxQWMrcvJEMiSobuFAM8noIjACTMGlOzgjongGGdmgXu','2023-10-24 15:34:27'),(15,2,'gWFa8v6iE5GycQ2hxxoXgB486eyEB7RHMsJPumrfxmd8StobBsnA85MEDWdt6v9hKx7iJG7HNeQLJESjtYnnHwb3oPJWCeesfM7HBIeRHxsr8vfP4KFynhg0ViBaInhDM2lZD8p48ZBefe6kgb53km7XndWOVrMoWw2XH7bdHfcYl0Vc2s50K7QRIhAPfrTmkeVbcFKF5fxQzzyefOnbSX98k4rydlEgEsrM5vKoGvvKbh3ffpwZEhgVLxOzWuA','2023-10-24 15:34:39'),(16,2,'KSW70Wbal4vP3sEnmUJ8K82IhSEEhGRgSTdWZbCQwsvdSImil36lHAd2e1PNFpXzmekfRkXdP4sFvRnd0C5KsJuEjlTGzqV4QEaxyq4rcvlxPT0QtDI4BekqJsJ8lWF3ITLSxwuAIq72iCbSyupwJxZYHS8Ko4nU4V42DfVXraMWhIkIt3jFHsqCcqKxiRXGPRbtw1n2i0357RkruGCuLxHOEZSsOheVQQkFoOfhEkaPjlpRxDQFLiRMW2i13ns','2023-10-24 15:35:36'),(17,2,'LFVupvi5wU5mhgr93UYKVM76g2c0TUbY8KwtHVVhgNWcSqdSKrjcLL1Q82zVQIlg0AoZuZBDleDKOhHoOSq6hRRuhULRwkF5cbdbMkMS21k3YJcZiSbuvQ5OOIT43QRHJMXPE6J7U5lZVoqIibe79H8hpWNn5tV3px1ZgSvQckBhoVlL5P08QEHRVO1q4Fn5n4tSrxHLxSBkc4vFbj60V7w3iMGduQjOOiatyzZc4sVn9DHIvGuIBHoyZTEpHqy','2023-10-24 15:35:50'),(18,2,'cV3pJiJUtfdC6kyL3eBvTfw6afTBkKKcgaWFKX0c5V6vNsMX6OmWgDvz9Vt5NFxaunwNnjTVBlu58WIFtrddjittpfr9GfUoH7k8iZNRGD7HPear8pL2sLM7EgvOZHGFwNOUHf4dbMBVrPlxLD0XntuRfAPPEvjjdChOl6DxxtaEtAcgqMMOUbQm8Rul1iISoEHQv04dfw49dMEaOUyOgRSa0oPldSH1LFGnq7mKBDXBeIWplvrdR3rp6QNq5CR','2023-10-24 15:35:55'),(19,2,'dd5Ny8DLNqpvRAi9EYmharFqA9MBm33DK9h5Frrus02cBfSTrXsk4WvbRSBEruDhTTC9kgjsHXbkoGi4zFUQuD9ouz6OYCgaCxQjsvJHxskbTRIrqK8nyOyp8TNrNB9waAoGTTey8z035ZMxabQucxHtVYRYM1C73q8CGQiTL7Dha7O6DRXY771kUCgCL3EQZFrRI19HF3hr1rfGJVTC2StRmmiP4geAJcQPC5w0S610WAt87AOvYLiKwzndAyP','2023-10-24 15:54:31'),(20,2,'Y52iaQPxbcjT12klQXYpYGT26vnfmpe6oVUCnTEbtOGTNjbLzl2GM2drPQnBJYb0mkyyM75FKVQsfEeQCxbvg6A6qHrTJWlbMHAfPAyGmooJgzYUDztI2rEXFuMmcDyzFF5Ye896MT6mtg5rzJFWEcOkfFSBkz4xYfe3lYY6hxDIIa5dk0oESuJ16NMm3dxv39U5d6kKaEklXJRw6hfyhlbQkExhxXi86VbqhdpJSYyigVpWyt1PTX1GJVfYdIZ','2023-10-24 15:54:33'),(21,2,'Bhqye0ZpUptRLkhDST639iIQpbu2NrWX0QMKoOpamgDIpqxE9DawbRJ6BJJodQOsl2J8qqUpDYLpFIKKDDYirzil0QNwvxn1gOPk8raY5qy3oIEL7gSbb1MJEz7CoMYVNosKEEvNhC8uI7sPNEgfcskYmSboFeSZQoN9Iydi6irgFSeMJpu499x25QfmY3Dy897UeicschcCIytHp63jP5vxyfRbJCVUHC7E7mQk20Z8Jmxh7C902oHkEsOezc6','2023-10-24 15:54:38'),(22,2,'lTbP4zQVhA6qp8rk0MQR5vsVJNPKsWjGnxlYGeqXLT7AfDfYYqpuYqrGG9j5ny7D5cNQ1a1mg4wFzIzpVgSuz1YsdAoPQSPOvDI9ykDKBF5SDDKjRKG6GmDs8vwWpNKjJswSIcfE2OnJr90K3Q58lxsQk3RB02d9Vc0buaG7icH2iaGTXEG0049I3kCVXkQEbE5hpjphuDSJtcgb6OkvgAjaHYMeJkkAAHUlGpQazWJIIHyoPWDL4UB21UuPdb4','2023-10-24 15:54:46'),(23,2,'eSyYfOwLgIKvJhmnLEHirPqzeXog4MOhgcdYCRnJIWWvyxvYTgLbW0cZrUh7OA75Vref4dIC3AtXERM49mm2yURlAPLML8TEcJNM9f9aNDZU7Gf4OaXUFkhF3TcgjKeoScu5VSARgha0eikGYWq6pp7ijQTnCnwGTFni5wCZpyhb26GLquoZzbZwhtdFEpiPjbeG9qY1TfttHf8RvATKkRdI5mhDI20MV3vkGsOMnbnjY6iuL8ZnE4kQ6S32giP','2023-10-24 16:05:29'),(24,2,'KcEe9HPq0eVUqvSxmOcRjY9mhc9Lxs27VaWeQcPwrzUeEBJsO64aK0RsSDtRA8v3hc5V6nly3VyLGB4uPNGly6uHdoVNk6q6JNlisEzsQbT6r3Vh5hZ7mNZioN8fnACLT9maMLCscWI8xqrnk4JDNPko4TM6Oirtj4e7vtqgPHqBUSEehimXjx1tGq55iCqA9sz61GvqoHlH9Lm3IuJkaU3qBJo4lQZjvttXzMqucef1pqJ3zUBsOPQaZ2Fv5cW','2023-10-24 16:05:33'),(25,2,'GOArbj4QdTwNrGYR6WLlj6rgdVWq0rONnbobZs3reiwMm59jiqh4RVD8896pfRcVc8qnTNoyBiCuQodEYQut0aYBqeIfcGMaBvMkcmrJiwQmbcPU7UyCf69ml8KdTXdkOgT4lB13qKImrl7YEylsE2b0xqFeBrPw8kEcNNH5uAJ03UUfw67K2b0ypuz5NNqGrqVQj8SMJW0aTdIKmeg0O7SYb4ImNbdNC85igOQhD7qLoc1cqGAwAUmotyATonN','2023-10-24 16:13:00'),(26,2,'VfUQ9l291UB2HoqmePapw0L73Tl8ykbJb1m6wzxleg8jBAT73hlh2gQq68fSUTOcvYfc9v3KGJPO33OM9hT9qSCgjRJt71EL6d0IpGl7clxBE1oRvxTaovkjVQIJm89eNDYmY6vzNygKsOSthBTbnhP1Mq5f7B1iX5oZskq585cTrBfORvBjP1056maARg9gWc0TBmf2brXibd8Vm7JJQstQ1O5UUq0xpfikk1QgmOgb4QYlRuDGS6EAlcfNbXP','2023-10-24 16:59:30'),(27,2,'Gh5S1BU6cE17cKvlzemciJrWeqHweB5yToWYMDsixynbn3SpO64gg7tPfE9fBjyonDOYX2AxVU34Y9kSYEoGqlXL9eqryCu863v1cqxPm2Amt2zy9ELyItkQRxkweaagd8t5cddpU1bWNDTOvGrKiQKHncnCemSQxmymZjvpXgXCMbgqfUdNkF4RSBhu43MUA3UbglSxwQSXXCd9TBTT5iZSDf6Q1ftbWYmti9emNBppjXeuwcklRsuMjswiKNb','2023-10-24 17:17:56'),(28,2,'ZADjnQ8cdtcO9BiAe7c36dCDCPXu8L4F2YohdVN9Ew6ZKB71BXikFaMbXfHcoTdWbmpZgbo3zZRgvhfo9ziBj28kxX6qHHvEgmDMvwUG7O8j13jKTljNwRp5eqKPwZwXfnZAttH6oEApMxFOYkGBPHiBBuAc8Kxl47oRRpKCsZyaqWnwR780mao5D9B7x1lDivznj8DlLnVhL2tMDrdZlhEwAXf9sQLG3pqGR8RqlgGgXDXRJp6qlngDJVHsCT0','2023-10-24 17:00:30'),(29,2,'gqrXwHVN8mlNhbaY13P2d4JDFapKbz7EfHhV59hu9yQChuc7oMRmUWiJqs7oqk5VUNJWbcz9g1akBm4gBusWuXbR87PBir3DrDSrqe7t6I8g9ngFy01NJaQC79bAyygMQyjawyTfoUV0NHDwxZmJlBS4usKymaSEY9UN9NSvOp3qReGSOrORt03urjZf8NYb62o53GgGMJymLa4A7ppjUDKoBaSfd9Ye1tuM2p439qsnn7dEhBH2G8deY0H3odV','2023-10-24 17:18:14'),(30,2,'oXBsGstul9Rx18zLyO3rPsUmBWkQDt59XlCocS15LO17jYCWpFXNy3MowXlNp5itz3PlwrnG47mi5izevpUqbSsFFn9bbNYYfw9xBsx3wYMCrKDkqYV0vjzyJ3RbSmxA9wKnvwtJhK7fS8Da1VRvhsYPZUXTXsvXGQ7aAMpKSKekCNswr2umbgxYqcjmFavTEO2jx4N6txoiOJTEBZNfUEclzs3X9g68nJdwMnYsSZ4kHCexFX5Jnfux1J0Xecs','2023-10-24 17:20:11'),(31,2,'iIeMaQEcOlU56gcHapcp71NRyTAchBvuTIf4ivmtHzev7IJdX3Yb8x6DuFKrTks4EIlfpjPFYQRLyAZsNqmJcaNJ1XWqdvX8t0iLmw2Vo3QlPX6pGDVqNVQ8L3RjfUcDq93uJqqorfkdpi6dNnpoFnMIMWuzdui3Zht9jO6bRKuzBIPo98MjiCMvWj6PQLLuvv3JOkqqQWLBjQaHLqcTATJiKCzTRD01FjLovksBCbI53y4x1nP1rbBLGKevue4','2023-10-24 17:20:55'),(32,2,'TIXhJvhqLXxJpUOrM1Kv3KM9FxfHuuf5lZxMgTYzCS4RD2yOzv6ydkdfQHEhXVa0oBYNwzEVC9I1yNk2Geikk1cwSeU9NwGtOR7Tlvctj1rlEZ0L1YSbRtELhVNI1lfWD8LBOAH42TAQNJPDr3ASKJ8zqHukalM09biZjitYiibzTouH57Ai9n6DaovZ4g6yvaQxaUbzkyY87xJP76ouBALCIdgRKUQf4OcGfebabPeC1qrWjazSm7hkiqZmZm8','2023-10-24 17:21:00'),(33,2,'GI9fAdjAvpKSMwmtSkva0402Zq0BdK9sjtRucPV0G0GET6sPx9zReGKcGOxJ8QklFlbPvmWKTuDQ8VeUy2GJRADSbGX9S4jpe9NLFnKIiZHAh2O4kDZsPGyVa479yYOQSP85WWIyvqJ8klUd6Q3RjkM0bK2LAhoZ8b09rGr0kn2KEgYWQ84gPjc3y9jrgKcWP2xMw0jjX5NdGbdXcaJbMRsLtiZofYVNCqyGaWkTh2BY21BB0JttNLaZ7dyzb35','2023-10-24 17:23:43'),(34,2,'5bxv8k4KO6cWgVQPJl7IVtccGuz25OcVXbdg53ANV8UFlPIPXfTwOSaRNgnKDNwRJmtH2vKeRe1ethdGOJzSKQT0sB12KtvvAXpygQx16P2x5Ngyjf8YN2XwOZ33t4fF4bEpvErDNHWbyrQ5gaJwgxdPfvdLRE1wjlulEFM2KE6Wvys4EgSv4NxWWqvAa7pMVEtFIxej7tv3s6MKlLyH9C2YdgN9YrTEPZaUrcXXzWtwvwIergFarJY3ZeV3beS','2023-10-24 17:23:53'),(35,2,'6Gfn1TINFpn6eexppqX0Ms6jNW5f8BRZSC2V9K8dT58RmhPJIMnvztDqQ3X9tHje3rZ74iuJ65ky5MNYZsQqobeX94OY2l5BaL3VMIbgbmqizhWFEij5kI7pf6HWzTsnpukDcMcnXATciajGo7AyD427GEliBpGmoFBwooNE507GEww7EAj1Fs6R2C6x2pz6lnjjNjFGnkSd8Jwc2Yv4VbIKAUcQ7oiRHzsdk3BvBmicWCU7wbGNm10LyuhPaUT','2023-10-24 17:25:24'),(36,2,'9uCbl79FNFtckvjYpGmGcR9lW52lRuOtKgJbtocuXqqg8Xjj8130lIkDc9m37UvmIBhqve0W6jfULsz8ctuunV6Xn8V2nCJ3tLJxZ5Rp184Dwx1HdOWj6w5f6Ro6Uyt4C8xlbHSOJCdVYiQE4CewIHXtdyr5hTGsBy3ArhJs5aEMSQ8G52D00GdyzrAWj0kBRNke7D4oMkvnX0UV9dJvI2Jat4RuJ1VTaqosGfYKbbsNat4F6QVs9XlXSteQdDW','2023-10-24 17:25:49'),(37,2,'WU8HFdJjVehOr1Y7yqUVs99GZdiOSO9KPDOt2LqEJctRh0FjFh0SvWKfHb0Ppt1PVEbzDCbk0FUUNzxR5D9b8RP3YeqFOZfJcxzDtiYVlTiLU3OB8hmng566z9iNebfeZG91EJmOuBa9nW7Ax3G9skggdU3F1kIUvsnZkWopJofmxFy3TeET75NFcgJPOb58UIlcSmg4k6UBDoesyPCIp3fzov4LzQDRDMk5L2sbuq9Tufu8otyt4UNbH5pPrZa','2023-10-24 17:27:19'),(38,2,'LXxaHT3tbWjEvMVcixHOMGxO1dOVzvYXfcP2A2vl6eisly5jKCdFMh9Gcn6YfCFTzRDFOzC49MSGWyGW1UruYDkFewhbk4zRMp1zHJ8OP0H6NVjQGjJIkVD4H4pHZ7Q8aJZQkHslWbOnNdpAyDFdjSAk1jp677kasSFjz1DYrwFn33g3gTNv4qOp3W5GArgGEoxnapjhPcMW8YRwvfpkHPFvNJTaHxqi3qHcjaZDmfUfMaKlvvbXBMhvHVMjhwO','2023-10-24 17:29:47'),(39,2,'UjRWeu4BYMrmoqiRPJszbuWWD6t9qFewpgQgvxUCmkAhdowY04RhIfpdaYJOwhxlPnVphhRpN3EgLOWlqI5nxAvhPXz0XOry1IkszEgSmAc01HmzzpG0M8bfCKSoMKoxyBvNViulRx2iTuTuAXICZGJD2ukyUcRQP0uUqHMMdG8P8DP5glUHu9Y48r6Wc1uybXNvtoAFZLIDixbZb4WYSjgP2xE6KduiEtd8XxoCLFxi5VkISsDvuodoXyVSpLq','2023-10-24 17:37:41'),(40,2,'hVEpaxxybdUYKPr5OGBmcQCYqo7HmxYC7vqDoH8HZTnjCf3bM3OdMQCvq1MU5lGePhnUthLEjUKMw3Y8dm1PAugmBFEy922lpkCBbX0DNFOL7qqf5qtXqULTdMFRfe8w9nsabsNkjukvX0OL5g4dtxW10QEYTnmZhEh2Mg0UlKEBLf2XOrdOh34KRPQZDgSAZoFGoBJlVcDJLL7MaXPbFszDzEeNnjEr6bTFtd6Z8DD7NZGzedRjAOZQXfOuS4x','2023-10-24 17:45:40'),(41,2,'iQtl1ugee39oQL8JOXIo0EhvIeaYYVUG1iskLnH0UGwu5H27jxSRr5v9RBtsKRaEW0yjm5EPXOL1zwAhEcGDC0CupG0K7jHoZPxqcNoeuTwFgJzVjmuBg28TP7jMgIgH7KLhUZSY9UA3OjYuBRJBPhb8qdGPG75sgdrhsMGPg2IUMsaoi5TCj7EQEHIZR2s10jGUkCiIWRfrAbYWu1xtAnjLsVTeRH6MhoM0NgLb1HRRUUWABS2qjEbPEqu0qLf','2023-10-24 18:01:49'),(42,2,'XLm28IQB0RKYDTLrBkA9OfpiMWuOBWwN2OrujuBfg5FrOZN9hOTD4EHcxlBgH016EWpvNw2Vqn9T0cPF0hfHvCvjSRs2HN5vJFZ7Z2EpVcvdfcWEDLSXdF2VRGSFE9pA4bBm1rt4nChiBCuygoB4mqxuGPDf77078r9N8qcWlyqroQNvMc9jx3uJSVWMYYTqOY12xxatRt3pyW88flvZAdeUI732A7EU75AQpQafSa25o0jJMuUKckLHU92wgcM','2023-10-24 18:09:29'),(43,2,'NgwNkmgBHEIvb40T704V6UpXEHMmpgu1AzfQh2uWE8TyFH3Et2uAP3M0npCwhs08TC04yLqbtmKdDGxJiO17JdfG6TCMYUJdwb1nwQRYZR77Wv7qLtS6yt0j5nhDseuzozCOEXTq8ocZLyR8ov9AykRNhRkYfmxquuIWcQ4kQE02Z4AlUBgSWnfbRRfu89app1jek9jkR6NhQzNZc3pRM0eYNJ3jPqbJFBriPjpLxDlBvznbwXcT3WLe6iITemF','2023-10-24 18:13:14'),(44,2,'3VNVvjkHC6alTJak6XYnvVl7Oi9k1u5RAmI8Du1XBQRARtwDZkPWujM8UQgGGYnmULBxVmBW8gkEvqVqK94rHLuPdiIt7IR9vQ0mPrVrLN5s04yaP76swOAaiHXPkLy0zVn4sy4dD7UcX4bBjpVfMQkxOYlsEa8aNwI9U4DqWhv3Cx9DkeYmqiHDuR0YELZsvJnKUyquDAhXESQLTh1Vub7MqFfOlb5cJ1zJKmYXBxlFuTGcEXfWSfflbHmdhfV','2023-10-24 18:14:38'),(45,2,'C4ZOUKJIfxB7glI5tqpZxAJHTqAIy32Msqckk7HvkpfHVv1ALVwty8IWXkHwNE9PBqx9y5voB8mbidSvMUDoWtj8RdKxCtom38zMG5d7X5xU0czv91Hzhr6B4K4dY9pL1492uwAPLofvvqwdK7ZE65xrlazKEvzhvKb0ABgkqj4RWkP7kVDEBTvgrwrmwLY0U9HF4yOd9XhA3MEt0msttlF0ZkQO9mpNveeLxShmQYizkxkK3kIv0fdhzXGbMru','2023-10-24 18:18:26'),(46,2,'BTpaXuLKyHeGvvPzQlkwdcSoWQpAz62zvD1EqcfxrUAoGfUKmtGbqLXVyIKKZwrXo3rcGC3xVXRdaqsKp1AlMrM24Kz03V9zKTh2VRsaghRn29vpFFcUHYMVdCARGhzacTImZEJxbXMw5KEb3t4vtOs3khVHhBhHuzOI8HK6vqu6zfbQ7untBbrfvROayjaw5T1oSPRhXvGZiGCxSXLbNauay9eQenRTvpMaXGQRAfVw2hXjPYi7HFps1k24Ok8','2023-10-24 21:10:53'),(47,2,'DIdSRuCUs7EZuUyfznRKUR6mf8qVGSoYjTMN1mU0EYW94KX6UJtCUf9f1ZaXkiAiwY24hMaiXTuXE86dSlu3K6z3Da6P9C1HPHlIUHXRdpP6sugOOHUxjkd5b51FcfgDZuss8EEsN5GAYCT0oH9yuHfq2ZFeTCLpmrjIOA927yTXeLHzMIRUnNbHT09vPciAqSavSX2Fh9Ey56n0KJua7tPDAXynnm9Nhwd6UcJNYMamxZdoAi7Hlq8oQMYA6EU','2023-10-24 21:15:44'),(48,2,'Em57bmZXlPGFxb7ljNTun42EDY5o0tS45TqczlJXfJErBFgF33cNeHLpCSkIhx0VwFBnMNQM0O7qPPClGKG3ccssk9mk5cfhfY3Vds34w9L71YHNr4m9yMucK6C1hzNQFLPLDoaWEZodqmUA6HlmFufMPBEm6Zl2dEw3Ufdke4x7ct0xaq2Hl9Xbqeba7PozeRt5zXTB0laJy1oMk1uvZyPFaAD2FptrzGOCCDsEFGOgXXZqjai0HyWjIs64wVA','2023-10-24 22:11:55');
/*!40000 ALTER TABLE `client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total` decimal(15,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_details_client` (`client_id`),
  CONSTRAINT `fk_order_details_client` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_items_product` (`product_id`),
  KEY `fk_order_items_order_details` (`order_id`),
  CONSTRAINT `fk_order_items_order_details` FOREIGN KEY (`order_id`) REFERENCES `order_details` (`id`),
  CONSTRAINT `fk_order_items_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `provider` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` date DEFAULT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id` (`order_id`),
  CONSTRAINT `fk_payment_details_order_details` FOREIGN KEY (`order_id`) REFERENCES `order_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_details`
--

LOCK TABLES `payment_details` WRITE;
/*!40000 ALTER TABLE `payment_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(500) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `SKU` varchar(30) NOT NULL,
  `color` varchar(10) NOT NULL,
  `size` varchar(10) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `discount_id` int DEFAULT NULL,
  `inventory_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventory_id` (`inventory_id`),
  KEY `fk_product_discount` (`discount_id`),
  KEY `fk_ory` (`category_id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`),
  CONSTRAINT `fk_product_discount` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`),
  CONSTRAINT `fk_product_inventory` FOREIGN KEY (`inventory_id`) REFERENCES `product_inventory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES 
(1,NULL,'GANTS DE BOXE WINNING NOIR','MS-200','BLACK','8oz',295.00,'https://fightshop.plugn.fr/assets/gloves/black/',NULL,NULL,NULL,1,1,1),
(2,NULL,'GANTS DE BOXE WINNING BLEU','MS-200','BLUE','8oz',295.00,'https://fightshop.plugn.fr/assets/gloves/blue/',NULL,NULL,NULL,1,2,1),
(3,NULL,'GANTS DE BOXE WINNING ROUGE','MS-200','RED','8oz',295.00,'https://fightshop.plugn.fr/assets/gloves/red/',NULL,NULL,NULL,1,3,1),
(4,NULL,'GANTS DE BOXE WINNING BLANC','MS-200','WHITE','8oz',295.00,'https://fightshop.plugn.fr/assets/gloves/white/',NULL,NULL,NULL,1,4,1),
(5,NULL,'GANTS DE BOXE WINNING NOIR','MS-300','BLACK','10oz',325.00,'https://fightshop.plugn.fr/assets/gloves/black/',NULL,NULL,NULL,1,5,1),
(6,NULL,'GANTS DE BOXE WINNING BLEU','MS-300','BLUE','10oz',325.00,'https://fightshop.plugn.fr/assets/gloves/blue/',NULL,NULL,NULL,1,6,1),
(7,NULL,'GANTS DE BOXE WINNING ROUGE','MS-300','RED','10oz',325.00,'https://fightshop.plugn.fr/assets/gloves/red/',NULL,NULL,NULL,1,7,1),
(8,NULL,'GANTS DE BOXE WINNING BLANC','MS-300','WHITE','10oz',325.00,'https://fightshop.plugn.fr/assets/gloves/white/',NULL,NULL,NULL,1,8,1),
(9,NULL,'GANTS DE BOXE WINNING NOIR','MS-400','BLACK','12oz',360.00,'https://fightshop.plugn.fr/assets/gloves/black/',NULL,NULL,NULL,1,9,1),
(10,NULL,'GANTS DE BOXE WINNING BLEU','MS-400','BLUE','12oz',360.00,'https://fightshop.plugn.fr/assets/gloves/blue/',NULL,NULL,NULL,1,10,1),
(11,NULL,'GANTS DE BOXE WINNING ROUGE','MS-400','RED','12oz',360.00,'https://fightshop.plugn.fr/assets/gloves/red/',NULL,NULL,NULL,1,11,1),
(12,NULL,'GANTS DE BOXE WINNING BLANC','MS-400','WHITE','12oz',360.00,'https://fightshop.plugn.fr/assets/gloves/white/',NULL,NULL,NULL,1,12,1),
(13,NULL,'GANTS DE BOXE WINNING NOIR','MS-500','BLACK','14oz',385.00,'https://fightshop.plugn.fr/assets/gloves/black/',NULL,NULL,NULL,1,13,1),
(14,NULL,'GANTS DE BOXE WINNING BLEU','MS-500','BLUE','14oz',385.00,'https://fightshop.plugn.fr/assets/gloves/blue/',NULL,NULL,NULL,1,14,1),
(15,NULL,'GANTS DE BOXE WINNING ROUGE','MS-500','RED','14oz',385.00,'https://fightshop.plugn.fr/assets/gloves/red/',NULL,NULL,NULL,1,15,1),
(16,NULL,'GANTS DE BOXE WINNING BLANC','MS-500','WHITE','14oz',385.00,'https://fightshop.plugn.fr/assets/gloves/white/',NULL,NULL,NULL,1,16,1),
(17,NULL,'GANTS DE BOXE WINNING NOIR','MS-600','BLACK','16oz',420.00,'https://fightshop.plugn.fr/assets/gloves/black/',NULL,NULL,NULL,1,17,1),
(18,NULL,'GANTS DE BOXE WINNING BLEU','MS-600','BLUE','16oz',420.00,'https://fightshop.plugn.fr/assets/gloves/blue/',NULL,NULL,NULL,1,18,1),
(19,NULL,'GANTS DE BOXE WINNING ROUGE','MS-600','RED','16oz',420.00,'https://fightshop.plugn.fr/assets/gloves/red/',NULL,NULL,NULL,1,19,1),
(20,NULL,'GANTS DE BOXE WINNING BLANC','MS-600','WHITE','16oz',420.00,'https://fightshop.plugn.fr/assets/gloves/white/',NULL,NULL,NULL,1,20,1),
(21,NULL,'GANTS DE BOXE WINNING NOIR','MS-700','BLACK','18oz',570.00,'https://fightshop.plugn.fr/assets/gloves/black/',NULL,NULL,NULL,1,21,1),
(22,NULL,'GANTS DE BOXE WINNING BLEU','MS-700','BLUE','18oz',570.00,'https://fightshop.plugn.fr/assets/gloves/blue/',NULL,NULL,NULL,1,22,1),
(23,NULL,'GANTS DE BOXE WINNING ROUGE','MS-700','RED','18oz',570.00,'https://fightshop.plugn.fr/assets/gloves/red/',NULL,NULL,NULL,1,23,1),
(24,NULL,'GANTS DE BOXE WINNING BLANC','MS-700','WHITE','18oz',570.00,'https://fightshop.plugn.fr/assets/gloves/white/',NULL,NULL,NULL,1,24,1),
(25,NULL,'Semi-Intégral - Casque de Boxe Winning NOIR','FG-2900','BLACK','270G',420.00,'https://fightshop.plugn.fr/assets/headgear/black/',NULL,NULL,NULL,1,25,3),
(26,NULL,'Semi-Intégral - Casque de Boxe Winning BLEU','FG-2900','BLUE','270G',420.00,'https://fightshop.plugn.fr/assets/headgear/blue/',NULL,NULL,NULL,1,26,3),
(27,NULL,'Semi-Intégral - Casque de Boxe Winning ROUGE','FG-2900','RED','270G',420.00,'https://fightshop.plugn.fr/assets/headgear/red/',NULL,NULL,NULL,1,27,3),
(28,NULL,'Semi-Intégral - Casque de Boxe Winning BLANC','FG-2900','WHITE','270G',420.00,'https://fightshop.plugn.fr/assets/headgear/white/',NULL,NULL,NULL,1,28,3),
(29,NULL,'Coupe Classique - Coquille de Boxe Winning NOIR','CPS-500','BLACK','320G',420.00,'https://fightshop.plugn.fr/assets/groin_protector/black/',NULL,NULL,NULL,1,29,6),
(30,NULL,'Coupe Classique - Coquille de Boxe Winning BLEU','CPS-500','BLUE','320G',420.00,'https://fightshop.plugn.fr/assets/groin_protector/blue/',NULL,NULL,NULL,1,30,6),
(31,NULL,'Coupe Classique - Coquille de Boxe Winning ROUGE','CPS-500','RED','320G',420.00,'https://fightshop.plugn.fr/assets/groin_protector/red/',NULL,NULL,NULL,1,31,6),
(32,NULL,'Coupe Classique - Coquille de Boxe Winning BLANC','CPS-500','WHITE','320G',420.00,'https://fightshop.plugn.fr/assets/groin_protector/white/',NULL,NULL,NULL,1,32,6);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `characteristic` varchar(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'Gloves','Lace-Up',NULL,NULL,NULL,NULL),(2,'Gloves','Velcro',NULL,NULL,NULL,NULL),(3,'Headgear','Full-Face',NULL,NULL,NULL,NULL),(4,'Headgear','Cheek Protector',NULL,NULL,NULL,NULL),(5,'Headgear','Open Face',NULL,NULL,NULL,NULL),(6,'Groin Protector','Standart Cut',NULL,NULL,NULL,NULL),(7,'Groin Protector','High Cut',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_inventory`
--

DROP TABLE IF EXISTS `product_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_inventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_inventory`
--

LOCK TABLES `product_inventory` WRITE;
/*!40000 ALTER TABLE `product_inventory` DISABLE KEYS */;
INSERT INTO `product_inventory` VALUES (1,3,NULL,NULL,NULL),(2,6,NULL,NULL,NULL),(3,7,NULL,NULL,NULL),(4,0,NULL,NULL,NULL),(5,1,NULL,NULL,NULL),(6,2,NULL,NULL,NULL),(7,8,NULL,NULL,NULL),(8,8,NULL,NULL,NULL),(9,1,NULL,NULL,NULL),(10,3,NULL,NULL,NULL),(11,3,NULL,NULL,NULL),(12,3,NULL,NULL,NULL),(13,3,NULL,NULL,NULL),(14,3,NULL,NULL,NULL),(15,3,NULL,NULL,NULL),(16,3,NULL,NULL,NULL),(17,3,NULL,NULL,NULL),(18,3,NULL,NULL,NULL),(19,3,NULL,NULL,NULL),(20,3,NULL,NULL,NULL),(21,3,NULL,NULL,NULL),(22,3,NULL,NULL,NULL),(23,3,NULL,NULL,NULL),(24,4,NULL,NULL,NULL),(25,3,NULL,NULL,NULL),(26,3,NULL,NULL,NULL),(27,3,NULL,NULL,NULL),(28,3,NULL,NULL,NULL),(29,3,NULL,NULL,NULL),(30,3,NULL,NULL,NULL),(31,3,NULL,NULL,NULL),(32,3,NULL,NULL,NULL),(33,3,NULL,NULL,NULL),(34,3,NULL,NULL,NULL),(35,3,NULL,NULL,NULL),(36,3,NULL,NULL,NULL),(37,3,NULL,NULL,NULL),(38,3,NULL,NULL,NULL),(39,3,NULL,NULL,NULL),(40,3,NULL,NULL,NULL),(41,3,NULL,NULL,NULL),(42,3,NULL,NULL,NULL),(43,3,NULL,NULL,NULL),(44,3,NULL,NULL,NULL),(45,3,NULL,NULL,NULL),(46,3,NULL,NULL,NULL),(47,3,NULL,NULL,NULL),(48,3,NULL,NULL,NULL),(49,3,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_session`
--

DROP TABLE IF EXISTS `shopping_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total` decimal(15,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shopping_session_client` (`client_id`),
  CONSTRAINT `fk_shopping_session_client` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_session`
--

LOCK TABLES `shopping_session` WRITE;
/*!40000 ALTER TABLE `shopping_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-24 22:24:16
