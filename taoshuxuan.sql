-- MySQL dump 10.13  Distrib 5.1.58, for Win32 (ia32)
--
-- Host: localhost    Database: taoshuxuan
-- ------------------------------------------------------
-- Server version	5.1.58-community

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
-- Table structure for table `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(40) NOT NULL,
  `pw` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_admin`
--

LOCK TABLES `tb_admin` WRITE;
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` VALUES (1,'admin','a98ecf1e58c1b23378eeb1e882defd5f');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_book`
--

DROP TABLE IF EXISTS `tb_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_book` (
  `book_id` varchar(40) NOT NULL,
  `author` varchar(40) NOT NULL,
  `book_image` varchar(100) NOT NULL,
  `content_summary` longtext NOT NULL,
  `discount` float NOT NULL,
  `discount_date` datetime NOT NULL,
  `is_foreign` int(11) NOT NULL,
  `is_import` int(11) NOT NULL,
  `isbn` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `publish_company` varchar(40) NOT NULL,
  `publish_date` datetime NOT NULL,
  `sell_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `storage_date` datetime NOT NULL,
  `storage_num` int(11) NOT NULL,
  `translator` varchar(20) NOT NULL,
  `catagory_id` int(11) NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `FKA4F6BA1A7B6F8A83` (`catagory_id`),
  CONSTRAINT `FKA4F6BA1A7B6F8A83` FOREIGN KEY (`catagory_id`) REFERENCES `tb_catagory` (`catagory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_book`
--

LOCK TABLES `tb_book` WRITE;
/*!40000 ALTER TABLE `tb_book` DISABLE KEYS */;
INSERT INTO `tb_book` VALUES ('28bbd5ce-9ff6-48d8-ba43-a08ad807cc77','辛夷坞','B920BDFC-A219-28B8-91AB-90E780B88356.jpg','　那一天的很多细节，韩述都已经成功地忘记了。\r\n  　记忆好像有块黑板擦，悄无声息地抹去了他害怕回想的片段，留下满地粉尘……\r\n  　唯有一幕他怎么也擦不掉——她站在被告席上，而他在台下。\r\n  　韩述不敢看她的眼睛，却期盼着她能望他一眼。可是她没有，他知道，一秒都没有。\r\n  　桔年的心里住着一个人，她坚信那个人只是闭上了眼睛。\r\n  　很多年后，她做了一个梦，那个人终于睁开双眼对她微笑，然而她却哭了。\r\n  　521台阶上的那棵石榴树，年年开出火红刺目的花朵，\r\n  　曾经一笔一画刻下的“hs&jn”，谁陪着谁一起来看？  　\r\n  　',0.55,'2012-06-30 16:24:05',0,0,'121212121','《许我向你看》（上下册）',12,'兆华出版社','2012-06-08 00:00:00','2012-06-30 16:24:05',1,'2012-06-30 00:00:00',111,'',3),('33441fc2-8f48-42b5-bd1f-665cc42a6309','程杰','8B6A682D-48AA-844C-BA43-F6B57B2DDA68.jpg','原来的第二版\r\n',1,'2012-07-03 00:04:52',0,0,'23333','原来（第二版）',66,'机械工业出版社','2012-07-18 00:00:00','2012-07-03 00:04:52',1,'2012-07-03 00:04:52',1212,'',3),('41b11380-9f92-4bb2-a8c0-6442d2a0717a','韩寒','078361DF-6E86-9F70-E20C-8DFD4B9A7281.jpg','韩寒最新杂文精选集。\r\n　　特别收录韩寒对于中国年内重大活动和事件的精辟言论。包括“倒钩案” “荆州挟尸要价” “城市，让生活更糟糕”等杂文。\r\n同时也收录韩寒在最近一年里的赛车、创作动态，以及他的生活真实记录。包括“ 必须竖中指”“ 生活像跳楼一样往下延续”等随笔。',0.55,'2012-06-30 16:28:12',0,0,'121212121','青春（韩寒口碑之作，好评如潮，销量突破110万册！）',1212,'兆华出版社','2012-06-23 00:00:00','2012-06-30 16:28:12',1,'2012-06-30 00:00:00',1212,'',5),('4630afaa-bc88-4efb-a723-aaa65ef7165a','迈克康奈尔','BCAF5B3F-387A-446D-8E8D-8DEA37D4E7FE.jpg','（第二版2011最新版）——两届Software Jolt Award震撼大奖得主！软件开发世界的地图，经典中的经典',1,'2012-06-30 15:59:24',0,1,'11111','代码大全',98,'电子工业出版社','2012-06-25 00:00:00','2012-06-30 15:59:24',1,'2012-06-19 00:00:00',111,'金戈',4),('4bf9e2fc-019c-48f4-a84f-5f9386b4c0d0','加码','66DD7D98-862B-F847-0B6A-D3391D6EC4A1.jpg','“这本众人期待的确达到了预期的全部效果。该书云集了经过时间考验的可用设计。作者从多年的面向对象设计经验中精选了23个模式,这构成了该书的精华部份,每一个精益求精的优秀程序员都应拥有这本《设计模式》。”\r\n　　　　　　　　　　　　　　　　　　　--Larry O\'Brien, Software Development\r\n　　“<设计模式>在实用环境下特别有用,因为它分类描述了一组设计良好,表达清楚的面向对象软件设计模式。整个设计模式领域还很新,本书的四位作者也许已占据了这个领域造诣最深的专家中的半数,因而他们定义模式的方法可以作为后来者的榜样。如果要知道怎样恰当定义和描述设计模式,我们应该可以从他们那儿获得启发”　\r\n　　　　　　　　　　　　　　　　　　　--Steve Billow, Journal of Object-Oriented Programming\r\n　　“总的来讲,这本书表达了一种极有价值的东西。对软件设计领域有着独特的贡献,因为它捕获了面向对象设计的有价值的经验,并且用简洁可复用的形式表达出来。它将成为我在寻找面向对象设计思想过程中经常翻阅的一本书﹕这正是复用的真实含义所在,不是吗﹖”\r\n　　　　　　　　　　　　--Sanjiv Gossain, Journal of Object-Oriented Programming\r\n　　这本书的目的就是将面向对象软件的设计经验作为设计模式记录下来。每一个设计模式系统地命名、解释和评价了面向对象系统中一个重要的和重复出现的设计。我们的目标是将设计经验以人们能够有效利用的形式记录下来。鉴于此目的，我们编写了一些最重要的设计模式，并以编目分类的形式将它们展现出来。\r\n ',1,'2012-06-30 16:05:03',0,0,'11111','设计模式--可复用面向对象软件的基础',555,'电子工业出版社','2012-06-05 00:00:00','2012-06-30 16:05:03',1,'2012-06-30 00:00:00',1111111,'',4),('4c5af7c3-97d8-469f-9eb2-b06da5609428','辛夷坞','9A703177-3531-FFF6-3388-D69C8BEAE1D7.jpg','赵旬旬想要的婚姻，是一座围城，哪怕没有激情，却有她最渴望的安稳。\r\n　　但她没有想到，曾一心一意皈依的人间烟火不过是泡影，幻城摇摇欲坠。\r\n　　带着爱与恨归来，池澄绞尽脑汁地算计，让赵旬旬失却所有退路，只是因为，那条唯一的退路，就在他的怀中。\r\n　　他是带给她毁灭的风浪，也是她无法抗拒的青春狂澜。\r\n　　当失却了最后一滴水，沙漠里的浮城，是否也能成为最终的归宿？',1,'2012-06-30 16:25:33',0,0,'121212121','浮世浮城',13,'兆华出版社','2012-06-15 00:00:00','2012-06-30 16:25:33',1,'2012-06-30 00:00:00',1212,'',3),('6756525f-b750-46e8-981b-6b1be78c30ab','韩寒','C4D5BF01-7DC6-A5F4-8E5A-7449AD936098.jpg','作品以一部旅行车为载体，通过在路上的见闻、过去的回忆、扑朔迷离的人物关系等各种现实场景，以韩寒本人对路上所见、所闻引发自己的观点。这场真正的旅途在精神层面，如果说似乎逾越了部分法律和道德的界限，但出发点也仅仅是希望在另一侧找到信仰。韩寒是“叛逆的”，他“试图用能给世界一些新意的眼光来看世界。试图寻找令人信服的价值”。',0.555,'2012-06-30 20:29:09',0,0,'121212121','1988——我想和这个世界谈谈（韩寒写过的最好的小说）',33,'机械工业出版社','2012-06-12 00:00:00','2012-06-30 20:29:09',1,'2012-06-30 20:29:09',111,'',5),('7631f8ac-5c3c-439f-9ec0-f02d8b98c661','辛夷坞','6C5985E5-DC47-2093-B7DC-1DF421A3F932.jpg','  你心中是否也有这样一个人？他离开后，生活还在继续，他留下的痕迹被平淡的日子逐渐抹去。你很少想起他，没有他也能过得很好。然而在那些个猝不及防的梦里，他又出现在你的身边，第一次说出分别后的悔意，你面带胜利者的笑容转身，醒来后却只想痛哭一场。\r\n    苏韵锦忘不了程铮，正如程铮忘不了苏韵锦。遥远而明媚的青春年华里，莽撞少年向羞涩女孩第一次笨拙地表达他说不出口的爱意，一直以来，他们都在玩一场你追我逃的游戏，她希望他放开自己，然而当他真正松开手，她比谁都疼。\r\n    谁说灰姑娘都在期待那只水晶鞋，就算找到王子，还是要走进童话里从未提及的平凡生活。你要捱得过几次天崩地裂的折磨，才能抵达天荒地老的幸福？\r\n    我们在太年轻的时候遇见，除了爱，一无所知。\r\n    所以弄丢了对方。\r\n    所以更懂得爱。\r\n    当时光流逝，兜兜转转，那个人是否还在原来的地方等你？',1,'2012-06-30 16:22:45',0,0,'23333','原来',23,'兆华出版社','2012-06-06 00:00:00','2012-06-30 16:22:45',1,'2012-06-30 00:00:00',111,'',3),('87331662-3eb7-4386-9e63-f71e9768f749','程杰','6DF7A94A-2E28-C46F-7E21-CC6B230816E1.jpg','本书通篇都是以情景对话的形式，用多个小故事或编程示例来组织讲解GoF（设计模式的经典名著——Design Patterns：Elements of Reusable Object-Oriented Software，中译本名为《设计模式——可复用面向对象软件的基础》的四位作者Erich Gamma、Richard Helm、Ralph Johnson，以及John Vlissides，这四人常被称为Gang of Four，即四人组，简称GoF）总结的23个设计模式。本书共分为29章。其中，第1、3、4、5章着重讲解了面向对象的意义、好处以及几个重要的设计原则；第2章，以及第6到第28章详细讲解了23个设计模式；第29章是对设计模式的全面总结。附录部分是通过一个例子的演变为初学者介绍了面向对象的基本概念。本书的特色是通过小菜与大鸟的趣味问答，在讲解程序的不断重构和演变过程中，把设计模式的学习门槛降低，让初学者可以更加容易地理解——为什么这样设计才是好的？是怎样想到这样设计的？以达到不但授之以“鱼”，还授之以“渔”的目的。引导读者体会设计演变过程中蕴藏的大智慧。\r\n　　本书适合编程初学者或希望在面向对象编程上有所提高的开发人员阅读。',1,'2012-06-30 16:14:09',0,0,'121212121','大话设计模式（交互启发式教学 谈笑间详解设计模式 让你爱不释手）',66,'机械工业出版社','2012-06-12 00:00:00','2012-06-30 16:14:09',1,'2012-06-30 00:00:00',1212,'',4),('94638f78-20f0-4e7e-b7f3-b9c336cf5e0c','布洛克','AD111EF0-6771-C2BB-F40F-0DA5F741C2A9.jpg','本书介绍了在Java编程中78条极具实用价值的经验规则，这些经验规则涵盖了大多数开发人员每天所面临的问题的解决方案。通过对Java平台设计专家所使用的技术的全面描述，揭示了应该做什么，不应该做什么才能产生清晰、健壮和高效的代码。\r\n本书中的每条规则都以简短、独立的小文章形式出现，并通过例子代码加以进一步说明。本书内容全面，结构清晰，讲解详细。可作为技术人员的参考用书。',1,'2012-06-30 16:08:24',0,0,'121212121','Effective Java中文版(第2版)',100,'机械工业出版社','2012-06-19 00:00:00','2012-06-30 16:08:24',1,'2012-06-06 00:00:00',111,'杨春花，俞黎敏',4),('a7cb1d02-ae3f-44f3-8bc3-a8c5a0e4582d','辛夷坞','81952E19-A7C2-F066-742C-C895BD9E846F.jpg','　　自喻为“玉面小飞龙”的郑微，洋溢着青春活力，怀着对邻家哥哥林静浓浓的爱意，来到大学。可是当她联系林静的时候，却发现出国的林静并没有告诉她任何消息。生性豁达的她，埋藏起自己的爱情，享受大学时代的快乐生活。却意外地爱上同学校的陈孝正，板正、自闭而又敏感、自尊的陈孝正却在毕业的时候又选择了出国放弃了郑微。\r\n　　几年后，林静和陈孝正都出现在郑微面前，而工作后的郑微也纠葛在工作、感情甚至阴谋之中。郑微感情的天平，会倾向于哪一个呢？\r\n　　十八岁，郑微对阮阮说：“我是谁，我是天下无敌的玉面小飞龙，有什么我得不到？” 　\r\n　　二十二岁，她站在山顶上喊：“美国，万恶的资本主义国家，我恨你，把我的男人还给我！” 　\r\n　　二十六岁，微醺，她看着他，“我不可能一次又一次地相信你，不可能……”',1,'2012-06-30 16:20:31',0,0,'121212','致我们终将逝去的青春',11,'兆华出版社','2012-06-27 00:00:00','2012-06-30 16:20:31',1,'2012-06-30 00:00:00',1212,'',3),('a8721ea3-3d8e-43ca-ac78-5a689f38f33b','程杰','C6F2B0C1-6C2D-65C9-A77F-2AF29D45BA3C.jpg','在月亮上发生的爱情故事',1,'2012-07-03 00:01:19',0,0,'11111','人月爱情古树',55,'兆华出版社','2012-07-18 00:00:00','2012-07-03 00:01:19',1,'2012-07-03 00:01:19',1212,'',3),('ad2e7516-63d7-45f9-9c49-cec8a0ebd16e','程杰','B1542DA0-A5A2-E11A-BEB6-9ECFA1E0A1C7.jpg','本书通篇都是以情景对话的形式，用多个小故事或编程示例来组织讲解GoF（设计模式的经典名著——Design Patterns：Elements of Reusable Object-Oriented Software，中译本名为《设计模式——可复用面向对象软件的基础》的四位作者Erich Gamma、Richard Helm、Ralph Johnson，以及John Vlissides，这四人常被称为Gang of Four，即四人组，简称GoF）总结的23个设计模式。本书共分为29章。其中，第1、3、4、5章着重讲解了面向对象的意义、好处以及几个重要的设计原则；第2章，以及第6到第28章详细讲解了23个设计模式；第29章是对设计模式的全面总结。附录部分是通过一个例子的演变为初学者介绍了面向对象的基本概念。本书的特色是通过小菜与大鸟的趣味问答，在讲解程序的不断重构和演变过程中，把设计模式的学习门槛降低，让初学者可以更加容易地理解——为什么这样设计才是好的？是怎样想到这样设计的？以达到不但授之以“鱼”，还授之以“渔”的目的。引导读者体会设计演变过程中蕴藏的大智慧。\r\n　　本书适合编程初学者或希望在面向对象编程上有所提高的开发人员阅读。',1,'2012-06-30 16:14:09',0,0,'121212121','大话设计模式《第二版》（交互启发式教学 谈笑间详解设计模式 让你爱不释手）',66,'机械工业出版社','2012-06-12 00:00:00','2012-06-30 16:14:09',1,'2012-06-30 00:00:00',1212,'',4),('f35fc944-0b0b-4237-95ad-90beeb89c9b2','韩寒','50D347DA-7A7B-1084-ADF6-D7F55D61F57A.jpg','在软件领域，很少能有像《人月神话》一样具有深远影响力和畅销不衰的著作。Brooks博士为人们管理复杂项目提供了最具洞察力的见解，既有很多发人深省的观点，又有大量软件工程的实践。本书内容来自Brooks博士在IBM公司SYSTEM／360家族和OS／360中的项目管理经验，该项目堪称软件开发项目管理的典范。该书英文原版一经面世，即引起业内人士的强烈反响，后又译为德、法、日、俄、中、韩等多种文字，全球销售数百万册。确立了其在行业内的经典地位。\r\n　　在本书第一次出版32年后的今天，我们重新整理了Brooks博士的经典内容，并将国内软件开发领域先行者们对《人月神话》中的实践及系统理论的使用经验和心得集结成册免费赠与大家共享，更使本书成为国内从业者的必读经典之一。\r\n　　本书读者包括：软件开发人员、软件项目经理、系统分析师等IT从业者。',0.55,'2012-06-30 16:02:01',0,0,'1121212','人月神话（32周年中文纪念版）',66,'电子工业出版社','2012-06-19 00:00:00','2012-06-30 16:02:01',1,'2012-06-25 00:00:00',111,'',4);
/*!40000 ALTER TABLE `tb_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_catagory`
--

DROP TABLE IF EXISTS `tb_catagory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_catagory` (
  `catagory_id` int(11) NOT NULL AUTO_INCREMENT,
  `catagory_level` varchar(255) NOT NULL,
  `catagory_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `discount` float NOT NULL,
  `discount_date` datetime NOT NULL,
  `catagory_parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`catagory_id`),
  KEY `FK3EDDDAB6BBC4B92` (`catagory_parent`),
  CONSTRAINT `FK3EDDDAB6BBC4B92` FOREIGN KEY (`catagory_parent`) REFERENCES `tb_catagory` (`catagory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_catagory`
--

LOCK TABLES `tb_catagory` WRITE;
/*!40000 ALTER TABLE `tb_catagory` DISABLE KEYS */;
INSERT INTO `tb_catagory` VALUES (1,'1','小说','2012-06-30 15:40:09',1,'2012-06-30 15:40:14',NULL),(2,'1','教材','2012-06-30 15:41:31',1,'2012-06-30 15:41:35',NULL),(3,'2','言情小说','2012-06-30 15:42:06',1,'2012-06-30 15:42:09',1),(4,'2','计算机教材','2012-06-30 15:43:50',1,'2012-06-30 15:43:53',2),(5,'2','青春小说','2012-06-30 00:00:00',1,'2012-06-30 16:26:30',1),(6,'2','恐怖小说','2012-07-01 23:45:25',1,'2012-07-01 23:45:25',1);
/*!40000 ALTER TABLE `tb_catagory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_collection`
--

DROP TABLE IF EXISTS `tb_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_collection` (
  `collection_id` varchar(40) NOT NULL,
  `collection_date` datetime NOT NULL,
  `collection_price` float NOT NULL,
  `book_id` varchar(40) NOT NULL,
  `customer_email` varchar(40) NOT NULL,
  PRIMARY KEY (`collection_id`),
  KEY `FKDE74450FE47D9518` (`book_id`),
  KEY `FKDE74450F66EF02E2` (`customer_email`),
  CONSTRAINT `FKDE74450F66EF02E2` FOREIGN KEY (`customer_email`) REFERENCES `tb_customer` (`email`),
  CONSTRAINT `FKDE74450FE47D9518` FOREIGN KEY (`book_id`) REFERENCES `tb_book` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_collection`
--

LOCK TABLES `tb_collection` WRITE;
/*!40000 ALTER TABLE `tb_collection` DISABLE KEYS */;
INSERT INTO `tb_collection` VALUES ('1','2012-06-30 21:12:01',122,'28bbd5ce-9ff6-48d8-ba43-a08ad807cc77','a3838049@163.com'),('10','2012-06-30 21:14:27',78,'94638f78-20f0-4e7e-b7f3-b9c336cf5e0c','a3838049@163.com'),('11','2012-06-30 21:14:42',77,'f35fc944-0b0b-4237-95ad-90beeb89c9b2','a3838049@163.com'),('12','2012-06-30 21:15:06',7788,'ad2e7516-63d7-45f9-9c49-cec8a0ebd16e','a3838049@163.com'),('13','2012-06-30 21:15:20',88,'ad2e7516-63d7-45f9-9c49-cec8a0ebd16e','a3838049@163.com'),('14','2012-06-30 21:15:37',90,'f35fc944-0b0b-4237-95ad-90beeb89c9b2','a3838049@163.com'),('15','2012-06-30 21:15:50',88,'ad2e7516-63d7-45f9-9c49-cec8a0ebd16e','a3838049@163.com'),('2','2012-06-30 21:12:20',222,'28bbd5ce-9ff6-48d8-ba43-a08ad807cc77','a3838049@163.com'),('28dfe38b-a763-4162-badc-c74a8b9766cb','2012-07-04 10:24:41',33,'6756525f-b750-46e8-981b-6b1be78c30ab','a3838049@163.com'),('3','2012-06-30 21:12:36',222,'41b11380-9f92-4bb2-a8c0-6442d2a0717a','a3838049@163.com'),('4','2012-06-30 21:12:47',212,'41b11380-9f92-4bb2-a8c0-6442d2a0717a','a3838049@163.com'),('5','2012-06-30 21:12:59',32,'41b11380-9f92-4bb2-a8c0-6442d2a0717a','a3838049@163.com'),('53a86223-dbbb-4263-9eaa-3efe24aafafc','2012-07-04 10:27:04',33,'6756525f-b750-46e8-981b-6b1be78c30ab','a3838049@163.com'),('6','2012-06-30 21:13:12',43,'4630afaa-bc88-4efb-a723-aaa65ef7165a','a3838049@163.com'),('66ad285e-3745-4ee3-aec3-263226885c6d','2012-07-04 10:26:47',33,'6756525f-b750-46e8-981b-6b1be78c30ab','a3838049@163.com'),('7','2012-06-30 21:13:40',54,'4630afaa-bc88-4efb-a723-aaa65ef7165a','a3838049@163.com'),('8','2012-06-30 21:13:55',56,'4bf9e2fc-019c-48f4-a84f-5f9386b4c0d0','a3838049@163.com'),('9','2012-06-30 21:14:08',67,'7631f8ac-5c3c-439f-9ec0-f02d8b98c661','a3838049@163.com'),('935c1a6d-aabd-4b28-81ba-31dc9b6b5ce3','2012-07-04 10:27:06',1212,'41b11380-9f92-4bb2-a8c0-6442d2a0717a','a3838049@163.com');
/*!40000 ALTER TABLE `tb_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_comment`
--

DROP TABLE IF EXISTS `tb_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_comment` (
  `comment_id` varchar(40) NOT NULL,
  `comment_date` datetime NOT NULL,
  `content` longtext NOT NULL,
  `score` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `book_id` varchar(40) NOT NULL,
  `customer_email` varchar(40) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK38AF558EC3273CA3` (`book_id`),
  KEY `FK38AF558E66EF02E2` (`customer_email`),
  CONSTRAINT `FK38AF558E66EF02E2` FOREIGN KEY (`customer_email`) REFERENCES `tb_customer` (`email`),
  CONSTRAINT `FK38AF558EC3273CA3` FOREIGN KEY (`book_id`) REFERENCES `tb_book` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comment`
--

LOCK TABLES `tb_comment` WRITE;
/*!40000 ALTER TABLE `tb_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_customer`
--

DROP TABLE IF EXISTS `tb_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_customer` (
  `email` varchar(40) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `balance` float NOT NULL,
  `birthday` datetime DEFAULT NULL,
  `hobbies` varchar(40) DEFAULT NULL,
  `join_date` datetime NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `pw` varchar(100) NOT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_customer`
--

LOCK TABLES `tb_customer` WRITE;
/*!40000 ALTER TABLE `tb_customer` DISABLE KEYS */;
INSERT INTO `tb_customer` VALUES ('30966435211@qq.com',NULL,0,NULL,NULL,'2012-07-03 22:14:53',NULL,'8940e5fabe9dd703a9cab2181dfe1e5c',NULL,2),('3096643521@qq.com',NULL,0,NULL,NULL,'2012-07-03 22:14:19',NULL,'8940e5fabe9dd703a9cab2181dfe1e5c',NULL,2),('309664352@qq.com',NULL,0,NULL,NULL,'2012-07-04 14:42:31',NULL,'9012f08081cac75ca2fd0f9cb20c07ae',NULL,1),('a38380491@163.com',NULL,0,NULL,NULL,'2012-07-03 22:02:57',NULL,'8940e5fabe9dd703a9cab2181dfe1e5c',NULL,2),('a3838049@163.com','1',1,'2012-06-30 20:04:52','1','2012-06-30 20:04:56','winds','6d13eece638ac1842a151cf2166371a2','1',1),('tiger.liu0215@gmail.com',NULL,0,NULL,NULL,'2012-07-03 22:07:01',NULL,'8940e5fabe9dd703a9cab2181dfe1e5c',NULL,2);
/*!40000 ALTER TABLE `tb_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_keyword`
--

DROP TABLE IF EXISTS `tb_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_keyword` (
  `keyword_id` varchar(255) NOT NULL,
  `keyword_before_click` float NOT NULL,
  `keyword_content` varchar(100) DEFAULT NULL,
  `keyword_has_goods` int(11) NOT NULL,
  `keyword_status` int(11) NOT NULL,
  `keyword_today_click` int(11) NOT NULL,
  PRIMARY KEY (`keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_keyword`
--

LOCK TABLES `tb_keyword` WRITE;
/*!40000 ALTER TABLE `tb_keyword` DISABLE KEYS */;
INSERT INTO `tb_keyword` VALUES ('0a4d8501-12a3-42ad-9c01-5d0e49797466',0.11336,'人月神话',1,0,0),('123c2940-5e3c-4aa6-beba-e2a39bc81066',2.47546e-009,'计算机教材',6,0,0),('146fa149-4928-45a7-a636-780bedbb5883',3.78113,'韩寒',2,0,0),('4c19fadd-dd1d-48ad-b22e-2776c1ddbdbc',3.23312e-011,'代码大全',1,0,0),('60f015ea-877c-43d5-9390-32ffae79e408',60000,'恐怖小说',0,1,0),('729f5a05-262c-44a9-81f0-ec82fb2b4eb2',2.47546e-009,'程杰',4,0,0),('7d41402a-e1f4-4a2e-81c5-1aa7007e18eb',1.79618e-011,'原来',2,0,0),('a2023594-2b21-4d30-908e-b75fd8d1eda5',2.47546e-009,'青春小说',2,0,0),('acc50f69-c3ef-41ca-8bf5-e4be6524cb16',8.9809e-012,'代码',1,0,0),('d5c5ef64-4504-4022-9f91-ee5dcfe32e15',0.8,'人月',2,0,0),('f8b5baf2-cf5c-48bf-a854-e003dc61f0f2',1.04602e-008,'小说',8,0,0);
/*!40000 ALTER TABLE `tb_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_order`
--

DROP TABLE IF EXISTS `tb_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_order` (
  `order_id` varchar(40) NOT NULL,
  `amount` float NOT NULL,
  `book_ids` longtext NOT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `customer_email` varchar(40) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `shipping_address_id` varchar(40) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKFA98EE3D793E35E` (`payment_method_id`),
  KEY `FKFA98EE3D482DD7B4` (`shipping_address_id`),
  KEY `FKFA98EE3D66EF02E2` (`customer_email`),
  CONSTRAINT `FKFA98EE3D482DD7B4` FOREIGN KEY (`shipping_address_id`) REFERENCES `tb_shipping_address` (`shipping_address_id`),
  CONSTRAINT `FKFA98EE3D66EF02E2` FOREIGN KEY (`customer_email`) REFERENCES `tb_customer` (`email`),
  CONSTRAINT `FKFA98EE3D793E35E` FOREIGN KEY (`payment_method_id`) REFERENCES `tb_payment_method` (`payment_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order`
--

LOCK TABLES `tb_order` WRITE;
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
INSERT INTO `tb_order` VALUES ('1',1111,'28bbd5ce-9ff6-48d8-ba43-a08ad807cc77,28bbd5ce-9ff6-48d8-ba43-a08ad807cc77,28bbd5ce-9ff6-48d8-ba43-a08ad807cc77,28bbd5ce-9ff6-48d8-ba43-a08ad807cc77,28bbd5ce-9ff6-48d8-ba43-a08ad807cc77,28bbd5ce-9ff6-48d8-ba43-a08ad807cc77,28bbd5ce-9ff6-48d8-ba43-a08ad807cc77,28bbd5ce-9ff6-48d8-ba43-a08ad807cc77,28bbd5ce-9ff6-48d8-ba43-a08ad807cc77,28bbd5ce-9ff6-48d8-ba43-a08ad807cc77',NULL,'2012-06-30 20:15:25',4,'a3838049@163.com',1,'1'),('2',12121,'28bbd5ce-9ff6-48d8-ba43-a08ad807cc77,41b11380-9f92-4bb2-a8c0-6442d2a0717a,4630afaa-bc88-4efb-a723-aaa65ef7165a,4bf9e2fc-019c-48f4-a84f-5f9386b4c0d0,4c5af7c3-97d8-469f-9eb2-b06da5609428,7631f8ac-5c3c-439f-9ec0-f02d8b98c661,87331662-3eb7-4386-9e63-f71e9768f749,94638f78-20f0-4e7e-b7f3-b9c336cf5e0c,a7cb1d02-ae3f-44f3-8bc3-a8c5a0e4582d,ad2e7516-63d7-45f9-9c49-cec8a0ebd16e,f35fc944-0b0b-4237-95ad-90beeb89c9b2',NULL,'2012-06-08 20:21:44',4,'a3838049@163.com',1,'1');
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_payment_method`
--

DROP TABLE IF EXISTS `tb_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_payment_method` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_payment_method`
--

LOCK TABLES `tb_payment_method` WRITE;
/*!40000 ALTER TABLE `tb_payment_method` DISABLE KEYS */;
INSERT INTO `tb_payment_method` VALUES (1,'2012-06-30 20:12:25','货到付款');
/*!40000 ALTER TABLE `tb_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_promotion`
--

DROP TABLE IF EXISTS `tb_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_promotion` (
  `promotion_id` varchar(40) NOT NULL,
  `create_date` datetime NOT NULL,
  `effective_date` datetime NOT NULL,
  `expiry_date` datetime NOT NULL,
  `need_amount` float NOT NULL,
  `promotion_catagorys` varchar(255) NOT NULL,
  `promotion_discount` float DEFAULT NULL,
  `promotion_image` varchar(100) DEFAULT NULL,
  `promotion_money` float NOT NULL DEFAULT '0',
  `promotion_type` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_promotion`
--

LOCK TABLES `tb_promotion` WRITE;
/*!40000 ALTER TABLE `tb_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_rejected_apply`
--

DROP TABLE IF EXISTS `tb_rejected_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_rejected_apply` (
  `rejected_apply_id` varchar(40) NOT NULL,
  `apply_date` datetime NOT NULL,
  `apply_reason` varchar(200) NOT NULL,
  `cancel_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `customer_email` varchar(40) NOT NULL,
  `order_id` varchar(40) NOT NULL,
  PRIMARY KEY (`rejected_apply_id`),
  UNIQUE KEY `order_id` (`order_id`),
  KEY `FKD0511A5E66EF02E2` (`customer_email`),
  KEY `FKD0511A5E74895891` (`order_id`),
  CONSTRAINT `FKD0511A5E66EF02E2` FOREIGN KEY (`customer_email`) REFERENCES `tb_customer` (`email`),
  CONSTRAINT `FKD0511A5E74895891` FOREIGN KEY (`order_id`) REFERENCES `tb_order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_rejected_apply`
--

LOCK TABLES `tb_rejected_apply` WRITE;
/*!40000 ALTER TABLE `tb_rejected_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_rejected_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_shipping_address`
--

DROP TABLE IF EXISTS `tb_shipping_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_shipping_address` (
  `shipping_address_id` varchar(40) NOT NULL,
  `consignee` varchar(30) NOT NULL,
  `fixed_phone` varchar(20) DEFAULT NULL,
  `mobile_phone` varchar(20) DEFAULT NULL,
  `postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(20) NOT NULL,
  `shipping_county` varchar(16) NOT NULL,
  `shipping_province` varchar(10) NOT NULL,
  `street_address` varchar(200) NOT NULL,
  `customer_email` varchar(40) NOT NULL,
  `shipping_city` varchar(10) NOT NULL,
  PRIMARY KEY (`shipping_address_id`),
  KEY `FK89CED01466EF02E2` (`customer_email`),
  CONSTRAINT `FK89CED01466EF02E2` FOREIGN KEY (`customer_email`) REFERENCES `tb_customer` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_shipping_address`
--

LOCK TABLES `tb_shipping_address` WRITE;
/*!40000 ALTER TABLE `tb_shipping_address` DISABLE KEYS */;
INSERT INTO `tb_shipping_address` VALUES ('1','1','1','1','1111','中国','1111','1111','1111','a3838049@163.com','');
/*!40000 ALTER TABLE `tb_shipping_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_shopping_record`
--

DROP TABLE IF EXISTS `tb_shopping_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_shopping_record` (
  `shopping_record_id` varchar(40) NOT NULL,
  `record_date` datetime NOT NULL,
  `book_id` varchar(40) NOT NULL,
  `customer_email` varchar(40) NOT NULL,
  `order_id` varchar(40) NOT NULL,
  PRIMARY KEY (`shopping_record_id`),
  KEY `FKD15A5B37C3273CA3` (`book_id`),
  KEY `FKD15A5B3766EF02E2` (`customer_email`),
  KEY `FKD15A5B3774895891` (`order_id`),
  CONSTRAINT `FKD15A5B3766EF02E2` FOREIGN KEY (`customer_email`) REFERENCES `tb_customer` (`email`),
  CONSTRAINT `FKD15A5B3774895891` FOREIGN KEY (`order_id`) REFERENCES `tb_order` (`order_id`),
  CONSTRAINT `FKD15A5B37C3273CA3` FOREIGN KEY (`book_id`) REFERENCES `tb_book` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_shopping_record`
--

LOCK TABLES `tb_shopping_record` WRITE;
/*!40000 ALTER TABLE `tb_shopping_record` DISABLE KEYS */;
INSERT INTO `tb_shopping_record` VALUES ('1','2012-06-30 20:22:21','28bbd5ce-9ff6-48d8-ba43-a08ad807cc77','a3838049@163.com','2'),('10','2012-06-30 20:24:47','ad2e7516-63d7-45f9-9c49-cec8a0ebd16e','a3838049@163.com','2'),('11','2012-06-30 20:24:58','f35fc944-0b0b-4237-95ad-90beeb89c9b2','a3838049@163.com','2'),('12','2012-06-30 20:25:15','28bbd5ce-9ff6-48d8-ba43-a08ad807cc77','a3838049@163.com','1'),('13','2012-06-30 20:31:15','6756525f-b750-46e8-981b-6b1be78c30ab','a3838049@163.com','1'),('2','2012-06-30 20:22:40','41b11380-9f92-4bb2-a8c0-6442d2a0717a','a3838049@163.com','2'),('3','2012-06-30 20:22:54','4630afaa-bc88-4efb-a723-aaa65ef7165a','a3838049@163.com','2'),('4','2012-06-30 20:23:08','4bf9e2fc-019c-48f4-a84f-5f9386b4c0d0','a3838049@163.com','2'),('5','2012-06-30 20:23:24','4c5af7c3-97d8-469f-9eb2-b06da5609428','a3838049@163.com','2'),('6','2012-06-30 20:23:43','7631f8ac-5c3c-439f-9ec0-f02d8b98c661','a3838049@163.com','2'),('7','2012-06-12 20:23:56','87331662-3eb7-4386-9e63-f71e9768f749','a3838049@163.com','2'),('8','2012-06-13 20:24:10','94638f78-20f0-4e7e-b7f3-b9c336cf5e0c','a3838049@163.com','2'),('9','2012-06-20 20:24:27','a7cb1d02-ae3f-44f3-8bc3-a8c5a0e4582d','a3838049@163.com','2');
/*!40000 ALTER TABLE `tb_shopping_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_staff`
--

DROP TABLE IF EXISTS `tb_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_staff` (
  `staff_id` varchar(40) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `birthday` datetime NOT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `join_date` datetime NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pw` varchar(100) NOT NULL,
  `remove_date` datetime DEFAULT NULL,
  `sex` varchar(2) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_staff`
--

LOCK TABLES `tb_staff` WRITE;
/*!40000 ALTER TABLE `tb_staff` DISABLE KEYS */;
INSERT INTO `tb_staff` VALUES ('s001','1','2012-07-04 01:25:38','1','2012-07-04 01:25:45','11','111','8940e5fabe9dd703a9cab2181dfe1e5c',NULL,'1',1);
/*!40000 ALTER TABLE `tb_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_staff_handle_record`
--

DROP TABLE IF EXISTS `tb_staff_handle_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_staff_handle_record` (
  `staff_handle_record_id` varchar(40) NOT NULL,
  `after_handle_status` int(11) NOT NULL,
  `before_handle_status` int(11) NOT NULL,
  `handle_date` datetime NOT NULL,
  `handle_type` int(11) NOT NULL,
  `order_id` varchar(40) DEFAULT NULL,
  `rejected_apply_id` varchar(40) DEFAULT NULL,
  `staff_id` varchar(40) NOT NULL,
  PRIMARY KEY (`staff_handle_record_id`),
  KEY `FK69FA63D878FDD751` (`staff_id`),
  KEY `FK69FA63D874895891` (`order_id`),
  KEY `FK69FA63D8AADA4254` (`rejected_apply_id`),
  CONSTRAINT `FK69FA63D874895891` FOREIGN KEY (`order_id`) REFERENCES `tb_order` (`order_id`),
  CONSTRAINT `FK69FA63D878FDD751` FOREIGN KEY (`staff_id`) REFERENCES `tb_staff` (`staff_id`),
  CONSTRAINT `FK69FA63D8AADA4254` FOREIGN KEY (`rejected_apply_id`) REFERENCES `tb_rejected_apply` (`rejected_apply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_staff_handle_record`
--

LOCK TABLES `tb_staff_handle_record` WRITE;
/*!40000 ALTER TABLE `tb_staff_handle_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_staff_handle_record` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-03 13:46:14
