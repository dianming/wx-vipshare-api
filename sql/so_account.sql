/*
Navicat MySQL Data Transfer

Source Server         : 192.168.15.244-测试环境
Source Server Version : 50638
Source Host           : 192.168.15.244:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2019-01-19 22:07:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for so_account
-- ----------------------------
DROP TABLE IF EXISTS `so_account`;
CREATE TABLE `so_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pwd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_count` int(11) DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `wx_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `video_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_count` int(11) DEFAULT '0',
  `nick_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '0 无效 1 有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of so_account
-- ----------------------------
INSERT INTO `so_account` VALUES ('25', '940053457@qq.com', 'xxx456ste', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('26', 'xing48748798@163.com', 'xxxxx123456', '3', null, '2019-01-18', '40308', '3', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('27', '48794687976487@163.com', 'sdf', '2', null, '2019-01-18', '40308', '2', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('28', '48794687976487@163.com', 'sdf', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('29', '48794687976487@163.com', 'we', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('30', '48794687976487@163.com', 'af', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('31', '48794687976487@163.com', 'jjj', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('32', '48794687976487@163.com', 'das', '1', null, '2019-01-18', '40308', '1', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('33', '48794687976487@163.com', 'fe', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('34', '48794687976487@163.com', 'sd', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('35', '48794687976487@163.com', 'ef', '0', null, null, '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('36', '48794687976487@163.com', 'ef', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('37', '48794687976487@163.com', 'dfas', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('38', '48794687976487@163.com', '23', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('39', '48794687976487@163.com', '23', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('40', '48794687976487@163.com', 'qw', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('41', '48794687976487@163.com', '23', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('42', '48794687976487@163.com', 'sdf', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('43', '48794687976487@163.com', 'asdf', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('44', '48794687976487@163.com', 'we', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('45', '48794687976487@163.com', 'qw', '0', null, null, '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('46', '48794687976487@163.com', 'wf', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('47', '48794687976487@163.com', 'asd', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('48', '48794687976487@163.com', 'wefsdf', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('49', '48794687976487@163.com', 'f', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('50', '48794687976487@163.com', 'wef', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('51', '48794687976487@163.com', 'df', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('52', '48794687976487@163.com', '爱上丰富', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('53', '48794687976487@163.com', '位符', '0', null, null, '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('54', '48794687976487@163.com', ';kl', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('55', '48794687976487@163.com', 'fsd', '0', null, '2019-01-18', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('56', '48794687976487@163.com', 'wqw', '0', null, '2019-01-19', '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('57', '48794687976487@163.com', 'f', '0', null, null, '40308', '0', '腾讯视频', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('58', 'xxxx', 'xxxx', '0', null, '2019-01-19', '40309', '0', 'xxxxx', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('59', 'www', 'ww', '0', null, '2019-01-19', '40309', '0', 'wwww', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('60', 'www', 'ww', '0', null, '2019-01-19', '40309', '0', 'wwww', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('61', 'eee', 'ee', '0', null, '2019-01-19', '40309', '0', 'eeee', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('62', '212', '121', '0', null, '2019-01-19', '40309', '0', '121', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');
INSERT INTO `so_account` VALUES ('63', '23', '123', '0', null, '2019-01-19', '40310', '0', '123', '0', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '1');

-- ----------------------------
-- Table structure for so_invitation_code
-- ----------------------------
DROP TABLE IF EXISTS `so_invitation_code`;
CREATE TABLE `so_invitation_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid` int(11) DEFAULT '0',
  `wx_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_index` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of so_invitation_code
-- ----------------------------
INSERT INTO `so_invitation_code` VALUES ('31', '933UF', '1', '40292', '1');
INSERT INTO `so_invitation_code` VALUES ('32', '3gU2G', '1', '40292', '1');
INSERT INTO `so_invitation_code` VALUES ('33', '7PnU5', '0', null, '0');
INSERT INTO `so_invitation_code` VALUES ('34', '3MVPy', '0', null, '0');
INSERT INTO `so_invitation_code` VALUES ('35', '59121', '0', null, '0');
INSERT INTO `so_invitation_code` VALUES ('36', '9Ojc1', '0', null, '0');
INSERT INTO `so_invitation_code` VALUES ('37', 'mUW0o', '0', null, '0');
INSERT INTO `so_invitation_code` VALUES ('38', 'W2964', '0', null, '0');
INSERT INTO `so_invitation_code` VALUES ('39', '12ba6', '0', null, '0');
INSERT INTO `so_invitation_code` VALUES ('40', 'Kxyu0', '0', null, '0');

-- ----------------------------
-- Table structure for so_use_record
-- ----------------------------
DROP TABLE IF EXISTS `so_use_record`;
CREATE TABLE `so_use_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accuracy` int(11) DEFAULT NULL COMMENT '位置精准度',
  `wx_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of so_use_record
-- ----------------------------
INSERT INTO `so_use_record` VALUES ('47', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '0', '39.72684', '116.34159', '65', '40309', '27');
INSERT INTO `so_use_record` VALUES ('48', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '0', '39.72684', '116.34159', '65', '40309', '27');
INSERT INTO `so_use_record` VALUES ('49', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '0', '39.72684', '116.34159', '65', '40309', '26');
INSERT INTO `so_use_record` VALUES ('50', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '0', '39.72684', '116.34159', '65', '40309', '26');
INSERT INTO `so_use_record` VALUES ('51', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '0', '39.72684', '116.34159', '65', '40309', '27');
INSERT INTO `so_use_record` VALUES ('52', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '0', '39.72684', '116.34159', '65', '40309', '27');
INSERT INTO `so_use_record` VALUES ('53', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '0', '39.72684', '116.34159', '65', '40309', '27');
INSERT INTO `so_use_record` VALUES ('54', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '0', '39.72684', '116.34159', '65', '40309', '32');
INSERT INTO `so_use_record` VALUES ('55', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '0', '39.72684', '116.34159', '65', '40309', '26');
INSERT INTO `so_use_record` VALUES ('56', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '0', '39.72684', '116.34159', '65', '40309', '26');
INSERT INTO `so_use_record` VALUES ('57', '夏天夏天过去', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKrOicBUen9JgkvfeBVTGy6H4nZXj6DaQZfRa59vqx8mA9dUdqd7zqE2e6p4Ifg4v1YHIMVWEvenUA/132', '0', '39.72684', '116.34159', '65', '40309', '26');

-- ----------------------------
-- Table structure for so_wx_user
-- ----------------------------
DROP TABLE IF EXISTS `so_wx_user`;
CREATE TABLE `so_wx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户昵称',
  `gender` int(11) DEFAULT NULL COMMENT '用户的性别，值为1时是男性，值为2时是女性，值为0时是未知',
  `language` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户的语言，简体中文为zh_CN',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户所在城市',
  `province` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户所在省份',
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户所在国家',
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表132*132正方形头像），用户没有头像时该项为空。若用户更换头像，原有头像URL将失效。',
  `open_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth` int(11) DEFAULT '0' COMMENT '是否有权查看',
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of so_wx_user
-- ----------------------------
