CREATE DATABASE  IF NOT EXISTS `nailart_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nailart_db`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: nailart_db
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `care`
--

DROP TABLE IF EXISTS `care`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `care` (
  `CareID` int NOT NULL AUTO_INCREMENT,
  `CareTitle` varchar(100) NOT NULL,
  `CarePictureLink` varchar(200) NOT NULL,
  `CareHtmlLink` varchar(100) NOT NULL,
  `CareDescription` varchar(300) NOT NULL,
  PRIMARY KEY (`CareID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `care`
--

LOCK TABLES `care` WRITE;
/*!40000 ALTER TABLE `care` DISABLE KEYS */;
INSERT INTO `care` VALUES (1,'12 nail changes a dermatologist should examine','https://images.ctfassets.net/1ny4yoiyrqia/7nmtpwm2DpzC9VCylvZWlv/ae54b111b86955eb48070f8de3d23989/brittle-nails.jpg?fm=webp&w=450&h=300','./HtmlText/file01.html','Have you noticed a change to any of your nails lately? If you notice any changes to a fingernail or toenail, it’s time to see a board-certified dermatologist.'),(2,'Biting your nails? How to stop','https://images.ctfassets.net/1ny4yoiyrqia/2JYwIhwjRdlU2R62KTTCz7/ff40d4d3d8905cdbbaf72ed7db63eb0e/biting-nails.jpg?fm=webp&w=450&h=300','./HtmlText/file02.html','Nail biting typically begins in childhood and can continue through adulthood, and the side effects can be more than cosmetic. To help you stop biting your nails, dermatologists recommend these tips.'),(3,'How to trim your nails','https://images.ctfassets.net/1ny4yoiyrqia/4bgRYoIcNyaTWDWZHYfZRD/6f4638e558ee41e15af97af872f044e2/trim-nails.jpg?fm=webp&w=450&h=300','./HtmlText/file03.html','To properly trim your nails, follow these tips from board-certified dermatologists.'),(4,'Teaching your child healthy nail care','https://images.ctfassets.net/1ny4yoiyrqia/3cH4TTsP9sNFs7Mio7Hwwl/1fd74bb6cb0f330bb37d3e3cad77cb34/nail-care-kids.jpg?fm=webp&w=450&h=300','./HtmlText/file04.html','Teaching your child the these tips from dermatologists can help your child develop healthy nail care habits.'),(5,'Tips for healthy nails','https://images.ctfassets.net/1ny4yoiyrqia/4oaFUpvQLrI3l4OAf3GjVL/829b7f139528cfa7f8e6a401ea357a33/beautiful-nails.jpg?fm=webp&w=450&h=300','./HtmlText/file05.html','Nails reflect our overall health, which is why proper nail care is so important. Here are dermatologists’ tips for keeping your nails healthy.');
/*!40000 ALTER TABLE `care` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_c`
--

DROP TABLE IF EXISTS `categories_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_c` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CategoriesName` varchar(45) NOT NULL,
  `ParentID` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_c`
--

LOCK TABLES `categories_c` WRITE;
/*!40000 ALTER TABLE `categories_c` DISABLE KEYS */;
INSERT INTO `categories_c` VALUES (0,'Root',NULL),(1,'Basic',0),(2,'Advanced',0);
/*!40000 ALTER TABLE `categories_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_p`
--

DROP TABLE IF EXISTS `categories_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_p` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CategoriesName` varchar(45) NOT NULL,
  `ParentID` int DEFAULT NULL,
  `OrderID` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_p`
--

LOCK TABLES `categories_p` WRITE;
/*!40000 ALTER TABLE `categories_p` DISABLE KEYS */;
INSERT INTO `categories_p` VALUES (0,'ROOT',NULL,NULL),(1,'Nail Gel',0,NULL),(2,'Nail Art',0,NULL),(3,'Nail Extension',0,NULL),(4,'Nail Care',0,NULL),(5,'Electrical Item',0,NULL),(6,'Bling Girl',1,1),(7,'Born Pretty Gel',1,2),(8,'Lupine',1,3),(9,'Other Gels',1,4),(10,'Solid Cream Gel',1,5),(11,'UR Sugar Gel',1,6),(12,'Art by CB',2,1),(13,'Stamping',2,2),(14,'Stamping Plates',2,3),(15,'Tools For Nail Art',2,4),(16,'Accessories',3,1),(17,'Acrylic',3,2),(18,'Lupine Acrylic',3,3),(19,'Nude Acrylic Series',3,4),(20,'Poly Gel',3,5),(21,'Adhesive',4,1),(22,'Brushes',4,2),(23,'Nail Files',4,3),(24,'Nail Prep Tools',4,4),(25,'Preps',4,5),(26,'Removers & Treatments',4,6),(27,'Top Coats & Base Coats',4,7),(28,'Desk Lamps',5,1),(29,'Drills',5,2),(30,'Dust Collectors',5,3),(31,'UV/LED Lamps',5,4);
/*!40000 ALTER TABLE `categories_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `CourseID` int NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(300) NOT NULL,
  `CoursePictureLink` varchar(200) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `MoreInfo` varchar(4999) NOT NULL,
  `CourseDuration` varchar(45) NOT NULL,
  `AfterCourse_WhatDoes` varchar(4999) NOT NULL,
  `F0` int NOT NULL,
  `DocumentPdfLinkFile` varchar(200) NOT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `Course_F0_Categories_C_ID_idx` (`F0`),
  CONSTRAINT `Course_F0_Categories_C_ID` FOREIGN KEY (`F0`) REFERENCES `categories_c` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Nail Technician (Manicure, Pedicure, Nail Art)','https://resources.reed.co.uk/courses/providermedia/2261/2261_logo.png?v=1643813341','StudyHub','CPD Accredited | Expert Training from Professionals | FREE PDF Certificate | 24/7 Tutor Support | Lifetime Access','8 hours · Self-paced','Kickstart Your Career with StudyHub During This Winter Hiring Season and Get Special Gifts (Additional Courses + Pdf Certificate + Transcript + Student ID) Worth £190 - Enrol Now! Learn by creating amazing nail designs, anatomy and physiology as related to na',1,'./Pdf/A Study on Expression Techniques of Nail Art_ Focused on Nail Holic in 2012.pdf'),(2,'Nail Art','https://resources.reed.co.uk/courses/coursemedia/362660/74de0896-b4c7-4c41-b52c-25afd7eea642_cover.jpg','Training Centre','Learn up-to-date skills |CPD UK & IPHM Accredited |Free PDF & Hardcopy Certificate| Interactive Training| Instant Result','2.5 hours · Self-paced','Kickstart Your Career with StudyHub During This Winter Hiring Season and Get Special Gifts (Additional Courses + Pdf Certificate + Transcript + Student ID) Worth £190 - Enrol Now! Learn by creating amazing nail designs, anatomy and physiology as related to na',1,'./Pdf/Creativity_ebook_final2015.pdf'),(3,'Nail Technician (Manicure, Pedicure, Nail Art)','https://resources.reed.co.uk/courses/coursemedia/310498/22de26cc-5f80-45f8-99ed-cff6b1e4f0ca_cover.jpg','Training Tale','Skill Oriented| CPD Certified|Updated | Instructor Course | Instant Access | e-Certificate | FREE Video Lessons','10 hours · Self-paced','► Buy-one-get-one-free deal ► Grab your desired JOB; ► Advance your CAREER; ► Explore a variety of JOB opportunities; ► Lead the JOB sectors; ► Pursue your DREAM CAREER ➽ Hot DISCOUNT is Live 97 % off ➽ Save £388+!!! ➽ Limited Time Offer ➽ Exclusive De …',2,'./Pdf/UFD-Catalogue-C-Nail-Art-2019.pdf'),(4,'Expert Nail ( Manicure, Pedicure, Nail Art)','https://resources.reed.co.uk/courses/coursemedia/363527/38651a36-1e4d-4538-a7ec-68bb9cc4361c_cover.jpg','EDURISE','Expert Nail I Free Reed Provided Certificate | Instant Access| No Hidden Fees | 24/7 tutor support','0.6 hours · Self-paced','Enrol Expert Nail online training to kickstart your exciting career or passion and ensure your profound insight and knowledge. In order to ease your journey toward your goal, we designed this customised Expert Nail course after completing extensive research. The Expert Nail …',2,'./Pdf/UFD-Catalogue-C-Nail-Art-2019.pdf'),(5,'Nail Art: Nail Artist','https://resources.reed.co.uk/courses/providermedia/2144/2144_logo.png?v=1643796022','Lead Academy','Special Offer-Free PDF Certificate| CPD UK & IPHM Accredited | Recognised Certificate | Video Training | Lifetime Access','Self-paced','Are you looking to begin your nail art career or want to develop more advanced skills in nail art? Then this Nail Artist course will set you up with a solid foundation to become a confident nail technician and help you to develop your expertise in nail art. This Nail Artist c …',1,'./Pdf/UFD-Catalogue-C-Nail-Art-2019.pdf');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `RegNo` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(64) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Subject` varchar(64) NOT NULL,
  `Message` varchar(64) NOT NULL,
  PRIMARY KEY (`RegNo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (5,'Nhật Anh','nhatanh@gmail.com','I need to care','Hi there, I need to talk with you.'),(6,'Nhật Anh','nhatanh@gmail.com','I need to care','Hi there, I need to talk with you.'),(7,'Nhật Anh','nhatanh@gmail.com','I need to care','Hi there, I need to talk with you.'),(8,'Nhật Anh','nhatanh@gmail.com','I need to care','Hi there, I need to talk with you.'),(9,'Nhật Anh','nhatanh@gmail.com','I need to care','Hi there, I need to talk with you.'),(10,'Nhật Anh','nhatanh@gmail.com','I need to care','Hi there, I need to talk with you.'),(11,'Nhật Anh','nhatanh@gmail.com','I need to care','Hi there, I need to talk with you.'),(12,'asdadac','sws.pxl@gmail.com','cdzckl','asad'),(13,'asdadac','sws.pxl@gmail.com','cdzckl','asad'),(14,'asdadac','sws.pxl@gmail.com','cdzckl','asad'),(15,'asdadac','sws.pxl@gmail.com','cdzckl','asad'),(16,'asdadac','sws.pxl@gmail.com','cdzckl','asad'),(17,'asdadac','sws.pxl@gmail.com','cdzckl','asad'),(18,'Khôi','khoi@gmail.com','Contact now','bhshfaiubiu'),(19,'âdc','sws.pxl@gmail.com','èadfsdf','fdgesf');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictureinslide`
--

DROP TABLE IF EXISTS `pictureinslide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pictureinslide` (
  `PictureInSlideID` int NOT NULL AUTO_INCREMENT,
  `PictureInSlideLink` varchar(100) NOT NULL,
  PRIMARY KEY (`PictureInSlideID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictureinslide`
--

LOCK TABLES `pictureinslide` WRITE;
/*!40000 ALTER TABLE `pictureinslide` DISABLE KEYS */;
INSERT INTO `pictureinslide` VALUES (1,'./Img/home/slide/1917023.jpg'),(2,'./Img/home/slide/1917030.jpg'),(3,'./Img/home/slide/1917107.jpg'),(4,'./Img/home/slide/1917040.jpg');
/*!40000 ALTER TABLE `pictureinslide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(200) NOT NULL,
  `ProductPictureLink` varchar(300) NOT NULL,
  `ProductTextDetail` varchar(4999) NOT NULL,
  `ProductTextMoreInfo` varchar(4999) NOT NULL,
  `F1` int NOT NULL,
  `F0` int NOT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `Product_F0_Categories_P_ID_idx` (`F0`),
  CONSTRAINT `Product_F0_Categories_P_ID` FOREIGN KEY (`F0`) REFERENCES `categories_p` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Bling Girl Reflective Glitter Gel - 09','./Img/product/Nail_Gel/Bling_Girl/Bling_Girl_1.png','<p>Brand: Bling Girl</p><p>Type: Gel Polish</p><p>Color：24 Colors</p><p>Quantity: 1 Bottle</p><p>Capacity: 10ml</p><p>Suitable Lamp: UV Lamp or LED Lamp</p>','<p>It is quick drying with any UV Light.</p><p>Long lasting for at least 15-21days, fantastic and super bright nails for you.</p><p>This nail gel polish is easy to apply and soak off.</p><p>Allow you for professional or home nail art design.</p><p>A professional Nail Art Gift for yourself or your girlfriend.</p><p><br></p><p><strong>Professional usage:</strong></p><p>Step 1. Clean Nails then trimming nail surface as normal manicures process.</p><p>Step 2. Fully shake up the gel polish, it can make the gel polish color balanced. (Important)</p><p>Step 3. Apply base gel first, which can make polish lasting longer, cure with UV lamp or LED lamp. (Necessary)</p><p>Step 4. Apply first layer of color gel directly, cure with UV lamp for 2 minutes or cure with LED lamp for 60 seconds.</p><p>Step 5. Apply second layer of color gel and then immediately cure with UV lamp for 2 minutes or cure with LED lamp for 60 seconds.</p><p>Step 6. Coat with top coat, cured by UV lamp or LED lamp.</p>',1,1),(2,'Bling Girl Reflective Glitter Gel - 21','./Img/product/Nail_Gel/Bling_Girl/Bling_Girl_2.png','<p>Brand: Bling Girl</p><p>Type: Gel Polish</p><p>Color：24 Colors</p><p>Quantity: 1 Bottle</p><p>Capacity: 10ml</p><p>Suitable Lamp: UV Lamp or LED Lamp</p>','<p>It is quick drying with any UV Light.</p><p>Long lasting for at least 15-21days, fantastic and super bright nails for you.</p><p>This nail gel polish is easy to apply and soak off.</p><p>Allow you for professional or home nail art design.</p><p>A professional Nail Art Gift for yourself or your girlfriend.</p><p><br></p><p><strong>Professional usage:</strong></p><p>Step 1. Clean Nails then trimming nail surface as normal manicures process.</p><p>Step 2. Fully shake up the gel polish, it can make the gel polish color balanced. (Important)</p><p>Step 3. Apply base gel first, which can make polish lasting longer, cure with UV lamp or LED lamp. (Necessary)</p><p>Step 4. Apply first layer of color gel directly, cure with UV lamp for 2 minutes or cure with LED lamp for 60 seconds.</p><p>Step 5. Apply second layer of color gel and then immediately cure with UV lamp for 2 minutes or cure with LED lamp for 60 seconds.</p><p>Step 6. Coat with top coat, cured by UV lamp or LED lamp.</p>',1,1),(3,'Bling Girl Reflective Glitter Gel - 22','./Img/product/Nail_Gel/Bling_Girl/Bling_Girl_3.png','<p>Brand: Bling Girl</p><p>Type: Gel Polish</p><p>Color：24 Colors</p><p>Quantity: 1 Bottle</p><p>Capacity: 10ml</p><p>Suitable Lamp: UV Lamp or LED Lamp</p>','<p>It is quick drying with any UV Light.</p><p>Long lasting for at least 15-21days, fantastic and super bright nails for you.</p><p>This nail gel polish is easy to apply and soak off.</p><p>Allow you for professional or home nail art design.</p><p>A professional Nail Art Gift for yourself or your girlfriend.</p><p><br></p><p><strong>Professional usage:</strong></p><p>Step 1. Clean Nails then trimming nail surface as normal manicures process.</p><p>Step 2. Fully shake up the gel polish, it can make the gel polish color balanced. (Important)</p><p>Step 3. Apply base gel first, which can make polish lasting longer, cure with UV lamp or LED lamp. (Necessary)</p><p>Step 4. Apply first layer of color gel directly, cure with UV lamp for 2 minutes or cure with LED lamp for 60 seconds.</p><p>Step 5. Apply second layer of color gel and then immediately cure with UV lamp for 2 minutes or cure with LED lamp for 60 seconds.</p><p>Step 6. Coat with top coat, cured by UV lamp or LED lamp.</p>',1,1),(4,'Bling Girl Reflective Glitter Gel - 23','./Img/product/Nail_Gel/Bling_Girl/Bling_Girl_4.png','<p>Brand: Bling Girl</p><p>Type: Gel Polish</p><p>Color：24 Colors</p><p>Quantity: 1 Bottle</p><p>Capacity: 10ml</p><p>Suitable Lamp: UV Lamp or LED Lamp</p>','<p>It is quick drying with any UV Light.</p><p>Long lasting for at least 15-21days, fantastic and super bright nails for you.</p><p>This nail gel polish is easy to apply and soak off.</p><p>Allow you for professional or home nail art design.</p><p>A professional Nail Art Gift for yourself or your girlfriend.</p><p><br></p><p><strong>Professional usage:</strong></p><p>Step 1. Clean Nails then trimming nail surface as normal manicures process.</p><p>Step 2. Fully shake up the gel polish, it can make the gel polish color balanced. (Important)</p><p>Step 3. Apply base gel first, which can make polish lasting longer, cure with UV lamp or LED lamp. (Necessary)</p><p>Step 4. Apply first layer of color gel directly, cure with UV lamp for 2 minutes or cure with LED lamp for 60 seconds.</p><p>Step 5. Apply second layer of color gel and then immediately cure with UV lamp for 2 minutes or cure with LED lamp for 60 seconds.</p><p>Step 6. Coat with top coat, cured by UV lamp or LED lamp.</p>',1,1),(5,'Bling Girl Reflective Glitter Gel - 24','./Img/product/Nail_Gel/Bling_Girl/Bling_Girl_5.png','<p>Brand: Bling Girl</p><p>Type: Gel Polish</p><p>Color：24 Colors</p><p>Quantity: 1 Bottle</p><p>Capacity: 10ml</p><p>Suitable Lamp: UV Lamp or LED Lamp</p>','<p>It is quick drying with any UV Light.</p><p>Long lasting for at least 15-21days, fantastic and super bright nails for you.</p><p>This nail gel polish is easy to apply and soak off.</p><p>Allow you for professional or home nail art design.</p><p>A professional Nail Art Gift for yourself or your girlfriend.</p><p><br></p><p><strong>Professional usage:</strong></p><p>Step 1. Clean Nails then trimming nail surface as normal manicures process.</p><p>Step 2. Fully shake up the gel polish, it can make the gel polish color balanced. (Important)</p><p>Step 3. Apply base gel first, which can make polish lasting longer, cure with UV lamp or LED lamp. (Necessary)</p><p>Step 4. Apply first layer of color gel directly, cure with UV lamp for 2 minutes or cure with LED lamp for 60 seconds.</p><p>Step 5. Apply second layer of color gel and then immediately cure with UV lamp for 2 minutes or cure with LED lamp for 60 seconds.</p><p>Step 6. Coat with top coat, cured by UV lamp or LED lamp.</p>',1,1),(6,'Spider Gel - Black','./Img/product/Nail_Gel/Born_Pretty_Gel/Born_Pretty_Gel_1.jpg','<p>Brand: BORN PRETTY</p><p>Type: Spider Nail Gel Polish</p><p>Color Chart: 5 Colors for Choose</p><p>Quantity: 1 Box</p><p>Volume: Approx. 5ml</p><p>Ingredient: Resin</p><p>Long Period: About 15 Days</p><p>Effect: Glittery</p><p>Suitable Lamp: UV Lamp or LED Lamp</p>','<p><strong>Why Choose Our Gel Polish?</strong></p><p>It made of healthy, environmental, friendly, no poisonous, pungent chemical materials. &lt;br&gt;</p><p>It is quick drying with any UV Light.</p><p>Long lasting for 45 days.</p><p>No irritating smell.</p><p>No shrink gel.</p><p>High color saturation.</p><p>Super Glossy.</p><p>One-shot molding.</p><p>Creative wire line UV gel.</p><p>Suitable for professional use and home use.</p><p>A professional nail art gift for yourself or your girlfriend.</p><p><br></p><p><strong>How To Use Our Gel Polish?</strong></p><p>Step 1. Clean Nails then triming nail surface as normal nail art process.</p><p>Step 2. Fully shake up the gel polish, it can make the gel polish color balanced. (Important)</p><p>Step 3. Get ready the base color coat you want.</p><p>Step 4. Apply the elastic drawing gel with dotting pen.</p><p>Step 5. Draw you design with the dotting pen.</p><p>Step 6. Finished your design and cure.</p><p>Step 7. Apply gel top coat and cure.</p><p><br></p><p><strong>How to Remove Our UV Gel Nail Polish?</strong></p><p>1. File the nail surface.</p><p>2. Apply nail wipe about 7-10mins.</p><p>3. Apply BORN PRETTY gel remover to remove the excess gel.</p><p>4. All Removed.</p><p>5. Apply BORN PRETTY nail cuticle oil and massage it gently.</p><p><br></p><p><strong>Gentle Tips:</strong></p><p>1. Avoid all skin contact. If redness or other signs of adverse reaction occur, discontinue use immediately.</p><p>2. Keep tightly sealed. Keep out of sunlight. Keep out of reach of child.</p><p><br></p><p><strong>NOTICE:</strong></p><p>Please avoid contact with skin. In case of accident or if you feel unwell, seek medical advice immediately(show the</p><p>label whenever possible)</p>',2,1),(7,'Spider Gel - White','./Img/product/Nail_Gel/Born_Pretty_Gel/Born_Pretty_Gel_2.jpg','<p>Brand: BORN PRETTY</p><p>Type: Spider Nail Gel Polish</p><p>Color Chart: 5 Colors for Choose</p><p>Quantity: 1 Box</p><p>Volume: Approx. 5ml</p><p>Ingredient: Resin</p><p>Long Period: About 15 Days</p><p>Effect: Glittery</p><p>Suitable Lamp: UV Lamp or LED Lamp</p>','<p><strong>Why Choose Our Gel Polish?</strong></p><p>It made of healthy, environmental, friendly, no poisonous, pungent chemical materials. &lt;br&gt;</p><p>It is quick drying with any UV Light.</p><p>Long lasting for 45 days.</p><p>No irritating smell.</p><p>No shrink gel.</p><p>High color saturation.</p><p>Super Glossy.</p><p>One-shot molding.</p><p>Creative wire line UV gel.</p><p>Suitable for professional use and home use.</p><p>A professional nail art gift for yourself or your girlfriend.</p><p><br></p><p><strong>How To Use Our Gel Polish?</strong></p><p>Step 1. Clean Nails then triming nail surface as normal nail art process.</p><p>Step 2. Fully shake up the gel polish, it can make the gel polish color balanced. (Important)</p><p>Step 3. Get ready the base color coat you want.</p><p>Step 4. Apply the elastic drawing gel with dotting pen.</p><p>Step 5. Draw you design with the dotting pen.</p><p>Step 6. Finished your design and cure.</p><p>Step 7. Apply gel top coat and cure.</p><p><br></p><p><strong>How to Remove Our UV Gel Nail Polish?</strong></p><p>1. File the nail surface.</p><p>2. Apply nail wipe about 7-10mins.</p><p>3. Apply BORN PRETTY gel remover to remove the excess gel.</p><p>4. All Removed.</p><p>5. Apply BORN PRETTY nail cuticle oil and massage it gently.</p><p><br></p><p><strong>Gentle Tips:</strong></p><p>1. Avoid all skin contact. If redness or other signs of adverse reaction occur, discontinue use immediately.</p><p>2. Keep tightly sealed. Keep out of sunlight. Keep out of reach of child.</p><p><br></p><p><strong>NOTICE:</strong></p><p>Please avoid contact with skin. In case of accident or if you feel unwell, seek medical advice immediately(show the</p><p>label whenever possible)</p>',2,1),(8,'Lilycute Painting Gel - L01','./Img/product/Nail_Gel/Born_Pretty_Gel/Born_Pretty_Gel_3.png','','',2,1),(9,'Drawing Paint Gel â€“ Yellow','./Img/product/Nail_Gel/Born_Pretty_Gel/Born_Pretty_Gel_4.jpg','','',2,1),(10,'Sea Blue Cat Magnetic Nail Gel','./Img/product/Nail_Gel/Born_Pretty_Gel/Born_Pretty_Gel_5.jpg','','',2,1),(11,'Luminous Glitter Sequins Nail Gel - BGS09','./Img/product/Nail_Gel/Born_Pretty_Gel/Born_Pretty_Gel_6.png','','',2,1),(12,'Lupine Gel Polish Marsh Mellow - 10','./Img/product/Nail_Gel/Lupine/Lupine_1.png','','',3,1),(13,'Lupine Gel Polish Marsh Mellow - 11','./Img/product/Nail_Gel/Lupine/Lupine_2.png','','',3,1),(14,'Lupine Gel Polish Marsh Mellow - 12','./Img/product/Nail_Gel/Lupine/Lupine_3.png','','',3,1),(15,'Lupine Summer Breeze Collection','./Img/product/Nail_Gel/Lupine/Lupine_4.png','','',3,1),(16,'Drawing Paint Gel - Dark Blue','./Img/product/Nail_Gel/Other_Gels/Other_Gels_1.jpg','','',4,1),(17,'Gel Liner - 1 - Gold','./Img/product/Nail_Gel/Other_Gels/Other_Gels_2.jpeg','','',4,1),(18,'Lilycute Painting Gel - L01','./Img/product/Nail_Gel/Other_Gels/Other_Gels_3.png','','',4,1),(19,'Vendeeni Crack Nail Gel â€“ 01','./Img/product/Nail_Gel/Other_Gels/Other_Gels_4.png','','',4,1),(20,'Misscheering Solid Cream Gel - 19','./Img/product/Nail_Gel/Solid_Cream_Gel/Solid_Cream_Gel_1.png','','',5,1),(21,'Misscheering Solid Cream Gel - 20','./Img/product/Nail_Gel/Solid_Cream_Gel/Solid_Cream_Gel_2.png','','',5,1),(22,'Misscheering Solid Cream Gel - 21','./Img/product/Nail_Gel/Solid_Cream_Gel/Solid_Cream_Gel_3.png','','',5,1),(23,'Misscheering Solid Cream Gel - 22','./Img/product/Nail_Gel/Solid_Cream_Gel/Solid_Cream_Gel_4.png','','',5,1),(24,'UR SUGAR Nail Gel No 073','./Img/product/Nail_Gel/UR_Sugar_Gel/UR_Sugar_Gel_1.jpg','','',6,1),(25,'UR SUGAR Nail Gel No 100','./Img/product/Nail_Gel/UR_Sugar_Gel/UR_Sugar_Gel_2.jpg','','',6,1),(26,'UR SUGAR Nail Gel No 103','./Img/product/Nail_Gel/UR_Sugar_Gel/UR_Sugar_Gel_3.jpg','','',6,1),(27,'UR SUGAR Nail Gel No 108','./Img/product/Nail_Gel/UR_Sugar_Gel/UR_Sugar_Gel_4.jpg','','',6,1),(28,'UR SUGAR Nail Gel No 109','./Img/product/Nail_Gel/UR_Sugar_Gel/UR_Sugar_Gel_5.jpg','','',6,1),(29,'UR SUGAR Nail Gel No 121','./Img/product/Nail_Gel/UR_Sugar_Gel/UR_Sugar_Gel_6.jpg','','',6,1),(30,'Glitter Tub - Nude Flesh','./Img/product/Nail_Art/Art_by_CB/Art_by_CB_1.png','','',1,2),(31,'Glitter Tub - Pastel Aqua','./Img/product/Nail_Art/Art_by_CB/Art_by_CB_2.png','','',1,2),(32,'Glitter Tub - Teddy Bear','./Img/product/Nail_Art/Art_by_CB/Art_by_CB_3.png','','',1,2),(33,'Glitter Tub - Tiffany Blue','./Img/product/Nail_Art/Art_by_CB/Art_by_CB_4.png','','',1,2),(34,'Gold In Fire Stamping Polish','./Img/product/Nail_Art/Stamping/Stamping_1.jpg','','',2,2),(35,'Red Dark Armour Stamping Polish','./Img/product/Nail_Art/Stamping/Stamping_2.jpg','','',2,2),(36,'Born Pretty Big Clear Stamper','./Img/product/Nail_Art/Stamping/Stamping_3.jpg','','',2,2),(37,'Double End Stamper & Free Stamping Plate','./Img/product/Nail_Art/Stamping/Stamping_4.jpeg','','',2,2),(38,'Double Silicone Clear Jelly Stamper','./Img/product/Nail_Art/Stamping/Stamping_5.png','','',2,2),(39,'Stamp Cleaner â€“ Random Send','./Img/product/Nail_Art/Stamping/Stamping_6.jpg','','',2,2),(40,'Born Pretty Autumn- L002 Stamping Plate','./Img/product/Nail_Art/Stamping_Plates/Stamping_Plates_1.jpg','','',3,2),(41,'Born Pretty Snowflake- L002 Stamping Plate','./Img/product/Nail_Art/Stamping_Plates/Stamping_Plates_2.jpg','','',3,2),(42,'Nicole Diary 104 Stamping Plate â€“ Sunflowers','./Img/product/Nail_Art/Stamping_Plates/Stamping_Plates_3.png','','',3,2),(43,'Nicole Diary 237 Stamping Plate','./Img/product/Nail_Art/Stamping_Plates/Stamping_Plates_4.jpg','','',3,2),(44,'Nicole Diary 267 Stamping Plate','./Img/product/Nail_Art/Stamping_Plates/Stamping_Plates_5.jpg','','',3,2),(45,'Dotting Tool Set','./Img/product/Nail_Art/Tools_For_Nail_Art/Tools_For_Nail_Art_1.png','','',4,2),(46,'Gel Brushes','./Img/product/Nail_Art/Tools_For_Nail_Art/Tools_For_Nail_Art_2.png','','',4,2),(47,'Bling Girl Curved Point Tweezer','./Img/product/Nail_Art/Tools_For_Nail_Art/Tools_For_Nail_Art_3.png','','',4,2),(48,'Rectangular Black Magnetic Stick','./Img/product/Nail_Art/Tools_For_Nail_Art/Tools_For_Nail_Art_4.jpeg','','',4,2),(49,'Rohi Tweezers - Pointed','./Img/product/Nail_Art/Tools_For_Nail_Art/Tools_For_Nail_Art_5.png','','',4,2),(50,'Single Nail Art Brush - Universal','./Img/product/Nail_Art/Tools_For_Nail_Art/Tools_For_Nail_Art_6.png','','',4,2),(51,'Professional Forms - Butterfly','./Img/product/Nail_Extension/Accessories/Accessories_1.jpg','','',1,3),(52,'Easy French Smiley Tool - V','./Img/product/Nail_Extension/Accessories/Accessories_2.png','','',1,3),(53,'Nail carving knife with blades','./Img/product/Nail_Extension/Accessories/Accessories_3.png','','',1,3),(54,'Re-Useable Poly Gel Form Tip - Round','./Img/product/Nail_Extension/Accessories/Accessories_4.png','','',1,3),(55,'Acrylic Powder - G47','./Img/product/Nail_Extension/Acrylic/Acrylic_1.jpeg','','',2,3),(56,'Acrylic Powder - G64','./Img/product/Nail_Extension/Acrylic/Acrylic_2.jpeg','','',2,3),(57,'Acrylic Powder - G116','./Img/product/Nail_Extension/Acrylic/Acrylic_3.jpeg','','',2,3),(58,'Acrylic Powder - T32','./Img/product/Nail_Extension/Acrylic/Acrylic_4.png','','',2,3),(59,'Acrylic Powder - T73','./Img/product/Nail_Extension/Acrylic/Acrylic_5.png','','',2,3),(60,'Acrylic Powder - T115','./Img/product/Nail_Extension/Acrylic/Acrylic_6.png','','',2,3),(61,'Lupine Acrylic Powder - Clear','./Img/product/Nail_Extension/Lupine_Acrylic/Lupine_Acrylic_1.jpg','','',3,3),(62,'Lupine Acrylic Powder - Natural','./Img/product/Nail_Extension/Lupine_Acrylic/Lupine_Acrylic_2.jpg','','',3,3),(63,'Lupine Acrylic Powder - Pink','./Img/product/Nail_Extension/Lupine_Acrylic/Lupine_Acrylic_3.jpg','','',3,3),(64,'Lupine Acrylic Powder - White','./Img/product/Nail_Extension/Lupine_Acrylic/Lupine_Acrylic_4.jpg','','',3,3),(65,'Nude Acrylic - LS-09','./Img/product/Nail_Extension/Nude_Acrylic_Series/Nude_Acrylic_Series_1.jpg','','',4,3),(66,'Nude Acrylic - LS-10','./Img/product/Nail_Extension/Nude_Acrylic_Series/Nude_Acrylic_Series_2.jpg','','',4,3),(67,'Nude Acrylic - LS-11','./Img/product/Nail_Extension/Nude_Acrylic_Series/Nude_Acrylic_Series_3.jpg','','',4,3),(68,'Bling Girl Nude Poly Gel - 04','./Img/product/Nail_Extension/Poly_Gel/Poly_Gel_1.png','','',5,3),(69,'Bling Girl Nude Poly Gel - 06','./Img/product/Nail_Extension/Poly_Gel/Poly_Gel_2.png','','',5,3),(70,'Acrylic Colorful Jelly Extension Nail Gel - JES04','./Img/product/Nail_Extension/Poly_Gel/Poly_Gel_3.jpg','','',5,3),(71,'Glitter Extension Gel - BP-G06','./Img/product/Nail_Extension/Poly_Gel/Poly_Gel_4.jpg','','',5,3),(72,'UR SUGAR Nail Jelly Extension Gel - Pink','./Img/product/Nail_Extension/Poly_Gel/Poly_Gel_5.jpg','','',5,3),(73,'UR SUGAR Nail Jelly Extension Gel - White','./Img/product/Nail_Extension/Poly_Gel/Poly_Gel_6.jpg','','',5,3),(74,'Brush On Glue','./Img/product/Nail_Care/Adhesive/Adhesive_1.jpg','','',1,4),(75,'Misscheering Fast Drying Rhinestone Gel','./Img/product/Nail_Care/Adhesive/Adhesive_2.png','','',1,4),(76,'Bling Girl Peel Off Liquid Tape','./Img/product/Nail_Care/Adhesive/Adhesive_3.jpeg','','',1,4),(77,'Transfer Printing Gel (Foil Glue)','./Img/product/Nail_Care/Adhesive/Adhesive_4.jpg','','',1,4),(78,'Fast-dry Nail Glue','./Img/product/Nail_Care/Adhesive/Adhesive_5.jpg','','',1,4),(79,'Bling Girl Kolinsky Acrylic Brush','./Img/product/Nail_Care/Brushes/Brushes_1.png','','',2,4),(80,'Kolinsky Acrylic Brush - Pink Clear Handle','./Img/product/Nail_Care/Brushes/Brushes_2.png','','',2,4),(81,'Lily Angel Acrylic Flat Brush','./Img/product/Nail_Care/Brushes/Brushes_3.jpeg','','',2,4),(82,'Long Black & Pink Dust Brush','./Img/product/Nail_Care/Brushes/Brushes_4.jpg','','',2,4),(83,'Rohi Acrylic Brush No 12 - Black Handle','./Img/product/Nail_Care/Brushes/Brushes_5.jpg','','',2,4),(84,'Rohi Acrylic Brush No 16 - Black Handle','./Img/product/Nail_Care/Brushes/Brushes_6.jpeg','','',2,4),(85,'ROHI Acrylic Nail Brush - Clear Handle','./Img/product/Nail_Care/Brushes/Brushes_7.jpeg','','',2,4),(86,'ROHI Gel Nail Brush -  White Handle','./Img/product/Nail_Care/Brushes/Brushes_8.jpeg','','',2,4),(87,'Round Rose Gold Short Dusting Brush','./Img/product/Nail_Care/Brushes/Brushes_9.png','','',2,4),(88,'Royal Jade Washable Sponge File 100/180','./Img/product/Nail_Care/Nail_Files/Nail_Files_1.jpg','','',3,4),(89,'Flower Halfmoon Filer 150/150','./Img/product/Nail_Care/Nail_Files/Nail_Files_2.png','','',3,4),(90,'Flower Halfmoon Filer 180/180','./Img/product/Nail_Care/Nail_Files/Nail_Files_3.png','','',3,4),(91,'Grey Droplet Teardrop Nail File','./Img/product/Nail_Care/Nail_Files/Nail_Files_4.jpg','','',3,4),(92,'Halfmoon Filer 80/80','./Img/product/Nail_Care/Nail_Files/Nail_Files_5.png','','',3,4),(93,'Sunshine Buffer Straight','./Img/product/Nail_Care/Nail_Files/Nail_Files_6.jpg','','',3,4),(94,'Acetone Pads','./Img/product/Nail_Care/Nail_Prep_Tools/Nail_Prep_Tools_01.jpg','','',4,4),(95,'BORN PRETTY Dual-ended Cuticle Pusher','./Img/product/Nail_Care/Nail_Prep_Tools/Nail_Prep_Tools_02.jpg','','',4,4),(96,'BORN PRETTY Nail Cuticle Nipper Colorful','./Img/product/Nail_Care/Nail_Prep_Tools/Nail_Prep_Tools_03.jpg','','',4,4),(97,'Brush Cleaner','./Img/product/Nail_Care/Nail_Prep_Tools/Nail_Prep_Tools_04.jpeg','','',4,4),(98,'Disposable Towel','./Img/product/Nail_Care/Nail_Prep_Tools/Nail_Prep_Tools_05.png','','',4,4),(99,'Non-woven Nail Silk','./Img/product/Nail_Care/Nail_Prep_Tools/Nail_Prep_Tools_06.jpg','','',4,4),(100,'Remover Wipes Paper Lint-free Air-laid','./Img/product/Nail_Care/Nail_Prep_Tools/Nail_Prep_Tools_07.jpeg','','',4,4),(101,'Sanding Sticks','./Img/product/Nail_Care/Nail_Prep_Tools/Nail_Prep_Tools_08.png','','',4,4),(102,'Sterilizing Beads for Nail Sterilizing Machine','./Img/product/Nail_Care/Nail_Prep_Tools/Nail_Prep_Tools_09.png','','',4,4),(103,'Toe Separators','./Img/product/Nail_Care/Nail_Prep_Tools/Nail_Prep_Tools_10.png','','',4,4),(104,'Acid Free Bond Primer','./Img/product/Nail_Care/Preps/Preps_1.jpg','','',5,4),(105,'Bling Girl - Primer','./Img/product/Nail_Care/Preps/Preps_2.png','','',5,4),(106,'Bling Girl - Ultrabond','./Img/product/Nail_Care/Preps/Preps_3.png','','',5,4),(107,'BORN PRETTY  Nail Primer','./Img/product/Nail_Care/Preps/Preps_4.jpg','','',5,4),(108,'Lupine Bonder','./Img/product/Nail_Care/Preps/Preps_5.png','','',5,4),(109,'Gel Finish Wipe','./Img/product/Nail_Care/Removers_&_Treatments/Removers_&_Treatments_1.jpeg','','',6,4),(110,'Bling Girl Magic Remover','./Img/product/Nail_Care/Removers_&_Treatments/Removers_&_Treatments_2.png','','',6,4),(111,'Brush-On Debonder','./Img/product/Nail_Care/Removers_&_Treatments/Removers_&_Treatments_3.png','','',6,4),(112,'CB Cuticle Oil â€“ Rose','./Img/product/Nail_Care/Removers_&_Treatments/Removers_&_Treatments_4.png','','',6,4),(113,'OPI Cuticle Oil Pen','./Img/product/Nail_Care/Removers_&_Treatments/Removers_&_Treatments_5.png','','',6,4),(114,'Silicone Soak Off Caps','./Img/product/Nail_Care/Removers_&_Treatments/Removers_&_Treatments_6.png','','',6,4),(115,'Soakers (Clip Caps)','./Img/product/Nail_Care/Removers_&_Treatments/Removers_&_Treatments_7.jpg','','',6,4),(116,'Bling Girl 15ml Gel Polish â€“ Base Coat','./Img/product/Nail_Care/Top_Coats_&_Base_Coats/Top_Coats_&_Base_Coats_1.png','','',7,4),(117,'Born Pretty 7ml Base Gel','./Img/product/Nail_Care/Top_Coats_&_Base_Coats/Top_Coats_&_Base_Coats_2.jpg','','',7,4),(118,'BORN PRETTY Glitter Top Coat â€“ Gold','./Img/product/Nail_Care/Top_Coats_&_Base_Coats/Top_Coats_&_Base_Coats_3.jpg','','',7,4),(119,'BORN PRETTY Glitter Top Coat â€“ Rose','./Img/product/Nail_Care/Top_Coats_&_Base_Coats/Top_Coats_&_Base_Coats_4.jpg','','',7,4),(120,'Born Pretty  Matte Top Coat','./Img/product/Nail_Care/Top_Coats_&_Base_Coats/Top_Coats_&_Base_Coats_5.png','','',7,4),(121,'BORN PRETTY Top Coat â€“ Egg Shell Gel','./Img/product/Nail_Care/Top_Coats_&_Base_Coats/Top_Coats_&_Base_Coats_6.jpg','','',7,4),(122,'LED Nail Desk Lamp â€“ USB','./Img/product/Electrical_Items/Desk_Lamps/Desk_Lamps_1.png','','',1,5),(123,'TL627 WHITE LED Desk Lamp With Wireless Charging','./Img/product/Electrical_Items/Desk_Lamps/Desk_Lamps_2.png','','',1,5),(124,'Brushless Nail Drill â€“ Jmd-218 â€“ Blue','./Img/product/Electrical_Items/Drills/Drills_1.png','','',2,5),(125,'Portable Nail Drill TRG-107 â€“ 30 000 RPM','./Img/product/Electrical_Items/Drills/Drills_2.png','','',2,5),(126,'The Load Shedding Bundle','./Img/product/Electrical_Items/Drills/Drills_3.png','','',2,5),(127,'60 W High Power Nail Dust Collector','./Img/product/Electrical_Items/Dust_Collectors/Dust_Collectors_1.png','','',3,5),(128,'Dust Collector â€“ 3 Fans','./Img/product/Electrical_Items/Dust_Collectors/Dust_Collectors_2.png','','',3,5),(129,'SUN 9C UVLED Nail Lamp 24W','./Img/product/Electrical_Items/UVLED_Lamps/UVLED_Lamps_1.png','','',4,5),(130,'Sun Mini UVLED Nail Lamp â€“ Random send','./Img/product/Electrical_Items/UVLED_Lamps/UVLED_Lamps_2.png','','',4,5),(131,'Sun X8 PLUS 120W Large UVLED Lamp','./Img/product/Electrical_Items/UVLED_Lamps/UVLED_Lamps_3.png','','',4,5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-10 16:06:33
