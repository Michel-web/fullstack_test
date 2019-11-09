/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100139
Source Host           : localhost:3306
Source Database       : kc_db

Target Server Type    : MYSQL
Target Server Version : 100139
File Encoding         : 65001

Date: 2019-11-09 21:10:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for api_users
-- ----------------------------
DROP TABLE IF EXISTS `api_users`;
CREATE TABLE `api_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of api_users
-- ----------------------------
INSERT INTO `api_users` VALUES ('1', 'kc_test001', '45cb41b32dcfb917ccd8614f1536d6da', 'Rob Shinneider', '2019-11-09 17:44:27');
INSERT INTO `api_users` VALUES ('2', 'kc_test002', '45cb41b32dcfb917ccd8614f1536d6da', 'Terry Cruz', '2019-11-09 17:45:55');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'Test User 1', 'Group', '2019-11-09 19:55:11');
INSERT INTO `students` VALUES ('2', 'Test User 2', 'Group', '2019-11-09 19:55:12');
INSERT INTO `students` VALUES ('3', 'Test User 3', 'Group', '2019-11-09 19:55:12');
INSERT INTO `students` VALUES ('4', 'Test User 4', 'Group', '2019-11-09 19:55:12');
INSERT INTO `students` VALUES ('5', 'Test User 5', 'Group', '2019-11-09 19:55:12');
INSERT INTO `students` VALUES ('6', 'Test User 6', 'Group', '2019-11-09 19:55:12');
INSERT INTO `students` VALUES ('7', 'Test User 7', 'Group', '2019-11-09 19:55:12');
INSERT INTO `students` VALUES ('8', 'Test User 8', 'Group', '2019-11-09 19:55:12');
INSERT INTO `students` VALUES ('9', 'Test User 9', 'Group', '2019-11-09 19:55:12');
INSERT INTO `students` VALUES ('10', 'Test User 10', 'Group', '2019-11-09 19:55:12');
INSERT INTO `students` VALUES ('11', 'Test User 11', 'Group', '2019-11-09 19:55:12');
INSERT INTO `students` VALUES ('12', 'Test User 12', 'Group', '2019-11-09 19:55:12');
INSERT INTO `students` VALUES ('13', 'Test User 13', 'Group', '2019-11-09 19:55:12');
