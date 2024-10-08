/*
 Navicat Premium Data Transfer

 Source Server         : 本機
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : ware

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 13/03/2024 16:22:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tab_dep
-- ----------------------------
DROP TABLE IF EXISTS `tab_dep`;
CREATE TABLE `tab_dep` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `info` text,
  `status` int DEFAULT NULL,
  `create_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tab_dep
-- ----------------------------
BEGIN;
INSERT INTO `tab_dep` (`id`, `name`, `addr`, `phone`, `info`, `status`, `create_name`, `create_time`) VALUES (1, '東京營業所', '東京港區xxxx', '188783748', '[{\"key\":\"aa\",\"val\":\"afff\"}]', 0, 'keboda', '2024-03-11 14:11:03');
INSERT INTO `tab_dep` (`id`, `name`, `addr`, `phone`, `info`, `status`, `create_name`, `create_time`) VALUES (2, '大阪營業所', '大阪語言', '23223444', '[]', 0, NULL, NULL);
INSERT INTO `tab_dep` (`id`, `name`, `addr`, `phone`, `info`, `status`, `create_name`, `create_time`) VALUES (3, '名古屋營業所', '富久町1番5号富久町第5服部', '565656', '[{\"key\":\"負責人\",\"val\":\"為額范文芳\"}]', 0, 'keboda', '2024-03-11 14:11:23');
INSERT INTO `tab_dep` (`id`, `name`, `addr`, `phone`, `info`, `status`, `create_name`, `create_time`) VALUES (4, '大難現場', '6215 NE 92nd Dr C/O XEK076', '232323', '[{\"key\":\"a\'a\'a\",\"val\":\"444\"}]', 0, 'keboda', '2024-03-11 14:45:51');
INSERT INTO `tab_dep` (`id`, `name`, `addr`, `phone`, `info`, `status`, `create_name`, `create_time`) VALUES (5, '東沙現場', '囧發文件哦哦我', '343434', '[{\"key\":\"44\",\"val\":\"444\"}]', 0, 'keboda', '2024-03-11 14:58:50');
COMMIT;

-- ----------------------------
-- Table structure for tab_model
-- ----------------------------
DROP TABLE IF EXISTS `tab_model`;
CREATE TABLE `tab_model` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `create_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tab_model
-- ----------------------------
BEGIN;
INSERT INTO `tab_model` (`id`, `name`, `status`, `create_name`, `create_time`) VALUES (1, '發動機', 0, 'keboda', '2024-03-09 16:40:03');
INSERT INTO `tab_model` (`id`, `name`, `status`, `create_name`, `create_time`) VALUES (2, '電池', 0, 'admin', '2024-03-07 12:03:09');
INSERT INTO `tab_model` (`id`, `name`, `status`, `create_name`, `create_time`) VALUES (3, '吊車', 0, 'admin', '2024-03-07 12:03:10');
INSERT INTO `tab_model` (`id`, `name`, `status`, `create_name`, `create_time`) VALUES (4, 'ewefaf', 0, 'admin', '2024-03-07 12:03:12');
INSERT INTO `tab_model` (`id`, `name`, `status`, `create_name`, `create_time`) VALUES (5, '哦哦哦哦哦', 0, 'admin', '2024-03-07 12:03:13');
COMMIT;

-- ----------------------------
-- Table structure for tab_part
-- ----------------------------
DROP TABLE IF EXISTS `tab_part`;
CREATE TABLE `tab_part` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `sid` int DEFAULT NULL,
  `mid` int DEFAULT NULL,
  `info` text,
  `status` int DEFAULT '0',
  `create_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2004 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tab_part
-- ----------------------------
BEGIN;
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1001, 'CODE-66666', 'Rhyzio', 'upload/20240309043907.png', 1, 3, '[{\"key\":\"總量\",\"val\":\"677\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"erer\",\"val\":\"erer\"},{\"key\":\"erer\",\"val\":\"erwwww\"},{\"key\":\"玩法\",\"val\":\"萬豐奧威分\"},{\"key\":\"啊啊啊\",\"val\":\"啊啊啊\"},{\"key\":\"鵝鵝鵝\",\"val\":\"4444\"}]', 0, 'keboda', '2024-03-09 16:39:09');
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1002, 'CODE-973532', 'Avamm', 'upload/20240306024835.png', 1, 2, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"number\",\"val\":20}]', 1, 'Dell', '2024-03-06 14:51:20');
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1003, 'CODE-940823', 'Zoonoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 1, 'Aggy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1004, 'CODE-783519', 'Tavu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 1, 'Karolina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1005, 'CODE-095129', 'Gigashots', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Avril', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1006, 'CODE-125088', 'Oyoyo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gleda', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1007, 'CODE-340052', 'Roodel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Joyan', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1008, 'CODE-324999', 'Zoombeat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Arabela', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1009, 'CODE-604839', 'Voonder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Helenka', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1010, 'CODE-049197', 'Cogidoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shayna', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1011, 'CODE-431469', 'Innotype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jeffy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1012, 'CODE-009755', 'Skibox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Konstance', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1013, 'CODE-754370', 'Blogtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alysia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1014, 'CODE-742583', 'Kayveo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Flossi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1015, 'CODE-449806', 'Rooxo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gaylor', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1016, 'CODE-021281', 'Quatz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Correy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1017, 'CODE-756989', 'Oyondu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Inge', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1018, 'CODE-721102', 'Buzzster', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Oralia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1019, 'CODE-334542', 'Skynoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Melicent', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1020, 'CODE-509406', 'Bluejam', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Obie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1021, 'CODE-543406', 'Wikizz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tim', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1022, 'CODE-188810', 'Realmix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rosalinda', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1023, 'CODE-313834', 'Tazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Demott', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1024, 'CODE-002740', 'Oyondu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Benedetto', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1025, 'CODE-072197', 'Skivee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Serge', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1026, 'CODE-352766', 'Blogtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Isabelle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1027, 'CODE-547239', 'Voonyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Heriberto', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1028, 'CODE-677897', 'Zoomlounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Paulette', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1029, 'CODE-747769', 'Fatz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Olivero', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1030, 'CODE-705156', 'Wordtune', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Junia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1031, 'CODE-282472', 'Pixonyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Thibaud', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1032, 'CODE-296893', 'Youbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Becca', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1033, 'CODE-637051', 'Tanoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Duff', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1034, 'CODE-294575', 'Realblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'William', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1035, 'CODE-561724', 'Jaxspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Heida', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1036, 'CODE-924895', 'Blogtag', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Allegra', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1037, 'CODE-939303', 'Flipopia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sargent', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1038, 'CODE-921831', 'Jamia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Isidore', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1039, 'CODE-791248', 'Meezzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Eveline', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1040, 'CODE-190747', 'Oloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dulcia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1041, 'CODE-579990', 'Yacero', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bobbee', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1042, 'CODE-327711', 'Geba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Carleton', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1043, 'CODE-898585', 'Yabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Genvieve', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1044, 'CODE-509794', 'Devify', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jordon', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1045, 'CODE-853213', 'Vinte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tiffany', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1046, 'CODE-736686', 'Dabvine', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Selina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1047, 'CODE-123792', 'Centidel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Birk', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1048, 'CODE-408903', 'Livepath', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Christy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1049, 'CODE-673138', 'Plambee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ed', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1050, 'CODE-138980', 'Voonix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Myrah', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1051, 'CODE-675488', 'Pixoboo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Celia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1052, 'CODE-960501', 'Flipbug', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Allistir', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1053, 'CODE-776040', 'Fanoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Whitney', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1054, 'CODE-998699', 'Gigazoom', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Trudy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1055, 'CODE-665374', 'Skivee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Myles', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1056, 'CODE-330775', 'Riffpedia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kiley', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1057, 'CODE-657751', 'Vipe', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Vina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1058, 'CODE-296433', 'Dabvine', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Fiann', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1059, 'CODE-508911', 'Riffpedia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Phyllis', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1060, 'CODE-655258', 'Twimm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hewie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1061, 'CODE-749555', 'Voolia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Moselle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1062, 'CODE-782002', 'Realfire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Emilia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1063, 'CODE-661348', 'Jaloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Palm', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1064, 'CODE-960734', 'Eamia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Avivah', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1065, 'CODE-819625', 'Youspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marion', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1066, 'CODE-215922', 'Mydeo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rachelle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1067, 'CODE-620738', 'Rhynoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Frazier', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1068, 'CODE-455924', 'Bluezoom', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Eldon', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1069, 'CODE-417407', 'Skyvu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Richart', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1070, 'CODE-719261', 'Kanoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Teador', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1071, 'CODE-344088', 'Brightbean', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sharia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1072, 'CODE-562654', 'Skyba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kaspar', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1073, 'CODE-781009', 'Twimbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Reese', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1074, 'CODE-217082', 'Divavu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Salim', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1075, 'CODE-742382', 'Shufflebeat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Brigitte', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1076, 'CODE-060668', 'Wikido', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Isiahi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1077, 'CODE-076191', 'Dabvine', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Link', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1078, 'CODE-198955', 'Tazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Grayce', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1079, 'CODE-766199', 'Babbleblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Trenton', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1080, 'CODE-234133', 'Wikizz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Aymer', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1081, 'CODE-872066', 'Quamba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Salvatore', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1082, 'CODE-657932', 'Thoughtworks', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Margit', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1083, 'CODE-673463', 'Jabbersphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ginnifer', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1084, 'CODE-393521', 'Blogtag', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pammie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1085, 'CODE-947216', 'Thoughtstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Inglebert', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1086, 'CODE-555516', 'Oba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pippy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1087, 'CODE-935935', 'Topicstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jamal', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1088, 'CODE-013128', 'Npath', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Charlot', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1089, 'CODE-257836', 'Talane', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hastings', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1090, 'CODE-249795', 'Omba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Corabel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1091, 'CODE-475466', 'Blognation', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bertina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1092, 'CODE-627946', 'Quire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Janene', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1093, 'CODE-713332', 'Linklinks', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tommie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1094, 'CODE-682825', 'Einti', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Elfie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1095, 'CODE-274130', 'Shufflester', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ekaterina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1096, 'CODE-322173', 'Youspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Christel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1097, 'CODE-788475', 'Voonte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ossie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1098, 'CODE-975857', 'Buzzshare', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sandy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1099, 'CODE-513862', 'Feedspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Guilbert', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1100, 'CODE-641741', 'Skyble', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Petronia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1101, 'CODE-667118', 'Aibox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Chastity', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1102, 'CODE-410366', 'Kwimbee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Benjamin', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1103, 'CODE-050478', 'Oozz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mercy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1104, 'CODE-021292', 'Skyndu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Leann', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1105, 'CODE-955025', 'Yodo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Becky', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1106, 'CODE-711249', 'Buzzshare', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Filbert', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1107, 'CODE-691173', 'Lajo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pearl', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1108, 'CODE-322116', 'Zoomcast', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marys', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1109, 'CODE-537061', 'Latz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Arte', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1110, 'CODE-718957', 'Gigabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jinny', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1111, 'CODE-983604', 'Plajo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Heidie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1112, 'CODE-761149', 'Bubbletube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cazzie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1113, 'CODE-854933', 'Blogspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marice', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1114, 'CODE-991218', 'Edgewire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Genovera', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1115, 'CODE-391294', 'Minyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Andreas', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1116, 'CODE-982816', 'Twitterbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Terza', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1117, 'CODE-740196', 'Brightbean', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Salli', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1118, 'CODE-752536', 'Twinte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ellene', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1119, 'CODE-542091', 'Katz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Leena', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1120, 'CODE-452847', 'Trudoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Joleen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1121, 'CODE-637962', 'Plajo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Karlene', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1122, 'CODE-831271', 'Jetpulse', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Desiri', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1123, 'CODE-242467', 'Oyoba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Early', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1124, 'CODE-718525', 'Realblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Vivie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1125, 'CODE-865222', 'Rhyloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Andy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1126, 'CODE-170538', 'Photobug', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Blanch', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1127, 'CODE-257024', 'Mybuzz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Wilden', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1128, 'CODE-773508', 'Dabfeed', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shani', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1129, 'CODE-096466', 'Zoombeat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Caressa', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1130, 'CODE-161809', 'Realcube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Elenore', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1131, 'CODE-519645', 'Dabshots', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Feliks', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1132, 'CODE-112800', 'Rooxo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Coreen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1133, 'CODE-005066', 'Skinix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kelvin', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1134, 'CODE-686928', 'Twitterwire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ginger', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1135, 'CODE-419444', 'Jabbertype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Celestia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1136, 'CODE-036437', 'Meejo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Izzy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1137, 'CODE-923854', 'Browsezoom', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Violet', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1138, 'CODE-509959', 'Fliptune', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Merridie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1139, 'CODE-778232', 'Blogtag', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alisa', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1140, 'CODE-361284', 'Chatterbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Malchy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1141, 'CODE-471724', 'Youopia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Giorgia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1142, 'CODE-274768', 'Layo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tann', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1143, 'CODE-958668', 'Mydo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Wittie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1144, 'CODE-969037', 'Zoomlounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kit', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1145, 'CODE-969181', 'Zoombeat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kendricks', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1146, 'CODE-938795', 'Gigabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Valle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1147, 'CODE-786434', 'Myworks', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Anet', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1148, 'CODE-115784', 'Tazz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pearle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1149, 'CODE-219620', 'Realbuzz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Edmon', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1150, 'CODE-750748', 'Thoughtmix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Valli', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1151, 'CODE-094882', 'Kazio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nicol', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1152, 'CODE-222167', 'Skipstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sophie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1153, 'CODE-826190', 'Oyoloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shaine', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1154, 'CODE-464448', 'Kwimbee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rad', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1155, 'CODE-843669', 'Voonder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Fleming', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1156, 'CODE-825004', 'Kayveo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Janey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1157, 'CODE-594014', 'Blogpad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Layney', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1158, 'CODE-495057', 'Browsedrive', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Corena', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1159, 'CODE-693244', 'Gabtune', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hedda', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1160, 'CODE-981050', 'Kaymbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Clarette', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1161, 'CODE-825520', 'Ainyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lucien', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1162, 'CODE-184449', 'Tanoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dinny', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1163, 'CODE-445686', 'Rooxo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Arlee', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1164, 'CODE-675085', 'Blogtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Drud', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1165, 'CODE-038366', 'Jayo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Putnam', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1166, 'CODE-166575', 'Kwimbee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Carina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1167, 'CODE-717776', 'Wikizz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Denise', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1168, 'CODE-089158', 'Skipfire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mora', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1169, 'CODE-292460', 'Topiclounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Winifield', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1170, 'CODE-194830', 'Browsecat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Malina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1171, 'CODE-096768', 'Agivu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Julita', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1172, 'CODE-899353', 'Jazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jourdan', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1173, 'CODE-206459', 'Tambee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Heindrick', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1174, 'CODE-334238', 'Zoozzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Vinita', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1175, 'CODE-051813', 'Blogtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sam', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1176, 'CODE-256354', 'Janyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Janella', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1177, 'CODE-126328', 'Tagtune', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Langston', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1178, 'CODE-862580', 'Youfeed', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Darill', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1179, 'CODE-933917', 'Bubbletube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Margaretha', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1180, 'CODE-081845', 'Oozz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Zsa zsa', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1181, 'CODE-607476', 'Oyoyo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tildi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1182, 'CODE-791844', 'Quatz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jammal', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1183, 'CODE-136791', 'Brainlounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marin', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1184, 'CODE-308424', 'Jaloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Krispin', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1185, 'CODE-131750', 'Cogilith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sibella', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1186, 'CODE-733477', 'Yodoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rori', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1187, 'CODE-272134', 'Skyndu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Charlena', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1188, 'CODE-160242', 'Skimia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alisun', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1189, 'CODE-984808', 'Mita', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nero', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1190, 'CODE-443314', 'Mydeo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nisse', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1191, 'CODE-262148', 'Digitube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Arte', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1192, 'CODE-980797', 'Tagpad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Colas', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1193, 'CODE-117543', 'Jabbertype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hagan', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1194, 'CODE-645325', 'Edgetag', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Audra', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1195, 'CODE-873995', 'Edgeify', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jodi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1196, 'CODE-434000', 'Ainyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ryann', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1197, 'CODE-548016', 'Voonyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rochelle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1198, 'CODE-438083', 'Feedfire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tarra', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1199, 'CODE-546364', 'Meedoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kain', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1200, 'CODE-417574', 'Kaymbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Wally', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1201, 'CODE-448779', 'Topicshots', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Austin', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1202, 'CODE-991173', 'Flipopia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Deeyn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1203, 'CODE-609528', 'Mudo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Brinn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1204, 'CODE-074122', 'Browsetype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kimberley', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1205, 'CODE-542028', 'Eabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Susana', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1206, 'CODE-487775', 'Skajo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Windy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1207, 'CODE-812789', 'Brainsphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Calhoun', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1208, 'CODE-600622', 'Voolith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Blythe', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1209, 'CODE-564743', 'Cogibox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Vallie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1210, 'CODE-021850', 'Dablist', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Barnabas', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1211, 'CODE-415022', 'Wikido', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shandra', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1212, 'CODE-009559', 'Twiyo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Artair', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1213, 'CODE-802731', 'Youspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Charley', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1214, 'CODE-984978', 'Skalith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Donielle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1215, 'CODE-516697', 'Vimbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Serge', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1216, 'CODE-628551', 'Edgewire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hilde', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1217, 'CODE-592664', 'Eayo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Garreth', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1218, 'CODE-077667', 'Digitube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Denver', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1219, 'CODE-610343', 'Babbleblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Becca', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1220, 'CODE-818714', 'Oyoloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sonia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1221, 'CODE-262541', 'Ainyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gwenneth', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1222, 'CODE-856566', 'Mynte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Efrem', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1223, 'CODE-495207', 'Jazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kirbee', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1224, 'CODE-906338', 'Realcube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1225, 'CODE-046068', 'Kazio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Martita', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1226, 'CODE-511326', 'Plajo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Daniel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1227, 'CODE-418427', 'Topicblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Eddie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1228, 'CODE-558160', 'Photobug', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Riobard', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1229, 'CODE-535517', 'Jabbersphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cornell', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1230, 'CODE-003108', 'Eire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nara', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1231, 'CODE-408989', 'Dabshots', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Griz', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1232, 'CODE-035621', 'Dynabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kellsie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1233, 'CODE-951137', 'Topiclounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Quillan', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1234, 'CODE-648825', 'Chatterpoint', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jolynn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1235, 'CODE-390716', 'Feedfire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dan', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1236, 'CODE-007102', 'Innotype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tish', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1237, 'CODE-863363', 'Linkbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Martyn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1238, 'CODE-295508', 'Bubblemix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dilly', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1239, 'CODE-887455', 'Tagchat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cale', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1240, 'CODE-550750', 'Roodel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sheffy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1241, 'CODE-091384', 'Tagpad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tabbatha', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1242, 'CODE-804670', 'Edgeify', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Andreas', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1243, 'CODE-749200', 'Zoonder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Delinda', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1244, 'CODE-331988', 'Dabvine', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bryant', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1245, 'CODE-412344', 'Twimbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Herschel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1246, 'CODE-065754', 'Izio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ag', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1247, 'CODE-091741', 'Camimbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Brandie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1248, 'CODE-261441', 'Jatri', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tomasina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1249, 'CODE-031982', 'Eabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Eulalie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1250, 'CODE-375590', 'Ntags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Redd', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1251, 'CODE-782004', 'Browsecat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Roth', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1252, 'CODE-783249', 'Jabberbean', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lucretia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1253, 'CODE-570233', 'Rhynoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kris', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1254, 'CODE-501418', 'Wordware', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tanitansy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1255, 'CODE-796391', 'Zoonoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Herold', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1256, 'CODE-477703', 'Browsedrive', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Brietta', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1257, 'CODE-999342', 'Babbleblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tootsie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1258, 'CODE-563603', 'Tazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Maude', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1259, 'CODE-819989', 'Aimbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hubey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1260, 'CODE-409137', 'Topdrive', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cherrita', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1261, 'CODE-585719', 'Gigabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Petr', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1262, 'CODE-701185', 'Realblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kerwinn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1263, 'CODE-748767', 'Edgewire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lydie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1264, 'CODE-640281', 'Agimba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Emily', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1265, 'CODE-955103', 'Flipbug', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Devonne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1266, 'CODE-854672', 'Omba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ardyth', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1267, 'CODE-408052', 'Eare', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Arlene', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1268, 'CODE-476246', 'Avaveo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alix', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1269, 'CODE-157074', 'Bluezoom', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Halsey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1270, 'CODE-356634', 'Zooxo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kerstin', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1271, 'CODE-311949', 'Youtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sascha', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1272, 'CODE-489843', 'Snaptags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gibby', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1273, 'CODE-513367', 'Oodoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Darcey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1274, 'CODE-097308', 'Jaloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Deny', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1275, 'CODE-946439', 'Eare', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alejoa', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1276, 'CODE-440273', 'Quamba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nowell', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1277, 'CODE-362046', 'Viva', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Morie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1278, 'CODE-489414', 'Babbleblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kahaleel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1279, 'CODE-360932', 'Voonder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Randall', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1280, 'CODE-336420', 'Viva', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Merrill', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1281, 'CODE-599301', 'Feedfish', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Perri', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1282, 'CODE-987249', 'Eadel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Conney', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1283, 'CODE-138340', 'Quinu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Minda', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1284, 'CODE-729955', 'Voonix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pollyanna', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1285, 'CODE-234757', 'Mynte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kerry', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1286, 'CODE-983920', 'Jamia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gwenneth', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1287, 'CODE-215328', 'Kazio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Justina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1288, 'CODE-124880', 'Nlounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Allianora', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1289, 'CODE-978417', 'Brightbean', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Conrado', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1290, 'CODE-517448', 'Bluejam', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rosabelle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1291, 'CODE-651987', 'Photofeed', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Emory', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1292, 'CODE-707592', 'Tambee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Andrea', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1293, 'CODE-581999', 'Blogspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tye', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1294, 'CODE-787218', 'Avavee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Archie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1295, 'CODE-190097', 'Teklist', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Miller', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1296, 'CODE-588829', 'Thoughtmix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Codie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1297, 'CODE-373854', 'Meedoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Doti', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1298, 'CODE-102786', 'Realbuzz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hildegarde', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1299, 'CODE-392366', 'Devpoint', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Melvyn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1300, 'CODE-653474', 'Dabfeed', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tarra', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1301, 'CODE-090273', 'Eidel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rayner', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1302, 'CODE-490945', 'Jamia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sergei', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1303, 'CODE-183904', 'Browsetype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sargent', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1304, 'CODE-446687', 'Yodel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Paddie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1305, 'CODE-681722', 'Latz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lazar', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1306, 'CODE-068549', 'Voomm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Locke', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1307, 'CODE-297582', 'Meejo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Othella', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1308, 'CODE-282264', 'Eazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Katee', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1309, 'CODE-518573', 'Jabbercube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tuck', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1310, 'CODE-746073', 'Mynte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lanie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1311, 'CODE-174646', 'Ozu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Maighdiln', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1312, 'CODE-635014', 'Jatri', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alexander', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1313, 'CODE-651131', 'Brainbox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Erminie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1314, 'CODE-350614', 'Plambee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Brenna', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1315, 'CODE-799676', 'Agimba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dougie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1316, 'CODE-946538', 'Yadel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Evelyn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1317, 'CODE-333665', 'Livetube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gregorius', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1318, 'CODE-828712', 'Brightdog', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Farrel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1319, 'CODE-142564', 'Voonix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tait', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1320, 'CODE-226685', 'Ntags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Inness', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1321, 'CODE-705734', 'Yombu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Galen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1322, 'CODE-848616', 'Yotz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Barris', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1323, 'CODE-125878', 'Edgeify', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tabbitha', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1324, 'CODE-083545', 'Izio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Zerk', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1325, 'CODE-040088', 'Babbleopia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Turner', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1326, 'CODE-949806', 'Twinte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bessy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1327, 'CODE-628768', 'Fivebridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Adolf', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1328, 'CODE-294424', 'Fanoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bent', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1329, 'CODE-585813', 'Kwilith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nike', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1330, 'CODE-045796', 'Vidoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ricoriki', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1331, 'CODE-471542', 'Blogpad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Blondie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1332, 'CODE-220323', 'Meemm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jolynn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1333, 'CODE-686990', 'Wikivu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dennie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1334, 'CODE-773979', 'Youspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Arney', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1335, 'CODE-808925', 'Divape', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Garrik', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1336, 'CODE-722690', 'Blogpad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hastie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1337, 'CODE-186675', 'Tagchat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ettie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1338, 'CODE-765307', 'Dynabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Melisandra', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1339, 'CODE-266510', 'Topiczoom', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Wyatan', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1340, 'CODE-036628', 'Kaymbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Fleming', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1341, 'CODE-383613', 'Vipe', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Annalee', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1342, 'CODE-808181', 'Eimbee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Barbe', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1343, 'CODE-890067', 'Aivee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Perri', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1344, 'CODE-025790', 'Skippad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bria', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1345, 'CODE-458751', 'Avamba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Fara', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1346, 'CODE-216385', 'Gigaclub', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gilda', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1347, 'CODE-705673', 'Skipstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Garrek', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1348, 'CODE-879210', 'Skipstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sim', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1349, 'CODE-279031', 'Zoombox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jefferey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1350, 'CODE-757526', 'Kayveo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Perry', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1351, 'CODE-950537', 'Avamm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dalston', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1352, 'CODE-480108', 'Kaymbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Delcine', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1353, 'CODE-548931', 'Gigabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dulcia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1354, 'CODE-304332', 'Camido', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Donalt', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1355, 'CODE-874868', 'Realbuzz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Deane', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1356, 'CODE-461341', 'Devpulse', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lizzy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1357, 'CODE-682105', 'Feedmix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Angela', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1358, 'CODE-026500', 'Layo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dell', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1359, 'CODE-086187', 'Zoonoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Minnie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1360, 'CODE-351433', 'Jaxnation', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jilleen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1361, 'CODE-498608', 'Eazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jamey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1362, 'CODE-438739', 'Abata', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ailbert', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1363, 'CODE-697874', 'Skajo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sarina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1364, 'CODE-173154', 'Photobug', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Maxine', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1365, 'CODE-772148', 'Thoughtstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rosanna', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1366, 'CODE-341279', 'Digitube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ericka', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1367, 'CODE-389952', 'Thoughtstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gerladina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1368, 'CODE-925921', 'Riffpedia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lisabeth', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1369, 'CODE-459751', 'Skiptube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kippar', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1370, 'CODE-520994', 'Livetube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Zahara', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1371, 'CODE-225717', 'Topiczoom', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Delphine', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1372, 'CODE-565604', 'Thoughtworks', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Heath', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1373, 'CODE-150871', 'Photospace', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Glori', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1374, 'CODE-057541', 'Wikivu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Berny', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1375, 'CODE-835091', 'Tagopia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Camile', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1376, 'CODE-002835', 'Ooba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Yancy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1377, 'CODE-508901', 'Trunyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Carilyn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1378, 'CODE-536000', 'Devpulse', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Charlie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1379, 'CODE-153299', 'Oyoyo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Julianne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1380, 'CODE-158494', 'Youfeed', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ramsay', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1381, 'CODE-332576', 'Thoughtsphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Florri', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1382, 'CODE-187397', 'Voonte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Karon', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1383, 'CODE-939258', 'Realmix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Karlene', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1384, 'CODE-134099', 'Oloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bailie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1385, 'CODE-852721', 'Snaptags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dixie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1386, 'CODE-861310', 'Realfire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Roana', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1387, 'CODE-748389', 'Gabcube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Darla', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1388, 'CODE-158012', 'Dynabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Monte', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1389, 'CODE-544895', 'Centimia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Caroljean', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1390, 'CODE-250438', 'Babblestorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Adrianne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1391, 'CODE-617508', 'Tavu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Andromache', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1392, 'CODE-336226', 'Buzzster', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kristel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1393, 'CODE-828607', 'Zoonder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mei', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1394, 'CODE-134356', 'Zooveo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Justen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1395, 'CODE-185962', 'Skajo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mira', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1396, 'CODE-526741', 'Zazio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Arlena', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1397, 'CODE-075821', 'Topicshots', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Delphinia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1398, 'CODE-798881', 'Miboo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ashil', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1399, 'CODE-766943', 'Teklist', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jaynell', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1400, 'CODE-438071', 'Shuffletag', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Percival', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1401, 'CODE-889526', 'Brainlounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Helsa', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1402, 'CODE-133417', 'Tagopia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pavlov', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1403, 'CODE-998508', 'Wikizz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Husain', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1404, 'CODE-592290', 'Zoozzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Emma', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1405, 'CODE-965927', 'Npath', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Anderson', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1406, 'CODE-052766', 'Thoughtsphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Leelah', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1407, 'CODE-366050', 'Eire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kania', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1408, 'CODE-671950', 'Wikibox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pail', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1409, 'CODE-261602', 'Leenti', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cornelius', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1410, 'CODE-292162', 'Babbleset', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Xaviera', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1411, 'CODE-676002', 'Muxo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Annabel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1412, 'CODE-503526', 'Flipopia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Terencio', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1413, 'CODE-489622', 'Realbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jesse', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1414, 'CODE-937535', 'Dablist', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Brana', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1415, 'CODE-218809', 'Livetube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sabra', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1416, 'CODE-281441', 'Skaboo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Chloette', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1417, 'CODE-750779', 'Skippad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Duke', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1418, 'CODE-909572', 'Jamia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mattheus', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1419, 'CODE-295522', 'Eimbee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Von', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1420, 'CODE-748894', 'Zoomcast', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bebe', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1421, 'CODE-857904', 'Tagopia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Norbert', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1422, 'CODE-042839', 'Trilith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lonnard', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1423, 'CODE-640484', 'Quaxo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Maisey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1424, 'CODE-073902', 'Yacero', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Colman', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1425, 'CODE-448058', 'Avamm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cesya', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1426, 'CODE-018588', 'Dabfeed', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Zilvia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1427, 'CODE-748763', 'Blogtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cissy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1428, 'CODE-688054', 'Voonder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Margaretta', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1429, 'CODE-193979', 'Topiczoom', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Addie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1430, 'CODE-905735', 'Trudeo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Aluin', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1431, 'CODE-946739', 'Wordware', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Max', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1432, 'CODE-016490', 'Layo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Laural', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1433, 'CODE-242234', 'Teklist', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Catherina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1434, 'CODE-161702', 'Yacero', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Yancy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1435, 'CODE-081809', 'Ntags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Catrina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1436, 'CODE-923937', 'Zoomlounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tildy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1437, 'CODE-374258', 'Twitterwire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kai', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1438, 'CODE-099478', 'Photolist', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Matti', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1439, 'CODE-374620', 'Linkbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hunter', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1440, 'CODE-574667', 'Mydeo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lavina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1441, 'CODE-749474', 'Twitterlist', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Zaccaria', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1442, 'CODE-023370', 'Skalith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Elsa', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1443, 'CODE-868427', 'Buzzbean', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1444, 'CODE-272027', 'Layo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Juli', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1445, 'CODE-754856', 'Wikivu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Fairfax', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1446, 'CODE-958197', 'Topicshots', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Laural', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1447, 'CODE-526417', 'Bluezoom', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Thedrick', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1448, 'CODE-757496', 'Blogpad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ezechiel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1449, 'CODE-208228', 'Jamia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kipp', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1450, 'CODE-768655', 'Omba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alida', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1451, 'CODE-218588', 'Wikizz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Fayth', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1452, 'CODE-786979', 'Rhyloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Douglass', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1453, 'CODE-279131', 'Meejo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Evonne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1454, 'CODE-034717', 'Yadel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Stafani', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1455, 'CODE-336192', 'Eimbee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rodger', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1456, 'CODE-576810', 'Quatz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Amby', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1457, 'CODE-875476', 'Viva', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mendy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1458, 'CODE-646951', 'Topicshots', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ludvig', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1459, 'CODE-608325', 'Leexo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Miltie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1460, 'CODE-100774', 'Browsecat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Giuditta', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1461, 'CODE-678894', 'Trilia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bill', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1462, 'CODE-092151', 'Oyoloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Elysee', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1463, 'CODE-424073', 'Blognation', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hollie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1464, 'CODE-843912', 'Babbleset', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marc', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1465, 'CODE-947342', 'Brainbox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Robert', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1466, 'CODE-204973', 'Abata', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Aurore', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1467, 'CODE-182842', 'Kazu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sandor', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1468, 'CODE-299292', 'Eamia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Margarethe', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1469, 'CODE-947935', 'Tagpad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nixie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1470, 'CODE-841800', 'Eazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Francene', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1471, 'CODE-365196', 'Edgeclub', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Conrade', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1472, 'CODE-300580', 'Bubbletube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kial', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1473, 'CODE-407313', 'Brainsphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rosanna', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1474, 'CODE-134824', 'Einti', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Glendon', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1475, 'CODE-452181', 'Edgeclub', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lotti', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1476, 'CODE-856434', 'Layo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Elana', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1477, 'CODE-925626', 'Topicshots', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Geno', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1478, 'CODE-058828', 'Vinte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Prince', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1479, 'CODE-517265', 'Edgeclub', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Katinka', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1480, 'CODE-409839', 'Meejo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Matthus', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1481, 'CODE-497400', 'Feedspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Darcy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1482, 'CODE-257484', 'Katz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Merna', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1483, 'CODE-795221', 'Browsebug', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jeannette', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1484, 'CODE-203653', 'Skinder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kerrin', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1485, 'CODE-632604', 'Oodoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Venita', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1486, 'CODE-552059', 'Zooveo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Phillida', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1487, 'CODE-862485', 'Thoughtmix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kat', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1488, 'CODE-656249', 'Mynte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Agosto', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1489, 'CODE-693789', 'Devshare', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cordie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1490, 'CODE-500201', 'Fliptune', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Norri', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1491, 'CODE-419636', 'Pixope', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Robena', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1492, 'CODE-597577', 'Fivespan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Godfrey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1493, 'CODE-728977', 'Plajo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Olga', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1494, 'CODE-852157', 'Mita', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Holli', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1495, 'CODE-073855', 'Yakijo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tiena', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1496, 'CODE-812805', 'Jaxspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Brendis', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1497, 'CODE-842458', 'Kanoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Goldie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1498, 'CODE-773875', 'Edgewire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Haley', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1499, 'CODE-342001', 'Edgetag', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shae', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1500, 'CODE-388382', 'Feednation', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Melli', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1501, 'CODE-915909', 'Quinu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ryon', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1502, 'CODE-414396', 'Skiba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Brockie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1503, 'CODE-324257', 'Meembee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Michelle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1504, 'CODE-378097', 'Meevee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sara-ann', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1505, 'CODE-917714', 'Oyope', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jacky', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1506, 'CODE-454280', 'Twitterbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Carolee', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1507, 'CODE-518260', 'Realblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Happy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1508, 'CODE-228459', 'Voonix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rhoda', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1509, 'CODE-587516', 'Mydo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Veronika', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1510, 'CODE-252204', 'Dynabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Piper', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1511, 'CODE-498471', 'Izio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Halley', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1512, 'CODE-735744', 'Yakijo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lonnie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1513, 'CODE-183308', 'Pixope', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Joshia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1514, 'CODE-709306', 'Realpoint', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Derk', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1515, 'CODE-996610', 'Pixoboo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sammy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1516, 'CODE-855131', 'Feednation', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kathie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1517, 'CODE-285826', 'Livefish', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Carmencita', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1518, 'CODE-863736', 'Flipstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ingmar', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1519, 'CODE-461205', 'Voomm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tally', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1520, 'CODE-714818', 'Topicstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pren', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1521, 'CODE-190472', 'Trupe', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Livvy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1522, 'CODE-807910', 'Voonyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rubia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1523, 'CODE-468135', 'Zoonder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kelley', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1524, 'CODE-916943', 'Voolia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ulrike', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1525, 'CODE-180310', 'Gevee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Barnaby', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1526, 'CODE-150722', 'Kazio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Syd', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1527, 'CODE-212683', 'Trudoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lenore', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1528, 'CODE-611247', 'Twimbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Guenna', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1529, 'CODE-418189', 'Skilith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Perla', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1530, 'CODE-257204', 'Livetube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Silvia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1531, 'CODE-031452', 'Pixonyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Roslyn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1532, 'CODE-385648', 'Zoomlounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Saraann', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1533, 'CODE-833886', 'Zoovu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Uriel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1534, 'CODE-012486', 'Flashdog', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Harrison', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1535, 'CODE-560772', 'Digitube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lida', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1536, 'CODE-766405', 'Meejo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Noll', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1537, 'CODE-149707', 'Kimia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Amory', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1538, 'CODE-449319', 'Fatz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tamiko', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1539, 'CODE-797478', 'Dynabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Zulema', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1540, 'CODE-639430', 'Rhyloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sayre', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1541, 'CODE-804719', 'Roombo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Arlana', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1542, 'CODE-105305', 'Minyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ondrea', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1543, 'CODE-112370', 'Feedbug', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Karleen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1544, 'CODE-245934', 'Rhybox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Harwilll', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1545, 'CODE-892559', 'Divanoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Freddy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1546, 'CODE-724996', 'Ainyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marve', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1547, 'CODE-947304', 'Eamia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Vernor', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1548, 'CODE-561532', 'Trilith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Aksel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1549, 'CODE-965748', 'Dazzlesphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hube', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1550, 'CODE-144144', 'Flashpoint', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Patrice', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1551, 'CODE-823477', 'Minyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Joann', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1552, 'CODE-684955', 'Wordtune', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Caritta', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1553, 'CODE-954346', 'Gabtune', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Simona', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1554, 'CODE-716862', 'Dabtype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Town', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1555, 'CODE-721273', 'Yodel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Chelsey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1556, 'CODE-455780', 'Leenti', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Yale', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1557, 'CODE-115083', 'Twinte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Smith', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1558, 'CODE-208074', 'Brainbox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tobie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1559, 'CODE-695122', 'Wordtune', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Daren', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1560, 'CODE-851390', 'Wordware', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Morty', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1561, 'CODE-171585', 'Blogspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tailor', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1562, 'CODE-303754', 'Eidel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Willey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1563, 'CODE-004014', 'Twinder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bradan', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1564, 'CODE-108810', 'Blogtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Margie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1565, 'CODE-532010', 'Zooxo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Blondie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1566, 'CODE-333618', 'Rhyloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Inga', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1567, 'CODE-072061', 'Quamba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mariska', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1568, 'CODE-359453', 'Realpoint', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Francesca', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1569, 'CODE-581084', 'Agimba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nat', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1570, 'CODE-827059', 'Photobug', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shelli', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1571, 'CODE-392044', 'Kaymbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sheelah', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1572, 'CODE-479045', 'Tagfeed', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Elana', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1573, 'CODE-219094', 'Riffwire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nanette', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1574, 'CODE-658336', 'Yodel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pembroke', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1575, 'CODE-634397', 'Thoughtbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Johnny', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1576, 'CODE-196980', 'Ainyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Robby', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1577, 'CODE-081708', 'Dynabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hank', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1578, 'CODE-817599', 'Eimbee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Elbert', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1579, 'CODE-842873', 'Meevee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Noemi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1580, 'CODE-761570', 'Mita', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dinny', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1581, 'CODE-279229', 'Jabbersphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bronnie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1582, 'CODE-111436', 'Leenti', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pace', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1583, 'CODE-719495', 'Digitube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lynne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1584, 'CODE-263168', 'Linktype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Vilhelmina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1585, 'CODE-157354', 'Feedspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Wallace', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1586, 'CODE-997269', 'Zoomdog', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Merle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1587, 'CODE-514281', 'Avamm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gwenneth', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1588, 'CODE-579601', 'Devcast', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marline', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1589, 'CODE-355162', 'Realmix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Loydie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1590, 'CODE-037006', 'Oyoloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jacob', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1591, 'CODE-119546', 'Buzzdog', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kim', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1592, 'CODE-486714', 'Innojam', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Andromache', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1593, 'CODE-074932', 'Eazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Janelle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1594, 'CODE-914518', 'Yacero', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lotte', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1595, 'CODE-347793', 'Yakidoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lemmy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1596, 'CODE-995413', 'Jabbersphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Celina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1597, 'CODE-933685', 'Jayo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ulises', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1598, 'CODE-682187', 'Skilith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rockey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1599, 'CODE-609879', 'Kare', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marinna', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1600, 'CODE-002836', 'Yakitri', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Guillema', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1601, 'CODE-184545', 'Plambee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Neala', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1602, 'CODE-914218', 'Skidoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Georgie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1603, 'CODE-017453', 'Kazio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Clemmie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1604, 'CODE-344611', 'Eamia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Corenda', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1605, 'CODE-670697', 'Livefish', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rasla', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1606, 'CODE-319655', 'Babblestorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Camile', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1607, 'CODE-586182', 'Jaloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jasun', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1608, 'CODE-971948', 'Brightbean', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Camilla', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1609, 'CODE-101192', 'Jazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Claudetta', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1610, 'CODE-590117', 'Jetwire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rasla', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1611, 'CODE-647011', 'Jabbercube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gerri', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1612, 'CODE-464703', 'Bluezoom', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alfie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1613, 'CODE-382485', 'Katz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Brana', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1614, 'CODE-518316', 'Divavu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Deloria', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1615, 'CODE-444123', 'Dabvine', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nessa', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1616, 'CODE-665670', 'Photolist', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rosanne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1617, 'CODE-995980', 'Katz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Adoree', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1618, 'CODE-982891', 'Talane', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Morlee', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1619, 'CODE-926517', 'Meetz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ermina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1620, 'CODE-683910', 'Miboo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Flinn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1621, 'CODE-639999', 'Skippad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Maudie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1622, 'CODE-148265', 'Flipbug', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Corella', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1623, 'CODE-821329', 'Oloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Abby', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1624, 'CODE-661849', 'Skinder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Horacio', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1625, 'CODE-845260', 'Eayo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cirillo', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1626, 'CODE-240755', 'Twinder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jania', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1627, 'CODE-667995', 'Tagpad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Faye', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1628, 'CODE-617712', 'Fiveclub', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Carlynne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1629, 'CODE-084573', 'Gabcube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Olly', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1630, 'CODE-569732', 'Jabbersphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Eugene', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1631, 'CODE-594940', 'Feednation', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Torry', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1632, 'CODE-265506', 'Flipstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Estelle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1633, 'CODE-542709', 'Gabspot', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Colman', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1634, 'CODE-917026', 'Edgeify', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marline', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1635, 'CODE-957005', 'Miboo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rosaleen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1636, 'CODE-033949', 'Oyoba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Charles', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1637, 'CODE-298729', 'Fiveclub', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Carlina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1638, 'CODE-391798', 'Browseblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Adrien', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1639, 'CODE-062803', 'Eadel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lon', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1640, 'CODE-138624', 'Topiclounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Duane', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1641, 'CODE-504710', 'Wikivu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gerald', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1642, 'CODE-107677', 'Livetube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Francene', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1643, 'CODE-024258', 'Skajo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Raye', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1644, 'CODE-798261', 'Realmix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gail', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1645, 'CODE-918529', 'Twinder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Silas', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1646, 'CODE-197861', 'Izio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Inga', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1647, 'CODE-233721', 'Youspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Andreas', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1648, 'CODE-575023', 'Eazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dorena', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1649, 'CODE-173952', 'Blogspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marcos', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1650, 'CODE-144690', 'Meeveo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Will', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1651, 'CODE-201593', 'Livepath', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Woodrow', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1652, 'CODE-573899', 'Babbleblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Clayborn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1653, 'CODE-264714', 'Aivee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kiley', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1654, 'CODE-601875', 'Dynabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Wes', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1655, 'CODE-215234', 'Twitterbeat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Raquela', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1656, 'CODE-270546', 'Edgetag', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Murdoch', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1657, 'CODE-707028', 'Chatterpoint', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Joella', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1658, 'CODE-723503', 'Kwilith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Reeta', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1659, 'CODE-496430', 'Kazio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Carine', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1660, 'CODE-311643', 'Jaxbean', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Eleen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1661, 'CODE-068925', 'Aivee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Delores', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1662, 'CODE-409695', 'Yamia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cherye', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1663, 'CODE-841702', 'Twitterwire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kelley', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1664, 'CODE-979425', 'Katz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Orelie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1665, 'CODE-372021', 'Skiba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tymothy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1666, 'CODE-921828', 'Brainsphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bent', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1667, 'CODE-493077', 'Kwimbee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alberik', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1668, 'CODE-699903', 'Browsecat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kelley', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1669, 'CODE-020283', 'Quinu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Von', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1670, 'CODE-001706', 'Skivee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ransell', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1671, 'CODE-947685', 'Devify', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ted', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1672, 'CODE-733304', 'Snaptags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Doralynn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1673, 'CODE-823466', 'Browseblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Constance', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1674, 'CODE-917420', 'Miboo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Wilden', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1675, 'CODE-116704', 'Skipstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gwyn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1676, 'CODE-831258', 'Youspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Carmelita', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1677, 'CODE-806180', 'Zoonder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bernhard', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1678, 'CODE-537125', 'Layo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Noemi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1679, 'CODE-267085', 'Nlounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Eward', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1680, 'CODE-724053', 'Livetube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gwendolen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1681, 'CODE-819008', 'Yacero', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kerk', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1682, 'CODE-922883', 'Kare', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kellsie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1683, 'CODE-157392', 'Gabcube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kenn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1684, 'CODE-018310', 'Skaboo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Glori', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1685, 'CODE-619376', 'Ntags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Moritz', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1686, 'CODE-041952', 'Edgeify', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Peadar', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1687, 'CODE-351630', 'Twitternation', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Monika', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1688, 'CODE-632295', 'Ailane', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Merle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1689, 'CODE-106587', 'Leenti', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gizela', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1690, 'CODE-636050', 'Edgeclub', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Fanni', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1691, 'CODE-860489', 'Photobean', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Oates', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1692, 'CODE-394296', 'BlogXS', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Zachariah', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1693, 'CODE-390015', 'Blogtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Emanuel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1694, 'CODE-767185', 'Edgetag', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jodi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1695, 'CODE-665883', 'Zooveo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bartholomeo', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1696, 'CODE-027860', 'Livetube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Giuseppe', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1697, 'CODE-141650', 'Leexo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lanny', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1698, 'CODE-624672', 'Yadel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Chandal', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1699, 'CODE-698412', 'Demivee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Angelique', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1700, 'CODE-618044', 'Kazio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Johny', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1701, 'CODE-994984', 'Buzzster', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1702, 'CODE-120787', 'Meedoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pansie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1703, 'CODE-618983', 'Twimbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Evangeline', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1704, 'CODE-732554', 'Brightbean', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Filippo', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1705, 'CODE-805821', 'Kamba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Byran', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1706, 'CODE-831444', 'Yozio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Barb', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1707, 'CODE-739760', 'Aibox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kayle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1708, 'CODE-204467', 'Tavu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Farris', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1709, 'CODE-803055', 'Divanoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'David', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1710, 'CODE-401873', 'Meemm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dorolisa', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1711, 'CODE-600203', 'Gigaclub', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Henri', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1712, 'CODE-795395', 'Kazu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dredi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1713, 'CODE-176368', 'Skippad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marcia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1714, 'CODE-495656', 'Linkbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ida', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1715, 'CODE-949174', 'Tagtune', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Laina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1716, 'CODE-258905', 'Rhybox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tiena', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1717, 'CODE-447001', 'Viva', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Joyann', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1718, 'CODE-458290', 'Zoomcast', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jarrid', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1719, 'CODE-950447', 'Skaboo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tisha', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1720, 'CODE-377368', 'Gevee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lavina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1721, 'CODE-035497', 'Jayo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Berty', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1722, 'CODE-045381', 'Kamba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Janith', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1723, 'CODE-120415', 'Wikido', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Forester', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1724, 'CODE-465932', 'Agimba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Robb', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1725, 'CODE-968417', 'Kwideo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Janenna', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1726, 'CODE-444289', 'Edgetag', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Riordan', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1727, 'CODE-316195', 'Mynte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Audra', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1728, 'CODE-248108', 'Tambee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lesya', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1729, 'CODE-291955', 'Vipe', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Michelina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1730, 'CODE-715453', 'Bubbletube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Frayda', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1731, 'CODE-701401', 'Oyonder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marchelle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1732, 'CODE-360647', 'Oyoloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Claudie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1733, 'CODE-699033', 'Jayo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Clywd', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1734, 'CODE-413224', 'Edgeblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Talbot', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1735, 'CODE-969022', 'Youtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Desirae', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1736, 'CODE-605437', 'Riffpath', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Evin', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1737, 'CODE-120122', 'Tagopia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Chrisse', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1738, 'CODE-784297', 'Jazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tony', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1739, 'CODE-561122', 'Feedfire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hilliary', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1740, 'CODE-452718', 'Topdrive', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ashlen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1741, 'CODE-580224', 'Janyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cherie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1742, 'CODE-542965', 'Livetube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marice', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1743, 'CODE-974156', 'Jabbersphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dun', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1744, 'CODE-241887', 'Centidel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gunilla', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1745, 'CODE-286964', 'Skyndu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Todd', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1746, 'CODE-709162', 'Oyoloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mitchael', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1747, 'CODE-684917', 'Zoomlounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Fara', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1748, 'CODE-297099', 'Skinix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Berni', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1749, 'CODE-430747', 'Twitterbeat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cad', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1750, 'CODE-262437', 'Youtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Glory', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1751, 'CODE-019943', 'Wikizz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Roobbie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1752, 'CODE-312407', 'Linkbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shurwood', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1753, 'CODE-502206', 'Babbleset', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Silvester', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1754, 'CODE-573807', 'Zoomzone', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Scottie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1755, 'CODE-362420', 'Zooveo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Allsun', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1756, 'CODE-090679', 'Shufflester', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gabriellia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1757, 'CODE-366134', 'Oyoba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Genvieve', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1758, 'CODE-558633', 'Kwinu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Chaunce', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1759, 'CODE-694766', 'Zooveo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Clayson', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1760, 'CODE-797932', 'Mynte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Madelyn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1761, 'CODE-905360', 'Photospace', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Catarina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1762, 'CODE-133007', 'Skinder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mortie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1763, 'CODE-948953', 'Brainbox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Minna', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1764, 'CODE-345748', 'Innotype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gregorio', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1765, 'CODE-881878', 'Oyoloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Courtenay', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1766, 'CODE-372147', 'Aivee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sly', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1767, 'CODE-215103', 'Browsecat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bibi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1768, 'CODE-959074', 'Eabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mignon', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1769, 'CODE-150063', 'Lazz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Leroy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1770, 'CODE-873094', 'Yodoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pavel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1771, 'CODE-915280', 'Wordware', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Yankee', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1772, 'CODE-957118', 'LiveZ', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Carney', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1773, 'CODE-039752', 'Ainyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hedda', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1774, 'CODE-327406', 'Fivechat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Madel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1775, 'CODE-517773', 'Skinte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jessalin', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1776, 'CODE-606648', 'Skivee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ericha', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1777, 'CODE-479921', 'Feedspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Brendin', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1778, 'CODE-579662', 'JumpXS', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Irena', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1779, 'CODE-458549', 'Dabfeed', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Audre', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1780, 'CODE-553760', 'Cogidoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alphonse', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1781, 'CODE-393154', 'Topdrive', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hedda', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1782, 'CODE-304488', 'Feedmix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alleyn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1783, 'CODE-342980', 'Zoonder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Valene', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1784, 'CODE-801436', 'Innotype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Almeta', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1785, 'CODE-978242', 'Skipstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rubi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1786, 'CODE-486903', 'Brainlounge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sophia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1787, 'CODE-499787', 'Trunyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Brandyn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1788, 'CODE-038227', 'Buzzbean', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Boot', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1789, 'CODE-691776', 'Gigashots', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Timothy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1790, 'CODE-344199', 'Shuffletag', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Trudey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1791, 'CODE-645667', 'Brainsphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shane', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1792, 'CODE-195737', 'Yamia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alejandro', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1793, 'CODE-041687', 'Tekfly', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Morissa', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1794, 'CODE-621224', 'Skalith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bentley', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1795, 'CODE-981060', 'Photobug', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jayme', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1796, 'CODE-041629', 'Yodoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Barri', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1797, 'CODE-264964', 'Lajo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Fraze', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1798, 'CODE-199933', 'Chatterbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ilyse', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1799, 'CODE-204774', 'Chatterpoint', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sid', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1800, 'CODE-424072', 'Skimia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Teriann', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1801, 'CODE-506040', 'Feedfish', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Garek', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1802, 'CODE-257985', 'Skynoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Miguel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1803, 'CODE-771803', 'Yodo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Riordan', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1804, 'CODE-085060', 'Janyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Antonietta', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1805, 'CODE-109892', 'Katz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jock', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1806, 'CODE-294283', 'Centimia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Darsie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1807, 'CODE-141738', 'Kaymbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Crissy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1808, 'CODE-825842', 'Wordtune', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Arly', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1809, 'CODE-703998', 'Thoughtmix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Darline', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1810, 'CODE-042462', 'Riffpath', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lukas', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1811, 'CODE-100315', 'Skinder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dede', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1812, 'CODE-374193', 'Meetz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Husein', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1813, 'CODE-570021', 'Oyoloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Clayborn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1814, 'CODE-727524', 'Bubblemix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Emlen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1815, 'CODE-927557', 'Meetz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bert', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1816, 'CODE-455213', 'Yoveo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Giacobo', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1817, 'CODE-493395', 'Thoughtblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Garry', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1818, 'CODE-101337', 'Ozu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Arly', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1819, 'CODE-026502', 'Demivee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Winonah', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1820, 'CODE-828498', 'Jabbercube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Morty', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1821, 'CODE-062984', 'Quamba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nanice', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1822, 'CODE-829425', 'Yodoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Elvis', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1823, 'CODE-958176', 'Dabtype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kym', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1824, 'CODE-302606', 'Dabjam', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Wake', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1825, 'CODE-638502', 'Livetube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Deeyn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1826, 'CODE-284694', 'Mita', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Betti', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1827, 'CODE-507964', 'Avaveo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Reuven', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1828, 'CODE-685739', 'Zoovu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Field', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1829, 'CODE-904802', 'Blogtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Vivianne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1830, 'CODE-466795', 'Linkbuzz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Janice', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1831, 'CODE-619571', 'Skinder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Clint', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1832, 'CODE-697468', 'Kwimbee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Amandy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1833, 'CODE-628627', 'Einti', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Haslett', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1834, 'CODE-050735', 'Riffpath', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Vanny', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1835, 'CODE-367791', 'Tazz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marsiella', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1836, 'CODE-686752', 'Wikizz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bryon', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1837, 'CODE-330385', 'Gabcube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Deni', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1838, 'CODE-591672', 'Yakitri', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Erasmus', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1839, 'CODE-967206', 'Eabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Early', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1840, 'CODE-061013', 'Bubblebox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shaylah', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1841, 'CODE-403450', 'Dabtype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lura', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1842, 'CODE-834209', 'Realpoint', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Oswell', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1843, 'CODE-960697', 'Skilith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'James', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1844, 'CODE-300858', 'Trupe', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Charlean', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1845, 'CODE-622198', 'Oloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Emory', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1846, 'CODE-208416', 'Pixope', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Velvet', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1847, 'CODE-175489', 'Dynabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Morgen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1848, 'CODE-252199', 'Oloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Teressa', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1849, 'CODE-734526', 'Zoombox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Deva', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1850, 'CODE-916032', 'Fatz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Saraann', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1851, 'CODE-376584', 'Kazio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rosalie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1852, 'CODE-134826', 'Kwimbee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Vincent', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1853, 'CODE-544377', 'Oyondu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Colette', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1854, 'CODE-317408', 'Meezzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cthrine', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1855, 'CODE-953908', 'Feednation', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Russell', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1856, 'CODE-817317', 'Skibox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Basia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1857, 'CODE-224862', 'Tambee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lanette', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1858, 'CODE-672362', 'Buzzbean', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1859, 'CODE-687221', 'Dazzlesphere', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dov', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1860, 'CODE-419021', 'Kwilith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Christean', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1861, 'CODE-033443', 'Mydeo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Elberta', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1862, 'CODE-910152', 'Agivu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nerte', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1863, 'CODE-450430', 'Browsezoom', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Freda', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1864, 'CODE-521696', 'Blogtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shandy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1865, 'CODE-257192', 'Snaptags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dorie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1866, 'CODE-720873', 'Yodoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bernete', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1867, 'CODE-832789', 'Oyoyo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Grant', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1868, 'CODE-001326', 'Youtags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ricard', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1869, 'CODE-508263', 'Meevee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Joly', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1870, 'CODE-537340', 'Centimia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lucia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1871, 'CODE-161909', 'Flashspan', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sterne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1872, 'CODE-197524', 'Bubblemix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Wayne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1873, 'CODE-501897', 'Plambee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Oralia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1874, 'CODE-916912', 'Twitterlist', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Heriberto', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1875, 'CODE-078869', 'Jatri', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Katheryn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1876, 'CODE-643610', 'Divape', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Gwendolen', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1877, 'CODE-981444', 'Fivebridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Liana', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1878, 'CODE-976392', 'Skyble', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mariana', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1879, 'CODE-937625', 'Twitterbeat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Stormie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1880, 'CODE-758953', 'Topiczoom', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Walsh', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1881, 'CODE-981890', 'Quatz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Roxana', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1882, 'CODE-632590', 'Edgewire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Riane', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1883, 'CODE-217280', 'Feedmix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Donn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1884, 'CODE-188632', 'Skibox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Delcine', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1885, 'CODE-291321', 'Kwideo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Keven', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1886, 'CODE-890710', 'Riffwire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Titus', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1887, 'CODE-579586', 'Dabvine', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Edee', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1888, 'CODE-225799', 'Voomm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cross', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1889, 'CODE-390240', 'Jamia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mannie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1890, 'CODE-273804', 'Realfire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Anne-corinne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1891, 'CODE-198299', 'Centidel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Katharine', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1892, 'CODE-170082', 'Miboo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Lottie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1893, 'CODE-255515', 'Linklinks', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ker', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1894, 'CODE-767330', 'Dablist', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ferdinand', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1895, 'CODE-070107', 'Gabvine', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Connie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1896, 'CODE-048544', 'Vinder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Veronique', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1897, 'CODE-032398', 'Centidel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Chelsy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1898, 'CODE-016361', 'Twinte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Palm', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1899, 'CODE-984609', 'Jetwire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Guillema', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1900, 'CODE-873962', 'Linkbuzz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Clementine', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1901, 'CODE-415984', 'Meevee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marion', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1902, 'CODE-458033', 'Jetwire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rosemonde', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1903, 'CODE-042217', 'Eadel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rasla', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1904, 'CODE-836985', 'Skivee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Wade', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1905, 'CODE-058273', 'Devpoint', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bekki', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1906, 'CODE-780411', 'Wikizz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Leonanie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1907, 'CODE-727238', 'Twitterwire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Augusto', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1908, 'CODE-294958', 'Meevee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dasi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1909, 'CODE-293075', 'Babbleset', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Murielle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1910, 'CODE-580501', 'Blogtag', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Emily', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1911, 'CODE-023282', 'Topicblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Fairfax', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1912, 'CODE-374908', 'Livefish', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Crystie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1913, 'CODE-804695', 'Camido', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ebba', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1914, 'CODE-898752', 'Photobug', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Toni', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1915, 'CODE-079675', 'Edgepulse', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Renaud', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1916, 'CODE-702119', 'Vinte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shelagh', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1917, 'CODE-271569', 'Izio', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Etty', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1918, 'CODE-251492', 'Tazz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Erasmus', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1919, 'CODE-442751', 'Skimia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Morgana', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1920, 'CODE-459279', 'Blogpad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Una', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1921, 'CODE-968144', 'Camido', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jefferson', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1922, 'CODE-462884', 'Yabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jeth', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1923, 'CODE-409987', 'Abata', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Killian', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1924, 'CODE-661285', 'Jetpulse', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Yvor', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1925, 'CODE-076464', 'Fadeo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Eugenia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1926, 'CODE-398464', 'Skinder', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Leticia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1927, 'CODE-762930', 'Flashpoint', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Stevana', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1928, 'CODE-619256', 'Eabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kelsey', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1929, 'CODE-807493', 'Trilith', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Darice', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1930, 'CODE-179696', 'Yambee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Madelene', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1931, 'CODE-476002', 'Twitterbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nadya', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1932, 'CODE-840922', 'Kwimbee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Stesha', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1933, 'CODE-776603', 'Jaxbean', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Bertina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1934, 'CODE-360251', 'Midel', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Adrien', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1935, 'CODE-471445', 'Voolia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Chiquita', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1936, 'CODE-276475', 'Eazzy', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Missy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1937, 'CODE-968039', 'Zoonoodle', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Eunice', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1938, 'CODE-010771', 'Abatz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kare', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1939, 'CODE-149740', 'Thoughtblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Noemi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1940, 'CODE-716388', 'Mycat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Zaccaria', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1941, 'CODE-132721', 'Talane', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Daniela', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1942, 'CODE-514441', 'Voomm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Daryl', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1943, 'CODE-174041', 'Dynabox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Simone', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1944, 'CODE-326881', 'Oloo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Townsend', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1945, 'CODE-112286', 'Wordtune', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Genia', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1946, 'CODE-580785', 'Muxo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Marga', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1947, 'CODE-567070', 'Riffpedia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Isiahi', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1948, 'CODE-092993', 'Riffpedia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alexandrina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1949, 'CODE-763758', 'Shufflester', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Sibley', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1950, 'CODE-539812', 'Skaboo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Agata', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1951, 'CODE-407786', 'Twitternation', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Harlie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1952, 'CODE-419494', 'Gigashots', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Terence', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1953, 'CODE-874111', 'Oyondu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Daryle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1954, 'CODE-112076', 'Aibox', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Byron', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1955, 'CODE-938048', 'Leenti', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Carolyne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1956, 'CODE-354012', 'Browsedrive', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Annabella', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1957, 'CODE-955915', 'Kamba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kata', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1958, 'CODE-717538', 'Muxo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Elias', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1959, 'CODE-719949', 'Feedfish', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Efren', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1960, 'CODE-447131', 'Oozz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shell', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1961, 'CODE-075810', 'Flashpoint', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Courtney', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1962, 'CODE-037656', 'Tagpad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Shaughn', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1963, 'CODE-960850', 'Ntags', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Killie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1964, 'CODE-691284', 'Voonte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Rosella', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1965, 'CODE-573871', 'Tavu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ward', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1966, 'CODE-795503', 'Twitternation', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Codee', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1967, 'CODE-255900', 'Camido', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hugibert', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1968, 'CODE-892995', 'Blognation', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nicolle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1969, 'CODE-697274', 'Feedmix', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Dorisa', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1970, 'CODE-807385', 'Flipstorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ramona', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1971, 'CODE-945104', 'Meetz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Harman', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1972, 'CODE-303367', 'Blogpad', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cara', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1973, 'CODE-681522', 'Leenti', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Ulrica', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1974, 'CODE-497510', 'Meedoo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Wheeler', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1975, 'CODE-442983', 'Babblestorm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Celeste', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1976, 'CODE-722388', 'Youbridge', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Terri', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1977, 'CODE-282989', 'Skinte', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Meagan', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1978, 'CODE-247782', 'Fatz', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Nathanil', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1979, 'CODE-389943', 'Topicblab', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Eleanor', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1980, 'CODE-206371', 'Edgewire', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Roxanne', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1981, 'CODE-862027', 'LiveZ', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mozelle', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1982, 'CODE-691021', 'Aivee', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Alard', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1983, 'CODE-869025', 'Ozu', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Zane', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1984, 'CODE-272062', 'Babbleset', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Jacenta', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1985, 'CODE-753236', 'Linktype', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Felicity', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1986, 'CODE-949993', 'Realpoint', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Maddy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1987, 'CODE-490257', 'Skyba', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Pepillo', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1988, 'CODE-601308', 'Lajo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Poul', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1989, 'CODE-535769', 'Flashset', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Camilla', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1990, 'CODE-874920', 'Gabvine', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Erna', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1991, 'CODE-767296', 'Myworks', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Cordelie', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1992, 'CODE-211721', 'Kaymbo', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Kanya', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1993, 'CODE-756716', 'Oyope', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Avram', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1994, 'CODE-148420', 'Bluejam', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Natalina', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1995, 'CODE-471950', 'Zoombeat', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Hedy', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1996, 'CODE-914491', 'Trunyx', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Mel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1997, 'CODE-156606', 'Quimm', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Tate', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1998, 'CODE-039556', 'Digitube', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Athene', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (1999, 'CODE-727964', 'Babbleopia', 'upload/20240306024835.png', 1, 1, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'Raychel', NULL);
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (2000, 'CODE-521152', 'Bubbletube', 'upload/20240306024835.png', 1, 2, '[{\"key\":\"brand\",\"val\":\"aaa\"},{\"key\":\"type\",\"val\":\"bbb\"},{\"key\":\"fre\",\"val\":\"ccc\"},{\"key\":\"number\",\"val\":20}]', 0, 'admin', '2024-03-06 18:04:40');
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (2001, 'code-00000', '內務府', 'upload/20240306024835.png', 2, 3, '[{\"key\":\"總量\",\"val\":\"3293\"},{\"key\":\"大小\",\"val\":\"232323\"}]', 0, NULL, '2024-03-06 14:40:25');
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (2002, 'F92X', 'sop', 'upload/20240306050925.png', 1, 2, '[{\"key\":\"AAA\",\"val\":\"556\"}]', 0, 'admin', '2024-03-06 17:13:24');
INSERT INTO `tab_part` (`id`, `code`, `name`, `img`, `sid`, `mid`, `info`, `status`, `create_name`, `create_time`) VALUES (2003, 'code-2939283', 'jawiefj', 'upload/20240307123604.png', 4, 2, '[{\"key\":\"wfea\",\"val\":\"jeijaf\"},{\"key\":\"wfaf\",\"val\":\"ijii2323\"}]', 0, 'admin', '2024-03-07 12:36:27');
COMMIT;

-- ----------------------------
-- Table structure for tab_site
-- ----------------------------
DROP TABLE IF EXISTS `tab_site`;
CREATE TABLE `tab_site` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dep_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `manager` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `info` text,
  `status` int DEFAULT NULL,
  `create_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tab_site
-- ----------------------------
BEGIN;
INSERT INTO `tab_site` (`id`, `dep_id`, `name`, `manager`, `phone`, `addr`, `info`, `status`, `create_name`, `create_time`) VALUES (1, 1, '大島營業所', '山田杰', '3943849', '未接誒佛奧灣', '[{\"key\":\"ee\",\"val\":\"444\"},{\"key\":\"EE\",\"val\":\"2323\"}]', 0, 'keboda', '2024-03-11 15:42:01');
INSERT INTO `tab_site` (`id`, `dep_id`, `name`, `manager`, `phone`, `addr`, `info`, `status`, `create_name`, `create_time`) VALUES (2, 2, '較為現場', '未接', '3434394', '77777', '[{\"key\":\"55\",\"val\":\"66\"}]', 0, 'keboda', '2024-03-11 15:00:48');
COMMIT;

-- ----------------------------
-- Table structure for tab_stock
-- ----------------------------
DROP TABLE IF EXISTS `tab_stock`;
CREATE TABLE `tab_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ware_id` int DEFAULT NULL,
  `part_id` int DEFAULT NULL,
  `num` int DEFAULT NULL,
  `status` int DEFAULT NULL COMMENT '0 正常 1 待核查',
  `create_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tab_stock
-- ----------------------------
BEGIN;
INSERT INTO `tab_stock` (`id`, `ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (1, 1, 1001, 24, 1, NULL, NULL);
INSERT INTO `tab_stock` (`id`, `ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (2, 1, 1002, 30, 1, NULL, NULL);
INSERT INTO `tab_stock` (`id`, `ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (3, 1, 1006, 20, 1, NULL, NULL);
INSERT INTO `tab_stock` (`id`, `ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (4, 1, 1020, 50, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tab_stock_io
-- ----------------------------
DROP TABLE IF EXISTS `tab_stock_io`;
CREATE TABLE `tab_stock_io` (
  `id` int NOT NULL AUTO_INCREMENT,
  `recept_code` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `out_dep_id` int DEFAULT NULL,
  `out_ware_id` int DEFAULT NULL,
  `in_dep_id` int DEFAULT NULL,
  `in_ware_id` int DEFAULT NULL,
  `part_id` int DEFAULT NULL,
  `num` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `create_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tab_stock_io
-- ----------------------------
BEGIN;
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (5, 'HOSO-498888', '社內調動', 1, 3, 2, 1, 1005, 5, 0, NULL, NULL);
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (6, 'HOSO-20240312155206', '采购入库', NULL, NULL, 2, 1, 1001, 60, 1, 'keboda', '2024-03-12 17:29:47');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (7, 'HOSO-20240312155206', '采购入库', NULL, NULL, 2, 1, 1006, 12, 1, 'keboda', '2024-03-12 17:25:45');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (8, 'HOSO-20240312172800', '退货入库', NULL, NULL, 2, 2, 1003, 24, 0, 'keboda', '2024-03-12 17:28:00');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (9, 'HOSO-20240312172800', '退货入库', NULL, NULL, 2, 2, 1006, 8, 0, 'keboda', '2024-03-12 17:28:00');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (10, 'HOSO-20240312172800', '退货入库', NULL, NULL, 2, 2, 1042, 12, 0, 'keboda', '2024-03-12 17:28:00');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (11, 'HOSO-20240312172858', '采购入库', NULL, NULL, 1, 4, 1004, 16, 0, 'keboda', '2024-03-12 17:28:58');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (12, 'HOSO-20240312172858', '采购入库', NULL, NULL, 1, 4, 1030, 21, 0, 'keboda', '2024-03-12 17:28:58');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (13, 'HOSO-20240312172858', '采购入库', NULL, NULL, 1, 4, 1040, 56, 0, 'keboda', '2024-03-12 17:28:58');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (18, 'HOSO-20240312174356', '采购入库', NULL, NULL, 1, 3, 1006, 24, 0, 'keboda', '2024-03-12 17:43:56');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (19, 'HOSO-20240312174356', '采购入库', NULL, NULL, 1, 3, 1166, 12, 0, 'keboda', '2024-03-12 17:43:56');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (20, 'HOSO-20240312174356', '采购入库', NULL, NULL, 1, 3, 1022, 88, 0, 'keboda', '2024-03-12 17:43:56');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (21, 'HOSO-20240313140213', '采购入库', NULL, NULL, 2, 2, 1007, 44, 0, 'keboda', '2024-03-13 14:02:13');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (22, 'HOSO-20240313140213', '采购入库', NULL, NULL, 2, 2, 1006, 56, 0, 'keboda', '2024-03-13 14:02:13');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (25, 'HOSO-20240313152540', '銷售出庫', 2, 1, NULL, NULL, 1002, 4, 0, 'keboda', '2024-03-13 15:25:40');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (26, 'HOSO-20240313152540', '銷售出庫', 2, 1, NULL, NULL, 1001, 8, 0, 'keboda', '2024-03-13 15:25:40');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (27, 'HOSO-20240313152540', '銷售出庫', 2, 1, NULL, NULL, 1020, 28, 0, 'keboda', '2024-03-13 15:25:40');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (30, 'HOSO-20240313161220', '社內移動', 1, 3, 2, 1, 1001, 8, 0, 'keboda', '2024-03-13 16:12:20');
INSERT INTO `tab_stock_io` (`id`, `recept_code`, `type`, `out_dep_id`, `out_ware_id`, `in_dep_id`, `in_ware_id`, `part_id`, `num`, `status`, `create_name`, `create_time`) VALUES (31, 'HOSO-20240313161220', '社內移動', 1, 3, 2, 1, 1002, 12, 0, 'keboda', '2024-03-13 16:12:20');
COMMIT;

-- ----------------------------
-- Table structure for tab_supply
-- ----------------------------
DROP TABLE IF EXISTS `tab_supply`;
CREATE TABLE `tab_supply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `img` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `info` text,
  `status` int DEFAULT '0',
  `create_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tab_supply
-- ----------------------------
BEGIN;
INSERT INTO `tab_supply` (`id`, `name`, `img`, `phone`, `addr`, `info`, `status`, `create_name`, `create_time`) VALUES (1, '本田', 'upload/20240306024835.png', '080928183', '東京星宿', '[{\"key\":\"負責人\",\"val\":\"3293\"}]', 0, 'admin', '2024-03-07 12:02:49');
INSERT INTO `tab_supply` (`id`, `name`, `img`, `phone`, `addr`, `info`, `status`, `create_name`, `create_time`) VALUES (2, '松下', 'upload/20240307115718.svg', '2932838238', '大阪', '[{\"key\":\"負責人\",\"val\":\"3293\"}]', 0, NULL, '2024-03-07 11:57:19');
INSERT INTO `tab_supply` (`id`, `name`, `img`, `phone`, `addr`, `info`, `status`, `create_name`, `create_time`) VALUES (4, '本田001', 'upload/20240307114912.png', '123456', '經緯紡機傲嬌發違法', '[{\"key\":\"芙蓉鎮\",\"val\":\"濰坊\"},{\"key\":\"負責人\",\"val\":\"你問問\"}]', 0, NULL, '2024-03-07 11:56:59');
INSERT INTO `tab_supply` (`id`, `name`, `img`, `phone`, `addr`, `info`, `status`, `create_name`, `create_time`) VALUES (5, '特斯拉', 'upload/20240307115817.png', '2322232323', '富久町1番5号富久町第5服部', '[{\"key\":\"零件\",\"val\":\"忘記忘記發\"},{\"key\":\"測試\",\"val\":\"wjeiawe\"}]', 0, NULL, '2024-03-07 11:58:35');
COMMIT;

-- ----------------------------
-- Table structure for tab_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_user`;
CREATE TABLE `tab_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dep_id` int DEFAULT NULL,
  `usr` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `create_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tab_user
-- ----------------------------
BEGIN;
INSERT INTO `tab_user` (`id`, `dep_id`, `usr`, `name`, `pwd`, `role`, `status`, `create_name`, `create_time`) VALUES (1, 2, 'admin', '管理员', 'a', '系統', 0, 'keboda', '2024-03-11 12:00:37');
INSERT INTO `tab_user` (`id`, `dep_id`, `usr`, `name`, `pwd`, `role`, `status`, `create_name`, `create_time`) VALUES (4, 2, 'ware', '張三', '6666', '倉庫', 0, 'keboda', '2024-03-11 12:00:47');
INSERT INTO `tab_user` (`id`, `dep_id`, `usr`, `name`, `pwd`, `role`, `status`, `create_name`, `create_time`) VALUES (5, 1, 'liyang', '李陽', '123456', '審核', 0, NULL, NULL);
INSERT INTO `tab_user` (`id`, `dep_id`, `usr`, `name`, `pwd`, `role`, `status`, `create_name`, `create_time`) VALUES (6, 1, 'keboda', '科普', 'a', '採購', 0, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tab_ware
-- ----------------------------
DROP TABLE IF EXISTS `tab_ware`;
CREATE TABLE `tab_ware` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dep_id` int DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `manager` varchar(50) DEFAULT NULL,
  `info` text,
  `status` int DEFAULT '0',
  `create_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of tab_ware
-- ----------------------------
BEGIN;
INSERT INTO `tab_ware` (`id`, `dep_id`, `code`, `name`, `addr`, `manager`, `info`, `status`, `create_name`, `create_time`) VALUES (1, 2, 'code-001', '梅田倉庫1', '新宿bb', '慰問費', '[{\"key\":\"11\",\"val\":\"22\"}]', 0, 'keboda', '2024-03-11 14:54:09');
INSERT INTO `tab_ware` (`id`, `dep_id`, `code`, `name`, `addr`, `manager`, `info`, `status`, `create_name`, `create_time`) VALUES (2, 2, 'code-002', '梅田倉庫2', '新宿www', '福田艾', '[{\"key\":\"aaaaa\",\"val\":\"22\"},{\"key\":\"33\",\"val\":\"44\"}]', 0, 'keboda', '2024-03-11 11:08:12');
INSERT INTO `tab_ware` (`id`, `dep_id`, `code`, `name`, `addr`, `manager`, `info`, `status`, `create_name`, `create_time`) VALUES (3, 1, 'code-003', '新宿倉庫1', 'wfeaf', 'wefawef', '[{\"key\":\"aaaaa\",\"val\":\"22\"},{\"key\":\"33\",\"val\":\"44\"}]', 0, 'keboda', '2024-03-11 11:06:54');
INSERT INTO `tab_ware` (`id`, `dep_id`, `code`, `name`, `addr`, `manager`, `info`, `status`, `create_name`, `create_time`) VALUES (4, 1, 'code-004', '新宿倉庫2', 'sdsd', 'sd', '[]', 0, 'admin', '2024-03-08 15:26:48');
COMMIT;

-- ----------------------------
-- View structure for view_model
-- ----------------------------
DROP VIEW IF EXISTS `view_model`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_model` AS select `tab_model`.`id` AS `id`,`tab_model`.`name` AS `name`,`tab_model`.`status` AS `status`,`tab_model`.`create_name` AS `create_name`,`tab_model`.`create_time` AS `create_time` from `tab_model` where (`tab_model`.`status` = 0);

-- ----------------------------
-- View structure for view_part
-- ----------------------------
DROP VIEW IF EXISTS `view_part`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_part` AS select `w`.`id` AS `id`,`w`.`code` AS `code`,`w`.`name` AS `name`,`w`.`img` AS `img`,`w`.`sid` AS `sid`,`w`.`mid` AS `mid`,`w`.`info` AS `info`,`w`.`status` AS `status`,`w`.`create_name` AS `create_name`,`w`.`create_time` AS `create_time`,`s`.`name` AS `sup_name`,`s`.`phone` AS `sup_phone`,`s`.`addr` AS `sup_addr`,`s`.`info` AS `sup_info`,`m`.`name` AS `mod_name` from ((`tab_part` `w` join `tab_supply` `s`) join `tab_model` `m`) where ((`w`.`sid` = `s`.`id`) and (`w`.`mid` = `m`.`id`) and (`w`.`status` = 0));

-- ----------------------------
-- View structure for view_part_export
-- ----------------------------
DROP VIEW IF EXISTS `view_part_export`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_part_export` AS select `w`.`id` AS `id`,`w`.`code` AS `code`,`w`.`name` AS `name`,`w`.`img` AS `img`,`w`.`info` AS `info`,`s`.`name` AS `sup_name`,`s`.`phone` AS `sup_phone`,`s`.`addr` AS `sup_addr`,`s`.`info` AS `sup_info`,`m`.`name` AS `mod_name`,`w`.`create_name` AS `create_name`,date_format(`w`.`create_time`,'%Y-%m-%d %H:%i:%s') AS `create_time`,(case `w`.`status` when 0 then '正常' when 1 then '刪除' else '未知' end) AS `status_text` from ((`tab_part` `w` join `tab_supply` `s`) join `tab_model` `m`) where ((`w`.`sid` = `s`.`id`) and (`w`.`mid` = `m`.`id`) and (`w`.`status` = 0));

-- ----------------------------
-- View structure for view_site
-- ----------------------------
DROP VIEW IF EXISTS `view_site`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_site` AS select `w`.`id` AS `key`,`w`.`id` AS `id`,`w`.`dep_id` AS `dep_id`,`w`.`name` AS `name`,`w`.`manager` AS `manager`,`w`.`phone` AS `phone`,`w`.`addr` AS `addr`,`w`.`info` AS `info`,`w`.`status` AS `status`,`w`.`create_name` AS `create_name`,`w`.`create_time` AS `create_time`,`d`.`name` AS `dep_name` from (`tab_site` `w` join `tab_dep` `d`) where ((`w`.`dep_id` = `d`.`id`) and (`w`.`status` = 0));

-- ----------------------------
-- View structure for view_stock
-- ----------------------------
DROP VIEW IF EXISTS `view_stock`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_stock` AS select `s`.`id` AS `key`,`s`.`id` AS `id`,`w`.`code` AS `ware_code`,`w`.`name` AS `ware_name`,`p`.`code` AS `part_code`,`p`.`name` AS `part_name`,`p`.`img` AS `part_img`,`m`.`name` AS `model_name`,`su`.`name` AS `supply_name`,`s`.`num` AS `num`,`s`.`status` AS `status` from ((((`tab_stock` `s` left join `tab_part` `p` on((`s`.`part_id` = `p`.`id`))) left join `tab_ware` `w` on((`s`.`ware_id` = `w`.`id`))) left join `tab_model` `m` on((`p`.`mid` = `m`.`id`))) left join `tab_supply` `su` on((`p`.`sid` = `su`.`id`)));

-- ----------------------------
-- View structure for view_stock_io
-- ----------------------------
DROP VIEW IF EXISTS `view_stock_io`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_stock_io` AS select row_number() OVER (ORDER BY `t`.`recept_code` )  AS `key`,`t`.`recept_code` AS `recept_code`,`t`.`type` AS `type`,`t`.`out_dep_id` AS `out_dep_id`,`t`.`out_ware_id` AS `out_ware_id`,`w1`.`name` AS `out_ware_name`,`t`.`in_dep_id` AS `in_dep_id`,`t`.`in_ware_id` AS `in_ware_id`,`w2`.`name` AS `in_ware_name` from (((select `s`.`recept_code` AS `recept_code`,`s`.`type` AS `type`,`s`.`out_dep_id` AS `out_dep_id`,`s`.`out_ware_id` AS `out_ware_id`,`s`.`in_dep_id` AS `in_dep_id`,`s`.`in_ware_id` AS `in_ware_id` from `tab_stock_io` `s` where (`s`.`status` = 0) group by `s`.`recept_code`,`s`.`type`,`s`.`out_dep_id`,`s`.`out_ware_id`,`s`.`in_dep_id`,`s`.`in_ware_id`) `t` left join `tab_ware` `w1` on((`t`.`out_ware_id` = `w1`.`id`))) left join `tab_ware` `w2` on((`t`.`in_ware_id` = `w2`.`id`)));

-- ----------------------------
-- View structure for view_supply
-- ----------------------------
DROP VIEW IF EXISTS `view_supply`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_supply` AS select `tab_supply`.`id` AS `id`,`tab_supply`.`name` AS `name`,`tab_supply`.`img` AS `img`,`tab_supply`.`phone` AS `phone`,`tab_supply`.`addr` AS `addr`,`tab_supply`.`info` AS `info`,`tab_supply`.`status` AS `status`,`tab_supply`.`create_name` AS `create_name`,`tab_supply`.`create_time` AS `create_time` from `tab_supply` where (`tab_supply`.`status` = 0);

-- ----------------------------
-- View structure for view_user
-- ----------------------------
DROP VIEW IF EXISTS `view_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_user` AS select `t`.`id` AS `key`,`t`.`id` AS `id`,`t`.`dep_id` AS `dep_id`,`t`.`usr` AS `usr`,`t`.`name` AS `name`,`t`.`pwd` AS `pwd`,`t`.`role` AS `role`,`t`.`status` AS `status`,`t`.`create_name` AS `create_name`,`t`.`create_time` AS `create_time`,`d`.`name` AS `dep_name` from (`tab_user` `t` join `tab_dep` `d`) where ((`t`.`dep_id` = `d`.`id`) and (`t`.`status` = 0));

-- ----------------------------
-- View structure for view_ware
-- ----------------------------
DROP VIEW IF EXISTS `view_ware`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_ware` AS select `w`.`id` AS `id`,`w`.`id` AS `key`,`w`.`dep_id` AS `dep_id`,`w`.`code` AS `code`,`w`.`name` AS `name`,`w`.`addr` AS `addr`,`w`.`manager` AS `manager`,`w`.`info` AS `info`,`w`.`status` AS `status`,`w`.`create_name` AS `create_name`,`w`.`create_time` AS `create_time`,`d`.`name` AS `dep_name` from (`tab_ware` `w` join `tab_dep` `d`) where ((`w`.`dep_id` = `d`.`id`) and (`w`.`status` = 0));

-- ----------------------------
-- Procedure structure for DEBUG_MSG
-- ----------------------------
DROP PROCEDURE IF EXISTS `DEBUG_MSG`;
delimiter ;;
CREATE PROCEDURE `DEBUG_MSG`(msg VARCHAR(21812))
BEGIN
    select concat('**', msg) AS '** DEBUG:';
END
;;
delimiter ;

-- ----------------------------
-- Function structure for FN_DATA_EXIST
-- ----------------------------
DROP FUNCTION IF EXISTS `FN_DATA_EXIST`;
delimiter ;;
CREATE FUNCTION `FN_DATA_EXIST`(`_dt` varchar(20), `_code` varchar(50))
 RETURNS int
  DETERMINISTIC
BEGIN
	DECLARE cnt BIGINT UNSIGNED;
	select count(*) into cnt from tab_sys where code=_code and dt=_dt;
	return cnt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_CHECK_STOCK
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_CHECK_STOCK`;
delimiter ;;
CREATE PROCEDURE `PROC_CHECK_STOCK`(IN `data` varchar(20000))
BEGIN
	UPDATE tab_stock SET status = 1;
	select * from view_stock;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_BY_ID
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_BY_ID`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_BY_ID`(IN `data` varchar(20000))
BEGIN
	
	SET @id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.id'));
	SET @tab = JSON_UNQUOTE(JSON_EXTRACT(data, '$.tab'));
	SET @view = JSON_UNQUOTE(JSON_EXTRACT(data, '$.view'));

	SET @query1 = CONCAT('update ', @tab, ' set status = 1 where id = ', @id);
	PREPARE stmt FROM @query1;
	EXECUTE stmt;
	SET @query2 = CONCAT('SELECT id as `key`,t.* FROM ', @view, ' t');
	PREPARE stmt FROM @query2;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_DEP
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_DEP`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_DEP`(IN `data` varchar(20000))
BEGIN
	SET @id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.id'));
	
	UPDATE tab_dep set status = 1 where id = @id;
	SELECT id as `key`,t.* FROM tab_dep t where status = 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_MODEL
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_MODEL`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_MODEL`(IN `data` varchar(20000))
BEGIN
	
	SET @id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.id'));
	SET @tab = JSON_UNQUOTE(JSON_EXTRACT(data, '$.tab'));
	SET @view = JSON_UNQUOTE(JSON_EXTRACT(data, '$.view'));

	SET @query1 = CONCAT('update ', @tab, ' set status = 1 where id = ', @id);
	PREPARE stmt FROM @query1;
	EXECUTE stmt;
	SET @query2 = CONCAT('SELECT id as `key`,t.* FROM ', @view, ' t');
	PREPARE stmt FROM @query2;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_STOCK_IO
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_STOCK_IO`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_STOCK_IO`(IN `data` varchar(20000))
BEGIN
	
	SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(data, '$.recept_code'));
	
	UPDATE tab_stock_io set status = 1 where recept_code = @recept_code;
	SELECT * from view_stock_io;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_SUPPLY
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_SUPPLY`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_SUPPLY`(IN `data` varchar(20000))
BEGIN
	
	SET @id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.id'));
	
	UPDATE tab_supply set status = 1 where id = @id;
	SELECT id as `key`,t.* FROM view_supply t;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_WARE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_WARE`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_WARE`(IN `data` varchar(20000))
BEGIN
	SET @id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.id'));
	
	UPDATE tab_ware set status = 1 where id = @id;
	SELECT id as `key`,t.* FROM tab_ware t where status = 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_LOGIN
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_LOGIN`;
delimiter ;;
CREATE PROCEDURE `PROC_LOGIN`(IN `data` varchar(20000))
BEGIN
	DECLARE _usr  varchar(20) 	default null;
  DECLARE _pwd 	varchar(50) 	default null;

	SET _usr = JSON_UNQUOTE(JSON_EXTRACT(data,'$.usr'));
	SET _pwd = JSON_UNQUOTE(JSON_EXTRACT(data,'$.pwd'));
	
	SELECT 
		u.usr,u.name,u.role,d.name as dep_name 
	FROM 
		tab_user u,tab_dep d
	where  
		u.usr = _usr AND u.pwd = _pwd and u.dep_id = d.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_DEP
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_DEP`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_DEP`(IN `data` varchar(20000))
BEGIN
	
	select u.id as `key`, u.* from tab_dep u where status = 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_MODEL
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_MODEL`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_MODEL`(IN `data` varchar(20000))
BEGIN
	
	select * from tab_model where status = 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_PART
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_PART`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_PART`(IN `data` varchar(20000))
BEGIN
	
	select * from view_part_export;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_PART_SEL
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_PART_SEL`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_PART_SEL`(IN `data` varchar(20000))
BEGIN
	
	select id,code,name from tab_part;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_SITE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_SITE`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_SITE`(IN `data` varchar(20000))
BEGIN
	
	select * from view_site;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_STOCK
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_STOCK`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_STOCK`(IN `data` varchar(20000))
BEGIN
	
	select * from view_stock;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_STOCK_BY_WARE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_STOCK_BY_WARE`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_STOCK_BY_WARE`(IN `data` varchar(20000))
BEGIN
	SET @ware_id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.ware_id'));
	
	SELECT 
		s.*, 
		p.code,
		p.name,
		p.id
	FROM tab_stock s	
	LEFT JOIN tab_part p ON s.part_id = p.id
	where s.ware_id = @ware_id;

	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_STOCK_IO
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_STOCK_IO`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_STOCK_IO`(IN `data` varchar(20000))
BEGIN
	select * from view_stock_io;
	
-- 		select * from tab_stock_io;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_STOCK_IO_BY_CODE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_STOCK_IO_BY_CODE`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_STOCK_IO_BY_CODE`(IN `data` varchar(20000))
BEGIN
	SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(data, '$.recept_code'));
	
	SELECT 
		t.*, 
		s.num as stock_num,
		t.num as io_num,
		p.name as part_name,
		p.code as part_code,
		w1.name as out_ware_name,
		w2.name as in_ware_name 
	from  tab_stock_io t
	LEFT JOIN tab_ware w1 ON t.out_ware_id = w1.id
	LEFT JOIN tab_ware w2 ON t.in_ware_id = w2.id
	LEFT JOIN tab_stock s on s.ware_id = t.in_ware_id and s.part_id = t.part_id
	LEFT JOIN tab_part p on s.part_id = p.id
	where t.recept_code = @recept_code;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_SUPPLY
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_SUPPLY`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_SUPPLY`(IN `data` varchar(20000))
BEGIN
	
	select * from tab_supply where status = 0;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_TABLE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_TABLE`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_TABLE`(IN `data` varchar(20000))
BEGIN
	
	SET @tab = JSON_UNQUOTE(JSON_EXTRACT(data, '$.tab'));

	SET @query = CONCAT('SELECT id as `key`,t.* FROM ', @tab, ' t');
	PREPARE stmt FROM @query;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_USER
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_USER`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_USER`(IN `data` varchar(20000))
BEGIN
	
	select * from view_user;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_WARE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_WARE`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_WARE`(IN `data` varchar(20000))
BEGIN
	
	select * from view_ware;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_DEP
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_DEP`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_DEP`(IN jsonData TEXT)
BEGIN
    -- 解析JSON数据
		SET @id = JSON_EXTRACT(jsonData, '$.id');
    SET @method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
    SET @name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
		SET @addr = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.addr'));
		SET @phone = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.phone'));
		SET @create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
		SET @info = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.info'));
    
    -- 判断是更新还是插入
    IF @method = 'update' THEN
        -- 更新数据
        UPDATE tab_dep
        SET
            name = @name,
            addr = @addr,
            phone = @phone,
            info = @info,
						create_name = @create_name,
            create_time = NOW()
        WHERE id = @id;
    ELSEIF @method = 'insert' THEN
        INSERT INTO tab_dep (name, addr, phone, info, status, create_name, create_time)
        VALUES (@name,@addr, @phone, @info, 0, @create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_MODEL
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_MODEL`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_MODEL`(IN jsonData TEXT)
BEGIN
    -- 定义变量
    DECLARE v_method VARCHAR(10);
    DECLARE v_name VARCHAR(200);
		DECLARE v_create_name VARCHAR(50);
		DECLARE v_id INT;
    
    -- 解析JSON数据
    SET v_method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
    SET v_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
		SET v_id = JSON_EXTRACT(jsonData, '$.id');
		SET v_create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
    
    -- 判断是更新还是插入
    IF v_method = 'update' THEN
        -- 更新数据
        UPDATE tab_model
        SET
            name = v_name,
						create_name = v_create_name,
            create_time = NOW()
        WHERE id = v_id;
    ELSEIF v_method = 'insert' THEN
        INSERT INTO tab_model (name, status, create_name, create_time)
        VALUES (v_name,  0, v_create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_PART
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_PART`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_PART`(IN jsonData TEXT)
BEGIN
    -- 定义变量
    DECLARE v_method VARCHAR(10);
    DECLARE v_code VARCHAR(50);
    DECLARE v_name VARCHAR(200);
    DECLARE v_img VARCHAR(100);
		DECLARE v_create_name VARCHAR(50);
		DECLARE v_id INT;
    DECLARE v_sid INT;
    DECLARE v_mid INT;
    DECLARE v_info TEXT;
    
    -- 解析JSON数据
    SET v_method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
    SET v_code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.code'));
    SET v_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
    SET v_img = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.img'));
		SET v_id = JSON_EXTRACT(jsonData, '$.id');
    SET v_sid = JSON_EXTRACT(jsonData, '$.sid');
    SET v_mid = JSON_EXTRACT(jsonData, '$.mid');
    SET v_info = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.info'));
		SET v_create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
    
    -- 判断是更新还是插入
    IF v_method = 'update' THEN
        -- 更新数据
        UPDATE tab_part
        SET
            code = v_code,
            name = v_name,
            img = v_img,
            sid = v_sid,
            mid = v_mid,
            info = v_info,
						create_name = v_create_name,
            create_time = NOW()
        WHERE id = v_id;
    ELSEIF v_method = 'insert' THEN
        INSERT INTO tab_part (code, name, img, sid, mid, info, status, create_name, create_time)
        VALUES (v_code, v_name, v_img, v_sid, v_mid, v_info, 0, v_create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_SITE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_SITE`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_SITE`(IN jsonData TEXT)
BEGIN
    -- 解析JSON数据
		SET @id = JSON_EXTRACT(jsonData, '$.id');
    SET @method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
		SET @dep_id = JSON_EXTRACT(jsonData, '$.dep_id');
    SET @name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
		SET @phone = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.phone'));
		SET @addr = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.addr'));
		SET @manager = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.manager'));
		SET @create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
		SET @info = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.info'));
    
    -- 判断是更新还是插入
    IF @method = 'update' THEN
        -- 更新数据
        UPDATE tab_site
        SET
					  dep_id = @dep_id,
            name = @name,
						phone = @phone,
            manager = @manager,
            addr = @addr,
            info = @info,
						create_name = @create_name,
            create_time = NOW()
        WHERE id = @id;
    ELSEIF @method = 'insert' THEN
        INSERT INTO tab_site (dep_id, phone, name, addr, manager, info, status, create_name, create_time)
        VALUES (@dep_id, @phone, @name,@addr, @manager, @info, 0, @create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_STOCK_IO
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_STOCK_IO`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_STOCK_IO`(IN jsonData TEXT)
BEGIN
	DECLARE i INT DEFAULT 0;
	
	
	SET @method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
	SET @type = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.type'));
	SET @create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
	SET @create_time = DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s');
	SET @list = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.list'));
	SET @len  = JSON_LENGTH(@list);
	
	
	IF @type = '采购入库' or @type = '退货入库' THEN
		SET @in_dep_id = JSON_EXTRACT(jsonData, '$.in_dep_id');
    SET @in_ware_id = JSON_EXTRACT(jsonData, '$.in_ware_id');
		
		WHILE i < @len DO
			SET @id = (JSON_EXTRACT(@list, CONCAT('$[', i, '].id')));
			SET @part_id = (JSON_EXTRACT(@list, CONCAT('$[', i, '].key')));
			SET @num = JSON_EXTRACT(@list, CONCAT('$[', i, '].val'));
			SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.recept_code'));
		
			IF @method = 'update' THEN
				DELETE FROM tab_stock_io WHERE recept_code = @recept_code;
			END IF;
	
			SET @recept_code = CONCAT('HOSO-', DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'));
			INSERT INTO tab_stock_io (recept_code,type,in_dep_id, in_ware_id, part_id, num, status, create_name, create_time)
			VALUES (@recept_code,@type,@in_dep_id, @in_ware_id, @part_id, @num, 0, @create_name, @create_time);
	
			SET i = i + 1;
		END WHILE;
	ELSEIF @type = '銷售出庫' or @type = '領用出庫' THEN
		SET @in_dep_id = JSON_EXTRACT(jsonData, '$.in_dep_id');
    SET @in_ware_id = JSON_EXTRACT(jsonData, '$.in_ware_id');
		
		WHILE i < @len DO
			SET @part_id = (JSON_EXTRACT(@list, CONCAT('$[', i, '].key')));
			SET @num = JSON_EXTRACT(@list, CONCAT('$[', i, '].val'));
			SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.recept_code'));
		
			IF @method = 'update' THEN
				DELETE FROM tab_stock_io WHERE recept_code = @recept_code;
			END IF;
	
			SET @recept_code = CONCAT('HOSO-', DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'));
			INSERT INTO tab_stock_io (recept_code,type,in_dep_id, in_ware_id, part_id, num, status, create_name, create_time)
			VALUES (@recept_code,@type,@in_dep_id, @in_ware_id, @part_id, @num, 0, @create_name, @create_time);
	
			SET i = i + 1;
		END WHILE;
	ELSEIF @type = '社內移動'THEN
		SET @in_dep_id = JSON_EXTRACT(jsonData, '$.in_dep_id');
    SET @in_ware_id = JSON_EXTRACT(jsonData, '$.in_ware_id');
		SET @out_dep_id = JSON_EXTRACT(jsonData, '$.out_dep_id');
    SET @out_ware_id = JSON_EXTRACT(jsonData, '$.out_ware_id');
		
		WHILE i < @len DO
			SET @part_id = (JSON_EXTRACT(@list, CONCAT('$[', i, '].key')));
			SET @num = JSON_EXTRACT(@list, CONCAT('$[', i, '].val'));
			SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.recept_code'));
		
			IF @method = 'update' THEN
				DELETE FROM tab_stock_io WHERE recept_code = @recept_code;
			END IF;
	
			SET @recept_code = CONCAT('HOSO-', DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'));
			INSERT INTO tab_stock_io (recept_code,type,in_dep_id, in_ware_id,out_dep_id, out_ware_id, part_id, num, status, create_name, create_time)
			VALUES (@recept_code,@type,@in_dep_id, @in_ware_id, @out_dep_id, @out_ware_id, @part_id, @num, 0, @create_name, @create_time);
	
			SET i = i + 1;
		END WHILE;
	END IF;
	
	
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_SUPPLY
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_SUPPLY`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_SUPPLY`(IN jsonData TEXT)
BEGIN
    -- 定义变量
		DECLARE v_id INT;
    DECLARE v_method VARCHAR(10);
    DECLARE v_name VARCHAR(200);
    DECLARE v_img VARCHAR(100);
		DECLARE v_phone VARCHAR(50);
		DECLARE v_addr VARCHAR(50);
		DECLARE v_create_name VARCHAR(50);
    DECLARE v_info TEXT;
    
    -- 解析JSON数据
		SET v_id = JSON_EXTRACT(jsonData, '$.id');
    SET v_method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
    SET v_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
    SET v_img = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.img'));
		SET v_phone = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.phone'));
		SET v_addr = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.addr'));
		SET v_create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
		SET v_info = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.info'));
    
    -- 判断是更新还是插入
    IF v_method = 'update' THEN
        -- 更新数据
        UPDATE tab_supply
        SET
            name = v_name,
            img = v_img,
            phone = v_phone,
            addr = v_addr,
            info = v_info,
						create_name = v_create_name,
            create_time = NOW()
        WHERE id = v_id;
    ELSEIF v_method = 'insert' THEN
        INSERT INTO tab_supply (name, img, phone, addr, info, status, create_name, create_time)
        VALUES (v_name, v_img, v_phone, v_addr, v_info, 0, v_create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_USER
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_USER`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_USER`(IN jsonData TEXT)
BEGIN
    -- 解析JSON数据
		SET @id = JSON_EXTRACT(jsonData, '$.id');
    SET @method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
		SET @dep_id = JSON_EXTRACT(jsonData, '$.dep_id');
		SET @usr = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.usr'));
    SET @name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
		SET @pwd = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.pwd'));
		SET @role = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.role'));
		SET @create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
    
    -- 判断是更新还是插入
    IF @method = 'update' THEN
        -- 更新数据
        UPDATE tab_user
        SET
					  dep_id = @dep_id,
            usr = @usr,
            name = @name,
            pwd = @pwd,
            role = @role,
						create_name = @create_name,
            create_time = NOW()
        WHERE id = @id;
    ELSEIF @method = 'insert' THEN
        INSERT INTO tab_user (dep_id, usr, name, pwd, role, status, create_name, create_time)
        VALUES (@dep_id, @usr, @name,@pwd, @role, 0, @create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_WARE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_WARE`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_WARE`(IN jsonData TEXT)
BEGIN
    -- 解析JSON数据
		SET @id = JSON_EXTRACT(jsonData, '$.id');
    SET @method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
		SET @dep_id = JSON_EXTRACT(jsonData, '$.dep_id');
		SET @code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.code'));
    SET @name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
		SET @addr = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.addr'));
		SET @manager = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.manager'));
		SET @create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
		SET @info = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.info'));
    
    -- 判断是更新还是插入
    IF @method = 'update' THEN
        -- 更新数据
        UPDATE tab_ware
        SET
					  dep_id = @dep_id,
            name = @name,
            code = @code,
            manager = @manager,
            addr = @addr,
            info = @info,
						create_name = @create_name,
            create_time = NOW()
        WHERE id = @id;
    ELSEIF @method = 'insert' THEN
        INSERT INTO tab_ware (dep_id, code, name, addr, manager, info, status, create_name, create_time)
        VALUES (@dep_id, @code, @name,@addr, @manager, @info, 0, @create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
