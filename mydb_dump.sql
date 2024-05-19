-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates` (
  `candidateID` varchar(9) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `candidateVotes` int NOT NULL,
  `partyID_fk` varchar(9) NOT NULL,
  `area_fk` enum('Territoral','A Athens','B1 Northern Sector of Athens','B2 Western Sector of Athens','Β3 Southern Sector of Athens','Α Piraeus','Β Piraeus','A East Attica','B West Attica','Etoloakarnania','Argolida','Arcadia','Arta','Achaia','Viotia','Grevena','Drama','Dodecanese','Evros','Euboea','Evritania','Zakynthos','Ilia','Imathia','Heraklion','Thesprotia','A Thessaloniki','B Thessaloniki','Ioannina','Kavala','Karditsa','Kastoria','Corfu','Kefallinias','Kilkis','Kozani','Corinth','Cyclades','Laconia','Larissa','Lassithi','Lesvos','Lefkada','Magnesia','Messinia','Xanthi','Pella','Pieria','Preveza','Rethymno','Rodopi','Samos','Serres','Trikala','Fthiotida','Florina','Fokida','Chalkidiki','Chania','Chios') NOT NULL,
  PRIMARY KEY (`candidateID`),
  KEY `fk_to_party_idx` (`partyID_fk`),
  KEY `fk_Candidates_Electoral_Constituencies1_idx` (`area_fk`),
  CONSTRAINT `fk_Candidates_Electoral_Constituencies1` FOREIGN KEY (`area_fk`) REFERENCES `electoral_constituencies` (`area`),
  CONSTRAINT `fk_to_party` FOREIGN KEY (`partyID_fk`) REFERENCES `parties` (`partyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES ('AK 705983','Ioannis Kapodistrias',1500,'989420850','Argolida'),('AK 963526','Markos Botsaris',1501,'469827117','Ioannina'),('AO 871549','Charilaos Trikoupis',1499,'431525262','A Athens'),('AO 902305','Evaggelos Peristeris',214,'597250066','Magnesia'),('AZ 564874','Nikolaos Bougias',549,'894871352','Argolida');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `candidates_in_area`
--

DROP TABLE IF EXISTS `candidates_in_area`;
/*!50001 DROP VIEW IF EXISTS `candidates_in_area`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `candidates_in_area` AS SELECT 
 1 AS `Fullname`,
 1 AS `Party`,
 1 AS `Area`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `committiee_members`
--

DROP TABLE IF EXISTS `committiee_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `committiee_members` (
  `userID_fk` varchar(9) NOT NULL,
  `position` enum('Leader','Employee','Lawyer') NOT NULL,
  PRIMARY KEY (`userID_fk`),
  KEY `fk_Committiee Member_User1_idx` (`userID_fk`),
  CONSTRAINT `fk_Committiee Member_User1` FOREIGN KEY (`userID_fk`) REFERENCES `users` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committiee_members`
--

LOCK TABLES `committiee_members` WRITE;
/*!40000 ALTER TABLE `committiee_members` DISABLE KEYS */;
INSERT INTO `committiee_members` VALUES ('AI 568874','Leader'),('AK 700883','Employee'),('AK 968526','Employee'),('AO 877649','Employee'),('AO 990805','Lawyer');
/*!40000 ALTER TABLE `committiee_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `election_info_party`
--

DROP TABLE IF EXISTS `election_info_party`;
/*!50001 DROP VIEW IF EXISTS `election_info_party`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `election_info_party` AS SELECT 
 1 AS `Ranking`,
 1 AS `Party`,
 1 AS `President`,
 1 AS `VP`,
 1 AS `secretary`,
 1 AS `Votes`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `electoral_constituencies`
--

DROP TABLE IF EXISTS `electoral_constituencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `electoral_constituencies` (
  `area` enum('Territoral','A Athens','B1 Northern Sector of Athens','B2 Western Sector of Athens','Β3 Southern Sector of Athens','Α Piraeus','Β Piraeus','A East Attica','B West Attica','Etoloakarnania','Argolida','Arcadia','Arta','Achaia','Viotia','Grevena','Drama','Dodecanese','Evros','Euboea','Evritania','Zakynthos','Ilia','Imathia','Heraklion','Thesprotia','A Thessaloniki','B Thessaloniki','Ioannina','Kavala','Karditsa','Kastoria','Corfu','Kefallinias','Kilkis','Kozani','Corinth','Cyclades','Laconia','Larissa','Lassithi','Lesvos','Lefkada','Magnesia','Messinia','Xanthi','Pella','Pieria','Preveza','Rethymno','Rodopi','Samos','Serres','Trikala','Fthiotida','Florina','Fokida','Chalkidiki','Chania','Chios') NOT NULL,
  `seats` int NOT NULL,
  PRIMARY KEY (`area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electoral_constituencies`
--

LOCK TABLES `electoral_constituencies` WRITE;
/*!40000 ALTER TABLE `electoral_constituencies` DISABLE KEYS */;
INSERT INTO `electoral_constituencies` VALUES ('Territoral',12),('A Athens',14),('B1 Northern Sector of Athens',15),('B2 Western Sector of Athens',11),('A East Attica',10),('B West Attica',4),('Etoloakarnania',7),('Argolida',3),('Arcadia',3),('Arta',3),('Achaia',9),('Viotia',3),('Grevena',1),('Drama',3),('Dodecanese',5),('Evros',4),('Euboea',6),('Evritania',1),('Zakynthos',1),('Ilia',5),('Imathia',4),('Heraklion',8),('Thesprotia',2),('A Thessaloniki',16),('B Thessaloniki',9),('Ioannina',5),('Kavala',4),('Karditsa',4),('Kastoria',2),('Corfu',3),('Kefallinias',1),('Kilkis',3),('Kozani',5),('Corinth',4),('Cyclades',4),('Laconia',3),('Larissa',8),('Lassithi',2),('Lesvos',3),('Lefkada',1),('Magnesia',6),('Messinia',5),('Xanthi',3),('Pella',4),('Pieria',4),('Preveza',2),('Rethymno',2),('Rodopi',3),('Samos',1),('Serres',6),('Trikala',4),('Fthiotida',5),('Florina',2),('Fokida',1),('Chalkidiki',3),('Chania',4),('Chios',2);
/*!40000 ALTER TABLE `electoral_constituencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parties`
--

DROP TABLE IF EXISTS `parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parties` (
  `partyID` varchar(9) NOT NULL,
  `partyName` varchar(40) NOT NULL,
  `president` varchar(40) NOT NULL,
  `vicePresident` varchar(40) NOT NULL,
  `secretary` varchar(40) NOT NULL,
  `street` varchar(40) NOT NULL,
  `postalCode` int NOT NULL,
  `city` varchar(40) NOT NULL,
  `partyVotes` int NOT NULL,
  `ranking` enum('1o','2o','3o','4o','5o','6o','7o','8o','9o','10o','11o','12o','13o','14o','15o','16o','17o','18o','19o','20o') NOT NULL,
  `totalPercentage` float NOT NULL,
  PRIMARY KEY (`partyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parties`
--

LOCK TABLES `parties` WRITE;
/*!40000 ALTER TABLE `parties` DISABLE KEYS */;
INSERT INTO `parties` VALUES ('431525262','SYRIZA','Alexis Tsipras','Dimitris Tzanakopoulos','Olga Gerovasili','Plateia Eleutherias, 1',10553,'Athina',1456380,'3o',14.5),('469827117','Nea Dimokratia','Kyriakos Mitsotakis','Adonis Georgiadis','Giorgos Stergiou','Peiraios, 62',18346,'Athina',2001298,'2o',22.6),('597250066','PASOK','Andreas Papandreou','Akis Tsochatzopoulos','Litsa Patera','Chalilaou Trikoupi, 50',10680,'Athina',700120,'5o',7.3),('894871352','City Center','Dimitris Leoudis','Konstantinos Savvidis','Mixail Mouratoglou','Garbola, 7',54631,'Thessaloniki',4010569,'1o',40.1),('989420850','Mera25','Gianis Varoufakis','Konstantinos Kantakouzinos','Eleni Vlaxaki','Mavrommataion, 15',10434,'Athina',504460,'7o',5);
/*!40000 ALTER TABLE `parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phones` (
  `voters_userID` varchar(9) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `type` enum('Home','Work','Mobile') NOT NULL,
  PRIMARY KEY (`voters_userID`),
  KEY `fk_phones_users1_idx` (`voters_userID`),
  CONSTRAINT `fk_phones_users1` FOREIGN KEY (`voters_userID`) REFERENCES `voters` (`userID_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES ('AK 982374','2310245860','Home'),('AM 487123','2651356740','Home'),('AO 226488','6975321730','Mobile'),('AO 951365','2106969690','Work'),('AZ 591387','6985146890','Mobile');
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `stations_in_area`
--

DROP TABLE IF EXISTS `stations_in_area`;
/*!50001 DROP VIEW IF EXISTS `stations_in_area`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stations_in_area` AS SELECT 
 1 AS `Voting_Station`,
 1 AS `Area`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` varchar(9) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `login_datetime` varchar(20) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('AI 568874','Georgios Metaxas','&5G**jkuS','gmetaxas@gmail.com','12/7/2019-08:08:07'),('AK 700883','Manousos Trikalas','fjkwefjbecsnffn%%','trikalman@auth.gr','12/7/2019-08:11:09'),('AK 968526','Trifonas Kalamaris','pop4h3hd55@','plokamias@gmail.com','12/7/2019-08:12:08'),('AK 982374','Maria Papalouka','%k%69sh','mary.pap@gmail.com','12/7/2019-12:31:22'),('AM 487123','Georgia Karelia','t$igaraki1','karelia.g@gmail.com','12/7/2019-14:36:27'),('AO 226488','Stavros Dokousgiannis','SaaDNe$1','sdok.ece@gmail.com','12/7/2019-09:21:52'),('AO 877649','Marianna Bougia','LpL43@@','bougimar@gmail.com','12/7/2019-08:10:13'),('AO 951365','Ioannis Metaxas','smr_leme_OXI','mr_no@gmail.com','12/7/2019-15:40:44'),('AO 990805','Maria Polynou','kL530$$ff','polynoum@gmail.com','12/7/2019-08:16:17'),('AZ 591387','Soula Glamorous','Ep_ti-leei','soula.glam@gmail.com','12/7/2019-22:22:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter_validated_by_cm_at`
--

DROP TABLE IF EXISTS `voter_validated_by_cm_at`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voter_validated_by_cm_at` (
  `voters_userID_fk` varchar(9) NOT NULL,
  `cms_userID_fk` varchar(9) NOT NULL,
  `stationID_fk` int NOT NULL,
  PRIMARY KEY (`voters_userID_fk`,`cms_userID_fk`),
  KEY `fk_Voter_validated_by_CM_at_Voting_Stations1_idx` (`stationID_fk`),
  KEY `fk_Voter_validated_by_CM_at_Voters1_idx` (`voters_userID_fk`),
  KEY `fk_Voter_validated_by_CM_at_Committiee_Members1_idx` (`cms_userID_fk`),
  CONSTRAINT `fk_Voter_validated_by_CM_at_Committiee_Members1` FOREIGN KEY (`cms_userID_fk`) REFERENCES `committiee_members` (`userID_fk`),
  CONSTRAINT `fk_Voter_validated_by_CM_at_Voters1` FOREIGN KEY (`voters_userID_fk`) REFERENCES `voters` (`userID_fk`),
  CONSTRAINT `stationID_fk` FOREIGN KEY (`stationID_fk`) REFERENCES `voting_stations` (`stationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter_validated_by_cm_at`
--

LOCK TABLES `voter_validated_by_cm_at` WRITE;
/*!40000 ALTER TABLE `voter_validated_by_cm_at` DISABLE KEYS */;
INSERT INTO `voter_validated_by_cm_at` VALUES ('AK 982374','AI 568874',11239),('AZ 591387','AO 990805',12658),('AO 951365','AO 877649',20015),('AO 226488','AK 700883',24519),('AM 487123','AK 968526',58947);
/*!40000 ALTER TABLE `voter_validated_by_cm_at` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter_votes_candidate`
--

DROP TABLE IF EXISTS `voter_votes_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voter_votes_candidate` (
  `candidate_candidateID` varchar(9) NOT NULL,
  `voters_userID_fk` varchar(9) NOT NULL,
  `timestamp` varchar(10) NOT NULL,
  PRIMARY KEY (`candidate_candidateID`,`voters_userID_fk`),
  KEY `fk_Candidate_has_Voter_Candidate1_idx` (`candidate_candidateID`),
  KEY `fk_Voter_votes_Candidate_Voters1_idx` (`voters_userID_fk`),
  CONSTRAINT `fk_Candidate_has_Voter_Candidate1` FOREIGN KEY (`candidate_candidateID`) REFERENCES `candidates` (`candidateID`),
  CONSTRAINT `fk_Voter_votes_Candidate_Voters1` FOREIGN KEY (`voters_userID_fk`) REFERENCES `voters` (`userID_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter_votes_candidate`
--

LOCK TABLES `voter_votes_candidate` WRITE;
/*!40000 ALTER TABLE `voter_votes_candidate` DISABLE KEYS */;
INSERT INTO `voter_votes_candidate` VALUES ('AK 705983','AO 226488','20:29:12'),('AK 963526','AM 487123','18:33:54'),('AO 871549','AO 951365','10:15:03'),('AO 902305','AZ 591387','11:47:21'),('AZ 564874','AK 982374','15:01:48');
/*!40000 ALTER TABLE `voter_votes_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voters`
--

DROP TABLE IF EXISTS `voters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voters` (
  `userID_fk` varchar(9) NOT NULL,
  `dateOfBirth` varchar(10) NOT NULL,
  `street` varchar(40) NOT NULL,
  `postalCode` int NOT NULL,
  `city` varchar(40) NOT NULL,
  `area_fk` enum('Territoral','A Athens','B1 Northern Sector of Athens','B2 Western Sector of Athens','Β3 Southern Sector of Athens','Α Piraeus','Β Piraeus','A East Attica','B West Attica','Etoloakarnania','Argolida','Arcadia','Arta','Achaia','Viotia','Grevena','Drama','Dodecanese','Evros','Euboea','Evritania','Zakynthos','Ilia','Imathia','Heraklion','Thesprotia','A Thessaloniki','B Thessaloniki','Ioannina','Kavala','Karditsa','Kastoria','Corfu','Kefallinias','Kilkis','Kozani','Corinth','Cyclades','Laconia','Larissa','Lassithi','Lesvos','Lefkada','Magnesia','Messinia','Xanthi','Pella','Pieria','Preveza','Rethymno','Rodopi','Samos','Serres','Trikala','Fthiotida','Florina','Fokida','Chalkidiki','Chania','Chios') NOT NULL,
  PRIMARY KEY (`userID_fk`),
  KEY `fk_to_electoralConst_idx` (`area_fk`),
  KEY `fk_Voter_User1_idx` (`userID_fk`),
  CONSTRAINT `fk_to_electoralConst` FOREIGN KEY (`area_fk`) REFERENCES `electoral_constituencies` (`area`),
  CONSTRAINT `fk_Voter_User1` FOREIGN KEY (`userID_fk`) REFERENCES `users` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voters`
--

LOCK TABLES `voters` WRITE;
/*!40000 ALTER TABLE `voters` DISABLE KEYS */;
INSERT INTO `voters` VALUES ('AK 982374','22/02/1941','Eleutheriou Venizelou, 45',54631,'Thessaloniki','A Thessaloniki'),('AM 487123','12/07/1999','Averof, 30',45221,'Ioannina','Ioannina'),('AO 226488','01/04/1973','Konstantinou Palaiologou, 97',23100,'Sparti','Laconia'),('AO 951365','13/02/2002','Basileos Georgiou A, 1',10564,'Athina','B West Attica'),('AZ 591387','10/12/1985','Kapetan Agra, 8',54632,'Thessaloniki','A Thessaloniki');
/*!40000 ALTER TABLE `voters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `voters_in_area`
--

DROP TABLE IF EXISTS `voters_in_area`;
/*!50001 DROP VIEW IF EXISTS `voters_in_area`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `voters_in_area` AS SELECT 
 1 AS `ID`,
 1 AS `Fullname`,
 1 AS `area`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `voting_stations`
--

DROP TABLE IF EXISTS `voting_stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voting_stations` (
  `stationID` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `area_fk` enum('Territoral','A Athens','B1 Northern Sector of Athens','B2 Western Sector of Athens','Β3 Southern Sector of Athens','Α Piraeus','Β Piraeus','A East Attica','B West Attica','Etoloakarnania','Argolida','Arcadia','Arta','Achaia','Viotia','Grevena','Drama','Dodecanese','Evros','Euboea','Evritania','Zakynthos','Ilia','Imathia','Heraklion','Thesprotia','A Thessaloniki','B Thessaloniki','Ioannina','Kavala','Karditsa','Kastoria','Corfu','Kefallinias','Kilkis','Kozani','Corinth','Cyclades','Laconia','Larissa','Lassithi','Lesvos','Lefkada','Magnesia','Messinia','Xanthi','Pella','Pieria','Preveza','Rethymno','Rodopi','Samos','Serres','Trikala','Fthiotida','Florina','Fokida','Chalkidiki','Chania','Chios') NOT NULL,
  PRIMARY KEY (`stationID`),
  KEY `area_fk_idx` (`area_fk`),
  CONSTRAINT `area_fk` FOREIGN KEY (`area_fk`) REFERENCES `electoral_constituencies` (`area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voting_stations`
--

LOCK TABLES `voting_stations` WRITE;
/*!40000 ALTER TABLE `voting_stations` DISABLE KEYS */;
INSERT INTO `voting_stations` VALUES (11239,'10o Dimotiko Rethymnou','Rethymno'),(12658,'1o GEL Xanthis','Xanthi'),(20015,'1o Dimotiko Thessalonikis','A Thessaloniki'),(24519,'20o Gymnasio Nafpliou','Argolida'),(58947,'3o GEL Ioanninon','Ioannina');
/*!40000 ALTER TABLE `voting_stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `candidates_in_area`
--

/*!50001 DROP VIEW IF EXISTS `candidates_in_area`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `candidates_in_area` AS select `candidates`.`fullname` AS `Fullname`,`parties`.`partyName` AS `Party`,`electoral_constituencies`.`area` AS `Area` from ((`candidates` join `parties` on((`candidates`.`partyID_fk` = `parties`.`partyID`))) join `electoral_constituencies` on((`candidates`.`area_fk` = `electoral_constituencies`.`area`))) where (`electoral_constituencies`.`area` = 'Argolida') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `election_info_party`
--

/*!50001 DROP VIEW IF EXISTS `election_info_party`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `election_info_party` AS select `parties`.`ranking` AS `Ranking`,`parties`.`partyName` AS `Party`,`parties`.`president` AS `President`,`parties`.`vicePresident` AS `VP`,`parties`.`secretary` AS `secretary`,`parties`.`partyVotes` AS `Votes` from `parties` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `stations_in_area`
--

/*!50001 DROP VIEW IF EXISTS `stations_in_area`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stations_in_area` AS select `voting_stations`.`name` AS `Voting_Station`,`electoral_constituencies`.`area` AS `Area` from (`voting_stations` join `electoral_constituencies` on((`voting_stations`.`area_fk` = `electoral_constituencies`.`area`))) where (`voting_stations`.`name` = '1o Dimotiko Thessalonikis') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `voters_in_area`
--

/*!50001 DROP VIEW IF EXISTS `voters_in_area`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `voters_in_area` AS select `voters`.`userID_fk` AS `ID`,`users`.`fullname` AS `Fullname`,`electoral_constituencies`.`area` AS `area` from ((`voters` join `users` on((`voters`.`userID_fk` = `users`.`userID`))) join `electoral_constituencies` on((`voters`.`area_fk` = `electoral_constituencies`.`area`))) where (`electoral_constituencies`.`area` = 'A Thessaloniki') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-20 19:57:01
