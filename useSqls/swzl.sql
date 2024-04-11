/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : swzl

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2024-04-11 18:50:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `md5` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT '0',
  `enable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('1', '1.png', 'png', '72', 'http://localhost:9090/file/3f925d1c646148509c4e5134d9185f89.png', '52d4e95306c304442dcde19b5a6bfa63', '0', '1');
INSERT INTO `file` VALUES ('2', '1.png', 'png', '72', 'http://localhost:9090/file/3f925d1c646148509c4e5134d9185f89.png', '52d4e95306c304442dcde19b5a6bfa63', '0', '1');
INSERT INTO `file` VALUES ('3', '3.png', 'png', '72', 'http://localhost:9090/file/3f925d1c646148509c4e5134d9185f89.png', '52d4e95306c304442dcde19b5a6bfa63', '0', '1');

-- ----------------------------
-- Table structure for found
-- ----------------------------
DROP TABLE IF EXISTS `found`;
CREATE TABLE `found` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `details` text,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `creat_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of found
-- ----------------------------

-- ----------------------------
-- Table structure for kind
-- ----------------------------
DROP TABLE IF EXISTS `kind`;
CREATE TABLE `kind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of kind
-- ----------------------------
INSERT INTO `kind` VALUES ('1', '钱包');
INSERT INTO `kind` VALUES ('2', '校园卡');
INSERT INTO `kind` VALUES ('3', '身份证');
INSERT INTO `kind` VALUES ('4', '手机');
INSERT INTO `kind` VALUES ('5', '其他');

-- ----------------------------
-- Table structure for lost
-- ----------------------------
DROP TABLE IF EXISTS `lost`;
CREATE TABLE `lost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `details` text,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `creat_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lost
-- ----------------------------
INSERT INTO `lost` VALUES ('1', '钱包', 'http://localhost:9090/file/3f925d1c646148509c4e5134d9185f89.png', '钱包', '一个棕色钱包', '操场', '18200000000', '11', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `creat_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('11', 'wg11', '123456', 'q', '12345678', '18238329393', 'qwdq', 'http://localhost:9090/file/3f925d1c646148509c4e5134d9185f89.png', '2024-04-11 17:54:27');
INSERT INTO `user` VALUES ('12', 'wg111', '123456', 'wg11', '1223350664', '18330000000', '成都', null, null);
