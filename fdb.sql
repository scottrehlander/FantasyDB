-- MySQL dump 10.10
--
-- Host: localhost    Database: fantasydb
-- ------------------------------------------------------
-- Server version	5.0.27-community-nt

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
-- Table structure for table `competitors`
--

DROP TABLE IF EXISTS `competitors`;
CREATE TABLE `competitors` (
  `CompetitorName` text NOT NULL,
  `YearlySalary` bigint(20) default NULL,
  `Class` text,
  `ScoreYTD` int(11) default NULL,
  `CompetitorID` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`CompetitorID`)
) ENGINE=InnoDB;

--
-- Dumping data for table `competitors`
--

LOCK TABLES `competitors` WRITE;
/*!40000 ALTER TABLE `competitors` DISABLE KEYS */;
INSERT INTO `competitors` VALUES ('Jay Odom',NULL,'Street A',NULL,28),('James Herren',NULL,'Street A',NULL,29),('Scott Rehlander',NULL,'Street A',NULL,30),('Simon Ziegelbauer',NULL,'Street A',NULL,31),('Michael Nauta',NULL,'Street A',NULL,32),('Chip Hallman',NULL,'Street A',NULL,33),('Tony Rivera',NULL,'Street A',NULL,34),('Kin Santos',NULL,'Street A',NULL,35),('Terry Jackson',NULL,'Street B',NULL,36),('WCA Carlton',NULL,'Street B',NULL,37),('Thomas Inserra',NULL,'Street B',NULL,38),('Sound Mekanix - Street A',NULL,'Street B',NULL,39),('Casey Sullivan',NULL,'Street B',NULL,40),('Ivan Rodriguez',NULL,'Street B',NULL,41),('Brian Stokes',NULL,'Street B',NULL,42),('Alex Kish',NULL,'Street B',NULL,43),('Kevin Koller',NULL,'Street C',NULL,44),('Jose Ortega',NULL,'Street C',NULL,45),('Toby Newton',NULL,'Street C',NULL,46),('Steve Nelson',NULL,'Street C',NULL,47),('Robert McGee',NULL,'Street C',NULL,48),('Steven Tyler',NULL,'Street C',NULL,49),('Billy Hurly',NULL,'Street C',NULL,50),('Cactus Sounds',NULL,'Street Max 1-2',NULL,51),('David Montgomery',NULL,'Street Max 1-2',NULL,52),('Chad Tyler',NULL,'Street Max 1-2',NULL,53),('Barry Cook',NULL,'Street Max 1-2',NULL,54),('Bubba Webber',NULL,'Street Max 1-2',NULL,55),('John Eason Jr.',NULL,'Street Max 1-2',NULL,56),('Randy Dickerson',NULL,'Street Max 1-2',NULL,57),('George Fann',NULL,'Street Max 1-2',NULL,58),('Team 420 - Jesse',NULL,'Street Max 3-4',NULL,59),('Miranda Jackson',NULL,'Street Max 3-4',NULL,60),('Team Nutz',NULL,'Street Max 3-4',NULL,61),('Broken Silence - Biggie',NULL,'Street Max 3-4',NULL,62),('Noizy Toyz - Miguel',NULL,'Street Max 3-4',NULL,63),('Team Kryptonite',NULL,'Street Max 3-4',NULL,64),('Danny Britain',NULL,'Super Street 1-2',NULL,65),('Team 420 - Rooney',NULL,'Super Street 1-2',NULL,66),('Ashley Eason',NULL,'Super Street 1-2',NULL,67),('Team T&T',NULL,'Super Street 1-2',NULL,68),('Joseph Hedden',NULL,'Super Street 1-2',NULL,69),('Chris McVay',NULL,'Super Street 1-2',NULL,70),('Noizy Toyz - Andrae',NULL,'Super Street 1-2',NULL,71),('Kyle Anderson',NULL,'Super Street 1-2',NULL,72),('John Mulcahy',NULL,'Super Street 1-2 Nw',NULL,73),('Team Riles',NULL,'Super Street 1-2 Nw',NULL,74),('New Wave Audio',NULL,'Super Street 1-2 Nw',NULL,75),('Matthew Williams',NULL,'Super Street 1-2 Nw',NULL,76),('Robert Morning',NULL,'Super Street 1-2 Nw',NULL,77),('Gorman Cassidy',NULL,'Super Street 3-4',NULL,78),('Ben Sams',NULL,'Super Street 3-4',NULL,79),('Carlos Rodriguez',NULL,'Super Street 3-4',NULL,80),('Pro Truck Accessories',NULL,'Super Street 3-4',NULL,81),('Rad Bolt',NULL,'Super Street 3-4',NULL,82),('Edgar Calderon',NULL,'Super Street 3-4',NULL,83),('Joey Chobot',NULL,'Super Street 3-4',NULL,84),('Robert Stephens',NULL,'Super Street 3-4',NULL,85),('Steve Cook',NULL,'Super Street 5+',NULL,86),('Bob Perillo',NULL,'Super Street 5+',NULL,87),('Neill Barber',NULL,'Super Street 5+',NULL,88),('Daniel Echt Jr.',NULL,'Super Street 5+',NULL,89),('Team Dreamscape - Devin',NULL,'Super Street 5+',NULL,90),('Donell Fonville',NULL,'Super Street 5+',NULL,91),('Justin Baird',NULL,'Super Street 5+',NULL,92),('David Tapia',NULL,'Super Street 5+',NULL,93),('Team Neo - Mike',NULL,'Street C',NULL,94),('Mark Holbrook',NULL,'Extreme 1',NULL,95),('Bruce Dressel',NULL,'Extreme 1',NULL,96),('Scott Van Riper',NULL,'Extreme 2',NULL,97),('Geoff Eberly',NULL,'Extreme 2',NULL,98),('Team Fusion Car Audio',NULL,'Extreme 3-4',NULL,99),('Chris Norris',NULL,'Extreme 3-4',NULL,100),('Edge Audio',NULL,'Extreme 5+',NULL,101),('Tim Heath',NULL,'Extreme 5+',NULL,102),('Team SPL Bank - Scott',NULL,'Street A',NULL,103),('Team Shocker - Bill',NULL,'Street A',NULL,104),('Team Neo - Eric',NULL,'Street A',NULL,105),('Team Flatline',NULL,'Street A',NULL,106),('Yuli Shumsky',NULL,'Street A',NULL,107),('Team ChrisMel',NULL,'Street A',NULL,108),('Bill Lolo',NULL,'Street A',NULL,109),('Team Neo - Vernon',NULL,'Street B',NULL,110),('Team SPL Bank',NULL,'Street B',NULL,111),('Terry Brocks 2',NULL,'Street B',NULL,112),('Jason Hardie',NULL,'Street B',NULL,113),('Les Kostuch',NULL,'Street B',NULL,114),('Jeremy Keith',NULL,'Street B',NULL,115),('Team Pop Rocks',NULL,'Street C',NULL,116),('Jared Williams',NULL,'Street C',NULL,117),('Car Audio Unlimited',NULL,'Street C',NULL,118),('Brendon Solarz',NULL,'Street C',NULL,119),('Cory Hoskins',NULL,'Street C',NULL,120),('Team Livewire',NULL,'Street Max 1-2',NULL,121),('Mike Rohrbach',NULL,'Street Max 1-2',NULL,122),('Jay Thomson',NULL,'Street Max 1-2',NULL,123),('Team Emax',NULL,'Street Max 1-2',NULL,124),('Nathan Potter',NULL,'Street Max 1-2',NULL,125),('Mike Fallon',NULL,'Street Max 3-4',NULL,126),('Steve Mick',NULL,'Street Max 3-4',NULL,127),('Team Walrus',NULL,'Super Street 1-2',NULL,128),('Jared Horton',NULL,'Super Street 1-2',NULL,129),('Hreha Reflections',NULL,'Super Street 1-2',NULL,130),('Team USAudio',NULL,'Super Street 1-2',NULL,131),('Will Perez',NULL,'Super Street 1-2 Nw',NULL,132),('Team Livewire - Gene',NULL,'Super Street 1-2 Nw',NULL,133),('Team Sound Xtreme',NULL,'Super Street 1-2 Nw',NULL,134),('Eric Winter',NULL,'Super Street 1-2 Nw',NULL,135),('Dr. Matthew Miller',NULL,'Super Street 3-4',NULL,136),('Randy Kubek',NULL,'Super Street 5+',NULL,137),('Sodda Pop Kid',NULL,'Extreme 3-4',NULL,138),('Advanced Mobile Toys',NULL,'Street A',NULL,139),('Jeff Brown',NULL,'Street A',NULL,140),('Joseph Ault Sr.',NULL,'Street A',NULL,141),('Team Urban ArtFx - Percy',NULL,'Street A',NULL,142),('Sound Decision - Mike',NULL,'Street B',NULL,143),('Jason Fantzdomingo',NULL,'Street B',NULL,144),('Jeramie Blake',NULL,'Street B',NULL,145),('Robert Birkhimer',NULL,'Street B',NULL,146),('Sound Decision - Alex',NULL,'Street C',NULL,147),('Steven Ignacek',NULL,'Street C',NULL,148),('Brian Kasper',NULL,'Street Max 1-2',NULL,149),('Dennis Barrett',NULL,'Street Max 1-2',NULL,150),('Sam Snowden',NULL,'Street Max 1-2',NULL,151),('Andy Brown',NULL,'Street Max 3-4',NULL,152),('Curt Elgensee',NULL,'Super Street 1-2',NULL,153),('Eric Klypchak',NULL,'Super Street 1-2',NULL,154),('Jack Thomas',NULL,'Super Street 1-2 Nw',NULL,155),('Big Oso',NULL,'Super Street 1-2 Nw',NULL,156),('Team Shocker - Rodney',NULL,'Super Street 3-4',NULL,157),('Chris Harms',NULL,'Super Street 3-4',NULL,158),('Ric Balmert',NULL,'Super Street 3-4',NULL,159),('Dan Bates',NULL,'Super Street 3-4',NULL,160),('Ed Gardner',NULL,'Super Street 3-4',NULL,161),('Eric Lane',NULL,'Super Street 5+',NULL,162),('Greg Zoller',NULL,'Super Street 5+',NULL,163),('John Hrabik',NULL,'Super Street 5+',NULL,164),('Alan Dante',NULL,'Extreme 1',NULL,165),('Team XS SPL - Deron',NULL,'Extreme 1',NULL,166),('Team Two - Beau',NULL,'Extreme 1',NULL,167),('Eric Parsley',NULL,'Extreme 1',NULL,168),('Team EH',NULL,'Extreme 1',NULL,169),('Edge Audio - Kyle',NULL,'Extreme 2',NULL,170),('Fred Wright Jr.',NULL,'Extreme 2',NULL,171),('Team Organized Noize - Keith',NULL,'Extreme 2',NULL,172),('Extreme Audio',NULL,'Extreme 3-4',NULL,173),('Team XS SPL - Roger',NULL,'Extreme 3-4',NULL,174),('Danny Hays',NULL,'Extreme 3-4',NULL,175),('Extreme Sound - Danielle',NULL,'Extreme 5+',NULL,176),('Craig Butler',NULL,'Extreme 5+',NULL,177),('Team XS SPL - Tuan',NULL,'Street A',NULL,178),('Ryan Ferguson',NULL,'Street A',NULL,179),('Terry Brocks',NULL,'Street A',NULL,180),('Brad Firgard',NULL,'Street B',NULL,181),('Thee Michael Hughes',NULL,'Street B',NULL,182),('Sound Check',NULL,'Street B',NULL,183),('Jeff Stanford',NULL,'Street B',NULL,184),('Jeremiah Ledgerwood',NULL,'Street C',NULL,185),('Brandon Nelsen',NULL,'Street C',NULL,186),('Team James Carnes',NULL,'Street Max 1-2',NULL,187),('Mike Makus',NULL,'Street Max 1-2',NULL,188),('High Output Audio',NULL,'Street Max 3-4',NULL,189),('Geoff Cayemberg',NULL,'Street Max 3-4',NULL,190),('Jordan Martin',NULL,'Street Max 3-4',NULL,191),('Justin Thornton',NULL,'Street Max 3-4',NULL,192),('Team H&K - Jesse',NULL,'Street Max 3-4',NULL,193),('Team Budweiser',NULL,'Super Street 1-2',NULL,194),('Border Motorsports 2',NULL,'Super Street 1-2',NULL,195),('Team XS SPL - Jeffrey',NULL,'Super Street 1-2',NULL,196),('Brad Eubank',NULL,'Super Street 1-2',NULL,197),('Team SKS',NULL,'Super Street 1-2',NULL,198),('Alan Laake',NULL,'Super Street 1-2 Nw',NULL,199),('William Collier',NULL,'Super Street 1-2 Nw',NULL,200),('Jason Meyer',NULL,'Super Street 1-2 Nw',NULL,201),('Team XS SPL - Rolando',NULL,'Super Street 1-2 Nw',NULL,202),('Matt Chilcote',NULL,'Super Street 1-2 Nw',NULL,203),('Team BK',NULL,'Super Street 1-2 Nw',NULL,204),('Rusty Flowers',NULL,'Super Street 3-4',NULL,205),('Team NWA',NULL,'Super Street 3-4',NULL,206),('Terry Francis',NULL,'Super Street 3-4',NULL,207),('Team New York - 1',NULL,'Super Street 3-4',NULL,208),('Scottie Johnson',NULL,'Super Street 5+',NULL,209),('The Radio Doctor - Matt',NULL,'Super Street 5+',NULL,210),('Team CE Audio',NULL,'Super Street 5+',NULL,211),('Team Stereo One - Brad',NULL,'Super Street 5+',NULL,212);
/*!40000 ALTER TABLE `competitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventresults`
--

DROP TABLE IF EXISTS `eventresults`;
CREATE TABLE `eventresults` (
  `EventID` int(11) NOT NULL,
  `CompetitorID` int(11) default NULL,
  `Place` int(11) default NULL,
  `Class` text,
  `Score` text,
  `ResultID` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`ResultID`)
) ENGINE=InnoDB;

--
-- Dumping data for table `eventresults`
--

LOCK TABLES `eventresults` WRITE;
/*!40000 ALTER TABLE `eventresults` DISABLE KEYS */;
INSERT INTO `eventresults` VALUES (11,28,1,'Street A','153.4',1),(11,29,2,'Street A','149.9',2),(11,30,3,'Street A','149.9',3),(11,31,4,'Street A','147.1',4),(11,32,5,'Street A','148.5',5),(11,33,6,'Street A','146.9',6),(11,34,7,'Street A','144.6',7),(11,35,8,'Street A','142.2',8),(11,36,1,'Street B','154.1',9),(11,37,2,'Street B','151.1',10),(11,38,3,'Street B','150.5',11),(11,39,4,'Street B','149.8',12),(11,40,5,'Street B','150.4',13),(11,41,6,'Street B','149.3',14),(11,42,7,'Street B','148.2',15),(11,43,8,'Street B','147.5',16),(11,44,1,'Street C','156.7',17),(11,94,2,'Street C','154.3',18),(11,45,3,'Street C','151.8',19),(11,46,4,'Street C','151.6',20),(11,47,5,'Street C','150.1',21),(11,48,6,'Street C','146.1',22),(11,49,7,'Street C','145.9',23),(11,50,8,'Street C','145.1',24),(11,51,1,'Street Max 1-2','161.6',25),(11,52,2,'Street Max 1-2','157.3',26),(11,53,3,'Street Max 1-2','152.2',27),(11,54,4,'Street Max 1-2','149.3',28),(11,55,5,'Street Max 1-2','145.8',29),(11,56,6,'Street Max 1-2','144',30),(11,57,7,'Street Max 1-2','142.7',31),(11,58,8,'Street Max 1-2','140.5',32),(11,59,1,'Street Max 3-4','160.2',33),(11,60,2,'Street Max 3-4','159.4',34),(11,61,3,'Street Max 3-4','157.7',35),(11,62,4,'Street Max 3-4','156.9',36),(11,63,5,'Street Max 3-4','148.9',37),(11,64,6,'Street Max 3-4','137.8',38),(11,65,1,'Super Street 1-2','162.7',39),(11,66,2,'Super Street 1-2','164.1',40),(11,67,3,'Super Street 1-2','159.9',41),(11,68,4,'Super Street 1-2','159.3',42),(11,69,5,'Super Street 1-2','155.2',43),(11,70,6,'Super Street 1-2','155',44),(11,71,7,'Super Street 1-2','147.2',45),(11,72,8,'Super Street 1-2','144.5',46),(11,73,1,'Super Street 1-2 Nw','156.8',47),(11,74,2,'Super Street 1-2 Nw','149.1',48),(11,75,3,'Super Street 1-2 Nw','149.5',49),(11,76,4,'Super Street 1-2 Nw','142.1',50),(11,77,5,'Super Street 1-2 Nw','139.6',51),(11,78,1,'Super Street 3-4','167.6',52),(11,79,2,'Super Street 3-4','166.7',53),(11,80,3,'Super Street 3-4','162.8',54),(11,81,4,'Super Street 3-4','158.4',55),(11,82,5,'Super Street 3-4','154.5',56),(11,83,6,'Super Street 3-4','149.1',57),(11,84,7,'Super Street 3-4','147.1',58),(11,85,8,'Super Street 3-4','144.9',59),(11,86,1,'Super Street 5+','168.2',60),(11,87,2,'Super Street 5+','163.3',61),(11,88,3,'Super Street 5+','157.6',62),(11,89,4,'Super Street 5+','152.2',63),(11,90,5,'Super Street 5+','150',64),(11,91,6,'Super Street 5+','148.8',65),(11,92,7,'Super Street 5+','148.3',66),(11,93,8,'Super Street 5+','144.2',67),(12,95,1,'Extreme 1','171.3',68),(12,96,2,'Extreme 1','144.8',69),(12,97,1,'Extreme 2','173.7',70),(12,98,2,'Extreme 2','149.4',71),(12,99,1,'Extreme 3-4','172.3',72),(12,100,2,'Extreme 3-4','132.8',73),(12,101,1,'Extreme 5+','179.4',74),(12,102,2,'Extreme 5+','173.5',75),(12,103,1,'Street A','153.7',76),(12,104,2,'Street A','153.9',77),(12,105,3,'Street A','152.9',78),(12,106,4,'Street A','152.7',79),(12,107,5,'Street A','151.9',80),(12,108,6,'Street A','150.8',81),(12,30,7,'Street A','148.3',82),(12,109,8,'Street A','143',83),(12,110,1,'Street B','155.2',84),(12,111,2,'Street B','153.8',85),(12,112,3,'Street B','155',86),(12,113,4,'Street B','153.5',87),(12,114,5,'Street B','151.8',88),(12,38,6,'Street B','151.3',89),(12,115,7,'Street B','150',90),(12,94,1,'Street C','156.5',91),(12,46,2,'Street C','151.9',92),(12,116,3,'Street C','149.8',93),(12,117,4,'Street C','144.5',94),(12,118,5,'Street C','145.9',95),(12,119,6,'Street C','142.1',96),(12,120,7,'Street C','136.7',97),(12,121,1,'Street Max 1-2','158.2',98),(12,122,2,'Street Max 1-2','156.2',99),(12,123,3,'Street Max 1-2','155.7',100),(12,124,4,'Street Max 1-2','151.6',101),(12,125,5,'Street Max 1-2','142.2',102),(12,59,1,'Street Max 3-4','160.9',103),(12,61,2,'Street Max 3-4','157.2',104),(12,126,3,'Street Max 3-4','156.1',105),(12,127,4,'Street Max 3-4','155.8',106),(12,128,1,'Super Street 1-2','163.6',107),(12,66,2,'Super Street 1-2','164.3',108),(12,129,3,'Super Street 1-2','161.2',109),(12,70,4,'Super Street 1-2','159.2',110),(12,130,5,'Super Street 1-2','160.4',111),(12,131,6,'Super Street 1-2','157.3',112),(12,69,7,'Super Street 1-2','152.3',113),(12,132,1,'Super Street 1-2 Nw','154.4',114),(12,133,2,'Super Street 1-2 Nw','154',115),(12,134,3,'Super Street 1-2 Nw','152',116),(12,135,4,'Super Street 1-2 Nw','138.7',117),(12,136,1,'Super Street 3-4','164.2',118),(12,87,1,'Super Street 5+','166.3',119),(12,137,2,'Super Street 5+','156.3',120),(13,99,1,'Extreme 3-4','171.6',121),(13,138,2,'Extreme 3-4','145.7',122),(13,139,1,'Street A','153.8',123),(13,105,2,'Street A','152.5',124),(13,140,3,'Street A','150.6',125),(13,141,4,'Street A','153.6',126),(13,108,5,'Street A','149.6',127),(13,142,6,'Street A','148.9',128),(13,110,1,'Street B','155.8',129),(13,106,2,'Street B','154.9',130),(13,143,3,'Street B','153.4',131),(13,113,4,'Street B','153.4',132),(13,144,5,'Street B','142.4',133),(13,145,6,'Street B','140',134),(13,146,7,'Street B','139.7',135),(13,94,1,'Street C','154.9',136),(13,147,2,'Street C','154',137),(13,148,3,'Street C','142.3',138),(13,120,4,'Street C','136.3',139),(13,122,1,'Street Max 1-2','157',140),(13,123,2,'Street Max 1-2','154.5',141),(13,149,3,'Street Max 1-2','145.5',142),(13,150,4,'Street Max 1-2','144.7',143),(13,151,5,'Street Max 1-2','140.5',144),(13,61,1,'Street Max 3-4','158.9',145),(13,152,2,'Street Max 3-4','146.5',146),(13,129,1,'Super Street 1-2','161.3',147),(13,130,2,'Super Street 1-2','153.7',148),(13,153,3,'Super Street 1-2','154.7',149),(13,30,4,'Super Street 1-2','147.7',150),(13,154,5,'Super Street 1-2','146.9',151),(13,155,1,'Super Street 1-2 Nw','154.5',152),(13,156,2,'Super Street 1-2 Nw','145.8',153),(13,135,3,'Super Street 1-2 Nw','136.5',154),(13,157,1,'Super Street 3-4','158.8',155),(13,127,2,'Super Street 3-4','157.4',156),(13,158,3,'Super Street 3-4','153.7',157),(13,159,4,'Super Street 3-4','153.6',158),(13,160,5,'Super Street 3-4','150.9',159),(13,161,6,'Super Street 3-4','146.4',160),(13,162,1,'Super Street 5+','152.9',161),(13,163,2,'Super Street 5+','151.3',162),(13,164,3,'Super Street 5+','149.7',163),(15,165,1,'Extreme 1','177.8',164),(15,166,2,'Extreme 1','169.5',165),(15,95,3,'Extreme 1','173.1',166),(15,167,4,'Extreme 1','164.1',167),(15,168,5,'Extreme 1','168.3',168),(15,169,6,'Extreme 1','156.6',169),(15,170,1,'Extreme 2','176.4',170),(15,97,2,'Extreme 2','173.2',171),(15,171,3,'Extreme 2','167.3',172),(15,98,4,'Extreme 2','163.8',173),(15,172,5,'Extreme 2','159.9',174),(15,173,1,'Extreme 3-4','178.1',175),(15,174,2,'Extreme 3-4','175.4',176),(15,175,3,'Extreme 3-4','172.3',177),(15,138,4,'Extreme 3-4','146',178),(15,101,1,'Extreme 5+','178.3',179),(15,102,2,'Extreme 5+','175.3',180),(15,99,3,'Extreme 5+','173.5',181),(15,100,4,'Extreme 5+','172.1',182),(15,176,5,'Extreme 5+','161.1',183),(15,177,6,'Extreme 5+','160',184),(15,76,7,'Extreme 5+','149.8',185),(15,178,1,'Street A','156.1',186),(15,103,2,'Street A','155.6',187),(15,179,3,'Street A','155.4',188),(15,105,4,'Street A','155.3',189),(15,180,5,'Street A','155.3',190),(15,139,6,'Street A','154.6',191),(15,29,7,'Street A','154.3',192),(15,140,8,'Street A','154.1',193),(15,181,1,'Street B','157.6',194),(15,143,2,'Street B','155.7',195),(15,110,3,'Street B','155.9',196),(15,182,4,'Street B','155.8',197),(15,111,5,'Street B','154.9',198),(15,183,6,'Street B','154.3',199),(15,184,7,'Street B','154',200),(15,37,8,'Street B','153.6',201),(15,44,1,'Street C','157',202),(15,94,2,'Street C','156.4',203),(15,185,3,'Street C','155.5',204),(15,46,4,'Street C','154.7',205),(15,147,5,'Street C','154.5',206),(15,115,6,'Street C','154.2',207),(15,116,7,'Street C','154.1',208),(15,186,8,'Street C','153.9',209),(15,51,1,'Street Max 1-2','163',210),(15,187,2,'Street Max 1-2','157.8',211),(15,121,3,'Street Max 1-2','157',212),(15,123,4,'Street Max 1-2','157.1',213),(15,122,5,'Street Max 1-2','156.7',214),(15,52,6,'Street Max 1-2','155.7',215),(15,108,7,'Street Max 1-2','155.3',216),(15,188,8,'Street Max 1-2','155.2',217),(15,189,1,'Street Max 3-4','162.4',218),(15,61,2,'Street Max 3-4','162.3',219),(15,190,3,'Street Max 3-4','161.2',220),(15,60,4,'Street Max 3-4','161.1',221),(15,191,5,'Street Max 3-4','156.6',222),(15,192,6,'Street Max 3-4','156.1',223),(15,193,7,'Street Max 3-4','144.7',224),(15,194,1,'Super Street 1-2','166.3',225),(15,195,2,'Super Street 1-2','166.2',226),(15,66,3,'Super Street 1-2','165.4',227),(15,196,4,'Super Street 1-2','165.1',228),(15,197,5,'Super Street 1-2','163.8',229),(15,129,6,'Super Street 1-2','161.4',230),(15,198,7,'Super Street 1-2','160.3',231),(15,131,8,'Super Street 1-2','159.9',232),(15,199,1,'Super Street 1-2 Nw','162',233),(15,200,2,'Super Street 1-2 Nw','163.3',234),(15,201,3,'Super Street 1-2 Nw','161.8',235),(15,73,4,'Super Street 1-2 Nw','158.1',236),(15,202,5,'Super Street 1-2 Nw','161.4',237),(15,203,6,'Super Street 1-2 Nw','157.4',238),(15,204,7,'Super Street 1-2 Nw','157.2',239),(15,132,8,'Super Street 1-2 Nw','154.6',240),(15,78,1,'Super Street 3-4','168.2',241),(15,136,2,'Super Street 3-4','164.8',242),(15,205,3,'Super Street 3-4','165.1',243),(15,62,4,'Super Street 3-4','164.5',244),(15,80,5,'Super Street 3-4','163.7',245),(15,206,6,'Super Street 3-4','162.5',246),(15,207,7,'Super Street 3-4','160.7',247),(15,208,8,'Super Street 3-4','149.1',248),(15,86,1,'Super Street 5+','169.6',249),(15,87,2,'Super Street 5+','168.7',250),(15,209,3,'Super Street 5+','168.5',251),(15,81,4,'Super Street 5+','168.8',252),(15,210,5,'Super Street 5+','164.1',253),(15,54,6,'Super Street 5+','160.8',254),(15,211,7,'Super Street 5+','160.2',255),(15,212,8,'Super Street 5+','157',256);
/*!40000 ALTER TABLE `eventresults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `EventName` text NOT NULL,
  `EventID` int(11) NOT NULL auto_increment,
  `EventDate` text,
  `PointsMultiplier` int(11) NOT NULL,
  `EventLocation` text,
  `Season` int(11) NOT NULL,
  PRIMARY KEY  (`EventID`)
) ENGINE=InnoDB;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES ('Spring Break Nationals',11,'3/25/2006',3,'Daytona Beach, FL',2006),('Steel Valley Regionals',12,'5/20/2006',3,'Chester, WV',2006),('Bs Car Stereo',13,'7/16/2006',3,'South Amherst, OH',2006),('Xtremeblast.net',14,'7/29/2006',3,'Wampum, PA',2006),('DB Drag World Finals 2006',15,'10/14/2006',4,'Louisville, KY',2007);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventsold`
--

DROP TABLE IF EXISTS `eventsold`;
CREATE TABLE `eventsold` (
  `EventID` int(11) NOT NULL auto_increment,
  `EventName` text,
  `EventDate` text,
  `IsMulti` int(11) default NULL,
  PRIMARY KEY  (`EventID`)
) ENGINE=InnoDB;

--
-- Dumping data for table `eventsold`
--

LOCK TABLES `eventsold` WRITE;
/*!40000 ALTER TABLE `eventsold` DISABLE KEYS */;
INSERT INTO `eventsold` VALUES (1,'dB Drag Racing Association','March 25, 2006',3),(2,'Audio Maxx','May 19, 2006',1),(3,'Steel Valley Regional','May 20, 2006',3),(4,'Circuit City Burlington','May 14, 2006',1),(5,'Innovative Motorsports','June 17, 2006',1),(6,'T Rex Audio','June  3, 2006',1),(7,'Innovative Motorsports','July  9, 2006',1),(8,'Bs Car Stereo','July 16, 2006',3),(9,'Xtremeblast.net','July 29, 2006',3),(10,'T-Rex Audio','July 22, 2006',1),(11,'Innovative Motorsports','May 13, 2006',1),(12,'Innovative Motorsports','July  8, 2006',1),(13,'NOPI','September 16, 2006',3),(14,'dB Drag Racing Association','October  7, 2005',4),(15,'Auto Sound Express','January  1, 2006',NULL),(16,'USAudio','December 31, 2005',NULL),(17,'Supreme Audio','December 18, 2005',NULL),(18,'USAudio','April  1, 2006',NULL),(19,'Auto Sound Express','March 19, 2006',NULL),(20,'Installation Station','April  2, 2006',NULL),(21,'Border Motorsports','April  9, 2006',NULL),(22,'USAudio','May 13, 2006',NULL),(23,'Supreme Audio','August 13, 2006',NULL),(24,'Border Motorsports','May  7, 2006',NULL),(25,'Audio Outlaws','May 27, 2006',NULL),(26,'CN Sounds LLC','July 15, 2006',NULL),(27,'Big Boi Customs','August 12, 2006',NULL),(28,'Audio Advantage','August 25, 2006',NULL),(29,'Audio Advantage','September  1, 2006',NULL),(30,'Slamology','September  2, 2006',NULL),(31,'Circuit City','September 15, 2006',NULL),(32,'Pinnacle Electronics','March 19, 2006',NULL),(33,'K and A Kustom Audio','July 16, 2006',NULL),(34,'K and A Kustom Audio','August  6, 2006',NULL),(35,'K and A Kustom Audio','July  2, 2006',NULL),(36,'K and A Kustom Audio','September 10, 2006',NULL),(37,'K and A Kustom Audio','August 20, 2006',NULL),(38,'USACi / ASP','October 14, 2005',NULL),(39,'Performance Audio','August  5, 2006',NULL),(40,'Audio Plus','August 12, 2006',NULL),(41,'Loud n Clear','August 13, 2006',NULL),(42,'Autosound Inc.','September 16, 2006',NULL),(43,'H&K Audio','December 31, 2005',NULL),(44,'Hreha Reflections','January 15, 2006',NULL),(45,'Hreha Reflections','March  5, 2006',NULL),(46,'Hreha Reflections','February 12, 2006',NULL),(47,'The Andersons','June  3, 2006',NULL),(48,'Norwalk Raceway Park','June  7, 2006',NULL),(49,'H&K Audio','June 18, 2006',NULL),(50,'Audio Outlaws','July  8, 2006',NULL),(51,'Norwalk Raceway Park','July  5, 2006',NULL),(52,'HiFi Connection','July  9, 2006',NULL),(53,'Maxxsonics USA','June 24, 2006',NULL),(54,'SPLMAX','July  4, 2006',NULL),(55,'Best Buy','July 22, 2006',NULL),(56,'Norwalk Raceway Park','August  2, 2006',NULL),(57,'H&K Audio','August 13, 2006',NULL),(58,'Norwalk Raceway Park','August 30, 2006',NULL),(59,'Advanced Mobile Toys','August 26, 2006',NULL),(60,'Team Nutz Technology','September 10, 2006',NULL),(61,'Advanced Mobile Toys','August  4, 2006',NULL),(62,'Audio Outlaws','August  5, 2006',NULL),(63,'Springdale Fire Dept','April  8, 2006',NULL),(64,'Bills Glass & Audio','May 20, 2006',NULL),(65,'NW Audio','June  4, 2006',NULL),(66,'Gold Exchange & Pawn','July  9, 2006',NULL),(67,'Competitive Audio','July 14, 2006',NULL),(68,'JH Customs','July 15, 2006',NULL),(69,'Audio X Inc.','June 10, 2006',NULL),(70,'Stereo One','June 11, 2006',NULL),(71,'Border Motorsports','June  4, 2006',NULL),(72,'USAudio','September 16, 2006',NULL),(73,'Just Playin Car Audio','August  5, 2006',NULL),(74,'Standard Electronics','February  5, 2006',NULL),(75,'Tint Shop Autosports','February  4, 2006',NULL),(76,'Lawsons','February  3, 2006',NULL),(77,'Audio Extremes','May 21, 2006',NULL),(78,'Dave & Busters','April 30, 2006',NULL),(79,'Sound Solutions Inc.','July 29, 2006',NULL),(80,'Sound Solutions Inc.','September 16, 2006',NULL),(81,'Sound Solutions Inc.','November  5, 2005',NULL);
/*!40000 ALTER TABLE `eventsold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
CREATE TABLE `results` (
  `CompetitorID` int(11) NOT NULL,
  `EventID` int(11) default NULL,
  `Place` int(11) default NULL,
  `DBs` text,
  `Class` text,
  `Points` int(11) default NULL,
  `ResultID` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`ResultID`)
) ENGINE=InnoDB;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (7,11,1,'160.4','Super Street 1-2',8,14),(7,4,2,'159.3','Super Street 1-2',7,15),(7,2,2,'160','Super Street 1-2',7,16),(7,3,3,'161.2','Super Street 1-2',18,17),(7,6,1,'159.3','Super Street 1-2',8,18),(7,5,1,'160.1','Super Street 1-2',8,19),(7,12,1,'160.3','Super Street 1-2',8,20),(7,7,1,'159.2','Super Street 1-2',8,21),(7,8,1,'161.3','Super Street 1-2',24,22),(7,10,1,'160.4','Super Street 1-2',8,23),(7,13,3,'152.9','Super Street 1-2',18,24),(3,14,8,'152','Street C',4,36),(3,1,4,'151.6','Street C',15,37),(3,11,1,'147.3','Street C',8,38),(3,4,1,'151.7','Street C',8,39),(3,2,1,'151.4','Street C',8,40),(3,3,2,'151.9','Street C',21,41),(3,25,2,'150.9','Street C',7,42),(3,5,1,'151.2','Street C',8,43),(3,26,4,'154.1','Street Max 1-2',15,44),(3,9,2,'151.5','Street C',21,45),(3,27,2,'151.8','Street C',7,46),(3,28,1,'152.6','Street C',8,47),(3,29,1,'149.8','Street C',8,48),(3,30,1,'152.2','Street C',24,49),(3,31,1,'154.5','Street C',8,50),(3,13,1,'154','Street C',24,51),(4,14,1,'167.8','Super Street 5+',32,52),(4,32,1,'166.6','Super Street 5+',16,53),(4,1,2,'163.3','Super Street 5+',21,54),(4,2,1,'161.6','Super Street 5+',8,55),(4,3,1,'166.3','Super Street 5+',24,56),(4,4,1,'166','Super Street 5+',8,57),(4,13,1,'167','Super Street 5+',24,58),(4,31,1,'165.4','Super Street 5+',8,59),(5,14,6,'162.5','Super Street 1-2',12,60),(5,32,1,'162.1','Super Street 1-2',16,61),(5,1,2,'164.1','Super Street 1-2',21,62),(5,2,1,'160.1','Super Street 1-2',8,63),(5,3,2,'164.3','Super Street 1-2',21,64),(5,11,2,'162.1','Super Street 1-2',7,65),(5,4,1,'162','Super Street 1-2',8,66),(5,9,1,'164.8','Super Street 1-2',24,67),(5,13,1,'164.8','Super Street 1-2',24,68),(5,31,1,'162','Super Street 1-2',8,69),(6,14,8,'154.3','Super Street 1-2 Nw',4,70),(6,2,1,'153.3','Super Street 1-2 Nw',8,71),(6,3,1,'154.4','Super Street 1-2 Nw',24,72),(6,9,2,'153.9','Super Street 1-2 Nw',21,73),(6,33,1,'152.9','Super Street 1-2 NW',8,74),(6,34,1,'153.5','Super Street 1-2 Nw',8,75),(6,35,1,'153.7','Super Street 1-2 Nw',8,76),(6,36,1,'153.9','Super Street 1+',8,77),(6,37,1,'153.5','Super Street 1-2 Nw',8,78),(8,14,1,'158','Street C',32,79),(8,38,1,'158.5','Street C',24,80),(8,39,1,'152.2','Street B',8,81),(8,40,1,'153.1','Street B',8,82),(8,41,1,'154.1','Street B',24,83),(8,42,1,'154.7','Street A',16,84),(9,43,1,'152.2','Street C',8,85),(9,44,1,'153.8','Street C',8,86),(9,45,1,'154.6','Street C',8,87),(9,46,1,'152.5','Street C',8,88),(9,1,2,'154.3','Street C',21,89),(9,2,2,'155.1','Street C',7,90),(9,3,1,'156.5','Street C',24,91),(9,47,1,'156.5','Street C',8,92),(9,25,1,'156.7','Street C',8,93),(9,48,1,'156.6','Street C',8,94),(9,49,1,'156.9','Street C',24,95),(9,50,1,'157.2','Street C',8,96),(9,51,1,'156.9','Street C',8,97),(9,52,1,'156.9','Street C',16,98),(9,53,1,'156.9','Street C',24,99),(9,54,1,'157.1','Street C',8,100),(9,8,1,'154.9','Street C',24,101),(9,55,1,'156.6','Street C',16,102),(9,9,1,'157.1','Street C',24,103),(9,56,1,'157.1','Street C',8,104),(9,57,1,'156.8','Street C',16,105),(9,27,1,'156.7','Street C',8,106),(9,58,1,'156.7','Street C',8,107),(9,59,1,'156.7','Street C',8,108),(9,60,1,'156.7','Street C',16,109),(9,61,1,'157','Street C',8,110),(9,62,1,'156.9','Street C',8,111),(10,14,3,'161.1','Super Street 1-2 Nw',24,112),(10,63,1,'147.2','Super Street 1-2 Nw',24,113),(10,64,1,'161.4','Super Street 1-2 Nw',16,114),(10,65,2,'159.8','Super Street 1-2',21,115),(10,53,3,'162.9','Super Street 1-2',18,116),(10,66,1,'164','Super Street 1-2',8,117),(10,67,1,'164.6','Super Street 1-2',8,118),(10,68,1,'164.6','Super Street 1-2',16,119),(11,14,2,'166.4','Super Street 5+',28,120),(11,38,1,'167.2','Super Street 5+',24,121),(11,69,2,'139.3','Super Street 3-4',21,122),(11,70,1,'140.6','Super Street 5+',16,123),(12,14,3,'169.7','Extreme 2',24,124),(12,16,1,'176','Extreme 1',8,125),(12,18,1,'175.5','Extreme 1',8,126),(12,21,1,'175.6','Extreme 1',24,127),(12,22,1,'156.3','Extreme 2',8,128),(12,71,1,'140.4','Extreme 1',8,129),(12,72,1,'176.6','Extreme 1',16,130),(13,14,1,'173.8','Extreme 2',32,131),(13,38,1,'175.5','Extreme 2',24,132),(14,14,1,'175.4','Extreme 3-4',32,133),(14,38,1,'176.4','Extreme 3-4',24,134),(14,17,1,'176.5','Extreme 3-4',24,135),(14,1,1,'176.3','Extreme 3-4',24,136),(15,14,1,'178','Extreme 5+',32,137),(15,38,1,'179','Extreme 5+',24,138),(15,3,1,'179.4','Extreme 5+',24,139),(17,1,3,'150.5','Street B',18,140),(17,3,6,'151.3','Street B',9,141),(17,4,1,'151.6','Street B',8,142),(17,6,1,'150.9','Street B',8,143),(17,12,1,'151.6','Street B',8,144),(17,7,1,'151.5','Street B',8,145),(17,10,1,'151.4','Street B',8,146),(17,73,1,'152.4','Street B',8,147),(17,34,1,'151.5','Street B',8,148),(19,14,4,'163.1','Super Street 1-2',20,149),(19,38,1,'161.4','Super Street 1-2',24,150),(19,1,1,'162.7','Super Street 1-2',24,151),(19,64,1,'163.7','Super Street 1-2',16,152),(19,65,1,'164.9','Super Street 1-2',24,153),(19,68,2,'162.7','Super Street 1-2',14,154),(20,74,1,'150','Street B',8,155),(20,75,1,'151','Street B',8,156),(20,76,2,'151.4','Street B',7,157),(20,32,1,'153.5','Street B',16,158),(20,1,1,'154.1','Street B',24,159),(20,77,1,'154','Street B',8,160),(20,78,2,'154.2','Street B',7,161),(20,69,1,'155','Street B',24,162),(20,70,2,'155.2','Street B',14,163),(20,79,1,'154.1','Street B',8,164),(20,80,1,'150.2','Street B',8,165),(21,81,1,'150.2','Street A',16,166),(21,32,1,'152.5','Street A',16,167),(21,1,1,'153.4','Street A',24,168),(21,77,1,'153.1','Street A',8,169),(21,69,1,'153.6','Street A',24,170),(21,70,1,'153.9','Street A',16,171),(21,79,1,'153.2','Street A',8,172),(21,80,1,'152.9','Street A',8,173),(2,1,3,'149.9','Street A',18,174),(2,2,6,'148.7','Street A',3,175),(2,3,7,'148.3','Street A',6,176),(2,4,1,'147.5','Street A',8,177),(2,5,1,'148','Street A',8,178),(2,6,1,'144.6','Street A',8,179),(2,7,1,'147.2','Street A',8,180),(2,8,4,'147.7','Super Street 1-2',15,181),(2,9,3,'148.4','Super Street 1-2 Nw',18,182),(2,10,1,'146.9','Street A',8,183),(1,14,1,'154.3','Street A',32,184),(1,15,1,'154.5','Street A',8,185),(1,16,1,'154.5','Street A',8,186),(1,17,1,'154.2','Street A',24,187),(1,18,1,'154.8','Street A',8,188),(1,19,1,'154.7','Street A',8,189),(1,20,1,'154.5','Street A',16,190),(1,21,1,'154.7','Street A',24,191),(1,22,1,'128.9','Extreme 3-4',8,192),(1,23,1,'156.1','Street B',8,193),(1,24,1,'154.8','Street B',8,194),(27,4,1,'153.5','Super Street 1-2 Nw',8,197);
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `TeamID` int(11) NOT NULL,
  `Member1` bigint(40) default NULL,
  `Member2` bigint(40) default NULL,
  `Member3` bigint(40) default NULL,
  `Member4` bigint(40) default NULL,
  `Member5` bigint(40) default NULL,
  `totalSalary` int(11) default NULL,
  PRIMARY KEY  (`TeamID`)
) ENGINE=InnoDB;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (7,52,138,95,87,113,0),(19,168,108,174,28,33,0),(20,95,100,175,28,30,0),(21,142,2,23,999,190,0),(22,104,209,87,NULL,172,0),(23,165,170,101,180,182,0),(24,129,46,66,87,30,0),(25,166,168,30,100,194,0);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `UserName` text NOT NULL,
  `TeamID` int(11) NOT NULL auto_increment,
  `UserEmail` text NOT NULL,
  `UserPassword` text NOT NULL,
  `UserIM` text,
  `ScoreYTD` int(11) default NULL,
  PRIMARY KEY  (`TeamID`)
) ENGINE=InnoDB;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('scott',7,'scott@scott.com','pass','scoot',NULL),('jdizzle',19,'jdizzle@dizz.com','pass','jdizzer',NULL),('scoots',20,'scoots','scoots','scoots',NULL),('scottsux',21,'pappachris@gmail.com','scottsux','plzdontsendmespam',NULL),('me',22,'me','me','me',NULL),('97cavy',23,'foxcrew15@aol.com','marty','foxcrew15',NULL),('MK3XXX',24,'standard_3@hotmail.com','scottisgay','lite310',NULL),('lilley809',25,'lilley809@gmail.com','scottsageek','lilley809',NULL);
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

-- Dump completed on 2007-03-04 18:23:36
