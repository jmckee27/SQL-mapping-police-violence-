CREATE DATABASE  IF NOT EXISTS `mpv` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mpv`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mpv
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Temporary view structure for view `agency_incident_stats`
--

DROP TABLE IF EXISTS `agency_incident_stats`;
/*!50001 DROP VIEW IF EXISTS `agency_incident_stats`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `agency_incident_stats` AS SELECT 
 1 AS `agency_name`,
 1 AS `state_abbreviation`,
 1 AS `total_incidents`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `blmera_black_victims`
--

DROP TABLE IF EXISTS `blmera_black_victims`;
/*!50001 DROP VIEW IF EXISTS `blmera_black_victims`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `blmera_black_victims` AS SELECT 
 1 AS `victim_name`,
 1 AS `age`,
 1 AS `race`,
 1 AS `date`,
 1 AS `cause_of_death`,
 1 AS `agency_name`,
 1 AS `allegedly_armed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bodycam_incidents`
--

DROP TABLE IF EXISTS `bodycam_incidents`;
/*!50001 DROP VIEW IF EXISTS `bodycam_incidents`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bodycam_incidents` AS SELECT 
 1 AS `incident_id`,
 1 AS `date`,
 1 AS `agency_name`,
 1 AS `body_camera_used`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `incidents`
--

DROP TABLE IF EXISTS `incidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidents` (
  `incident_id` int NOT NULL,
  `location_id` int NOT NULL,
  `date` date NOT NULL,
  `cause_of_death` varchar(100) DEFAULT NULL,
  `encounter_type` varchar(100) DEFAULT NULL,
  `street_address` varchar(100) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`incident_id`),
  KEY `Location_id _idx` (`location_id`),
  CONSTRAINT `Location_id ` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidents`
--

LOCK TABLES `incidents` WRITE;
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
INSERT INTO `incidents` VALUES (1,1,'2020-09-04','Gunshot',NULL,'200 N. State Street','13203'),(2,1,'2021-10-20','Gunshot ','Person with a Weapon ','216 Ulster Street','13204'),(3,2,'2021-12-26','Gunshot','Person with a Weapon ','2900 West Broadway','90041'),(4,3,'2021-12-08','Gunshot','Person with a Weapon ','2100 block of North Nashville Avenue','60707'),(5,2,'2021-12-23','Gunshot ','Part 1 Violent Crime','12121 Victory Blvd','91606'),(6,4,'2020-09-12','Gunshot','Traffic Stop','Meade St & W Colfax Ave','80204'),(7,4,'2021-05-14','Gunshot','Part 1 Violent Crime','West 1st Avenue and Perry Street','80219'),(8,2,'2018-09-19','Gunshot ','Person with a Weapon ','3864 Whittier Boulevard','90023'),(9,2,'2021-08-10','Gunshot ','Part 1 Violent Crime','S Main Street and 6th Street','90014'),(10,5,'2021-10-09','Vehicle',NULL,'Garden State Parkway N at Asbury Ave','07753'),(11,6,'2020-01-19','Vehicle',NULL,'Barack Obama Presidential Expy','60586'),(12,7,'2019-11-10','Gunshot',NULL,'6000 Old Jefferson Road','30607'),(13,8,'2019-07-17','Gunshot','Other Non-Violent Offense','301 E South Ave','74501'),(14,9,'2019-11-28','Gunshot','Part 1 Violent Crime','200 E Cluster Ave','33604'),(15,10,'2019-12-03','Gunshot','Domestic Disturbance','4100 College Ave','64130'),(16,11,'2019-10-12','Gunshot','Mental Health/Welfare Check','1203 E Allen Ave','76104'),(17,12,'2019-12-27','Gunshot',NULL,'100 Nantucket Pl','23606'),(18,13,'2021-03-30','Gunshot','Part 1 Violent Crime','2221 Euclid Ave','24201'),(19,14,'2020-05-23','Gunshot','Traffic Stop','Garden State Parkway near Bass River Township exit','08087'),(20,15,'2020-06-02','Gunshot','Other Non-Violent Offense','1000 Redwood St.','94590');
/*!40000 ALTER TABLE `incidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `law_enforcement_agencies`
--

DROP TABLE IF EXISTS `law_enforcement_agencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `law_enforcement_agencies` (
  `agency_id` int NOT NULL,
  `location_id` int NOT NULL,
  `agency_name` varchar(45) NOT NULL,
  PRIMARY KEY (`agency_id`),
  KEY `location_id_idx` (`location_id`),
  CONSTRAINT `law_location_id` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `law_enforcement_agencies`
--

LOCK TABLES `law_enforcement_agencies` WRITE;
/*!40000 ALTER TABLE `law_enforcement_agencies` DISABLE KEYS */;
INSERT INTO `law_enforcement_agencies` VALUES (1,1,'Syracuse Police Department '),(2,2,'Los Angelos Police Deparment'),(3,3,'Chicago Police Department'),(4,4,'Denver Police Department '),(5,2,'Los Angelos County Sheriff\'s Office'),(6,5,'Hillsdale Police Department'),(7,6,'Joilette Police Department'),(8,7,'Madison County Sheriff\'s Office'),(9,8,'Oaklahoma Highway Patrol'),(10,9,'Tampa Police Department '),(11,10,'Kansas City Police Department '),(12,11,'Fort Worth Police Department '),(13,12,'Newport News Police Department'),(14,13,'Bristol Police Department '),(15,14,'New Jersey State Police'),(16,15,'Vallejo Police Department ');
/*!40000 ALTER TABLE `law_enforcement_agencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location_id` int NOT NULL,
  `city_name` varchar(45) NOT NULL,
  `state_abbreviation` varchar(2) DEFAULT NULL,
  `county` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Syracuse','NY','Onondaga'),(2,'Los Angeles','CA','Los Angeles'),(3,'Chicago','IL','Cook'),(4,'Denver','CO','Denver'),(5,'Ashbury Park','NJ','Monmouth'),(6,'Plainfield','IL','Will'),(7,'Athens','GA','Clarke'),(8,'McAlester','OK','Pittsburg'),(9,'Tampa','FL','Hillsborough'),(10,'Kansas City','MO','Jackson'),(11,'Fortworth','TX','Tarrant'),(12,'Newport News','VA','Newport News City'),(13,'Bristol','VA','Bristol City'),(14,'Bass River','NJ','Burlington'),(15,'Vallejo','CA','Solano');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_coverage`
--

DROP TABLE IF EXISTS `media_coverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_coverage` (
  `media_id` int NOT NULL,
  `incident_id` int NOT NULL,
  `link_to_media` varchar(500) NOT NULL,
  PRIMARY KEY (`media_id`),
  KEY `incident_id_idx` (`incident_id`),
  CONSTRAINT `incident_article_fk` FOREIGN KEY (`incident_id`) REFERENCES `incidents` (`incident_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_coverage`
--

LOCK TABLES `media_coverage` WRITE;
/*!40000 ALTER TABLE `media_coverage` DISABLE KEYS */;
INSERT INTO `media_coverage` VALUES (1,1,'https://cnycentral.com/news/local/large-police-presence-responding-to-shooting-call-at-gas-station-in-syracuse'),(2,2,'https://www.syracuse.com/crime/2021/10/ags-office-identifies-woman-fatally-shot-by-syracuse-police.html'),(3,2,'https://cnycentral.com/news/local/nys-ag-determines-syracuse-police-will-not-be-charged-in-fatal-shooting-of-tipp-hill-woman'),(4,3,'https://www.usnews.com/news/best-states/california/articles/2021-12-27/los-angeles-police-shoot-kill-man-with-knife'),(5,4,'https://chicago.suntimes.com/crime/2024/05/17/chicago-cop-testifies-murder-trial-girlfriend-accidentally-shot-herself-struggle-over-gun'),(6,4,'https://www.oxygen.com/crime-news/andris-wofford-killed-by-boyfriend-pierre-tyler-a-chicago-cop'),(7,4,'https://uk.news.yahoo.com/did-chicago-police-officer-kill-221900306.html?guccounter=1&guce_referrer=aHR0cHM6Ly9uZXdzLmdvb2dsZS5jb20v&guce_referrer_sig=AQAAAHwdM1O2To7nzVPe2E7BVEoAsyIRgZLWjF0YsZO5xC3xhIA-cvjKzMhygF-r9NlJt2EvJ2SEbagbo0T7LYV4zsGnhqEPhzpa1kiE3zCwkoUEJ2mu4dNQWoKRKGKQ5dkouxbaK6-pzsrgjXsyRSMqMLY1UNey8qixfD8DU-KawImF'),(8,5,'https://www.usatoday.com/story/news/nation/2021/12/24/burlington-lapd-north-hollywood-shooting-teenager-identified/9015652002/'),(9,5,'https://ktla.com/news/local-news/lapd-officer-who-mistakenly-shot-and-killed-14-year-old-girl-broke-policy-report-states/'),(10,5,'https://oag.ca.gov/news/press-releases/california-department-justice-releases-report-officer-involved-shooting-daniel'),(11,5,'https://calmatters.org/justice/2024/04/california-wont-prosecute-lapd-officer-who-shot-teenage-girl-in-stores-dressing-room/'),(12,5,'https://mynewsla.com/crime/2022/11/25/activists-call-for-charges-against-lapd-officer-involved-in-teens-killing/'),(13,6,'https://www.9news.com/article/news/crime/denver-officer-involved-shooting-colfax-meade/73-14df9f7c-bac5-4ef5-b356-9ad09933d0c5'),(14,6,'https://www.denverpost.com/2023/10/24/colorado-police-misconduct-database-post-board/'),(15,7,'https://www.9news.com/article/news/crime/1st-perry-police-shooting/73-4a283ec9-b6d8-47f4-9911-9668521bbe64'),(16,7,'https://www.denverpost.com/2023/10/24/colorado-police-misconduct-database-post-board/'),(17,8,'https://da.lacounty.gov/sites/default/files/pdf/JSID-OIS-1202019-HerreraCruz.pdf'),(18,8,'https://abc7.com/suspects-in-east-la-gunfight-with-deputies-idd-as-known-gang-members/4296571/'),(19,9,'https://ktla.com/news/local-news/lapd-identifies-man-killed-by-police-after-taking-woman-hostage-at-downtown-l-a-apartment/'),(20,10,'https://www.stamfordadvocate.com/news/article/Off-duty-NJ-officer-charged-in-crash-that-killed-17015147.php'),(21,10,'https://patch.com/new-jersey/clark/union-county-police-officer-was-drunk-fatal-crash-prosecutor'),(22,11,'https://www.shawlocal.com/the-herald-news/news/crime-and-courts/2023/06/30/judge-to-decide-ex-joliet-police-officers-fate-in-fatal-dui-crash-case/'),(23,11,'https://abc7chicago.com/erin-zilka-joliet-il-police-news-charles-schauer/13474376/'),(24,11,'https://www.shawlocal.com/the-herald-news/news/crime-and-courts/2023/07/08/ex-joliet-cop-found-not-guilty-of-aggravated-dui-in-deadly-crash/'),(25,12,'https://www.ajc.com/news/crime--law/breaking-georgia-sheriff-deputy-arrested-murder-charge/oLYOf3g17KjdpplCUn5MrJ/'),(26,12,'https://www.onlineathens.com/story/news/2022/03/14/former-deputy-madison-county-sentenced-uga-student-slaying/7040121001/'),(27,13,'https://www.mcalesternews.com/news/officer-involved-shooting-being-investigated/article_f5723bca-a8f8-11e9-9060-935cfce25027.html'),(28,13,'https://www.mcalesternews.com/news/federal-judge-recommends-summary-judgements-in-lawsuit/article_5bec0808-dd44-11ed-b1b5-c702d20cd49a.html\n'),(29,13,'https://www.enidnews.com/news/federal-judge-grants-summary-judgment-in-lawsuit/article_653f96df-04d6-5f55-a467-a68a8cba3ce1.html'),(30,14,'https://www.theledger.com/news/20191129/officers-shoot-and-kill-man-who-pointed-handgun-at-them-tampa-police-say'),(31,15,'https://www.theroot.com/family-demands-justice-in-officer-involved-shooting-in-1840312733'),(32,15,'https://www.kcur.org/news/2022-02-22/kansas-city-detective-convicted-in-killing-of-black-man-will-remain-free-even-after-hes-sentenced'),(33,15,'https://missouriindependent.com/briefs/prosecutor-lawmakers-urge-missouri-governor-not-to-pardon-cop-who-killed-a-black-man/'),(34,15,'https://news.yahoo.com/parson-criticizes-prosecutor-says-pardon-185156829.html\n'),(35,15,'https://www.kansascity.com/news/local/article276774511.html'),(36,15,'https://www.newstribune.com/news/2023/jun/28/missouri-ag-seeks-reversal-of-former-detectives/\n'),(37,15,'https://fox4kc.com/news/missouri-court-to-hear-oral-arguments-in-ex-kcpd-officers-appeal/\n'),(38,15,'https://www.stltoday.com/news/local/crime-courts/prosecutor-seeks-to-defend-conviction-of-kc-police-officer-because-missouri-ag-won-t/article_f8865dbe-32b5-11ee-bfb5-ff6ef4aff32d.html\n'),(39,15,'https://www.kansascity.com/news/local/crime/article278881354.html'),(40,15,'https://www.usnews.com/news/us/articles/2023-10-17/missouri-ex-officer-who-killed-black-man-loses-appeal-of-his-conviction-judge-orders-him-arrested'),(41,15,'https://www.kcur.org/news/2023-10-17/missouri-appeals-court-upholds-ruling-for-only-kansas-city-officer-convicted-of-killing-a-black-man\n'),(42,15,'https://www.kmbc.com/article/family-of-former-kansas-city-police-detective-eric-devalkenaere-requests-clemency-from-governors-office/45631402#'),(43,15,'https://www.middletownpress.com/news/article/white-officer-who-fatally-shot-black-man-19777632.php'),(44,15,'https://www.komu.com/news/state/parson-commutes-sentence-of-police-officer-convicted-of-fatally-shooting-black-man/article_0a465f17-3d39-514e-aa37-fd3eef840107.html'),(45,16,'https://www.nbcdfw.com/news/local/Fort-Worth-Police-to-Hold-Press-Conference-After-Shooting-Killing-Woman-in-Home-563004851.html'),(46,16,'https://www.keranews.org/criminal-justice/2022-12-05/aaron-deans-murder-trial-begins-with-major-question-was-police-shooting-justified'),(47,16,'https://6abc.com/atatiana-jefferson-trial-aaron-dean-fort-worth-story/12528595/'),(48,16,'https://www.wtok.com/2022/12/15/texas-officer-convicted-manslaughter-shooting-woman-through-window-home/'),(49,16,'https://www.pbs.org/newshour/nation/former-officer-who-killed-atatiana-jefferson-sentenced-to-nearly-12-years'),(50,16,'https://www.ctpost.com/news/article/texas-city-approves-3-5-million-for-child-who-18520634.php'),(51,16,'https://www.keranews.org/news/2023-12-04/former-fort-worth-police-officer-aaron-deans-appeal-of-manslaughter-conviction-set-for-tuesday'),(52,16,'https://www.keranews.org/news/2024-02-16/court-upholds-manslaughter-conviction-of-former-fort-worth-police-officer-aaron-dean'),(53,17,'https://wtkr.com/2019/12/27/newport-news-police-officer-involved-in-shooting/'),(54,17,'https://www.dailypress.com/news/crime/dp-nw-pearson-closed-hearing-20230129-aj4phkevynd7bjegeetfiikd3e-story.html\n'),(55,17,'https://www.dailypress.com/2023/05/19/settlement-reached-in-case-of-newport-news-man-killed-by-police-in-his-living-room-in-2019/'),(56,17,'https://www.pilotonline.com/2023/08/17/judge-rules-in-favor-of-daily-press-virginian-pilot-unseals-records-in-police-officer-shooting-case/'),(57,18,'https://www.wjhl.com/news/local/breaking-officer-involved-shooting-reported-in-bristol-va/\n'),(58,18,'https://wcyb.com/news/local/bristol-virginia-officer-charged-with-murder-in-fatal-shooting'),(59,18,'https://wcyb.com/news/local/judge-to-weigh-what-testimony-can-be-admitted-in-murder-trial-of-bristol-officer'),(60,18,'https://wcyb.com/news/local/motion-ruling-made-in-case-of-bristol-virginia-police-officer-charged-with-murder'),(61,18,'https://wcyb.com/news/local/it-was-scary-witnesses-recount-officer-involved-shooting-in-bristol-virginia'),(62,18,'https://lawandcrime.com/police/virginia-cop-posts-25000-bond-after-grand-jury-indicts-him-for-shooting-killing-suspect-while-on-duty/'),(63,18,'https://fox17.com/news/local/vsp-changes-story-on-incident-that-led-to-murder-charge-for-a-bristol-police-officer'),(64,19,'https://www.app.com/story/news/crime/2020/05/24/police-id-man-killed-officer-involved-shooting-parkway/5254318002/'),(65,19,'https://www.nbcnewyork.com/news/local/nj-trooper-wont-face-charges-in-2020-traffic-stop-death-of-black-ny-motorist/3693246/\n\n'),(66,19,'https://www.nj.com/news/2022/05/no-criminal-charges-for-officer-who-killed-unarmed-black-man-on-highway.html'),(67,20,'https://www.marinij.com/2020/06/03/police-man-had-hammer-not-a-gun-when-he-was-fatally-shot/\n'),(68,20,'https://abc7news.com/sean-monterrosa-police-shooting-officer-jarrett-tonn-vallejo/13712163/'),(69,20,'https://www.vallejosun.com/vallejo-detective-who-killed-sean-monterrosa-to-be-reinstated-with-back-pay/'),(70,20,'https://12ft.io/proxy?q=https%3A%2F%2Fwww.eastbaytimes.com%2F2023%2F09%2F20%2Fvallejo-releases-report-mandating-return-of-monterrosa-shooter%2F'),(71,20,'https://www.kron4.com/news/bay-area/no-charges-for-officer-in-sean-monterrosa-shooting-state-ag-announces/'),(72,20,'https://www.mercurynews.com/2023/12/20/insufficient-evidence-found-for-officer-who-killed-monterrosa/'),(73,20,'https://abc7news.com/post/sean-monterrosa-boulevard-san-francisco-street-renamed-honor/15089894/');
/*!40000 ALTER TABLE `media_coverage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officer_involvements`
--

DROP TABLE IF EXISTS `officer_involvements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `officer_involvements` (
  `incident_id` int NOT NULL,
  `officer_id` int NOT NULL,
  `officer_charged` varchar(45) NOT NULL,
  `disposition_official` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`incident_id`,`officer_id`),
  KEY `officer_id_idx` (`officer_id`),
  CONSTRAINT `involvement_incident_id` FOREIGN KEY (`incident_id`) REFERENCES `incidents` (`incident_id`),
  CONSTRAINT `officer_id` FOREIGN KEY (`officer_id`) REFERENCES `officers` (`officer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officer_involvements`
--

LOCK TABLES `officer_involvements` WRITE;
/*!40000 ALTER TABLE `officer_involvements` DISABLE KEYS */;
INSERT INTO `officer_involvements` VALUES (1,1,'No Known  Charges','Cleared by State AG'),(1,2,'No Known Charges','Cleared by State AG'),(1,3,'No Known Charges','Cleared by State AG'),(1,4,'No Known Charges','Cleared by State AG'),(2,5,'No Known Charges','Pending Investigation'),(2,6,'No Known charges','Pending Investigation'),(3,7,'Charged with murder','Charges Acquitted '),(4,8,'Civil Suit','Cleared by State AG'),(5,1,'No Known Charges','Pending Investigation '),(5,37,'No Known Charges','Pending Investigation'),(6,9,'No Known Charges','Justified by DA'),(6,10,'No Known Charges','Justified by DA'),(6,11,'No Known Charges','Justified by DA'),(6,12,'No Known Charges','Justified by DA'),(6,13,'No Known Charges','Justified by DA'),(6,14,'No Known Charges ','Justified by DA'),(6,15,'No Known Charges','Justified by DA'),(6,35,'No Known Charges','Justified by DA'),(6,36,'No Known Charges','Justified by DA'),(7,9,'No Known Charges','Justified by DA'),(8,16,'No Known Charges','Pending Investigation'),(8,17,'No Known Charges','Pending Investigation'),(8,18,'No Known Charges','Pending Investigation'),(8,19,'No Known Charges','Pending Investigation'),(9,16,'No Known Charges','Justified by DA'),(9,20,'No Known Charges','Justified by DA'),(10,21,'Vehicular Manslaughter','Charged'),(11,22,'DUI','Civil Suit Pending'),(12,23,'Murder','Charged'),(13,24,'No Known Charges','Justified by DA'),(13,25,'No Known Charges','Justified by DA'),(14,26,'No Known Charges','Pending Investigation'),(14,27,'No Known Charges','Pending Investigation'),(15,28,'Involuntary Manslaughter','Charged'),(16,29,'Murder','Charged'),(17,30,'Homicide','Convicted'),(17,31,'Homicide','Convicted'),(18,32,'Murder','Charged'),(19,33,'No Known Charges','Justified by Grand Jury'),(20,34,'No Known Charges','Civil Suit Pending');
/*!40000 ALTER TABLE `officer_involvements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officers`
--

DROP TABLE IF EXISTS `officers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `officers` (
  `officer_id` int NOT NULL,
  `agency_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `race` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`officer_id`),
  KEY `agency_id_idx` (`agency_id`),
  CONSTRAINT `agency_id` FOREIGN KEY (`agency_id`) REFERENCES `law_enforcement_agencies` (`agency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officers`
--

LOCK TABLES `officers` WRITE;
/*!40000 ALTER TABLE `officers` DISABLE KEYS */;
INSERT INTO `officers` VALUES (1,1,'Kenneth Sheehan ',NULL),(2,1,'David Hart',NULL),(3,1,'Matthew Liadka ',NULL),(4,1,'Nicolas Saralegui- Martin',NULL),(5,2,'Christain Williams',NULL),(6,2,'Jorge Trejo','Hispanic '),(7,3,'Pierre Tyler','Black'),(8,2,'William Dorsey Jones','Black'),(9,4,'Shane Madrigal ',NULL),(10,4,'Justin Kennedy',NULL),(11,4,'John McAndrews',NULL),(12,4,'Eduardo Medero ',NULL),(13,4,'Maneechot Phanpaktra',NULL),(14,4,'John Schall',NULL),(15,4,'John Silva',NULL),(16,5,'Luis Valle','Hispanic '),(17,5,'Joel Garnica',NULL),(18,5,'Joe Carbajal ',NULL),(19,5,'Sergio Trejo ',NULL),(20,4,'Eddie Roca','Hispanic '),(21,6,'John McClave III',NULL),(22,7,'Erin Zilka','White'),(23,8,'Winford Terrell Adams',NULL),(24,9,'Garret Gray',NULL),(25,9,'James McKee',NULL),(26,10,'Felicia Pecora',NULL),(27,10,'Hope Dauphin',NULL),(28,11,'Eric DeValkenaere','White'),(29,12,'Aaron Dean','White '),(30,13,'Albin Pearson','White'),(31,13,'Dwight Pitterson','Black'),(32,14,'Johnathan Richard Brown','White'),(33,15,'Randall Wetzel','White'),(34,16,'Jarrett Tonn','White'),(35,4,'Joshua Catlett',NULL),(36,4,'Jesse Trudel',NULL),(37,1,'Jason Wells',NULL),(38,5,'Michael Thompson',NULL);
/*!40000 ALTER TABLE `officers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `officers_charges`
--

DROP TABLE IF EXISTS `officers_charges`;
/*!50001 DROP VIEW IF EXISTS `officers_charges`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `officers_charges` AS SELECT 
 1 AS `officer_name`,
 1 AS `agency_name`,
 1 AS `disposition_official`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `victim_officer_comparison`
--

DROP TABLE IF EXISTS `victim_officer_comparison`;
/*!50001 DROP VIEW IF EXISTS `victim_officer_comparison`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `victim_officer_comparison` AS SELECT 
 1 AS `victim_race`,
 1 AS `officer_race`,
 1 AS `incident_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `victims`
--

DROP TABLE IF EXISTS `victims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `victims` (
  `victim_id` int NOT NULL,
  `incident_id` int NOT NULL,
  `WAPO_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `race` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`victim_id`),
  KEY `incident_id` (`incident_id`),
  KEY `WAPO_Id_idx` (`WAPO_id`),
  CONSTRAINT `incident_id` FOREIGN KEY (`incident_id`) REFERENCES `incidents` (`incident_id`),
  CONSTRAINT `WAPO_Id` FOREIGN KEY (`WAPO_id`) REFERENCES `wapo_classification` (`WAPO_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `victims`
--

LOCK TABLES `victims` WRITE;
/*!40000 ALTER TABLE `victims` DISABLE KEYS */;
INSERT INTO `victims` VALUES (1,1,1,'Steven D. Smith',33,'Male','Black'),(2,2,2,'Allison Lakie',33,'Female ','White'),(3,3,3,'Enrique Ruiz',33,'Male','Hispanic'),(4,4,4,'Andris Wofford',29,'Female ','Black'),(5,5,5,'Daniel Abisai Elena Lopez',24,'Male','Hispanic'),(6,5,6,'Valentina Orellana-Peralta',14,'Female','Hispanic'),(7,6,7,'Christopher Escobedo',33,'Male','Hispanic'),(8,7,8,'Cedrick Kyle Vick',22,'Male ','White'),(9,8,9,'Fernando Cruz',18,'Male','Hispanic'),(10,8,10,'Rene Herrera',39,'Male','Hispanic'),(11,9,11,'Rudy Anderson',45,'Male','Black'),(12,10,12,'Daniela Correia Salles',35,'Female','Hispanic'),(13,10,13,'Angel Acevedo Jr.',40,'Male','Hispanic'),(14,11,14,'Charles Schauer',33,'Male','White'),(15,12,15,'Benjamin Lloyd Cloer',26,'Male','White'),(16,13,16,'Mark Anson Schoggins',35,'Male','White'),(17,14,17,'Derrick Everett',31,'Male ','Black'),(18,15,18,'Cameron Lamb',26,'Male','Black'),(19,16,19,'Atatiana Jefferson',28,'Female','Black'),(20,17,20,'Henry \"Hank\"\" Kistler Berry III\"',43,'Male','White'),(21,18,21,'Jonathen B. Kohler',31,'Male','White'),(22,19,22,'Maurice S. Gordon',28,'Male','Black'),(23,20,23,'Sean Monterrosa',22,'Male','Hispanic');
/*!40000 ALTER TABLE `victims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wapo_classification`
--

DROP TABLE IF EXISTS `wapo_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wapo_classification` (
  `WAPO_id` int NOT NULL,
  `allegedly_armed` varchar(45) NOT NULL,
  `signs_of_mental_illness` varchar(45) DEFAULT NULL,
  `WAPO_threat_level` varchar(45) DEFAULT NULL,
  `WAPO_flee` varchar(45) DEFAULT NULL,
  `Off_duty_Killing` varchar(45) DEFAULT NULL,
  `WAPO_body_camera` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`WAPO_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wapo_classification`
--

LOCK TABLES `wapo_classification` WRITE;
/*!40000 ALTER TABLE `wapo_classification` DISABLE KEYS */;
INSERT INTO `wapo_classification` VALUES (1,'Allegedly Armed ','No ','Other ','Not Fleeing ','NULL ','Yes '),(2,'Allegedly Armed ','Yes','Other ','Not Fleeing',NULL,'Yes '),(3,'Allegedly Armed ','No','Attack','Other',NULL,'No'),(4,'Allegedly Armed ',NULL,'Brandished Weapon','Not Fleeing','Off-Duty','Surveillance Video'),(5,'Allegedly Armed ','Yes','Attack',NULL,NULL,'Yes'),(6,'Unarmed/Did Not Have Actual Weapon','No','Other','Foot',NULL,'Yes'),(7,'Allegedly Armed ','Yes','Attack','Car, Foot',NULL,'No'),(8,'Allegedly Armed ','Drug or Alcohol Use','Attack','Car',NULL,'No'),(9,'Unarmed/Did Not Have Actual Weapon','No',NULL,NULL,NULL,NULL),(10,'Allegedly Armed ','No','Attack',NULL,NULL,NULL),(11,'Allegedly Armed ','No','Attack',NULL,NULL,'Bystander Video'),(12,'Unarmed/Did Not Have Actual Weapon','No','None','Not Fleeing','Off-Duty',NULL),(13,'Unarmed/Did Not Have Actual Weapon','No','None','Not Fleeing','Off-Duty',NULL),(14,'Unarmed/Did Not Have Actual Weapon','No','None','Not Fleeing','Off-Duty',NULL),(15,'Unarmed/Did Not Have Actual Weapon','No','None',NULL,'Off-Duty','No'),(16,'Allegedly Armed ','No','Attack','Car',NULL,'No'),(17,'Allegedly Armed ','No','Attack','Other',NULL,'No'),(18,'Unarmed/Did Not Have Actual Weapon','No','None','Not Fleeing',NULL,'No'),(19,'Unarmed/Did Not Have Actual Weapon','No','Other','Not Fleeing',NULL,'Yes'),(20,'Allegedly Armed ','Yes','Attack','Not Fleeing',NULL,'No'),(21,'Vehicle','No','None','Car',NULL,'Yes'),(22,'Unarmed/Did Not Have Actual Weapon','Yes','Undetermined','Not Fleeing',NULL,'Yes'),(23,'Unarmed/Did Not Have Actual Weapon','No','Brandished Weapon','Foot',NULL,'Yes');
/*!40000 ALTER TABLE `wapo_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mpv'
--

--
-- Dumping routines for database 'mpv'
--

--
-- Final view structure for view `agency_incident_stats`
--

/*!50001 DROP VIEW IF EXISTS `agency_incident_stats`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `agency_incident_stats` AS select `a`.`agency_name` AS `agency_name`,`l`.`state_abbreviation` AS `state_abbreviation`,count(`i`.`incident_id`) AS `total_incidents` from ((`incidents` `i` join `locations` `l` on((`i`.`location_id` = `l`.`location_id`))) join `law_enforcement_agencies` `a` on((`l`.`location_id` = `a`.`location_id`))) where (`i`.`cause_of_death` = 'Gunshot') group by `a`.`agency_name`,`l`.`state_abbreviation` having (count(`i`.`incident_id`) > 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `blmera_black_victims`
--

/*!50001 DROP VIEW IF EXISTS `blmera_black_victims`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `blmera_black_victims` AS select `v`.`name` AS `victim_name`,`v`.`age` AS `age`,'Black' AS `race`,`i`.`date` AS `date`,`i`.`cause_of_death` AS `cause_of_death`,`a`.`agency_name` AS `agency_name`,`w`.`allegedly_armed` AS `allegedly_armed` from ((((`victims` `v` join `incidents` `i` on((`v`.`incident_id` = `i`.`incident_id`))) join `locations` `l` on((`i`.`location_id` = `l`.`location_id`))) join `law_enforcement_agencies` `a` on((`l`.`location_id` = `a`.`location_id`))) join `wapo_classification` `w` on((`v`.`WAPO_id` = `w`.`WAPO_id`))) where ((`v`.`race` = 'Black') and (`i`.`date` between '2018-01-01' and '2021-12-31') and `i`.`incident_id` in (select distinct `incidents`.`incident_id` from (`incidents` join `victims` on((`incidents`.`incident_id` = `victims`.`incident_id`))) where ((`victims`.`race` = 'Black') and (`incidents`.`cause_of_death` = 'Gunshot')))) order by `i`.`date`,`v`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bodycam_incidents`
--

/*!50001 DROP VIEW IF EXISTS `bodycam_incidents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bodycam_incidents` AS select distinct `i`.`incident_id` AS `incident_id`,`i`.`date` AS `date`,`a`.`agency_name` AS `agency_name`,`w`.`WAPO_body_camera` AS `body_camera_used` from ((((`incidents` `i` join `victims` `v` on((`i`.`incident_id` = `v`.`incident_id`))) join `wapo_classification` `w` on((`v`.`WAPO_id` = `w`.`WAPO_id`))) join `locations` `l` on((`i`.`location_id` = `l`.`location_id`))) join `law_enforcement_agencies` `a` on((`l`.`location_id` = `a`.`location_id`))) where ((`w`.`WAPO_body_camera` = 'Yes') and (`i`.`date` between '2018-01-01' and '2021-12-31')) order by `i`.`date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `officers_charges`
--

/*!50001 DROP VIEW IF EXISTS `officers_charges`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `officers_charges` AS select `o`.`name` AS `officer_name`,`a`.`agency_name` AS `agency_name`,`oi`.`disposition_official` AS `disposition_official` from ((`officer_involvements` `oi` join `officers` `o` on((`oi`.`officer_id` = `o`.`officer_id`))) join `law_enforcement_agencies` `a` on((`o`.`agency_id` = `a`.`agency_id`))) where (`oi`.`officer_charged` <> 'No Known Charges') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `victim_officer_comparison`
--

/*!50001 DROP VIEW IF EXISTS `victim_officer_comparison`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `victim_officer_comparison` AS select `v`.`race` AS `victim_race`,`o`.`race` AS `officer_race`,count(distinct `oi`.`incident_id`) AS `incident_count` from ((`officer_involvements` `oi` join `officers` `o` on((`oi`.`officer_id` = `o`.`officer_id`))) join `victims` `v` on((`oi`.`incident_id` = `v`.`incident_id`))) where ((`v`.`race` in ('Black','White','Hispanic')) and (`o`.`race` in ('Black','White','Hispanic'))) group by `v`.`race`,`o`.`race` having (count(distinct `oi`.`incident_id`) > 0) */;
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

-- Dump completed on 2025-05-15 21:56:57
