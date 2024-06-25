/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-12-27 15:41:24
*/
use shop;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(100) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `manager` (`manager`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'pbkdf2:sha256:50000$TkExX9Jm$d63477853a17dcaedcd52be4b6213ebb74b61a12456762ac19d6b7dfb559aa57', 'mr');

-- ----------------------------
-- Table structure for alembic_version
-- ----------------------------
DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alembic_version
-- ----------------------------
INSERT INTO `alembic_version` VALUES ('57aaa8e1f498');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `user_id` (`user_id`),
  KEY `ix_cart_addtime` (`addtime`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '59', '1', '1', '2018-10-31 14:29:40');
INSERT INTO `cart` VALUES ('2', '59', '0', '1', '2018-10-31 14:30:46');
INSERT INTO `cart` VALUES ('3', '59', '0', '1', '2018-10-31 14:31:48');
INSERT INTO `cart` VALUES ('4', '59', '0', '1', '2018-10-31 14:32:06');
INSERT INTO `cart` VALUES ('5', '59', '0', '1', '2018-10-31 14:34:34');
INSERT INTO `cart` VALUES ('6', '59', '0', '1', '2018-10-31 14:34:44');
INSERT INTO `cart` VALUES ('7', '59', '0', '5', '2018-10-31 14:35:00');
INSERT INTO `cart` VALUES ('8', '59', '0', '1', '2018-10-31 14:38:46');
INSERT INTO `cart` VALUES ('9', '60', '0', '1', '2018-10-31 14:39:00');
INSERT INTO `cart` VALUES ('10', '60', '0', '3', '2018-10-31 14:39:21');
INSERT INTO `cart` VALUES ('11', '46', '0', '0', '2018-10-31 14:45:31');
INSERT INTO `cart` VALUES ('12', '46', '0', '0', '2018-10-31 14:47:45');
INSERT INTO `cart` VALUES ('13', '48', '0', '0', '2018-10-31 14:51:03');
INSERT INTO `cart` VALUES ('14', '46', '0', '0', '2018-10-31 14:51:10');
INSERT INTO `cart` VALUES ('15', '47', '0', '0', '2018-10-31 14:51:58');
INSERT INTO `cart` VALUES ('16', '46', '0', '0', '2018-10-31 14:52:17');
INSERT INTO `cart` VALUES ('17', '58', '0', '1', '2018-10-31 14:53:38');
INSERT INTO `cart` VALUES ('18', '59', '0', '1', '2018-10-31 15:42:02');
INSERT INTO `cart` VALUES ('19', '58', '0', '1', '2018-10-31 15:50:09');
INSERT INTO `cart` VALUES ('20', '53', '0', '1', '2018-10-31 15:51:06');
INSERT INTO `cart` VALUES ('21', '50', '0', '1', '2018-10-31 15:51:12');
INSERT INTO `cart` VALUES ('22', '51', '0', '1', '2018-10-31 16:01:23');
INSERT INTO `cart` VALUES ('23', '51', '0', '2', '2018-10-31 16:01:29');
INSERT INTO `cart` VALUES ('24', '51', '0', '1', '2018-10-31 16:05:18');
INSERT INTO `cart` VALUES ('25', '56', '0', '3', '2018-10-31 16:05:30');
INSERT INTO `cart` VALUES ('26', '57', '0', '1', '2018-10-31 16:05:57');
INSERT INTO `cart` VALUES ('27', '3', '0', '1', '2018-10-31 16:21:02');
INSERT INTO `cart` VALUES ('28', '58', '0', '1', '2018-10-31 16:22:46');
INSERT INTO `cart` VALUES ('29', '3', '0', '1', '2018-10-31 16:24:54');
INSERT INTO `cart` VALUES ('30', '3', '0', '1', '2018-10-31 16:25:42');
INSERT INTO `cart` VALUES ('31', '3', '0', '1', '2018-10-31 16:25:46');
INSERT INTO `cart` VALUES ('32', '2', '0', '1', '2018-10-31 16:25:51');
INSERT INTO `cart` VALUES ('33', '58', '0', '1', '2018-10-31 16:25:56');
INSERT INTO `cart` VALUES ('34', '60', '0', '1', '2018-10-31 16:26:00');
INSERT INTO `cart` VALUES ('35', '56', '0', '1', '2018-10-31 16:26:05');
INSERT INTO `cart` VALUES ('36', '54', '0', '1', '2018-10-31 16:26:11');
INSERT INTO `cart` VALUES ('37', '35', '0', '1', '2018-10-31 16:26:17');
INSERT INTO `cart` VALUES ('38', '46', '0', '1', '2018-10-31 16:26:43');
INSERT INTO `cart` VALUES ('39', '2', '0', '1', '2018-10-31 16:52:00');
INSERT INTO `cart` VALUES ('40', '58', '0', '1', '2018-10-31 17:57:57');
INSERT INTO `cart` VALUES ('41', '58', '0', '1', '2018-10-31 17:59:48');
INSERT INTO `cart` VALUES ('42', '58', '0', '1', '2018-10-31 18:05:01');
INSERT INTO `cart` VALUES ('43', '58', '0', '1', '2018-10-31 18:12:12');
INSERT INTO `cart` VALUES ('44', '2', '0', '1', '2018-10-31 18:12:25');
INSERT INTO `cart` VALUES ('45', '3', '0', '1', '2018-10-31 18:12:34');
INSERT INTO `cart` VALUES ('46', '58', '0', '1', '2018-10-31 18:14:21');
INSERT INTO `cart` VALUES ('47', '56', '0', '1', '2018-10-31 18:14:27');
INSERT INTO `cart` VALUES ('48', '57', '0', '1', '2018-10-31 18:15:35');
INSERT INTO `cart` VALUES ('49', '58', '0', '1', '2018-10-31 18:16:49');
INSERT INTO `cart` VALUES ('50', '50', '0', '1', '2018-10-31 18:16:59');
INSERT INTO `cart` VALUES ('51', '3', '0', '1', '2018-10-31 18:21:45');
INSERT INTO `cart` VALUES ('52', '2', '0', '1', '2018-10-31 18:22:18');
INSERT INTO `cart` VALUES ('53', '3', '0', '1', '2018-10-31 18:22:22');
INSERT INTO `cart` VALUES ('54', '59', '0', '1', '2018-10-31 18:24:49');
INSERT INTO `cart` VALUES ('55', '57', '0', '1', '2018-10-31 18:24:52');
INSERT INTO `cart` VALUES ('56', '57', '0', '1', '2018-10-31 18:25:55');
INSERT INTO `cart` VALUES ('57', '56', '0', '1', '2018-10-31 18:25:59');
INSERT INTO `cart` VALUES ('58', '59', '0', '1', '2018-10-31 18:27:25');
INSERT INTO `cart` VALUES ('59', '57', '0', '1', '2018-10-31 18:27:29');
INSERT INTO `cart` VALUES ('60', '57', '0', '1', '2018-10-31 18:28:03');
INSERT INTO `cart` VALUES ('61', '2', '0', '1', '2018-10-31 18:50:21');
INSERT INTO `cart` VALUES ('62', '3', '0', '1', '2018-10-31 18:50:24');
INSERT INTO `cart` VALUES ('63', '18', '0', '1', '2018-10-31 18:52:13');
INSERT INTO `cart` VALUES ('64', '19', '0', '1', '2018-10-31 18:52:17');
INSERT INTO `cart` VALUES ('65', '47', '0', '1', '2018-10-31 18:52:31');
INSERT INTO `cart` VALUES ('66', '49', '0', '1', '2018-10-31 18:52:34');
INSERT INTO `cart` VALUES ('67', '50', '0', '1', '2018-10-31 18:52:36');
INSERT INTO `cart` VALUES ('68', '56', '0', '1', '2018-11-01 09:04:24');
INSERT INTO `cart` VALUES ('69', '2', '0', '1', '2018-11-01 09:09:52');
INSERT INTO `cart` VALUES ('70', '3', '0', '5', '2018-11-01 09:52:09');
INSERT INTO `cart` VALUES ('71', '58', '0', '1', '2018-11-01 09:57:54');
INSERT INTO `cart` VALUES ('72', '58', '0', '4', '2018-11-01 09:58:03');
INSERT INTO `cart` VALUES ('73', '61', '0', '5', '2018-11-01 09:58:12');
INSERT INTO `cart` VALUES ('74', '57', '0', '1', '2018-11-02 13:51:49');
INSERT INTO `cart` VALUES ('75', '2', '0', '1', '2018-11-02 15:30:54');
INSERT INTO `cart` VALUES ('76', '2', '0', '1', '2018-11-02 15:33:40');
INSERT INTO `cart` VALUES ('77', '17', '0', '1', '2018-11-02 15:33:47');
INSERT INTO `cart` VALUES ('78', '60', '0', '1', '2018-11-02 15:53:49');
INSERT INTO `cart` VALUES ('79', '4', '0', '1', '2018-11-02 15:55:09');
INSERT INTO `cart` VALUES ('80', '7', '0', '1', '2018-11-02 15:55:15');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `original_price` decimal(10,2) DEFAULT NULL,
  `current_price` decimal(10,2) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `introduction` text,
  `is_sale` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `views_count` int(11) DEFAULT NULL,
  `subcat_id` int(11) DEFAULT NULL,
  `supercat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_goods_addtime` (`addtime`),
  KEY `supercat_id` (`supercat_id`),
  KEY `subcat_id` (`subcat_id`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`supercat_id`) REFERENCES `supercat` (`id`),
  CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`subcat_id`) REFERENCES `subcat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('2', '短袖夏常服上衣', '45.00', '40.00', '1.jpg', '军人夏常服，作为军人在夏季日常穿着的制式服装，其设计既体现了军人的威严和纪律性，又充分考虑到了夏季的舒适性和实用性。', '1', '0', '2016-07-20 09:58:53', '16', '27', '14');
INSERT INTO `goods` VALUES ('3', '短袖夏常服裤', '45.00', '40.00', '2.jpg', '短袖夏常服裤与短袖夏常服上衣配套使用，裤型设计舒适，便于活动，面料同样具有优良的透气性。', '1', '0', '2016-07-20 10:10:38', '4', '27', '14');
INSERT INTO `goods` VALUES ('4', '长袖夏常服上衣', '50.00', '44.00', '3.jpg', '长袖夏常服上衣与短袖版本类似，多了长袖设计，适用于夏季早晚温差较大或室内空调环境，依然保持良好的透气性和舒适度。', '1', '0', '2016-07-20 10:12:00', '0', '27', '14');
INSERT INTO `goods` VALUES ('5', '丛林迷彩上衣', '77.00', '65.00', '4.jpg', '丛林迷彩上衣是军队在丛林环境下穿着的迷彩上衣，采用迷彩图案设计以混淆视觉，降低被发现的概率，面料适合丛林环境的复杂条件。', '1', '0', '2016-07-20 10:13:06', '0', '30', '15');
INSERT INTO `goods` VALUES ('6', '丛林迷彩裤', '65.00', '60.00', '5.jpg', '丛林迷彩裤与丛林迷彩上衣配套使用，同样采用迷彩图案设计，为军人在丛林中的隐蔽和行动提供便利。','1', '0', '2016-07-20 10:14:24', '6', '30', '15');
INSERT INTO `goods` VALUES ('7', '丛林迷彩帽', '30.00', '30.00', '6.jpg', '丛林迷彩帽是配套丛林迷彩上衣和裤子的帽子，用于遮阳和保护头部，迷彩图案有助于在丛林中隐藏。', '1', '0', '2016-07-20 10:18:19', '0', '33', '16');
INSERT INTO `goods` VALUES ('8', '荒漠迷彩上衣', '99.00', '89.00', '7.jpg', '荒漠迷彩上衣是军队在荒漠环境中穿着的迷彩上衣，颜色和设计以适应荒漠环境为主，提供良好的伪装效果。', '1', '1', '2016-07-20 10:20:10', '1', '31', '15');
INSERT INTO `goods` VALUES ('9', '荒漠迷彩裤', '90.00', '85.00', '8.jpg', '荒漠迷彩裤与荒漠迷彩上衣配套，为军人在荒漠环境中的行动提供便利，同时也具有伪装效果。', '1', '0', '2016-07-20 10:24:51', '0', '33', '16');
INSERT INTO `goods` VALUES ('10', '荒漠迷彩帽', '30.00', '30.00', '9.jpg', '荒漠迷彩帽是配套荒漠迷彩上衣和裤子的帽子，用于遮阳和伪装，适合荒漠环境的复杂条件。', '1', '0', '2016-07-20 10:26:06', '0', '31', '15');
INSERT INTO `goods` VALUES ('11', '荒漠迷彩大衣', '200.00', '180.00', '10.jpg', '荒漠迷彩大衣是军队在荒漠环境中穿着的保暖大衣，采用迷彩图案设计，兼具伪装和保暖功能。','1', '0', '2016-07-20 10:27:22', '0', '31', '15');
INSERT INTO `goods` VALUES ('12', '短袖体能上衣', '40.00', '40.00', '11.jpg', '短袖体能上衣是军人在体能训练时穿着的上衣，设计轻便，透气性好，便于活动和散热。', '1', '0', '2016-07-20 10:29:44', '0', '32', '15');
INSERT INTO `goods` VALUES ('13', '短袖体能裤', '32.00', '28.00', '12.jpg', '短袖体能上衣是军人在体能训练时穿着的上衣，设计轻便，透气性好，便于活动和散热。', '1', '0', '2016-07-20 10:31:56', '0', '32', '15');
INSERT INTO `goods` VALUES ('14', '长袖体能上衣', '55.00', '40.00', '13.jpg', '长袖体能上衣适用于早晚温差较大的体能训练环境，长袖设计能够提供更好的保暖效果。', '1', '0', '2016-07-20 10:34:32', '0', '32', '15');
INSERT INTO `goods` VALUES ('15', '长袖体能裤', '46.00', '40.00', '14.jpg', '长袖体能裤与长袖体能上衣配套，适用于早晚温差较大的体能训练环境。', '1', '0', '2016-07-20 10:39:48', '0', '32', '15');
INSERT INTO `goods` VALUES ('16', '校尉军官皮鞋', '123.00', '120.00', '15.jpg', '校尉军官皮鞋是军官日常穿着的皮鞋，多用于操课、会议等场合。', '1', '0', '2016-07-20 10:40:43', '0', '34', '16');
INSERT INTO `goods` VALUES ('17', '作战靴', '230.00', '220.00', '16.jpg', '作战靴是军队在执行作战任务时穿着的靴子，坚固，耐磨，具有优良的防护性能，适合复杂地形和恶劣环境。', '1', '0', '2016-07-20 10:43:27', '0', '34', '16');
INSERT INTO `goods` VALUES ('18', '体能鞋', '133.00', '130.00', '17.jpg', '体能鞋是军人在进行体能训练时穿着的鞋子，设计轻便，具有良好的抓地力和支撑性。', '1', '0', '2016-07-20 10:45:55', '0', '34', '16');
INSERT INTO `goods` VALUES ('19', '春秋常服上衣', '178.00', '168.00', '18.jpg', '春秋常服上衣是军队在春秋季节穿着的制式上衣，面料适中，适合春秋季节的气候特点。', '1', '0', '2016-07-20 10:46:55', '0', '28', '14');
INSERT INTO `goods` VALUES ('20', '春秋常服裤 ', '100.00', '95.00', '19.jpg', '春秋常服裤与春秋常服上衣配套使用，裤型舒适，面料适中，适合春秋季节的日常穿着和训练。', '1', '0', '2016-07-20 10:47:48', '0', '28', '14');
INSERT INTO `goods` VALUES ('21', '冬常服上衣', '256.00', '254.00', '20.jpg', '冬常服上衣是军队在冬季穿着的制式上衣，采用保暖材料制成，保暖性能好，确保军人在寒冷环境下的舒适性和保暖性。', '1', '0', '2016-07-20 10:49:30', '0', '29', '14');
INSERT INTO `goods` VALUES ('22', '冬常服裤', '256.00', '254.00', '21.jpg', '冬常服裤是军人在冬季穿着的制式长裤，采用保暖材料制成，以保证军人在寒冷环境下的舒适性和保暖性。', '1', '0', '2016-07-20 10:50:35', '0', '29', '14');
INSERT INTO `goods` VALUES ('23', '迷彩跑鞋', '140.00', '120.00', '22.jpg', '迷彩跑鞋是结合了迷彩元素和运动鞋设计的军用跑鞋，用于军事训练和跑步等户外运动。', '1', '0', '2016-07-20 10:51:57', '0', '34', '16');
INSERT INTO `goods` VALUES ('24', '迷彩胶鞋', '121.00', '130.00', '23.jpg', '迷彩胶鞋是一种轻便、耐用的军用胶鞋，采用迷彩图案设计，适合在多种地形和气候条件下穿着，是军队进行野外训练和执行任务时的必备装备。', '1', '0', '2016-07-20 10:52:58', '0', '34', '16');
INSERT INTO `goods` VALUES ('25', '夏常服帽', '20.00', '25.00', '24.jpg', '夏常服帽是军人在夏季佩戴的制式军帽，具有遮阳、透气等功能，帽檐宽大。', '1', '0', '2016-07-20 10:54:58', '0', '33', '16');
INSERT INTO `goods` VALUES ('26', '常服大檐帽', '50.00', '55.00', '25.jpg', '常服大檐帽是军官和文职人员在平时穿着常服时佩戴的军帽，帽檐宽大，帽体挺拔。', '1', '0', '2016-07-20 10:56:21', '0', '33', '16');
INSERT INTO `goods` VALUES ('27', '雷锋帽', '66.00', '69.00', '26.jpg', '雷锋帽是仿制苏联红军冬季帽的一种军帽，帽顶有护耳，可以翻下来遮挡耳朵，具有良好的保暖效果，是冬季寒冷地区军人的常用装备。', '1', '0', '2016-07-20 10:57:39', '0', '33', '16');
INSERT INTO `goods` VALUES ('28', '背心', '34.00', '35.00', '27.jpg', '背心是一种无袖上衣，军队中的背心采用透气、吸汗的材料制成，用于夏季或室内穿着，以保持军人的舒适性和干爽性。', '1', '0', '2016-07-20 10:58:36', '0', '34', '16');
INSERT INTO `goods` VALUES ('29', '制式内裤', '15.00', '15.00', '28.jpg', '制式内裤是军队为军人统一配发的内裤，采用透气、吸汗的材料制成，以确保军人在日常训练和生活中的舒适性。', '1', '0', '2016-07-20 11:00:27', '0', '34', '16');
INSERT INTO `goods` VALUES ('30', '制式保暖上衣', '45.00', '40.00', '29.jpg', '制式保暖上衣是军队为军人配发的保暖上衣，采用保暖材料制成，以应对寒冷天气。', '1', '0', '2016-07-20 11:01:39', '0', '35', '16');
INSERT INTO `goods` VALUES ('31', '制式保暖裤', '45.00', '45.00', '30.jpg', '制式保暖裤与保暖上衣配套使用，同样采用保暖材料制成，为军人的下肢提供保暖。', '1', '0', '2016-07-20 11:02:43', '0', '35', '16');
INSERT INTO `goods` VALUES ('32', '温区棉衣', '131.00', '130.00', '31.jpg', '温区棉衣是适用于温带地区冬季穿着的军用棉衣，具有良好的保暖性和透气性，适合在寒冷但不至于严寒的气候条件下穿着。', '1', '0', '2016-07-20 11:04:26', '0', '35', '16');
INSERT INTO `goods` VALUES ('33', '绒背心', '66.00', '63.00', '32.jpg', '绒背心是一种内部填充绒毛或羽绒的背心，保暖性能优越，常用于冬季室内或室外穿着。', '1', '1', '2016-07-20 11:06:02', '0', '35', '16');
INSERT INTO `goods` VALUES ('34', '毛衣', '134.00', '130.00', '33.jpg', '毛衣是军队中常见的冬季保暖衣物，采用羊毛或其他保暖材料制成，具有良好的保暖性和透气性。', '1', '1', '2016-07-20 11:07:22', '0', '35', '16');
INSERT INTO `goods` VALUES ('35', '温区棉裤', '100.00', '100.00', '34.jpg', '硬肩章是军人制服上的一种肩章，由金属或硬质材料制成，上面刻有军衔等标识。', '1', '0', '2016-07-20 11:08:38', '0', '35', '16');
INSERT INTO `goods` VALUES ('36', '软肩章', '8.00', '8.00', '35.jpg', '软肩章由布料或其他软质材料制成，用于展示军人的身份和等级，但相比硬肩章更加轻便。', '1', '0', '2016-07-20 11:09:51', '0', '36', '17');
INSERT INTO `goods` VALUES ('37', '套式肩章', '6.00', '5.00', '36.jpg', '套式肩章是一种可以套在衣服外面的肩章，通常由布料制成，上面印有军衔等标识，用于在特定场合下展示军人的身份和等级。', '1', '0', '2016-07-20 11:12:04', '0', '36', '17');
INSERT INTO `goods` VALUES ('38', '中央直属胸标', '15.00', '15.00', '37.jpg', '中央直属胸标是军人制服上的一种胸标，用于标识军人所属的单位或部门，通常印有特定的图案和文字。', '1', '0', '2016-07-20 11:13:03', '0', '36', '17');
INSERT INTO `goods` VALUES ('39', '领花', '10.00', '10.00', '38.jpg', '领花是军人制服领口上的一种装饰品，通常由金属或布料制成，上面刻有或印有特定的图案和文字，用于增加军人制服的美观性。', '1','0', '2016-07-20 11:14:48', '0', '36', '17');
INSERT INTO `goods` VALUES ('40', '领章', '9.00', '9.00', '39.jpg', '领章是军人制服领口上的一种标识，上面刻有军衔等标识，用于展示军人的身份和等级。', '1', '0', '2016-07-20 11:15:57', '0', '37', '17');
INSERT INTO `goods` VALUES ('41', '臂章', '14.00', '14.00', '40.jpg', '臂章是军人制服上的一种标识，佩戴在手臂上，上面印有特定的图案和文字，用于标识军人所属的单位或部门。', '1', '0', '2016-07-20 11:17:06', '2', '37', '17');
INSERT INTO `goods` VALUES ('42', '胸标', '5.00', '5.00', '41.jpg', '胸标是军人制服上的一种标识，佩戴在胸前，用于标识军人所属的单位、部门或兵种等信息。胸标的样式和图案因不同国家和军队而异。', '1', '1', '2016-07-20 11:18:48', '0', '37', '17');
INSERT INTO `goods` VALUES ('43', '姓名牌', '15.80', '15.00', '42.jpg', '姓名牌是军人制服上佩戴的标识牌，上面印有军人的姓名、职务、军种、部队番号等信息，方便识别和管理。', '1', '1', '2016-07-20 11:20:07', '0', '37', '17');
INSERT INTO `goods` VALUES ('44', '脸盆', '25.90', '25.90', '43.jpg', '脸盆是军人在日常生活中用于洗漱的容器，由金属或塑料制成，坚固耐用，适合集体使用。', '0', '1', '2016-07-20 11:21:19', '0', '38', '17');
INSERT INTO `goods` VALUES ('45', '腰带', '30.00', '30.00', '44.jpg', '腰带是军人制服上用于固定裤子和佩带武器的带子，由皮革或合成材料制成，坚固耐用，并具有一定的装饰性。', '1', '0', '2016-07-20 11:25:22', '0', '37', '17');
INSERT INTO `goods` VALUES ('46', '皮带', '35.00', '35.00', '45.jpg', '皮带与腰带功能类似，更侧重于装饰性和日常穿着的舒适性，用于军官或文职人员的制服。', '1', '0', '2016-07-20 11:27:00', '0', '36', '17');
INSERT INTO `goods` VALUES ('47', '牙杯', '13.00', '13.00', '46.jpg', '牙杯是军人在日常生活中用于刷牙的容器，由铝制成，轻便易携带，方便集体使用。', '1', '1', '2016-07-20 11:28:23', '0', '38', '17');
INSERT INTO `goods` VALUES ('48', '制式毛巾', '15.00', '15.00', '47.jpg', '制式毛巾是军队统一配发的毛巾，用于日常清洁和洗漱，采用优质材料制成，耐用且易于清洗。', '1', '0', '2016-07-20 11:29:16', '0', '38', '17');
INSERT INTO `goods` VALUES ('49', '礼服', '240.00', '223.00', '48.jpg', '礼服是军人在正式场合穿着的服装，设计庄重、典雅，采用优质面料和精细工艺制成，以展示军人的风采和尊严。', '1', '0', '2016-07-20 11:30:20', '0', '28', '14');
INSERT INTO `goods` VALUES ('50', '大檐帽帽徽', '20.00', '21.00', '49.jpg', '大檐帽帽徽是军官大檐帽上佩戴的标识，上面刻有军种符号、军徽等图案，用于标识军人的身份和所属部队。', '0', '1', '2016-07-20 11:31:28', '0', '36', '17');
INSERT INTO `goods` VALUES ('51', '迷彩帽帽徽', '15.00', '15.00', '50.jpg', '迷彩帽帽徽是迷彩帽上佩戴的标识，同样用于标识军人的身份和所属部队，通常与作战、训练等场合相关。', '0', '1', '2016-07-20 11:32:20', '8', '36', '17');
INSERT INTO `goods` VALUES ('52', '战术手套', '30.00', '32.00', '51.jpg', '战术手套是军人在作战、训练等场合佩戴的手套，具有防滑、耐磨、保护手部等功能，由耐磨材料制成。', '0', '1', '2016-07-20 11:34:09', '2', '37', '17');
INSERT INTO `goods` VALUES ('53', '皮手套', '30.00', '32.00', '52.jpg', '皮手套是军人在寒冷天气或特殊场合下佩戴的手套，由皮革制成，具有优良的保暖性和耐用性。', '0', '1', '2016-07-20 11:36:28', '0', '36', '17');
INSERT INTO `goods` VALUES ('54', '制式领带', '15.00', '15.00', '53.jpg', '制式领带是军人礼服或常服上佩戴的装饰品，采用与制服颜色相配的布料制成，具有装饰和标识作用。', '0', '1', '2016-07-20 11:37:29', '1', '36', '17');
INSERT INTO `goods` VALUES ('55', '领带夹', '5.00', '6.00', '54.jpg', '领带夹是用于固定领带的夹子，由金属制成，设计精美，用于确保领带在穿着过程中保持整洁和美观。', '0', '1', '2016-07-20 11:38:45', '0', '36', '17');
INSERT INTO `goods` VALUES ('56', '制式袜', '2.00', '2.00', '55.jpg', '制式袜是军队统一配发的袜子，采用舒适、透气的材料制成，确保军人在穿着过程中保持脚部舒适。', '0', '1', '2016-07-20 11:39:52', '2', '34', '16');
INSERT INTO `goods` VALUES ('57', '床单', '21.00', '20.00', '56.jpg', '床单是军人宿舍床上用品的一部分，用于覆盖床铺，保持床铺的整洁和卫生。', '0', '1', '2016-07-20 11:41:14', '1', '38', '17');
INSERT INTO `goods` VALUES ('58', '制式被', '77.00', '73.00', '57.jpg', '制式被是军队统一配发的被子，采用保暖、透气的材料制成，确保军人在休息时保持温暖和舒适。', '0', '1', '2016-07-20 11:42:31', '4', '38', '17');
INSERT INTO `goods` VALUES ('59', '制式枕头', '40.00', '30.00', '58.jpg', '制式枕头是军队统一配发的枕头，用于支撑头部，保持颈部和脊柱的舒适度。', '0', '1', '2016-07-20 11:43:18', '72', '38', '17');
INSERT INTO `goods` VALUES ('60', '毛巾被', '55.00', '50.00', '59.jpg', '毛巾被是一种轻便的被子，由毛巾布料制成，柔软舒适，适合夏季或炎热天气使用。', '0', '1', '2016-07-20 11:44:21', '47', '38', '17');
INSERT INTO `goods` VALUES ('61', '绿毯', '70.00', '72.00', '60.jpg', '绿毯用于军人宿舍或集体宿舍的床铺铺设，具有保持床铺的整洁和舒适的功能。', '0', '0', '2016-07-20 11:45:23', '16', '38', '17');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `recevie_name` varchar(255) DEFAULT NULL,
  `recevie_address` varchar(255) DEFAULT NULL,
  `recevie_tel` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `ix_orders_addtime` (`addtime`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('21', '3', '测试', '這是誰', '18910441510', '闪电法师', '2018-10-31 18:50:36');
INSERT INTO `orders` VALUES ('22', '3', '测试3', '手动阀', '18910441510', '手动阀', '2018-10-31 18:52:26');
INSERT INTO `orders` VALUES ('23', '3', '侧室', '123', '18910441510', '的所发生的', '2018-10-31 18:52:50');
INSERT INTO `orders` VALUES ('24', '3', '张三', '长春', '18910441510', '测试', '2018-11-01 09:06:16');
INSERT INTO `orders` VALUES ('25', '3', '李四', '长春', '18910441510', '阿斯頓發生', '2018-11-01 09:52:41');
INSERT INTO `orders` VALUES ('26', '6', '小明', '吉林长春', '18910441510', '请送货上门', '2018-11-02 15:55:01');
INSERT INTO `orders` VALUES ('27', '6', '郭靖', '北京回龙观', '18910441510', '快点发货', '2018-11-02 15:55:50');

-- ----------------------------
-- Table structure for orders_detail
-- ----------------------------
DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `orders_detail_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `orders_detail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders_detail
-- ----------------------------
INSERT INTO `orders_detail` VALUES ('8', '2', '21', '1');
INSERT INTO `orders_detail` VALUES ('9', '3', '21', '1');
INSERT INTO `orders_detail` VALUES ('10', '18', '22', '1');
INSERT INTO `orders_detail` VALUES ('11', '19', '22', '1');
INSERT INTO `orders_detail` VALUES ('12', '47', '23', '1');
INSERT INTO `orders_detail` VALUES ('13', '49', '23', '1');
INSERT INTO `orders_detail` VALUES ('14', '50', '23', '1');
INSERT INTO `orders_detail` VALUES ('15', '56', '24', '1');
INSERT INTO `orders_detail` VALUES ('16', '2', '25', '1');
INSERT INTO `orders_detail` VALUES ('17', '3', '25', '5');
INSERT INTO `orders_detail` VALUES ('18', '2', '26', '1');
INSERT INTO `orders_detail` VALUES ('19', '17', '26', '1');
INSERT INTO `orders_detail` VALUES ('20', '60', '26', '1');
INSERT INTO `orders_detail` VALUES ('21', '4', '27', '1');
INSERT INTO `orders_detail` VALUES ('22', '7', '27', '1');

-- ----------------------------
-- Table structure for subcat
-- ----------------------------
DROP TABLE IF EXISTS `subcat`;
CREATE TABLE `subcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `super_cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `super_cat_id` (`super_cat_id`),
  KEY `ix_subcat_addtime` (`addtime`),
  CONSTRAINT `subcat_ibfk_1` FOREIGN KEY (`super_cat_id`) REFERENCES `supercat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subcat
-- ----------------------------
INSERT INTO `subcat` VALUES ('27', '夏常服', '2018-10-25 10:26:52', '14');
INSERT INTO `subcat` VALUES ('28', '春秋常服', '2018-10-25 10:26:52', '14');
INSERT INTO `subcat` VALUES ('29', '冬常服', '2018-10-25 10:26:52', '14');
INSERT INTO `subcat` VALUES ('30', '丛林迷彩', '2018-10-25 10:26:52', '15');
INSERT INTO `subcat` VALUES ('31', '荒漠迷彩', '2018-10-25 10:26:52', '15');
INSERT INTO `subcat` VALUES ('32', '体能服', '2018-10-25 10:26:52', '15');
INSERT INTO `subcat` VALUES ('33', '帽子', '2018-10-25 10:26:52', '16');
INSERT INTO `subcat` VALUES ('34', '鞋类', '2018-10-25 10:26:52', '16');
INSERT INTO `subcat` VALUES ('35', '内衣裤', '2018-10-25 10:26:52', '16');
INSERT INTO `subcat` VALUES ('36', '常服类', '2018-10-25 10:26:52', '17');
INSERT INTO `subcat` VALUES ('37', '迷彩类', '2018-10-25 10:26:52', '17');
INSERT INTO `subcat` VALUES ('38', '生活用品', '2018-10-25 10:26:52', '17');

-- ----------------------------
-- Table structure for supercat
-- ----------------------------
DROP TABLE IF EXISTS `supercat`;
CREATE TABLE `supercat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) DEFAULT NULL,
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `ix_supercat_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supercat
-- ----------------------------
INSERT INTO `supercat` VALUES ('14', '常服', '2018-10-25 10:24:59');
INSERT INTO `supercat` VALUES ('15', '作训服', '2018-10-25 10:24:59');
INSERT INTO `supercat` VALUES ('16', '鞋帽', '2018-10-25 10:24:59');
INSERT INTO `supercat` VALUES ('17', '配饰', '2018-10-25 15:35:51');
INSERT INTO `supercat` VALUES ('30', '是的法定', '2018-10-29 17:39:47');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `consumption` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `ix_user_addtime` (`addtime`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'andy', '694798056@qq.com', '13912345678', '2018-10-27 13:37:33', '123456', '0.00');
INSERT INTO `user` VALUES ('2', 'Tom', '1232434@qq.com', '123343467', '2018-10-27 13:55:03', 'pbkdf2:sha256:50000$TkExX9Jm$d63477853a17dcaedcd52be4b6213ebb74b61a12456762ac19d6b7dfb559aa57', '0.00');
INSERT INTO `user` VALUES ('3', 'zhangsan', '123456@qq.com', '18910441212', '2018-10-31 09:42:14', 'pbkdf2:sha256:50000$LSXCOuSP$8be298f1360258b419844a128bf053d63c84af626d30404237b3f8ca417e3d9b', '0.00');
INSERT INTO `user` VALUES ('5', 'lisi', '1234567@qq.com', '18910441213', '2018-10-31 09:49:23', 'pbkdf2:sha256:50000$6ghkMYvc$d2c93fa14932f0dc6e6aa3ea98c39dafba21cd367c6a9c0d3d99360649c94755', '0.00');
INSERT INTO `user` VALUES ('6', '明日科技', 'mr@mrsoft.com', '13578982158', '2018-11-01 16:51:26', 'pbkdf2:sha256:50000$U27W3Fbe$2c861e8d7ed40a7dfe384a9d490097f2bb6a27a5afd0f85537ea805f9aeb08d4', '0.00');
