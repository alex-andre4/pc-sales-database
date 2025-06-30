-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: alex_company_sales
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (2,'Daniel','Schneider','hernandezjames@example.net','890-868-8385x6232','9833 Price Road','North Roberto','DC','01763'),(3,'Kenneth','Davis','seanmoreno@example.com','625.866.3243x9804','936 John Well','New Joelside','OK','37419'),(4,'Hunter','Doyle','paulgibbs@example.org','250.925.6371','743 Alexander Harbor Suite 310','Lake Amandaside','GA','51055'),(5,'Mary','Smith','christian64@example.org','001-466-211-3504x350','95723 Day Bypass','Lake Nicholasfurt','DC','07781'),(6,'Keith','Kaufman','davisdebra@example.com','789-425-2709x57745','0494 Omar Views','Lewisshire','NE','87162'),(7,'Eric','Reyes','tammybrown@example.net','856-922-4827x24335','4832 Greene Trail','Laurenview','VT','61568'),(8,'Krista','Hughes','floreslauren@example.org','3417673431','203 Timothy Corner','Lake Markborough','HI','45437'),(9,'Joshua','Ruiz','laura35@example.org','(348)897-1958','27277 Campbell Village','Melendezmouth','GA','68017'),(10,'Hector','Stanton','tgarrison@example.com','863-661-8969x86415','6583 Cameron Lakes Apt. 389','Port Julie','OK','96630'),(11,'Jeffrey','Marshall','whitetammy@example.com','840.800.9783x079','45992 Zoe Gardens','Woodwardburgh','NE','40143'),(12,'Katherine','Stone','browntroy@example.net','+1-390-547-8906','25991 Gonzales Estates Apt. 621','Rickland','CA','45475'),(13,'Samuel','Burnett','jkey@example.org','216-621-1530x099','2475 Harper Walk Suite 553','Lake Teresa','ID','45665'),(14,'Cheryl','Chapman','renee57@example.org','700.281.7755','086 Singh Key','Port Phillip','DC','42753'),(16,'Vanessa','Freeman','weaverdenise@example.com','451.980.3747','93237 Schmidt Ridge','Lake Michael','NJ','59191'),(17,'Brian','Fields','frankbrown@example.org','273.520.8096x9331','231 Miles Rapid Suite 851','North Nataliefort','AL','69313'),(18,'Nicholas','Wheeler','wdunn@example.net','340.978.7053','4708 Spencer Rest','Delgadoshire','TN','94627'),(19,'Jacob','Crawford','glee@example.com','(412)401-1077x1134','4854 Rogers Estate Suite 666','New Joe','LA','24882'),(20,'Danielle','Woods','maryjackson@example.com','+1-625-704-7415x403','8204 Holly Extension','Petersonmouth','PR','97800'),(21,'Michael','Zuniga','melvin97@example.net','+1-515-706-5333x963','873 Erica Orchard','East Matthewfort','OR','11291'),(22,'Jared','Wright','dana66@example.com','520.288.3905x04310','692 Mark Crest','Sandersfort','WA','28043'),(23,'Joshua','Patterson','yhodge@example.org','+1-393-240-2444','8177 Coffey Valley Suite 187','Erikstad','HI','99733'),(24,'Joshua','Smith','mark08@example.net','908.477.7035','9766 Stephen Points','Port Ashley','LA','06835'),(25,'Michael','Cruz','vanessaballard@example.net','001-966-351-5882','316 Stacy Neck Apt. 733','North Pam','CO','07749'),(26,'Denise','Robinson','hebertnathaniel@example.net','280-827-0875','07285 Hamilton Forge','Lake Ernestton','WV','23304'),(27,'Joseph','Williams','debra27@example.org','597.600.7078x883','3557 Matthews Freeway','Tanyabury','CO','28885'),(29,'Breanna','Calderon','smithmichele@example.com','434-353-2240x98762','472 Paul Passage Suite 718','Coxfurt','IN','26389'),(30,'Samuel','Alvarado','dking@example.org','+1-897-697-1156x9623','117 Pollard Drives','Adamhaven','PW','23598'),(31,'Michael','Ruiz','jacobsutton@example.com','864-979-4641x3052','776 Oconnor Mountain Suite 863','Lake Alexandra','LA','85471'),(32,'Danielle','Ashley','ywade@example.com','+1-761-395-6010x8340','42568 Daniel Tunnel','Browntown','MA','48619'),(33,'Tamara','Flores','leachvernon@example.org','(765)820-1562x78917','70017 Lauren Pike Suite 304','Kyliechester','MI','39351'),(34,'Matthew','Salazar','wagnershane@example.com','507.334.0628x1995','2906 William Fall','Mccoyview','SD','77445'),(35,'Colleen','Rush','sally41@example.org','381.874.2480x451','86898 Miller Valley','Rebeccastad','TX','08709'),(36,'Susan','Lawrence','eruiz@example.org','6628315799','9108 Eric Light','West Amanda','WY','59716'),(37,'Stephen','Carson','michael11@example.org','(742)216-2479','15916 Harvey Fall','West Pamelabury','FL','21495'),(38,'Becky','Chen','andrea57@example.com','001-453-653-4129','69888 Justin Extension','Donaldfort','NY','14353'),(39,'Erin','Wilson','whiteloretta@example.com','(456)690-3244','8562 Long Wall','Danielchester','DE','11148'),(40,'James','Baker','billy06@example.org','215.538.5377x83040','8783 Wood Island Apt. 485','Carlyhaven','DC','30708'),(41,'Michelle','Stone','whitematthew@example.net','(563)752-2620x93435','198 Wright Highway','Jacquelineshire','VI','88236'),(42,'Alex','Mann','masseyjessica@example.com','+1-594-946-9422','94760 Monica Brooks Apt. 209','Lake Jason','CT','64194'),(43,'Candace','Haney','heathbrian@example.org','+1-416-926-4908x310','389 Nancy Knolls','Davisborough','SC','30720'),(44,'Paul','Nelson','wcordova@example.org','+1-806-380-1741x990','95787 Petersen Stravenue','Contreraston','CO','08586'),(45,'Phillip','Cook','charlesdiaz@example.com','(322)987-7585x355','37917 Michael Plaza Suite 782','Port Andrew','ID','43051'),(46,'Miranda','Duke','taylorchristian@example.org','864.207.7093x876','90989 Vanessa Brook','New Joshua','CA','67775'),(47,'Tony','Potter','kennedyryan@example.net','946.852.7655x65006','32625 Raymond Springs Suite 027','New Jamie','MP','74768'),(49,'Joshua','Gomez','matthew59@example.org','269-698-6311','63801 Mccarthy Place','Johnsonhaven','RI','65811'),(50,'Herbert','Wong','ihall@example.org','+1-960-369-7837x464','205 Harold Manor','North Jennifer','WV','74155'),(51,'Mario','Wolfe','robertliu@example.org','(702)292-3634x0414','46575 Perkins Motorway Suite 804','North Douglas','CA','05139'),(52,'Charles','Hayes','atkinsstacy@example.org','(433)600-8987x368','2387 Luis Lane Suite 800','Evansfurt','MA','70447'),(53,'Deborah','Marsh','christopher48@example.com','8958001303','928 Larry Stravenue','Jamesville','FL','46829'),(54,'Victoria','Taylor','bcopeland@example.net','2407263326','076 Joseph Inlet','Tracyside','WV','47090'),(55,'Jesse','Prince','kathryn03@example.org','280.347.5267','4397 Cynthia Burgs','East Melindashire','IN','31042'),(56,'Brian','Perry','robert28@example.net','879-749-6463','8778 Sophia Creek','East Melissa','WV','21951'),(58,'David','Miller','michaelmayer@example.com','813.927.7912','34007 Oscar Neck','Wheelerland','ME','73694'),(60,'Tiffany','Oneal','greenkyle@example.com','368.248.5676','8116 Laura Rue Suite 155','Cameronfort','AZ','22161'),(61,'Elizabeth','King','kparker@example.org','+1-207-251-5055','377 Jordan Drive','New Rachelton','NY','60708'),(62,'Miranda','Ruiz','bstephens@example.org','+1-866-650-3159x252','57589 Montes Forge Suite 680','Stanleymouth','LA','37565'),(63,'Deanna','Park','huntlaura@example.com','3865779961','43937 Turner Cape Apt. 672','Luketown','NC','46598'),(64,'James','Chapman','hcherry@example.org','695-780-6388','13949 Sanchez Gardens','Ramireztown','RI','41144'),(65,'Melissa','Velazquez','cannonbrian@example.com','+1-950-737-6118x274','93968 Sierra Row','Mcclureburgh','GU','40979'),(66,'Joseph','Jones','pooledebra@example.net','671.774.6521x397','12109 Smith Shore','Lake Richardview','VI','58747'),(67,'Karen','Parrish','lnelson@example.org','+1-365-697-8461x6024','2696 Davis Radial','North Chelseatown','NJ','91086'),(68,'Tina','Garcia','richardwall@example.net','001-641-939-6896x647','879 Floyd Village Suite 846','Port Kristenfurt','AZ','49597'),(69,'Austin','Bryant','cervantesrebecca@example.com','(403)320-1293','7175 Romero Hill','West Aaronland','NY','88688'),(70,'James','Choi','pvance@example.com','001-323-814-0649','263 Bernard Gardens','Figueroahaven','AR','45377'),(71,'Gregory','Avery','dwayne50@example.org','3782821263','1118 King Overpass','New Brianhaven','VA','75172'),(72,'Michelle','Nguyen','steven20@example.org','217.870.0087x0801','7290 Clark Drive Apt. 405','West Jennifer','CT','37526'),(73,'Cory','Williamson','jennifermyers@example.net','(222)871-0582x361','410 Holly Drive','Hallland','MA','70545'),(75,'John','Holmes','lhays@example.org','381.573.7748','2074 Kimberly Centers Suite 137','Mcmahonberg','HI','22679'),(76,'Kyle','Howe','christensenkimberly@example.org','461-768-5873','6770 Clark Extension','Lake Nancyshire','DC','57622'),(78,'Ryan','Higgins','kristen39@example.net','239-770-9532','23536 Dorothy Hills','Hansenfurt','MH','34090'),(79,'Sean','Figueroa','kathrynbarajas@example.org','269.376.4451','40392 Myers Bridge Apt. 143','East Nicholas','DC','80074'),(80,'Joshua','Park','jessica94@example.net','(985)886-9312x7474','8206 Debbie View','South Jacob','OR','46769'),(83,'Donald','Hernandez','njohnson@example.com','737.984.3122x3963','54648 Christopher Grove Suite 639','South Ericfurt','CA','44598'),(84,'Karen','Marquez','thompsonwilliam@example.net','966-833-2864x627','03931 Katie Roads Apt. 487','New Randallton','AK','58534'),(85,'Brian','Wilson','chrisfranklin@example.net','001-372-669-7917x676','4883 Foley Key Apt. 104','West Jeffreyville','MA','93731'),(86,'Julie','Boyd','zperkins@example.net','(279)967-5083x4537','308 Guerrero Mill','Kevinfurt','VI','60689'),(87,'George','Patterson','osanchez@example.org','8669304372','14231 Sellers Roads Apt. 843','Port Michaelmouth','CO','25589'),(88,'Brenda','Pratt','zweaver@example.net','(670)447-2582','84345 Stevens Skyway','Port Leah','PA','16117'),(89,'Jonathan','Jordan','craigmckinney@example.net','(569)340-9790','11702 Rivas Crescent','Mossview','IL','89651'),(90,'Brian','Gonzalez','johnsonandrew@example.org','001-678-703-4683','35525 Jeffrey View','Beardfurt','GA','20683'),(91,'Richard','Hamilton','mitchellchristopher@example.com','(299)371-3682x0944','4206 Lewis Rue Suite 350','West Josephborough','FM','87083'),(93,'Paul','Miller','williamsmichael@example.com','699-304-3783x653','5242 Lacey Grove','Turnerfurt','AL','00877'),(94,'Gregory','Bryant','brandy87@example.org','304.776.9054','38888 Bradley Shores Apt. 194','Eileenhaven','DE','11932'),(95,'Joshua','Lewis','williammedina@example.com','675.658.0223x1024','148 Jesse Parkways Suite 154','Wagnerborough','AL','45224'),(97,'Steven','Jones','terrimontes@example.net','233.732.6141','45261 Reynolds Dam Apt. 729','Sandraport','RI','80425'),(98,'Kevin','Cortez','michaelmiller@example.net','746-885-0071x210','2723 Brad Burg','Avilaville','MS','59703'),(99,'Ryan','Martin','arnoldchristina@example.com','911-439-7310x681','28041 Raymond Court Suite 352','Jenniferstad','IA','45317'),(100,'Andrew','Cooley','katrinapadilla@example.com','001-488-288-9325','80933 Johnson Avenue Suite 998','New Nataliechester','PW','04960'),(101,'Sarah','Wilson','sarah.wilson@email.com','555-0123','789 Pine St','Springfield','IL','62701');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `JobTitle` varchar(50) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (2,'Christopher','Miller','jesse86@example.net','502-668-5749','2021-02-24','Sports development officer',76916.73),(3,'Dylan','Salas','bprice@example.com','359-903-1003','2022-01-20','Engineer, production',62308.48),(4,'Christopher','Marsh','marcus64@example.com','(400)807-8489x732','2023-03-17','Geoscientist',86896.17),(5,'John','Cooper','ldrake@example.com','(653)726-4627','2020-04-19','Stage manager',36954.78),(6,'Luis','Oconnell','jaredolson@example.com','274-645-9520x999','2023-10-19','Librarian, academic',37185.16),(7,'Brittany','Perez','ellisjoshua@example.net','+1-887-913-1397x2950','2022-08-16','Social researcher',62483.26),(8,'James','Harrison','collinsmark@example.net','472.989.6343x38998','2021-05-07','Journalist, magazine',93824.48),(9,'Bradley','Parsons','alexisoconnor@example.com','+1-619-280-4693x577','2020-04-21','Social researcher',72228.94),(10,'Vickie','Melton','millertiffany@example.com','(379)624-9685x353','2024-08-18','Broadcast presenter',81897.33),(11,'Kimberly','Stewart','kellywatkins@example.net','+1-712-321-6921x690','2021-06-28','Aeronautical engineer',84774.13),(12,'Daisy','Brown','hawkinsrichard@example.net','+1-948-776-4305x6901','2020-11-28','Automotive engineer',40892.30),(14,'Patrick','Hughes','richard61@example.org','(724)565-3788x101','2021-06-03','Scientist, research (physical sciences)',89660.85),(15,'Nicolas','Randolph','mirandaflores@example.com','539.548.0661x13740','2022-07-20','Database administrator',55732.19),(16,'Melvin','Henderson','calebmay@example.com','376.858.7140','2023-08-11','Recycling officer',43458.58),(17,'Amber','Anderson','grosscynthia@example.com','+1-271-589-3451','2022-02-21','Financial adviser',59890.20),(18,'Brandi','Molina','iclark@example.net','(205)358-0703','2020-10-29','Housing manager/officer',95022.50),(20,'Curtis','Crawford','ksanchez@example.com','638-937-9417x564','2021-03-23','Commercial/residential surveyor',68692.74),(21,'James','Holmes','jennifer86@example.com','272-371-7905x555','2023-12-24','Theatre stage manager',78423.72),(22,'Kristina','Trevino','weaverrobert@example.com','309.779.8325x491','2024-07-27','Scientist, research (maths)',97421.73),(23,'Kevin','Newton','rodriguezsteven@example.org','001-758-556-9915x351','2021-04-28','Scientist, research (physical sciences)',97983.80),(24,'Emily','Garrison','harrisadam@example.com','429-267-2872x3218','2021-12-27','Microbiologist',71495.16),(25,'Jessica','Sherman','nmontgomery@example.com','(758)328-5362','2021-05-26','Curator',57486.31),(26,'Terri','Irwin','lgilmore@example.net','(435)972-6460','2021-04-25','Psychologist, educational',63339.84),(27,'Christine','Acevedo','bradholden@example.net','402-505-1706x4179','2022-10-13','Aeronautical engineer',71028.26),(28,'Jacqueline','James','qwatts@example.org','+1-522-702-2961x403','2021-12-05','Tree surgeon',84571.96),(29,'Jonathan','Scott','kanderson@example.com','436.222.8391x594','2023-06-02','Pharmacist, community',70638.45),(30,'Lisa','Miller','kristin49@example.net','001-966-411-1767','2023-01-04','Furniture designer',32942.50);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `InventoryID` int NOT NULL,
  `PCID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`InventoryID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `pcs` (`PCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,46),(2,2,41),(3,3,97),(4,4,10),(5,5,55),(6,6,61),(7,7,14),(8,8,57),(9,9,15),(10,10,26),(11,11,18),(12,12,94),(13,13,89),(14,14,52),(15,15,12),(16,16,16),(17,17,64),(18,18,75),(19,19,79),(20,20,19),(21,21,9),(22,22,11),(23,23,100),(24,24,40),(25,25,25),(26,26,76),(27,27,20),(28,28,92),(29,29,28),(30,30,89),(31,31,2),(32,32,82),(33,33,20),(34,34,65),(35,35,51),(36,36,68),(37,37,31),(38,38,57),(39,39,84),(40,40,70),(41,41,95),(42,42,75),(43,43,97),(44,44,21),(45,45,88),(46,46,35),(47,47,33),(48,48,31),(49,49,16),(50,50,36);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitems` (
  `OrderItemID` int NOT NULL,
  `OrderID` int DEFAULT NULL,
  `PCID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`OrderItemID`),
  KEY `PCID` (`PCID`),
  KEY `fk_orderitems_orders` (`OrderID`),
  CONSTRAINT `fk_orderitems_orders` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON UPDATE CASCADE,
  CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`PCID`) REFERENCES `pcs` (`PCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES (1,160,20,1),(2,189,32,4),(3,148,39,2),(4,154,43,1),(5,137,26,2),(6,69,17,5),(7,183,11,2),(8,122,31,4),(9,70,25,1),(10,143,43,3),(11,200,49,5),(12,171,12,5),(13,32,7,2),(14,106,40,1),(15,158,20,2),(16,12,18,5),(17,133,13,3),(18,99,8,5),(20,93,20,1),(21,25,39,3),(23,190,6,4),(24,95,30,3),(25,149,42,2),(26,32,9,2),(27,188,37,4),(29,126,19,4),(30,171,6,5),(31,157,5,3),(33,30,19,4),(35,157,40,2),(36,102,11,4),(37,88,29,1),(39,119,1,2),(40,63,42,1),(41,197,13,2),(42,151,19,4),(43,90,3,2),(45,31,22,2),(46,179,27,4),(47,181,47,3),(48,128,3,2),(49,166,14,2),(52,28,16,3),(55,133,32,2),(56,4,14,4),(57,173,2,2),(58,73,27,5),(59,123,8,1),(60,25,26,5),(61,106,18,3),(62,169,48,1),(63,180,27,5),(64,56,21,2),(65,66,21,4),(66,150,23,4),(67,88,27,3),(68,199,34,2),(69,171,7,2),(70,179,6,3),(71,57,9,5),(72,53,5,4),(73,187,5,4),(74,106,36,2),(75,22,38,1),(76,53,41,5),(77,51,6,5),(79,189,35,1),(81,50,2,3),(82,148,37,1),(83,156,26,1),(84,101,45,2),(85,57,31,2),(86,146,35,2),(87,54,45,4),(88,65,24,1),(89,180,20,1),(90,26,36,3),(91,16,40,5),(93,146,3,2),(94,118,48,1),(95,53,35,3),(96,70,49,5),(97,96,4,2),(98,26,5,1),(99,32,3,1),(100,149,41,4),(101,95,39,4),(102,60,39,1),(103,111,10,5),(104,90,17,1),(105,177,5,3),(106,122,7,3),(107,200,33,2),(108,57,5,1),(109,106,4,1),(110,148,7,1),(111,61,11,5),(112,123,6,3),(113,32,12,2),(114,55,42,4),(115,28,37,1),(116,161,17,5),(117,132,16,4),(118,75,46,3),(119,157,2,4),(120,56,33,2),(121,78,25,2),(122,180,3,1),(124,67,2,4),(125,41,16,3),(126,11,24,4),(127,22,29,1),(128,15,36,3),(129,4,25,4),(130,4,21,2),(131,182,5,1),(132,10,21,2),(133,75,43,3),(137,161,49,1),(139,97,7,2),(140,180,35,1),(141,47,39,1),(142,155,9,2),(144,50,3,5),(145,21,8,3),(146,181,34,2),(147,177,19,3),(149,160,42,4),(150,120,25,1),(152,105,49,1),(153,124,12,3),(155,171,12,3),(156,78,5,4),(157,67,11,5),(158,194,40,1),(159,112,18,5),(160,42,44,2),(162,65,44,2),(163,46,18,5),(165,91,18,4),(166,83,48,1),(167,68,35,5),(168,106,29,4),(169,103,16,1),(170,24,20,3),(171,179,20,2),(172,200,47,5),(173,170,15,4),(174,135,34,3),(175,100,32,2),(176,65,49,1),(177,2,16,1),(180,105,38,5),(181,65,8,5),(182,40,49,2),(183,31,40,1),(184,118,24,4),(185,200,3,5),(186,26,17,1),(187,179,39,3),(188,43,39,4),(189,34,44,4),(190,185,18,2),(191,147,16,4),(195,76,30,3),(196,66,33,2),(197,50,11,4),(198,197,23,5),(199,105,34,5),(200,171,43,3),(201,163,8,3),(202,44,43,2),(204,184,18,5),(205,2,6,5),(206,166,40,3),(207,93,49,1),(208,129,6,5),(209,144,21,2),(210,47,23,5),(211,7,18,2),(212,53,24,4),(213,159,37,2),(214,177,50,4),(215,31,36,2),(216,2,25,3),(217,138,37,3),(218,120,49,1),(219,175,19,2),(220,156,6,4),(221,160,27,4),(223,18,18,5),(224,182,46,4),(225,69,45,3),(226,142,44,3),(228,112,32,5),(229,54,44,4),(231,82,44,3),(232,142,45,3),(233,103,7,5),(235,55,5,1),(236,125,46,5),(237,3,50,2),(238,28,31,5),(239,42,25,1),(240,134,50,5),(242,101,47,2),(243,168,13,2),(244,135,15,1),(245,165,28,3),(246,85,36,4),(247,175,11,5),(249,74,23,4),(250,112,33,4),(251,170,47,2),(252,32,34,1),(253,69,10,1),(254,197,18,1),(255,200,39,3),(256,134,19,2),(257,34,5,4),(258,32,43,4),(259,85,35,3),(260,67,38,3),(261,153,13,3),(262,2,37,3),(263,170,36,5),(264,86,15,4),(267,23,3,1),(268,170,14,3),(270,173,16,1),(271,40,14,2),(272,195,27,3),(274,68,13,5),(276,45,38,5),(277,61,46,5),(278,164,46,5),(279,127,34,5),(280,190,34,4),(281,158,13,3),(282,164,34,1),(283,112,36,1),(284,2,32,3),(285,3,7,2),(286,64,40,4),(288,176,42,3),(289,84,36,5),(290,4,44,1),(291,182,27,1),(292,96,14,4),(293,105,3,4),(294,153,6,5),(295,55,45,5),(296,181,28,2),(297,35,49,3),(299,34,41,1),(300,70,41,4),(301,119,23,4),(303,17,5,1),(304,191,19,1),(305,18,29,1),(306,27,9,2),(307,194,25,1),(308,18,43,3),(309,10,42,1),(310,123,14,1),(311,137,46,4),(312,42,31,2),(313,136,24,4),(314,17,49,3),(315,103,30,3),(316,42,34,2),(317,99,23,3),(318,152,35,5),(319,183,21,2),(320,32,4,4),(321,61,36,4),(322,77,21,3),(323,82,24,5),(324,188,9,3),(327,154,30,5),(328,35,18,4),(329,12,44,2),(330,12,41,3),(331,24,19,3),(332,82,6,5),(333,154,16,1),(334,103,27,1),(335,136,16,5),(336,135,13,5),(337,183,24,3),(338,82,5,5),(339,106,17,2),(340,44,15,1),(341,123,31,3),(342,66,24,3),(343,135,41,2),(344,4,49,5),(345,175,28,1),(346,31,49,1),(347,48,14,5),(349,163,33,5),(350,191,33,4),(351,102,1,4),(352,12,3,1),(353,88,35,2),(354,35,26,1),(355,114,47,1),(356,115,13,1),(357,132,27,4),(358,34,4,5),(359,177,9,2),(360,17,25,4),(361,20,41,3),(362,122,46,3),(363,182,21,3),(364,142,3,5),(365,161,21,1),(366,146,45,2),(367,72,14,4),(368,52,45,4),(369,136,15,4),(370,164,24,2),(371,151,22,1),(372,50,15,2),(373,122,31,5),(374,124,9,4),(375,12,12,1),(376,81,43,1),(378,156,17,1),(380,26,10,1),(381,125,22,3),(382,23,7,4),(383,187,22,5),(384,12,40,4),(385,46,24,2),(386,2,47,4),(387,148,34,5),(388,17,25,2),(389,177,21,4),(390,182,18,3),(391,79,25,2),(392,66,45,1),(393,185,44,3),(394,160,17,3),(395,105,22,2),(396,182,23,2),(397,155,46,4),(398,66,33,2),(399,151,41,3),(400,182,22,3),(402,136,6,2),(403,138,4,3),(404,38,17,3),(405,121,45,1),(406,90,23,3),(408,53,30,3),(410,142,27,5),(412,114,42,1),(413,195,6,3),(414,100,47,4),(415,91,49,1),(416,155,26,4),(417,144,35,4),(418,102,42,2),(420,185,11,3),(421,190,28,2),(422,143,45,4),(423,99,40,5),(424,153,33,2),(425,143,42,4),(426,112,26,4),(427,120,39,4),(428,119,30,2),(429,182,9,3),(430,73,1,3),(431,46,18,4),(432,190,20,4),(433,121,9,5),(434,78,29,4),(435,49,42,4),(436,200,47,3),(437,180,12,2),(438,64,14,1),(439,51,7,4),(440,99,27,1),(441,168,24,2),(442,108,29,4),(443,179,43,5),(444,77,32,2),(445,177,25,1),(446,188,41,3),(447,176,46,1),(448,147,28,2),(449,169,22,1),(450,89,47,1),(451,140,33,2),(452,164,49,5),(453,153,12,2),(454,153,35,1),(455,112,6,1),(456,69,17,2),(457,196,40,1),(458,154,13,2),(459,121,49,3),(460,93,6,4),(461,34,29,2),(462,78,49,5),(463,197,5,1),(464,101,37,4),(465,85,22,1),(466,171,29,2),(467,73,42,1),(468,51,27,2),(469,91,20,5),(470,157,23,1),(471,72,40,4),(472,88,35,1),(473,41,26,2),(475,17,8,3),(476,26,7,3),(477,84,9,5),(478,125,23,3),(479,4,25,2),(480,22,10,2),(481,163,19,4),(482,31,3,5),(483,32,29,4),(484,81,12,2),(485,66,26,3),(486,99,1,3),(488,11,26,3),(489,66,27,1),(491,73,10,5),(492,94,24,4),(493,7,18,4),(494,150,45,2),(495,49,39,1),(496,193,21,4),(497,44,20,3),(498,35,16,4),(499,125,28,5),(500,42,12,4);
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,66,'2024-08-05',9436.18),(3,72,'2024-08-31',3954.50),(4,69,'2024-09-21',7474.90),(7,70,'2024-08-23',7302.41),(9,35,'2024-11-17',5187.20),(10,58,'2024-09-05',9233.29),(11,41,'2024-03-11',551.63),(12,31,'2024-06-11',4365.75),(13,4,'2024-07-15',8534.92),(15,3,'2024-04-30',6965.85),(16,34,'2024-06-11',3599.80),(17,58,'2023-12-27',629.57),(18,68,'2024-09-08',9362.81),(20,88,'2023-12-24',5368.97),(21,26,'2024-01-09',1003.32),(22,12,'2023-12-18',4755.59),(23,65,'2023-12-18',1138.30),(24,24,'2024-09-24',3696.12),(25,79,'2024-03-29',6590.86),(26,87,'2024-07-24',8658.12),(27,3,'2024-06-26',1922.64),(28,43,'2024-05-25',3458.22),(30,10,'2024-06-16',4324.65),(31,69,'2024-06-15',4993.23),(32,64,'2024-01-20',2517.28),(34,97,'2024-02-21',8351.54),(35,86,'2024-01-26',1653.66),(36,36,'2024-10-08',6615.19),(37,69,'2024-11-13',7788.74),(38,61,'2024-06-12',7565.19),(40,50,'2024-11-13',6880.64),(41,69,'2024-06-03',4118.57),(42,19,'2024-10-09',2597.89),(43,95,'2024-02-17',9117.57),(44,20,'2024-01-23',4480.22),(45,95,'2024-09-30',3844.59),(46,9,'2024-06-12',6842.52),(47,99,'2024-08-11',2500.10),(48,45,'2024-04-17',9370.10),(49,98,'2023-12-15',5850.61),(50,36,'2024-08-27',9427.93),(51,71,'2024-07-24',8258.56),(52,16,'2024-01-31',5268.77),(53,20,'2024-10-16',6674.60),(54,90,'2024-09-21',6770.62),(55,7,'2024-09-05',5760.79),(56,26,'2024-05-15',8004.37),(57,79,'2024-02-21',9838.68),(60,11,'2024-08-01',1616.57),(61,16,'2024-05-28',9518.33),(63,73,'2024-02-06',1715.58),(64,67,'2023-12-20',2524.60),(65,34,'2024-06-26',6008.90),(66,67,'2024-07-14',6259.66),(67,68,'2024-08-18',5567.34),(68,36,'2024-05-02',3888.10),(69,30,'2024-09-16',4703.60),(70,40,'2023-11-21',5565.26),(72,75,'2024-07-06',5922.85),(73,95,'2024-07-24',6536.72),(74,56,'2024-08-29',5803.88),(75,34,'2024-10-29',5602.77),(76,65,'2024-10-16',7396.72),(77,95,'2024-01-08',5294.50),(78,30,'2023-12-05',4304.80),(79,62,'2024-06-26',7306.95),(80,38,'2024-04-12',7087.29),(81,98,'2024-05-11',5878.58),(82,75,'2024-03-25',8441.30),(83,35,'2024-07-07',587.77),(84,44,'2024-03-29',9712.77),(85,85,'2024-03-11',6587.60),(86,83,'2024-04-13',8091.66),(88,98,'2023-12-09',5325.84),(89,47,'2024-08-29',5144.48),(90,20,'2024-03-16',6115.60),(91,14,'2024-01-11',7887.78),(93,39,'2024-05-19',4608.17),(94,14,'2024-05-09',8523.12),(95,94,'2024-05-01',1887.12),(96,12,'2024-09-04',3287.17),(97,99,'2024-08-11',8606.60),(99,68,'2023-12-07',5682.70),(100,4,'2024-11-04',9266.70),(101,87,'2024-06-16',9399.10),(102,9,'2024-09-15',7637.60),(103,10,'2024-07-23',890.22),(105,47,'2024-06-06',4562.65),(106,25,'2024-03-01',9448.29),(107,30,'2024-09-29',3845.61),(108,64,'2024-11-14',2309.70),(109,56,'2024-02-29',965.17),(111,73,'2023-12-02',4623.52),(112,7,'2024-02-28',3317.00),(114,35,'2024-01-18',3974.30),(115,49,'2024-10-26',5556.13),(116,29,'2024-09-21',1106.71),(117,91,'2024-08-10',9092.27),(118,83,'2024-06-22',6466.73),(119,18,'2024-03-16',8700.78),(120,55,'2024-01-03',996.34),(121,78,'2024-11-05',9443.26),(122,86,'2024-02-28',7122.94),(123,99,'2024-08-22',3640.85),(124,65,'2024-04-01',4719.10),(125,63,'2024-04-21',5199.21),(126,88,'2024-02-19',1931.26),(127,88,'2024-09-08',9897.60),(128,30,'2024-06-02',4754.88),(129,55,'2024-01-08',2074.28),(132,84,'2024-08-17',7422.61),(133,42,'2024-07-18',2260.39),(134,35,'2024-02-22',3037.30),(135,26,'2024-11-07',5713.44),(136,54,'2024-07-12',5297.79),(137,83,'2024-02-11',4713.19),(138,45,'2024-03-09',5064.74),(139,68,'2024-09-01',4486.50),(140,76,'2024-04-23',4461.25),(141,47,'2023-12-11',4099.98),(142,93,'2023-11-30',5809.20),(143,69,'2024-09-13',9715.20),(144,23,'2024-04-16',9925.10),(146,42,'2024-08-02',8126.32),(147,91,'2024-06-07',3578.73),(148,22,'2024-02-11',9824.61),(149,5,'2024-05-26',9785.91),(150,62,'2024-07-16',1963.21),(151,7,'2024-04-11',1470.29),(152,21,'2024-05-29',3246.78),(153,69,'2024-09-07',3617.11),(154,44,'2024-11-15',1718.18),(155,75,'2023-11-20',2381.88),(156,50,'2024-02-17',6822.40),(157,61,'2023-12-01',9065.17),(158,14,'2024-04-08',3324.20),(159,25,'2024-08-27',3433.30),(160,27,'2024-08-05',2638.69),(161,43,'2024-09-15',8942.62),(163,49,'2024-02-19',904.51),(164,22,'2024-10-31',6541.16),(165,62,'2024-08-10',1150.98),(166,17,'2024-07-07',4728.35),(167,78,'2024-07-21',9562.83),(168,71,'2024-02-27',8808.98),(169,62,'2024-05-25',4380.68),(170,41,'2024-03-26',5870.79),(171,50,'2024-10-05',7317.71),(172,10,'2024-04-06',8902.49),(173,38,'2024-10-28',8540.46),(175,47,'2024-07-25',7905.97),(176,45,'2023-11-28',1995.84),(177,38,'2024-07-17',8785.83),(179,42,'2023-12-13',2165.35),(180,88,'2024-02-27',4221.22),(181,95,'2023-11-22',9803.23),(182,47,'2024-04-27',8819.25),(183,58,'2024-10-21',809.61),(184,85,'2024-06-03',5011.23),(185,44,'2024-04-11',6200.60),(186,38,'2024-02-17',3479.32),(187,86,'2024-01-26',1578.48),(188,37,'2024-06-10',9861.32),(189,73,'2024-06-20',1121.63),(190,4,'2024-02-19',6864.19),(191,45,'2024-02-27',2632.55),(193,19,'2024-08-26',3246.46),(194,68,'2024-06-16',2955.83),(195,41,'2024-05-08',4760.49),(196,4,'2023-12-31',4093.30),(197,76,'2024-01-11',7365.61),(199,17,'2023-12-10',7731.30),(200,90,'2024-01-26',4722.74),(1001,73,'2024-05-28',1092.50);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcs`
--

DROP TABLE IF EXISTS `pcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pcs` (
  `PCID` int NOT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Processor` varchar(50) DEFAULT NULL,
  `RAM` int DEFAULT NULL,
  `Storage` int DEFAULT NULL,
  `GraphicsCard` varchar(50) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`PCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcs`
--

LOCK TABLES `pcs` WRITE;
/*!40000 ALTER TABLE `pcs` DISABLE KEYS */;
INSERT INTO `pcs` VALUES (1,'Vance, Ramirez and Campos','Model 1','AMD Ryzen 9',33,1271,'NVIDIA GeForce RTX 2060',1047.87),(2,'Garcia-Soto','Model 2','Intel Core i9',18,1577,'AMD Radeon RX 570',1035.38),(3,'Harper, Rodgers and Rios','Model 3','AMD Ryzen 3',43,2031,'NVIDIA GeForce RTX 2080',2211.30),(4,'Taylor, Smith and Brown','Model 4','AMD Ryzen 5',63,1857,'NVIDIA GeForce RTX 2060',816.72),(5,'Zamora Inc','Model 5','AMD Ryzen 9',30,498,'NVIDIA GeForce GTX 1060',1630.51),(6,'Hernandez and Sons','Model 6','Intel Core i9',24,903,'NVIDIA GeForce RTX 2070',2530.74),(7,'Washington and Sons','Model 7','AMD Ryzen 5',39,706,'NVIDIA GeForce RTX 2070',2093.99),(8,'Lee-Thompson','Model 8','AMD Ryzen 9',62,1659,'AMD Radeon RX 580',1603.98),(9,'Bond-Hicks','Model 9','Intel Core i3',21,1217,'AMD Radeon RX 580',1777.48),(10,'Vasquez Group','Model 10','AMD Ryzen 5',51,476,'AMD Radeon RX 590',2831.60),(11,'Pratt Group','Model 11','AMD Ryzen 5',29,1293,'AMD Radeon RX 570',2312.28),(12,'Smith-Gomez','Model 12','Intel Core i3',40,1652,'NVIDIA GeForce RTX 2060',1172.74),(13,'Wade, Thompson and Richard','Model 13','AMD Ryzen 7',40,360,'NVIDIA GeForce RTX 2060',1231.63),(14,'White and Sons','Model 14','AMD Ryzen 9',49,536,'AMD Radeon RX 580',2060.33),(15,'Harmon-Russell','Model 15','Intel Core i3',47,1836,'AMD Radeon RX 590',781.15),(16,'Brooks-Johnson','Model 16','Intel Core i5',16,906,'NVIDIA GeForce RTX 2070',2209.22),(17,'Jones Group','Model 17','Intel Core i3',58,371,'NVIDIA GeForce RTX 2080',1070.15),(18,'Andrade-Collins','Model 18','Intel Core i5',13,297,'NVIDIA GeForce RTX 2080',1527.54),(19,'Wolf, Steele and Collins','Model 19','Intel Core i7',41,1320,'NVIDIA GeForce RTX 2070',541.69),(20,'Solomon and Sons','Model 20','Intel Core i7',54,1944,'NVIDIA GeForce GTX 1080',2483.72),(21,'Garrett-Bates','Model 21','AMD Ryzen 3',49,1249,'NVIDIA GeForce GTX 1070',2754.29),(22,'Huffman LLC','Model 22','Intel Core i9',27,378,'AMD Radeon RX 590',1457.62),(23,'Lara-Holloway','Model 23','Intel Core i9',47,1363,'AMD Radeon RX 580',1888.00),(24,'Flores, Dickerson and Sherman','Model 24','Intel Core i7',25,723,'NVIDIA GeForce GTX 1050',1585.19),(25,'Stewart LLC','Model 25','Intel Core i5',52,651,'NVIDIA GeForce GTX 1080',2423.24),(26,'Vazquez, Lucas and Harrison','Model 26','AMD Ryzen 7',61,1119,'AMD Radeon RX 590',2631.41),(27,'Taylor-Barker','Model 27','Intel Core i3',23,1079,'NVIDIA GeForce GTX 1060',1931.14),(28,'Craig Ltd','Model 28','AMD Ryzen 5',23,302,'NVIDIA GeForce RTX 2060',1372.11),(29,'Roberts-Smith','Model 29','AMD Ryzen 3',34,1703,'NVIDIA GeForce GTX 1060',571.41),(30,'Thomas Ltd','Model 30','AMD Ryzen 5',40,1580,'NVIDIA GeForce GTX 1070',1824.25),(31,'Martin-Lee','Model 31','Intel Core i5',23,1372,'NVIDIA GeForce GTX 1060',939.54),(32,'Gonzalez Inc','Model 32','Intel Core i9',12,277,'NVIDIA GeForce GTX 1070',990.60),(33,'Lawrence Group','Model 33','AMD Ryzen 9',54,985,'NVIDIA GeForce GTX 1080',606.12),(34,'Watkins LLC','Model 34','Intel Core i9',11,384,'AMD Radeon RX 570',2102.96),(35,'Lindsey PLC','Model 35','AMD Ryzen 7',9,1127,'AMD Radeon RX 590',2931.83),(36,'Conway, Taylor and Parker','Model 36','AMD Ryzen 7',49,303,'AMD Radeon RX 590',1127.90),(37,'Holmes-Mccoy','Model 37','AMD Ryzen 3',32,280,'NVIDIA GeForce RTX 2060',2336.67),(38,'Williams Group','Model 38','Intel Core i9',51,2044,'NVIDIA GeForce RTX 2080',1089.10),(39,'Mann-Morgan','Model 39','Intel Core i3',47,1180,'NVIDIA GeForce RTX 2080',1368.98),(40,'Baker-Campos','Model 40','AMD Ryzen 7',56,826,'NVIDIA GeForce GTX 1080',529.60),(41,'Horn, Alexander and Yates','Model 41','Intel Core i9',49,1555,'AMD Radeon RX 570',607.66),(42,'Vargas-Patel','Model 42','AMD Ryzen 7',46,1141,'NVIDIA GeForce GTX 1070',607.10),(43,'King, Jones and Vasquez','Model 43','Intel Core i9',41,793,'NVIDIA GeForce GTX 1060',791.17),(44,'Stafford, Mann and Flores','Model 44','Intel Core i5',49,1300,'AMD Radeon RX 570',2613.81),(45,'Calderon, Reynolds and Sanders','Model 45','Intel Core i9',15,1836,'AMD Radeon RX 570',2099.43),(46,'Lee, Cook and Sullivan','Model 46','Intel Core i7',48,2048,'NVIDIA GeForce GTX 1060',2888.19),(47,'Pineda, Taylor and Pope','Model 47','Intel Core i7',57,1493,'NVIDIA GeForce RTX 2080',2529.47),(48,'Andrews-Carr','Model 48','Intel Core i5',50,1841,'AMD Radeon RX 590',1499.15),(49,'Vazquez Ltd','Model 49','Intel Core i5',22,408,'AMD Radeon RX 570',1334.30),(50,'Lopez-Ochoa','Model 50','Intel Core i5',18,1992,'NVIDIA GeForce RTX 2060',2731.71);
/*!40000 ALTER TABLE `pcs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplierinventory`
--

DROP TABLE IF EXISTS `supplierinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplierinventory` (
  `SupplierInventoryID` int NOT NULL,
  `SupplierID` int DEFAULT NULL,
  `PCID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`SupplierInventoryID`),
  KEY `PCID` (`PCID`),
  KEY `fk_supplierinventory_suppliers` (`SupplierID`),
  CONSTRAINT `fk_supplierinventory_suppliers` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`) ON DELETE CASCADE,
  CONSTRAINT `supplierinventory_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`),
  CONSTRAINT `supplierinventory_ibfk_2` FOREIGN KEY (`PCID`) REFERENCES `pcs` (`PCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplierinventory`
--

LOCK TABLES `supplierinventory` WRITE;
/*!40000 ALTER TABLE `supplierinventory` DISABLE KEYS */;
INSERT INTO `supplierinventory` VALUES (1,8,10,34),(2,19,32,46),(5,19,22,33),(6,20,33,22),(7,14,38,46),(8,7,1,42),(9,17,31,34),(10,13,36,43),(12,9,42,4),(13,15,7,30),(14,8,17,39),(15,9,33,4),(17,13,23,12),(20,7,27,38),(21,16,24,41),(22,17,40,19),(23,16,4,45),(24,5,14,16),(25,16,19,13),(26,20,17,7),(27,4,21,39),(30,13,1,25),(31,15,34,33),(32,12,45,23),(33,20,26,41),(34,17,21,23),(35,12,11,16),(36,8,31,13),(37,5,6,21),(38,7,34,23),(39,4,9,40),(41,17,11,38),(43,9,20,25),(45,16,37,13),(48,9,48,29),(50,8,46,12),(52,7,45,11),(53,10,18,13),(54,15,18,10),(55,19,3,41),(56,5,42,2),(58,14,12,21),(59,4,2,32),(60,17,20,28),(61,7,19,37),(63,13,39,28),(64,20,40,1),(65,14,14,1),(66,8,41,24),(67,8,13,23),(68,11,39,15),(69,14,49,36),(70,11,49,19),(71,15,23,43),(72,14,49,23),(73,17,4,21),(74,15,18,5),(75,16,45,17),(76,5,29,22),(77,19,36,24),(78,5,5,33),(79,16,12,29),(80,20,48,5),(83,10,1,3),(84,8,39,43),(88,14,8,34),(90,11,8,48),(91,13,25,30),(92,10,47,8),(95,16,13,28),(96,14,6,41),(97,17,4,50),(98,13,4,26),(99,17,32,14),(100,7,6,48);
/*!40000 ALTER TABLE `supplierinventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `SupplierID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (4,'Cook, Allison and Lamb','dannyjohnson@clements-chen.biz','704.582.7857x714'),(5,'Wise, Davidson and Cross','jameshernandez@johns.org','801.703.9702x105'),(7,'Smith, Perry and Smith','jennifer61@wilson.com','617.223.3903'),(8,'Sawyer-Blackwell','jason58@hurst.com','+1-526-633-0481'),(9,'Mccormick, Sullivan and Gomez','youngcameron@doyle.net','631.639.0313'),(10,'Calderon-Young','robert64@black-santana.com','(591)437-0523x559'),(11,'Mitchell-Hansen','lindsay24@blake.com','434-828-3908'),(12,'Watts-Walters','david51@harvey.com','+1-275-719-2400x6644'),(13,'Hughes, Phillips and Kline','qsmith@hunter.biz','(243)478-4245'),(14,'Wilson PLC','mitchellraymond@wood-carter.com','991-878-3009'),(15,'Smith, Olsen and Rodriguez','timothy94@jones.com','(680)998-3686'),(16,'Johnson Group','ryanchavez@ferguson-wilkinson.info','+1-807-657-2791'),(17,'Kennedy-Smith','jessicahaynes@castro.com','843-357-8915x98874'),(19,'Anderson-Keller','tstrickland@beltran.com','341.901.6181'),(20,'Thompson Ltd','fford@carpenter.biz','(351)303-2605x683');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 19:34:09
