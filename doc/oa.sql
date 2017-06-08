/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : oa

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-06-08 20:32:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `attendance`
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '出勤信息Id',
  `teacherId` int(11) NOT NULL COMMENT '用户Id',
  `morningStartTime` time NOT NULL COMMENT '早上上班时间',
  `morningEndTime` time NOT NULL COMMENT '早上下班时间',
  `afterStartTime` time NOT NULL COMMENT '下午上班时间',
  `afterEndTime` time NOT NULL COMMENT '下午下班时间',
  `result` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '考核状态‘正常上班’‘为正常上班’',
  PRIMARY KEY (`Id`),
  KEY `teacherId` (`teacherId`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of attendance
-- ----------------------------

-- ----------------------------
-- Table structure for `image`
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `teacherid` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------

-- ----------------------------
-- Table structure for `lectures`
-- ----------------------------
DROP TABLE IF EXISTS `lectures`;
CREATE TABLE `lectures` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '课程名字',
  `time` date NOT NULL COMMENT '课程日期',
  `teacherId` int(11) NOT NULL COMMENT '课程上课老师ID',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '课程类型',
  `grade` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '上课年级编号',
  PRIMARY KEY (`Id`),
  KEY `teacherId` (`teacherId`),
  CONSTRAINT `lectures_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of lectures
-- ----------------------------

-- ----------------------------
-- Table structure for `qingjia`
-- ----------------------------
DROP TABLE IF EXISTS `qingjia`;
CREATE TABLE `qingjia` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '请假信息编号',
  `teacherId` int(11) NOT NULL COMMENT '请假人Id',
  `startTime` time NOT NULL COMMENT '开始时间',
  `endTime` time NOT NULL COMMENT '结束时间',
  `reason` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '请假理由',
  `result` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '请假结果',
  PRIMARY KEY (`Id`),
  KEY `teacherId` (`teacherId`),
  CONSTRAINT `qingjia_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of qingjia
-- ----------------------------

-- ----------------------------
-- Table structure for `reimbursement`
-- ----------------------------
DROP TABLE IF EXISTS `reimbursement`;
CREATE TABLE `reimbursement` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公费编号',
  `type` varchar(20) NOT NULL COMMENT '公费类型',
  `purpose` varchar(20) DEFAULT NULL COMMENT '报销理由',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `money` double NOT NULL COMMENT '金额',
  `applicant` int(11) NOT NULL COMMENT '申请人Id',
  `applyTime` time NOT NULL COMMENT '申请时间',
  `verifyTime` time DEFAULT NULL COMMENT '审核时间',
  `verifyPerson` int(11) NOT NULL COMMENT '审核人Id',
  `result` varchar(20) DEFAULT NULL COMMENT '审核结果',
  PRIMARY KEY (`Id`),
  KEY `applicant` (`applicant`),
  KEY `verifyPerson` (`verifyPerson`),
  CONSTRAINT `reimbursement_ibfk_1` FOREIGN KEY (`applicant`) REFERENCES `users` (`Id`),
  CONSTRAINT `reimbursement_ibfk_2` FOREIGN KEY (`verifyPerson`) REFERENCES `users` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reimbursement
-- ----------------------------

-- ----------------------------
-- Table structure for `role_type`
-- ----------------------------
DROP TABLE IF EXISTS `role_type`;
CREATE TABLE `role_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_type
-- ----------------------------
INSERT INTO `role_type` VALUES ('1', '决策者');
INSERT INTO `role_type` VALUES ('2', '管理者');
INSERT INTO `role_type` VALUES ('3', '普通用户');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '登陆账户',
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户姓名',
  `type` int(20) NOT NULL COMMENT '用户种类--‘普通教师’‘部门领导’‘学校领导’',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `address` text COLLATE utf8_unicode_ci COMMENT '家庭住址',
  `entryTime` datetime DEFAULT NULL COMMENT '入职时间',
  `department` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '所在部门',
  `job` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '职位',
  `identificationId` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证号码',
  `email` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱账号',
  `qq` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'qq账号',
  `nativePlace` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '籍贯地址',
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `secondPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '第二手机号码',
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态--‘在职’‘离职’',
  `registerBatch` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '注册批次',
  `password` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `gender` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `username` (`username`),
  KEY `type` (`type`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`type`) REFERENCES `role_type` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
