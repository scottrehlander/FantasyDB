-- phpMyAdmin SQL Dump
-- version 2.6.4-pl3
-- http://www.phpmyadmin.net
-- 
-- Host: db550.perfora.net
-- Generation Time: Mar 28, 2007 at 06:59 PM
-- Server version: 4.0.27
-- PHP Version: 4.3.10-200.schlund.1
-- 
-- Database: `db199011162`
-- 
--CREATE DATABASE `db199011162`;
--USE db199011162;

-- --------------------------------------------------------

-- 
-- Table structure for table `competitors`
-- 

CREATE TABLE `competitors` (
  `CompetitorName` text NOT NULL,
  `YearlySalary` bigint(20) default NULL,
  `Class` text,
  `ScoreYTD` int(11) default NULL,
  `CompetitorID` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`CompetitorID`)
) TYPE=InnoDB AUTO_INCREMENT=400 ;

-- 
-- Dumping data for table `competitors`
-- 

INSERT INTO `competitors` VALUES ('Jay Odom', 30888, 'Street A', NULL, 28);
INSERT INTO `competitors` VALUES ('James Herren', 58219, 'Street A', NULL, 29);
INSERT INTO `competitors` VALUES ('Scott Rehlander', 17512, 'Street A', NULL, 30);
INSERT INTO `competitors` VALUES ('Simon Ziegelbauer', 6088, 'Street A', NULL, 31);
INSERT INTO `competitors` VALUES ('Michael Nauta', 13919, 'Street A', NULL, 32);
INSERT INTO `competitors` VALUES ('Chip Hallman', 5212, 'Street A', NULL, 33);
INSERT INTO `competitors` VALUES ('Tony Rivera', 3005, 'Street A', NULL, 34);
INSERT INTO `competitors` VALUES ('Kin Santos', 2298, 'Street A', NULL, 35);
INSERT INTO `competitors` VALUES ('Terry Jackson', 30836, 'Street B', NULL, 36);
INSERT INTO `competitors` VALUES ('WCA Carlton', 23129, 'Street B', NULL, 37);
INSERT INTO `competitors` VALUES ('Thomas Inserra', 13421, 'Street B', NULL, 38);
INSERT INTO `competitors` VALUES ('Sound Mekanix - Street A', 6998, 'Street B', NULL, 39);
INSERT INTO `competitors` VALUES ('Casey Sullivan', 5752, 'Street B', NULL, 40);
INSERT INTO `competitors` VALUES ('Ivan Rodriguez', 4329, 'Street B', NULL, 41);
INSERT INTO `competitors` VALUES ('Brian Stokes', 38622, 'Street B', NULL, 42);
INSERT INTO `competitors` VALUES ('Alex Kish', 2376, 'Street B', NULL, 43);
INSERT INTO `competitors` VALUES ('Kevin Koller', 56453, 'Street C', NULL, 44);
INSERT INTO `competitors` VALUES ('Jose Ortega', 8245, 'Street C', NULL, 45);
INSERT INTO `competitors` VALUES ('Toby Newton', 67538, 'Street C', NULL, 46);
INSERT INTO `competitors` VALUES ('Steve Nelson', 6076, 'Street C', NULL, 47);
INSERT INTO `competitors` VALUES ('Robert McGee', 5369, 'Street C', NULL, 48);
INSERT INTO `competitors` VALUES ('Steven Tyler', 3407, 'Street C', NULL, 49);
INSERT INTO `competitors` VALUES ('Billy Hurly', 3238, 'Street C', NULL, 50);
INSERT INTO `competitors` VALUES ('Cactus Sounds', 30031, 'Street Max 1-2', NULL, 51);
INSERT INTO `competitors` VALUES ('David Montgomery', 44324, 'Street Max 1-2', NULL, 52);
INSERT INTO `competitors` VALUES ('Chad Tyler', 19448, 'Street Max 1-2', NULL, 53);
INSERT INTO `competitors` VALUES ('Barry Cook', 10486, 'Street Max 1-2', NULL, 54);
INSERT INTO `competitors` VALUES ('Bubba Webber', 5779, 'Street Max 1-2', NULL, 55);
INSERT INTO `competitors` VALUES ('John Eason Jr.', 5071, 'Street Max 1-2', NULL, 56);
INSERT INTO `competitors` VALUES ('Randy Dickerson', 3648, 'Street Max 1-2', NULL, 57);
INSERT INTO `competitors` VALUES ('George Fann', 2941, 'Street Max 1-2', NULL, 58);
INSERT INTO `competitors` VALUES ('Team 420 - Jesse', 46233, 'Street Max 3-4', NULL, 59);
INSERT INTO `competitors` VALUES ('Miranda Jackson', 31272, 'Street Max 3-4', NULL, 60);
INSERT INTO `competitors` VALUES ('Team Nutz', 43564, 'Street Max 3-4', NULL, 61);
INSERT INTO `competitors` VALUES ('Broken Silence - Biggie', 42857, 'Street Max 3-4', NULL, 62);
INSERT INTO `competitors` VALUES ('Noizy Toyz - Miguel', 31150, 'Street Max 3-4', NULL, 63);
INSERT INTO `competitors` VALUES ('Team Kryptonite', 4188, 'Street Max 3-4', NULL, 64);
INSERT INTO `competitors` VALUES ('Danny Britain', 30481, 'Super Street 1-2', NULL, 65);
INSERT INTO `competitors` VALUES ('Team 420 - Rooney', 44019, 'Super Street 1-2', NULL, 66);
INSERT INTO `competitors` VALUES ('Ashley Eason', 16350, 'Super Street 1-2', NULL, 67);
INSERT INTO `competitors` VALUES ('Team T&T', 6643, 'Super Street 1-2', NULL, 68);
INSERT INTO `competitors` VALUES ('Joseph Hedden', 29936, 'Super Street 1-2', NULL, 69);
INSERT INTO `competitors` VALUES ('Chris McVay', 11474, 'Super Street 1-2', NULL, 70);
INSERT INTO `competitors` VALUES ('Noizy Toyz - Andrae', 3267, 'Super Street 1-2', NULL, 71);
INSERT INTO `competitors` VALUES ('Kyle Anderson', 2805, 'Super Street 1-2', NULL, 72);
INSERT INTO `competitors` VALUES ('John Mulcahy', 36136, 'Super Street 1-2 Nw', NULL, 73);
INSERT INTO `competitors` VALUES ('Team Riles', 11390, 'Super Street 1-2 Nw', NULL, 74);
INSERT INTO `competitors` VALUES ('New Wave Audio', 8967, 'Super Street 1-2 Nw', NULL, 75);
INSERT INTO `competitors` VALUES ('Matthew Williams', 25260, 'Super Street 1-2 Nw', NULL, 76);
INSERT INTO `competitors` VALUES ('Robert Morning', 5052, 'Super Street 1-2 Nw', NULL, 77);
INSERT INTO `competitors` VALUES ('Gorman Cassidy', 45345, 'Super Street 3-4', NULL, 78);
INSERT INTO `competitors` VALUES ('Ben Sams', 26422, 'Super Street 3-4', NULL, 79);
INSERT INTO `competitors` VALUES ('Carlos Rodriguez', 29176, 'Super Street 3-4', NULL, 80);
INSERT INTO `competitors` VALUES ('Pro Truck Accessories', 28469, 'Super Street 3-4', NULL, 81);
INSERT INTO `competitors` VALUES ('Rad Bolt', 5800, 'Super Street 3-4', NULL, 82);
INSERT INTO `competitors` VALUES ('Edgar Calderon', 5338, 'Super Street 3-4', NULL, 83);
INSERT INTO `competitors` VALUES ('Joey Chobot', 13131, 'Super Street 3-4', NULL, 84);
INSERT INTO `competitors` VALUES ('Robert Stephens', 26424, 'Super Street 3-4', NULL, 85);
INSERT INTO `competitors` VALUES ('Steve Cook', 60000, 'Super Street 5+', NULL, 86);
INSERT INTO `competitors` VALUES ('Bob Perillo', 50000, 'Super Street 5+', NULL, 87);
INSERT INTO `competitors` VALUES ('Neill Barber', 8000, 'Super Street 5+', NULL, 88);
INSERT INTO `competitors` VALUES ('Daniel Echt Jr.', 7255, 'Super Street 5+', NULL, 89);
INSERT INTO `competitors` VALUES ('Team Dreamscape - Devin', 5586, 'Super Street 5+', NULL, 90);
INSERT INTO `competitors` VALUES ('Donell Fonville', 5417, 'Super Street 5+', NULL, 91);
INSERT INTO `competitors` VALUES ('Justin Baird', 3209, 'Super Street 5+', NULL, 92);
INSERT INTO `competitors` VALUES ('David Tapia', 2748, 'Super Street 5+', NULL, 93);
INSERT INTO `competitors` VALUES ('Team Neo - Mike', 96040, 'Street C', NULL, 94);
INSERT INTO `competitors` VALUES ('Mark Holbrook', 39333, 'Extreme 1', NULL, 95);
INSERT INTO `competitors` VALUES ('Bruce Dressel', 10910, 'Extreme 1', NULL, 96);
INSERT INTO `competitors` VALUES ('Scott Van Riper', 26202, 'Extreme 2', NULL, 97);
INSERT INTO `competitors` VALUES ('Geoff Eberly', 46241, 'Extreme 2', NULL, 98);
INSERT INTO `competitors` VALUES ('Team Fusion Car Audio', 38533, 'Extreme 3-4', NULL, 99);
INSERT INTO `competitors` VALUES ('Chris Norris', 41826, 'Extreme 3-4', NULL, 100);
INSERT INTO `competitors` VALUES ('Edge Audio', 31119, 'Extreme 5+', NULL, 101);
INSERT INTO `competitors` VALUES ('Tim Heath', 50695, 'Extreme 5+', NULL, 102);
INSERT INTO `competitors` VALUES ('Team SPL Bank - Scott', 25988, 'Street A', NULL, 103);
INSERT INTO `competitors` VALUES ('Team Shocker - Bill', 26281, 'Street A', NULL, 104);
INSERT INTO `competitors` VALUES ('Team Neo - Eric', 49074, 'Street A', NULL, 105);
INSERT INTO `competitors` VALUES ('Team Flatline', 16612, 'Street A', NULL, 106);
INSERT INTO `competitors` VALUES ('Yuli Shumsky', 6443, 'Street A', NULL, 107);
INSERT INTO `competitors` VALUES ('Team ChrisMel', 13197, 'Street A', NULL, 108);
INSERT INTO `competitors` VALUES ('Bill Lolo', 2774, 'Street A', NULL, 109);
INSERT INTO `competitors` VALUES ('Team Neo - Vernon', 83528, 'Street B', NULL, 110);
INSERT INTO `competitors` VALUES ('Team SPL Bank', 16067, 'Street B', NULL, 111);
INSERT INTO `competitors` VALUES ('Terry Brocks 2', 24359, 'Street B', NULL, 112);
INSERT INTO `competitors` VALUES ('Jason Hardie', 12152, 'Street B', NULL, 113);
INSERT INTO `competitors` VALUES ('Les Kostuch', 6229, 'Street B', NULL, 114);
INSERT INTO `competitors` VALUES ('Jeremy Keith', 40021, 'Street B', NULL, 115);
INSERT INTO `competitors` VALUES ('Team Pop Rocks', 11560, 'Street C', NULL, 116);
INSERT INTO `competitors` VALUES ('Jared Williams', 6852, 'Street C', NULL, 117);
INSERT INTO `competitors` VALUES ('Car Audio Unlimited', 6145, 'Street C', NULL, 118);
INSERT INTO `competitors` VALUES ('Brendon Solarz', 4183, 'Street C', NULL, 119);
INSERT INTO `competitors` VALUES ('Cory Hoskins', 19476, 'Street C', NULL, 120);
INSERT INTO `competitors` VALUES ('Team Livewire', 54014, 'Street Max 1-2', NULL, 121);
INSERT INTO `competitors` VALUES ('Mike Rohrbach', 31307, 'Street Max 1-2', NULL, 122);
INSERT INTO `competitors` VALUES ('Jay Thomson', 79100, 'Street Max 1-2', NULL, 123);
INSERT INTO `competitors` VALUES ('Team Emax', 6262, 'Street Max 1-2', NULL, 124);
INSERT INTO `competitors` VALUES ('Nathan Potter', 5555, 'Street Max 1-2', NULL, 125);
INSERT INTO `competitors` VALUES ('Mike Fallon', 32093, 'Street Max 3-4', NULL, 126);
INSERT INTO `competitors` VALUES ('Steve Mick', 32386, 'Street Max 3-4', NULL, 127);
INSERT INTO `competitors` VALUES ('Team Walrus', 15424, 'Super Street 1-2', NULL, 128);
INSERT INTO `competitors` VALUES ('Jared Horton', 35717, 'Super Street 1-2', NULL, 129);
INSERT INTO `competitors` VALUES ('Hreha Reflections', 26009, 'Super Street 1-2', NULL, 130);
INSERT INTO `competitors` VALUES ('Team USAudio', 7302, 'Super Street 1-2', NULL, 131);
INSERT INTO `competitors` VALUES ('Will Perez', 17879, 'Super Street 1-2 Nw', NULL, 132);
INSERT INTO `competitors` VALUES ('Team Livewire - Gene', 10633, 'Super Street 1-2 Nw', NULL, 133);
INSERT INTO `competitors` VALUES ('Team Sound Xtreme', 8926, 'Super Street 1-2 Nw', NULL, 134);
INSERT INTO `competitors` VALUES ('Eric Winter', 31464, 'Super Street 1-2 Nw', NULL, 135);
INSERT INTO `competitors` VALUES ('Dr. Matthew Miller', 25257, 'Super Street 3-4', NULL, 136);
INSERT INTO `competitors` VALUES ('Randy Kubek', 11333, 'Super Street 5+', NULL, 137);
INSERT INTO `competitors` VALUES ('Sodda Pop Kid', 17088, 'Extreme 3-4', NULL, 138);
INSERT INTO `competitors` VALUES ('Advanced Mobile Toys', 29126, 'Street A', NULL, 139);
INSERT INTO `competitors` VALUES ('Jeff Brown', 18419, 'Street A', NULL, 140);
INSERT INTO `competitors` VALUES ('Joseph Ault Sr.', 6712, 'Street A', NULL, 141);
INSERT INTO `competitors` VALUES ('Team Urban ArtFx - Percy', 10288, 'Street A', NULL, 142);
INSERT INTO `competitors` VALUES ('Sound Decision - Mike', 28043, 'Street B', NULL, 143);
INSERT INTO `competitors` VALUES ('Jason Fantzdomingo', 6166, 'Street B', NULL, 144);
INSERT INTO `competitors` VALUES ('Jeramie Blake', 4952, 'Street B', NULL, 145);
INSERT INTO `competitors` VALUES ('Robert Birkhimer', 3445, 'Street B', NULL, 146);
INSERT INTO `competitors` VALUES ('Sound Decision - Alex', 16062, 'Street C', NULL, 147);
INSERT INTO `competitors` VALUES ('Steven Ignacek', 13017, 'Street C', NULL, 148);
INSERT INTO `competitors` VALUES ('Brian Kasper', 19140, 'Street Max 1-2', NULL, 149);
INSERT INTO `competitors` VALUES ('Dennis Barrett', 6519, 'Street Max 1-2', NULL, 150);
INSERT INTO `competitors` VALUES ('Sam Snowden', 5926, 'Street Max 1-2', NULL, 151);
INSERT INTO `competitors` VALUES ('Andy Brown', 10012, 'Street Max 3-4', NULL, 152);
INSERT INTO `competitors` VALUES ('Curt Elgensee', 9381, 'Super Street 1-2', NULL, 153);
INSERT INTO `competitors` VALUES ('Eric Klypchak', 6005, 'Super Street 1-2', NULL, 154);
INSERT INTO `competitors` VALUES ('Jack Thomas', 15090, 'Super Street 1-2 Nw', NULL, 155);
INSERT INTO `competitors` VALUES ('Big Oso', 36214, 'Super Street 1-2 Nw', NULL, 156);
INSERT INTO `competitors` VALUES ('Team Shocker - Rodney', 15790, 'Super Street 3-4', NULL, 157);
INSERT INTO `competitors` VALUES ('Chris Harms', 23545, 'Super Street 3-4', NULL, 158);
INSERT INTO `competitors` VALUES ('Ric Balmert', 6838, 'Super Street 3-4', NULL, 159);
INSERT INTO `competitors` VALUES ('Dan Bates', 6376, 'Super Street 3-4', NULL, 160);
INSERT INTO `competitors` VALUES ('Ed Gardner', 5245, 'Super Street 3-4', NULL, 161);
INSERT INTO `competitors` VALUES ('Eric Lane', 25038, 'Super Street 5+', NULL, 162);
INSERT INTO `competitors` VALUES ('Greg Zoller', 26292, 'Super Street 5+', NULL, 163);
INSERT INTO `competitors` VALUES ('John Hrabik', 16869, 'Super Street 5+', NULL, 164);
INSERT INTO `competitors` VALUES ('Alan Dante', 15623, 'Extreme 1', NULL, 165);
INSERT INTO `competitors` VALUES ('Team XS SPL - Deron', 25200, 'Extreme 1', NULL, 166);
INSERT INTO `competitors` VALUES ('Team Two - Beau', 22454, 'Extreme 1', NULL, 167);
INSERT INTO `competitors` VALUES ('Eric Parsley', 5247, 'Extreme 1', NULL, 168);
INSERT INTO `competitors` VALUES ('Team EH', 20324, 'Extreme 1', NULL, 169);
INSERT INTO `competitors` VALUES ('Edge Audio - Kyle', 16078, 'Extreme 2', NULL, 170);
INSERT INTO `competitors` VALUES ('Fred Wright Jr.', 9240, 'Extreme 2', NULL, 171);
INSERT INTO `competitors` VALUES ('Team Organized Noize - Keith', 20864, 'Extreme 2', NULL, 172);
INSERT INTO `competitors` VALUES ('Extreme Audio', 15733, 'Extreme 3-4', NULL, 173);
INSERT INTO `competitors` VALUES ('Team XS SPL - Roger', 10111, 'Extreme 3-4', NULL, 174);
INSERT INTO `competitors` VALUES ('Danny Hays', 9481, 'Extreme 3-4', NULL, 175);
INSERT INTO `competitors` VALUES ('Extreme Sound - Danielle', 6104, 'Extreme 5+', NULL, 176);
INSERT INTO `competitors` VALUES ('Craig Butler', 14435, 'Extreme 5+', NULL, 177);
INSERT INTO `competitors` VALUES ('Team XS SPL - Tuan', 15059, 'Street A', NULL, 178);
INSERT INTO `competitors` VALUES ('Ryan Ferguson', 24428, 'Street A', NULL, 179);
INSERT INTO `competitors` VALUES ('Terry Brocks', 5514, 'Street A', NULL, 180);
INSERT INTO `competitors` VALUES ('Brad Firgard', 30430, 'Street B', NULL, 181);
INSERT INTO `competitors` VALUES ('Thee Michael Hughes', 51300, 'Street B', NULL, 182);
INSERT INTO `competitors` VALUES ('Sound Check', 44885, 'Street B', NULL, 183);
INSERT INTO `competitors` VALUES ('Jeff Stanford', 18216, 'Street B', NULL, 184);
INSERT INTO `competitors` VALUES ('Jeremiah Ledgerwood', 32292, 'Street C', NULL, 185);
INSERT INTO `competitors` VALUES ('Brandon Nelsen', 17916, 'Street C', NULL, 186);
INSERT INTO `competitors` VALUES ('Team James Carnes', 22002, 'Street Max 1-2', NULL, 187);
INSERT INTO `competitors` VALUES ('Mike Makus', 23833, 'Street Max 1-2', NULL, 188);
INSERT INTO `competitors` VALUES ('High Output Audio', 30749, 'Street Max 3-4', NULL, 189);
INSERT INTO `competitors` VALUES ('Geoff Cayemberg', 38080, 'Street Max 3-4', NULL, 190);
INSERT INTO `competitors` VALUES ('Jordan Martin', 5780, 'Street Max 3-4', NULL, 191);
INSERT INTO `competitors` VALUES ('Justin Thornton', 35366, 'Street Max 3-4', NULL, 192);
INSERT INTO `competitors` VALUES ('Team H&K - Jesse', 18990, 'Street Max 3-4', NULL, 193);
INSERT INTO `competitors` VALUES ('Team Budweiser', 48614, 'Super Street 1-2', NULL, 194);
INSERT INTO `competitors` VALUES ('Border Motorsports 2', 25776, 'Super Street 1-2', NULL, 195);
INSERT INTO `competitors` VALUES ('Team XS SPL - Jeffrey', 6399, 'Super Street 1-2', NULL, 196);
INSERT INTO `competitors` VALUES ('Brad Eubank', 45023, 'Super Street 1-2', NULL, 197);
INSERT INTO `competitors` VALUES ('Team SKS', 4392, 'Super Street 1-2', NULL, 198);
INSERT INTO `competitors` VALUES ('Alan Laake', 15723, 'Super Street 1-2 Nw', NULL, 199);
INSERT INTO `competitors` VALUES ('William Collier', 26016, 'Super Street 1-2 Nw', NULL, 200);
INSERT INTO `competitors` VALUES ('Jason Meyer', 24178, 'Super Street 1-2 Nw', NULL, 201);
INSERT INTO `competitors` VALUES ('Team XS SPL - Rolando', 20509, 'Super Street 1-2 Nw', NULL, 202);
INSERT INTO `competitors` VALUES ('Matt Chilcote', 23095, 'Super Street 1-2 Nw', NULL, 203);
INSERT INTO `competitors` VALUES ('Team BK', 3295, 'Super Street 1-2 Nw', NULL, 204);
INSERT INTO `competitors` VALUES ('Rusty Flowers', 24173, 'Super Street 3-4', NULL, 205);
INSERT INTO `competitors` VALUES ('Team NWA', 4797, 'Super Street 3-4', NULL, 206);
INSERT INTO `competitors` VALUES ('Terry Francis', 18666, 'Super Street 3-4', NULL, 207);
INSERT INTO `competitors` VALUES ('Team New York - 1', 3252, 'Super Street 3-4', NULL, 208);
INSERT INTO `competitors` VALUES ('Scottie Johnson', 18452, 'Super Street 5+', NULL, 209);
INSERT INTO `competitors` VALUES ('The Radio Doctor - Matt', 51037, 'Super Street 5+', NULL, 210);
INSERT INTO `competitors` VALUES ('Team CE Audio', 18661, 'Super Street 5+', NULL, 211);
INSERT INTO `competitors` VALUES ('Team Stereo One - Brad', 38530, 'Super Street 5+', NULL, 212);
INSERT INTO `competitors` VALUES ('Team SPM', 16361, 'Street B', NULL, 213);
INSERT INTO `competitors` VALUES ('Team Trendsetters - TJ', 11116, 'Street C', NULL, 214);
INSERT INTO `competitors` VALUES ('Jacob Marrs', 8023, 'Street C', NULL, 215);
INSERT INTO `competitors` VALUES ('WillB Smoove', 15071, 'Street Max 1-2', NULL, 216);
INSERT INTO `competitors` VALUES ('Stephen Fisher', 15478, 'Super Street 1-2', NULL, 217);
INSERT INTO `competitors` VALUES ('Kyle Aronow', 11356, 'Super Street 1-2', NULL, 218);
INSERT INTO `competitors` VALUES ('Broken Silence - Gabe', 10980, 'Super Street 1-2 Nw', NULL, 219);
INSERT INTO `competitors` VALUES ('Kevin Ecker', 15849, 'Mini Street 1', NULL, 220);
INSERT INTO `competitors` VALUES ('Trent Martin', 10473, 'Mini Street 1', NULL, 221);
INSERT INTO `competitors` VALUES ('Robbie Hensley', 15342, 'Mini Street 2', NULL, 222);
INSERT INTO `competitors` VALUES ('Sean Iles', 11466, 'Mini Street 2', NULL, 223);
INSERT INTO `competitors` VALUES ('Team Shedluv', 32090, 'Street A', NULL, 224);
INSERT INTO `competitors` VALUES ('Street Beatz 1', 25175, 'Street A', NULL, 225);
INSERT INTO `competitors` VALUES ('Bruce Ogden', 16299, 'Street B', NULL, 226);
INSERT INTO `competitors` VALUES ('Tim Dougherty', 21168, 'Street B', NULL, 227);
INSERT INTO `competitors` VALUES ('Dan Breeden', 8499, 'Street B', NULL, 228);
INSERT INTO `competitors` VALUES ('Ed Bausman', 6254, 'Street B', NULL, 229);
INSERT INTO `competitors` VALUES ('Nick Pound', 30416, 'Street C', NULL, 230);
INSERT INTO `competitors` VALUES ('Street Beatz 4', 30285, 'Street Max 3-4', NULL, 231);
INSERT INTO `competitors` VALUES ('Troy Wojciechowski', 20870, 'Street A', NULL, 232);
INSERT INTO `competitors` VALUES ('Paul Clements', 9032, 'Street A', NULL, 233);
INSERT INTO `competitors` VALUES ('Dan Hadley', 7194, 'Street A', NULL, 234);
INSERT INTO `competitors` VALUES ('Christopher Hill', 23818, 'Street B', NULL, 235);
INSERT INTO `competitors` VALUES ('Jeff Sinotte', 7404, 'Street B', NULL, 236);
INSERT INTO `competitors` VALUES ('Kyle Rex', 6273, 'Street B', NULL, 237);
INSERT INTO `competitors` VALUES ('Chris Beck', 4604, 'Street B', NULL, 238);
INSERT INTO `competitors` VALUES ('Joe Hartwig', 3813, 'Street B', NULL, 239);
INSERT INTO `competitors` VALUES ('Adam Randt', 2144, 'Street B', NULL, 240);
INSERT INTO `competitors` VALUES ('Advanced Spl - Dave', 16268, 'Street C', NULL, 241);
INSERT INTO `competitors` VALUES ('Cher Her', 10599, 'Street C', NULL, 242);
INSERT INTO `competitors` VALUES ('Tye Hartwell', 23892, 'Street C', NULL, 243);
INSERT INTO `competitors` VALUES ('Joe Puhl', 7299, 'Street C', NULL, 244);
INSERT INTO `competitors` VALUES ('Weston Eslinger', 5385, 'Street C', NULL, 245);
INSERT INTO `competitors` VALUES ('Wuarez Jackson', 4254, 'Street C', NULL, 246);
INSERT INTO `competitors` VALUES ('Trevor Zeller', 16294, 'Street Max 1-2', NULL, 247);
INSERT INTO `competitors` VALUES ('Jeremy Mizorek', 10996, 'Street Max 1-2', NULL, 248);
INSERT INTO `competitors` VALUES ('Mike Miller', 9028, 'Street Max 1-2', NULL, 249);
INSERT INTO `competitors` VALUES ('Leon Dixon', 10113, 'Street Max 3-4', NULL, 250);
INSERT INTO `competitors` VALUES ('Darek Stuber', 9237, 'Street Max 3-4', NULL, 251);
INSERT INTO `competitors` VALUES ('Team Sounds & Motion', 16106, 'Super Street 1-2', NULL, 252);
INSERT INTO `competitors` VALUES ('June Delacruz', 10192, 'Super Street 1-2', NULL, 253);
INSERT INTO `competitors` VALUES ('Ryan Jacobs', 9023, 'Super Street 1-2', NULL, 254);
INSERT INTO `competitors` VALUES ('Mathew Korth', 7315, 'Super Street 1-2', NULL, 255);
INSERT INTO `competitors` VALUES ('Kyle Lepinsky', 5939, 'Super Street 1-2', NULL, 256);
INSERT INTO `competitors` VALUES ('Seth Scholl', 41394, 'Super Street 1-2 Nw', NULL, 257);
INSERT INTO `competitors` VALUES ('Andrew Werch', 10301, 'Super Street 1-2 Nw', NULL, 258);
INSERT INTO `competitors` VALUES ('Tyler Hallet', 8887, 'Super Street 1-2 Nw', NULL, 259);
INSERT INTO `competitors` VALUES ('Joshua Vogt', 6511, 'Super Street 1-2 Nw', NULL, 260);
INSERT INTO `competitors` VALUES ('Sounds & Motion', 16342, 'Super Street 3-4', NULL, 261);
INSERT INTO `competitors` VALUES ('Exclusive Co + Ardens', 10296, 'Super Street 3-4', NULL, 262);
INSERT INTO `competitors` VALUES ('Andrew Wilson', 11420, 'Super Street 5+', NULL, 263);
INSERT INTO `competitors` VALUES ('Jason Woida', 9044, 'Super Street 5+', NULL, 264);
INSERT INTO `competitors` VALUES ('John Elom', 15913, 'Mini Street 1', NULL, 265);
INSERT INTO `competitors` VALUES ('Kris Banks', 10537, 'Mini Street 1', NULL, 266);
INSERT INTO `competitors` VALUES ('Darrell Scott', 16122, 'Mini Street 2', NULL, 267);
INSERT INTO `competitors` VALUES ('Adam Hodge', 10992, 'Mini Street 2', NULL, 268);
INSERT INTO `competitors` VALUES ('Jeff Barnes', 8077, 'Mini Street 2', NULL, 269);
INSERT INTO `competitors` VALUES ('Isaac Madden', 15485, 'Mini Street 3', NULL, 270);
INSERT INTO `competitors` VALUES ('Thomas Sullivan', 10532, 'Mini Street 3', NULL, 271);
INSERT INTO `competitors` VALUES ('Jacob Hendrix', 9070, 'Mini Street 3', NULL, 272);
INSERT INTO `competitors` VALUES ('Heath Mccurdy', 6694, 'Mini Street 3', NULL, 273);
INSERT INTO `competitors` VALUES ('Mickey Miller', 10563, 'Street A', NULL, 274);
INSERT INTO `competitors` VALUES ('Team Subgopoof', 8187, 'Street B', NULL, 275);
INSERT INTO `competitors` VALUES ('Rodney Busch', 8396, 'Street A', NULL, 276);
INSERT INTO `competitors` VALUES ('Team H&K - James', 25804, 'Street B', NULL, 277);
INSERT INTO `competitors` VALUES ('Team H&K - Jordan', 8427, 'Street C', NULL, 278);
INSERT INTO `competitors` VALUES ('Team H&K - Delbert', 17013, 'Street C', NULL, 279);
INSERT INTO `competitors` VALUES ('Team H&K - Kent', 10637, 'Street Max 1-2', NULL, 280);
INSERT INTO `competitors` VALUES ('Sammy Shinabery', 6506, 'Street Max 1-2', NULL, 281);
INSERT INTO `competitors` VALUES ('Custom Audio Concepts', 16091, 'Super Street 1-2', NULL, 282);
INSERT INTO `competitors` VALUES ('Carlos Porter', 10715, 'Super Street 1-2', NULL, 283);
INSERT INTO `competitors` VALUES ('Sound Impressions Jon Brady', 15584, 'Super Street 3-4', NULL, 284);
INSERT INTO `competitors` VALUES ('Team H&K - Dustin', 11170, 'Super Street 3-4', NULL, 285);
INSERT INTO `competitors` VALUES ('Ryan Stuck', 9039, 'Super Street 3-4', NULL, 286);
INSERT INTO `competitors` VALUES ('Jared Crozier', 15332, 'Super Street 5+', NULL, 287);
INSERT INTO `competitors` VALUES ('David Williams', 23125, 'Street B', NULL, 288);
INSERT INTO `competitors` VALUES ('Rich Meyer', 7201, 'Street C', NULL, 289);
INSERT INTO `competitors` VALUES ('Danny + Melinda Britain', 16494, 'Super Street 1-2', NULL, 290);
INSERT INTO `competitors` VALUES ('Team Loud As Phuck 1', 15156, 'Super Street 1-2 Nw', NULL, 291);
INSERT INTO `competitors` VALUES ('HO Alternators - Rick', 14072, 'Super Street 1-2 Nw', NULL, 292);
INSERT INTO `competitors` VALUES ('Team Urban ArtFx', 6441, 'Super Street 1-2 Nw', NULL, 293);
INSERT INTO `competitors` VALUES ('John Kosiek', 10820, 'Super Street 3-4', NULL, 294);
INSERT INTO `competitors` VALUES ('David Dominiak', 10982, 'Street B', NULL, 295);
INSERT INTO `competitors` VALUES ('Smileys Electronics', 15851, 'Street Max 1-2', NULL, 296);
INSERT INTO `competitors` VALUES ('Michael Hughes', 15475, 'Super Street 1-2 Nw', NULL, 297);
INSERT INTO `competitors` VALUES ('David Mesquita', 11060, 'Super Street 1-2 Nw', NULL, 298);
INSERT INTO `competitors` VALUES ('Albert Hughes', 16222, 'Super Street 5+', NULL, 299);
INSERT INTO `competitors` VALUES ('Lee Lane', 9384, 'Extreme 5+', NULL, 300);
INSERT INTO `competitors` VALUES ('Devino Putney', 15177, 'Street Max 3-4', NULL, 301);
INSERT INTO `competitors` VALUES ('Walt Johnson', 10339, 'Street Max 3-4', NULL, 302);
INSERT INTO `competitors` VALUES ('Todd Simmons', 11170, 'Super Street 1-2', NULL, 303);
INSERT INTO `competitors` VALUES ('Jamie Chestnut', 15925, 'Super Street 1-2 Nw', NULL, 304);
INSERT INTO `competitors` VALUES ('Advanced Spl - Dan', 15548, 'Street A', NULL, 305);
INSERT INTO `competitors` VALUES ('Advanced Spl - John', 10710, 'Street A', NULL, 306);
INSERT INTO `competitors` VALUES ('Chuck Hartwig', 10334, 'Street Max 1-2', NULL, 307);
INSERT INTO `competitors` VALUES ('Kyle Swetzig', 10496, 'Street Max 3-4', NULL, 308);
INSERT INTO `competitors` VALUES ('Elmer Dela Cruz', 16082, 'Super Street 1-2 Nw', NULL, 309);
INSERT INTO `competitors` VALUES ('Zach Davis', 11489, 'Super Street 3-4', NULL, 310);
INSERT INTO `competitors` VALUES ('Michael Haddock', 15867, 'Mini Street 3', NULL, 311);
INSERT INTO `competitors` VALUES ('Travis Honeycutt', 10736, 'Mini Street 3', NULL, 312);
INSERT INTO `competitors` VALUES ('Dustin Sensing', 8360, 'Mini Street 3', NULL, 313);
INSERT INTO `competitors` VALUES ('Jason Goostree', 15946, 'Super Street 1-2 Nw', NULL, 314);
INSERT INTO `competitors` VALUES ('Shelina Jenkins', 31353, 'Street A', NULL, 315);
INSERT INTO `competitors` VALUES ('Deaf Tones', 10439, 'Street A', NULL, 316);
INSERT INTO `competitors` VALUES ('JC Car Audio', 23063, 'Street B', NULL, 317);
INSERT INTO `competitors` VALUES ('Jeff Baragno', 26432, 'Street B', NULL, 318);
INSERT INTO `competitors` VALUES ('Anthony Reber', 8810, 'Street B', NULL, 319);
INSERT INTO `competitors` VALUES ('Central Cal SPL - Cory', 30386, 'Street Max 1-2', NULL, 320);
INSERT INTO `competitors` VALUES ('Mike Martin', 15010, 'Super Street 1-2', NULL, 321);
INSERT INTO `competitors` VALUES ('Marcus Ferazzi', 11134, 'Super Street 1-2', NULL, 322);
INSERT INTO `competitors` VALUES ('Shawn Beasley', 11296, 'Super Street 1-2 Nw', NULL, 323);
INSERT INTO `competitors` VALUES ('James Gittings', 10089, 'Super Street 3-4', NULL, 324);
INSERT INTO `competitors` VALUES ('Carlos Frias', 15005, 'Super Street 5+', NULL, 325);
INSERT INTO `competitors` VALUES ('Marshall Boyle', 9129, 'Street A', NULL, 326);
INSERT INTO `competitors` VALUES ('Lee Gerstoff', 10036, 'Street B', NULL, 327);
INSERT INTO `competitors` VALUES ('Patrick Tempke', 9160, 'Street B', NULL, 328);
INSERT INTO `competitors` VALUES ('George Manzo', 10539, 'Street C', NULL, 329);
INSERT INTO `competitors` VALUES ('Brandon Rogers', 10408, 'Street Max 3-4', NULL, 330);
INSERT INTO `competitors` VALUES ('Joshua Mills', 15031, 'Super Street 1-2', NULL, 331);
INSERT INTO `competitors` VALUES ('Chris Knapp', 10486, 'Super Street 1-2 Nw', NULL, 332);
INSERT INTO `competitors` VALUES ('Michael Williams', 8355, 'Super Street 1-2 Nw', NULL, 333);
INSERT INTO `competitors` VALUES ('Sound Check - Brett', 7234, 'Super Street 1-2 Nw', NULL, 334);
INSERT INTO `competitors` VALUES ('Brandon Bower', 6103, 'Super Street 1-2 Nw', NULL, 335);
INSERT INTO `competitors` VALUES ('David Paulson Jr', 16265, 'Super Street 3-4', NULL, 336);
INSERT INTO `competitors` VALUES ('Kenny Raney', 15350, 'Super Street 5+', NULL, 337);
INSERT INTO `competitors` VALUES ('Dustin Wright', 11474, 'Street A', NULL, 338);
INSERT INTO `competitors` VALUES ('Mike Chaffin', 9098, 'Street A', NULL, 339);
INSERT INTO `competitors` VALUES ('Fred Van Zandt', 8722, 'Street B', NULL, 340);
INSERT INTO `competitors` VALUES ('Eric Doughty', 15591, 'Street C', NULL, 341);
INSERT INTO `competitors` VALUES ('Children Of The Corn 17', 11176, 'Street Max 1-2', NULL, 342);
INSERT INTO `competitors` VALUES ('Joe Jamtgaard', 15377, 'Street Max 3-4', NULL, 343);
INSERT INTO `competitors` VALUES ('Street Beatz 3', 10669, 'Super Street 1-2', NULL, 344);
INSERT INTO `competitors` VALUES ('Ben Canny', 8162, 'Super Street 1-2', NULL, 345);
INSERT INTO `competitors` VALUES ('Sam Mick', 6748, 'Super Street 1-2', NULL, 346);
INSERT INTO `competitors` VALUES ('Mike Crandell', 10372, 'Super Street 1-2 Nw', NULL, 347);
INSERT INTO `competitors` VALUES ('Tru Insayne Soundz - Amc', 11495, 'Super Street 3-4', NULL, 348);
INSERT INTO `competitors` VALUES ('Jeff Langfald', 15157, 'Super Street 5+', NULL, 349);
INSERT INTO `competitors` VALUES ('Kevin Terrill', 16281, 'Street A', NULL, 350);
INSERT INTO `competitors` VALUES ('Heather Anderson', 10905, 'Street A', NULL, 351);
INSERT INTO `competitors` VALUES ('Eric Mcintosh', 11312, 'Street C', NULL, 352);
INSERT INTO `competitors` VALUES ('Michael Whyte', 14936, 'Street C', NULL, 353);
INSERT INTO `competitors` VALUES ('Team Must Go Louder', 15022, 'Street Max 1-2', NULL, 354);
INSERT INTO `competitors` VALUES ('Pablo Beuitez', 10184, 'Street Max 1-2', NULL, 355);
INSERT INTO `competitors` VALUES ('Tony Economou', 8769, 'Street Max 1-2', NULL, 356);
INSERT INTO `competitors` VALUES ('Nick Palmieri', 15100, 'Street Max 3-4', NULL, 357);
INSERT INTO `competitors` VALUES ('Team Pure Pressure - Henry', 16224, 'Super Street 1-2', NULL, 358);
INSERT INTO `competitors` VALUES ('Lucas Olzewski', 11386, 'Super Street 3-4', NULL, 359);
INSERT INTO `competitors` VALUES ('Luis Aquiles', 8717, 'Super Street 3-4', NULL, 360);
INSERT INTO `competitors` VALUES ('Cecilio Kentish Jr.', 20879, 'Super Street 5+', NULL, 361);
INSERT INTO `competitors` VALUES ('Shawn Savago', 9041, 'Super Street 5+', NULL, 362);
INSERT INTO `competitors` VALUES ('Mike Bartells', 15419, 'Extreme 3-4', NULL, 363);
INSERT INTO `competitors` VALUES ('Hollis Bowen', 15043, 'Street A', NULL, 364);
INSERT INTO `competitors` VALUES ('Clay Neill', 10874, 'Street A', NULL, 365);
INSERT INTO `competitors` VALUES ('Adam Evans', 9036, 'Street A', NULL, 366);
INSERT INTO `competitors` VALUES ('Clay Ferguson', 7329, 'Street A', NULL, 367);
INSERT INTO `competitors` VALUES ('David Morningstar', 9198, 'Street B', NULL, 368);
INSERT INTO `competitors` VALUES ('Ken Evans', 9360, 'Street C', NULL, 369);
INSERT INTO `competitors` VALUES ('Andrew Sing', 5445, 'Street C', NULL, 370);
INSERT INTO `competitors` VALUES ('Chris Bernhardt', 15315, 'Street Max 3-4', NULL, 371);
INSERT INTO `competitors` VALUES ('Jeremy Mack', 11193, 'Street Max 3-4', NULL, 372);
INSERT INTO `competitors` VALUES ('Timmy Watkins', 15231, 'Super Street 1-2 Nw', NULL, 373);
INSERT INTO `competitors` VALUES ('Goeff Goetz', 10393, 'Super Street 1-2 Nw', NULL, 374);
INSERT INTO `competitors` VALUES ('Joshua Ward', 8017, 'Super Street 1-2 Nw', NULL, 375);
INSERT INTO `competitors` VALUES ('Rocky Webb', 6141, 'Super Street 1-2 Nw', NULL, 376);
INSERT INTO `competitors` VALUES ('Robert Kennemore', 10764, 'Super Street 3-4', NULL, 377);
INSERT INTO `competitors` VALUES ('Team Rez Life - Andy', 15388, 'Extreme 2', NULL, 378);
INSERT INTO `competitors` VALUES ('Team Bassick - Kimo', 10012, 'Street B', NULL, 379);
INSERT INTO `competitors` VALUES ('Justin Stohlman', 7136, 'Street B', NULL, 380);
INSERT INTO `competitors` VALUES ('SSB Brunyansky', 15043, 'Street C', NULL, 381);
INSERT INTO `competitors` VALUES ('Team US Amps - Greg', 15629, 'Street Max 3-4', NULL, 382);
INSERT INTO `competitors` VALUES ('Alberto Aguilar', 10498, 'Street Max 3-4', NULL, 383);
INSERT INTO `competitors` VALUES ('Enrique Grijalva', 16083, 'Super Street 1-2', NULL, 384);
INSERT INTO `competitors` VALUES ('Edmar Gonzalez', 10576, 'Super Street 1-2', NULL, 385);
INSERT INTO `competitors` VALUES ('Loui Electronics', 16455, 'Super Street 1-2 Nw', NULL, 386);
INSERT INTO `competitors` VALUES ('Jacob Fincher', 15786, 'Super Street 3-4', NULL, 387);
INSERT INTO `competitors` VALUES ('Rick Garcia', 10362, 'Super Street 3-4', NULL, 388);
INSERT INTO `competitors` VALUES ('Fredy Gonzalez', 8409, 'Super Street 3-4', NULL, 389);
INSERT INTO `competitors` VALUES ('SSB McClelland', 15948, 'Super Street 5+', NULL, 390);
INSERT INTO `competitors` VALUES ('Bill Johnson', 11240, 'Super Street 5+', NULL, 391);
INSERT INTO `competitors` VALUES ('Jon Bojanowski', 8279, 'Street B', NULL, 392);
INSERT INTO `competitors` VALUES ('Team WolfPack Audio', 8571, 'Street Max 1-2', NULL, 393);
INSERT INTO `competitors` VALUES ('Team Poville - Devin', 10864, 'Super Street 1-2', NULL, 394);
INSERT INTO `competitors` VALUES ('Squeak ? 8925', 11402, 'Super Street 1-2 Nw', NULL, 395);
INSERT INTO `competitors` VALUES ('Mark Slessinger', 11026, 'Super Street 3-4', NULL, 396);
INSERT INTO `competitors` VALUES ('Russ Haugabrook', 11481, 'Super Street 5+', NULL, 397);
INSERT INTO `competitors` VALUES ('Marcus Owens', 7350, 'Super Street 5+', NULL, 398);
INSERT INTO `competitors` VALUES ('Audio Outlaws', 5436, 'Super Street 5+', NULL, 399);

-- --------------------------------------------------------

-- 
-- Table structure for table `eventresults`
-- 

CREATE TABLE `eventresults` (
  `EventID` int(11) NOT NULL default '0',
  `CompetitorID` int(11) default NULL,
  `Place` int(11) default NULL,
  `Class` text,
  `Score` text,
  `ResultID` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`ResultID`)
) TYPE=InnoDB AUTO_INCREMENT=603 ;

-- 
-- Dumping data for table `eventresults`
-- 

INSERT INTO `eventresults` VALUES (11, 28, 1, 'Street A', '153.4', 1);
INSERT INTO `eventresults` VALUES (11, 29, 2, 'Street A', '149.9', 2);
INSERT INTO `eventresults` VALUES (11, 30, 3, 'Street A', '149.9', 3);
INSERT INTO `eventresults` VALUES (11, 31, 4, 'Street A', '147.1', 4);
INSERT INTO `eventresults` VALUES (11, 32, 5, 'Street A', '148.5', 5);
INSERT INTO `eventresults` VALUES (11, 33, 6, 'Street A', '146.9', 6);
INSERT INTO `eventresults` VALUES (11, 34, 7, 'Street A', '144.6', 7);
INSERT INTO `eventresults` VALUES (11, 35, 8, 'Street A', '142.2', 8);
INSERT INTO `eventresults` VALUES (11, 36, 1, 'Street B', '154.1', 9);
INSERT INTO `eventresults` VALUES (11, 37, 2, 'Street B', '151.1', 10);
INSERT INTO `eventresults` VALUES (11, 38, 3, 'Street B', '150.5', 11);
INSERT INTO `eventresults` VALUES (11, 39, 4, 'Street B', '149.8', 12);
INSERT INTO `eventresults` VALUES (11, 40, 5, 'Street B', '150.4', 13);
INSERT INTO `eventresults` VALUES (11, 41, 6, 'Street B', '149.3', 14);
INSERT INTO `eventresults` VALUES (11, 42, 7, 'Street B', '148.2', 15);
INSERT INTO `eventresults` VALUES (11, 43, 8, 'Street B', '147.5', 16);
INSERT INTO `eventresults` VALUES (11, 44, 1, 'Street C', '156.7', 17);
INSERT INTO `eventresults` VALUES (11, 94, 2, 'Street C', '154.3', 18);
INSERT INTO `eventresults` VALUES (11, 45, 3, 'Street C', '151.8', 19);
INSERT INTO `eventresults` VALUES (11, 46, 4, 'Street C', '151.6', 20);
INSERT INTO `eventresults` VALUES (11, 47, 5, 'Street C', '150.1', 21);
INSERT INTO `eventresults` VALUES (11, 48, 6, 'Street C', '146.1', 22);
INSERT INTO `eventresults` VALUES (11, 49, 7, 'Street C', '145.9', 23);
INSERT INTO `eventresults` VALUES (11, 50, 8, 'Street C', '145.1', 24);
INSERT INTO `eventresults` VALUES (11, 51, 1, 'Street Max 1-2', '161.6', 25);
INSERT INTO `eventresults` VALUES (11, 52, 2, 'Street Max 1-2', '157.3', 26);
INSERT INTO `eventresults` VALUES (11, 53, 3, 'Street Max 1-2', '152.2', 27);
INSERT INTO `eventresults` VALUES (11, 54, 4, 'Street Max 1-2', '149.3', 28);
INSERT INTO `eventresults` VALUES (11, 55, 5, 'Street Max 1-2', '145.8', 29);
INSERT INTO `eventresults` VALUES (11, 56, 6, 'Street Max 1-2', '144', 30);
INSERT INTO `eventresults` VALUES (11, 57, 7, 'Street Max 1-2', '142.7', 31);
INSERT INTO `eventresults` VALUES (11, 58, 8, 'Street Max 1-2', '140.5', 32);
INSERT INTO `eventresults` VALUES (11, 59, 1, 'Street Max 3-4', '160.2', 33);
INSERT INTO `eventresults` VALUES (11, 60, 2, 'Street Max 3-4', '159.4', 34);
INSERT INTO `eventresults` VALUES (11, 61, 3, 'Street Max 3-4', '157.7', 35);
INSERT INTO `eventresults` VALUES (11, 62, 4, 'Street Max 3-4', '156.9', 36);
INSERT INTO `eventresults` VALUES (11, 63, 5, 'Street Max 3-4', '148.9', 37);
INSERT INTO `eventresults` VALUES (11, 64, 6, 'Street Max 3-4', '137.8', 38);
INSERT INTO `eventresults` VALUES (11, 65, 1, 'Super Street 1-2', '162.7', 39);
INSERT INTO `eventresults` VALUES (11, 66, 2, 'Super Street 1-2', '164.1', 40);
INSERT INTO `eventresults` VALUES (11, 67, 3, 'Super Street 1-2', '159.9', 41);
INSERT INTO `eventresults` VALUES (11, 68, 4, 'Super Street 1-2', '159.3', 42);
INSERT INTO `eventresults` VALUES (11, 69, 5, 'Super Street 1-2', '155.2', 43);
INSERT INTO `eventresults` VALUES (11, 70, 6, 'Super Street 1-2', '155', 44);
INSERT INTO `eventresults` VALUES (11, 71, 7, 'Super Street 1-2', '147.2', 45);
INSERT INTO `eventresults` VALUES (11, 72, 8, 'Super Street 1-2', '144.5', 46);
INSERT INTO `eventresults` VALUES (11, 73, 1, 'Super Street 1-2 Nw', '156.8', 47);
INSERT INTO `eventresults` VALUES (11, 74, 2, 'Super Street 1-2 Nw', '149.1', 48);
INSERT INTO `eventresults` VALUES (11, 75, 3, 'Super Street 1-2 Nw', '149.5', 49);
INSERT INTO `eventresults` VALUES (11, 76, 4, 'Super Street 1-2 Nw', '142.1', 50);
INSERT INTO `eventresults` VALUES (11, 77, 5, 'Super Street 1-2 Nw', '139.6', 51);
INSERT INTO `eventresults` VALUES (11, 78, 1, 'Super Street 3-4', '167.6', 52);
INSERT INTO `eventresults` VALUES (11, 79, 2, 'Super Street 3-4', '166.7', 53);
INSERT INTO `eventresults` VALUES (11, 80, 3, 'Super Street 3-4', '162.8', 54);
INSERT INTO `eventresults` VALUES (11, 81, 4, 'Super Street 3-4', '158.4', 55);
INSERT INTO `eventresults` VALUES (11, 82, 5, 'Super Street 3-4', '154.5', 56);
INSERT INTO `eventresults` VALUES (11, 83, 6, 'Super Street 3-4', '149.1', 57);
INSERT INTO `eventresults` VALUES (11, 84, 7, 'Super Street 3-4', '147.1', 58);
INSERT INTO `eventresults` VALUES (11, 85, 8, 'Super Street 3-4', '144.9', 59);
INSERT INTO `eventresults` VALUES (11, 86, 1, 'Super Street 5+', '168.2', 60);
INSERT INTO `eventresults` VALUES (11, 87, 2, 'Super Street 5+', '163.3', 61);
INSERT INTO `eventresults` VALUES (11, 88, 3, 'Super Street 5+', '157.6', 62);
INSERT INTO `eventresults` VALUES (11, 89, 4, 'Super Street 5+', '152.2', 63);
INSERT INTO `eventresults` VALUES (11, 90, 5, 'Super Street 5+', '150', 64);
INSERT INTO `eventresults` VALUES (11, 91, 6, 'Super Street 5+', '148.8', 65);
INSERT INTO `eventresults` VALUES (11, 92, 7, 'Super Street 5+', '148.3', 66);
INSERT INTO `eventresults` VALUES (11, 93, 8, 'Super Street 5+', '144.2', 67);
INSERT INTO `eventresults` VALUES (12, 95, 1, 'Extreme 1', '171.3', 68);
INSERT INTO `eventresults` VALUES (12, 96, 2, 'Extreme 1', '144.8', 69);
INSERT INTO `eventresults` VALUES (12, 97, 1, 'Extreme 2', '173.7', 70);
INSERT INTO `eventresults` VALUES (12, 98, 2, 'Extreme 2', '149.4', 71);
INSERT INTO `eventresults` VALUES (12, 99, 1, 'Extreme 3-4', '172.3', 72);
INSERT INTO `eventresults` VALUES (12, 100, 2, 'Extreme 3-4', '132.8', 73);
INSERT INTO `eventresults` VALUES (12, 101, 1, 'Extreme 5+', '179.4', 74);
INSERT INTO `eventresults` VALUES (12, 102, 2, 'Extreme 5+', '173.5', 75);
INSERT INTO `eventresults` VALUES (12, 103, 1, 'Street A', '153.7', 76);
INSERT INTO `eventresults` VALUES (12, 104, 2, 'Street A', '153.9', 77);
INSERT INTO `eventresults` VALUES (12, 105, 3, 'Street A', '152.9', 78);
INSERT INTO `eventresults` VALUES (12, 106, 4, 'Street A', '152.7', 79);
INSERT INTO `eventresults` VALUES (12, 107, 5, 'Street A', '151.9', 80);
INSERT INTO `eventresults` VALUES (12, 108, 6, 'Street A', '150.8', 81);
INSERT INTO `eventresults` VALUES (12, 30, 7, 'Street A', '148.3', 82);
INSERT INTO `eventresults` VALUES (12, 109, 8, 'Street A', '143', 83);
INSERT INTO `eventresults` VALUES (12, 110, 1, 'Street B', '155.2', 84);
INSERT INTO `eventresults` VALUES (12, 111, 2, 'Street B', '153.8', 85);
INSERT INTO `eventresults` VALUES (12, 112, 3, 'Street B', '155', 86);
INSERT INTO `eventresults` VALUES (12, 113, 4, 'Street B', '153.5', 87);
INSERT INTO `eventresults` VALUES (12, 114, 5, 'Street B', '151.8', 88);
INSERT INTO `eventresults` VALUES (12, 38, 6, 'Street B', '151.3', 89);
INSERT INTO `eventresults` VALUES (12, 115, 7, 'Street B', '150', 90);
INSERT INTO `eventresults` VALUES (12, 94, 1, 'Street C', '156.5', 91);
INSERT INTO `eventresults` VALUES (12, 46, 2, 'Street C', '151.9', 92);
INSERT INTO `eventresults` VALUES (12, 116, 3, 'Street C', '149.8', 93);
INSERT INTO `eventresults` VALUES (12, 117, 4, 'Street C', '144.5', 94);
INSERT INTO `eventresults` VALUES (12, 118, 5, 'Street C', '145.9', 95);
INSERT INTO `eventresults` VALUES (12, 119, 6, 'Street C', '142.1', 96);
INSERT INTO `eventresults` VALUES (12, 120, 7, 'Street C', '136.7', 97);
INSERT INTO `eventresults` VALUES (12, 121, 1, 'Street Max 1-2', '158.2', 98);
INSERT INTO `eventresults` VALUES (12, 122, 2, 'Street Max 1-2', '156.2', 99);
INSERT INTO `eventresults` VALUES (12, 123, 3, 'Street Max 1-2', '155.7', 100);
INSERT INTO `eventresults` VALUES (12, 124, 4, 'Street Max 1-2', '151.6', 101);
INSERT INTO `eventresults` VALUES (12, 125, 5, 'Street Max 1-2', '142.2', 102);
INSERT INTO `eventresults` VALUES (12, 59, 1, 'Street Max 3-4', '160.9', 103);
INSERT INTO `eventresults` VALUES (12, 61, 2, 'Street Max 3-4', '157.2', 104);
INSERT INTO `eventresults` VALUES (12, 126, 3, 'Street Max 3-4', '156.1', 105);
INSERT INTO `eventresults` VALUES (12, 127, 4, 'Street Max 3-4', '155.8', 106);
INSERT INTO `eventresults` VALUES (12, 128, 1, 'Super Street 1-2', '163.6', 107);
INSERT INTO `eventresults` VALUES (12, 66, 2, 'Super Street 1-2', '164.3', 108);
INSERT INTO `eventresults` VALUES (12, 129, 3, 'Super Street 1-2', '161.2', 109);
INSERT INTO `eventresults` VALUES (12, 70, 4, 'Super Street 1-2', '159.2', 110);
INSERT INTO `eventresults` VALUES (12, 130, 5, 'Super Street 1-2', '160.4', 111);
INSERT INTO `eventresults` VALUES (12, 131, 6, 'Super Street 1-2', '157.3', 112);
INSERT INTO `eventresults` VALUES (12, 69, 7, 'Super Street 1-2', '152.3', 113);
INSERT INTO `eventresults` VALUES (12, 132, 1, 'Super Street 1-2 Nw', '154.4', 114);
INSERT INTO `eventresults` VALUES (12, 133, 2, 'Super Street 1-2 Nw', '154', 115);
INSERT INTO `eventresults` VALUES (12, 134, 3, 'Super Street 1-2 Nw', '152', 116);
INSERT INTO `eventresults` VALUES (12, 135, 4, 'Super Street 1-2 Nw', '138.7', 117);
INSERT INTO `eventresults` VALUES (12, 136, 1, 'Super Street 3-4', '164.2', 118);
INSERT INTO `eventresults` VALUES (12, 87, 1, 'Super Street 5+', '166.3', 119);
INSERT INTO `eventresults` VALUES (12, 137, 2, 'Super Street 5+', '156.3', 120);
INSERT INTO `eventresults` VALUES (13, 99, 1, 'Extreme 3-4', '171.6', 121);
INSERT INTO `eventresults` VALUES (13, 138, 2, 'Extreme 3-4', '145.7', 122);
INSERT INTO `eventresults` VALUES (13, 139, 1, 'Street A', '153.8', 123);
INSERT INTO `eventresults` VALUES (13, 105, 2, 'Street A', '152.5', 124);
INSERT INTO `eventresults` VALUES (13, 140, 3, 'Street A', '150.6', 125);
INSERT INTO `eventresults` VALUES (13, 141, 4, 'Street A', '153.6', 126);
INSERT INTO `eventresults` VALUES (13, 108, 5, 'Street A', '149.6', 127);
INSERT INTO `eventresults` VALUES (13, 142, 6, 'Street A', '148.9', 128);
INSERT INTO `eventresults` VALUES (13, 110, 1, 'Street B', '155.8', 129);
INSERT INTO `eventresults` VALUES (13, 106, 2, 'Street B', '154.9', 130);
INSERT INTO `eventresults` VALUES (13, 143, 3, 'Street B', '153.4', 131);
INSERT INTO `eventresults` VALUES (13, 113, 4, 'Street B', '153.4', 132);
INSERT INTO `eventresults` VALUES (13, 144, 5, 'Street B', '142.4', 133);
INSERT INTO `eventresults` VALUES (13, 145, 6, 'Street B', '140', 134);
INSERT INTO `eventresults` VALUES (13, 146, 7, 'Street B', '139.7', 135);
INSERT INTO `eventresults` VALUES (13, 94, 1, 'Street C', '154.9', 136);
INSERT INTO `eventresults` VALUES (13, 147, 2, 'Street C', '154', 137);
INSERT INTO `eventresults` VALUES (13, 148, 3, 'Street C', '142.3', 138);
INSERT INTO `eventresults` VALUES (13, 120, 4, 'Street C', '136.3', 139);
INSERT INTO `eventresults` VALUES (13, 122, 1, 'Street Max 1-2', '157', 140);
INSERT INTO `eventresults` VALUES (13, 123, 2, 'Street Max 1-2', '154.5', 141);
INSERT INTO `eventresults` VALUES (13, 149, 3, 'Street Max 1-2', '145.5', 142);
INSERT INTO `eventresults` VALUES (13, 150, 4, 'Street Max 1-2', '144.7', 143);
INSERT INTO `eventresults` VALUES (13, 151, 5, 'Street Max 1-2', '140.5', 144);
INSERT INTO `eventresults` VALUES (13, 61, 1, 'Street Max 3-4', '158.9', 145);
INSERT INTO `eventresults` VALUES (13, 152, 2, 'Street Max 3-4', '146.5', 146);
INSERT INTO `eventresults` VALUES (13, 129, 1, 'Super Street 1-2', '161.3', 147);
INSERT INTO `eventresults` VALUES (13, 130, 2, 'Super Street 1-2', '153.7', 148);
INSERT INTO `eventresults` VALUES (13, 153, 3, 'Super Street 1-2', '154.7', 149);
INSERT INTO `eventresults` VALUES (13, 30, 4, 'Super Street 1-2', '147.7', 150);
INSERT INTO `eventresults` VALUES (13, 154, 5, 'Super Street 1-2', '146.9', 151);
INSERT INTO `eventresults` VALUES (13, 155, 1, 'Super Street 1-2 Nw', '154.5', 152);
INSERT INTO `eventresults` VALUES (13, 156, 2, 'Super Street 1-2 Nw', '145.8', 153);
INSERT INTO `eventresults` VALUES (13, 135, 3, 'Super Street 1-2 Nw', '136.5', 154);
INSERT INTO `eventresults` VALUES (13, 157, 1, 'Super Street 3-4', '158.8', 155);
INSERT INTO `eventresults` VALUES (13, 127, 2, 'Super Street 3-4', '157.4', 156);
INSERT INTO `eventresults` VALUES (13, 158, 3, 'Super Street 3-4', '153.7', 157);
INSERT INTO `eventresults` VALUES (13, 159, 4, 'Super Street 3-4', '153.6', 158);
INSERT INTO `eventresults` VALUES (13, 160, 5, 'Super Street 3-4', '150.9', 159);
INSERT INTO `eventresults` VALUES (13, 161, 6, 'Super Street 3-4', '146.4', 160);
INSERT INTO `eventresults` VALUES (13, 162, 1, 'Super Street 5+', '152.9', 161);
INSERT INTO `eventresults` VALUES (13, 163, 2, 'Super Street 5+', '151.3', 162);
INSERT INTO `eventresults` VALUES (13, 164, 3, 'Super Street 5+', '149.7', 163);
INSERT INTO `eventresults` VALUES (15, 165, 1, 'Extreme 1', '177.8', 164);
INSERT INTO `eventresults` VALUES (15, 166, 2, 'Extreme 1', '169.5', 165);
INSERT INTO `eventresults` VALUES (15, 95, 3, 'Extreme 1', '173.1', 166);
INSERT INTO `eventresults` VALUES (15, 167, 4, 'Extreme 1', '164.1', 167);
INSERT INTO `eventresults` VALUES (15, 168, 5, 'Extreme 1', '168.3', 168);
INSERT INTO `eventresults` VALUES (15, 169, 6, 'Extreme 1', '156.6', 169);
INSERT INTO `eventresults` VALUES (15, 170, 1, 'Extreme 2', '176.4', 170);
INSERT INTO `eventresults` VALUES (15, 97, 2, 'Extreme 2', '173.2', 171);
INSERT INTO `eventresults` VALUES (15, 171, 3, 'Extreme 2', '167.3', 172);
INSERT INTO `eventresults` VALUES (15, 98, 4, 'Extreme 2', '163.8', 173);
INSERT INTO `eventresults` VALUES (15, 172, 5, 'Extreme 2', '159.9', 174);
INSERT INTO `eventresults` VALUES (15, 173, 1, 'Extreme 3-4', '178.1', 175);
INSERT INTO `eventresults` VALUES (15, 174, 2, 'Extreme 3-4', '175.4', 176);
INSERT INTO `eventresults` VALUES (15, 175, 3, 'Extreme 3-4', '172.3', 177);
INSERT INTO `eventresults` VALUES (15, 138, 4, 'Extreme 3-4', '146', 178);
INSERT INTO `eventresults` VALUES (15, 101, 1, 'Extreme 5+', '178.3', 179);
INSERT INTO `eventresults` VALUES (15, 102, 2, 'Extreme 5+', '175.3', 180);
INSERT INTO `eventresults` VALUES (15, 99, 3, 'Extreme 5+', '173.5', 181);
INSERT INTO `eventresults` VALUES (15, 100, 4, 'Extreme 5+', '172.1', 182);
INSERT INTO `eventresults` VALUES (15, 176, 5, 'Extreme 5+', '161.1', 183);
INSERT INTO `eventresults` VALUES (15, 177, 6, 'Extreme 5+', '160', 184);
INSERT INTO `eventresults` VALUES (15, 76, 7, 'Extreme 5+', '149.8', 185);
INSERT INTO `eventresults` VALUES (15, 178, 1, 'Street A', '156.1', 186);
INSERT INTO `eventresults` VALUES (15, 103, 2, 'Street A', '155.6', 187);
INSERT INTO `eventresults` VALUES (15, 179, 3, 'Street A', '155.4', 188);
INSERT INTO `eventresults` VALUES (15, 105, 4, 'Street A', '155.3', 189);
INSERT INTO `eventresults` VALUES (15, 180, 5, 'Street A', '155.3', 190);
INSERT INTO `eventresults` VALUES (15, 139, 6, 'Street A', '154.6', 191);
INSERT INTO `eventresults` VALUES (15, 29, 7, 'Street A', '154.3', 192);
INSERT INTO `eventresults` VALUES (15, 140, 8, 'Street A', '154.1', 193);
INSERT INTO `eventresults` VALUES (15, 181, 1, 'Street B', '157.6', 194);
INSERT INTO `eventresults` VALUES (15, 143, 2, 'Street B', '155.7', 195);
INSERT INTO `eventresults` VALUES (15, 110, 3, 'Street B', '155.9', 196);
INSERT INTO `eventresults` VALUES (15, 182, 4, 'Street B', '155.8', 197);
INSERT INTO `eventresults` VALUES (15, 111, 5, 'Street B', '154.9', 198);
INSERT INTO `eventresults` VALUES (15, 183, 6, 'Street B', '154.3', 199);
INSERT INTO `eventresults` VALUES (15, 184, 7, 'Street B', '154', 200);
INSERT INTO `eventresults` VALUES (15, 37, 8, 'Street B', '153.6', 201);
INSERT INTO `eventresults` VALUES (15, 44, 1, 'Street C', '157', 202);
INSERT INTO `eventresults` VALUES (15, 94, 2, 'Street C', '156.4', 203);
INSERT INTO `eventresults` VALUES (15, 185, 3, 'Street C', '155.5', 204);
INSERT INTO `eventresults` VALUES (15, 46, 4, 'Street C', '154.7', 205);
INSERT INTO `eventresults` VALUES (15, 147, 5, 'Street C', '154.5', 206);
INSERT INTO `eventresults` VALUES (15, 115, 6, 'Street C', '154.2', 207);
INSERT INTO `eventresults` VALUES (15, 116, 7, 'Street C', '154.1', 208);
INSERT INTO `eventresults` VALUES (15, 186, 8, 'Street C', '153.9', 209);
INSERT INTO `eventresults` VALUES (15, 51, 1, 'Street Max 1-2', '163', 210);
INSERT INTO `eventresults` VALUES (15, 187, 2, 'Street Max 1-2', '157.8', 211);
INSERT INTO `eventresults` VALUES (15, 121, 3, 'Street Max 1-2', '157', 212);
INSERT INTO `eventresults` VALUES (15, 123, 4, 'Street Max 1-2', '157.1', 213);
INSERT INTO `eventresults` VALUES (15, 122, 5, 'Street Max 1-2', '156.7', 214);
INSERT INTO `eventresults` VALUES (15, 52, 6, 'Street Max 1-2', '155.7', 215);
INSERT INTO `eventresults` VALUES (15, 108, 7, 'Street Max 1-2', '155.3', 216);
INSERT INTO `eventresults` VALUES (15, 188, 8, 'Street Max 1-2', '155.2', 217);
INSERT INTO `eventresults` VALUES (15, 189, 1, 'Street Max 3-4', '162.4', 218);
INSERT INTO `eventresults` VALUES (15, 61, 2, 'Street Max 3-4', '162.3', 219);
INSERT INTO `eventresults` VALUES (15, 190, 3, 'Street Max 3-4', '161.2', 220);
INSERT INTO `eventresults` VALUES (15, 60, 4, 'Street Max 3-4', '161.1', 221);
INSERT INTO `eventresults` VALUES (15, 191, 5, 'Street Max 3-4', '156.6', 222);
INSERT INTO `eventresults` VALUES (15, 192, 6, 'Street Max 3-4', '156.1', 223);
INSERT INTO `eventresults` VALUES (15, 193, 7, 'Street Max 3-4', '144.7', 224);
INSERT INTO `eventresults` VALUES (15, 194, 1, 'Super Street 1-2', '166.3', 225);
INSERT INTO `eventresults` VALUES (15, 195, 2, 'Super Street 1-2', '166.2', 226);
INSERT INTO `eventresults` VALUES (15, 66, 3, 'Super Street 1-2', '165.4', 227);
INSERT INTO `eventresults` VALUES (15, 196, 4, 'Super Street 1-2', '165.1', 228);
INSERT INTO `eventresults` VALUES (15, 197, 5, 'Super Street 1-2', '163.8', 229);
INSERT INTO `eventresults` VALUES (15, 129, 6, 'Super Street 1-2', '161.4', 230);
INSERT INTO `eventresults` VALUES (15, 198, 7, 'Super Street 1-2', '160.3', 231);
INSERT INTO `eventresults` VALUES (15, 131, 8, 'Super Street 1-2', '159.9', 232);
INSERT INTO `eventresults` VALUES (15, 199, 1, 'Super Street 1-2 Nw', '162', 233);
INSERT INTO `eventresults` VALUES (15, 200, 2, 'Super Street 1-2 Nw', '163.3', 234);
INSERT INTO `eventresults` VALUES (15, 201, 3, 'Super Street 1-2 Nw', '161.8', 235);
INSERT INTO `eventresults` VALUES (15, 73, 4, 'Super Street 1-2 Nw', '158.1', 236);
INSERT INTO `eventresults` VALUES (15, 202, 5, 'Super Street 1-2 Nw', '161.4', 237);
INSERT INTO `eventresults` VALUES (15, 203, 6, 'Super Street 1-2 Nw', '157.4', 238);
INSERT INTO `eventresults` VALUES (15, 204, 7, 'Super Street 1-2 Nw', '157.2', 239);
INSERT INTO `eventresults` VALUES (15, 132, 8, 'Super Street 1-2 Nw', '154.6', 240);
INSERT INTO `eventresults` VALUES (15, 78, 1, 'Super Street 3-4', '168.2', 241);
INSERT INTO `eventresults` VALUES (15, 136, 2, 'Super Street 3-4', '164.8', 242);
INSERT INTO `eventresults` VALUES (15, 205, 3, 'Super Street 3-4', '165.1', 243);
INSERT INTO `eventresults` VALUES (15, 62, 4, 'Super Street 3-4', '164.5', 244);
INSERT INTO `eventresults` VALUES (15, 80, 5, 'Super Street 3-4', '163.7', 245);
INSERT INTO `eventresults` VALUES (15, 206, 6, 'Super Street 3-4', '162.5', 246);
INSERT INTO `eventresults` VALUES (15, 207, 7, 'Super Street 3-4', '160.7', 247);
INSERT INTO `eventresults` VALUES (15, 208, 8, 'Super Street 3-4', '149.1', 248);
INSERT INTO `eventresults` VALUES (15, 86, 1, 'Super Street 5+', '169.6', 249);
INSERT INTO `eventresults` VALUES (15, 87, 2, 'Super Street 5+', '168.7', 250);
INSERT INTO `eventresults` VALUES (15, 209, 3, 'Super Street 5+', '168.5', 251);
INSERT INTO `eventresults` VALUES (15, 81, 4, 'Super Street 5+', '168.8', 252);
INSERT INTO `eventresults` VALUES (15, 210, 5, 'Super Street 5+', '164.1', 253);
INSERT INTO `eventresults` VALUES (15, 54, 6, 'Super Street 5+', '160.8', 254);
INSERT INTO `eventresults` VALUES (15, 211, 7, 'Super Street 5+', '160.2', 255);
INSERT INTO `eventresults` VALUES (15, 212, 8, 'Super Street 5+', '157', 256);
INSERT INTO `eventresults` VALUES (22, 213, 1, 'Street B', '143.7', 257);
INSERT INTO `eventresults` VALUES (22, 185, 1, 'Street C', '154.2', 258);
INSERT INTO `eventresults` VALUES (22, 214, 2, 'Street C', '153.5', 259);
INSERT INTO `eventresults` VALUES (22, 215, 3, 'Street C', '140.8', 260);
INSERT INTO `eventresults` VALUES (22, 216, 1, 'Street Max 1-2', '148.2', 261);
INSERT INTO `eventresults` VALUES (22, 62, 1, 'Street Max 3-4', '155.3', 262);
INSERT INTO `eventresults` VALUES (22, 217, 1, 'Super Street 1-2', '141.4', 263);
INSERT INTO `eventresults` VALUES (22, 218, 2, 'Super Street 1-2', '138.4', 264);
INSERT INTO `eventresults` VALUES (22, 194, 1, 'Super Street 1-2 Nw', '147.2', 265);
INSERT INTO `eventresults` VALUES (22, 219, 2, 'Super Street 1-2 Nw', '129.1', 266);
INSERT INTO `eventresults` VALUES (22, 211, 1, 'Super Street 5+', '158.5', 267);
INSERT INTO `eventresults` VALUES (23, 169, 1, 'Extreme 1', '164.5', 268);
INSERT INTO `eventresults` VALUES (23, 220, 1, 'Mini Street 1', '152.4', 269);
INSERT INTO `eventresults` VALUES (23, 221, 2, 'Mini Street 1', '132.5', 270);
INSERT INTO `eventresults` VALUES (23, 222, 1, 'Mini Street 2', '145.3', 271);
INSERT INTO `eventresults` VALUES (23, 223, 2, 'Mini Street 2', '137.8', 272);
INSERT INTO `eventresults` VALUES (23, 224, 1, 'Street A', '143.4', 273);
INSERT INTO `eventresults` VALUES (23, 225, 2, 'Street A', '145.3', 274);
INSERT INTO `eventresults` VALUES (23, 226, 1, 'Street B', '150', 275);
INSERT INTO `eventresults` VALUES (23, 227, 2, 'Street B', '145.7', 276);
INSERT INTO `eventresults` VALUES (23, 228, 3, 'Street B', '148.6', 277);
INSERT INTO `eventresults` VALUES (23, 229, 4, 'Street B', '139.7', 278);
INSERT INTO `eventresults` VALUES (23, 230, 1, 'Street C', '140', 279);
INSERT INTO `eventresults` VALUES (23, 231, 1, 'Street Max 3-4', '151.3', 280);
INSERT INTO `eventresults` VALUES (23, 65, 1, 'Super Street 1-2', '164.9', 281);
INSERT INTO `eventresults` VALUES (23, 194, 2, 'Super Street 1-2', '159.8', 282);
INSERT INTO `eventresults` VALUES (23, 201, 1, 'Super Street 1-2 Nw', '161.9', 283);
INSERT INTO `eventresults` VALUES (23, 62, 1, 'Super Street 5+', '159', 284);
INSERT INTO `eventresults` VALUES (24, 172, 1, 'Extreme 2', '160.7', 285);
INSERT INTO `eventresults` VALUES (24, 179, 1, 'Street A', '153.1', 286);
INSERT INTO `eventresults` VALUES (24, 232, 2, 'Street A', '140.3', 287);
INSERT INTO `eventresults` VALUES (24, 233, 3, 'Street A', '137.7', 288);
INSERT INTO `eventresults` VALUES (24, 234, 4, 'Street A', '135.2', 289);
INSERT INTO `eventresults` VALUES (24, 182, 1, 'Street B', '150.1', 290);
INSERT INTO `eventresults` VALUES (24, 203, 2, 'Street B', '148.8', 291);
INSERT INTO `eventresults` VALUES (24, 235, 3, 'Street B', '150.5', 292);
INSERT INTO `eventresults` VALUES (24, 236, 4, 'Street B', '145.2', 293);
INSERT INTO `eventresults` VALUES (24, 237, 5, 'Street B', '145.7', 294);
INSERT INTO `eventresults` VALUES (24, 238, 6, 'Street B', '144.4', 295);
INSERT INTO `eventresults` VALUES (24, 239, 7, 'Street B', '141.6', 296);
INSERT INTO `eventresults` VALUES (24, 240, 8, 'Street B', '140.9', 297);
INSERT INTO `eventresults` VALUES (24, 241, 1, 'Street C', '150', 298);
INSERT INTO `eventresults` VALUES (24, 242, 2, 'Street C', '146.4', 299);
INSERT INTO `eventresults` VALUES (24, 243, 3, 'Street C', '146.7', 300);
INSERT INTO `eventresults` VALUES (24, 244, 4, 'Street C', '145.3', 301);
INSERT INTO `eventresults` VALUES (24, 245, 5, 'Street C', '140.3', 302);
INSERT INTO `eventresults` VALUES (24, 246, 6, 'Street C', '135.5', 303);
INSERT INTO `eventresults` VALUES (24, 247, 1, 'Street Max 1-2', '147.1', 304);
INSERT INTO `eventresults` VALUES (24, 248, 2, 'Street Max 1-2', '140.6', 305);
INSERT INTO `eventresults` VALUES (24, 249, 3, 'Street Max 1-2', '134.6', 306);
INSERT INTO `eventresults` VALUES (24, 188, 4, 'Street Max 1-2', '130.9', 307);
INSERT INTO `eventresults` VALUES (24, 190, 1, 'Street Max 3-4', '154.3', 308);
INSERT INTO `eventresults` VALUES (24, 250, 2, 'Street Max 3-4', '141.1', 309);
INSERT INTO `eventresults` VALUES (24, 251, 3, 'Street Max 3-4', '139.8', 310);
INSERT INTO `eventresults` VALUES (24, 252, 1, 'Super Street 1-2', '159', 311);
INSERT INTO `eventresults` VALUES (24, 253, 2, 'Super Street 1-2', '145.5', 312);
INSERT INTO `eventresults` VALUES (24, 254, 3, 'Super Street 1-2', '141.2', 313);
INSERT INTO `eventresults` VALUES (24, 255, 4, 'Super Street 1-2', '141', 314);
INSERT INTO `eventresults` VALUES (24, 256, 5, 'Super Street 1-2', '140.8', 315);
INSERT INTO `eventresults` VALUES (24, 257, 1, 'Super Street 1-2 Nw', '141.9', 316);
INSERT INTO `eventresults` VALUES (24, 258, 2, 'Super Street 1-2 Nw', '139.7', 317);
INSERT INTO `eventresults` VALUES (24, 259, 3, 'Super Street 1-2 Nw', '143.7', 318);
INSERT INTO `eventresults` VALUES (24, 260, 4, 'Super Street 1-2 Nw', '140.8', 319);
INSERT INTO `eventresults` VALUES (24, 261, 1, 'Super Street 3-4', '149.5', 320);
INSERT INTO `eventresults` VALUES (24, 262, 2, 'Super Street 3-4', '135.1', 321);
INSERT INTO `eventresults` VALUES (24, 210, 1, 'Super Street 5+', '162.8', 322);
INSERT INTO `eventresults` VALUES (24, 263, 2, 'Super Street 5+', '146.5', 323);
INSERT INTO `eventresults` VALUES (24, 264, 3, 'Super Street 5+', '145.7', 324);
INSERT INTO `eventresults` VALUES (25, 265, 1, 'Mini Street 1', '138', 325);
INSERT INTO `eventresults` VALUES (25, 266, 2, 'Mini Street 1', '131.9', 326);
INSERT INTO `eventresults` VALUES (25, 267, 1, 'Mini Street 2', '139.5', 327);
INSERT INTO `eventresults` VALUES (25, 268, 2, 'Mini Street 2', '135', 328);
INSERT INTO `eventresults` VALUES (25, 269, 3, 'Mini Street 2', '130.7', 329);
INSERT INTO `eventresults` VALUES (25, 270, 1, 'Mini Street 3', '141.6', 330);
INSERT INTO `eventresults` VALUES (25, 271, 2, 'Mini Street 3', '138.5', 331);
INSERT INTO `eventresults` VALUES (25, 272, 3, 'Mini Street 3', '137', 332);
INSERT INTO `eventresults` VALUES (25, 273, 4, 'Mini Street 3', '136.4', 333);
INSERT INTO `eventresults` VALUES (25, 28, 1, 'Street A', '153.6', 334);
INSERT INTO `eventresults` VALUES (25, 274, 2, 'Street A', '149.8', 335);
INSERT INTO `eventresults` VALUES (25, 32, 3, 'Street A', '149.8', 336);
INSERT INTO `eventresults` VALUES (25, 36, 1, 'Street B', '155', 337);
INSERT INTO `eventresults` VALUES (25, 42, 2, 'Street B', '152.7', 338);
INSERT INTO `eventresults` VALUES (25, 275, 3, 'Street B', '151.3', 339);
INSERT INTO `eventresults` VALUES (25, 52, 1, 'Street Max 1-2', '157.9', 340);
INSERT INTO `eventresults` VALUES (25, 53, 2, 'Street Max 1-2', '151.3', 341);
INSERT INTO `eventresults` VALUES (25, 192, 1, 'Street Max 3-4', '159.5', 342);
INSERT INTO `eventresults` VALUES (25, 78, 1, 'Super Street 1-2', '164.5', 343);
INSERT INTO `eventresults` VALUES (25, 200, 1, 'Super Street 1-2 Nw', '161', 344);
INSERT INTO `eventresults` VALUES (25, 79, 1, 'Super Street 3-4', '167.3', 345);
INSERT INTO `eventresults` VALUES (25, 209, 2, 'Super Street 3-4', '139.3', 346);
INSERT INTO `eventresults` VALUES (25, 86, 1, 'Super Street 5+', '168.6', 347);
INSERT INTO `eventresults` VALUES (26, 104, 1, 'Street A', '153.4', 348);
INSERT INTO `eventresults` VALUES (26, 105, 2, 'Street A', '152.6', 349);
INSERT INTO `eventresults` VALUES (26, 276, 3, 'Street A', '150.2', 350);
INSERT INTO `eventresults` VALUES (26, 224, 4, 'Street A', '149.2', 351);
INSERT INTO `eventresults` VALUES (26, 110, 1, 'Street B', '155.3', 352);
INSERT INTO `eventresults` VALUES (26, 277, 2, 'Street B', '147.5', 353);
INSERT INTO `eventresults` VALUES (26, 94, 1, 'Street C', '156.9', 354);
INSERT INTO `eventresults` VALUES (26, 115, 2, 'Street C', '151.7', 355);
INSERT INTO `eventresults` VALUES (26, 278, 3, 'Street C', '150.5', 356);
INSERT INTO `eventresults` VALUES (26, 279, 4, 'Street C', '144.8', 357);
INSERT INTO `eventresults` VALUES (26, 123, 1, 'Street Max 1-2', '155.8', 358);
INSERT INTO `eventresults` VALUES (26, 280, 2, 'Street Max 1-2', '151.1', 359);
INSERT INTO `eventresults` VALUES (26, 187, 3, 'Street Max 1-2', '140.8', 360);
INSERT INTO `eventresults` VALUES (26, 281, 4, 'Street Max 1-2', '145.1', 361);
INSERT INTO `eventresults` VALUES (26, 193, 1, 'Street Max 3-4', '142.5', 362);
INSERT INTO `eventresults` VALUES (26, 282, 1, 'Super Street 1-2', '146.5', 363);
INSERT INTO `eventresults` VALUES (26, 283, 2, 'Super Street 1-2', '138.1', 364);
INSERT INTO `eventresults` VALUES (26, 284, 1, 'Super Street 3-4', '147.8', 365);
INSERT INTO `eventresults` VALUES (26, 285, 2, 'Super Street 3-4', '141', 366);
INSERT INTO `eventresults` VALUES (26, 286, 3, 'Super Street 3-4', '139.8', 367);
INSERT INTO `eventresults` VALUES (26, 163, 1, 'Super Street 5+', '151.4', 368);
INSERT INTO `eventresults` VALUES (26, 85, 2, 'Super Street 5+', '145.1', 369);
INSERT INTO `eventresults` VALUES (26, 287, 3, 'Super Street 5+', '137', 370);
INSERT INTO `eventresults` VALUES (27, 95, 1, 'Extreme 1', '169.8', 371);
INSERT INTO `eventresults` VALUES (27, 98, 1, 'Extreme 2', '157.6', 372);
INSERT INTO `eventresults` VALUES (27, 29, 1, 'Street A', '151.4', 373);
INSERT INTO `eventresults` VALUES (27, 224, 2, 'Street A', '148.8', 374);
INSERT INTO `eventresults` VALUES (27, 140, 3, 'Street A', '148.5', 375);
INSERT INTO `eventresults` VALUES (27, 142, 4, 'Street A', '147.8', 376);
INSERT INTO `eventresults` VALUES (27, 148, 5, 'Street A', '143', 377);
INSERT INTO `eventresults` VALUES (27, 187, 6, 'Street A', '141.3', 378);
INSERT INTO `eventresults` VALUES (27, 110, 1, 'Street B', '155.5', 379);
INSERT INTO `eventresults` VALUES (27, 143, 2, 'Street B', '151.7', 380);
INSERT INTO `eventresults` VALUES (27, 288, 3, 'Street B', '136.5', 381);
INSERT INTO `eventresults` VALUES (27, 94, 1, 'Street C', '156.9', 382);
INSERT INTO `eventresults` VALUES (27, 44, 2, 'Street C', '156.7', 383);
INSERT INTO `eventresults` VALUES (27, 115, 3, 'Street C', '151.7', 384);
INSERT INTO `eventresults` VALUES (27, 289, 4, 'Street C', '151.1', 385);
INSERT INTO `eventresults` VALUES (27, 121, 1, 'Street Max 1-2', '156.5', 386);
INSERT INTO `eventresults` VALUES (27, 123, 2, 'Street Max 1-2', '156.1', 387);
INSERT INTO `eventresults` VALUES (27, 290, 1, 'Super Street 1-2', '163.8', 388);
INSERT INTO `eventresults` VALUES (27, 130, 2, 'Super Street 1-2', '160.1', 389);
INSERT INTO `eventresults` VALUES (27, 194, 3, 'Super Street 1-2', '162.9', 390);
INSERT INTO `eventresults` VALUES (27, 69, 4, 'Super Street 1-2', '148.1', 391);
INSERT INTO `eventresults` VALUES (27, 291, 1, 'Super Street 1-2 Nw', '143.1', 392);
INSERT INTO `eventresults` VALUES (27, 156, 2, 'Super Street 1-2 Nw', '146.6', 393);
INSERT INTO `eventresults` VALUES (27, 135, 3, 'Super Street 1-2 Nw', '138.4', 394);
INSERT INTO `eventresults` VALUES (27, 292, 4, 'Super Street 1-2 Nw', '143', 395);
INSERT INTO `eventresults` VALUES (27, 293, 5, 'Super Street 1-2 Nw', '130', 396);
INSERT INTO `eventresults` VALUES (27, 158, 1, 'Super Street 3-4', '154.2', 397);
INSERT INTO `eventresults` VALUES (27, 294, 2, 'Super Street 3-4', '152.5', 398);
INSERT INTO `eventresults` VALUES (27, 126, 3, 'Super Street 3-4', '150.2', 399);
INSERT INTO `eventresults` VALUES (27, 210, 1, 'Super Street 5+', '163.5', 400);
INSERT INTO `eventresults` VALUES (27, 162, 2, 'Super Street 5+', '151.2', 401);
INSERT INTO `eventresults` VALUES (30, 181, 1, 'Street B', '154.1', 402);
INSERT INTO `eventresults` VALUES (30, 295, 2, 'Street B', '140.4', 403);
INSERT INTO `eventresults` VALUES (30, 185, 3, 'Street B', '151.7', 404);
INSERT INTO `eventresults` VALUES (30, 230, 1, 'Street C', '149.8', 405);
INSERT INTO `eventresults` VALUES (30, 296, 1, 'Street Max 1-2', '150.4', 406);
INSERT INTO `eventresults` VALUES (30, 189, 1, 'Street Max 3-4', '161.6', 407);
INSERT INTO `eventresults` VALUES (30, 297, 1, 'Super Street 1-2 Nw', '157.6', 408);
INSERT INTO `eventresults` VALUES (30, 298, 2, 'Super Street 1-2 Nw', '146.4', 409);
INSERT INTO `eventresults` VALUES (30, 299, 1, 'Super Street 5+', '140', 410);
INSERT INTO `eventresults` VALUES (31, 102, 1, 'Extreme 5+', '175.3', 411);
INSERT INTO `eventresults` VALUES (31, 100, 2, 'Extreme 5+', '161.7', 412);
INSERT INTO `eventresults` VALUES (31, 300, 3, 'Extreme 5+', '160.8', 413);
INSERT INTO `eventresults` VALUES (31, 112, 1, 'Street B', '156', 414);
INSERT INTO `eventresults` VALUES (31, 42, 2, 'Street B', '152.8', 415);
INSERT INTO `eventresults` VALUES (31, 301, 1, 'Street Max 3-4', '158.1', 416);
INSERT INTO `eventresults` VALUES (31, 302, 2, 'Street Max 3-4', '147.5', 417);
INSERT INTO `eventresults` VALUES (31, 195, 1, 'Super Street 1-2', '162.3', 418);
INSERT INTO `eventresults` VALUES (31, 303, 2, 'Super Street 1-2', '157.9', 419);
INSERT INTO `eventresults` VALUES (31, 67, 3, 'Super Street 1-2', '155.6', 420);
INSERT INTO `eventresults` VALUES (31, 304, 1, 'Super Street 1-2 Nw', '145.7', 421);
INSERT INTO `eventresults` VALUES (32, 305, 1, 'Street A', '137.6', 422);
INSERT INTO `eventresults` VALUES (32, 306, 2, 'Street A', '133.3', 423);
INSERT INTO `eventresults` VALUES (32, 235, 1, 'Street B', '151.8', 424);
INSERT INTO `eventresults` VALUES (32, 243, 1, 'Street C', '145.6', 425);
INSERT INTO `eventresults` VALUES (32, 188, 1, 'Street Max 1-2', '143', 426);
INSERT INTO `eventresults` VALUES (32, 307, 2, 'Street Max 1-2', '139.1', 427);
INSERT INTO `eventresults` VALUES (32, 190, 1, 'Street Max 3-4', '154.1', 428);
INSERT INTO `eventresults` VALUES (32, 308, 2, 'Street Max 3-4', '138.9', 429);
INSERT INTO `eventresults` VALUES (32, 182, 1, 'Super Street 1-2', '150.5', 430);
INSERT INTO `eventresults` VALUES (32, 232, 2, 'Super Street 1-2', '141.6', 431);
INSERT INTO `eventresults` VALUES (32, 309, 1, 'Super Street 1-2 Nw', '147.9', 432);
INSERT INTO `eventresults` VALUES (32, 257, 2, 'Super Street 1-2 Nw', '146.1', 433);
INSERT INTO `eventresults` VALUES (32, 203, 3, 'Super Street 1-2 Nw', '142.4', 434);
INSERT INTO `eventresults` VALUES (32, 210, 1, 'Super Street 3-4', '161.2', 435);
INSERT INTO `eventresults` VALUES (32, 310, 2, 'Super Street 3-4', '154', 436);
INSERT INTO `eventresults` VALUES (33, 76, 1, 'Extreme 5+', '122.4', 437);
INSERT INTO `eventresults` VALUES (33, 311, 1, 'Mini Street 3', '144', 438);
INSERT INTO `eventresults` VALUES (33, 312, 2, 'Mini Street 3', '140.1', 439);
INSERT INTO `eventresults` VALUES (33, 313, 3, 'Mini Street 3', '135.1', 440);
INSERT INTO `eventresults` VALUES (33, 29, 1, 'Street A', '140.7', 441);
INSERT INTO `eventresults` VALUES (33, 183, 1, 'Street B', '151', 442);
INSERT INTO `eventresults` VALUES (33, 192, 1, 'Street Max 3-4', '158.7', 443);
INSERT INTO `eventresults` VALUES (33, 197, 1, 'Super Street 1-2', '160.7', 444);
INSERT INTO `eventresults` VALUES (33, 314, 1, 'Super Street 1-2 Nw', '141.9', 445);
INSERT INTO `eventresults` VALUES (33, 212, 1, 'Super Street 5+', '152.4', 446);
INSERT INTO `eventresults` VALUES (34, 29, 1, 'Street A', '150.4', 447);
INSERT INTO `eventresults` VALUES (34, 60, 1, 'Street Max 3-4', '161.7', 448);
INSERT INTO `eventresults` VALUES (34, 197, 1, 'Super Street 1-2', '161.3', 449);
INSERT INTO `eventresults` VALUES (34, 212, 1, 'Super Street 1-2 Nw', '134.3', 450);
INSERT INTO `eventresults` VALUES (34, 52, 1, 'Super Street 3-4', '140', 451);
INSERT INTO `eventresults` VALUES (34, 86, 1, 'Super Street 5+', '168.4', 452);
INSERT INTO `eventresults` VALUES (35, 166, 1, 'Extreme 1', '162.9', 453);
INSERT INTO `eventresults` VALUES (35, 315, 1, 'Street A', '142.7', 454);
INSERT INTO `eventresults` VALUES (35, 316, 2, 'Street A', '139.4', 455);
INSERT INTO `eventresults` VALUES (35, 317, 1, 'Street B', '150.5', 456);
INSERT INTO `eventresults` VALUES (35, 318, 2, 'Street B', '150.3', 457);
INSERT INTO `eventresults` VALUES (35, 319, 3, 'Street B', '142', 458);
INSERT INTO `eventresults` VALUES (35, 186, 1, 'Street C', '152.5', 459);
INSERT INTO `eventresults` VALUES (35, 320, 1, 'Street Max 1-2', '151', 460);
INSERT INTO `eventresults` VALUES (35, 184, 1, 'Street Max 3-4', '143.8', 461);
INSERT INTO `eventresults` VALUES (35, 321, 1, 'Super Street 1-2', '151', 462);
INSERT INTO `eventresults` VALUES (35, 322, 2, 'Super Street 1-2', '139', 463);
INSERT INTO `eventresults` VALUES (35, 202, 1, 'Super Street 1-2 Nw', '162.6', 464);
INSERT INTO `eventresults` VALUES (35, 323, 2, 'Super Street 1-2 Nw', '157.8', 465);
INSERT INTO `eventresults` VALUES (35, 205, 1, 'Super Street 3-4', '163.9', 466);
INSERT INTO `eventresults` VALUES (35, 324, 2, 'Super Street 3-4', '142.2', 467);
INSERT INTO `eventresults` VALUES (35, 325, 1, 'Super Street 5+', '154', 468);
INSERT INTO `eventresults` VALUES (36, 100, 1, 'Extreme 5+', '168.9', 469);
INSERT INTO `eventresults` VALUES (36, 44, 1, 'Street A', '153', 470);
INSERT INTO `eventresults` VALUES (36, 279, 2, 'Street A', '150.2', 471);
INSERT INTO `eventresults` VALUES (36, 326, 3, 'Street A', '132.9', 472);
INSERT INTO `eventresults` VALUES (36, 183, 1, 'Street B', '151.5', 473);
INSERT INTO `eventresults` VALUES (36, 327, 2, 'Street B', '136.2', 474);
INSERT INTO `eventresults` VALUES (36, 328, 3, 'Street B', '131.4', 475);
INSERT INTO `eventresults` VALUES (36, 46, 1, 'Street C', '152.2', 476);
INSERT INTO `eventresults` VALUES (36, 329, 2, 'Street C', '142.1', 477);
INSERT INTO `eventresults` VALUES (36, 123, 1, 'Street Max 1-2', '156', 478);
INSERT INTO `eventresults` VALUES (36, 288, 1, 'Street Max 3-4', '137.3', 479);
INSERT INTO `eventresults` VALUES (36, 330, 2, 'Street Max 3-4', '132.6', 480);
INSERT INTO `eventresults` VALUES (36, 331, 1, 'Super Street 1-2', '147.5', 481);
INSERT INTO `eventresults` VALUES (36, 277, 1, 'Super Street 1-2 Nw', '151.1', 482);
INSERT INTO `eventresults` VALUES (36, 332, 2, 'Super Street 1-2 Nw', '145.8', 483);
INSERT INTO `eventresults` VALUES (36, 333, 3, 'Super Street 1-2 Nw', '139', 484);
INSERT INTO `eventresults` VALUES (36, 334, 4, 'Super Street 1-2 Nw', '140.3', 485);
INSERT INTO `eventresults` VALUES (36, 335, 5, 'Super Street 1-2 Nw', '135.2', 486);
INSERT INTO `eventresults` VALUES (36, 336, 1, 'Super Street 3-4', '146.9', 487);
INSERT INTO `eventresults` VALUES (36, 337, 1, 'Super Street 5+', '136.6', 488);
INSERT INTO `eventresults` VALUES (37, 225, 1, 'Street A', '144.4', 489);
INSERT INTO `eventresults` VALUES (37, 338, 2, 'Street A', '140.8', 490);
INSERT INTO `eventresults` VALUES (37, 339, 3, 'Street A', '135', 491);
INSERT INTO `eventresults` VALUES (37, 182, 1, 'Street B', '152.9', 492);
INSERT INTO `eventresults` VALUES (37, 227, 2, 'Street B', '148.6', 493);
INSERT INTO `eventresults` VALUES (37, 340, 3, 'Street B', '140.2', 494);
INSERT INTO `eventresults` VALUES (37, 341, 1, 'Street C', '145.5', 495);
INSERT INTO `eventresults` VALUES (37, 231, 1, 'Street Max 1-2', '152.9', 496);
INSERT INTO `eventresults` VALUES (37, 342, 2, 'Street Max 1-2', '149.8', 497);
INSERT INTO `eventresults` VALUES (37, 292, 3, 'Street Max 1-2', '141', 498);
INSERT INTO `eventresults` VALUES (37, 343, 1, 'Street Max 3-4', '146.4', 499);
INSERT INTO `eventresults` VALUES (37, 69, 1, 'Super Street 1-2', '155.6', 500);
INSERT INTO `eventresults` VALUES (37, 344, 2, 'Super Street 1-2', '144.2', 501);
INSERT INTO `eventresults` VALUES (37, 345, 3, 'Super Street 1-2', '141', 502);
INSERT INTO `eventresults` VALUES (37, 346, 4, 'Super Street 1-2', '139', 503);
INSERT INTO `eventresults` VALUES (37, 257, 1, 'Super Street 1-2 Nw', '151.8', 504);
INSERT INTO `eventresults` VALUES (37, 347, 2, 'Super Street 1-2 Nw', '144.6', 505);
INSERT INTO `eventresults` VALUES (37, 207, 1, 'Super Street 3-4', '155.3', 506);
INSERT INTO `eventresults` VALUES (37, 348, 2, 'Super Street 3-4', '146.7', 507);
INSERT INTO `eventresults` VALUES (37, 349, 1, 'Super Street 5+', '151.8', 508);
INSERT INTO `eventresults` VALUES (38, 350, 1, 'Street A', '139.8', 509);
INSERT INTO `eventresults` VALUES (38, 351, 2, 'Street A', '138.5', 510);
INSERT INTO `eventresults` VALUES (38, 63, 1, 'Street C', '149.5', 511);
INSERT INTO `eventresults` VALUES (38, 352, 2, 'Street C', '144.6', 512);
INSERT INTO `eventresults` VALUES (38, 353, 3, 'Street C', '138.3', 513);
INSERT INTO `eventresults` VALUES (38, 354, 1, 'Street Max 1-2', '148.7', 514);
INSERT INTO `eventresults` VALUES (38, 355, 2, 'Street Max 1-2', '144.5', 515);
INSERT INTO `eventresults` VALUES (38, 356, 3, 'Street Max 1-2', '146', 516);
INSERT INTO `eventresults` VALUES (38, 357, 1, 'Street Max 3-4', '141.9', 517);
INSERT INTO `eventresults` VALUES (38, 358, 1, 'Super Street 1-2', '144.6', 518);
INSERT INTO `eventresults` VALUES (38, 73, 1, 'Super Street 1-2 Nw', '157.7', 519);
INSERT INTO `eventresults` VALUES (38, 84, 2, 'Super Street 1-2 Nw', '144.7', 520);
INSERT INTO `eventresults` VALUES (38, 80, 1, 'Super Street 3-4', '155.5', 521);
INSERT INTO `eventresults` VALUES (38, 359, 2, 'Super Street 3-4', '147.2', 522);
INSERT INTO `eventresults` VALUES (38, 360, 3, 'Super Street 3-4', '147.1', 523);
INSERT INTO `eventresults` VALUES (38, 85, 4, 'Super Street 3-4', '146.7', 524);
INSERT INTO `eventresults` VALUES (38, 81, 1, 'Super Street 5+', '163.4', 525);
INSERT INTO `eventresults` VALUES (38, 361, 2, 'Super Street 5+', '149.4', 526);
INSERT INTO `eventresults` VALUES (38, 362, 3, 'Super Street 5+', '153.7', 527);
INSERT INTO `eventresults` VALUES (39, 167, 1, 'Extreme 1', '164', 528);
INSERT INTO `eventresults` VALUES (39, 363, 1, 'Extreme 3-4', '175.9', 529);
INSERT INTO `eventresults` VALUES (39, 102, 1, 'Extreme 5+', '175.1', 530);
INSERT INTO `eventresults` VALUES (39, 177, 2, 'Extreme 5+', '164.2', 531);
INSERT INTO `eventresults` VALUES (39, 364, 1, 'Street A', '134.3', 532);
INSERT INTO `eventresults` VALUES (39, 365, 2, 'Street A', '130.8', 533);
INSERT INTO `eventresults` VALUES (39, 366, 3, 'Street A', '145.3', 534);
INSERT INTO `eventresults` VALUES (39, 367, 4, 'Street A', '139', 535);
INSERT INTO `eventresults` VALUES (39, 42, 1, 'Street B', '152.3', 536);
INSERT INTO `eventresults` VALUES (39, 37, 2, 'Street B', '153.1', 537);
INSERT INTO `eventresults` VALUES (39, 368, 3, 'Street B', '139.9', 538);
INSERT INTO `eventresults` VALUES (39, 46, 1, 'Street C', '154', 539);
INSERT INTO `eventresults` VALUES (39, 63, 2, 'Street C', '149.2', 540);
INSERT INTO `eventresults` VALUES (39, 369, 3, 'Street C', '139.9', 541);
INSERT INTO `eventresults` VALUES (39, 353, 4, 'Street C', '138.8', 542);
INSERT INTO `eventresults` VALUES (39, 370, 5, 'Street C', '132.3', 543);
INSERT INTO `eventresults` VALUES (39, 371, 1, 'Street Max 3-4', '140.5', 544);
INSERT INTO `eventresults` VALUES (39, 372, 2, 'Street Max 3-4', '134.8', 545);
INSERT INTO `eventresults` VALUES (39, 66, 1, 'Super Street 1-2', '164.8', 546);
INSERT INTO `eventresults` VALUES (39, 197, 2, 'Super Street 1-2', '163.8', 547);
INSERT INTO `eventresults` VALUES (39, 129, 3, 'Super Street 1-2', '152.9', 548);
INSERT INTO `eventresults` VALUES (39, 373, 1, 'Super Street 1-2 Nw', '148.7', 549);
INSERT INTO `eventresults` VALUES (39, 374, 2, 'Super Street 1-2 Nw', '146.9', 550);
INSERT INTO `eventresults` VALUES (39, 375, 3, 'Super Street 1-2 Nw', '147', 551);
INSERT INTO `eventresults` VALUES (39, 212, 4, 'Super Street 1-2 Nw', '134.2', 552);
INSERT INTO `eventresults` VALUES (39, 376, 5, 'Super Street 1-2 Nw', '131.4', 553);
INSERT INTO `eventresults` VALUES (39, 59, 1, 'Super Street 3-4', '163.6', 554);
INSERT INTO `eventresults` VALUES (39, 377, 2, 'Super Street 3-4', '147.9', 555);
INSERT INTO `eventresults` VALUES (39, 85, 3, 'Super Street 3-4', '146.8', 556);
INSERT INTO `eventresults` VALUES (39, 87, 1, 'Super Street 5+', '167', 557);
INSERT INTO `eventresults` VALUES (39, 361, 2, 'Super Street 5+', '154.5', 558);
INSERT INTO `eventresults` VALUES (40, 378, 1, 'Extreme 2', '149.3', 559);
INSERT INTO `eventresults` VALUES (40, 315, 1, 'Street A', '142.8', 560);
INSERT INTO `eventresults` VALUES (40, 318, 1, 'Street B', '151.7', 561);
INSERT INTO `eventresults` VALUES (40, 379, 2, 'Street B', '144.1', 562);
INSERT INTO `eventresults` VALUES (40, 317, 3, 'Street B', '149.5', 563);
INSERT INTO `eventresults` VALUES (40, 380, 4, 'Street B', '136.5', 564);
INSERT INTO `eventresults` VALUES (40, 381, 1, 'Street C', '144.6', 565);
INSERT INTO `eventresults` VALUES (40, 320, 1, 'Street Max 1-2', '151.9', 566);
INSERT INTO `eventresults` VALUES (40, 382, 1, 'Street Max 3-4', '146.2', 567);
INSERT INTO `eventresults` VALUES (40, 383, 2, 'Street Max 3-4', '144.2', 568);
INSERT INTO `eventresults` VALUES (40, 384, 1, 'Super Street 1-2', '151.5', 569);
INSERT INTO `eventresults` VALUES (40, 385, 2, 'Super Street 1-2', '144.2', 570);
INSERT INTO `eventresults` VALUES (40, 386, 1, 'Super Street 1-2 Nw', '151.3', 571);
INSERT INTO `eventresults` VALUES (40, 387, 1, 'Super Street 3-4', '156', 572);
INSERT INTO `eventresults` VALUES (40, 388, 2, 'Super Street 3-4', '148.4', 573);
INSERT INTO `eventresults` VALUES (40, 389, 3, 'Super Street 3-4', '143.2', 574);
INSERT INTO `eventresults` VALUES (40, 390, 1, 'Super Street 5+', '153.3', 575);
INSERT INTO `eventresults` VALUES (40, 391, 2, 'Super Street 5+', '149.2', 576);
INSERT INTO `eventresults` VALUES (41, 98, 1, 'Extreme 1', '155.6', 577);
INSERT INTO `eventresults` VALUES (41, 126, 1, 'Extreme 3-4', '153.2', 578);
INSERT INTO `eventresults` VALUES (41, 105, 1, 'Street A', '154.8', 579);
INSERT INTO `eventresults` VALUES (41, 139, 2, 'Street A', '154.4', 580);
INSERT INTO `eventresults` VALUES (41, 110, 1, 'Street B', '155.6', 581);
INSERT INTO `eventresults` VALUES (41, 183, 2, 'Street B', '153.7', 582);
INSERT INTO `eventresults` VALUES (41, 392, 3, 'Street B', '140', 583);
INSERT INTO `eventresults` VALUES (41, 94, 1, 'Street C', '156.6', 584);
INSERT INTO `eventresults` VALUES (41, 120, 2, 'Street C', '137.3', 585);
INSERT INTO `eventresults` VALUES (41, 121, 1, 'Street Max 1-2', '156.2', 586);
INSERT INTO `eventresults` VALUES (41, 149, 2, 'Street Max 1-2', '147.1', 587);
INSERT INTO `eventresults` VALUES (41, 393, 3, 'Street Max 1-2', '140', 588);
INSERT INTO `eventresults` VALUES (41, 46, 1, 'Street Max 3-4', '153.3', 589);
INSERT INTO `eventresults` VALUES (41, 123, 1, 'Super Street 1-2', '156.4', 590);
INSERT INTO `eventresults` VALUES (41, 394, 2, 'Super Street 1-2', '133.5', 591);
INSERT INTO `eventresults` VALUES (41, 156, 1, 'Super Street 1-2 Nw', '146.6', 592);
INSERT INTO `eventresults` VALUES (41, 395, 2, 'Super Street 1-2 Nw', '140.8', 593);
INSERT INTO `eventresults` VALUES (41, 135, 3, 'Super Street 1-2 Nw', '138.3', 594);
INSERT INTO `eventresults` VALUES (41, 287, 4, 'Super Street 1-2 Nw', '136.5', 595);
INSERT INTO `eventresults` VALUES (41, 127, 1, 'Super Street 3-4', '159', 596);
INSERT INTO `eventresults` VALUES (41, 396, 2, 'Super Street 3-4', '146.6', 597);
INSERT INTO `eventresults` VALUES (41, 115, 1, 'Super Street 5+', '151.7', 598);
INSERT INTO `eventresults` VALUES (41, 397, 2, 'Super Street 5+', '149.3', 599);
INSERT INTO `eventresults` VALUES (41, 164, 3, 'Super Street 5+', '150', 600);
INSERT INTO `eventresults` VALUES (41, 398, 4, 'Super Street 5+', '141.9', 601);
INSERT INTO `eventresults` VALUES (41, 399, 5, 'Super Street 5+', '141.4', 602);

-- --------------------------------------------------------

-- 
-- Table structure for table `events`
-- 

CREATE TABLE `events` (
  `EventName` text NOT NULL,
  `EventID` int(11) NOT NULL auto_increment,
  `EventDate` text,
  `PointsMultiplier` int(11) NOT NULL default '0',
  `EventLocation` text,
  `Season` int(11) NOT NULL default '0',
  PRIMARY KEY  (`EventID`)
) TYPE=InnoDB AUTO_INCREMENT=42 ;

-- 
-- Dumping data for table `events`
-- 

INSERT INTO `events` VALUES ('Spring Break Nationals', 11, '3/25/2006', 3, 'Daytona Beach, FL', 2006);
INSERT INTO `events` VALUES ('Steel Valley Regionals', 12, '5/20/2006', 3, 'Chester, WV', 2006);
INSERT INTO `events` VALUES ('Bs Car Stereo', 13, '7/16/2006', 3, 'South Amherst, OH', 2006);
INSERT INTO `events` VALUES ('Xtremeblast.net', 14, '7/29/2006', 3, 'Wampum, PA', 2006);
INSERT INTO `events` VALUES ('DB Drag World Finals 2006', 15, '10/14/2006', 4, 'Louisville, KY', 2007);
INSERT INTO `events` VALUES ('Springdale Fire Dept.', 22, '4/8/2006', 3, 'Springdale, AR', 2006);
INSERT INTO `events` VALUES ('NW Audio', 23, '6/4/2006', 3, 'Platte City, MO', 2006);
INSERT INTO `events` VALUES ('Dropfest', 24, '6/3/2006', 3, 'Kaukauna, WI', 2006);
INSERT INTO `events` VALUES ('Audio X Inc.', 25, '6/10/2006', 3, 'Florence, AL', 2006);
INSERT INTO `events` VALUES ('H&K Audio', 26, '6/18/2006', 3, 'Kendalville, IN', 2006);
INSERT INTO `events` VALUES ('Maxxsonics USA', 27, '6/24/2006', 3, 'Lake Zurich, IL', 2006);
INSERT INTO `events` VALUES ('CN Sounds LLC', 28, '7/15/2006', 3, 'Ft. Wayne, IN', 2006);
INSERT INTO `events` VALUES ('Advanced Car Creations', 29, '7/23/2006', 3, 'Garden Grove, CA', 2006);
INSERT INTO `events` VALUES ('Loud n Clear', 30, '8/13/2006', 3, 'Oklahoma City, OK', 2006);
INSERT INTO `events` VALUES ('NSPL/Dream Makers', 31, '8/19/2006', 3, 'Myrtle Beach, SC', 2006);
INSERT INTO `events` VALUES ('Kartunes', 32, '8/20/2006', 3, 'West Allis, WI', 2006);
INSERT INTO `events` VALUES ('Stereo One', 33, '8/26/2006', 3, 'Dickson, TN', 2006);
INSERT INTO `events` VALUES ('Audio X', 34, '8/27/2006', 3, 'Florence, AL', 2006);
INSERT INTO `events` VALUES ('Alta Mere', 35, '8/27/2006', 3, 'Rocklin, CA', 2006);
INSERT INTO `events` VALUES ('Slamology', 36, '9/2/2006', 3, 'Indianapolis, IN', 2006);
INSERT INTO `events` VALUES ('Best Buy', 37, '9/9/2006', 3, 'West Des Moines, IA', 2006);
INSERT INTO `events` VALUES ('Sunshine State Nationals', 38, '9/10/2006', 3, 'Orlando, FL', 2006);
INSERT INTO `events` VALUES ('Nopi', 39, '9/16/2006', 3, 'Hampton, GA', 2006);
INSERT INTO `events` VALUES ('JC Car Audio', 40, '9/16/2006', 3, 'Sparks, NV', 2006);
INSERT INTO `events` VALUES ('Audio Outlaws', 41, '9/23/2006', 3, 'Brook Park, OH', 2006);

-- --------------------------------------------------------

-- 
-- Table structure for table `eventsold`
-- 

CREATE TABLE `eventsold` (
  `EventID` int(11) NOT NULL auto_increment,
  `EventName` text,
  `EventDate` text,
  `IsMulti` int(11) default NULL,
  PRIMARY KEY  (`EventID`)
) TYPE=InnoDB AUTO_INCREMENT=82 ;

-- 
-- Dumping data for table `eventsold`
-- 

INSERT INTO `eventsold` VALUES (1, 'dB Drag Racing Association', 'March 25, 2006', 3);
INSERT INTO `eventsold` VALUES (2, 'Audio Maxx', 'May 19, 2006', 1);
INSERT INTO `eventsold` VALUES (3, 'Steel Valley Regional', 'May 20, 2006', 3);
INSERT INTO `eventsold` VALUES (4, 'Circuit City Burlington', 'May 14, 2006', 1);
INSERT INTO `eventsold` VALUES (5, 'Innovative Motorsports', 'June 17, 2006', 1);
INSERT INTO `eventsold` VALUES (6, 'T Rex Audio', 'June  3, 2006', 1);
INSERT INTO `eventsold` VALUES (7, 'Innovative Motorsports', 'July  9, 2006', 1);
INSERT INTO `eventsold` VALUES (8, 'Bs Car Stereo', 'July 16, 2006', 3);
INSERT INTO `eventsold` VALUES (9, 'Xtremeblast.net', 'July 29, 2006', 3);
INSERT INTO `eventsold` VALUES (10, 'T-Rex Audio', 'July 22, 2006', 1);
INSERT INTO `eventsold` VALUES (11, 'Innovative Motorsports', 'May 13, 2006', 1);
INSERT INTO `eventsold` VALUES (12, 'Innovative Motorsports', 'July  8, 2006', 1);
INSERT INTO `eventsold` VALUES (13, 'NOPI', 'September 16, 2006', 3);
INSERT INTO `eventsold` VALUES (14, 'dB Drag Racing Association', 'October  7, 2005', 4);
INSERT INTO `eventsold` VALUES (15, 'Auto Sound Express', 'January  1, 2006', NULL);
INSERT INTO `eventsold` VALUES (16, 'USAudio', 'December 31, 2005', NULL);
INSERT INTO `eventsold` VALUES (17, 'Supreme Audio', 'December 18, 2005', NULL);
INSERT INTO `eventsold` VALUES (18, 'USAudio', 'April  1, 2006', NULL);
INSERT INTO `eventsold` VALUES (19, 'Auto Sound Express', 'March 19, 2006', NULL);
INSERT INTO `eventsold` VALUES (20, 'Installation Station', 'April  2, 2006', NULL);
INSERT INTO `eventsold` VALUES (21, 'Border Motorsports', 'April  9, 2006', NULL);
INSERT INTO `eventsold` VALUES (22, 'USAudio', 'May 13, 2006', NULL);
INSERT INTO `eventsold` VALUES (23, 'Supreme Audio', 'August 13, 2006', NULL);
INSERT INTO `eventsold` VALUES (24, 'Border Motorsports', 'May  7, 2006', NULL);
INSERT INTO `eventsold` VALUES (25, 'Audio Outlaws', 'May 27, 2006', NULL);
INSERT INTO `eventsold` VALUES (26, 'CN Sounds LLC', 'July 15, 2006', NULL);
INSERT INTO `eventsold` VALUES (27, 'Big Boi Customs', 'August 12, 2006', NULL);
INSERT INTO `eventsold` VALUES (28, 'Audio Advantage', 'August 25, 2006', NULL);
INSERT INTO `eventsold` VALUES (29, 'Audio Advantage', 'September  1, 2006', NULL);
INSERT INTO `eventsold` VALUES (30, 'Slamology', 'September  2, 2006', NULL);
INSERT INTO `eventsold` VALUES (31, 'Circuit City', 'September 15, 2006', NULL);
INSERT INTO `eventsold` VALUES (32, 'Pinnacle Electronics', 'March 19, 2006', NULL);
INSERT INTO `eventsold` VALUES (33, 'K and A Kustom Audio', 'July 16, 2006', NULL);
INSERT INTO `eventsold` VALUES (34, 'K and A Kustom Audio', 'August  6, 2006', NULL);
INSERT INTO `eventsold` VALUES (35, 'K and A Kustom Audio', 'July  2, 2006', NULL);
INSERT INTO `eventsold` VALUES (36, 'K and A Kustom Audio', 'September 10, 2006', NULL);
INSERT INTO `eventsold` VALUES (37, 'K and A Kustom Audio', 'August 20, 2006', NULL);
INSERT INTO `eventsold` VALUES (38, 'USACi / ASP', 'October 14, 2005', NULL);
INSERT INTO `eventsold` VALUES (39, 'Performance Audio', 'August  5, 2006', NULL);
INSERT INTO `eventsold` VALUES (40, 'Audio Plus', 'August 12, 2006', NULL);
INSERT INTO `eventsold` VALUES (41, 'Loud n Clear', 'August 13, 2006', NULL);
INSERT INTO `eventsold` VALUES (42, 'Autosound Inc.', 'September 16, 2006', NULL);
INSERT INTO `eventsold` VALUES (43, 'H&K Audio', 'December 31, 2005', NULL);
INSERT INTO `eventsold` VALUES (44, 'Hreha Reflections', 'January 15, 2006', NULL);
INSERT INTO `eventsold` VALUES (45, 'Hreha Reflections', 'March  5, 2006', NULL);
INSERT INTO `eventsold` VALUES (46, 'Hreha Reflections', 'February 12, 2006', NULL);
INSERT INTO `eventsold` VALUES (47, 'The Andersons', 'June  3, 2006', NULL);
INSERT INTO `eventsold` VALUES (48, 'Norwalk Raceway Park', 'June  7, 2006', NULL);
INSERT INTO `eventsold` VALUES (49, 'H&K Audio', 'June 18, 2006', NULL);
INSERT INTO `eventsold` VALUES (50, 'Audio Outlaws', 'July  8, 2006', NULL);
INSERT INTO `eventsold` VALUES (51, 'Norwalk Raceway Park', 'July  5, 2006', NULL);
INSERT INTO `eventsold` VALUES (52, 'HiFi Connection', 'July  9, 2006', NULL);
INSERT INTO `eventsold` VALUES (53, 'Maxxsonics USA', 'June 24, 2006', NULL);
INSERT INTO `eventsold` VALUES (54, 'SPLMAX', 'July  4, 2006', NULL);
INSERT INTO `eventsold` VALUES (55, 'Best Buy', 'July 22, 2006', NULL);
INSERT INTO `eventsold` VALUES (56, 'Norwalk Raceway Park', 'August  2, 2006', NULL);
INSERT INTO `eventsold` VALUES (57, 'H&K Audio', 'August 13, 2006', NULL);
INSERT INTO `eventsold` VALUES (58, 'Norwalk Raceway Park', 'August 30, 2006', NULL);
INSERT INTO `eventsold` VALUES (59, 'Advanced Mobile Toys', 'August 26, 2006', NULL);
INSERT INTO `eventsold` VALUES (60, 'Team Nutz Technology', 'September 10, 2006', NULL);
INSERT INTO `eventsold` VALUES (61, 'Advanced Mobile Toys', 'August  4, 2006', NULL);
INSERT INTO `eventsold` VALUES (62, 'Audio Outlaws', 'August  5, 2006', NULL);
INSERT INTO `eventsold` VALUES (63, 'Springdale Fire Dept', 'April  8, 2006', NULL);
INSERT INTO `eventsold` VALUES (64, 'Bills Glass & Audio', 'May 20, 2006', NULL);
INSERT INTO `eventsold` VALUES (65, 'NW Audio', 'June  4, 2006', NULL);
INSERT INTO `eventsold` VALUES (66, 'Gold Exchange & Pawn', 'July  9, 2006', NULL);
INSERT INTO `eventsold` VALUES (67, 'Competitive Audio', 'July 14, 2006', NULL);
INSERT INTO `eventsold` VALUES (68, 'JH Customs', 'July 15, 2006', NULL);
INSERT INTO `eventsold` VALUES (69, 'Audio X Inc.', 'June 10, 2006', NULL);
INSERT INTO `eventsold` VALUES (70, 'Stereo One', 'June 11, 2006', NULL);
INSERT INTO `eventsold` VALUES (71, 'Border Motorsports', 'June  4, 2006', NULL);
INSERT INTO `eventsold` VALUES (72, 'USAudio', 'September 16, 2006', NULL);
INSERT INTO `eventsold` VALUES (73, 'Just Playin Car Audio', 'August  5, 2006', NULL);
INSERT INTO `eventsold` VALUES (74, 'Standard Electronics', 'February  5, 2006', NULL);
INSERT INTO `eventsold` VALUES (75, 'Tint Shop Autosports', 'February  4, 2006', NULL);
INSERT INTO `eventsold` VALUES (76, 'Lawsons', 'February  3, 2006', NULL);
INSERT INTO `eventsold` VALUES (77, 'Audio Extremes', 'May 21, 2006', NULL);
INSERT INTO `eventsold` VALUES (78, 'Dave & Busters', 'April 30, 2006', NULL);
INSERT INTO `eventsold` VALUES (79, 'Sound Solutions Inc.', 'July 29, 2006', NULL);
INSERT INTO `eventsold` VALUES (80, 'Sound Solutions Inc.', 'September 16, 2006', NULL);
INSERT INTO `eventsold` VALUES (81, 'Sound Solutions Inc.', 'November  5, 2005', NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `pastteams`
-- 

CREATE TABLE `pastteams` (
  `Members` varchar(40) NOT NULL default '',
  `Date` date NOT NULL default '0000-00-00',
  `TeamID` int(11) NOT NULL default '0',
  `PastTeamID` int(11) NOT NULL auto_increment,
  KEY `PastTeamIDIndex` (`PastTeamID`)
) TYPE=InnoDB AUTO_INCREMENT=85 ;

-- 
-- Dumping data for table `pastteams`
-- 

INSERT INTO `pastteams` VALUES ('170;167;;;', '2007-03-17', 28, 1);
INSERT INTO `pastteams` VALUES ('169;167;;;', '2007-03-17', 28, 2);
INSERT INTO `pastteams` VALUES ('97;167;;;', '2007-03-17', 28, 3);
INSERT INTO `pastteams` VALUES ('138;167;;;', '2007-03-17', 28, 4);
INSERT INTO `pastteams` VALUES ('138;176;;;', '2007-03-17', 28, 5);
INSERT INTO `pastteams` VALUES ('168;176;;;', '2007-03-17', 28, 6);
INSERT INTO `pastteams` VALUES ('167;;;;', '2007-03-17', 31, 7);
INSERT INTO `pastteams` VALUES ('95;169;;;', '2007-03-17', 31, 8);
INSERT INTO `pastteams` VALUES ('101;30;176;189;177', '2007-03-17', 33, 9);
INSERT INTO `pastteams` VALUES ('101;30;176;165;177', '2007-03-17', 33, 10);
INSERT INTO `pastteams` VALUES ('101;30;176;165;175', '2007-03-17', 33, 11);
INSERT INTO `pastteams` VALUES ('101;30;176;34;175', '2007-03-17', 33, 12);
INSERT INTO `pastteams` VALUES ('43;30;176;34;175', '2007-03-17', 33, 13);
INSERT INTO `pastteams` VALUES ('43;30;176;34;87', '2007-03-17', 33, 14);
INSERT INTO `pastteams` VALUES ('165;168;171;175;269', '2007-03-17', 34, 15);
INSERT INTO `pastteams` VALUES ('170;172;97;169;173', '2007-03-18', 36, 16);
INSERT INTO `pastteams` VALUES ('170;172;97;169;173', '2007-03-18', 36, 17);
INSERT INTO `pastteams` VALUES ('170;172;97;169;173', '2007-03-18', 36, 18);
INSERT INTO `pastteams` VALUES ('170;172;97;169;173', '2007-03-18', 36, 19);
INSERT INTO `pastteams` VALUES ('170;172;97;169;173', '2007-03-18', 36, 20);
INSERT INTO `pastteams` VALUES ('170;172;97;169;173', '2007-03-18', 36, 21);
INSERT INTO `pastteams` VALUES (';;;;', '2007-03-18', 39, 22);
INSERT INTO `pastteams` VALUES (';;;;', '2007-03-18', 39, 23);
INSERT INTO `pastteams` VALUES (';;;;', '2007-03-18', 39, 24);
INSERT INTO `pastteams` VALUES (';;;;', '2007-03-18', 39, 25);
INSERT INTO `pastteams` VALUES (';;;;', '2007-03-18', 39, 26);
INSERT INTO `pastteams` VALUES ('30;;;;', '2007-03-18', 39, 27);
INSERT INTO `pastteams` VALUES ('30;;;;', '2007-03-18', 39, 28);
INSERT INTO `pastteams` VALUES ('30;;;;', '2007-03-18', 39, 29);
INSERT INTO `pastteams` VALUES ('30;;;;', '2007-03-18', 39, 30);
INSERT INTO `pastteams` VALUES ('30;;;;', '2007-03-18', 39, 31);
INSERT INTO `pastteams` VALUES ('30;;;;', '2007-03-18', 39, 32);
INSERT INTO `pastteams` VALUES ('30;171;;;', '2007-03-18', 39, 33);
INSERT INTO `pastteams` VALUES ('30;171;;;', '2007-03-18', 39, 34);
INSERT INTO `pastteams` VALUES ('30;171;;;', '2007-03-18', 39, 35);
INSERT INTO `pastteams` VALUES ('30;171;;;', '2007-03-18', 39, 36);
INSERT INTO `pastteams` VALUES ('30;171;;;', '2007-03-18', 39, 37);
INSERT INTO `pastteams` VALUES ('30;171;;;', '2007-03-18', 39, 38);
INSERT INTO `pastteams` VALUES ('30;171;87;;', '2007-03-18', 39, 39);
INSERT INTO `pastteams` VALUES ('30;171;87;;', '2007-03-18', 39, 40);
INSERT INTO `pastteams` VALUES ('30;171;87;;', '2007-03-18', 39, 41);
INSERT INTO `pastteams` VALUES ('30;171;87;;', '2007-03-18', 39, 42);
INSERT INTO `pastteams` VALUES ('30;171;87;;', '2007-03-18', 39, 43);
INSERT INTO `pastteams` VALUES ('30;171;87;;', '2007-03-18', 39, 44);
INSERT INTO `pastteams` VALUES ('30;171;87;169;', '2007-03-18', 39, 45);
INSERT INTO `pastteams` VALUES ('30;171;87;169;', '2007-03-18', 39, 46);
INSERT INTO `pastteams` VALUES ('30;171;87;169;', '2007-03-18', 39, 47);
INSERT INTO `pastteams` VALUES ('30;171;87;169;', '2007-03-18', 39, 48);
INSERT INTO `pastteams` VALUES ('30;171;87;169;', '2007-03-18', 39, 49);
INSERT INTO `pastteams` VALUES ('95;;;;', '2007-03-18', 40, 50);
INSERT INTO `pastteams` VALUES ('165;172;363;173;139', '2007-03-18', 40, 51);
INSERT INTO `pastteams` VALUES ('165;172;363;173;224', '2007-03-18', 40, 52);
INSERT INTO `pastteams` VALUES ('165;172;363;173;224', '2007-03-18', 40, 53);
INSERT INTO `pastteams` VALUES ('165;172;363;173;224', '2007-03-18', 40, 54);
INSERT INTO `pastteams` VALUES ('37;39;180;187;', '2007-03-22', 47, 55);
INSERT INTO `pastteams` VALUES ('182;173;51;;', '2007-03-23', 51, 56);
INSERT INTO `pastteams` VALUES ('95;;;;', '2007-03-23', 55, 57);
INSERT INTO `pastteams` VALUES ('302;165;170;363;101', '2007-03-23', 59, 58);
INSERT INTO `pastteams` VALUES ('136;61;97;;', '2007-03-23', 63, 59);
INSERT INTO `pastteams` VALUES ('112;180;87;;', '2007-03-23', 62, 60);
INSERT INTO `pastteams` VALUES ('165;181;;;', '2007-03-23', 64, 61);
INSERT INTO `pastteams` VALUES ('363;211;;;', '2007-03-23', 65, 62);
INSERT INTO `pastteams` VALUES ('130;101;170;133;148', '2007-03-23', 66, 63);
INSERT INTO `pastteams` VALUES ('363;165;210;;', '2007-03-23', 70, 64);
INSERT INTO `pastteams` VALUES ('78;60;32;;', '2007-03-23', 72, 65);
INSERT INTO `pastteams` VALUES ('39;140;;;', '2007-03-23', 73, 66);
INSERT INTO `pastteams` VALUES ('78;200;180;275;', '2007-03-23', 48, 67);
INSERT INTO `pastteams` VALUES ('110;180;;;', '2007-03-23', 77, 68);
INSERT INTO `pastteams` VALUES ('363;81;88;325;101', '2007-03-23', 65, 69);
INSERT INTO `pastteams` VALUES ('363;81;88;170;101', '2007-03-23', 65, 70);
INSERT INTO `pastteams` VALUES ('165;200;;;', '2007-03-23', 81, 71);
INSERT INTO `pastteams` VALUES ('165;122;99;;', '2007-03-23', 88, 72);
INSERT INTO `pastteams` VALUES ('165;78;99;;', '2007-03-23', 88, 73);
INSERT INTO `pastteams` VALUES ('165;78;209;;', '2007-03-24', 88, 74);
INSERT INTO `pastteams` VALUES ('29;39;174;;', '2007-03-24', 89, 75);
INSERT INTO `pastteams` VALUES ('29;39;275;196;', '2007-03-24', 89, 76);
INSERT INTO `pastteams` VALUES ('216;194;65;;', '2007-03-24', 91, 77);
INSERT INTO `pastteams` VALUES ('101;309;;;', '2007-03-26', 98, 78);
INSERT INTO `pastteams` VALUES ('179;190;39;109;', '2007-03-26', 99, 79);
INSERT INTO `pastteams` VALUES ('179;190;39;51;', '2007-03-26', 99, 80);
INSERT INTO `pastteams` VALUES ('179;190;39;209;', '2007-03-26', 99, 81);
INSERT INTO `pastteams` VALUES ('179;190;39;209;174', '2007-03-26', 99, 82);
INSERT INTO `pastteams` VALUES ('179;51;39;209;174', '2007-03-26', 99, 83);
INSERT INTO `pastteams` VALUES ('179;51;39;209;184', '2007-03-26', 99, 84);

-- --------------------------------------------------------

-- 
-- Table structure for table `results`
-- 

CREATE TABLE `results` (
  `CompetitorID` int(11) NOT NULL default '0',
  `EventID` int(11) default NULL,
  `Place` int(11) default NULL,
  `DBs` text,
  `Class` text,
  `Points` int(11) default NULL,
  `ResultID` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`ResultID`)
) TYPE=InnoDB AUTO_INCREMENT=198 ;

-- 
-- Dumping data for table `results`
-- 

INSERT INTO `results` VALUES (7, 11, 1, '160.4', 'Super Street 1-2', 8, 14);
INSERT INTO `results` VALUES (7, 4, 2, '159.3', 'Super Street 1-2', 7, 15);
INSERT INTO `results` VALUES (7, 2, 2, '160', 'Super Street 1-2', 7, 16);
INSERT INTO `results` VALUES (7, 3, 3, '161.2', 'Super Street 1-2', 18, 17);
INSERT INTO `results` VALUES (7, 6, 1, '159.3', 'Super Street 1-2', 8, 18);
INSERT INTO `results` VALUES (7, 5, 1, '160.1', 'Super Street 1-2', 8, 19);
INSERT INTO `results` VALUES (7, 12, 1, '160.3', 'Super Street 1-2', 8, 20);
INSERT INTO `results` VALUES (7, 7, 1, '159.2', 'Super Street 1-2', 8, 21);
INSERT INTO `results` VALUES (7, 8, 1, '161.3', 'Super Street 1-2', 24, 22);
INSERT INTO `results` VALUES (7, 10, 1, '160.4', 'Super Street 1-2', 8, 23);
INSERT INTO `results` VALUES (7, 13, 3, '152.9', 'Super Street 1-2', 18, 24);
INSERT INTO `results` VALUES (3, 14, 8, '152', 'Street C', 4, 36);
INSERT INTO `results` VALUES (3, 1, 4, '151.6', 'Street C', 15, 37);
INSERT INTO `results` VALUES (3, 11, 1, '147.3', 'Street C', 8, 38);
INSERT INTO `results` VALUES (3, 4, 1, '151.7', 'Street C', 8, 39);
INSERT INTO `results` VALUES (3, 2, 1, '151.4', 'Street C', 8, 40);
INSERT INTO `results` VALUES (3, 3, 2, '151.9', 'Street C', 21, 41);
INSERT INTO `results` VALUES (3, 25, 2, '150.9', 'Street C', 7, 42);
INSERT INTO `results` VALUES (3, 5, 1, '151.2', 'Street C', 8, 43);
INSERT INTO `results` VALUES (3, 26, 4, '154.1', 'Street Max 1-2', 15, 44);
INSERT INTO `results` VALUES (3, 9, 2, '151.5', 'Street C', 21, 45);
INSERT INTO `results` VALUES (3, 27, 2, '151.8', 'Street C', 7, 46);
INSERT INTO `results` VALUES (3, 28, 1, '152.6', 'Street C', 8, 47);
INSERT INTO `results` VALUES (3, 29, 1, '149.8', 'Street C', 8, 48);
INSERT INTO `results` VALUES (3, 30, 1, '152.2', 'Street C', 24, 49);
INSERT INTO `results` VALUES (3, 31, 1, '154.5', 'Street C', 8, 50);
INSERT INTO `results` VALUES (3, 13, 1, '154', 'Street C', 24, 51);
INSERT INTO `results` VALUES (4, 14, 1, '167.8', 'Super Street 5+', 32, 52);
INSERT INTO `results` VALUES (4, 32, 1, '166.6', 'Super Street 5+', 16, 53);
INSERT INTO `results` VALUES (4, 1, 2, '163.3', 'Super Street 5+', 21, 54);
INSERT INTO `results` VALUES (4, 2, 1, '161.6', 'Super Street 5+', 8, 55);
INSERT INTO `results` VALUES (4, 3, 1, '166.3', 'Super Street 5+', 24, 56);
INSERT INTO `results` VALUES (4, 4, 1, '166', 'Super Street 5+', 8, 57);
INSERT INTO `results` VALUES (4, 13, 1, '167', 'Super Street 5+', 24, 58);
INSERT INTO `results` VALUES (4, 31, 1, '165.4', 'Super Street 5+', 8, 59);
INSERT INTO `results` VALUES (5, 14, 6, '162.5', 'Super Street 1-2', 12, 60);
INSERT INTO `results` VALUES (5, 32, 1, '162.1', 'Super Street 1-2', 16, 61);
INSERT INTO `results` VALUES (5, 1, 2, '164.1', 'Super Street 1-2', 21, 62);
INSERT INTO `results` VALUES (5, 2, 1, '160.1', 'Super Street 1-2', 8, 63);
INSERT INTO `results` VALUES (5, 3, 2, '164.3', 'Super Street 1-2', 21, 64);
INSERT INTO `results` VALUES (5, 11, 2, '162.1', 'Super Street 1-2', 7, 65);
INSERT INTO `results` VALUES (5, 4, 1, '162', 'Super Street 1-2', 8, 66);
INSERT INTO `results` VALUES (5, 9, 1, '164.8', 'Super Street 1-2', 24, 67);
INSERT INTO `results` VALUES (5, 13, 1, '164.8', 'Super Street 1-2', 24, 68);
INSERT INTO `results` VALUES (5, 31, 1, '162', 'Super Street 1-2', 8, 69);
INSERT INTO `results` VALUES (6, 14, 8, '154.3', 'Super Street 1-2 Nw', 4, 70);
INSERT INTO `results` VALUES (6, 2, 1, '153.3', 'Super Street 1-2 Nw', 8, 71);
INSERT INTO `results` VALUES (6, 3, 1, '154.4', 'Super Street 1-2 Nw', 24, 72);
INSERT INTO `results` VALUES (6, 9, 2, '153.9', 'Super Street 1-2 Nw', 21, 73);
INSERT INTO `results` VALUES (6, 33, 1, '152.9', 'Super Street 1-2 NW', 8, 74);
INSERT INTO `results` VALUES (6, 34, 1, '153.5', 'Super Street 1-2 Nw', 8, 75);
INSERT INTO `results` VALUES (6, 35, 1, '153.7', 'Super Street 1-2 Nw', 8, 76);
INSERT INTO `results` VALUES (6, 36, 1, '153.9', 'Super Street 1+', 8, 77);
INSERT INTO `results` VALUES (6, 37, 1, '153.5', 'Super Street 1-2 Nw', 8, 78);
INSERT INTO `results` VALUES (8, 14, 1, '158', 'Street C', 32, 79);
INSERT INTO `results` VALUES (8, 38, 1, '158.5', 'Street C', 24, 80);
INSERT INTO `results` VALUES (8, 39, 1, '152.2', 'Street B', 8, 81);
INSERT INTO `results` VALUES (8, 40, 1, '153.1', 'Street B', 8, 82);
INSERT INTO `results` VALUES (8, 41, 1, '154.1', 'Street B', 24, 83);
INSERT INTO `results` VALUES (8, 42, 1, '154.7', 'Street A', 16, 84);
INSERT INTO `results` VALUES (9, 43, 1, '152.2', 'Street C', 8, 85);
INSERT INTO `results` VALUES (9, 44, 1, '153.8', 'Street C', 8, 86);
INSERT INTO `results` VALUES (9, 45, 1, '154.6', 'Street C', 8, 87);
INSERT INTO `results` VALUES (9, 46, 1, '152.5', 'Street C', 8, 88);
INSERT INTO `results` VALUES (9, 1, 2, '154.3', 'Street C', 21, 89);
INSERT INTO `results` VALUES (9, 2, 2, '155.1', 'Street C', 7, 90);
INSERT INTO `results` VALUES (9, 3, 1, '156.5', 'Street C', 24, 91);
INSERT INTO `results` VALUES (9, 47, 1, '156.5', 'Street C', 8, 92);
INSERT INTO `results` VALUES (9, 25, 1, '156.7', 'Street C', 8, 93);
INSERT INTO `results` VALUES (9, 48, 1, '156.6', 'Street C', 8, 94);
INSERT INTO `results` VALUES (9, 49, 1, '156.9', 'Street C', 24, 95);
INSERT INTO `results` VALUES (9, 50, 1, '157.2', 'Street C', 8, 96);
INSERT INTO `results` VALUES (9, 51, 1, '156.9', 'Street C', 8, 97);
INSERT INTO `results` VALUES (9, 52, 1, '156.9', 'Street C', 16, 98);
INSERT INTO `results` VALUES (9, 53, 1, '156.9', 'Street C', 24, 99);
INSERT INTO `results` VALUES (9, 54, 1, '157.1', 'Street C', 8, 100);
INSERT INTO `results` VALUES (9, 8, 1, '154.9', 'Street C', 24, 101);
INSERT INTO `results` VALUES (9, 55, 1, '156.6', 'Street C', 16, 102);
INSERT INTO `results` VALUES (9, 9, 1, '157.1', 'Street C', 24, 103);
INSERT INTO `results` VALUES (9, 56, 1, '157.1', 'Street C', 8, 104);
INSERT INTO `results` VALUES (9, 57, 1, '156.8', 'Street C', 16, 105);
INSERT INTO `results` VALUES (9, 27, 1, '156.7', 'Street C', 8, 106);
INSERT INTO `results` VALUES (9, 58, 1, '156.7', 'Street C', 8, 107);
INSERT INTO `results` VALUES (9, 59, 1, '156.7', 'Street C', 8, 108);
INSERT INTO `results` VALUES (9, 60, 1, '156.7', 'Street C', 16, 109);
INSERT INTO `results` VALUES (9, 61, 1, '157', 'Street C', 8, 110);
INSERT INTO `results` VALUES (9, 62, 1, '156.9', 'Street C', 8, 111);
INSERT INTO `results` VALUES (10, 14, 3, '161.1', 'Super Street 1-2 Nw', 24, 112);
INSERT INTO `results` VALUES (10, 63, 1, '147.2', 'Super Street 1-2 Nw', 24, 113);
INSERT INTO `results` VALUES (10, 64, 1, '161.4', 'Super Street 1-2 Nw', 16, 114);
INSERT INTO `results` VALUES (10, 65, 2, '159.8', 'Super Street 1-2', 21, 115);
INSERT INTO `results` VALUES (10, 53, 3, '162.9', 'Super Street 1-2', 18, 116);
INSERT INTO `results` VALUES (10, 66, 1, '164', 'Super Street 1-2', 8, 117);
INSERT INTO `results` VALUES (10, 67, 1, '164.6', 'Super Street 1-2', 8, 118);
INSERT INTO `results` VALUES (10, 68, 1, '164.6', 'Super Street 1-2', 16, 119);
INSERT INTO `results` VALUES (11, 14, 2, '166.4', 'Super Street 5+', 28, 120);
INSERT INTO `results` VALUES (11, 38, 1, '167.2', 'Super Street 5+', 24, 121);
INSERT INTO `results` VALUES (11, 69, 2, '139.3', 'Super Street 3-4', 21, 122);
INSERT INTO `results` VALUES (11, 70, 1, '140.6', 'Super Street 5+', 16, 123);
INSERT INTO `results` VALUES (12, 14, 3, '169.7', 'Extreme 2', 24, 124);
INSERT INTO `results` VALUES (12, 16, 1, '176', 'Extreme 1', 8, 125);
INSERT INTO `results` VALUES (12, 18, 1, '175.5', 'Extreme 1', 8, 126);
INSERT INTO `results` VALUES (12, 21, 1, '175.6', 'Extreme 1', 24, 127);
INSERT INTO `results` VALUES (12, 22, 1, '156.3', 'Extreme 2', 8, 128);
INSERT INTO `results` VALUES (12, 71, 1, '140.4', 'Extreme 1', 8, 129);
INSERT INTO `results` VALUES (12, 72, 1, '176.6', 'Extreme 1', 16, 130);
INSERT INTO `results` VALUES (13, 14, 1, '173.8', 'Extreme 2', 32, 131);
INSERT INTO `results` VALUES (13, 38, 1, '175.5', 'Extreme 2', 24, 132);
INSERT INTO `results` VALUES (14, 14, 1, '175.4', 'Extreme 3-4', 32, 133);
INSERT INTO `results` VALUES (14, 38, 1, '176.4', 'Extreme 3-4', 24, 134);
INSERT INTO `results` VALUES (14, 17, 1, '176.5', 'Extreme 3-4', 24, 135);
INSERT INTO `results` VALUES (14, 1, 1, '176.3', 'Extreme 3-4', 24, 136);
INSERT INTO `results` VALUES (15, 14, 1, '178', 'Extreme 5+', 32, 137);
INSERT INTO `results` VALUES (15, 38, 1, '179', 'Extreme 5+', 24, 138);
INSERT INTO `results` VALUES (15, 3, 1, '179.4', 'Extreme 5+', 24, 139);
INSERT INTO `results` VALUES (17, 1, 3, '150.5', 'Street B', 18, 140);
INSERT INTO `results` VALUES (17, 3, 6, '151.3', 'Street B', 9, 141);
INSERT INTO `results` VALUES (17, 4, 1, '151.6', 'Street B', 8, 142);
INSERT INTO `results` VALUES (17, 6, 1, '150.9', 'Street B', 8, 143);
INSERT INTO `results` VALUES (17, 12, 1, '151.6', 'Street B', 8, 144);
INSERT INTO `results` VALUES (17, 7, 1, '151.5', 'Street B', 8, 145);
INSERT INTO `results` VALUES (17, 10, 1, '151.4', 'Street B', 8, 146);
INSERT INTO `results` VALUES (17, 73, 1, '152.4', 'Street B', 8, 147);
INSERT INTO `results` VALUES (17, 34, 1, '151.5', 'Street B', 8, 148);
INSERT INTO `results` VALUES (19, 14, 4, '163.1', 'Super Street 1-2', 20, 149);
INSERT INTO `results` VALUES (19, 38, 1, '161.4', 'Super Street 1-2', 24, 150);
INSERT INTO `results` VALUES (19, 1, 1, '162.7', 'Super Street 1-2', 24, 151);
INSERT INTO `results` VALUES (19, 64, 1, '163.7', 'Super Street 1-2', 16, 152);
INSERT INTO `results` VALUES (19, 65, 1, '164.9', 'Super Street 1-2', 24, 153);
INSERT INTO `results` VALUES (19, 68, 2, '162.7', 'Super Street 1-2', 14, 154);
INSERT INTO `results` VALUES (20, 74, 1, '150', 'Street B', 8, 155);
INSERT INTO `results` VALUES (20, 75, 1, '151', 'Street B', 8, 156);
INSERT INTO `results` VALUES (20, 76, 2, '151.4', 'Street B', 7, 157);
INSERT INTO `results` VALUES (20, 32, 1, '153.5', 'Street B', 16, 158);
INSERT INTO `results` VALUES (20, 1, 1, '154.1', 'Street B', 24, 159);
INSERT INTO `results` VALUES (20, 77, 1, '154', 'Street B', 8, 160);
INSERT INTO `results` VALUES (20, 78, 2, '154.2', 'Street B', 7, 161);
INSERT INTO `results` VALUES (20, 69, 1, '155', 'Street B', 24, 162);
INSERT INTO `results` VALUES (20, 70, 2, '155.2', 'Street B', 14, 163);
INSERT INTO `results` VALUES (20, 79, 1, '154.1', 'Street B', 8, 164);
INSERT INTO `results` VALUES (20, 80, 1, '150.2', 'Street B', 8, 165);
INSERT INTO `results` VALUES (21, 81, 1, '150.2', 'Street A', 16, 166);
INSERT INTO `results` VALUES (21, 32, 1, '152.5', 'Street A', 16, 167);
INSERT INTO `results` VALUES (21, 1, 1, '153.4', 'Street A', 24, 168);
INSERT INTO `results` VALUES (21, 77, 1, '153.1', 'Street A', 8, 169);
INSERT INTO `results` VALUES (21, 69, 1, '153.6', 'Street A', 24, 170);
INSERT INTO `results` VALUES (21, 70, 1, '153.9', 'Street A', 16, 171);
INSERT INTO `results` VALUES (21, 79, 1, '153.2', 'Street A', 8, 172);
INSERT INTO `results` VALUES (21, 80, 1, '152.9', 'Street A', 8, 173);
INSERT INTO `results` VALUES (2, 1, 3, '149.9', 'Street A', 18, 174);
INSERT INTO `results` VALUES (2, 2, 6, '148.7', 'Street A', 3, 175);
INSERT INTO `results` VALUES (2, 3, 7, '148.3', 'Street A', 6, 176);
INSERT INTO `results` VALUES (2, 4, 1, '147.5', 'Street A', 8, 177);
INSERT INTO `results` VALUES (2, 5, 1, '148', 'Street A', 8, 178);
INSERT INTO `results` VALUES (2, 6, 1, '144.6', 'Street A', 8, 179);
INSERT INTO `results` VALUES (2, 7, 1, '147.2', 'Street A', 8, 180);
INSERT INTO `results` VALUES (2, 8, 4, '147.7', 'Super Street 1-2', 15, 181);
INSERT INTO `results` VALUES (2, 9, 3, '148.4', 'Super Street 1-2 Nw', 18, 182);
INSERT INTO `results` VALUES (2, 10, 1, '146.9', 'Street A', 8, 183);
INSERT INTO `results` VALUES (1, 14, 1, '154.3', 'Street A', 32, 184);
INSERT INTO `results` VALUES (1, 15, 1, '154.5', 'Street A', 8, 185);
INSERT INTO `results` VALUES (1, 16, 1, '154.5', 'Street A', 8, 186);
INSERT INTO `results` VALUES (1, 17, 1, '154.2', 'Street A', 24, 187);
INSERT INTO `results` VALUES (1, 18, 1, '154.8', 'Street A', 8, 188);
INSERT INTO `results` VALUES (1, 19, 1, '154.7', 'Street A', 8, 189);
INSERT INTO `results` VALUES (1, 20, 1, '154.5', 'Street A', 16, 190);
INSERT INTO `results` VALUES (1, 21, 1, '154.7', 'Street A', 24, 191);
INSERT INTO `results` VALUES (1, 22, 1, '128.9', 'Extreme 3-4', 8, 192);
INSERT INTO `results` VALUES (1, 23, 1, '156.1', 'Street B', 8, 193);
INSERT INTO `results` VALUES (1, 24, 1, '154.8', 'Street B', 8, 194);
INSERT INTO `results` VALUES (27, 4, 1, '153.5', 'Super Street 1-2 Nw', 8, 197);

-- --------------------------------------------------------

-- 
-- Table structure for table `teams`
-- 

CREATE TABLE `teams` (
  `TeamID` int(11) NOT NULL default '0',
  `Member1` bigint(40) default NULL,
  `Member2` bigint(40) default NULL,
  `Member3` bigint(40) default NULL,
  `Member4` bigint(40) default NULL,
  `Member5` bigint(40) default NULL,
  `totalSalary` int(11) default NULL,
  `TradesLeft` int(40) default NULL,
  PRIMARY KEY  (`TeamID`)
) TYPE=InnoDB;

-- 
-- Dumping data for table `teams`
-- 

INSERT INTO `teams` VALUES (33, 43, 30, 138, 34, 87, 89981, 0);
INSERT INTO `teams` VALUES (34, 165, 168, 171, 175, 98, 85832, 5);
INSERT INTO `teams` VALUES (35, NULL, NULL, NULL, NULL, NULL, 0, 6);
INSERT INTO `teams` VALUES (36, 170, 172, 97, 169, 173, 99201, 0);
INSERT INTO `teams` VALUES (39, 30, 171, 87, 169, NULL, 97076, -2);
INSERT INTO `teams` VALUES (40, 165, 172, 363, 173, 224, 99729, 1);
INSERT INTO `teams` VALUES (41, NULL, NULL, NULL, NULL, NULL, 0, 6);
INSERT INTO `teams` VALUES (42, 178, 30, 108, 180, 62, 94139, 6);
INSERT INTO `teams` VALUES (43, 66, 87, NULL, NULL, NULL, 94019, 6);
INSERT INTO `teams` VALUES (44, 168, 97, 328, 182, 180, 97423, 6);
INSERT INTO `teams` VALUES (45, 267, 147, 112, 30, 106, 90667, 6);
INSERT INTO `teams` VALUES (46, 55, 166, 103, 132, 178, 89905, 6);
INSERT INTO `teams` VALUES (47, 37, 39, 180, 187, 195, 83419, 5);
INSERT INTO `teams` VALUES (48, 78, 200, 180, 275, 171, 94302, 5);
INSERT INTO `teams` VALUES (50, 170, 180, 78, 165, 178, 97619, 6);
INSERT INTO `teams` VALUES (51, 182, 173, 51, NULL, NULL, 97064, 5);
INSERT INTO `teams` VALUES (52, 103, NULL, NULL, NULL, NULL, 25988, 6);
INSERT INTO `teams` VALUES (53, 180, 88, 46, 54, NULL, 91538, 6);
INSERT INTO `teams` VALUES (54, 165, 170, 51, 101, NULL, 92851, 6);
INSERT INTO `teams` VALUES (55, 95, 37, 275, 209, 180, 94615, 5);
INSERT INTO `teams` VALUES (56, 95, 130, 287, 334, 393, 96479, 6);
INSERT INTO `teams` VALUES (57, 88, 86, 165, 170, NULL, 99701, 6);
INSERT INTO `teams` VALUES (58, NULL, NULL, NULL, NULL, NULL, 0, 6);
INSERT INTO `teams` VALUES (59, 302, 165, 170, 363, 101, 88578, 5);
INSERT INTO `teams` VALUES (60, 208, 38, 66, 165, 216, 91386, 6);
INSERT INTO `teams` VALUES (61, 110, 178, NULL, NULL, NULL, 98587, 6);
INSERT INTO `teams` VALUES (62, 112, 180, 87, 363, 64, 99480, 5);
INSERT INTO `teams` VALUES (63, 136, 61, 97, 109, 240, 99941, 5);
INSERT INTO `teams` VALUES (64, 165, 181, 65, 209, NULL, 94986, 5);
INSERT INTO `teams` VALUES (65, 363, 81, 88, 170, 101, 99085, 3);
INSERT INTO `teams` VALUES (66, 130, 101, 170, 133, 148, 96856, 5);
INSERT INTO `teams` VALUES (67, 86, 165, 204, 196, 180, 90831, 6);
INSERT INTO `teams` VALUES (68, NULL, NULL, NULL, NULL, NULL, 0, 6);
INSERT INTO `teams` VALUES (69, 180, 65, 95, 88, 199, 99051, 6);
INSERT INTO `teams` VALUES (70, 363, 165, 210, 297, NULL, 97554, 5);
INSERT INTO `teams` VALUES (71, 95, 171, 100, NULL, NULL, 90399, 6);
INSERT INTO `teams` VALUES (72, 78, 60, 32, NULL, NULL, 90536, 5);
INSERT INTO `teams` VALUES (73, 39, 140, 182, 180, 32, 96150, 5);
INSERT INTO `teams` VALUES (74, 165, 100, 363, NULL, NULL, 72868, 6);
INSERT INTO `teams` VALUES (75, 165, 173, 101, 51, NULL, 92506, 6);
INSERT INTO `teams` VALUES (76, 166, 178, 100, 388, 196, 98846, 6);
INSERT INTO `teams` VALUES (77, 110, 180, 168, 33, NULL, 99501, 5);
INSERT INTO `teams` VALUES (78, 180, 182, 51, 88, 204, 98140, 6);
INSERT INTO `teams` VALUES (79, 165, 195, 178, 192, 176, 97928, 6);
INSERT INTO `teams` VALUES (80, 200, 209, 78, 180, NULL, 95327, 6);
INSERT INTO `teams` VALUES (81, 165, 200, 78, 206, 180, 97295, 5);
INSERT INTO `teams` VALUES (82, 199, 65, 209, 181, NULL, 95086, 6);
INSERT INTO `teams` VALUES (83, 165, 101, 173, 51, 180, 98020, 6);
INSERT INTO `teams` VALUES (84, 176, 204, NULL, NULL, NULL, 9399, 6);
INSERT INTO `teams` VALUES (85, 363, 178, 181, 51, 180, 96453, 6);
INSERT INTO `teams` VALUES (86, 195, 165, NULL, NULL, NULL, 41399, 6);
INSERT INTO `teams` VALUES (87, 30, 100, 101, 300, NULL, 99841, 6);
INSERT INTO `teams` VALUES (88, 165, 78, 209, NULL, NULL, 79420, 3);
INSERT INTO `teams` VALUES (89, 29, 39, 275, 196, 170, 95881, 4);
INSERT INTO `teams` VALUES (90, 199, 95, 180, 181, 196, 97399, 6);
INSERT INTO `teams` VALUES (91, 216, 194, 65, 180, NULL, 99680, 5);
INSERT INTO `teams` VALUES (92, 174, 196, 101, 181, 209, 96511, 6);
INSERT INTO `teams` VALUES (93, 39, 61, 180, 147, 97, 98340, 6);
INSERT INTO `teams` VALUES (94, 209, 363, 101, 165, 170, 96691, 6);
INSERT INTO `teams` VALUES (95, 209, 180, 97, 199, 136, 91148, 6);
INSERT INTO `teams` VALUES (96, 165, 170, 174, 105, 275, 99073, 6);
INSERT INTO `teams` VALUES (97, 165, 170, 177, 195, 363, 87331, 6);
INSERT INTO `teams` VALUES (98, 101, 309, 190, 39, 196, 98678, 5);
INSERT INTO `teams` VALUES (99, 179, 51, 39, 209, 184, 98125, 0);
INSERT INTO `teams` VALUES (100, 165, 170, 101, 289, 382, 85650, 6);
INSERT INTO `teams` VALUES (101, 182, 190, 289, NULL, NULL, 96581, 6);
INSERT INTO `teams` VALUES (102, 165, 181, 363, 200, 180, 93002, 6);

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `UserName` text NOT NULL,
  `TeamID` int(11) NOT NULL auto_increment,
  `UserEmail` text NOT NULL,
  `UserPassword` text NOT NULL,
  `UserIM` text,
  `ScoreYTD` int(11) default NULL,
  PRIMARY KEY  (`TeamID`)
) TYPE=InnoDB AUTO_INCREMENT=103 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES ('scott', 42, 'xi2elic@aol.com', 'azrsix', 'xi2elic', NULL);
INSERT INTO `users` VALUES ('rooney team 420', 43, 'roondog@gwi.net', 'doggy', '', NULL);
INSERT INTO `users` VALUES ('Karc', 44, 'webmaster@anything-auto.net', 'notmine', '', NULL);
INSERT INTO `users` VALUES ('johnny', 45, 'johnny@jon.com', 'pass', '', NULL);
INSERT INTO `users` VALUES ('muscman', 46, 'whyamisofly@gmail.com', 'juiced00', '', NULL);
INSERT INTO `users` VALUES ('shaven99ranger', 47, 'shaven99ranger@comcast.net', 'lassie25', 'shaven99ranger', NULL);
INSERT INTO `users` VALUES ('Curtis', 48, 'curtisdleslie@yahoo.com', 'dw@ynecherokee', '', NULL);
INSERT INTO `users` VALUES ('splblazer', 49, 'loudblazer@hotmail.com', '1632', '', NULL);
INSERT INTO `users` VALUES ('SportsUnlimited', 50, 'curtisdleslie@gmail.com', 'dw@ynecherokee', '', NULL);
INSERT INTO `users` VALUES ('suburban', 51, 'suburban_ant@hotmail.com', 'legend', 'bleached mr t', NULL);
INSERT INTO `users` VALUES ('scotthulbs', 52, 'scotthulbs@yahoo.com', 'viper', 'hulbs069', NULL);
INSERT INTO `users` VALUES ('RULOUDR', 53, 'mrlamonica@adelphia.net', 'rowbottom', 'bmpnblzrJL', NULL);
INSERT INTO `users` VALUES ('Cactus Sounds', 54, 'cactus_sounds@yahoo.ccom', '7109', '', NULL);
INSERT INTO `users` VALUES ('Matt_Sibley', 55, 'hotshot2003@cox.net', 'hotshot1', 'cybershot1', NULL);
INSERT INTO `users` VALUES ('naptime', 56, 'jaythomson@hotmail.com', 'crunch', '', NULL);
INSERT INTO `users` VALUES ('NeillBarber', 57, 'SPLtank@yahoo.com', 'nitrous', '', NULL);
INSERT INTO `users` VALUES ('V-S', 58, 'vernon@teamneospl.com', '123456', 'zduce8@hotmail.com', NULL);
INSERT INTO `users` VALUES ('mystang', 59, 'mystang@sc.rr.com', 'carroll', '', NULL);
INSERT INTO `users` VALUES ('emaxaudio', 60, 'emaxaudio@yahoo.com', 'slt123', '', NULL);
INSERT INTO `users` VALUES ('eggzilla', 61, 'pickup_driving_fool@yahoo.com', 'nkparts', '', NULL);
INSERT INTO `users` VALUES ('Wrong Way SQ', 62, 'reinholtzwt@vmi.edu', 'willie', '', NULL);
INSERT INTO `users` VALUES ('slim', 63, 'js1150@comcast.net', 'check', '', NULL);
INSERT INTO `users` VALUES ('solo1', 64, 't.schaffer@mchsi.com', 'kicker', '', NULL);
INSERT INTO `users` VALUES ('steam boat', 65, 'fiber5177@yahoo.com', '551177', '', NULL);
INSERT INTO `users` VALUES ('billwolf', 66, 'bwcad1@gmail.com', 'etididify11', 'bwcad1', NULL);
INSERT INTO `users` VALUES ('fiery', 67, 'fierywinter@hotmail.com', 'wintpas5', 'i7l7i7i', NULL);
INSERT INTO `users` VALUES ('eberly11', 68, 'eberly11@aol.com', '11qsz11', 'eberly11', NULL);
INSERT INTO `users` VALUES ('Team Maxxsonics - Mike', 69, 'MikeS@maxxsonics.com', 'Alexia7', '', NULL);
INSERT INTO `users` VALUES ('Dbeater', 70, 'dbeatercjj@hotmail.com', 'cjacobs', '', NULL);
INSERT INTO `users` VALUES ('Polecat', 71, 'tfocht@kicker.com', 'kicker', '', NULL);
INSERT INTO `users` VALUES ('Terry Jackson', 72, 'blue200sx@hotmail.com', 'florida', 'candyblue200', NULL);
INSERT INTO `users` VALUES ('Sound Mekanix - Street A', 73, 'Whittj52@uwosh.edu', '91crxsi', 'JstnWhtty', NULL);
INSERT INTO `users` VALUES ('galacticmonkey', 74, 'galamonkey@gmail.com', 'stuff', 'galacticmonkey0', NULL);
INSERT INTO `users` VALUES ('AudioAnonymous', 75, 'ridered98@msn.com', 'gordon24', 'AnonymousMotors', NULL);
INSERT INTO `users` VALUES ('jadon087', 76, 'jadon087@comcast.net', 'jadon1087', 'jadon087', NULL);
INSERT INTO `users` VALUES ('onager', 77, 'onemontecarloss@yahoo.com', 'player', '', NULL);
INSERT INTO `users` VALUES ('MartyAdair', 78, 'foxcrew15@aol.com', 'nokia', 'foxcrew15', NULL);
INSERT INTO `users` VALUES ('xploreron22s', 79, 'xplorerspinin22s@aol.com', 'blue1466', 'xplorerspinin22s', NULL);
INSERT INTO `users` VALUES ('incriminator', 80, 'nick@incriminatoraudio.com', 'inc', '', NULL);
INSERT INTO `users` VALUES ('BigDave', 81, 'Sooperdave8@aol.com', 'auburn1', '', NULL);
INSERT INTO `users` VALUES ('killarbb', 82, 'yotekilla@hotmail.com', 'ruger', '', NULL);
INSERT INTO `users` VALUES ('infogiver', 83, 'owbamn@gmail.com', 'ericanders', '', NULL);
INSERT INTO `users` VALUES ('EXTREME SOUND', 84, 'IASCA1@COMCAST.NET', 'ROBERT', '', NULL);
INSERT INTO `users` VALUES ('tprj82', 85, 'tprj5@aol.com', 'v8lincls', 'tprj5', NULL);
INSERT INTO `users` VALUES ('Team BK', 86, 'teambk01@comcast.net', 'shadetree', '', NULL);
INSERT INTO `users` VALUES ('lilley809', 87, 'lilley809@gmail.com', 'iloveyou', 'lilley809', NULL);
INSERT INTO `users` VALUES ('mytloud1', 88, 'mytloud1@hotmail.com', 'steph', '', NULL);
INSERT INTO `users` VALUES ('manauta', 89, 'manauta671@hotmail.com', '2643mike', '', NULL);
INSERT INTO `users` VALUES ('BigOso', 90, 'bigososs8pkws@aol.com', '1879587', '', NULL);
INSERT INTO `users` VALUES ('Jeremiah25', 91, 'ledgerwoodjl@hotmail.com', 'poop', '', NULL);
INSERT INTO `users` VALUES ('Jarfunkz', 92, 'jarfunkz@adelphia.net', 'ppi4ever', 'jarfunkzd300hc', NULL);
INSERT INTO `users` VALUES ('audioroach', 93, 'audioroach2@comcast.net', 'cw2420', '', NULL);
INSERT INTO `users` VALUES ('trex', 94, 'trex160s@aol.com', 'sbn07', 'trex160s', NULL);
INSERT INTO `users` VALUES ('stussycole', 95, 'stussycole@hotmail.com', 'lebowski13', '', NULL);
INSERT INTO `users` VALUES ('tamu', 96, 'bigtyme505@yahoo.com', 'walmart', '', NULL);
INSERT INTO `users` VALUES ('nick cimino', 97, 'n_cimino32@hotmail.com', 'YOGUY', '', NULL);
INSERT INTO `users` VALUES ('elmersglue', 98, 'elmerdelacruz2003@yahoo.com', 'hienzz', '', NULL);
INSERT INTO `users` VALUES ('radiodr', 99, 'karma_2@charter.net', 'dragon', '', NULL);
INSERT INTO `users` VALUES ('Rich Meyer', 100, 'bouncer_rich@yahoo.com', 'hondacrx', '', NULL);
INSERT INTO `users` VALUES ('bigchili', 101, 'mchilcote@new.rr.com', 'loganleo1', '', NULL);
INSERT INTO `users` VALUES ('luckyT', 102, 'ntoby@hotmail.com', 'lucky1', 'TobyNW', NULL);
