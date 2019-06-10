/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : mydb

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 10/06/2019 11:11:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(11) NOT NULL COMMENT '外键：关联用户表主键',
  `defaultAddr` tinyint(1) NOT NULL COMMENT '是否默认地址',
  `nation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '国家',
  `province` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省区',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '市区',
  `country` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '县区',
  `street` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '街道',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userid`(`userid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 1, 1, '中国', '河南', '郑州', '金水区', '二环路', '瑞隆城7号楼601');
INSERT INTO `address` VALUES (2, 1, 0, '中国', '陕西', '西安', '北城区', '开元路', '文景小区1号楼202');
INSERT INTO `address` VALUES (3, 1, 0, '中国', '云南', '昆明', '盘龙区', '小康大道', '银河星辰3号楼402');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录账号',
  `userpass` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '登录密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  `age` int(11) DEFAULT NULL COMMENT '用户年龄',
  `gender` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户性别',
  `phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系方式',
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户邮箱',
  `userStatus` int(11) DEFAULT NULL COMMENT '用户状态：0正常 1锁定 2删除',
  `lastLogin` datetime DEFAULT NULL COMMENT '账号最后一次登录时间',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '最后一次修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', 20, '男', '18666666666', '', 0, NULL, '', '2019-05-16 10:49:26', '2019-06-06 15:39:59');
INSERT INTO `users` VALUES (2, 'damu', 'damu', '大慕', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2019-05-16 10:49:26', NULL);
INSERT INTO `users` VALUES (3, 'xiaomu', 'xiaomu', '小慕', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2019-05-16 10:49:50', NULL);
INSERT INTO `users` VALUES (4, 'houjuzhang', 'houjuzhang', '侯亮平', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2019-05-16 10:50:21', NULL);
INSERT INTO `users` VALUES (5, 'jichangming', 'jichangming', '季昌明', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2019-05-16 10:51:11', NULL);
INSERT INTO `users` VALUES (6, 'chenhai', 'chenhai', '陈海', NULL, NULL, NULL, NULL, 2, NULL, NULL, '2019-05-16 10:51:37', NULL);
INSERT INTO `users` VALUES (7, 'manager', '123456', 'managerA', 22, '男', '18666666666', '186@163.com', 0, '2019-05-30 17:12:37', NULL, '2019-05-30 17:12:37', '2019-05-30 17:12:37');
INSERT INTO `users` VALUES (9, 'joker', '123456', '小丑', 23, '男', '18666666666', 'joker@163.com', 0, '2019-05-30 17:23:22', NULL, '2019-05-30 17:23:22', '2019-05-30 17:23:22');

SET FOREIGN_KEY_CHECKS = 1;
