/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 8.0.13 : Database - studorm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`studorm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `studorm`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1673443913759 DEFAULT CHARSET=utf8 COMMENT='在线沟通';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values 
(61,'2021-01-30 19:51:25',1,1,'提问1','回复1',1),
(62,'2021-01-30 19:51:25',2,2,'提问2','回复2',2),
(63,'2021-01-30 19:51:25',3,3,'提问3','回复3',3),
(64,'2021-01-30 19:51:25',4,4,'提问4','回复4',4),
(65,'2021-01-30 19:51:25',5,5,'提问5','回复5',5),
(66,'2021-01-30 19:51:25',6,6,'提问6','回复6',6),
(1612008024753,'2021-01-30 20:00:24',1612007753547,NULL,'你好',NULL,0),
(1612008107872,'2021-01-30 20:01:47',1612007753547,1,NULL,'你好',0),
(1673443913758,'2023-01-11 21:31:53',1612007753547,NULL,'1',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values 
(1,'picture1','http://localhost:8080/stuDorm/upload/1612007849903.jpg'),
(2,'picture2','http://localhost:8080/stuDorm/upload/picture2.jpg'),
(3,'picture3','http://localhost:8080/stuDorm/upload/picture3.jpg'),
(6,'homepage',NULL);

/*Table structure for table `fangkexinxi` */

DROP TABLE IF EXISTS `fangkexinxi`;

CREATE TABLE `fangkexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangkexingming` varchar(200) DEFAULT NULL COMMENT '访客姓名',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `daofangyuanyin` longtext COMMENT '到访原因',
  `laifangshijian` datetime DEFAULT NULL COMMENT '来访时间',
  `likaishijian` datetime DEFAULT NULL COMMENT '离开时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676902922032 DEFAULT CHARSET=utf8 COMMENT='访客信息';

/*Data for the table `fangkexinxi` */

insert  into `fangkexinxi`(`id`,`addtime`,`fangkexingming`,`dianhua`,`sushehao`,`daofangyuanyin`,`laifangshijian`,`likaishijian`,`beizhu`) values 
(1676902082041,'2023-02-20 22:08:01','张宇宁','13823888881','19A304','去308宿舍找同学','2023-02-22 03:00:00','2023-02-22 04:00:00',''),
(1676902240702,'2023-02-20 22:10:39','曾汉翀','13823888886','21A307','找25A503唐蕾借笔记','2023-02-23 06:05:00','2023-02-23 06:30:00',''),
(1676902922031,'2023-02-20 22:22:01','李欣','13823888889','25A303','找同学外出逛街','2023-02-22 07:30:00','2023-02-22 08:00:00','');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1673442320190 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values 
(71,'2022-12-30 19:51:25','帖子标题1','<p>帖子内容111111</p>',1,1,'用户名1','开放'),
(72,'2022-12-30 19:51:25','帖子标题2','帖子内容2',2,2,'用户名2','开放'),
(73,'2022-12-30 19:51:25','帖子标题3','帖子内容3',3,3,'用户名3','开放'),
(74,'2022-12-30 19:51:25','帖子标题4','帖子内容4',4,4,'用户名4','开放'),
(75,'2022-12-30 19:51:25','帖子标题5','帖子内容5',5,5,'用户名5','开放'),
(76,'2022-12-30 19:51:25','帖子标题6','帖子内容6',6,6,'用户名6','开放'),
(1612007994628,'2022-12-30 19:51:25','测试','<p>测试</p>',0,1612007753547,'345','开放'),
(1612008002212,'2022-12-30 19:51:25','新闻','电费给对方是个的法规的发生',71,1612007753547,'345',NULL),
(1665754935999,'2022-10-14 21:42:15',NULL,'123',1612007994628,1612007753547,'123',NULL),
(1673442320189,'2023-01-11 21:05:19',NULL,'d',1612007994628,1612007753547,'123',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values 
(81,'2022-12-30 19:51:25','标题1','简介1','http://localhost:8080/stuDorm/upload/news_picture1.jpg','<p>内容1士大夫十大发的</p>'),
(82,'2022-12-30 19:51:25','标题2','简介2','http://localhost:8080/stuDorm/upload/news_picture2.jpg','内容2'),
(83,'2022-12-30 19:51:25','标题3','简介3','http://localhost:8080/stuDorm/upload/news_picture3.jpg','内容3'),
(84,'2022-12-30 19:51:25','标题4','简介4','http://localhost:8080/stuDorm/upload/news_picture4.jpg','内容4'),
(85,'2022-12-30 19:51:25','标题5','简介5','http://localhost:8080/stuDorm/upload/news_picture5.jpg','内容5'),
(86,'2022-12-30 19:51:25','标题6','简介6','http://localhost:8080/stuDorm/upload/news_picture6.jpg','内容6');

/*Table structure for table `shuidianfei` */

DROP TABLE IF EXISTS `shuidianfei`;

CREATE TABLE `shuidianfei` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `shoufeileixing` varchar(200) DEFAULT NULL COMMENT '收费类型',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612007799186 DEFAULT CHARSET=utf8 COMMENT='水电费';

/*Data for the table `shuidianfei` */

insert  into `shuidianfei`(`id`,`addtime`,`sushehao`,`yuefen`,`shoufeileixing`,`jine`) values 
(51,'2023-02-20 15:02:43','19A304','2月','水费',120),
(52,'2023-02-20 15:02:43','19A304','2月','电费',100),
(53,'2023-02-20 15:02:43','19A308','2月','水费',112),
(54,'2023-02-20 15:02:43','19A308','2月','电费',100),
(55,'2023-02-20 15:02:43','20A208','2月','水费',98),
(56,'2023-02-20 15:02:43','20A208','2月','电费',80),
(1612007799172,'2023-02-20 15:02:43','20A404','2月','水费',104),
(1612007799173,'2023-02-20 15:02:43','20A404','2月','电费',102),
(1612007799174,'2023-02-20 15:06:30','21A307','2月','水费',114),
(1612007799175,'2023-02-20 15:06:31','21A307','2月','电费',101),
(1612007799176,'2023-02-20 15:06:52','21A401','2月','水费',101),
(1612007799177,'2023-02-20 15:07:19','21A401','2月','电费',108),
(1612007799178,'2023-02-20 15:10:07','22B502','2月','水费',121),
(1612007799179,'2023-02-20 15:10:10','22B502','2月','电费',98),
(1612007799180,'2023-02-20 15:10:27','25A303','2月','水费',110),
(1612007799181,'2023-02-20 15:10:31','25A303','2月','电费',106),
(1612007799182,'2023-02-20 15:11:46','26A402','2月','水费',110),
(1612007799183,'2023-02-20 15:11:50','26A402','2月','电费',99),
(1612007799184,'2023-02-20 15:12:18','27A505','2月','水费',105),
(1612007799185,'2023-02-20 15:12:19','27A505','2月','电费',107);

/*Table structure for table `sushebaoxiu` */

DROP TABLE IF EXISTS `sushebaoxiu`;

CREATE TABLE `sushebaoxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `baoxiuwupin` varchar(200) DEFAULT NULL COMMENT '报修物品',
  `baoxiuneirong` longtext COMMENT '报修内容',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `baoxiushijian` date DEFAULT NULL COMMENT '报修时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676902707254 DEFAULT CHARSET=utf8 COMMENT='宿舍报修';

/*Data for the table `sushebaoxiu` */

insert  into `sushebaoxiu`(`id`,`addtime`,`xuehao`,`xingming`,`sushehao`,`baoxiuwupin`,`baoxiuneirong`,`tupian`,`baoxiushijian`,`sfsh`,`shhf`) values 
(1676870704565,'2023-02-20 13:25:04','2019001','张宇宁','19A304','厕所水龙头','厕所水龙头坏了，关水无法控制','','2023-02-16','是','师傅明天下午3点上门维修'),
(1676902707253,'2023-02-20 22:18:26','2019007','林宇城','21A401','空调','空调坏了','','2023-02-16','否','请说明具体情况');

/*Table structure for table `susheweisheng` */

DROP TABLE IF EXISTS `susheweisheng`;

CREATE TABLE `susheweisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiancharenyuan` varchar(200) DEFAULT NULL COMMENT '检查人员',
  `suoshubumen` varchar(200) DEFAULT NULL COMMENT '所属部门',
  `jianchalouceng` varchar(200) DEFAULT NULL COMMENT '检查楼层',
  `weishengqingkuang` varchar(200) DEFAULT NULL COMMENT '卫生情况',
  `jianchashijian` varchar(200) DEFAULT NULL COMMENT '检查时间',
  `weishengpingfen` varchar(200) DEFAULT NULL COMMENT '卫生评分',
  `dengji` varchar(50) DEFAULT NULL COMMENT '等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `susheweisheng` */

/*Table structure for table `sushexinxi` */

DROP TABLE IF EXISTS `sushexinxi`;

CREATE TABLE `sushexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) NOT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `kezhurenshu` int(11) DEFAULT NULL COMMENT '可住人数',
  `yizhurenshu` int(11) DEFAULT NULL COMMENT '已住人数',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676863492418 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';

/*Data for the table `sushexinxi` */

insert  into `sushexinxi`(`id`,`addtime`,`sushehao`,`susheleixing`,`weizhi`,`kezhurenshu`,`yizhurenshu`,`beizhu`) values 
(11,'2023-02-10 19:51:25','19A304','男生','19栋',6,6,''),
(12,'2023-02-10 19:51:25','19A304','男生','19栋',6,6,''),
(13,'2023-02-10 19:51:25','19A308','男生','19栋',6,5,'空余一人'),
(14,'2023-02-10 19:51:25','20A208','男生','19栋',6,6,''),
(15,'2023-02-10 19:51:25','20A404','男生','20栋',6,6,''),
(16,'2023-02-10 19:51:25','21A307','男生','21栋',5,5,''),
(1676863492411,'2023-02-20 11:24:51','21A401','男生','21栋',5,5,''),
(1676863492412,'2023-02-20 11:39:12','22B502','女生','25栋',5,5,NULL),
(1676863492413,'2023-02-20 11:40:44','25A503','女生','25栋',4,4,NULL),
(1676863492414,'2023-02-20 12:06:08','25A303','女生','25栋',4,3,'空余一人'),
(1676863492415,'2023-02-20 12:08:13','26A402','女生','26栋',4,4,NULL),
(1676863492417,'2023-02-20 12:11:39','27A505','女生','27栋',5,5,NULL);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values 
(1,1,'abo','users','管理员','nrfi1zhkub2m0ukip26ada27y5g9f826','2021-01-30 19:55:04','2023-02-20 15:27:58'),
(2,1612007753547,'345','xuesheng','学生','e5dnxhwos0pg0sj1g78l0r3pfkl9yp0m','2021-01-30 19:59:34','2023-02-20 15:18:05'),
(3,21,'学生1','xuesheng','学生','5cd4n5425ind15xd8664mfbhkk6h6mx4','2022-10-14 21:38:09','2023-02-20 15:14:02');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values 
(1,'abo','abo','管理员','2021-01-30 19:51:26'),
(2,'admin','admin','管理员','2023-02-20 10:20:15');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1612007753553 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`xueyuan`,`zhuanye`,`dianhua`,`youxiang`,`shenfenzheng`,`sushehao`) values 
(21,'2023-02-11 08:51:25','2019001','123456','张宇宁','男',23,'计算机科学与工程学院','计算机科学与技术','13823888881','13823888881@qq.com','440300199101010001','19A304'),
(22,'2023-02-11 08:51:25','2019002','123456','谢玉','男',23,'计算机科学与工程学院','计算机科学与技术','13823888882','13823888882@qq.com','440300199202020002','19A304'),
(23,'2023-02-11 08:51:25','2019003','123456','王鹏辉','男',25,'计算机科学与工程','数据科学与大数据','13823888883','13823888883@qq.com','440300199303030003','19A308'),
(24,'2023-02-11 08:51:25','2019004','123456','李非','男',24,'建筑工程学院','土木工程','13823888884','13823888884@qq.com','440300199404040004','20A208'),
(25,'2023-02-11 08:51:25','2019005','123456','张华','男',24,'建筑工程学院','工程造价','13823888885','13823888885@qq.com','440300199505050005','20A404'),
(26,'2023-02-11 08:51:25','2019006','123456','曾汉翀','男',25,'经济管理学院','会计学','13823888886','13823888886@qq.com','440300199606060006','21A307'),
(1612007753547,'2023-02-11 08:51:25','2019007','123456','林宇城','男',24,'经济管理学院','财务管理','13823888887','13823888887@qq.com','440300199606060007','21A401'),
(1612007753548,'2023-02-20 11:45:30','2019008','123456','秦清蓉','女',24,'外国语学院','商务英语','13823888888','13823888888@qq.com','440300199606060008','22B502'),
(1612007753549,'2023-02-20 11:49:28','2019009','123456','李欣','女',24,'经济管理学院','会计学','13823888889','13823888889@qq.com','440300199606060009','25A503'),
(1612007753550,'2023-02-20 11:50:11','2019010','123456','唐蕾','女',23,'经济管理学院','会计学','13823888810','13823888810@qq.com','440300199606060010','25A503'),
(1612007753551,'2023-02-20 12:29:32','2019011','123456','曾艳','女',23,'工商管理学院','电子商务','13823888811','13823888811@qq.com','440300199606060011','26A402'),
(1612007753552,'2023-02-20 12:31:55','2019012','123456','沈亦君','女',24,'音乐舞蹈学院','音乐表演','13823888812','13823888812@qq.com','440300199606060012','27A505');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
