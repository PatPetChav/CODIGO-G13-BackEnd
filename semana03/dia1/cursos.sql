-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: localhost    Database: cursos
-- ------------------------------------------------------
-- Server version	5.7.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pais` varchar(100) DEFAULT 'Perú',
  `nota` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'Babs','Lawrinson','blawrinson0@bbc.co.uk','Venezuela',20),(2,'Osbourn','Cockroft','ocockroft1@cafepress.com','Colombia',10),(3,'Benny','Sambrook','bsambrook2@bluehost.com','Ecuador',16),(4,'Nicoli','Ritter','nritter3@webs.com','Brazil',10),(5,'Kellyann','Andrysek','kandrysek4@icio.us','Brazil',14),(6,'Marley','Brewett','mbrewett5@moonfruit.com','Argentina',16),(7,'Richmond','Slogrove','rslogrove6@kickstarter.com','Peru',16),(8,'Henry','Handasyde','hhandasyde7@behance.net','Brazil',13),(9,'Egan','Hubbert','ehubbert8@virginia.edu','Brazil',10),(10,'Bernadene','Paddefield','bpaddefield9@google.pl','Brazil',11),(11,'Major','Fulstow','mfulstowa@biblegateway.com','Brazil',11),(12,'Amii','Grigs','agrigsb@skyrock.com','Brazil',17),(13,'Robbie','Wison','rwisonc@bigcartel.com','Brazil',14),(14,'Emmey','Hounihan','ehounihand@spotify.com','Brazil',17),(15,'Ardeen','Swaffield','aswaffielde@microsoft.com','Brazil',14),(16,'Olive','Francklyn','ofrancklynf@tumblr.com','Brazil',15),(17,'Ashly','Hartman','ahartmang@dyndns.org','Brazil',13),(18,'Mirabelle','Rankcom','mrankcomh@dropbox.com','Brazil',15),(19,'Carole','Golagley','cgolagleyi@ifeng.com','Brazil',18),(20,'Ellynn','Chesher','echesherj@abc.net.au','Argentina',18),(21,'Jeromy','Canty','jcantyk@jugem.jp','Brazil',20),(22,'Daryl','Stienton','dstientonl@ifeng.com','Argentina',18),(23,'Gregoire','Lowrie','glowriem@artisteer.com','Peru',13),(24,'Kirbee','Bonin','kboninn@mit.edu','Brazil',10),(25,'Polly','Lichtfoth','plichtfotho@newsvine.com','Peru',15),(26,'Madge','Truluck','mtruluckp@engadget.com','Brazil',15),(27,'Elwyn','Yapp','eyappq@chicagotribune.com','Brazil',16),(28,'Olivier','Bilfoot','obilfootr@twitpic.com','Bolivia',13),(29,'Francois','Ilchuk','filchuks@microsoft.com','Colombia',14),(30,'Darill','Hessing','dhessingt@free.fr','Colombia',14),(31,'Angie','Venner','avenneru@hhs.gov','Argentina',11),(32,'Maurizio','Kittle','mkittlev@biglobe.ne.jp','Venezuela',20),(33,'Arabel','Temple','atemplew@bluehost.com','Brazil',15),(34,'Corella','De Cruz','cdecruzx@cnet.com','Colombia',19),(35,'Monroe','Gerry','mgerryy@xinhuanet.com','Brazil',13),(36,'Avram','Summerrell','asummerrellz@seattletimes.com','Ecuador',10),(37,'Shalom','Thursby','sthursby10@mozilla.com','Venezuela',17),(38,'Cedric','Meaker','cmeaker11@de.vu','Brazil',19),(39,'Gaylene','Purver','gpurver12@edublogs.org','Brazil',13),(40,'Denice','Flageul','dflageul13@friendfeed.com','Argentina',10),(41,'Briny','Mourton','bmourton14@cpanel.net','Chile',19),(42,'Rhody','Carlesso','rcarlesso15@europa.eu','Brazil',15),(43,'Rita','Hallum','rhallum16@plala.or.jp','Argentina',11),(44,'Neall','Wagerfield','nwagerfield17@opera.com','Brazil',19),(45,'Cornie','Tyler','ctyler18@wsj.com','Peru',13),(46,'Laurice','McComiskie','lmccomiskie19@census.gov','Venezuela',12),(47,'Daryl','O\'Crowley','docrowley1a@slideshare.net','Argentina',20),(48,'Ilaire','Macallam','imacallam1b@abc.net.au','Brazil',13),(49,'Carlin','Niemiec','cniemiec1c@goo.gl','Brazil',15),(50,'Alanah','Utting','autting1d@cnn.com','Argentina',11),(51,'Arlie','Keable','akeable1e@taobao.com','Brazil',20),(52,'Dita','Wandless','dwandless1f@livejournal.com','Brazil',20),(53,'Minna','De Normanville','mdenormanville1g@yahoo.com','Brazil',17),(54,'Derril','Furphy','dfurphy1h@live.com','Colombia',18),(55,'Jeremie','Boolsen','jboolsen1i@tripadvisor.com','Peru',10),(56,'Amalle','Van der Kruis','avanderkruis1j@sfgate.com','Brazil',18),(57,'Lancelot','Hiorn','lhiorn1k@dagondesign.com','Colombia',11),(58,'Brittni','Allsebrook','ballsebrook1l@google.co.uk','Brazil',18),(59,'Marigold','Geany','mgeany1m@independent.co.uk','Peru',19),(60,'Jaime','Loughlin','jloughlin1n@t.co','Colombia',18),(61,'Celestina','Grumell','cgrumell1o@jiathis.com','Argentina',13),(62,'Corine','Maciejak','cmaciejak1p@list-manage.com','Brazil',19),(63,'Meredithe','Fifoot','mfifoot1q@hp.com','Peru',11),(64,'Billy','Limpkin','blimpkin1r@elpais.com','Peru',17),(65,'Vi','Dunleavy','vdunleavy1s@merriam-webster.com','Peru',10),(66,'Ruprecht','Node','rnode1t@storify.com','Argentina',16),(67,'Ebenezer','Haseley','ehaseley1u@github.io','Brazil',10),(68,'Izabel','Strodder','istrodder1v@ifeng.com','Brazil',14),(69,'Wallie','Weighell','wweighell1w@reuters.com','Bolivia',18),(70,'Cathie','McCaighey','cmccaighey1x@marriott.com','Colombia',20),(71,'Lin','Verny','lverny1y@altervista.org','Ecuador',11),(72,'Jessalin','Windsor','jwindsor1z@sourceforge.net','Brazil',12),(73,'Nevile','Lindstedt','nlindstedt20@intel.com','Argentina',15),(74,'Karolina','Whitford','kwhitford21@linkedin.com','Brazil',14),(75,'Anallese','Stiggles','astiggles22@yahoo.co.jp','Brazil',19),(76,'Zitella','Birchenhead','zbirchenhead23@cbslocal.com','Colombia',12),(77,'Kain','Gillingwater','kgillingwater24@over-blog.com','Peru',12),(78,'Corina','Bowdrey','cbowdrey25@icq.com','Brazil',19),(79,'Merrill','Lennarde','mlennarde26@google.de','Colombia',18),(80,'Vinny','Fladgate','vfladgate27@harvard.edu','Argentina',13),(81,'Tammie','Winsborrow','twinsborrow28@aboutads.info','Brazil',16),(82,'Ardenia','Scullin','ascullin29@foxnews.com','Brazil',18),(83,'Jeffry','Beldam','jbeldam2a@bloglovin.com','Chile',18),(84,'Cammy','Brainsby','cbrainsby2b@chron.com','Brazil',18),(85,'Katya','Agerskow','kagerskow2c@twitter.com','Brazil',18),(86,'Theodor','Minster','tminster2d@ox.ac.uk','Brazil',17),(87,'Vinnie','Mizzen','vmizzen2e@ca.gov','Peru',12),(88,'Morgen','Wethered','mwethered2f@tamu.edu','Colombia',11),(89,'Edouard','Keford','ekeford2g@cbc.ca','Peru',15),(90,'Gillie','Iacavone','giacavone2h@youtube.com','Chile',14),(91,'Ilario','Stepto','istepto2i@myspace.com','Brazil',20),(92,'Amitie','Burcher','aburcher2j@blog.com','Brazil',17),(93,'Zelda','Beauman','zbeauman2k@cyberchimps.com','Brazil',15),(94,'Pietrek','Peach','ppeach2l@symantec.com','Argentina',18),(95,'Letisha','Gail','lgail2m@taobao.com','Peru',17),(96,'Gretchen','Kwietek','gkwietek2n@prweb.com','Brazil',12),(97,'Glenda','Giacobillo','ggiacobillo2o@cnn.com','Brazil',20),(98,'Concordia','Smickle','csmickle2p@shutterfly.com','Venezuela',13),(99,'Philippine','Arpe','parpe2q@163.com','Peru',11),(100,'Kacy','Valintine','kvalintine2r@indiegogo.com','Brazil',20);
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27  0:51:24
