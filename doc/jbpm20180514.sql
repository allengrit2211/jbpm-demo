/*
Navicat MySQL Data Transfer

Source Server         : localhsot
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : jbpm

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-05-16 16:26:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attachment
-- ----------------------------
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accessType` int(11) DEFAULT NULL,
  `attachedAt` datetime DEFAULT NULL,
  `attachmentContentId` bigint(20) NOT NULL,
  `contentType` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `attachment_size` int(11) DEFAULT NULL,
  `attachedBy_id` varchar(255) DEFAULT NULL,
  `TaskData_Attachments_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd5xpm81gxg8n40167lbu5rbfb` (`attachedBy_id`),
  KEY `FKjj9psk52ifamilliyo16epwpc` (`TaskData_Attachments_Id`),
  CONSTRAINT `FKd5xpm81gxg8n40167lbu5rbfb` FOREIGN KEY (`attachedBy_id`) REFERENCES `organizationalentity` (`id`),
  CONSTRAINT `FKjj9psk52ifamilliyo16epwpc` FOREIGN KEY (`TaskData_Attachments_Id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attachment
-- ----------------------------

-- ----------------------------
-- Table structure for audittaskimpl
-- ----------------------------
DROP TABLE IF EXISTS `audittaskimpl`;
CREATE TABLE `audittaskimpl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activationTime` datetime DEFAULT NULL,
  `actualOwner` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `lastModificationDate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parentId` bigint(20) NOT NULL,
  `priority` int(11) NOT NULL,
  `processId` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `processSessionId` bigint(20) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `taskId` bigint(20) DEFAULT NULL,
  `workItemId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audittaskimpl
-- ----------------------------
INSERT INTO `audittaskimpl` VALUES ('1', '2018-05-13 05:54:06', '', '', '2018-05-13 05:54:06', 'org.default:artifact:1.0.0-SNAPSHOT', '1', null, '2018-05-13 05:54:08', 'Task1', '-1', '0', 'org.jbpm.examples.checklist.sample1', '7', '49', 'Ready', '1', '1');
INSERT INTO `audittaskimpl` VALUES ('2', '2018-05-13 05:56:32', '', '', '2018-05-13 05:56:32', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-13 05:56:32', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '8', '49', 'Created', '2', '2');
INSERT INTO `audittaskimpl` VALUES ('3', '2018-05-13 06:31:05', '', '', '2018-05-13 06:31:05', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-13 06:31:06', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '9', '52', 'Created', '3', '3');
INSERT INTO `audittaskimpl` VALUES ('4', '2018-05-13 06:42:27', '', '', '2018-05-13 06:42:27', 'org.default:artifact:1.0.0-SNAPSHOT', '1', null, '2018-05-13 06:42:27', 'Task1', '-1', '0', 'org.jbpm.examples.checklist.sample1', '10', '53', 'Ready', '4', '4');
INSERT INTO `audittaskimpl` VALUES ('5', '2018-05-13 09:16:56', '', '', '2018-05-13 09:16:56', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-13 09:16:56', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '11', '58', 'Created', '5', '5');
INSERT INTO `audittaskimpl` VALUES ('6', '2018-05-13 09:43:23', '', '', '2018-05-13 09:43:23', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-13 09:43:24', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '12', '58', 'Created', '6', '6');
INSERT INTO `audittaskimpl` VALUES ('7', '2018-05-13 10:00:31', 'admin', 'admin', '2018-05-13 10:00:31', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-13 11:34:39', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '13', '59', 'Completed', '7', '7');
INSERT INTO `audittaskimpl` VALUES ('8', '2018-05-13 11:34:39', '', '', '2018-05-13 11:34:39', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-13 11:34:39', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '13', '63', 'Ready', '8', '8');
INSERT INTO `audittaskimpl` VALUES ('9', '2018-05-13 11:34:39', 'mary', '', '2018-05-13 11:34:39', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-13 15:13:03', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '13', '63', 'Reserved', '9', '9');
INSERT INTO `audittaskimpl` VALUES ('10', '2018-05-13 12:10:46', 'admin', 'admin', '2018-05-13 12:10:46', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-13 15:17:56', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '14', '68', 'Completed', '10', '10');
INSERT INTO `audittaskimpl` VALUES ('11', '2018-05-13 12:47:12', 'admin', 'admin', '2018-05-13 12:47:12', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-13 12:53:39', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '15', '72', 'Completed', '11', '11');
INSERT INTO `audittaskimpl` VALUES ('12', '2018-05-13 12:53:38', '', '', '2018-05-13 12:53:38', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-13 12:53:39', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '15', '73', 'Ready', '12', '12');
INSERT INTO `audittaskimpl` VALUES ('13', '2018-05-13 12:53:39', 'john', '', '2018-05-13 12:53:39', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-13 13:11:03', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '15', '73', 'Completed', '13', '13');
INSERT INTO `audittaskimpl` VALUES ('14', '2018-05-13 15:01:21', 'john', 'john', '2018-05-13 15:01:21', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-13 15:02:11', 'john', '-1', '0', 'mytest.helloworldScriptTask', '16', '83', 'Completed', '14', '14');
INSERT INTO `audittaskimpl` VALUES ('15', '2018-05-13 15:02:10', 'mary', 'mary', '2018-05-13 15:02:10', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-13 15:14:28', 'mary', '-1', '0', 'mytest.helloworldScriptTask', '16', '83', 'Completed', '15', '15');
INSERT INTO `audittaskimpl` VALUES ('16', '2018-05-13 15:14:28', '', '', '2018-05-13 15:14:28', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-13 15:14:28', 'tmp', '-1', '0', 'mytest.helloworldScriptTask', '16', '84', 'Ready', '16', '16');
INSERT INTO `audittaskimpl` VALUES ('17', '2018-05-13 15:15:37', 'admin', 'admin', '2018-05-13 15:15:37', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-13 15:17:51', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '17', '84', 'Completed', '17', '17');
INSERT INTO `audittaskimpl` VALUES ('18', '2018-05-13 15:17:50', 'john', '', '2018-05-13 15:17:50', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-13 15:18:13', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '17', '84', 'Reserved', '18', '18');
INSERT INTO `audittaskimpl` VALUES ('19', '2018-05-13 15:17:50', '', '', '2018-05-13 15:17:50', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-13 15:17:51', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '17', '84', 'Ready', '19', '19');
INSERT INTO `audittaskimpl` VALUES ('20', '2018-05-13 15:17:55', 'mary', '', '2018-05-13 15:17:55', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-15 17:43:50', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '14', '84', 'Reserved', '20', '20');
INSERT INTO `audittaskimpl` VALUES ('21', '2018-05-13 15:17:55', '', '', '2018-05-13 15:17:55', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-13 15:17:55', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '14', '84', 'Ready', '21', '21');
INSERT INTO `audittaskimpl` VALUES ('22', '2018-05-13 15:35:25', 'john', 'john', '2018-05-13 15:35:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-13 15:35:43', 'john', '-1', '0', 'mytest.helloworldScriptTask', '18', '85', 'Completed', '22', '22');
INSERT INTO `audittaskimpl` VALUES ('23', '2018-05-13 15:35:43', 'mary', 'mary', '2018-05-13 15:35:43', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-13 15:36:21', 'mary', '-1', '0', 'mytest.helloworldScriptTask', '18', '85', 'Completed', '23', '23');
INSERT INTO `audittaskimpl` VALUES ('24', '2018-05-13 15:36:21', '', '', '2018-05-13 15:36:21', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-13 15:36:21', 'tmp', '-1', '0', 'mytest.helloworldScriptTask', '18', '85', 'Ready', '24', '24');
INSERT INTO `audittaskimpl` VALUES ('25', '2018-05-13 15:38:14', 'admin', 'admin', '2018-05-13 15:38:14', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-13 15:38:54', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '19', '85', 'Completed', '25', '25');
INSERT INTO `audittaskimpl` VALUES ('26', '2018-05-13 15:38:54', '', '', '2018-05-13 15:38:54', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-13 15:38:54', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '19', '85', 'Ready', '26', '26');
INSERT INTO `audittaskimpl` VALUES ('27', '2018-05-13 15:38:54', 'john', '', '2018-05-13 15:38:54', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-13 16:48:17', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '19', '85', 'Reserved', '27', '27');
INSERT INTO `audittaskimpl` VALUES ('28', '2018-05-13 16:36:19', 'john', 'john', '2018-05-13 16:36:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-13 16:36:49', 'john', '-1', '0', 'mytest.helloworldScriptTask', '20', '93', 'Completed', '28', '28');
INSERT INTO `audittaskimpl` VALUES ('29', '2018-05-13 16:36:48', 'mary', 'mary', '2018-05-13 16:36:48', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-13 16:37:10', 'mary', '-1', '0', 'mytest.helloworldScriptTask', '20', '93', 'Completed', '29', '29');
INSERT INTO `audittaskimpl` VALUES ('30', '2018-05-13 16:37:10', '', '', '2018-05-13 16:37:10', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-13 16:37:10', 'tmp', '-1', '0', 'mytest.helloworldScriptTask', '20', '93', 'Ready', '30', '30');
INSERT INTO `audittaskimpl` VALUES ('31', '2018-05-13 16:42:33', 'admin', 'admin', '2018-05-13 16:42:33', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-13 16:42:47', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '21', '94', 'Completed', '31', '31');
INSERT INTO `audittaskimpl` VALUES ('32', '2018-05-13 16:42:46', '', '', '2018-05-13 16:42:46', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-13 16:42:47', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '21', '94', 'Ready', '32', '32');
INSERT INTO `audittaskimpl` VALUES ('33', '2018-05-13 16:42:47', 'john', '', '2018-05-13 16:42:47', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-13 16:45:44', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '21', '94', 'Reserved', '33', '33');
INSERT INTO `audittaskimpl` VALUES ('34', '2018-05-13 20:09:08', 'admin', 'admin', '2018-05-13 20:09:08', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-13 20:10:01', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '22', '94', 'Completed', '34', '34');
INSERT INTO `audittaskimpl` VALUES ('35', '2018-05-13 20:10:01', '', '', '2018-05-13 20:10:01', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-13 20:10:01', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '22', '94', 'Ready', '35', '35');
INSERT INTO `audittaskimpl` VALUES ('36', '2018-05-13 20:10:01', 'mary', '', '2018-05-13 20:10:01', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-14 09:30:48', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '22', '94', 'Reserved', '36', '36');
INSERT INTO `audittaskimpl` VALUES ('37', '2018-05-14 08:14:19', 'admin', 'admin', '2018-05-14 08:14:19', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-14 08:14:56', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '32', '101', 'Completed', '37', '46');
INSERT INTO `audittaskimpl` VALUES ('38', '2018-05-14 08:14:56', '', '', '2018-05-14 08:14:56', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-14 08:14:56', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '32', '101', 'Ready', '38', '47');
INSERT INTO `audittaskimpl` VALUES ('39', '2018-05-14 08:14:56', 'john', '', '2018-05-14 08:14:56', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-14 08:17:27', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '32', '101', 'Reserved', '39', '48');
INSERT INTO `audittaskimpl` VALUES ('40', '2018-05-14 08:18:43', 'admin', 'admin', '2018-05-14 08:18:43', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-14 08:20:10', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '33', '101', 'Completed', '40', '49');
INSERT INTO `audittaskimpl` VALUES ('41', '2018-05-14 08:20:10', '', '', '2018-05-14 08:20:10', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-14 08:20:10', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '33', '101', 'Ready', '41', '50');
INSERT INTO `audittaskimpl` VALUES ('42', '2018-05-14 08:20:10', 'john', '', '2018-05-14 08:20:10', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate admin.', null, '2018-05-14 08:22:52', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '33', '101', 'Reserved', '42', '51');
INSERT INTO `audittaskimpl` VALUES ('43', '2018-05-14 09:54:38', '', '', '2018-05-14 09:54:38', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-14 09:54:39', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '38', '108', 'Ready', '43', '56');
INSERT INTO `audittaskimpl` VALUES ('44', '2018-05-14 10:00:55', 'tmp', 'tmp', '2018-05-14 10:00:55', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-14 11:54:47', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '39', '109', 'Completed', '44', '57');
INSERT INTO `audittaskimpl` VALUES ('45', '2018-05-14 11:54:47', 'mary', '', '2018-05-14 11:54:47', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate tmp.', null, '2018-05-14 13:33:51', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '39', '109', 'Completed', '45', '58');
INSERT INTO `audittaskimpl` VALUES ('46', '2018-05-14 11:54:47', 'john', '', '2018-05-14 11:54:47', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate tmp.', null, '2018-05-14 13:33:15', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '39', '109', 'Completed', '46', '59');
INSERT INTO `audittaskimpl` VALUES ('47', '2018-05-14 13:34:35', 'tmp', 'tmp', '2018-05-14 13:34:35', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-14 13:34:52', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '40', '110', 'Completed', '47', '60');
INSERT INTO `audittaskimpl` VALUES ('48', '2018-05-14 13:34:51', 'tmp', '', '2018-05-14 13:34:51', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate tmp.', null, '2018-05-14 13:35:32', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '40', '110', 'Completed', '48', '61');
INSERT INTO `audittaskimpl` VALUES ('49', '2018-05-14 13:34:52', 'john', '', '2018-05-14 13:34:52', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate tmp.', null, '2018-05-14 13:36:00', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '40', '110', 'Reserved', '49', '62');
INSERT INTO `audittaskimpl` VALUES ('50', '2018-05-14 13:38:55', 'john', 'john', '2018-05-14 13:38:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-14 13:39:14', 'john', '-1', '0', 'mytest.helloworldScriptTask', '41', '110', 'Completed', '50', '63');
INSERT INTO `audittaskimpl` VALUES ('51', '2018-05-14 13:39:14', 'mary', 'mary', '2018-05-14 13:39:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-14 13:39:45', 'mary', '-1', '0', 'mytest.helloworldScriptTask', '41', '110', 'Completed', '51', '64');
INSERT INTO `audittaskimpl` VALUES ('52', '2018-05-14 13:39:45', '', '', '2018-05-14 13:39:45', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-14 13:39:45', 'tmp', '-1', '0', 'mytest.helloworldScriptTask', '41', '110', 'Ready', '52', '65');
INSERT INTO `audittaskimpl` VALUES ('53', '2018-05-14 18:18:32', 'lee', '', '2018-05-14 18:18:32', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-14 18:21:18', '业务部审核', '-1', '0', 'src.processTest', '42', '122', 'Completed', '53', '66');
INSERT INTO `audittaskimpl` VALUES ('54', '2018-05-14 18:21:18', 'mary', '', '2018-05-14 18:21:18', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-14 18:21:37', 'HR审核', '-1', '0', 'src.processTest', '42', '122', 'Reserved', '54', '67');
INSERT INTO `audittaskimpl` VALUES ('55', '2018-05-14 18:21:18', '', '', '2018-05-14 18:21:18', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-14 18:21:18', 'PM 审核', '-1', '0', 'src.processTest', '42', '122', 'Ready', '55', '68');
INSERT INTO `audittaskimpl` VALUES ('56', '2018-05-15 17:41:48', 'john', 'john', '2018-05-15 17:41:48', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-15 17:41:51', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '43', '131', 'Reserved', '56', '69');
INSERT INTO `audittaskimpl` VALUES ('57', '2018-05-15 17:42:24', 'john', 'john', '2018-05-15 17:42:24', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-15 17:42:38', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '44', '131', 'Completed', '57', '70');
INSERT INTO `audittaskimpl` VALUES ('58', '2018-05-15 17:42:38', 'mary', '', '2018-05-15 17:42:38', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate john.', null, '2018-05-15 17:43:02', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '44', '131', 'Completed', '58', '71');
INSERT INTO `audittaskimpl` VALUES ('59', '2018-05-15 17:42:38', 'john', '', '2018-05-15 17:42:38', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate john.', null, '2018-05-15 17:45:11', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '44', '131', 'Completed', '59', '72');
INSERT INTO `audittaskimpl` VALUES ('60', '2018-05-15 20:27:51', 'lee', 'lee', '2018-05-15 20:27:51', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-15 20:27:53', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '45', '133', 'Reserved', '60', '73');
INSERT INTO `audittaskimpl` VALUES ('61', '2018-05-15 20:31:25', 'lee', 'lee', '2018-05-15 20:31:25', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-15 20:31:26', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '46', '133', 'Reserved', '61', '74');
INSERT INTO `audittaskimpl` VALUES ('62', '2018-05-15 20:50:57', 'lee', 'lee', '2018-05-15 20:50:57', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-15 20:50:59', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '47', '134', 'Reserved', '62', '75');
INSERT INTO `audittaskimpl` VALUES ('63', '2018-05-15 20:58:13', 'lee', 'lee', '2018-05-15 20:58:13', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-15 20:58:14', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '48', '135', 'Reserved', '63', '76');
INSERT INTO `audittaskimpl` VALUES ('64', '2018-05-15 21:55:55', 'john', 'john', '2018-05-15 21:55:55', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-15 21:55:56', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '49', '136', 'Reserved', '64', '77');
INSERT INTO `audittaskimpl` VALUES ('65', '2018-05-15 22:06:29', 'john', 'john', '2018-05-15 22:06:29', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-15 22:07:05', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '50', '138', 'Completed', '65', '78');
INSERT INTO `audittaskimpl` VALUES ('66', '2018-05-15 22:07:05', 'mary', '', '2018-05-15 22:07:05', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate john.', null, '2018-05-15 22:07:28', 'HR Evaluation', '-1', '0', 'com.sample.evaluation', '50', '138', 'Reserved', '66', '79');
INSERT INTO `audittaskimpl` VALUES ('67', '2018-05-15 22:07:05', '', '', '2018-05-15 22:07:05', 'org.default:artifact:1.0.0-SNAPSHOT', 'You need to evaluate john.', null, '2018-05-15 22:07:05', 'PM Evaluation', '-1', '0', 'com.sample.evaluation', '50', '138', 'Ready', '67', '80');
INSERT INTO `audittaskimpl` VALUES ('68', '2018-05-16 13:42:42', 'lee', '', '2018-05-16 13:42:42', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 13:44:28', '业务部审核', '-1', '0', 'src.processTest', '51', '139', 'Completed', '68', '81');
INSERT INTO `audittaskimpl` VALUES ('69', '2018-05-16 13:44:28', 'mary', '', '2018-05-16 13:44:28', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 13:45:00', 'HR审核', '-1', '0', 'src.processTest', '51', '139', 'Completed', '69', '82');
INSERT INTO `audittaskimpl` VALUES ('70', '2018-05-16 13:44:28', 'john', '', '2018-05-16 13:44:28', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 13:45:45', 'PM 审核', '-1', '0', 'src.processTest', '51', '139', 'Completed', '70', '83');
INSERT INTO `audittaskimpl` VALUES ('71', '2018-05-16 13:45:44', '', '', '2018-05-16 13:45:44', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 13:45:45', '风控部门审核', '-1', '0', 'src.processTest', '51', '139', 'Ready', '71', '84');
INSERT INTO `audittaskimpl` VALUES ('72', '2018-05-16 13:54:00', '', '', '2018-05-16 13:54:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 13:54:01', '业务部审核', '-1', '0', 'src.processTest', '52', '140', 'Ready', '72', '85');
INSERT INTO `audittaskimpl` VALUES ('73', '2018-05-16 14:13:39', 'lee', '', '2018-05-16 14:13:39', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 14:14:14', '业务部审核', '-1', '0', 'src.processTest', '53', '141', 'Completed', '73', '86');
INSERT INTO `audittaskimpl` VALUES ('74', '2018-05-16 14:14:14', 'mary', '', '2018-05-16 14:14:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 14:15:10', 'HR审核', '-1', '0', 'src.processTest', '53', '141', 'Completed', '74', '87');
INSERT INTO `audittaskimpl` VALUES ('75', '2018-05-16 14:14:14', 'john', '', '2018-05-16 14:14:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 14:16:30', 'PM 审核', '-1', '0', 'src.processTest', '53', '141', 'Reserved', '75', '88');
INSERT INTO `audittaskimpl` VALUES ('76', '2018-05-16 14:25:58', 'lee', '', '2018-05-16 14:25:58', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 14:26:25', '业务部审核', '-1', '0', 'src.processTest', '54', '142', 'Completed', '76', '89');
INSERT INTO `audittaskimpl` VALUES ('77', '2018-05-16 14:26:25', 'john', '', '2018-05-16 14:26:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 14:28:53', 'PM 审核', '-1', '0', 'src.processTest', '54', '142', 'Completed', '77', '90');
INSERT INTO `audittaskimpl` VALUES ('78', '2018-05-16 14:26:25', 'mary', '', '2018-05-16 14:26:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 14:27:22', 'HR审核', '-1', '0', 'src.processTest', '54', '142', 'Completed', '78', '91');
INSERT INTO `audittaskimpl` VALUES ('79', '2018-05-16 14:28:53', 'Lars', '', '2018-05-16 14:28:53', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 14:32:19', '风控部门审核', '-1', '0', 'src.processTest', '54', '142', 'Completed', '79', '92');
INSERT INTO `audittaskimpl` VALUES ('80', '2018-05-16 14:32:19', 'caiwu', '', '2018-05-16 14:32:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 14:34:30', '财务部审核', '-1', '0', 'src.processTest', '54', '142', 'Completed', '80', '93');
INSERT INTO `audittaskimpl` VALUES ('81', '2018-05-16 14:34:29', 'Baker', '', '2018-05-16 14:34:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 14:42:49', 'CEＯ审核', '-1', '0', 'src.processTest', '54', '142', 'Completed', '81', '94');
INSERT INTO `audittaskimpl` VALUES ('82', '2018-05-16 14:42:48', '', '', '2018-05-16 14:42:48', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 14:42:49', '总裁审核', '-1', '0', 'src.processTest', '54', '142', 'Ready', '82', '95');
INSERT INTO `audittaskimpl` VALUES ('83', '2018-05-16 14:50:00', '', '', '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 14:50:00', '业务部审核', '-1', '0', 'src.processTest', '55', '142', 'Ready', '83', '96');
INSERT INTO `audittaskimpl` VALUES ('84', '2018-05-16 14:58:44', 'lee', '', '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 15:01:48', '业务部审核', '-1', '0', 'src.processTest', '56', '142', 'Completed', '84', '97');
INSERT INTO `audittaskimpl` VALUES ('85', '2018-05-16 15:01:48', 'mary', '', '2018-05-16 15:01:48', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 15:02:43', 'HR审核', '-1', '0', 'src.processTest', '56', '142', 'Completed', '85', '98');
INSERT INTO `audittaskimpl` VALUES ('86', '2018-05-16 15:01:48', 'john', '', '2018-05-16 15:01:48', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 15:03:03', 'PM 审核', '-1', '0', 'src.processTest', '56', '142', 'Completed', '86', '99');
INSERT INTO `audittaskimpl` VALUES ('87', '2018-05-16 15:03:03', 'Lars', '', '2018-05-16 15:03:03', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 15:03:54', '风控部门审核', '-1', '0', 'src.processTest', '56', '142', 'Completed', '87', '100');
INSERT INTO `audittaskimpl` VALUES ('88', '2018-05-16 15:03:54', 'caiwu', '', '2018-05-16 15:03:54', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 15:04:19', '财务部审核', '-1', '0', 'src.processTest', '56', '142', 'Completed', '88', '101');
INSERT INTO `audittaskimpl` VALUES ('89', '2018-05-16 15:04:19', 'Baker', '', '2018-05-16 15:04:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 15:05:00', 'CEＯ审核', '-1', '0', 'src.processTest', '56', '142', 'Completed', '89', '102');
INSERT INTO `audittaskimpl` VALUES ('90', '2018-05-16 15:05:00', 'BOSS', 'BOSS', '2018-05-16 15:05:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', null, '2018-05-16 15:06:09', '总裁审核', '-1', '0', 'src.processTest', '56', '142', 'Completed', '90', '103');
INSERT INTO `audittaskimpl` VALUES ('91', '2018-05-16 15:06:50', 'tmp', 'tmp', '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', 'Please perform a self-evalutation.', null, '2018-05-16 15:06:50', 'Self Evaluation', '-1', '0', 'com.sample.evaluation', '57', '142', 'Reserved', '91', '104');

-- ----------------------------
-- Table structure for bamtasksummary
-- ----------------------------
DROP TABLE IF EXISTS `bamtasksummary`;
CREATE TABLE `bamtasksummary` (
  `pk` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdDate` datetime DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `startDate` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `taskId` bigint(20) NOT NULL,
  `taskName` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bamtasksummary
-- ----------------------------

-- ----------------------------
-- Table structure for booleanexpression
-- ----------------------------
DROP TABLE IF EXISTS `booleanexpression`;
CREATE TABLE `booleanexpression` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `expression` longtext,
  `type` varchar(255) DEFAULT NULL,
  `Escalation_Constraints_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqth56a8k6d8pv6ngsu2vjp4kj` (`Escalation_Constraints_Id`),
  CONSTRAINT `FKqth56a8k6d8pv6ngsu2vjp4kj` FOREIGN KEY (`Escalation_Constraints_Id`) REFERENCES `escalation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of booleanexpression
-- ----------------------------

-- ----------------------------
-- Table structure for casefiledatalog
-- ----------------------------
DROP TABLE IF EXISTS `casefiledatalog`;
CREATE TABLE `casefiledatalog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `caseDefId` varchar(255) DEFAULT NULL,
  `caseId` varchar(255) DEFAULT NULL,
  `itemName` varchar(255) DEFAULT NULL,
  `itemType` varchar(255) DEFAULT NULL,
  `itemValue` varchar(255) DEFAULT NULL,
  `lastModified` datetime DEFAULT NULL,
  `lastModifiedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of casefiledatalog
-- ----------------------------

-- ----------------------------
-- Table structure for caseidinfo
-- ----------------------------
DROP TABLE IF EXISTS `caseidinfo`;
CREATE TABLE `caseidinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `caseIdPrefix` varchar(255) DEFAULT NULL,
  `currentValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKftvt225gyxpjnl3d06alqkqyj` (`caseIdPrefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caseidinfo
-- ----------------------------

-- ----------------------------
-- Table structure for caseroleassignmentlog
-- ----------------------------
DROP TABLE IF EXISTS `caseroleassignmentlog`;
CREATE TABLE `caseroleassignmentlog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `caseId` varchar(255) DEFAULT NULL,
  `entityId` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caseroleassignmentlog
-- ----------------------------

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('1', 0xACED00057A000001370A060807100718004AB501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A67ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740005656E2D554B740001317400055461736B317400055461736B3174000566616C73657400066163746F72317852750A100A064C6F63616C6510001A04000000000A110A07436F6D6D656E7410001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('2', 0xACED00057A000001540A060807100718004AE401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9501ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000005770400000005740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C7365740000740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852630A110A07436F6D6D656E7410001A04000000000A130A09536B69707061626C6510001A04000000010A110A074163746F72496410001A04000000020A120A085461736B4E616D6510001A04000000030A120A084E6F64654E616D6510001A0400000004);
INSERT INTO `content` VALUES ('3', 0xACED00057A000001540A060807100718004AE401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9501ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000005770400000005740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C7365740000740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852630A110A07436F6D6D656E7410001A04000000000A130A09536B69707061626C6510001A04000000010A110A074163746F72496410001A04000000020A120A085461736B4E616D6510001A04000000030A120A084E6F64654E616D6510001A0400000004);
INSERT INTO `content` VALUES ('4', 0xACED00057A000001370A060807100718004AB501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A67ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740005656E2D554B740001317400055461736B317400055461736B3174000566616C73657400066163746F72317852750A100A064C6F63616C6510001A04000000000A110A07436F6D6D656E7410001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('5', 0xACED00057A000001540A060807100718004AE401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9501ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000005770400000005740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C7365740000740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852630A110A07436F6D6D656E7410001A04000000000A130A09536B69707061626C6510001A04000000010A110A074163746F72496410001A04000000020A120A085461736B4E616D6510001A04000000030A120A084E6F64654E616D6510001A0400000004);
INSERT INTO `content` VALUES ('6', 0xACED00057A000001540A060807100718004AE401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9501ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000005770400000005740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C7365740000740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852630A110A07436F6D6D656E7410001A04000000000A130A09536B69707061626C6510001A04000000010A110A074163746F72496410001A04000000020A120A085461736B4E616D6510001A04000000030A120A084E6F64654E616D6510001A0400000004);
INSERT INTO `content` VALUES ('7', 0xACED00057A0000018B0A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C736574000561646D696E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('8', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000778520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('9', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('10', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('11', 0xACED00057A0000018B0A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C736574000561646D696E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('12', 0xACED00057A0000018B0A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C736574000561646D696E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('13', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000B78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('14', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('15', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('16', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000D78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('17', 0xACED000577CA0A060807100718004A9601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A48ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000027704000000027400046A6F686E7400046A6F686E7852270A120A084E6F64654E616D6510001A04000000000A110A074163746F72496410001A0400000001);
INSERT INTO `content` VALUES ('18', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000E78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('19', 0xACED000577CA0A060807100718004A9601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A48ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000027704000000027400046D6172797400046D6172797852270A120A084E6F64654E616D6510001A04000000000A110A074163746F72496410001A0400000001);
INSERT INTO `content` VALUES ('20', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000F78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('21', 0xACED000577CE0A060807100718004A9A01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A4CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000002770400000002740003746D7074000973616C65732D7265707852270A120A084E6F64654E616D6510001A04000000000A110A074163746F72496410001A0400000001);
INSERT INTO `content` VALUES ('22', 0xACED00057A0000018B0A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C736574000561646D696E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('23', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000001178520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('24', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('25', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('26', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000A78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('27', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('28', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('29', 0xACED000577CA0A060807100718004A9601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A48ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000027704000000027400046A6F686E7400046A6F686E7852270A120A084E6F64654E616D6510001A04000000000A110A074163746F72496410001A0400000001);
INSERT INTO `content` VALUES ('30', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000001678520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('31', 0xACED000577CA0A060807100718004A9601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A48ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000027704000000027400046D6172797400046D6172797852270A120A084E6F64654E616D6510001A04000000000A110A074163746F72496410001A0400000001);
INSERT INTO `content` VALUES ('32', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000001778520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('33', 0xACED000577CE0A060807100718004A9A01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A4CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000002770400000002740003746D7074000973616C65732D7265707852270A120A084E6F64654E616D6510001A04000000000A110A074163746F72496410001A0400000001);
INSERT INTO `content` VALUES ('34', 0xACED00057A0000018B0A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C736574000561646D696E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('35', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000001978520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('36', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('37', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('38', 0xACED000577CA0A060807100718004A9601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A48ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000027704000000027400046A6F686E7400046A6F686E7852270A120A084E6F64654E616D6510001A04000000000A110A074163746F72496410001A0400000001);
INSERT INTO `content` VALUES ('39', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000001C78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('40', 0xACED000577CA0A060807100718004A9601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A48ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000027704000000027400046D6172797400046D6172797852270A120A084E6F64654E616D6510001A04000000000A110A074163746F72496410001A0400000001);
INSERT INTO `content` VALUES ('41', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000001D78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('42', 0xACED000577CE0A060807100718004A9A01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A4CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000002770400000002740003746D7074000973616C65732D7265707852270A120A084E6F64654E616D6510001A04000000000A110A074163746F72496410001A0400000001);
INSERT INTO `content` VALUES ('43', 0xACED00057A0000018B0A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C736574000561646D696E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('44', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000001F78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('45', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('46', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('47', 0xACED00057A0000018B0A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C736574000561646D696E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('48', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000002278520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('49', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('50', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('51', 0xACED00057A0000018B0A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C736574000561646D696E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('52', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000002578520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('53', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('54', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('55', 0xACED00057A0000018B0A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C736574000561646D696E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('56', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000002878520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('57', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('58', 0xACED00057A0000017F0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('59', 0xACED00057A0000018B0A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C736574000561646D696E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('60', 0xACED00057A000001890A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C7365740003746D707852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('61', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000002C78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('62', 0xACED00057A0000017D0A060807100718004AFB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAC01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740019596F75206E65656420746F206576616C7561746520746D702E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('63', 0xACED00057A0000017D0A060807100718004AFB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAC01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740019596F75206E65656420746F206576616C7561746520746D702E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('64', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000002E78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('65', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000002D78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('66', 0xACED00057A000001890A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C7365740003746D707852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('67', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000002F78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('68', 0xACED00057A0000017D0A060807100718004AFB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAC01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740019596F75206E65656420746F206576616C7561746520746D702E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('69', 0xACED00057A0000017D0A060807100718004AFB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAC01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740019596F75206E65656420746F206576616C7561746520746D702E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('70', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000003078520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('71', 0xACED000577CA0A060807100718004A9601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A48ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000027704000000027400046A6F686E7400046A6F686E7852270A120A084E6F64654E616D6510001A04000000000A110A074163746F72496410001A0400000001);
INSERT INTO `content` VALUES ('72', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000003278520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('73', 0xACED000577CA0A060807100718004A9601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A48ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000027704000000027400046D6172797400046D6172797852270A120A084E6F64654E616D6510001A04000000000A110A074163746F72496410001A0400000001);
INSERT INTO `content` VALUES ('74', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000003378520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('75', 0xACED000577CE0A060807100718004A9A01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A4CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000002770400000002740003746D7074000973616C65732D7265707852270A120A084E6F64654E616D6510001A04000000000A110A074163746F72496410001A0400000001);
INSERT INTO `content` VALUES ('76', 0xACED00057A0000011C0A060807100718004ABF01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A71ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000FE4B89AE58AA1E983A8E5AEA1E6A0B874000FE4B89AE58AA1E983A8E5AEA1E6A0B8740009E4B89AE58AA1E983A87852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('77', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000003578520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('78', 0xACED00057A000001070A060807100718004AAA01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000004770400000004740004747275657400084852E5AEA1E6A0B87400084852E5AEA1E6A0B874000248527852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('79', 0xACED00057A000001080A060807100718004AAB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5DACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740008504DE5AEA1E6A0B8740009504D20E5AEA1E6A0B8740002504D7852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('80', 0xACED00057A0000018A0A060807100718004A8802080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB901ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C73657400046A6F686E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('81', 0xACED00057A0000018A0A060807100718004A8802080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB901ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C73657400046A6F686E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('82', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000003978520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('83', 0xACED00057A0000017E0A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001A596F75206E65656420746F206576616C75617465206A6F686E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('84', 0xACED00057A0000017E0A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001A596F75206E65656420746F206576616C75617465206A6F686E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('85', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000003A78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('86', 0xACED000577F10A060807100718004AD601080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000003B78520E0A0C0A02696410001A0400000000);
INSERT INTO `content` VALUES ('87', 0xACED00057A000001890A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C73657400036C65657852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('88', 0xACED00057A000001890A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C73657400036C65657852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('89', 0xACED00057A000001890A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C73657400036C65657852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('90', 0xACED00057A000001890A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C73657400036C65657852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('91', 0xACED00057A0000018A0A060807100718004A8802080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB901ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C73657400046A6F686E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('92', 0xACED00057A0000018A0A060807100718004A8802080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB901ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C73657400046A6F686E7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);
INSERT INTO `content` VALUES ('93', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000327371007E00020000004171007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('94', 0xACED00057A0000017E0A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001A596F75206E65656420746F206576616C75617465206A6F686E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000566616C736574000248527852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('95', 0xACED00057A0000017E0A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001A596F75206E65656420746F206576616C75617465206A6F686E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E74000566616C7365740002504D7852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A0747726F7570496410001A0400000005);
INSERT INTO `content` VALUES ('96', 0xACED00057A0000011C0A060807100718004ABF01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A71ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000FE4B89AE58AA1E983A8E5AEA1E6A0B874000FE4B89AE58AA1E983A8E5AEA1E6A0B8740009E4B89AE58AA1E983A87852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('97', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000337371007E00020000004471007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('98', 0xACED00057A000001070A060807100718004AAA01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000004770400000004740004747275657400084852E5AEA1E6A0B87400084852E5AEA1E6A0B874000248527852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('99', 0xACED00057A000001080A060807100718004AAB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5DACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740008504DE5AEA1E6A0B8740009504D20E5AEA1E6A0B8740002504D7852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('100', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000337371007E00020000004571007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('101', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000337371007E00020000004671007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('102', 0xACED00057A000001220A060807100718004AC501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A77ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740012E9A38EE68EA7E983A8E997A8E5AEA1E6A0B8740012E9A38EE68EA7E983A8E997A8E5AEA1E6A0B8740009E9A38EE68EA7E983A87852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('103', 0xACED00057A0000011C0A060807100718004ABF01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A71ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000FE4B89AE58AA1E983A8E5AEA1E6A0B874000FE4B89AE58AA1E983A8E5AEA1E6A0B8740009E4B89AE58AA1E983A87852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('104', 0xACED00057A0000011C0A060807100718004ABF01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A71ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000FE4B89AE58AA1E983A8E5AEA1E6A0B874000FE4B89AE58AA1E983A8E5AEA1E6A0B8740009E4B89AE58AA1E983A87852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('105', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000357371007E00020000004971007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('106', 0xACED00057A000001070A060807100718004AAA01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000004770400000004740004747275657400084852E5AEA1E6A0B87400084852E5AEA1E6A0B874000248527852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('107', 0xACED00057A000001080A060807100718004AAB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5DACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740008504DE5AEA1E6A0B8740009504D20E5AEA1E6A0B8740002504D7852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('108', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000357371007E00020000004A71007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('109', 0xACED00057A0000011C0A060807100718004ABF01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A71ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000FE4B89AE58AA1E983A8E5AEA1E6A0B874000FE4B89AE58AA1E983A8E5AEA1E6A0B8740009E4B89AE58AA1E983A87852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('110', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000367371007E00020000004C71007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('111', 0xACED00057A000001080A060807100718004AAB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5DACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740008504DE5AEA1E6A0B8740009504D20E5AEA1E6A0B8740002504D7852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('112', 0xACED00057A000001070A060807100718004AAA01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000004770400000004740004747275657400084852E5AEA1E6A0B87400084852E5AEA1E6A0B874000248527852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('113', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000367371007E00020000004E71007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('114', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000367371007E00020000004D71007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('115', 0xACED00057A000001220A060807100718004AC501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A77ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740012E9A38EE68EA7E983A8E997A8E5AEA1E6A0B8740012E9A38EE68EA7E983A8E997A8E5AEA1E6A0B8740009E9A38EE68EA7E983A87852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('116', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000367371007E00020000004F71007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('117', 0xACED00057A0000011C0A060807100718004ABF01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A71ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000FE8B4A2E58AA1E983A8E5AEA1E6A0B874000FE8B4A2E58AA1E983A8E5AEA1E6A0B8740009E8B4A2E58AA1E983A87852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('118', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000367371007E00020000005071007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('119', 0xACED00057A0000010E0A060807100718004AB101080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A63ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000B4345EFBCAFE5AEA1E6A0B874000B4345EFBCAFE5AEA1E6A0B874000343454F7852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('120', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000367371007E00020000005171007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('121', 0xACED00057A000001110A060807100718004AB401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A66ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740004424F535374000CE680BBE8A381E5AEA1E6A0B874000CE680BBE8A381E5AEA1E6A0B87852500A130A09536B69707061626C6510001A04000000000A110A074163746F72496410001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A0400000003);
INSERT INTO `content` VALUES ('122', 0xACED00057A0000011C0A060807100718004ABF01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A71ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000FE4B89AE58AA1E983A8E5AEA1E6A0B874000FE4B89AE58AA1E983A8E5AEA1E6A0B8740009E4B89AE58AA1E983A87852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('123', 0xACED00057A0000011C0A060807100718004ABF01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A71ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000FE4B89AE58AA1E983A8E5AEA1E6A0B874000FE4B89AE58AA1E983A8E5AEA1E6A0B8740009E4B89AE58AA1E983A87852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('124', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000387371007E00020000005471007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('125', 0xACED00057A000001070A060807100718004AAA01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000004770400000004740004747275657400084852E5AEA1E6A0B87400084852E5AEA1E6A0B874000248527852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('126', 0xACED00057A000001080A060807100718004AAB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5DACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740008504DE5AEA1E6A0B8740009504D20E5AEA1E6A0B8740002504D7852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('127', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000387371007E00020000005571007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('128', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000387371007E00020000005671007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('129', 0xACED00057A000001220A060807100718004AC501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A77ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740012E9A38EE68EA7E983A8E997A8E5AEA1E6A0B8740012E9A38EE68EA7E983A8E997A8E5AEA1E6A0B8740009E9A38EE68EA7E983A87852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('130', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000387371007E00020000005771007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('131', 0xACED00057A0000011C0A060807100718004ABF01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A71ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000FE8B4A2E58AA1E983A8E5AEA1E6A0B874000FE8B4A2E58AA1E983A8E5AEA1E6A0B8740009E8B4A2E58AA1E983A87852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('132', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000387371007E00020000005871007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('133', 0xACED00057A0000010E0A060807100718004AB101080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A63ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000B4345EFBCAFE5AEA1E6A0B874000B4345EFBCAFE5AEA1E6A0B874000343454F7852500A130A09536B69707061626C6510001A04000000000A120A085461736B4E616D6510001A04000000010A120A084E6F64654E616D6510001A04000000020A110A0747726F7570496410001A0400000003);
INSERT INTO `content` VALUES ('134', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000387371007E00020000005971007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('135', 0xACED00057A000001110A060807100718004AB401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A66ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740004424F535374000CE680BBE8A381E5AEA1E6A0B874000CE680BBE8A381E5AEA1E6A0B87852500A130A09536B69707061626C6510001A04000000000A110A074163746F72496410001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A0400000003);
INSERT INTO `content` VALUES ('136', 0xACED00057A0000011E0A060807100718004AE501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9601ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000003770400000003737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000387371007E00020000005A71007E000578522C0A0D0A0370696410001A04000000000A0C0A02696410001A04000000010A0D0A0374696410001A0400000002);
INSERT INTO `content` VALUES ('137', 0xACED00057A000001890A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E74000566616C7365740003746D707852750A110A07436F6D6D656E7410001A04000000000A100A06726561736F6E10001A04000000010A120A085461736B4E616D6510001A04000000020A120A084E6F64654E616D6510001A04000000030A130A09536B69707061626C6510001A04000000040A110A074163746F72496410001A0400000005);

-- ----------------------------
-- Table structure for contextmappinginfo
-- ----------------------------
DROP TABLE IF EXISTS `contextmappinginfo`;
CREATE TABLE `contextmappinginfo` (
  `mappingId` bigint(20) NOT NULL AUTO_INCREMENT,
  `CONTEXT_ID` varchar(255) NOT NULL,
  `KSESSION_ID` bigint(20) NOT NULL,
  `OWNER_ID` varchar(255) DEFAULT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  PRIMARY KEY (`mappingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contextmappinginfo
-- ----------------------------

-- ----------------------------
-- Table structure for correlationkeyinfo
-- ----------------------------
DROP TABLE IF EXISTS `correlationkeyinfo`;
CREATE TABLE `correlationkeyinfo` (
  `keyId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  PRIMARY KEY (`keyId`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of correlationkeyinfo
-- ----------------------------
INSERT INTO `correlationkeyinfo` VALUES ('7', null, '7', '0');
INSERT INTO `correlationkeyinfo` VALUES ('8', null, '8', '0');
INSERT INTO `correlationkeyinfo` VALUES ('9', null, '9', '0');
INSERT INTO `correlationkeyinfo` VALUES ('10', null, '10', '0');
INSERT INTO `correlationkeyinfo` VALUES ('11', null, '11', '0');
INSERT INTO `correlationkeyinfo` VALUES ('12', null, '12', '0');
INSERT INTO `correlationkeyinfo` VALUES ('13', null, '13', '0');
INSERT INTO `correlationkeyinfo` VALUES ('14', null, '14', '0');
INSERT INTO `correlationkeyinfo` VALUES ('15', null, '15', '0');
INSERT INTO `correlationkeyinfo` VALUES ('16', null, '16', '0');
INSERT INTO `correlationkeyinfo` VALUES ('17', null, '17', '0');
INSERT INTO `correlationkeyinfo` VALUES ('18', null, '18', '0');
INSERT INTO `correlationkeyinfo` VALUES ('19', null, '19', '0');
INSERT INTO `correlationkeyinfo` VALUES ('20', null, '20', '0');
INSERT INTO `correlationkeyinfo` VALUES ('21', null, '21', '0');
INSERT INTO `correlationkeyinfo` VALUES ('22', null, '22', '0');
INSERT INTO `correlationkeyinfo` VALUES ('23', null, '23', '0');
INSERT INTO `correlationkeyinfo` VALUES ('25', null, '25', '0');
INSERT INTO `correlationkeyinfo` VALUES ('26', null, '26', '0');
INSERT INTO `correlationkeyinfo` VALUES ('28', null, '28', '0');
INSERT INTO `correlationkeyinfo` VALUES ('29', null, '29', '0');
INSERT INTO `correlationkeyinfo` VALUES ('30', null, '30', '0');
INSERT INTO `correlationkeyinfo` VALUES ('31', null, '31', '0');
INSERT INTO `correlationkeyinfo` VALUES ('32', null, '32', '0');
INSERT INTO `correlationkeyinfo` VALUES ('33', null, '33', '0');
INSERT INTO `correlationkeyinfo` VALUES ('34', null, '34', '0');
INSERT INTO `correlationkeyinfo` VALUES ('35', null, '35', '0');
INSERT INTO `correlationkeyinfo` VALUES ('36', null, '36', '0');
INSERT INTO `correlationkeyinfo` VALUES ('37', null, '37', '0');
INSERT INTO `correlationkeyinfo` VALUES ('38', null, '38', '0');
INSERT INTO `correlationkeyinfo` VALUES ('40', null, '40', '0');
INSERT INTO `correlationkeyinfo` VALUES ('41', null, '41', '0');
INSERT INTO `correlationkeyinfo` VALUES ('42', null, '42', '0');
INSERT INTO `correlationkeyinfo` VALUES ('43', null, '43', '0');
INSERT INTO `correlationkeyinfo` VALUES ('45', null, '45', '0');
INSERT INTO `correlationkeyinfo` VALUES ('46', null, '46', '0');
INSERT INTO `correlationkeyinfo` VALUES ('47', null, '47', '0');
INSERT INTO `correlationkeyinfo` VALUES ('48', null, '48', '0');
INSERT INTO `correlationkeyinfo` VALUES ('49', null, '49', '0');
INSERT INTO `correlationkeyinfo` VALUES ('50', null, '50', '0');
INSERT INTO `correlationkeyinfo` VALUES ('51', null, '51', '0');
INSERT INTO `correlationkeyinfo` VALUES ('52', null, '52', '0');
INSERT INTO `correlationkeyinfo` VALUES ('53', null, '53', '0');
INSERT INTO `correlationkeyinfo` VALUES ('54', null, '54', '0');
INSERT INTO `correlationkeyinfo` VALUES ('55', null, '55', '0');
INSERT INTO `correlationkeyinfo` VALUES ('57', null, '57', '0');

-- ----------------------------
-- Table structure for correlationpropertyinfo
-- ----------------------------
DROP TABLE IF EXISTS `correlationpropertyinfo`;
CREATE TABLE `correlationpropertyinfo` (
  `propertyId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  `correlationKey_keyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`propertyId`),
  KEY `FKbchyl7kb8i6ghvi3dbr86bgo0` (`correlationKey_keyId`),
  CONSTRAINT `FKbchyl7kb8i6ghvi3dbr86bgo0` FOREIGN KEY (`correlationKey_keyId`) REFERENCES `correlationkeyinfo` (`keyId`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of correlationpropertyinfo
-- ----------------------------
INSERT INTO `correlationpropertyinfo` VALUES ('7', null, '7', '0', '7');
INSERT INTO `correlationpropertyinfo` VALUES ('8', null, '8', '0', '8');
INSERT INTO `correlationpropertyinfo` VALUES ('9', null, '9', '0', '9');
INSERT INTO `correlationpropertyinfo` VALUES ('10', null, '10', '0', '10');
INSERT INTO `correlationpropertyinfo` VALUES ('11', null, '11', '0', '11');
INSERT INTO `correlationpropertyinfo` VALUES ('12', null, '12', '0', '12');
INSERT INTO `correlationpropertyinfo` VALUES ('13', null, '13', '0', '13');
INSERT INTO `correlationpropertyinfo` VALUES ('14', null, '14', '0', '14');
INSERT INTO `correlationpropertyinfo` VALUES ('15', null, '15', '0', '15');
INSERT INTO `correlationpropertyinfo` VALUES ('16', null, '16', '0', '16');
INSERT INTO `correlationpropertyinfo` VALUES ('17', null, '17', '0', '17');
INSERT INTO `correlationpropertyinfo` VALUES ('18', null, '18', '0', '18');
INSERT INTO `correlationpropertyinfo` VALUES ('19', null, '19', '0', '19');
INSERT INTO `correlationpropertyinfo` VALUES ('20', null, '20', '0', '20');
INSERT INTO `correlationpropertyinfo` VALUES ('21', null, '21', '0', '21');
INSERT INTO `correlationpropertyinfo` VALUES ('22', null, '22', '0', '22');
INSERT INTO `correlationpropertyinfo` VALUES ('23', null, '23', '0', '23');
INSERT INTO `correlationpropertyinfo` VALUES ('25', null, '25', '0', '25');
INSERT INTO `correlationpropertyinfo` VALUES ('26', null, '26', '0', '26');
INSERT INTO `correlationpropertyinfo` VALUES ('28', null, '28', '0', '28');
INSERT INTO `correlationpropertyinfo` VALUES ('29', null, '29', '0', '29');
INSERT INTO `correlationpropertyinfo` VALUES ('30', null, '30', '0', '30');
INSERT INTO `correlationpropertyinfo` VALUES ('31', null, '31', '0', '31');
INSERT INTO `correlationpropertyinfo` VALUES ('32', null, '32', '0', '32');
INSERT INTO `correlationpropertyinfo` VALUES ('33', null, '33', '0', '33');
INSERT INTO `correlationpropertyinfo` VALUES ('34', null, '34', '0', '34');
INSERT INTO `correlationpropertyinfo` VALUES ('35', null, '35', '0', '35');
INSERT INTO `correlationpropertyinfo` VALUES ('36', null, '36', '0', '36');
INSERT INTO `correlationpropertyinfo` VALUES ('37', null, '37', '0', '37');
INSERT INTO `correlationpropertyinfo` VALUES ('38', null, '38', '0', '38');
INSERT INTO `correlationpropertyinfo` VALUES ('40', null, '40', '0', '40');
INSERT INTO `correlationpropertyinfo` VALUES ('41', null, '41', '0', '41');
INSERT INTO `correlationpropertyinfo` VALUES ('42', null, '42', '0', '42');
INSERT INTO `correlationpropertyinfo` VALUES ('43', null, '43', '0', '43');
INSERT INTO `correlationpropertyinfo` VALUES ('45', null, '45', '0', '45');
INSERT INTO `correlationpropertyinfo` VALUES ('46', null, '46', '0', '46');
INSERT INTO `correlationpropertyinfo` VALUES ('47', null, '47', '0', '47');
INSERT INTO `correlationpropertyinfo` VALUES ('48', null, '48', '0', '48');
INSERT INTO `correlationpropertyinfo` VALUES ('49', null, '49', '0', '49');
INSERT INTO `correlationpropertyinfo` VALUES ('50', null, '50', '0', '50');
INSERT INTO `correlationpropertyinfo` VALUES ('51', null, '51', '0', '51');
INSERT INTO `correlationpropertyinfo` VALUES ('52', null, '52', '0', '52');
INSERT INTO `correlationpropertyinfo` VALUES ('53', null, '53', '0', '53');
INSERT INTO `correlationpropertyinfo` VALUES ('54', null, '54', '0', '54');
INSERT INTO `correlationpropertyinfo` VALUES ('55', null, '55', '0', '55');
INSERT INTO `correlationpropertyinfo` VALUES ('57', null, '57', '0', '57');

-- ----------------------------
-- Table structure for deadline
-- ----------------------------
DROP TABLE IF EXISTS `deadline`;
CREATE TABLE `deadline` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deadline_date` datetime DEFAULT NULL,
  `escalated` smallint(6) DEFAULT NULL,
  `Deadlines_StartDeadLine_Id` bigint(20) DEFAULT NULL,
  `Deadlines_EndDeadLine_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK361ggw230po88svgfasg36i2w` (`Deadlines_StartDeadLine_Id`),
  KEY `FKpeiadnoy228t35213t63c3imm` (`Deadlines_EndDeadLine_Id`),
  CONSTRAINT `FK361ggw230po88svgfasg36i2w` FOREIGN KEY (`Deadlines_StartDeadLine_Id`) REFERENCES `task` (`id`),
  CONSTRAINT `FKpeiadnoy228t35213t63c3imm` FOREIGN KEY (`Deadlines_EndDeadLine_Id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deadline
-- ----------------------------

-- ----------------------------
-- Table structure for delegation_delegates
-- ----------------------------
DROP TABLE IF EXISTS `delegation_delegates`;
CREATE TABLE `delegation_delegates` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FKewkdyi0wrgy9byp6abyglpcxq` (`entity_id`),
  KEY `FK85x3trafk3wfbrv719cafr591` (`task_id`),
  CONSTRAINT `FK85x3trafk3wfbrv719cafr591` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  CONSTRAINT `FKewkdyi0wrgy9byp6abyglpcxq` FOREIGN KEY (`entity_id`) REFERENCES `organizationalentity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delegation_delegates
-- ----------------------------

-- ----------------------------
-- Table structure for deploymentstore
-- ----------------------------
DROP TABLE IF EXISTS `deploymentstore`;
CREATE TABLE `deploymentstore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attributes` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(255) DEFAULT NULL,
  `deploymentUnit` longtext,
  `state` int(11) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK85rgskt09thd8mkkfl3tb0y81` (`DEPLOYMENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deploymentstore
-- ----------------------------
INSERT INTO `deploymentstore` VALUES ('1', '', 'org.default:artifact:1.0.0-SNAPSHOT', '<org.jbpm.kie.services.impl.KModuleDeploymentUnit>\n  <artifactId>artifact</artifactId>\n  <groupId>org.default</groupId>\n  <version>1.0.0-SNAPSHOT</version>\n  <strategy>SINGLETON</strategy>\n  <mergeMode>MERGE_COLLECTIONS</mergeMode>\n  <deploymentDescriptor class=\"org.jbpm.runtime.manager.impl.deploy.DeploymentDescriptorImpl\">\n    <persistenceUnit>org.jbpm.domain</persistenceUnit>\n    <auditPersistenceUnit>org.jbpm.domain</auditPersistenceUnit>\n    <auditMode>JPA</auditMode>\n    <persistenceMode>JPA</persistenceMode>\n    <runtimeStrategy>SINGLETON</runtimeStrategy>\n    <marshallingStrategies class=\"linked-hash-set\"/>\n    <eventListeners class=\"linked-hash-set\"/>\n    <taskEventListeners class=\"linked-hash-set\"/>\n    <globals class=\"linked-hash-set\"/>\n    <workItemHandlers class=\"linked-hash-set\"/>\n    <environmentEntries class=\"linked-hash-set\"/>\n    <configuration class=\"linked-hash-set\"/>\n    <requiredRoles class=\"linked-hash-set\"/>\n    <classes/>\n    <limitSerializationClasses>true</limitSerializationClasses>\n    <mappedRoles>\n      <entry>\n        <string>all</string>\n        <linked-hash-set/>\n      </entry>\n      <entry>\n        <string>view</string>\n        <linked-hash-set/>\n      </entry>\n      <entry>\n        <string>execute</string>\n        <linked-hash-set/>\n      </entry>\n    </mappedRoles>\n  </deploymentDescriptor>\n  <deployed>false</deployed>\n  <strategyUnset>false</strategyUnset>\n  <active>true</active>\n  <attributes/>\n</org.jbpm.kie.services.impl.KModuleDeploymentUnit>', '1', '2018-05-16 14:13:24');

-- ----------------------------
-- Table structure for email_header
-- ----------------------------
DROP TABLE IF EXISTS `email_header`;
CREATE TABLE `email_header` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext,
  `fromAddress` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `replyToAddress` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email_header
-- ----------------------------

-- ----------------------------
-- Table structure for errorinfo
-- ----------------------------
DROP TABLE IF EXISTS `errorinfo`;
CREATE TABLE `errorinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `stacktrace` varchar(5000) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `REQUEST_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdarp6ushq06q39jmij3fdpdbs` (`REQUEST_ID`),
  CONSTRAINT `FKdarp6ushq06q39jmij3fdpdbs` FOREIGN KEY (`REQUEST_ID`) REFERENCES `requestinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of errorinfo
-- ----------------------------

-- ----------------------------
-- Table structure for escalation
-- ----------------------------
DROP TABLE IF EXISTS `escalation`;
CREATE TABLE `escalation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `Deadline_Escalation_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK37v8ova8ti6jiblda7n6j298e` (`Deadline_Escalation_Id`),
  CONSTRAINT `FK37v8ova8ti6jiblda7n6j298e` FOREIGN KEY (`Deadline_Escalation_Id`) REFERENCES `deadline` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of escalation
-- ----------------------------

-- ----------------------------
-- Table structure for eventtypes
-- ----------------------------
DROP TABLE IF EXISTS `eventtypes`;
CREATE TABLE `eventtypes` (
  `InstanceId` bigint(20) NOT NULL,
  `element` varchar(255) DEFAULT NULL,
  KEY `FKj0o3uve2nqo5yrjwrkc9jfttq` (`InstanceId`),
  CONSTRAINT `FKj0o3uve2nqo5yrjwrkc9jfttq` FOREIGN KEY (`InstanceId`) REFERENCES `processinstanceinfo` (`InstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eventtypes
-- ----------------------------

-- ----------------------------
-- Table structure for executionerrorinfo
-- ----------------------------
DROP TABLE IF EXISTS `executionerrorinfo`;
CREATE TABLE `executionerrorinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ERROR_ACK` smallint(6) DEFAULT NULL,
  `ERROR_ACK_AT` datetime DEFAULT NULL,
  `ERROR_ACK_BY` varchar(255) DEFAULT NULL,
  `ACTIVITY_ID` bigint(20) DEFAULT NULL,
  `ACTIVITY_NAME` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(255) DEFAULT NULL,
  `ERROR_INFO` longtext,
  `ERROR_DATE` datetime DEFAULT NULL,
  `ERROR_ID` varchar(255) DEFAULT NULL,
  `ERROR_MSG` varchar(255) DEFAULT NULL,
  `INIT_ACTIVITY_ID` bigint(20) DEFAULT NULL,
  `JOB_ID` bigint(20) DEFAULT NULL,
  `PROCESS_ID` varchar(255) DEFAULT NULL,
  `PROCESS_INST_ID` bigint(20) DEFAULT NULL,
  `ERROR_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ErrorInfo_pInstId` (`PROCESS_INST_ID`),
  KEY `IDX_ErrorInfo_errorAck` (`ERROR_ACK`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of executionerrorinfo
-- ----------------------------
INSERT INTO `executionerrorinfo` VALUES ('1', '0', null, null, '0', 'Start', 'org.default:artifact:1.0.0-SNAPSHOT', 'org.jbpm.workflow.instance.WorkflowRuntimeException: [com.sample.evaluation:24 - Start:1] -- No active JTA transaction on joinTransaction call\r\n	at org.jbpm.workflow.instance.impl.NodeInstanceImpl.trigger(NodeInstanceImpl.java:192)\r\n	at org.jbpm.ruleflow.instance.RuleFlowProcessInstance.internalStart(RuleFlowProcessInstance.java:38)\r\n	at org.jbpm.process.instance.impl.ProcessInstanceImpl.start(ProcessInstanceImpl.java:233)\r\n	at org.jbpm.workflow.instance.impl.WorkflowProcessInstanceImpl.start(WorkflowProcessInstanceImpl.java:474)\r\n	at org.jbpm.process.instance.ProcessRuntimeImpl.startProcessInstance(ProcessRuntimeImpl.java:210)\r\n	at org.jbpm.process.instance.ProcessRuntimeImpl.startProcess(ProcessRuntimeImpl.java:193)\r\n	at org.jbpm.process.instance.ProcessRuntimeImpl.startProcess(ProcessRuntimeImpl.java:185)\r\n	at org.drools.core.impl.StatefulKnowledgeSessionImpl.startProcess(StatefulKnowledgeSessionImpl.java:1844)\r\n	at org.drools.core.command.runtime.process.StartProcessCommand.execute(StartProcessCommand.java:121)\r\n	at org.drools.core.command.runtime.process.StartProcessCommand.execute(StartProcessCommand.java:39)\r\n	at org.drools.core.fluent.impl.PseudoClockRunner.executeBatch(PseudoClockRunner.java:102)\r\n	at org.drools.core.fluent.impl.PseudoClockRunner.executeBatches(PseudoClockRunner.java:69)\r\n	at org.drools.core.fluent.impl.PseudoClockRunner.execute(PseudoClockRunner.java:61)\r\n	at org.drools.core.fluent.impl.PseudoClockRunner.execute(PseudoClockRunner.java:39)\r\n	at org.drools.core.command.impl.AbstractInterceptor.executeNext(AbstractInterceptor.java:39)\r\n	at org.drools.persistence.PersistableRunner$TransactionInterceptor.execute(PersistableRunner.java:594)\r\n	at org.drools.persistence.PersistableRunner$TransactionInterceptor.execute(PersistableRunner.java:552)\r\n	at org.drools.core.command.impl.AbstractInterceptor.executeNext(AbstractInterceptor.java:39)\r\n	at org.drools.persistence.jpa.OptimisticLockRetryInterceptor.internalExecute(OptimisticLockRetryInterceptor.java:102)\r\n	at org.drools.persistence.jpa.OptimisticLockRetryInterceptor.execute(OptimisticLockRetryInterceptor.java:83)\r\n	at org.drools.persistence.jpa.OptimisticLockRetryInterceptor.execute(OptimisticLockRetryInterceptor.java:44)\r\n	at org.drools.core.command.impl.AbstractInterceptor.executeNext(AbstractInterceptor.java:39)\r\n	at org.drools.persistence.jta.TransactionLockInterceptor.execute(TransactionLockInterceptor.java:73)\r\n	at org.drools.persistence.jta.TransactionLockInterceptor.execute(TransactionLockInterceptor.java:45)\r\n	at org.drools.core.command.impl.AbstractInterceptor.executeNext(AbstractInterceptor.java:39)\r\n	at org.jbpm.runtime.manager.impl.error.ExecutionErrorHandlerInterceptor.internalExecute(ExecutionErrorHandlerInterceptor.java:66)\r\n	at org.jbpm.runtime.manager.impl.error.ExecutionErrorHandlerInterceptor.execute(ExecutionErrorHandlerInterceptor.java:52)\r\n	at org.jbpm.runtime.manager.impl.error.ExecutionErrorHandlerInterceptor.execute(ExecutionErrorHandlerInterceptor.java:29)\r\n	at org.drools.persistence.PersistableRunner.execute(PersistableRunner.java:398)\r\n	at org.drools.persistence.PersistableRunner.execute(PersistableRunner.java:66)\r\n	at org.drools.core.runtime.InternalLocalRunner.execute(InternalLocalRunner.java:37)\r\n	at org.drools.core.runtime.InternalLocalRunner.execute(InternalLocalRunner.java:41)\r\n	at org.drools.core.command.impl.CommandBasedStatefulKnowledgeSession.startProcess(CommandBasedStatefulKnowledgeSession.java:263)\r\n	at org.jbpm.kie.services.impl.ProcessServiceImpl.startProcess(ProcessServiceImpl.java:114)\r\n	at com.gclfax.jbpm.demo.controller.ProcessDefController.newProcessInstance(ProcessDefController.java:56)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:877)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:783)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:877)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:661)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.gclfax.jbpm.demo.config.security.MyFilterSecurityInterceptor.invoke(MyFilterSecurityInterceptor.java:47)\r\n	at com.gclfax.jbpm.demo.config.security.MyFilterSecurityInterceptor.doFilter(MyFilterSecurityInterceptor.java:37)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at com.gclfax.jbpm.demo.config.security.MyFilterSecurityInterceptor.invoke(MyFilterSecurityInterceptor.java:47)\r\n	at com.gclfax.jbpm.demo.config.security.MyFilterSecurityInterceptor.doFilter(MyFilterSecurityInterceptor.java:37)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:200)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:496)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:790)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1468)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\nCaused by: javax.persistence.TransactionRequiredException: No active JTA transaction on joinTransaction call\r\n	at org.hibernate.ejb.AbstractEntityManagerImpl.joinTransaction(AbstractEntityManagerImpl.java:1233)\r\n	at org.hibernate.ejb.AbstractEntityManagerImpl.joinTransaction(AbstractEntityManagerImpl.java:1183)\r\n	at org.springframework.orm.jpa.ExtendedEntityManagerCreator$ExtendedEntityManagerInvocationHandler.doJoinTransaction(ExtendedEntityManagerCreator.java:366)\r\n	at org.springframework.orm.jpa.ExtendedEntityManagerCreator$ExtendedEntityManagerInvocationHandler.invoke(ExtendedEntityManagerCreator.java:333)\r\n	at com.sun.proxy.$Proxy87.joinTransaction(Unknown Source)\r\n	at sun.reflect.GeneratedMethodAccessor95.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.kie.spring.persistence.AbstractKieSpringJpaManager$EmHolderDelegateInvocationHandler.invoke(AbstractKieSpringJpaManager.java:143)\r\n	at com.sun.proxy.$Proxy88.joinTransaction(Unknown Source)\r\n	at org.jbpm.process.audit.JPAWorkingMemoryDbLogger.joinTransaction(JPAWorkingMemoryDbLogger.java:302)\r\n	at org.jbpm.process.audit.JPAWorkingMemoryDbLogger.persist(JPAWorkingMemoryDbLogger.java:230)\r\n	at org.jbpm.process.audit.JPAWorkingMemoryDbLogger.afterNodeLeft(JPAWorkingMemoryDbLogger.java:126)\r\n	at org.drools.core.event.ProcessEventSupport.fireAfterNodeLeft(ProcessEventSupport.java:125)\r\n	at org.jbpm.workflow.instance.impl.NodeInstanceImpl.triggerNodeInstance(NodeInstanceImpl.java:390)\r\n	at org.jbpm.workflow.instance.impl.NodeInstanceImpl.triggerCompleted(NodeInstanceImpl.java:339)\r\n	at org.jbpm.workflow.instance.node.StartNodeInstance.triggerCompleted(StartNodeInstance.java:72)\r\n	at org.jbpm.workflow.instance.node.StartNodeInstance.internalTrigger(StartNodeInstance.java:43)\r\n	at org.jbpm.workflow.instance.impl.NodeInstanceImpl.trigger(NodeInstanceImpl.java:186)\r\n	... 127 more\r\n', '2018-05-13 21:23:02', '71206467-f062-4ac4-b73f-cb3e3acf5414', '[com.sample.evaluation:24 - Start:1] -- No active JTA transaction on joinTransaction call', '0', null, 'com.sample.evaluation', '24', 'Process');
INSERT INTO `executionerrorinfo` VALUES ('2', '0', null, null, '0', 'Start', 'org.default:artifact:1.0.0-SNAPSHOT', 'org.jbpm.workflow.instance.WorkflowRuntimeException: [com.sample.evaluation:27 - Start:1] -- No active JTA transaction on joinTransaction call\r\n	at org.jbpm.workflow.instance.impl.NodeInstanceImpl.trigger(NodeInstanceImpl.java:192)\r\n	at org.jbpm.ruleflow.instance.RuleFlowProcessInstance.internalStart(RuleFlowProcessInstance.java:38)\r\n	at org.jbpm.process.instance.impl.ProcessInstanceImpl.start(ProcessInstanceImpl.java:233)\r\n	at org.jbpm.workflow.instance.impl.WorkflowProcessInstanceImpl.start(WorkflowProcessInstanceImpl.java:474)\r\n	at org.jbpm.process.instance.ProcessRuntimeImpl.startProcessInstance(ProcessRuntimeImpl.java:210)\r\n	at org.jbpm.process.instance.ProcessRuntimeImpl.startProcess(ProcessRuntimeImpl.java:193)\r\n	at org.jbpm.process.instance.ProcessRuntimeImpl.startProcess(ProcessRuntimeImpl.java:185)\r\n	at org.drools.core.impl.StatefulKnowledgeSessionImpl.startProcess(StatefulKnowledgeSessionImpl.java:1844)\r\n	at org.drools.core.command.runtime.process.StartProcessCommand.execute(StartProcessCommand.java:121)\r\n	at org.drools.core.command.runtime.process.StartProcessCommand.execute(StartProcessCommand.java:39)\r\n	at org.drools.core.fluent.impl.PseudoClockRunner.executeBatch(PseudoClockRunner.java:102)\r\n	at org.drools.core.fluent.impl.PseudoClockRunner.executeBatches(PseudoClockRunner.java:69)\r\n	at org.drools.core.fluent.impl.PseudoClockRunner.execute(PseudoClockRunner.java:61)\r\n	at org.drools.core.fluent.impl.PseudoClockRunner.execute(PseudoClockRunner.java:39)\r\n	at org.drools.core.command.impl.AbstractInterceptor.executeNext(AbstractInterceptor.java:39)\r\n	at org.drools.persistence.PersistableRunner$TransactionInterceptor.execute(PersistableRunner.java:594)\r\n	at org.drools.persistence.PersistableRunner$TransactionInterceptor.execute(PersistableRunner.java:552)\r\n	at org.drools.core.command.impl.AbstractInterceptor.executeNext(AbstractInterceptor.java:39)\r\n	at org.drools.persistence.jpa.OptimisticLockRetryInterceptor.internalExecute(OptimisticLockRetryInterceptor.java:102)\r\n	at org.drools.persistence.jpa.OptimisticLockRetryInterceptor.execute(OptimisticLockRetryInterceptor.java:83)\r\n	at org.drools.persistence.jpa.OptimisticLockRetryInterceptor.execute(OptimisticLockRetryInterceptor.java:44)\r\n	at org.drools.core.command.impl.AbstractInterceptor.executeNext(AbstractInterceptor.java:39)\r\n	at org.drools.persistence.jta.TransactionLockInterceptor.execute(TransactionLockInterceptor.java:73)\r\n	at org.drools.persistence.jta.TransactionLockInterceptor.execute(TransactionLockInterceptor.java:45)\r\n	at org.drools.core.command.impl.AbstractInterceptor.executeNext(AbstractInterceptor.java:39)\r\n	at org.jbpm.runtime.manager.impl.error.ExecutionErrorHandlerInterceptor.internalExecute(ExecutionErrorHandlerInterceptor.java:66)\r\n	at org.jbpm.runtime.manager.impl.error.ExecutionErrorHandlerInterceptor.execute(ExecutionErrorHandlerInterceptor.java:52)\r\n	at org.jbpm.runtime.manager.impl.error.ExecutionErrorHandlerInterceptor.execute(ExecutionErrorHandlerInterceptor.java:29)\r\n	at org.drools.persistence.PersistableRunner.execute(PersistableRunner.java:398)\r\n	at org.drools.persistence.PersistableRunner.execute(PersistableRunner.java:66)\r\n	at org.drools.core.runtime.InternalLocalRunner.execute(InternalLocalRunner.java:37)\r\n	at org.drools.core.runtime.InternalLocalRunner.execute(InternalLocalRunner.java:41)\r\n	at org.drools.core.command.impl.CommandBasedStatefulKnowledgeSession.startProcess(CommandBasedStatefulKnowledgeSession.java:263)\r\n	at org.jbpm.kie.services.impl.ProcessServiceImpl.startProcess(ProcessServiceImpl.java:114)\r\n	at com.gclfax.jbpm.demo.controller.ProcessDefController.newProcessInstance(ProcessDefController.java:56)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:877)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:783)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)\r\n	at org.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:877)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:661)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:742)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.gclfax.jbpm.demo.config.security.MyFilterSecurityInterceptor.invoke(MyFilterSecurityInterceptor.java:47)\r\n	at com.gclfax.jbpm.demo.config.security.MyFilterSecurityInterceptor.doFilter(MyFilterSecurityInterceptor.java:37)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at com.gclfax.jbpm.demo.config.security.MyFilterSecurityInterceptor.invoke(MyFilterSecurityInterceptor.java:47)\r\n	at com.gclfax.jbpm.demo.config.security.MyFilterSecurityInterceptor.doFilter(MyFilterSecurityInterceptor.java:37)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:200)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:496)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:790)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1468)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\nCaused by: javax.persistence.TransactionRequiredException: No active JTA transaction on joinTransaction call\r\n	at org.hibernate.ejb.AbstractEntityManagerImpl.joinTransaction(AbstractEntityManagerImpl.java:1233)\r\n	at org.hibernate.ejb.AbstractEntityManagerImpl.joinTransaction(AbstractEntityManagerImpl.java:1183)\r\n	at org.springframework.orm.jpa.ExtendedEntityManagerCreator$ExtendedEntityManagerInvocationHandler.doJoinTransaction(ExtendedEntityManagerCreator.java:366)\r\n	at org.springframework.orm.jpa.ExtendedEntityManagerCreator$ExtendedEntityManagerInvocationHandler.invoke(ExtendedEntityManagerCreator.java:333)\r\n	at com.sun.proxy.$Proxy87.joinTransaction(Unknown Source)\r\n	at sun.reflect.GeneratedMethodAccessor95.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.kie.spring.persistence.AbstractKieSpringJpaManager$EmHolderDelegateInvocationHandler.invoke(AbstractKieSpringJpaManager.java:143)\r\n	at com.sun.proxy.$Proxy88.joinTransaction(Unknown Source)\r\n	at org.jbpm.process.audit.JPAWorkingMemoryDbLogger.joinTransaction(JPAWorkingMemoryDbLogger.java:302)\r\n	at org.jbpm.process.audit.JPAWorkingMemoryDbLogger.persist(JPAWorkingMemoryDbLogger.java:230)\r\n	at org.jbpm.process.audit.JPAWorkingMemoryDbLogger.afterNodeLeft(JPAWorkingMemoryDbLogger.java:126)\r\n	at org.drools.core.event.ProcessEventSupport.fireAfterNodeLeft(ProcessEventSupport.java:125)\r\n	at org.jbpm.workflow.instance.impl.NodeInstanceImpl.triggerNodeInstance(NodeInstanceImpl.java:390)\r\n	at org.jbpm.workflow.instance.impl.NodeInstanceImpl.triggerCompleted(NodeInstanceImpl.java:339)\r\n	at org.jbpm.workflow.instance.node.StartNodeInstance.triggerCompleted(StartNodeInstance.java:72)\r\n	at org.jbpm.workflow.instance.node.StartNodeInstance.internalTrigger(StartNodeInstance.java:43)\r\n	at org.jbpm.workflow.instance.impl.NodeInstanceImpl.trigger(NodeInstanceImpl.java:186)\r\n	... 127 more\r\n', '2018-05-13 21:37:41', '541d18ca-4f9d-4d20-85c8-37ede0fb0ebc', '[com.sample.evaluation:27 - Start:1] -- No active JTA transaction on joinTransaction call', '0', null, 'com.sample.evaluation', '27', 'Process');

-- ----------------------------
-- Table structure for i18ntext
-- ----------------------------
DROP TABLE IF EXISTS `i18ntext`;
CREATE TABLE `i18ntext` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  `shortText` varchar(255) DEFAULT NULL,
  `text` longtext,
  `Task_Subjects_Id` bigint(20) DEFAULT NULL,
  `Task_Names_Id` bigint(20) DEFAULT NULL,
  `Task_Descriptions_Id` bigint(20) DEFAULT NULL,
  `Reassignment_Documentation_Id` bigint(20) DEFAULT NULL,
  `Notification_Subjects_Id` bigint(20) DEFAULT NULL,
  `Notification_Names_Id` bigint(20) DEFAULT NULL,
  `Notification_Documentation_Id` bigint(20) DEFAULT NULL,
  `Notification_Descriptions_Id` bigint(20) DEFAULT NULL,
  `Deadline_Documentation_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcd6eb4q62d9ab8p0di8pb99ch` (`Task_Subjects_Id`),
  KEY `FKiogka67sji8fk4cp7a369895i` (`Task_Names_Id`),
  KEY `FKrisdlmalotmk64mdeqpo4s5m0` (`Task_Descriptions_Id`),
  KEY `FKqxgws3fnukyqlaet11tivqg5u` (`Reassignment_Documentation_Id`),
  KEY `FKthf8ix3t3opf9hya1s04hwsx8` (`Notification_Subjects_Id`),
  KEY `FKg2jsybeuc8pbj8ek8xwxutuyo` (`Notification_Names_Id`),
  KEY `FKp0m7uhipskrljktvfeubdgfid` (`Notification_Documentation_Id`),
  KEY `FK6k8hmfvhko069970eghiy2ifp` (`Notification_Descriptions_Id`),
  KEY `FK8wn7sw34q6bifsi1pvl2b1yyb` (`Deadline_Documentation_Id`),
  CONSTRAINT `FK6k8hmfvhko069970eghiy2ifp` FOREIGN KEY (`Notification_Descriptions_Id`) REFERENCES `notification` (`id`),
  CONSTRAINT `FK8wn7sw34q6bifsi1pvl2b1yyb` FOREIGN KEY (`Deadline_Documentation_Id`) REFERENCES `deadline` (`id`),
  CONSTRAINT `FKcd6eb4q62d9ab8p0di8pb99ch` FOREIGN KEY (`Task_Subjects_Id`) REFERENCES `task` (`id`),
  CONSTRAINT `FKg2jsybeuc8pbj8ek8xwxutuyo` FOREIGN KEY (`Notification_Names_Id`) REFERENCES `notification` (`id`),
  CONSTRAINT `FKiogka67sji8fk4cp7a369895i` FOREIGN KEY (`Task_Names_Id`) REFERENCES `task` (`id`),
  CONSTRAINT `FKp0m7uhipskrljktvfeubdgfid` FOREIGN KEY (`Notification_Documentation_Id`) REFERENCES `notification` (`id`),
  CONSTRAINT `FKqxgws3fnukyqlaet11tivqg5u` FOREIGN KEY (`Reassignment_Documentation_Id`) REFERENCES `reassignment` (`id`),
  CONSTRAINT `FKrisdlmalotmk64mdeqpo4s5m0` FOREIGN KEY (`Task_Descriptions_Id`) REFERENCES `task` (`id`),
  CONSTRAINT `FKthf8ix3t3opf9hya1s04hwsx8` FOREIGN KEY (`Notification_Subjects_Id`) REFERENCES `notification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of i18ntext
-- ----------------------------
INSERT INTO `i18ntext` VALUES ('1', 'en-UK', '1', '1', null, null, '1', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('2', 'en-UK', 'Task1', 'Task1', null, '1', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('3', 'en-UK', '1', '1', '1', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('4', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '2', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('5', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '2', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('6', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '2', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('7', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '3', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('8', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '3', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('9', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '3', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('10', 'en-UK', '1', '1', null, null, '4', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('11', 'en-UK', 'Task1', 'Task1', null, '4', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('12', 'en-UK', '1', '1', '4', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('13', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '5', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('14', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '5', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('15', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '5', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('16', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '6', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('17', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '6', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('18', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '6', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('19', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '7', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('20', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '7', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('21', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '7', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('22', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '8', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('23', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '8', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('24', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '8', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('25', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '9', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('26', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '9', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('27', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '9', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('28', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '10', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('29', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '10', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('30', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '10', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('31', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '11', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('32', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '11', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('33', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '11', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('34', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '12', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('35', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '12', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('36', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '12', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('37', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '13', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('38', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '13', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('39', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '13', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('40', 'en-UK', '', '', null, null, '14', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('41', 'en-UK', 'john', 'john', null, '14', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('42', 'en-UK', '', '', '14', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('43', 'en-UK', '', '', null, null, '15', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('44', 'en-UK', 'mary', 'mary', null, '15', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('45', 'en-UK', '', '', '15', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('46', 'en-UK', '', '', null, null, '16', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('47', 'en-UK', 'tmp', 'tmp', null, '16', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('48', 'en-UK', '', '', '16', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('49', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '17', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('50', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '17', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('51', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '17', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('52', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '18', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('53', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '18', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('54', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '18', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('55', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '19', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('56', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '19', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('57', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '19', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('58', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '20', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('59', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '20', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('60', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '20', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('61', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '21', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('62', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '21', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('63', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '21', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('64', 'en-UK', '', '', null, null, '22', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('65', 'en-UK', 'john', 'john', null, '22', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('66', 'en-UK', '', '', '22', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('67', 'en-UK', '', '', null, null, '23', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('68', 'en-UK', 'mary', 'mary', null, '23', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('69', 'en-UK', '', '', '23', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('70', 'en-UK', '', '', null, null, '24', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('71', 'en-UK', 'tmp', 'tmp', null, '24', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('72', 'en-UK', '', '', '24', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('73', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '25', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('74', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '25', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('75', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '25', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('76', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '26', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('77', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '26', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('78', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '26', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('79', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '27', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('80', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '27', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('81', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '27', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('82', 'en-UK', '', '', null, null, '28', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('83', 'en-UK', 'john', 'john', null, '28', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('84', 'en-UK', '', '', '28', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('85', 'en-UK', '', '', null, null, '29', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('86', 'en-UK', 'mary', 'mary', null, '29', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('87', 'en-UK', '', '', '29', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('88', 'en-UK', '', '', null, null, '30', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('89', 'en-UK', 'tmp', 'tmp', null, '30', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('90', 'en-UK', '', '', '30', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('91', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '31', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('92', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '31', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('93', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '31', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('94', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '32', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('95', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '32', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('96', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '32', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('97', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '33', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('98', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '33', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('99', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '33', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('100', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '34', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('101', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '34', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('102', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '34', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('103', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '35', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('104', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '35', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('105', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '35', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('106', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '36', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('107', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '36', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('108', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '36', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('109', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '37', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('110', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '37', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('111', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '37', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('112', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '38', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('113', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '38', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('114', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '38', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('115', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '39', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('116', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '39', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('117', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '39', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('118', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '40', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('119', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '40', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('120', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '40', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('121', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '41', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('122', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '41', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('123', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '41', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('124', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', null, null, '42', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('125', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '42', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('126', 'en-UK', 'You need to evaluate admin.', 'You need to evaluate admin.', '42', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('127', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '43', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('128', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '43', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('129', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '43', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('130', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '44', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('131', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '44', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('132', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '44', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('133', 'en-UK', 'You need to evaluate tmp.', 'You need to evaluate tmp.', null, null, '45', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('134', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '45', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('135', 'en-UK', 'You need to evaluate tmp.', 'You need to evaluate tmp.', '45', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('136', 'en-UK', 'You need to evaluate tmp.', 'You need to evaluate tmp.', null, null, '46', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('137', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '46', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('138', 'en-UK', 'You need to evaluate tmp.', 'You need to evaluate tmp.', '46', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('139', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '47', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('140', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '47', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('141', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '47', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('142', 'en-UK', 'You need to evaluate tmp.', 'You need to evaluate tmp.', null, null, '48', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('143', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '48', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('144', 'en-UK', 'You need to evaluate tmp.', 'You need to evaluate tmp.', '48', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('145', 'en-UK', 'You need to evaluate tmp.', 'You need to evaluate tmp.', null, null, '49', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('146', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '49', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('147', 'en-UK', 'You need to evaluate tmp.', 'You need to evaluate tmp.', '49', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('148', 'en-UK', '', '', null, null, '50', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('149', 'en-UK', 'john', 'john', null, '50', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('150', 'en-UK', '', '', '50', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('151', 'en-UK', '', '', null, null, '51', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('152', 'en-UK', 'mary', 'mary', null, '51', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('153', 'en-UK', '', '', '51', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('154', 'en-UK', '', '', null, null, '52', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('155', 'en-UK', 'tmp', 'tmp', null, '52', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('156', 'en-UK', '', '', '52', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('157', 'en-UK', '', '', null, null, '53', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('158', 'en-UK', '业务部审核', '业务部审核', null, '53', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('159', 'en-UK', '', '', '53', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('160', 'en-UK', '', '', null, null, '54', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('161', 'en-UK', 'HR审核', 'HR审核', null, '54', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('162', 'en-UK', '', '', '54', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('163', 'en-UK', '', '', null, null, '55', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('164', 'en-UK', 'PM 审核', 'PM 审核', null, '55', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('165', 'en-UK', '', '', '55', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('166', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '56', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('167', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '56', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('168', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '56', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('169', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '57', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('170', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '57', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('171', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '57', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('172', 'en-UK', 'You need to evaluate john.', 'You need to evaluate john.', null, null, '58', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('173', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '58', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('174', 'en-UK', 'You need to evaluate john.', 'You need to evaluate john.', '58', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('175', 'en-UK', 'You need to evaluate john.', 'You need to evaluate john.', null, null, '59', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('176', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '59', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('177', 'en-UK', 'You need to evaluate john.', 'You need to evaluate john.', '59', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('178', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '60', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('179', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '60', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('180', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '60', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('181', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '61', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('182', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '61', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('183', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '61', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('184', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '62', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('185', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '62', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('186', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '62', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('187', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '63', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('188', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '63', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('189', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '63', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('190', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '64', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('191', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '64', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('192', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '64', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('193', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '65', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('194', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '65', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('195', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '65', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('196', 'en-UK', 'You need to evaluate john.', 'You need to evaluate john.', null, null, '66', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('197', 'en-UK', 'HR Evaluation', 'HR Evaluation', null, '66', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('198', 'en-UK', 'You need to evaluate john.', 'You need to evaluate john.', '66', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('199', 'en-UK', 'You need to evaluate john.', 'You need to evaluate john.', null, null, '67', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('200', 'en-UK', 'PM Evaluation', 'PM Evaluation', null, '67', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('201', 'en-UK', 'You need to evaluate john.', 'You need to evaluate john.', '67', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('202', 'en-UK', '', '', null, null, '68', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('203', 'en-UK', '业务部审核', '业务部审核', null, '68', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('204', 'en-UK', '', '', '68', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('205', 'en-UK', '', '', null, null, '69', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('206', 'en-UK', 'HR审核', 'HR审核', null, '69', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('207', 'en-UK', '', '', '69', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('208', 'en-UK', '', '', null, null, '70', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('209', 'en-UK', 'PM 审核', 'PM 审核', null, '70', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('210', 'en-UK', '', '', '70', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('211', 'en-UK', '', '', null, null, '71', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('212', 'en-UK', '风控部门审核', '风控部门审核', null, '71', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('213', 'en-UK', '', '', '71', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('214', 'en-UK', '', '', null, null, '72', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('215', 'en-UK', '业务部审核', '业务部审核', null, '72', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('216', 'en-UK', '', '', '72', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('217', 'en-UK', '', '', null, null, '73', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('218', 'en-UK', '业务部审核', '业务部审核', null, '73', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('219', 'en-UK', '', '', '73', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('220', 'en-UK', '', '', null, null, '74', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('221', 'en-UK', 'HR审核', 'HR审核', null, '74', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('222', 'en-UK', '', '', '74', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('223', 'en-UK', '', '', null, null, '75', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('224', 'en-UK', 'PM 审核', 'PM 审核', null, '75', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('225', 'en-UK', '', '', '75', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('226', 'en-UK', '', '', null, null, '76', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('227', 'en-UK', '业务部审核', '业务部审核', null, '76', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('228', 'en-UK', '', '', '76', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('229', 'en-UK', '', '', null, null, '77', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('230', 'en-UK', 'PM 审核', 'PM 审核', null, '77', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('231', 'en-UK', '', '', '77', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('232', 'en-UK', '', '', null, null, '78', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('233', 'en-UK', 'HR审核', 'HR审核', null, '78', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('234', 'en-UK', '', '', '78', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('235', 'en-UK', '', '', null, null, '79', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('236', 'en-UK', '风控部门审核', '风控部门审核', null, '79', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('237', 'en-UK', '', '', '79', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('238', 'en-UK', '', '', null, null, '80', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('239', 'en-UK', '财务部审核', '财务部审核', null, '80', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('240', 'en-UK', '', '', '80', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('241', 'en-UK', '', '', null, null, '81', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('242', 'en-UK', 'CEＯ审核', 'CEＯ审核', null, '81', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('243', 'en-UK', '', '', '81', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('244', 'en-UK', '', '', null, null, '82', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('245', 'en-UK', '总裁审核', '总裁审核', null, '82', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('246', 'en-UK', '', '', '82', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('247', 'en-UK', '', '', null, null, '83', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('248', 'en-UK', '业务部审核', '业务部审核', null, '83', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('249', 'en-UK', '', '', '83', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('250', 'en-UK', '', '', null, null, '84', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('251', 'en-UK', '业务部审核', '业务部审核', null, '84', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('252', 'en-UK', '', '', '84', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('253', 'en-UK', '', '', null, null, '85', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('254', 'en-UK', 'HR审核', 'HR审核', null, '85', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('255', 'en-UK', '', '', '85', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('256', 'en-UK', '', '', null, null, '86', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('257', 'en-UK', 'PM 审核', 'PM 审核', null, '86', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('258', 'en-UK', '', '', '86', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('259', 'en-UK', '', '', null, null, '87', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('260', 'en-UK', '风控部门审核', '风控部门审核', null, '87', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('261', 'en-UK', '', '', '87', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('262', 'en-UK', '', '', null, null, '88', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('263', 'en-UK', '财务部审核', '财务部审核', null, '88', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('264', 'en-UK', '', '', '88', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('265', 'en-UK', '', '', null, null, '89', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('266', 'en-UK', 'CEＯ审核', 'CEＯ审核', null, '89', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('267', 'en-UK', '', '', '89', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('268', 'en-UK', '', '', null, null, '90', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('269', 'en-UK', '总裁审核', '总裁审核', null, '90', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('270', 'en-UK', '', '', '90', null, null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('271', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', null, null, '91', null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('272', 'en-UK', 'Self Evaluation', 'Self Evaluation', null, '91', null, null, null, null, null, null, null);
INSERT INTO `i18ntext` VALUES ('273', 'en-UK', 'Please perform a self-evalutation.', 'Please perform a self-evalutation.', '91', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for nodeinstancelog
-- ----------------------------
DROP TABLE IF EXISTS `nodeinstancelog`;
CREATE TABLE `nodeinstancelog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `connection` varchar(255) DEFAULT NULL,
  `log_date` datetime DEFAULT NULL,
  `externalId` varchar(255) DEFAULT NULL,
  `nodeContainerId` varchar(255) DEFAULT NULL,
  `nodeId` varchar(255) DEFAULT NULL,
  `nodeInstanceId` varchar(255) DEFAULT NULL,
  `nodeName` varchar(255) DEFAULT NULL,
  `nodeType` varchar(255) DEFAULT NULL,
  `processId` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `referenceId` bigint(20) DEFAULT NULL,
  `slaCompliance` int(11) DEFAULT NULL,
  `sla_due_date` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  `workItemId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nodeinstancelog
-- ----------------------------
INSERT INTO `nodeinstancelog` VALUES ('1', null, '2018-05-11 21:33:07', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'hello', '1', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('2', '_C9C0EC8D-C7A0-41F2-93B3-6F2ABAEB7DC0', '2018-05-11 21:33:07', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_0A45E45C-4A0A-4B07-8294-77D83C03192D', '1', 'Say Hello Script', 'ActionNode', 'hello', '1', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('3', '_D2280467-75FE-4301-A426-E891BDA26B9E', '2018-05-11 21:33:07', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6B40DCEA-5374-46E7-9839-8F74DBDDBB13', '2', '', 'EndNode', 'hello', '1', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('4', null, '2018-05-11 21:33:07', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6B40DCEA-5374-46E7-9839-8F74DBDDBB13', '2', '', 'EndNode', 'hello', '1', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('5', '_D2280467-75FE-4301-A426-E891BDA26B9E', '2018-05-11 21:33:07', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_0A45E45C-4A0A-4B07-8294-77D83C03192D', '1', 'Say Hello Script', 'ActionNode', 'hello', '1', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('6', '_C9C0EC8D-C7A0-41F2-93B3-6F2ABAEB7DC0', '2018-05-11 21:33:07', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'hello', '1', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('7', null, '2018-05-12 19:08:03', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'hello', '2', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('8', '_C9C0EC8D-C7A0-41F2-93B3-6F2ABAEB7DC0', '2018-05-12 19:08:03', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_0A45E45C-4A0A-4B07-8294-77D83C03192D', '1', 'Say Hello Script', 'ActionNode', 'hello', '2', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('9', '_D2280467-75FE-4301-A426-E891BDA26B9E', '2018-05-12 19:08:03', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6B40DCEA-5374-46E7-9839-8F74DBDDBB13', '2', '', 'EndNode', 'hello', '2', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('10', null, '2018-05-12 19:08:03', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6B40DCEA-5374-46E7-9839-8F74DBDDBB13', '2', '', 'EndNode', 'hello', '2', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('11', '_D2280467-75FE-4301-A426-E891BDA26B9E', '2018-05-12 19:08:03', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_0A45E45C-4A0A-4B07-8294-77D83C03192D', '1', 'Say Hello Script', 'ActionNode', 'hello', '2', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('12', '_C9C0EC8D-C7A0-41F2-93B3-6F2ABAEB7DC0', '2018-05-12 19:08:03', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'hello', '2', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('13', null, '2018-05-12 20:04:45', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'hello', '3', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('14', '_C9C0EC8D-C7A0-41F2-93B3-6F2ABAEB7DC0', '2018-05-12 20:04:46', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_0A45E45C-4A0A-4B07-8294-77D83C03192D', '1', 'Say Hello Script', 'ActionNode', 'hello', '3', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('15', '_D2280467-75FE-4301-A426-E891BDA26B9E', '2018-05-12 20:04:46', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6B40DCEA-5374-46E7-9839-8F74DBDDBB13', '2', '', 'EndNode', 'hello', '3', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('16', null, '2018-05-12 20:04:46', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6B40DCEA-5374-46E7-9839-8F74DBDDBB13', '2', '', 'EndNode', 'hello', '3', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('17', '_D2280467-75FE-4301-A426-E891BDA26B9E', '2018-05-12 20:04:46', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_0A45E45C-4A0A-4B07-8294-77D83C03192D', '1', 'Say Hello Script', 'ActionNode', 'hello', '3', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('18', '_C9C0EC8D-C7A0-41F2-93B3-6F2ABAEB7DC0', '2018-05-12 20:04:46', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'hello', '3', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('19', null, '2018-05-12 20:23:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'hello', '4', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('20', '_C9C0EC8D-C7A0-41F2-93B3-6F2ABAEB7DC0', '2018-05-12 20:23:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_0A45E45C-4A0A-4B07-8294-77D83C03192D', '1', 'Say Hello Script', 'ActionNode', 'hello', '4', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('21', '_D2280467-75FE-4301-A426-E891BDA26B9E', '2018-05-12 20:23:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6B40DCEA-5374-46E7-9839-8F74DBDDBB13', '2', '', 'EndNode', 'hello', '4', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('22', null, '2018-05-12 20:23:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6B40DCEA-5374-46E7-9839-8F74DBDDBB13', '2', '', 'EndNode', 'hello', '4', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('23', '_D2280467-75FE-4301-A426-E891BDA26B9E', '2018-05-12 20:23:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_0A45E45C-4A0A-4B07-8294-77D83C03192D', '1', 'Say Hello Script', 'ActionNode', 'hello', '4', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('24', '_C9C0EC8D-C7A0-41F2-93B3-6F2ABAEB7DC0', '2018-05-12 20:23:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'hello', '4', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('25', null, '2018-05-12 20:32:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'hello', '5', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('26', '_C9C0EC8D-C7A0-41F2-93B3-6F2ABAEB7DC0', '2018-05-12 20:32:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_0A45E45C-4A0A-4B07-8294-77D83C03192D', '1', 'Say Hello Script', 'ActionNode', 'hello', '5', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('27', '_D2280467-75FE-4301-A426-E891BDA26B9E', '2018-05-12 20:32:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6B40DCEA-5374-46E7-9839-8F74DBDDBB13', '2', '', 'EndNode', 'hello', '5', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('28', null, '2018-05-12 20:32:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6B40DCEA-5374-46E7-9839-8F74DBDDBB13', '2', '', 'EndNode', 'hello', '5', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('29', '_D2280467-75FE-4301-A426-E891BDA26B9E', '2018-05-12 20:32:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_0A45E45C-4A0A-4B07-8294-77D83C03192D', '1', 'Say Hello Script', 'ActionNode', 'hello', '5', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('30', '_C9C0EC8D-C7A0-41F2-93B3-6F2ABAEB7DC0', '2018-05-12 20:32:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'hello', '5', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('31', null, '2018-05-12 20:34:04', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'hello', '6', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('32', '_C9C0EC8D-C7A0-41F2-93B3-6F2ABAEB7DC0', '2018-05-12 20:34:04', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_0A45E45C-4A0A-4B07-8294-77D83C03192D', '1', 'Say Hello Script', 'ActionNode', 'hello', '6', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('33', '_D2280467-75FE-4301-A426-E891BDA26B9E', '2018-05-12 20:34:04', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6B40DCEA-5374-46E7-9839-8F74DBDDBB13', '2', '', 'EndNode', 'hello', '6', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('34', null, '2018-05-12 20:34:04', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6B40DCEA-5374-46E7-9839-8F74DBDDBB13', '2', '', 'EndNode', 'hello', '6', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('35', '_D2280467-75FE-4301-A426-E891BDA26B9E', '2018-05-12 20:34:04', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_0A45E45C-4A0A-4B07-8294-77D83C03192D', '1', 'Say Hello Script', 'ActionNode', 'hello', '6', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('36', '_C9C0EC8D-C7A0-41F2-93B3-6F2ABAEB7DC0', '2018-05-12 20:34:04', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'hello', '6', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('37', null, '2018-05-13 05:54:06', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'org.jbpm.examples.checklist.sample1', '7', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('38', '_1-_2', '2018-05-13 05:54:06', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Task1', 'HumanTaskNode', 'org.jbpm.examples.checklist.sample1', '7', null, '0', null, '0', '1');
INSERT INTO `nodeinstancelog` VALUES ('39', '_1-_2', '2018-05-13 05:54:08', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'org.jbpm.examples.checklist.sample1', '7', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('40', null, '2018-05-13 05:56:32', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '8', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('41', '_1-_2', '2018-05-13 05:56:32', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '8', null, '0', null, '0', '2');
INSERT INTO `nodeinstancelog` VALUES ('42', '_1-_2', '2018-05-13 05:56:32', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '8', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('43', null, '2018-05-13 06:31:05', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '9', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('44', '_1-_2', '2018-05-13 06:31:05', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '9', null, '0', null, '0', '3');
INSERT INTO `nodeinstancelog` VALUES ('45', '_1-_2', '2018-05-13 06:31:06', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '9', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('46', null, '2018-05-13 06:42:27', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'org.jbpm.examples.checklist.sample1', '10', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('47', '_1-_2', '2018-05-13 06:42:27', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Task1', 'HumanTaskNode', 'org.jbpm.examples.checklist.sample1', '10', null, '0', null, '0', '4');
INSERT INTO `nodeinstancelog` VALUES ('48', '_1-_2', '2018-05-13 06:42:28', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'org.jbpm.examples.checklist.sample1', '10', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('49', null, '2018-05-13 09:16:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '11', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('50', '_1-_2', '2018-05-13 09:16:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '11', null, '0', null, '0', '5');
INSERT INTO `nodeinstancelog` VALUES ('51', '_1-_2', '2018-05-13 09:16:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '11', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('52', null, '2018-05-13 09:43:23', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '12', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('53', '_1-_2', '2018-05-13 09:43:23', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '12', null, '0', null, '0', '6');
INSERT INTO `nodeinstancelog` VALUES ('54', '_1-_2', '2018-05-13 09:43:24', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '12', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('55', null, '2018-05-13 10:00:31', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '13', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('56', '_1-_2', '2018-05-13 10:00:31', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '13', null, '0', null, '0', '7');
INSERT INTO `nodeinstancelog` VALUES ('57', '_1-_2', '2018-05-13 10:00:32', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '13', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('58', '_2-_5', '2018-05-13 11:34:39', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '13', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('59', '_5-_3', '2018-05-13 11:34:39', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '13', null, '0', null, '0', '8');
INSERT INTO `nodeinstancelog` VALUES ('60', '_5-_3', '2018-05-13 11:34:39', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '13', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('61', '_5-_4', '2018-05-13 11:34:39', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '13', null, '0', null, '0', '9');
INSERT INTO `nodeinstancelog` VALUES ('62', '_5-_4', '2018-05-13 11:34:39', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '13', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('63', '_2-_5', '2018-05-13 11:34:39', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '13', null, '0', null, '1', '7');
INSERT INTO `nodeinstancelog` VALUES ('64', null, '2018-05-13 12:10:46', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '14', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('65', '_1-_2', '2018-05-13 12:10:46', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '14', null, '0', null, '0', '10');
INSERT INTO `nodeinstancelog` VALUES ('66', '_1-_2', '2018-05-13 12:10:47', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '14', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('67', null, '2018-05-13 12:47:12', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '15', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('68', '_1-_2', '2018-05-13 12:47:12', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '15', null, '0', null, '0', '11');
INSERT INTO `nodeinstancelog` VALUES ('69', '_1-_2', '2018-05-13 12:47:13', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '15', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('70', '_2-_5', '2018-05-13 12:53:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '15', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('71', '_5-_3', '2018-05-13 12:53:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '15', null, '0', null, '0', '12');
INSERT INTO `nodeinstancelog` VALUES ('72', '_5-_3', '2018-05-13 12:53:39', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '15', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('73', '_5-_4', '2018-05-13 12:53:39', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '15', null, '0', null, '0', '13');
INSERT INTO `nodeinstancelog` VALUES ('74', '_5-_4', '2018-05-13 12:53:39', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '15', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('75', '_2-_5', '2018-05-13 12:53:39', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '15', null, '0', null, '1', '11');
INSERT INTO `nodeinstancelog` VALUES ('76', '_4-_6', '2018-05-13 13:11:03', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6', '5', 'Gateway', 'Join', 'com.sample.evaluation', '15', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('77', '_4-_6', '2018-05-13 13:11:03', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '15', null, '0', null, '1', '13');
INSERT INTO `nodeinstancelog` VALUES ('78', null, '2018-05-13 15:01:21', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '0', 'StartEvent', 'StartNode', 'mytest.helloworldScriptTask', '16', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('79', '_6', '2018-05-13 15:01:21', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '1', 'john', 'HumanTaskNode', 'mytest.helloworldScriptTask', '16', null, '0', null, '0', '14');
INSERT INTO `nodeinstancelog` VALUES ('80', '_6', '2018-05-13 15:01:22', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '0', 'StartEvent', 'StartNode', 'mytest.helloworldScriptTask', '16', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('81', '_7', '2018-05-13 15:02:10', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '2', 'mary', 'HumanTaskNode', 'mytest.helloworldScriptTask', '16', null, '0', null, '0', '15');
INSERT INTO `nodeinstancelog` VALUES ('82', '_7', '2018-05-13 15:02:11', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '1', 'john', 'HumanTaskNode', 'mytest.helloworldScriptTask', '16', null, '0', null, '1', '14');
INSERT INTO `nodeinstancelog` VALUES ('83', '_8', '2018-05-13 15:14:28', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_9', '3', 'tmp', 'HumanTaskNode', 'mytest.helloworldScriptTask', '16', null, '0', null, '0', '16');
INSERT INTO `nodeinstancelog` VALUES ('84', '_8', '2018-05-13 15:14:28', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '2', 'mary', 'HumanTaskNode', 'mytest.helloworldScriptTask', '16', null, '0', null, '1', '15');
INSERT INTO `nodeinstancelog` VALUES ('85', null, '2018-05-13 15:15:37', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '17', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('86', '_1-_2', '2018-05-13 15:15:37', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '17', null, '0', null, '0', '17');
INSERT INTO `nodeinstancelog` VALUES ('87', '_1-_2', '2018-05-13 15:15:37', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '17', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('88', '_2-_5', '2018-05-13 15:17:50', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '17', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('89', '_5-_4', '2018-05-13 15:17:50', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '17', null, '0', null, '0', '18');
INSERT INTO `nodeinstancelog` VALUES ('90', '_5-_4', '2018-05-13 15:17:50', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '17', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('91', '_5-_3', '2018-05-13 15:17:50', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '17', null, '0', null, '0', '19');
INSERT INTO `nodeinstancelog` VALUES ('92', '_5-_3', '2018-05-13 15:17:51', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '17', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('93', '_2-_5', '2018-05-13 15:17:51', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '17', null, '0', null, '1', '17');
INSERT INTO `nodeinstancelog` VALUES ('94', '_2-_5', '2018-05-13 15:17:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '14', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('95', '_5-_4', '2018-05-13 15:17:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '14', null, '0', null, '0', '20');
INSERT INTO `nodeinstancelog` VALUES ('96', '_5-_4', '2018-05-13 15:17:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '14', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('97', '_5-_3', '2018-05-13 15:17:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '14', null, '0', null, '0', '21');
INSERT INTO `nodeinstancelog` VALUES ('98', '_5-_3', '2018-05-13 15:17:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '14', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('99', '_2-_5', '2018-05-13 15:17:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '14', null, '0', null, '1', '10');
INSERT INTO `nodeinstancelog` VALUES ('100', null, '2018-05-13 15:35:25', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '0', 'StartEvent', 'StartNode', 'mytest.helloworldScriptTask', '18', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('101', '_6', '2018-05-13 15:35:25', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '1', 'john', 'HumanTaskNode', 'mytest.helloworldScriptTask', '18', null, '0', null, '0', '22');
INSERT INTO `nodeinstancelog` VALUES ('102', '_6', '2018-05-13 15:35:26', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '0', 'StartEvent', 'StartNode', 'mytest.helloworldScriptTask', '18', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('103', '_7', '2018-05-13 15:35:43', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '2', 'mary', 'HumanTaskNode', 'mytest.helloworldScriptTask', '18', null, '0', null, '0', '23');
INSERT INTO `nodeinstancelog` VALUES ('104', '_7', '2018-05-13 15:35:43', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '1', 'john', 'HumanTaskNode', 'mytest.helloworldScriptTask', '18', null, '0', null, '1', '22');
INSERT INTO `nodeinstancelog` VALUES ('105', '_8', '2018-05-13 15:36:21', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_9', '3', 'tmp', 'HumanTaskNode', 'mytest.helloworldScriptTask', '18', null, '0', null, '0', '24');
INSERT INTO `nodeinstancelog` VALUES ('106', '_8', '2018-05-13 15:36:21', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '2', 'mary', 'HumanTaskNode', 'mytest.helloworldScriptTask', '18', null, '0', null, '1', '23');
INSERT INTO `nodeinstancelog` VALUES ('107', null, '2018-05-13 15:38:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '19', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('108', '_1-_2', '2018-05-13 15:38:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '19', null, '0', null, '0', '25');
INSERT INTO `nodeinstancelog` VALUES ('109', '_1-_2', '2018-05-13 15:38:15', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '19', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('110', '_2-_5', '2018-05-13 15:38:54', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '19', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('111', '_5-_3', '2018-05-13 15:38:54', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '19', null, '0', null, '0', '26');
INSERT INTO `nodeinstancelog` VALUES ('112', '_5-_3', '2018-05-13 15:38:54', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '19', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('113', '_5-_4', '2018-05-13 15:38:54', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '19', null, '0', null, '0', '27');
INSERT INTO `nodeinstancelog` VALUES ('114', '_5-_4', '2018-05-13 15:38:54', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '19', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('115', '_2-_5', '2018-05-13 15:38:54', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '19', null, '0', null, '1', '25');
INSERT INTO `nodeinstancelog` VALUES ('116', null, '2018-05-13 16:36:19', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '0', 'StartEvent', 'StartNode', 'mytest.helloworldScriptTask', '20', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('117', '_6', '2018-05-13 16:36:19', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '1', 'john', 'HumanTaskNode', 'mytest.helloworldScriptTask', '20', null, '0', null, '0', '28');
INSERT INTO `nodeinstancelog` VALUES ('118', '_6', '2018-05-13 16:36:19', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '0', 'StartEvent', 'StartNode', 'mytest.helloworldScriptTask', '20', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('119', '_7', '2018-05-13 16:36:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '2', 'mary', 'HumanTaskNode', 'mytest.helloworldScriptTask', '20', null, '0', null, '0', '29');
INSERT INTO `nodeinstancelog` VALUES ('120', '_7', '2018-05-13 16:36:49', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '1', 'john', 'HumanTaskNode', 'mytest.helloworldScriptTask', '20', null, '0', null, '1', '28');
INSERT INTO `nodeinstancelog` VALUES ('121', '_8', '2018-05-13 16:37:10', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_9', '3', 'tmp', 'HumanTaskNode', 'mytest.helloworldScriptTask', '20', null, '0', null, '0', '30');
INSERT INTO `nodeinstancelog` VALUES ('122', '_8', '2018-05-13 16:37:10', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '2', 'mary', 'HumanTaskNode', 'mytest.helloworldScriptTask', '20', null, '0', null, '1', '29');
INSERT INTO `nodeinstancelog` VALUES ('123', null, '2018-05-13 16:42:33', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '21', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('124', '_1-_2', '2018-05-13 16:42:33', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '21', null, '0', null, '0', '31');
INSERT INTO `nodeinstancelog` VALUES ('125', '_1-_2', '2018-05-13 16:42:34', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '21', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('126', '_2-_5', '2018-05-13 16:42:46', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '21', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('127', '_5-_3', '2018-05-13 16:42:46', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '21', null, '0', null, '0', '32');
INSERT INTO `nodeinstancelog` VALUES ('128', '_5-_3', '2018-05-13 16:42:47', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '21', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('129', '_5-_4', '2018-05-13 16:42:47', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '21', null, '0', null, '0', '33');
INSERT INTO `nodeinstancelog` VALUES ('130', '_5-_4', '2018-05-13 16:42:47', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '21', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('131', '_2-_5', '2018-05-13 16:42:47', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '21', null, '0', null, '1', '31');
INSERT INTO `nodeinstancelog` VALUES ('132', null, '2018-05-13 20:09:08', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '22', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('133', '_1-_2', '2018-05-13 20:09:08', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '22', null, '0', null, '0', '34');
INSERT INTO `nodeinstancelog` VALUES ('134', '_1-_2', '2018-05-13 20:09:08', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '22', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('135', '_2-_5', '2018-05-13 20:10:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '22', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('136', '_5-_3', '2018-05-13 20:10:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '22', null, '0', null, '0', '35');
INSERT INTO `nodeinstancelog` VALUES ('137', '_5-_3', '2018-05-13 20:10:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '22', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('138', '_5-_4', '2018-05-13 20:10:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '22', null, '0', null, '0', '36');
INSERT INTO `nodeinstancelog` VALUES ('139', '_5-_4', '2018-05-13 20:10:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '22', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('140', '_2-_5', '2018-05-13 20:10:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '22', null, '0', null, '1', '34');
INSERT INTO `nodeinstancelog` VALUES ('141', null, '2018-05-13 21:15:46', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '23', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('142', '_1-_2', '2018-05-13 21:15:46', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '23', null, '0', null, '0', '37');
INSERT INTO `nodeinstancelog` VALUES ('143', '_1-_2', '2018-05-13 21:15:46', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '23', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('146', null, '2018-05-13 21:24:29', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '25', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('147', '_1-_2', '2018-05-13 21:24:29', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '25', null, '0', null, '0', '39');
INSERT INTO `nodeinstancelog` VALUES ('148', '_1-_2', '2018-05-13 21:24:34', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '25', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('149', null, '2018-05-13 21:31:45', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '26', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('150', '_1-_2', '2018-05-13 21:31:45', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '26', null, '0', null, '0', '40');
INSERT INTO `nodeinstancelog` VALUES ('151', '_1-_2', '2018-05-13 21:32:05', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '26', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('154', null, '2018-05-13 21:50:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '28', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('155', '_1-_2', '2018-05-13 21:50:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '28', null, '0', null, '0', '42');
INSERT INTO `nodeinstancelog` VALUES ('156', '_1-_2', '2018-05-13 21:50:25', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '28', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('157', null, '2018-05-13 21:59:26', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '29', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('158', '_1-_2', '2018-05-13 21:59:26', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '29', null, '0', null, '0', '43');
INSERT INTO `nodeinstancelog` VALUES ('159', '_1-_2', '2018-05-13 21:59:26', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '29', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('160', null, '2018-05-13 21:59:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '30', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('161', '_1-_2', '2018-05-13 21:59:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '30', null, '0', null, '0', '44');
INSERT INTO `nodeinstancelog` VALUES ('162', '_1-_2', '2018-05-13 21:59:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '30', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('163', null, '2018-05-13 22:00:29', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '31', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('164', '_1-_2', '2018-05-13 22:00:29', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '31', null, '0', null, '0', '45');
INSERT INTO `nodeinstancelog` VALUES ('165', '_1-_2', '2018-05-13 22:00:29', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '31', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('166', null, '2018-05-14 08:14:19', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '32', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('167', '_1-_2', '2018-05-14 08:14:19', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '32', null, '0', null, '0', '46');
INSERT INTO `nodeinstancelog` VALUES ('168', '_1-_2', '2018-05-14 08:14:21', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '32', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('169', '_2-_5', '2018-05-14 08:14:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '32', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('170', '_5-_3', '2018-05-14 08:14:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '32', null, '0', null, '0', '47');
INSERT INTO `nodeinstancelog` VALUES ('171', '_5-_3', '2018-05-14 08:14:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '32', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('172', '_5-_4', '2018-05-14 08:14:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '32', null, '0', null, '0', '48');
INSERT INTO `nodeinstancelog` VALUES ('173', '_5-_4', '2018-05-14 08:14:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '32', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('174', '_2-_5', '2018-05-14 08:14:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '32', null, '0', null, '1', '46');
INSERT INTO `nodeinstancelog` VALUES ('175', null, '2018-05-14 08:18:43', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '33', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('176', '_1-_2', '2018-05-14 08:18:43', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '33', null, '0', null, '0', '49');
INSERT INTO `nodeinstancelog` VALUES ('177', '_1-_2', '2018-05-14 08:18:43', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '33', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('178', '_2-_5', '2018-05-14 08:20:10', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '33', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('179', '_5-_3', '2018-05-14 08:20:10', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '33', null, '0', null, '0', '50');
INSERT INTO `nodeinstancelog` VALUES ('180', '_5-_3', '2018-05-14 08:20:10', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '33', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('181', '_5-_4', '2018-05-14 08:20:10', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '33', null, '0', null, '0', '51');
INSERT INTO `nodeinstancelog` VALUES ('182', '_5-_4', '2018-05-14 08:20:10', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '33', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('183', '_2-_5', '2018-05-14 08:20:10', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '33', null, '0', null, '1', '49');
INSERT INTO `nodeinstancelog` VALUES ('184', null, '2018-05-14 09:39:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '34', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('185', '_1-_2', '2018-05-14 09:39:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '34', null, '0', null, '0', '52');
INSERT INTO `nodeinstancelog` VALUES ('186', '_1-_2', '2018-05-14 09:39:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '34', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('187', null, '2018-05-14 09:41:35', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '35', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('188', '_1-_2', '2018-05-14 09:41:35', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '35', null, '0', null, '0', '53');
INSERT INTO `nodeinstancelog` VALUES ('189', '_1-_2', '2018-05-14 09:41:35', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '35', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('190', null, '2018-05-14 09:44:07', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '36', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('191', '_1-_2', '2018-05-14 09:44:07', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '36', null, '0', null, '0', '54');
INSERT INTO `nodeinstancelog` VALUES ('192', '_1-_2', '2018-05-14 09:44:07', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '36', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('193', null, '2018-05-14 09:44:31', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '37', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('194', '_1-_2', '2018-05-14 09:44:31', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '37', null, '0', null, '0', '55');
INSERT INTO `nodeinstancelog` VALUES ('195', '_1-_2', '2018-05-14 09:44:31', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '37', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('196', null, '2018-05-14 09:54:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '38', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('197', '_1-_2', '2018-05-14 09:54:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '38', null, '0', null, '0', '56');
INSERT INTO `nodeinstancelog` VALUES ('198', '_1-_2', '2018-05-14 09:54:40', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '38', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('199', null, '2018-05-14 10:00:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '39', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('200', '_1-_2', '2018-05-14 10:00:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '39', null, '0', null, '0', '57');
INSERT INTO `nodeinstancelog` VALUES ('201', '_1-_2', '2018-05-14 10:00:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '39', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('202', '_2-_5', '2018-05-14 11:54:47', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '39', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('203', '_5-_4', '2018-05-14 11:54:47', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '39', null, '0', null, '0', '58');
INSERT INTO `nodeinstancelog` VALUES ('204', '_5-_4', '2018-05-14 11:54:47', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '39', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('205', '_5-_3', '2018-05-14 11:54:47', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '39', null, '0', null, '0', '59');
INSERT INTO `nodeinstancelog` VALUES ('206', '_5-_3', '2018-05-14 11:54:47', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '39', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('207', '_2-_5', '2018-05-14 11:54:47', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '39', null, '0', null, '1', '57');
INSERT INTO `nodeinstancelog` VALUES ('208', '_3-_6', '2018-05-14 13:33:15', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6', '5', 'Gateway', 'Join', 'com.sample.evaluation', '39', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('209', '_3-_6', '2018-05-14 13:33:15', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '39', null, '0', null, '1', '59');
INSERT INTO `nodeinstancelog` VALUES ('210', '_4-_6', '2018-05-14 13:33:51', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6', '5', 'Gateway', 'Join', 'com.sample.evaluation', '39', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('211', '_6-_7', '2018-05-14 13:33:51', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_7', '6', 'End', 'EndNode', 'com.sample.evaluation', '39', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('212', null, '2018-05-14 13:33:51', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_7', '6', 'End', 'EndNode', 'com.sample.evaluation', '39', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('213', '_6-_7', '2018-05-14 13:33:51', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6', '5', 'Gateway', 'Join', 'com.sample.evaluation', '39', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('214', '_4-_6', '2018-05-14 13:33:51', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '39', null, '0', null, '1', '58');
INSERT INTO `nodeinstancelog` VALUES ('215', null, '2018-05-14 13:34:35', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '40', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('216', '_1-_2', '2018-05-14 13:34:35', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '40', null, '0', null, '0', '60');
INSERT INTO `nodeinstancelog` VALUES ('217', '_1-_2', '2018-05-14 13:34:35', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '40', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('218', '_2-_5', '2018-05-14 13:34:51', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '40', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('219', '_5-_4', '2018-05-14 13:34:51', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '40', null, '0', null, '0', '61');
INSERT INTO `nodeinstancelog` VALUES ('220', '_5-_4', '2018-05-14 13:34:52', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '40', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('221', '_5-_3', '2018-05-14 13:34:52', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '40', null, '0', null, '0', '62');
INSERT INTO `nodeinstancelog` VALUES ('222', '_5-_3', '2018-05-14 13:34:52', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '40', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('223', '_2-_5', '2018-05-14 13:34:52', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '40', null, '0', null, '1', '60');
INSERT INTO `nodeinstancelog` VALUES ('224', '_4-_6', '2018-05-14 13:35:32', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6', '5', 'Gateway', 'Join', 'com.sample.evaluation', '40', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('225', '_4-_6', '2018-05-14 13:35:32', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '40', null, '0', null, '1', '61');
INSERT INTO `nodeinstancelog` VALUES ('226', null, '2018-05-14 13:38:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '0', 'StartEvent', 'StartNode', 'mytest.helloworldScriptTask', '41', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('227', '_6', '2018-05-14 13:38:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '1', 'john', 'HumanTaskNode', 'mytest.helloworldScriptTask', '41', null, '0', null, '0', '63');
INSERT INTO `nodeinstancelog` VALUES ('228', '_6', '2018-05-14 13:38:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '0', 'StartEvent', 'StartNode', 'mytest.helloworldScriptTask', '41', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('229', '_7', '2018-05-14 13:39:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '2', 'mary', 'HumanTaskNode', 'mytest.helloworldScriptTask', '41', null, '0', null, '0', '64');
INSERT INTO `nodeinstancelog` VALUES ('230', '_7', '2018-05-14 13:39:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '1', 'john', 'HumanTaskNode', 'mytest.helloworldScriptTask', '41', null, '0', null, '1', '63');
INSERT INTO `nodeinstancelog` VALUES ('231', '_8', '2018-05-14 13:39:45', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_9', '3', 'tmp', 'HumanTaskNode', 'mytest.helloworldScriptTask', '41', null, '0', null, '0', '65');
INSERT INTO `nodeinstancelog` VALUES ('232', '_8', '2018-05-14 13:39:45', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '2', 'mary', 'HumanTaskNode', 'mytest.helloworldScriptTask', '41', null, '0', null, '1', '64');
INSERT INTO `nodeinstancelog` VALUES ('233', null, '2018-05-14 18:18:31', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '42', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('234', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-14 18:18:31', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_B4E7FFE7-2643-445C-A417-0824153FD3F9', '1', '业务部审核', 'HumanTaskNode', 'src.processTest', '42', null, '0', null, '0', '66');
INSERT INTO `nodeinstancelog` VALUES ('235', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-14 18:18:34', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '42', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('236', '_410F031B-0414-4817-98A9-FC74565CD41A', '2018-05-14 18:21:18', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '42', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('237', '_8552C6EA-B139-4B2C-9044-5C8893045D02', '2018-05-14 18:21:18', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_937EBE10-E51B-4A1B-AE29-8956EEB2948E', '3', 'HR审核', 'HumanTaskNode', 'src.processTest', '42', null, '0', null, '0', '67');
INSERT INTO `nodeinstancelog` VALUES ('238', '_8552C6EA-B139-4B2C-9044-5C8893045D02', '2018-05-14 18:21:18', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '42', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('239', '_BEF2037B-4BFC-4D44-BAD3-653D2915FA64', '2018-05-14 18:21:18', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_82E94725-6856-4823-9FE5-14039A24E292', '4', 'PM 审核', 'HumanTaskNode', 'src.processTest', '42', null, '0', null, '0', '68');
INSERT INTO `nodeinstancelog` VALUES ('240', '_BEF2037B-4BFC-4D44-BAD3-653D2915FA64', '2018-05-14 18:21:18', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '42', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('241', '_410F031B-0414-4817-98A9-FC74565CD41A', '2018-05-14 18:21:18', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_B4E7FFE7-2643-445C-A417-0824153FD3F9', '1', '业务部审核', 'HumanTaskNode', 'src.processTest', '42', null, '0', null, '1', '66');
INSERT INTO `nodeinstancelog` VALUES ('242', null, '2018-05-15 17:41:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '43', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('243', '_1-_2', '2018-05-15 17:41:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '43', null, '0', null, '0', '69');
INSERT INTO `nodeinstancelog` VALUES ('244', '_1-_2', '2018-05-15 17:41:51', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '43', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('245', null, '2018-05-15 17:42:24', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '44', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('246', '_1-_2', '2018-05-15 17:42:24', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '44', null, '0', null, '0', '70');
INSERT INTO `nodeinstancelog` VALUES ('247', '_1-_2', '2018-05-15 17:42:24', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '44', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('248', '_2-_5', '2018-05-15 17:42:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '44', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('249', '_5-_4', '2018-05-15 17:42:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '44', null, '0', null, '0', '71');
INSERT INTO `nodeinstancelog` VALUES ('250', '_5-_4', '2018-05-15 17:42:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '44', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('251', '_5-_3', '2018-05-15 17:42:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '44', null, '0', null, '0', '72');
INSERT INTO `nodeinstancelog` VALUES ('252', '_5-_3', '2018-05-15 17:42:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '44', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('253', '_2-_5', '2018-05-15 17:42:38', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '44', null, '0', null, '1', '70');
INSERT INTO `nodeinstancelog` VALUES ('254', '_4-_6', '2018-05-15 17:43:02', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6', '5', 'Gateway', 'Join', 'com.sample.evaluation', '44', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('255', '_4-_6', '2018-05-15 17:43:02', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '44', null, '0', null, '1', '71');
INSERT INTO `nodeinstancelog` VALUES ('256', '_3-_6', '2018-05-15 17:45:11', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6', '5', 'Gateway', 'Join', 'com.sample.evaluation', '44', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('257', '_6-_7', '2018-05-15 17:45:11', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_7', '6', 'End', 'EndNode', 'com.sample.evaluation', '44', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('258', null, '2018-05-15 17:45:11', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_7', '6', 'End', 'EndNode', 'com.sample.evaluation', '44', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('259', '_6-_7', '2018-05-15 17:45:11', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_6', '5', 'Gateway', 'Join', 'com.sample.evaluation', '44', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('260', '_3-_6', '2018-05-15 17:45:11', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '44', null, '0', null, '1', '72');
INSERT INTO `nodeinstancelog` VALUES ('261', null, '2018-05-15 20:27:51', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '45', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('262', '_1-_2', '2018-05-15 20:27:51', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '45', null, '0', null, '0', '73');
INSERT INTO `nodeinstancelog` VALUES ('263', '_1-_2', '2018-05-15 20:27:53', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '45', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('264', null, '2018-05-15 20:31:25', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '46', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('265', '_1-_2', '2018-05-15 20:31:25', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '46', null, '0', null, '0', '74');
INSERT INTO `nodeinstancelog` VALUES ('266', '_1-_2', '2018-05-15 20:31:26', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '46', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('267', null, '2018-05-15 20:50:57', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '47', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('268', '_1-_2', '2018-05-15 20:50:57', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '47', null, '0', null, '0', '75');
INSERT INTO `nodeinstancelog` VALUES ('269', '_1-_2', '2018-05-15 20:50:59', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '47', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('270', null, '2018-05-15 20:58:13', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '48', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('271', '_1-_2', '2018-05-15 20:58:13', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '48', null, '0', null, '0', '76');
INSERT INTO `nodeinstancelog` VALUES ('272', '_1-_2', '2018-05-15 20:58:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '48', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('273', null, '2018-05-15 21:55:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '49', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('274', '_1-_2', '2018-05-15 21:55:55', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '49', null, '0', null, '0', '77');
INSERT INTO `nodeinstancelog` VALUES ('275', '_1-_2', '2018-05-15 21:55:56', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '49', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('276', null, '2018-05-15 22:06:29', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '50', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('277', '_1-_2', '2018-05-15 22:06:29', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '50', null, '0', null, '0', '78');
INSERT INTO `nodeinstancelog` VALUES ('278', '_1-_2', '2018-05-15 22:06:30', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '50', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('279', '_2-_5', '2018-05-15 22:07:05', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '50', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('280', '_5-_4', '2018-05-15 22:07:05', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_4', '4', 'HR Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '50', null, '0', null, '0', '79');
INSERT INTO `nodeinstancelog` VALUES ('281', '_5-_4', '2018-05-15 22:07:05', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '50', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('282', '_5-_3', '2018-05-15 22:07:05', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3', '3', 'PM Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '50', null, '0', null, '0', '80');
INSERT INTO `nodeinstancelog` VALUES ('283', '_5-_3', '2018-05-15 22:07:05', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_5', '2', 'Gateway', 'Split', 'com.sample.evaluation', '50', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('284', '_2-_5', '2018-05-15 22:07:05', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '50', null, '0', null, '1', '78');
INSERT INTO `nodeinstancelog` VALUES ('285', null, '2018-05-16 13:42:42', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '51', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('286', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-16 13:42:42', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_B4E7FFE7-2643-445C-A417-0824153FD3F9', '1', '业务部审核', 'HumanTaskNode', 'src.processTest', '51', null, '0', null, '0', '81');
INSERT INTO `nodeinstancelog` VALUES ('287', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-16 13:42:43', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '51', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('288', '_410F031B-0414-4817-98A9-FC74565CD41A', '2018-05-16 13:44:28', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '51', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('289', '_8552C6EA-B139-4B2C-9044-5C8893045D02', '2018-05-16 13:44:28', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_937EBE10-E51B-4A1B-AE29-8956EEB2948E', '3', 'HR审核', 'HumanTaskNode', 'src.processTest', '51', null, '0', null, '0', '82');
INSERT INTO `nodeinstancelog` VALUES ('290', '_8552C6EA-B139-4B2C-9044-5C8893045D02', '2018-05-16 13:44:28', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '51', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('291', '_BEF2037B-4BFC-4D44-BAD3-653D2915FA64', '2018-05-16 13:44:28', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_82E94725-6856-4823-9FE5-14039A24E292', '4', 'PM 审核', 'HumanTaskNode', 'src.processTest', '51', null, '0', null, '0', '83');
INSERT INTO `nodeinstancelog` VALUES ('292', '_BEF2037B-4BFC-4D44-BAD3-653D2915FA64', '2018-05-16 13:44:28', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '51', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('293', '_410F031B-0414-4817-98A9-FC74565CD41A', '2018-05-16 13:44:28', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_B4E7FFE7-2643-445C-A417-0824153FD3F9', '1', '业务部审核', 'HumanTaskNode', 'src.processTest', '51', null, '0', null, '1', '81');
INSERT INTO `nodeinstancelog` VALUES ('294', '_ACF75478-624B-40AF-A8C1-77C79CDDB9BE', '2018-05-16 13:45:00', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_CD7884A1-52F0-4D98-B856-A365A46B3C0D', '5', '', 'Join', 'src.processTest', '51', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('295', '_ACF75478-624B-40AF-A8C1-77C79CDDB9BE', '2018-05-16 13:45:00', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_937EBE10-E51B-4A1B-AE29-8956EEB2948E', '3', 'HR审核', 'HumanTaskNode', 'src.processTest', '51', null, '0', null, '1', '82');
INSERT INTO `nodeinstancelog` VALUES ('296', '_CFAFEEDC-7202-4291-8067-7E7EB113AF20', '2018-05-16 13:45:44', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_CD7884A1-52F0-4D98-B856-A365A46B3C0D', '5', '', 'Join', 'src.processTest', '51', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('297', '_58F5A74A-493B-49EC-BCED-60A9C6323B5D', '2018-05-16 13:45:44', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1E401900-B942-4AD8-957B-29EBB0D0115F', '6', '风控部门审核', 'HumanTaskNode', 'src.processTest', '51', null, '0', null, '0', '84');
INSERT INTO `nodeinstancelog` VALUES ('298', '_58F5A74A-493B-49EC-BCED-60A9C6323B5D', '2018-05-16 13:45:45', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_CD7884A1-52F0-4D98-B856-A365A46B3C0D', '5', '', 'Join', 'src.processTest', '51', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('299', '_CFAFEEDC-7202-4291-8067-7E7EB113AF20', '2018-05-16 13:45:45', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_82E94725-6856-4823-9FE5-14039A24E292', '4', 'PM 审核', 'HumanTaskNode', 'src.processTest', '51', null, '0', null, '1', '83');
INSERT INTO `nodeinstancelog` VALUES ('300', null, '2018-05-16 13:54:00', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '52', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('301', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-16 13:54:00', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_B4E7FFE7-2643-445C-A417-0824153FD3F9', '1', '业务部审核', 'HumanTaskNode', 'src.processTest', '52', null, '0', null, '0', '85');
INSERT INTO `nodeinstancelog` VALUES ('302', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-16 13:54:01', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '52', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('303', null, '2018-05-16 14:13:39', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '53', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('304', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-16 14:13:39', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_B4E7FFE7-2643-445C-A417-0824153FD3F9', '1', '业务部审核', 'HumanTaskNode', 'src.processTest', '53', null, '0', null, '0', '86');
INSERT INTO `nodeinstancelog` VALUES ('305', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-16 14:13:40', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '53', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('306', '_410F031B-0414-4817-98A9-FC74565CD41A', '2018-05-16 14:14:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '53', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('307', '_8552C6EA-B139-4B2C-9044-5C8893045D02', '2018-05-16 14:14:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_937EBE10-E51B-4A1B-AE29-8956EEB2948E', '3', 'HR审核', 'HumanTaskNode', 'src.processTest', '53', null, '0', null, '0', '87');
INSERT INTO `nodeinstancelog` VALUES ('308', '_8552C6EA-B139-4B2C-9044-5C8893045D02', '2018-05-16 14:14:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '53', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('309', '_BEF2037B-4BFC-4D44-BAD3-653D2915FA64', '2018-05-16 14:14:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_82E94725-6856-4823-9FE5-14039A24E292', '4', 'PM 审核', 'HumanTaskNode', 'src.processTest', '53', null, '0', null, '0', '88');
INSERT INTO `nodeinstancelog` VALUES ('310', '_BEF2037B-4BFC-4D44-BAD3-653D2915FA64', '2018-05-16 14:14:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '53', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('311', '_410F031B-0414-4817-98A9-FC74565CD41A', '2018-05-16 14:14:14', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_B4E7FFE7-2643-445C-A417-0824153FD3F9', '1', '业务部审核', 'HumanTaskNode', 'src.processTest', '53', null, '0', null, '1', '86');
INSERT INTO `nodeinstancelog` VALUES ('312', '_ACF75478-624B-40AF-A8C1-77C79CDDB9BE', '2018-05-16 14:15:10', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_CD7884A1-52F0-4D98-B856-A365A46B3C0D', '5', '', 'Join', 'src.processTest', '53', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('313', '_ACF75478-624B-40AF-A8C1-77C79CDDB9BE', '2018-05-16 14:15:10', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_937EBE10-E51B-4A1B-AE29-8956EEB2948E', '3', 'HR审核', 'HumanTaskNode', 'src.processTest', '53', null, '0', null, '1', '87');
INSERT INTO `nodeinstancelog` VALUES ('314', null, '2018-05-16 14:25:58', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '54', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('315', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-16 14:25:58', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_B4E7FFE7-2643-445C-A417-0824153FD3F9', '1', '业务部审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '0', '89');
INSERT INTO `nodeinstancelog` VALUES ('316', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-16 14:25:59', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '54', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('317', '_410F031B-0414-4817-98A9-FC74565CD41A', '2018-05-16 14:26:25', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '54', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('318', '_BEF2037B-4BFC-4D44-BAD3-653D2915FA64', '2018-05-16 14:26:25', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_82E94725-6856-4823-9FE5-14039A24E292', '4', 'PM 审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '0', '90');
INSERT INTO `nodeinstancelog` VALUES ('319', '_BEF2037B-4BFC-4D44-BAD3-653D2915FA64', '2018-05-16 14:26:25', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '54', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('320', '_8552C6EA-B139-4B2C-9044-5C8893045D02', '2018-05-16 14:26:25', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_937EBE10-E51B-4A1B-AE29-8956EEB2948E', '3', 'HR审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '0', '91');
INSERT INTO `nodeinstancelog` VALUES ('321', '_8552C6EA-B139-4B2C-9044-5C8893045D02', '2018-05-16 14:26:25', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '54', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('322', '_410F031B-0414-4817-98A9-FC74565CD41A', '2018-05-16 14:26:25', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_B4E7FFE7-2643-445C-A417-0824153FD3F9', '1', '业务部审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '1', '89');
INSERT INTO `nodeinstancelog` VALUES ('323', '_ACF75478-624B-40AF-A8C1-77C79CDDB9BE', '2018-05-16 14:27:22', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_CD7884A1-52F0-4D98-B856-A365A46B3C0D', '5', '', 'Join', 'src.processTest', '54', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('324', '_ACF75478-624B-40AF-A8C1-77C79CDDB9BE', '2018-05-16 14:27:22', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_937EBE10-E51B-4A1B-AE29-8956EEB2948E', '3', 'HR审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '1', '91');
INSERT INTO `nodeinstancelog` VALUES ('325', '_CFAFEEDC-7202-4291-8067-7E7EB113AF20', '2018-05-16 14:28:53', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_CD7884A1-52F0-4D98-B856-A365A46B3C0D', '5', '', 'Join', 'src.processTest', '54', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('326', '_58F5A74A-493B-49EC-BCED-60A9C6323B5D', '2018-05-16 14:28:53', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1E401900-B942-4AD8-957B-29EBB0D0115F', '6', '风控部门审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '0', '92');
INSERT INTO `nodeinstancelog` VALUES ('327', '_58F5A74A-493B-49EC-BCED-60A9C6323B5D', '2018-05-16 14:28:53', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_CD7884A1-52F0-4D98-B856-A365A46B3C0D', '5', '', 'Join', 'src.processTest', '54', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('328', '_CFAFEEDC-7202-4291-8067-7E7EB113AF20', '2018-05-16 14:28:53', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_82E94725-6856-4823-9FE5-14039A24E292', '4', 'PM 审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '1', '90');
INSERT INTO `nodeinstancelog` VALUES ('329', '_E8E3B725-A7AC-4A0C-8556-1760E1FA80D6', '2018-05-16 14:32:19', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_EF604E66-4920-4F81-8663-29BE618E9AD2', '7', '财务部审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '0', '93');
INSERT INTO `nodeinstancelog` VALUES ('330', '_E8E3B725-A7AC-4A0C-8556-1760E1FA80D6', '2018-05-16 14:32:19', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1E401900-B942-4AD8-957B-29EBB0D0115F', '6', '风控部门审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '1', '92');
INSERT INTO `nodeinstancelog` VALUES ('331', '_5464D0BB-8AAF-4EC4-8087-909B4874B6BF', '2018-05-16 14:34:29', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3890D2EA-F720-41C7-A967-46EB127F2F3A', '8', 'CEＯ审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '0', '94');
INSERT INTO `nodeinstancelog` VALUES ('332', '_5464D0BB-8AAF-4EC4-8087-909B4874B6BF', '2018-05-16 14:34:30', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_EF604E66-4920-4F81-8663-29BE618E9AD2', '7', '财务部审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '1', '93');
INSERT INTO `nodeinstancelog` VALUES ('333', '_3E2A97D5-70D1-47D2-92D2-91988616D130', '2018-05-16 14:42:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_520858EE-4CF7-4EC2-875D-BF9F3B7CF35A', '9', '总裁审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '0', '95');
INSERT INTO `nodeinstancelog` VALUES ('334', '_3E2A97D5-70D1-47D2-92D2-91988616D130', '2018-05-16 14:42:49', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3890D2EA-F720-41C7-A967-46EB127F2F3A', '8', 'CEＯ审核', 'HumanTaskNode', 'src.processTest', '54', null, '0', null, '1', '94');
INSERT INTO `nodeinstancelog` VALUES ('335', null, '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '55', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('336', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_B4E7FFE7-2643-445C-A417-0824153FD3F9', '1', '业务部审核', 'HumanTaskNode', 'src.processTest', '55', null, '0', null, '0', '96');
INSERT INTO `nodeinstancelog` VALUES ('337', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '55', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('338', null, '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '56', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('339', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_B4E7FFE7-2643-445C-A417-0824153FD3F9', '1', '业务部审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '0', '97');
INSERT INTO `nodeinstancelog` VALUES ('340', '_ABB05CE6-2DDC-48FE-B9F6-644E9FC7E74F', '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', null, 'processStartEvent', '0', '', 'StartNode', 'src.processTest', '56', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('341', '_410F031B-0414-4817-98A9-FC74565CD41A', '2018-05-16 15:01:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '56', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('342', '_8552C6EA-B139-4B2C-9044-5C8893045D02', '2018-05-16 15:01:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_937EBE10-E51B-4A1B-AE29-8956EEB2948E', '3', 'HR审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '0', '98');
INSERT INTO `nodeinstancelog` VALUES ('343', '_8552C6EA-B139-4B2C-9044-5C8893045D02', '2018-05-16 15:01:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '56', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('344', '_BEF2037B-4BFC-4D44-BAD3-653D2915FA64', '2018-05-16 15:01:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_82E94725-6856-4823-9FE5-14039A24E292', '4', 'PM 审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '0', '99');
INSERT INTO `nodeinstancelog` VALUES ('345', '_BEF2037B-4BFC-4D44-BAD3-653D2915FA64', '2018-05-16 15:01:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_F0EC79DB-E582-424F-A680-47DC83444B55', '2', '', 'Split', 'src.processTest', '56', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('346', '_410F031B-0414-4817-98A9-FC74565CD41A', '2018-05-16 15:01:48', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_B4E7FFE7-2643-445C-A417-0824153FD3F9', '1', '业务部审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '1', '97');
INSERT INTO `nodeinstancelog` VALUES ('347', '_ACF75478-624B-40AF-A8C1-77C79CDDB9BE', '2018-05-16 15:02:43', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_CD7884A1-52F0-4D98-B856-A365A46B3C0D', '5', '', 'Join', 'src.processTest', '56', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('348', '_ACF75478-624B-40AF-A8C1-77C79CDDB9BE', '2018-05-16 15:02:43', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_937EBE10-E51B-4A1B-AE29-8956EEB2948E', '3', 'HR审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '1', '98');
INSERT INTO `nodeinstancelog` VALUES ('349', '_CFAFEEDC-7202-4291-8067-7E7EB113AF20', '2018-05-16 15:03:03', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_CD7884A1-52F0-4D98-B856-A365A46B3C0D', '5', '', 'Join', 'src.processTest', '56', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('350', '_58F5A74A-493B-49EC-BCED-60A9C6323B5D', '2018-05-16 15:03:03', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1E401900-B942-4AD8-957B-29EBB0D0115F', '6', '风控部门审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '0', '100');
INSERT INTO `nodeinstancelog` VALUES ('351', '_58F5A74A-493B-49EC-BCED-60A9C6323B5D', '2018-05-16 15:03:03', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_CD7884A1-52F0-4D98-B856-A365A46B3C0D', '5', '', 'Join', 'src.processTest', '56', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('352', '_CFAFEEDC-7202-4291-8067-7E7EB113AF20', '2018-05-16 15:03:03', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_82E94725-6856-4823-9FE5-14039A24E292', '4', 'PM 审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '1', '99');
INSERT INTO `nodeinstancelog` VALUES ('353', '_E8E3B725-A7AC-4A0C-8556-1760E1FA80D6', '2018-05-16 15:03:54', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_EF604E66-4920-4F81-8663-29BE618E9AD2', '7', '财务部审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '0', '101');
INSERT INTO `nodeinstancelog` VALUES ('354', '_E8E3B725-A7AC-4A0C-8556-1760E1FA80D6', '2018-05-16 15:03:54', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1E401900-B942-4AD8-957B-29EBB0D0115F', '6', '风控部门审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '1', '100');
INSERT INTO `nodeinstancelog` VALUES ('355', '_5464D0BB-8AAF-4EC4-8087-909B4874B6BF', '2018-05-16 15:04:19', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3890D2EA-F720-41C7-A967-46EB127F2F3A', '8', 'CEＯ审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '0', '102');
INSERT INTO `nodeinstancelog` VALUES ('356', '_5464D0BB-8AAF-4EC4-8087-909B4874B6BF', '2018-05-16 15:04:19', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_EF604E66-4920-4F81-8663-29BE618E9AD2', '7', '财务部审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '1', '101');
INSERT INTO `nodeinstancelog` VALUES ('357', '_3E2A97D5-70D1-47D2-92D2-91988616D130', '2018-05-16 15:05:00', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_520858EE-4CF7-4EC2-875D-BF9F3B7CF35A', '9', '总裁审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '0', '103');
INSERT INTO `nodeinstancelog` VALUES ('358', '_3E2A97D5-70D1-47D2-92D2-91988616D130', '2018-05-16 15:05:00', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_3890D2EA-F720-41C7-A967-46EB127F2F3A', '8', 'CEＯ审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '1', '102');
INSERT INTO `nodeinstancelog` VALUES ('359', '_27004D37-901E-4C4F-8468-A1EF8F7A918C', '2018-05-16 15:06:09', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_800EF339-076B-4AA2-9736-329E1AB7F836', '10', '', 'EndNode', 'src.processTest', '56', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('360', null, '2018-05-16 15:06:09', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_800EF339-076B-4AA2-9736-329E1AB7F836', '10', '', 'EndNode', 'src.processTest', '56', null, '0', null, '1', null);
INSERT INTO `nodeinstancelog` VALUES ('361', '_27004D37-901E-4C4F-8468-A1EF8F7A918C', '2018-05-16 15:06:09', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_520858EE-4CF7-4EC2-875D-BF9F3B7CF35A', '9', '总裁审核', 'HumanTaskNode', 'src.processTest', '56', null, '0', null, '1', '103');
INSERT INTO `nodeinstancelog` VALUES ('362', null, '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '57', null, '0', null, '0', null);
INSERT INTO `nodeinstancelog` VALUES ('363', '_1-_2', '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_2', '1', 'Self Evaluation', 'HumanTaskNode', 'com.sample.evaluation', '57', null, '0', null, '0', '104');
INSERT INTO `nodeinstancelog` VALUES ('364', '_1-_2', '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', null, '_1', '0', 'Start', 'StartNode', 'com.sample.evaluation', '57', null, '0', null, '1', null);

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `DTYPE` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `priority` int(11) NOT NULL,
  `Escalation_Notifications_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoxq5uqfg4ylwyijsg2ubyflna` (`Escalation_Notifications_Id`),
  CONSTRAINT `FKoxq5uqfg4ylwyijsg2ubyflna` FOREIGN KEY (`Escalation_Notifications_Id`) REFERENCES `escalation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notification
-- ----------------------------

-- ----------------------------
-- Table structure for notification_bas
-- ----------------------------
DROP TABLE IF EXISTS `notification_bas`;
CREATE TABLE `notification_bas` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FK378pb1cvjv54w4ljqpw99s3wr` (`entity_id`),
  KEY `FKb123fgeomc741s9yc014421yy` (`task_id`),
  CONSTRAINT `FK378pb1cvjv54w4ljqpw99s3wr` FOREIGN KEY (`entity_id`) REFERENCES `organizationalentity` (`id`),
  CONSTRAINT `FKb123fgeomc741s9yc014421yy` FOREIGN KEY (`task_id`) REFERENCES `notification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notification_bas
-- ----------------------------

-- ----------------------------
-- Table structure for notification_email_header
-- ----------------------------
DROP TABLE IF EXISTS `notification_email_header`;
CREATE TABLE `notification_email_header` (
  `Notification_id` bigint(20) NOT NULL,
  `emailHeaders_id` bigint(20) NOT NULL,
  `mapkey` varchar(255) NOT NULL,
  PRIMARY KEY (`Notification_id`,`mapkey`),
  UNIQUE KEY `UK_ptaka5kost68h7l3wflv7w6y8` (`emailHeaders_id`),
  CONSTRAINT `FKd74pdu41avy2f7a8qyp7wn2n` FOREIGN KEY (`emailHeaders_id`) REFERENCES `email_header` (`id`),
  CONSTRAINT `FKfdnoyp8rl0kxu29l4pyaa5566` FOREIGN KEY (`Notification_id`) REFERENCES `notification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notification_email_header
-- ----------------------------

-- ----------------------------
-- Table structure for notification_recipients
-- ----------------------------
DROP TABLE IF EXISTS `notification_recipients`;
CREATE TABLE `notification_recipients` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FKot769nimyq1jvw0m61pgsq5g3` (`entity_id`),
  KEY `FKn7v944d0hw37bh0auv4gr3hsf` (`task_id`),
  CONSTRAINT `FKn7v944d0hw37bh0auv4gr3hsf` FOREIGN KEY (`task_id`) REFERENCES `notification` (`id`),
  CONSTRAINT `FKot769nimyq1jvw0m61pgsq5g3` FOREIGN KEY (`entity_id`) REFERENCES `organizationalentity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notification_recipients
-- ----------------------------

-- ----------------------------
-- Table structure for organizationalentity
-- ----------------------------
DROP TABLE IF EXISTS `organizationalentity`;
CREATE TABLE `organizationalentity` (
  `DTYPE` varchar(31) NOT NULL,
  `id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organizationalentity
-- ----------------------------
INSERT INTO `organizationalentity` VALUES ('Group', 'Accounting');
INSERT INTO `organizationalentity` VALUES ('User', 'admin');
INSERT INTO `organizationalentity` VALUES ('Group', 'admin1');
INSERT INTO `organizationalentity` VALUES ('User', 'Administrator');
INSERT INTO `organizationalentity` VALUES ('Group', 'Administrators');
INSERT INTO `organizationalentity` VALUES ('User', 'Baker');
INSERT INTO `organizationalentity` VALUES ('User', 'BOSS');
INSERT INTO `organizationalentity` VALUES ('User', 'caiwu');
INSERT INTO `organizationalentity` VALUES ('Group', 'CEO');
INSERT INTO `organizationalentity` VALUES ('Group', 'HR');
INSERT INTO `organizationalentity` VALUES ('Group', 'IT');
INSERT INTO `organizationalentity` VALUES ('Group', 'jbpm');
INSERT INTO `organizationalentity` VALUES ('User', 'john');
INSERT INTO `organizationalentity` VALUES ('Group', 'john1');
INSERT INTO `organizationalentity` VALUES ('User', 'Lars');
INSERT INTO `organizationalentity` VALUES ('User', 'lee');
INSERT INTO `organizationalentity` VALUES ('User', 'mary');
INSERT INTO `organizationalentity` VALUES ('Group', 'mary1');
INSERT INTO `organizationalentity` VALUES ('Group', 'PM');
INSERT INTO `organizationalentity` VALUES ('User', 'tmp');
INSERT INTO `organizationalentity` VALUES ('Group', '业务部');
INSERT INTO `organizationalentity` VALUES ('Group', '总裁');
INSERT INTO `organizationalentity` VALUES ('Group', '财务部');
INSERT INTO `organizationalentity` VALUES ('Group', '风控部');

-- ----------------------------
-- Table structure for peopleassignments_bas
-- ----------------------------
DROP TABLE IF EXISTS `peopleassignments_bas`;
CREATE TABLE `peopleassignments_bas` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FKa90cdfgc4km384n1ataqigq67` (`entity_id`),
  KEY `FKt4xs0glwhbsa0xwg69r6xduv9` (`task_id`),
  CONSTRAINT `FKa90cdfgc4km384n1ataqigq67` FOREIGN KEY (`entity_id`) REFERENCES `organizationalentity` (`id`),
  CONSTRAINT `FKt4xs0glwhbsa0xwg69r6xduv9` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of peopleassignments_bas
-- ----------------------------
INSERT INTO `peopleassignments_bas` VALUES ('1', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('1', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('2', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('2', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('3', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('3', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('4', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('4', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('5', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('5', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('6', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('6', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('7', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('7', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('8', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('8', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('9', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('9', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('10', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('10', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('11', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('11', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('12', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('12', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('13', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('13', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('14', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('14', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('15', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('15', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('16', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('16', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('17', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('17', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('18', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('18', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('19', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('19', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('20', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('20', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('21', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('21', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('22', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('22', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('23', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('23', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('24', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('24', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('25', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('25', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('26', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('26', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('27', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('27', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('28', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('28', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('29', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('29', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('30', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('30', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('31', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('31', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('32', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('32', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('33', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('33', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('34', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('34', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('35', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('35', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('36', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('36', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('37', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('37', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('38', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('38', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('39', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('39', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('40', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('40', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('41', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('41', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('42', 'Administrator');
INSERT INTO `peopleassignments_bas` VALUES ('42', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('43', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('44', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('45', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('46', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('47', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('48', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('49', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('50', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('51', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('52', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('53', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('54', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('55', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('56', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('57', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('58', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('59', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('60', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('61', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('62', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('63', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('64', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('65', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('66', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('67', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('68', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('69', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('70', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('71', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('72', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('73', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('74', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('75', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('76', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('77', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('78', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('79', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('80', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('81', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('82', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('83', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('84', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('85', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('86', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('87', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('88', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('89', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('90', 'Administrators');
INSERT INTO `peopleassignments_bas` VALUES ('91', 'Administrators');

-- ----------------------------
-- Table structure for peopleassignments_exclowners
-- ----------------------------
DROP TABLE IF EXISTS `peopleassignments_exclowners`;
CREATE TABLE `peopleassignments_exclowners` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FK5ituvd6t8uvp63hsx6282xo6h` (`entity_id`),
  KEY `FKqxbjm1b3dl7w8w2f2y6sk0fv8` (`task_id`),
  CONSTRAINT `FK5ituvd6t8uvp63hsx6282xo6h` FOREIGN KEY (`entity_id`) REFERENCES `organizationalentity` (`id`),
  CONSTRAINT `FKqxbjm1b3dl7w8w2f2y6sk0fv8` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of peopleassignments_exclowners
-- ----------------------------

-- ----------------------------
-- Table structure for peopleassignments_potowners
-- ----------------------------
DROP TABLE IF EXISTS `peopleassignments_potowners`;
CREATE TABLE `peopleassignments_potowners` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FKsa3rrrjsm1qw98ajbbu2s7cjr` (`entity_id`),
  KEY `FKh8oqmk4iuh2pmpgby6g8r3jd1` (`task_id`),
  CONSTRAINT `FKh8oqmk4iuh2pmpgby6g8r3jd1` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  CONSTRAINT `FKsa3rrrjsm1qw98ajbbu2s7cjr` FOREIGN KEY (`entity_id`) REFERENCES `organizationalentity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of peopleassignments_potowners
-- ----------------------------
INSERT INTO `peopleassignments_potowners` VALUES ('7', 'admin');
INSERT INTO `peopleassignments_potowners` VALUES ('8', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('9', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('10', 'admin');
INSERT INTO `peopleassignments_potowners` VALUES ('11', 'admin');
INSERT INTO `peopleassignments_potowners` VALUES ('12', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('13', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('14', 'john');
INSERT INTO `peopleassignments_potowners` VALUES ('15', 'mary');
INSERT INTO `peopleassignments_potowners` VALUES ('17', 'admin');
INSERT INTO `peopleassignments_potowners` VALUES ('18', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('19', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('20', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('21', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('22', 'john');
INSERT INTO `peopleassignments_potowners` VALUES ('23', 'mary');
INSERT INTO `peopleassignments_potowners` VALUES ('25', 'admin');
INSERT INTO `peopleassignments_potowners` VALUES ('26', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('27', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('28', 'john');
INSERT INTO `peopleassignments_potowners` VALUES ('29', 'mary');
INSERT INTO `peopleassignments_potowners` VALUES ('31', 'admin');
INSERT INTO `peopleassignments_potowners` VALUES ('32', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('33', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('34', 'admin');
INSERT INTO `peopleassignments_potowners` VALUES ('35', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('36', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('37', 'admin');
INSERT INTO `peopleassignments_potowners` VALUES ('38', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('39', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('40', 'admin');
INSERT INTO `peopleassignments_potowners` VALUES ('41', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('42', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('44', 'tmp');
INSERT INTO `peopleassignments_potowners` VALUES ('45', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('46', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('47', 'tmp');
INSERT INTO `peopleassignments_potowners` VALUES ('48', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('49', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('50', 'john');
INSERT INTO `peopleassignments_potowners` VALUES ('51', 'mary');
INSERT INTO `peopleassignments_potowners` VALUES ('53', '业务部');
INSERT INTO `peopleassignments_potowners` VALUES ('54', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('55', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('56', 'john');
INSERT INTO `peopleassignments_potowners` VALUES ('57', 'john');
INSERT INTO `peopleassignments_potowners` VALUES ('58', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('59', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('60', 'lee');
INSERT INTO `peopleassignments_potowners` VALUES ('61', 'lee');
INSERT INTO `peopleassignments_potowners` VALUES ('62', 'lee');
INSERT INTO `peopleassignments_potowners` VALUES ('63', 'lee');
INSERT INTO `peopleassignments_potowners` VALUES ('64', 'john');
INSERT INTO `peopleassignments_potowners` VALUES ('65', 'john');
INSERT INTO `peopleassignments_potowners` VALUES ('66', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('67', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('68', '业务部');
INSERT INTO `peopleassignments_potowners` VALUES ('69', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('70', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('71', '风控部');
INSERT INTO `peopleassignments_potowners` VALUES ('72', '业务部');
INSERT INTO `peopleassignments_potowners` VALUES ('73', '业务部');
INSERT INTO `peopleassignments_potowners` VALUES ('74', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('75', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('76', '业务部');
INSERT INTO `peopleassignments_potowners` VALUES ('77', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('78', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('79', '风控部');
INSERT INTO `peopleassignments_potowners` VALUES ('80', '财务部');
INSERT INTO `peopleassignments_potowners` VALUES ('81', 'CEO');
INSERT INTO `peopleassignments_potowners` VALUES ('83', '业务部');
INSERT INTO `peopleassignments_potowners` VALUES ('84', '业务部');
INSERT INTO `peopleassignments_potowners` VALUES ('85', 'HR');
INSERT INTO `peopleassignments_potowners` VALUES ('86', 'PM');
INSERT INTO `peopleassignments_potowners` VALUES ('87', '风控部');
INSERT INTO `peopleassignments_potowners` VALUES ('88', '财务部');
INSERT INTO `peopleassignments_potowners` VALUES ('89', 'CEO');
INSERT INTO `peopleassignments_potowners` VALUES ('90', 'BOSS');
INSERT INTO `peopleassignments_potowners` VALUES ('91', 'tmp');

-- ----------------------------
-- Table structure for peopleassignments_recipients
-- ----------------------------
DROP TABLE IF EXISTS `peopleassignments_recipients`;
CREATE TABLE `peopleassignments_recipients` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FKrd0h9ud1bhs9waf2mdmiv6j2r` (`entity_id`),
  KEY `FK9gnbv6bplxkxoedj35vg8n7ir` (`task_id`),
  CONSTRAINT `FK9gnbv6bplxkxoedj35vg8n7ir` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  CONSTRAINT `FKrd0h9ud1bhs9waf2mdmiv6j2r` FOREIGN KEY (`entity_id`) REFERENCES `organizationalentity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of peopleassignments_recipients
-- ----------------------------

-- ----------------------------
-- Table structure for peopleassignments_stakeholders
-- ----------------------------
DROP TABLE IF EXISTS `peopleassignments_stakeholders`;
CREATE TABLE `peopleassignments_stakeholders` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FK9uy76cu650rg1nnkrtjwj1e9t` (`entity_id`),
  KEY `FKaeyk4nwslvx0jywjomjq7083i` (`task_id`),
  CONSTRAINT `FK9uy76cu650rg1nnkrtjwj1e9t` FOREIGN KEY (`entity_id`) REFERENCES `organizationalentity` (`id`),
  CONSTRAINT `FKaeyk4nwslvx0jywjomjq7083i` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of peopleassignments_stakeholders
-- ----------------------------

-- ----------------------------
-- Table structure for processinstanceinfo
-- ----------------------------
DROP TABLE IF EXISTS `processinstanceinfo`;
CREATE TABLE `processinstanceinfo` (
  `InstanceId` bigint(20) NOT NULL AUTO_INCREMENT,
  `lastModificationDate` datetime DEFAULT NULL,
  `lastReadDate` datetime DEFAULT NULL,
  `processId` varchar(255) DEFAULT NULL,
  `processInstanceByteArray` longblob,
  `startDate` datetime DEFAULT NULL,
  `state` int(11) NOT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  PRIMARY KEY (`InstanceId`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of processinstanceinfo
-- ----------------------------
INSERT INTO `processinstanceinfo` VALUES ('7', '2018-05-13 05:54:08', '2018-05-13 05:54:06', 'org.jbpm.examples.checklist.sample1', 0xACED00057A000001F7000852756C65466C6F770A060807100718004AEE01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9F01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474001653616D706C65436865636B6C69737450726F636573737400236F72672E6A62706D2E6578616D706C65732E636865636B6C6973742E73616D706C65317852F1010A0852756C65466C6F7710071A236F72672E6A62706D2E6578616D706C65732E636865636B6C6973742E73616D706C6531200128023A1B08011002220608011A020801280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A0400000000420E0A046E616D6510001A040000000142130A0970726F63657373496410001A040000000260006A025F3172060A025F3210017A1653616D706C65436865636B6C69737450726F636573738001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F54920101379801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 05:54:06', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('8', '2018-05-13 05:56:32', '2018-05-13 05:56:31', 'com.sample.evaluation', 0xACED00057A000001C3000852756C65466C6F770A060807100718004AD401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8501ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E7852D7010A0852756C65466C6F7710081A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020802280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A0400000000420E0A046E616D6510001A040000000142130A0970726F63657373496410001A040000000260006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F54920101389801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 05:56:31', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('9', '2018-05-13 06:31:06', '2018-05-13 06:41:00', 'com.sample.evaluation', 0xACED00057A000001C3000852756C65466C6F770A060807100718004AD401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8501ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E7852D7010A0852756C65466C6F7710091A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020803280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A0400000000420E0A046E616D6510001A040000000142130A0970726F63657373496410001A040000000260006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F54920101399801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 06:31:05', '1', '2');
INSERT INTO `processinstanceinfo` VALUES ('10', '2018-05-13 06:42:28', '2018-05-13 06:42:26', 'org.jbpm.examples.checklist.sample1', 0xACED00057A000001F8000852756C65466C6F770A060807100718004AEE01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9F01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474001653616D706C65436865636B6C69737450726F636573737400236F72672E6A62706D2E6578616D706C65732E636865636B6C6973742E73616D706C65317852F2010A0852756C65466C6F77100A1A236F72672E6A62706D2E6578616D706C65732E636865636B6C6973742E73616D706C6531200128023A1B08011002220608011A020804280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A0400000000420E0A046E616D6510001A040000000142130A0970726F63657373496410001A040000000260006A025F3172060A025F3210017A1653616D706C65436865636B6C69737450726F636573738001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010231309801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 06:42:26', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('11', '2018-05-13 09:16:56', '2018-05-13 09:16:56', 'com.sample.evaluation', 0xACED00057A000001C4000852756C65466C6F770A060807100718004AD401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8501ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E7852D8010A0852756C65466C6F77100B1A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020805280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A0400000000420E0A046E616D6510001A040000000142130A0970726F63657373496410001A040000000260006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010231319801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 09:16:55', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('12', '2018-05-13 09:43:24', '2018-05-13 09:50:24', 'com.sample.evaluation', 0xACED00057A000001C4000852756C65466C6F770A060807100718004AD401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A8501ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000037704000000037400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E7852D8010A0852756C65466C6F77100C1A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020806280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A0400000000420E0A046E616D6510001A040000000142130A0970726F63657373496410001A040000000260006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010231329801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 09:43:23', '1', '2');
INSERT INTO `processinstanceinfo` VALUES ('13', '2018-05-13 11:34:40', '2018-05-13 11:34:39', 'com.sample.evaluation', 0xACED00057A0000023F000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852AB020A0852756C65466C6F77100D1A15636F6D2E73616D706C652E6576616C756174696F6E200128053A1B08031003220608011A020808280130FFFFFFFFFFFFFFFFFF0140003A1B08041004220608011A020809280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F316A025F326A025F3572060A025F33100172060A025F3410017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010231339801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 10:00:30', '1', '3');
INSERT INTO `processinstanceinfo` VALUES ('14', '2018-05-13 15:17:56', '2018-05-13 15:17:55', 'com.sample.evaluation', 0xACED00057A0000023F000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852AB020A0852756C65466C6F77100E1A15636F6D2E73616D706C652E6576616C756174696F6E200128053A1B08031003220608011A020815280130FFFFFFFFFFFFFFFFFF0140003A1B08041004220608011A020814280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F316A025F326A025F3572060A025F33100172060A025F3410017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010231349801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 12:10:45', '1', '3');
INSERT INTO `processinstanceinfo` VALUES ('15', '2018-05-13 13:11:03', '2018-05-13 13:11:03', 'com.sample.evaluation', 0xACED00057A00000247000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852B3020A0852756C65466C6F77100F1A15636F6D2E73616D706C652E6576616C756174696F6E200128063A1B08031003220608011A02080C280130FFFFFFFFFFFFFFFFFF0140003A1F08051006220A08074A060A0408041001280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F316A025F326A025F356A025F3472060A025F33100172060A025F3610017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010231359801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 12:47:12', '1', '5');
INSERT INTO `processinstanceinfo` VALUES ('16', '2018-05-13 15:14:28', '2018-05-13 15:14:27', 'mytest.helloworldScriptTask', 0xACED00057A000002C6000852756C65466C6F770A060807100718004AFE02080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAF02ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000002740006726561736F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000B706572666F726D616E636570787400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74001B6D79746573742E68656C6C6F776F726C645363726970745461736B74001B6D79746573742E68656C6C6F776F726C645363726970745461736B71007E00057852B0020A0852756C65466C6F7710101A1B6D79746573742E68656C6C6F776F726C645363726970745461736B200128043A1B08031004220608011A020810280130FFFFFFFFFFFFFFFFFF01400042110A07636F6E74656E7410001A040000000042160A0C6465706C6F796D656E74496410001A040000000142120A08656D706C6F79656510001A0400000002420E0A046E616D6510001A040000000342130A0970726F63657373496410001A040000000442100A06726561736F6E10001A040000000560006A025F326A025F336A025F3472060A025F3910017A1B6D79746573742E68656C6C6F776F726C645363726970745461736B8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010231369801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 15:01:21', '1', '5');
INSERT INTO `processinstanceinfo` VALUES ('17', '2018-05-13 15:17:51', '2018-05-13 15:17:50', 'com.sample.evaluation', 0xACED00057A0000023F000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852AB020A0852756C65466C6F7710111A15636F6D2E73616D706C652E6576616C756174696F6E200128053A1B08031003220608011A020813280130FFFFFFFFFFFFFFFFFF0140003A1B08041004220608011A020812280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F316A025F326A025F3572060A025F33100172060A025F3410017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010231379801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 15:15:36', '1', '3');
INSERT INTO `processinstanceinfo` VALUES ('18', '2018-05-13 15:36:22', '2018-05-13 15:36:21', 'mytest.helloworldScriptTask', 0xACED00057A000002C6000852756C65466C6F770A060807100718004AFE02080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAF02ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000002740006726561736F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000B706572666F726D616E636570787400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74001B6D79746573742E68656C6C6F776F726C645363726970745461736B74001B6D79746573742E68656C6C6F776F726C645363726970745461736B71007E00057852B0020A0852756C65466C6F7710121A1B6D79746573742E68656C6C6F776F726C645363726970745461736B200128043A1B08031004220608011A020818280130FFFFFFFFFFFFFFFFFF01400042110A07636F6E74656E7410001A040000000042160A0C6465706C6F796D656E74496410001A040000000142120A08656D706C6F79656510001A0400000002420E0A046E616D6510001A040000000342130A0970726F63657373496410001A040000000442100A06726561736F6E10001A040000000560006A025F326A025F336A025F3472060A025F3910017A1B6D79746573742E68656C6C6F776F726C645363726970745461736B8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010231389801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 15:35:25', '1', '5');
INSERT INTO `processinstanceinfo` VALUES ('19', '2018-05-13 15:38:54', '2018-05-13 15:38:54', 'com.sample.evaluation', 0xACED00057A0000023F000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852AB020A0852756C65466C6F7710131A15636F6D2E73616D706C652E6576616C756174696F6E200128053A1B08031003220608011A02081A280130FFFFFFFFFFFFFFFFFF0140003A1B08041004220608011A02081B280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F316A025F326A025F3572060A025F33100172060A025F3410017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010231399801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 15:38:14', '1', '3');
INSERT INTO `processinstanceinfo` VALUES ('20', '2018-05-13 16:37:10', '2018-05-13 16:37:10', 'mytest.helloworldScriptTask', 0xACED00057A000002C6000852756C65466C6F770A060807100718004AFE02080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAF02ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000002740006726561736F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000B706572666F726D616E636570787400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74001B6D79746573742E68656C6C6F776F726C645363726970745461736B74001B6D79746573742E68656C6C6F776F726C645363726970745461736B71007E00057852B0020A0852756C65466C6F7710141A1B6D79746573742E68656C6C6F776F726C645363726970745461736B200128043A1B08031004220608011A02081E280130FFFFFFFFFFFFFFFFFF01400042110A07636F6E74656E7410001A040000000042160A0C6465706C6F796D656E74496410001A040000000142120A08656D706C6F79656510001A0400000002420E0A046E616D6510001A040000000342130A0970726F63657373496410001A040000000442100A06726561736F6E10001A040000000560006A025F326A025F336A025F3472060A025F3910017A1B6D79746573742E68656C6C6F776F726C645363726970745461736B8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010232309801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 16:36:19', '1', '5');
INSERT INTO `processinstanceinfo` VALUES ('21', '2018-05-13 16:42:47', '2018-05-13 16:42:46', 'com.sample.evaluation', 0xACED00057A0000023F000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852AB020A0852756C65466C6F7710151A15636F6D2E73616D706C652E6576616C756174696F6E200128053A1B08031003220608011A020820280130FFFFFFFFFFFFFFFFFF0140003A1B08041004220608011A020821280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F316A025F326A025F3572060A025F33100172060A025F3410017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010232319801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 16:42:33', '1', '3');
INSERT INTO `processinstanceinfo` VALUES ('22', '2018-05-13 20:10:01', '2018-05-13 20:10:01', 'com.sample.evaluation', 0xACED00057A0000023F000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852AB020A0852756C65466C6F7710161A15636F6D2E73616D706C652E6576616C756174696F6E200128053A1B08031003220608011A020823280130FFFFFFFFFFFFFFFFFF0140003A1B08041004220608011A020824280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F316A025F326A025F3572060A025F33100172060A025F3410017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010232329801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 20:09:08', '1', '3');
INSERT INTO `processinstanceinfo` VALUES ('23', '2018-05-13 21:15:46', '2018-05-13 21:15:46', 'com.sample.evaluation', 0xACED00057A00000212000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F7710171A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020825280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010232339801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 21:15:46', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('25', '2018-05-13 21:24:34', '2018-05-13 21:24:29', 'com.sample.evaluation', 0xACED00057A00000212000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F7710191A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020827280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010232359801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 21:24:29', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('26', '2018-05-13 21:32:05', '2018-05-13 21:31:45', 'com.sample.evaluation', 0xACED00057A00000212000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F77101A1A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020828280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010232369801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 21:31:45', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('28', '2018-05-13 21:50:25', '2018-05-13 21:50:14', 'com.sample.evaluation', 0xACED00057A00000212000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F77101C1A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A02082A280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010232389801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 21:50:14', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('29', '2018-05-13 21:59:26', '2018-05-13 21:59:26', 'com.sample.evaluation', 0xACED00057A00000212000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F77101D1A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A02082B280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010232399801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 21:59:26', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('30', '2018-05-13 21:59:55', '2018-05-13 21:59:55', 'com.sample.evaluation', 0xACED00057A00000212000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F77101E1A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A02082C280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010233309801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 21:59:55', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('31', '2018-05-13 22:00:29', '2018-05-13 22:00:29', 'com.sample.evaluation', 0xACED00057A00000212000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F77101F1A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A02082D280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010233319801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-13 22:00:28', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('32', '2018-05-14 08:14:56', '2018-05-14 08:14:56', 'com.sample.evaluation', 0xACED00057A0000023F000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852AB020A0852756C65466C6F7710201A15636F6D2E73616D706C652E6576616C756174696F6E200128053A1B08031003220608011A02082F280130FFFFFFFFFFFFFFFFFF0140003A1B08041004220608011A020830280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F316A025F326A025F3572060A025F33100172060A025F3410017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010233329801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-14 08:14:19', '1', '3');
INSERT INTO `processinstanceinfo` VALUES ('33', '2018-05-14 08:20:10', '2018-05-14 08:20:10', 'com.sample.evaluation', 0xACED00057A0000023F000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852AB020A0852756C65466C6F7710211A15636F6D2E73616D706C652E6576616C756174696F6E200128053A1B08031003220608011A020832280130FFFFFFFFFFFFFFFFFF0140003A1B08041004220608011A020833280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F316A025F326A025F3572060A025F33100172060A025F3410017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010233339801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-14 08:18:43', '1', '3');
INSERT INTO `processinstanceinfo` VALUES ('34', '2018-05-14 09:39:48', '2018-05-14 09:39:47', 'com.sample.evaluation', 0xACED00057A00000212000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F7710221A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020834280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010233349801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-14 09:39:47', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('35', '2018-05-14 09:41:36', '2018-05-14 09:41:35', 'com.sample.evaluation', 0xACED00057A00000212000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F7710231A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020835280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010233359801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-14 09:41:35', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('36', '2018-05-14 09:44:07', '2018-05-14 09:44:07', 'com.sample.evaluation', 0xACED00057A00000212000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F7710241A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020836280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010233369801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-14 09:44:07', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('37', '2018-05-14 09:44:31', '2018-05-14 09:44:31', 'com.sample.evaluation', 0xACED00057A00000212000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F7710251A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020837280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010233379801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-14 09:44:31', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('38', '2018-05-14 09:54:40', '2018-05-14 09:54:38', 'com.sample.evaluation', 0xACED00057A00000212000852756C65466C6F770A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5474000561646D696E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F7710261A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020838280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010233389801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-14 09:54:38', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('40', '2018-05-14 13:35:32', '2018-05-14 13:35:32', 'com.sample.evaluation', 0xACED00057A00000245000852756C65466C6F770A060807100718004AFA01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAB01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F54740003746D7074000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852B3020A0852756C65466C6F7710281A15636F6D2E73616D706C652E6576616C756174696F6E200128063A1B08031003220608011A02083E280130FFFFFFFFFFFFFFFFFF0140003A1F08051006220A08074A060A0408041001280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F316A025F326A025F356A025F3472060A025F33100172060A025F3610017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010234309801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-14 13:34:35', '1', '5');
INSERT INTO `processinstanceinfo` VALUES ('41', '2018-05-14 13:39:45', '2018-05-14 13:39:45', 'mytest.helloworldScriptTask', 0xACED00057A000002C5000852756C65466C6F770A060807100718004AFD02080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE02ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000002740006726561736F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000B706572666F726D616E636570787400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F547400046A6F686E74001B6D79746573742E68656C6C6F776F726C645363726970745461736B74001B6D79746573742E68656C6C6F776F726C645363726970745461736B71007E00057852B0020A0852756C65466C6F7710291A1B6D79746573742E68656C6C6F776F726C645363726970745461736B200128043A1B08031004220608011A020841280130FFFFFFFFFFFFFFFFFF01400042110A07636F6E74656E7410001A040000000042160A0C6465706C6F796D656E74496410001A040000000142120A08656D706C6F79656510001A0400000002420E0A046E616D6510001A040000000342130A0970726F63657373496410001A040000000442100A06726561736F6E10001A040000000560006A025F326A025F336A025F3472060A025F3910017A1B6D79746573742E68656C6C6F776F726C645363726970745461736B8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010234319801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-14 13:38:55', '1', '5');
INSERT INTO `processinstanceinfo` VALUES ('42', '2018-05-14 18:21:18', '2018-05-14 18:21:18', 'src.processTest', 0xACED00057A000002D0000852756C65466C6F770A060807100718004AF701080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AA801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F54740005616C6C656E74000B70726F636573735465737474000F7372632E70726F636573735465737474001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852C1030A0852756C65466C6F77102A1A0F7372632E70726F6365737354657374200128053A1B08031002220608011A020843280130FFFFFFFFFFFFFFFFFF0140003A1B08041003220608011A020844280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A1170726F6365737353746172744576656E746A255F42344537464645372D323634332D343435432D413431372D3038323431353346443346396A255F46304543373944422D453538322D343234462D413638302D34374443383334343442353572290A255F38324539343732352D363835362D343832332D394645352D313430333941323445323932100172290A255F39333745424531302D453531422D344131422D414532392D38393536454542323934384510017A0B70726F63657373546573748001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010234329801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-14 18:18:31', '1', '3');
INSERT INTO `processinstanceinfo` VALUES ('43', '2018-05-15 17:41:51', '2018-05-15 17:41:47', 'com.sample.evaluation', 0xACED00057A00000211000852756C65466C6F770A060807100718004AFB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAC01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F547400046A6F686E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F77102B1A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020845280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010234339801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-15 17:41:47', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('45', '2018-05-15 20:27:53', '2018-05-15 20:27:51', 'com.sample.evaluation', 0xACED00057A00000210000852756C65466C6F770A060807100718004AFA01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAB01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F547400036C656574000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F77102D1A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020849280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010234359801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-15 20:27:51', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('46', '2018-05-15 20:31:26', '2018-05-15 20:31:25', 'com.sample.evaluation', 0xACED00057A00000210000852756C65466C6F770A060807100718004AFA01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAB01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000057704000000057400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F547400036C656574000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852FE010A0852756C65466C6F77102E1A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A02084A280130FFFFFFFFFFFFFFFFFF01400042160A0C6465706C6F796D656E74496410001A040000000042120A08656D706C6F79656510001A0400000001420E0A046E616D6510001A040000000242130A0970726F63657373496410001A040000000342100A06726561736F6E10001A040000000460006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010234369801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-15 20:31:25', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('47', '2018-05-15 20:50:59', '2018-05-15 20:50:57', 'com.sample.evaluation', 0xACED00057A00000264000852756C65466C6F770A060807100718004A9202080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AC301ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000087704000000087400037364667400067364667364667400067364667364667400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F547400036C656574000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852BA020A0852756C65466C6F77102F1A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A02084B280130FFFFFFFFFFFFFFFFFF01400042120A08636F6E74656E743110001A040000000042120A08636F6E74656E743210001A040000000142120A08636F6E74656E743310001A040000000242160A0C6465706C6F796D656E74496410001A040000000342120A08656D706C6F79656510001A0400000004420E0A046E616D6510001A040000000542130A0970726F63657373496410001A040000000642100A06726561736F6E10001A040000000760006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010234379801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-15 20:50:56', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('48', '2018-05-15 20:58:14', '2018-05-15 20:58:12', 'com.sample.evaluation', 0xACED00057A0000025F000852756C65466C6F770A060807100718004A8D02080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000008770400000008740004323332337400023233740004323332337400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F547400036C656574000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852BA020A0852756C65466C6F7710301A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A02084C280130FFFFFFFFFFFFFFFFFF01400042120A08636F6E74656E743110001A040000000042120A08636F6E74656E743210001A040000000142120A08636F6E74656E743310001A040000000242160A0C6465706C6F796D656E74496410001A040000000342120A08656D706C6F79656510001A0400000004420E0A046E616D6510001A040000000542130A0970726F63657373496410001A040000000642100A06726561736F6E10001A040000000760006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010234389801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-15 20:58:12', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('49', '2018-05-15 21:55:56', '2018-05-15 21:55:54', 'com.sample.evaluation', 0xACED00057A00000268000852756C65466C6F770A060807100718004A9602080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AC701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000087704000000087400063132333132337400063132333132337400063132333132337400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F547400046A6F686E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852BA020A0852756C65466C6F7710311A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A02084D280130FFFFFFFFFFFFFFFFFF01400042120A08636F6E74656E743110001A040000000042120A08636F6E74656E743210001A040000000142120A08636F6E74656E743310001A040000000242160A0C6465706C6F796D656E74496410001A040000000342120A08656D706C6F79656510001A0400000004420E0A046E616D6510001A040000000542130A0970726F63657373496410001A040000000642100A06726561736F6E10001A040000000760006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010234399801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-15 21:55:54', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('50', '2018-05-15 22:07:05', '2018-05-15 22:07:05', 'com.sample.evaluation', 0xACED00057A00000295000852756C65466C6F770A060807100718004A9602080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AC701ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000087704000000087400063435363435367400063435363435367400063435363435367400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F547400046A6F686E74000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852E7020A0852756C65466C6F7710321A15636F6D2E73616D706C652E6576616C756174696F6E200128053A1B08031003220608011A020850280130FFFFFFFFFFFFFFFFFF0140003A1B08041004220608011A02084F280130FFFFFFFFFFFFFFFFFF01400042120A08636F6E74656E743110001A040000000042120A08636F6E74656E743210001A040000000142120A08636F6E74656E743310001A040000000242160A0C6465706C6F796D656E74496410001A040000000342120A08656D706C6F79656510001A0400000004420E0A046E616D6510001A040000000542130A0970726F63657373496410001A040000000642100A06726561736F6E10001A040000000760006A025F316A025F326A025F3572060A025F33100172060A025F3410017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010235309801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-15 22:06:28', '1', '3');
INSERT INTO `processinstanceinfo` VALUES ('51', '2018-05-16 13:45:45', '2018-05-16 13:45:44', 'src.processTest', 0xACED00057A0000034F000852756C65466C6F770A060807100718004A8D02080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000877040000000874000534333433347400033334337400063334333433347400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F547400046D61727974000B70726F636573735465737474000F7372632E70726F636573735465737474001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852AA040A0852756C65466C6F7710331A0F7372632E70726F6365737354657374200128073A1B08061004220608011A020854280130FFFFFFFFFFFFFFFFFF01400042120A08636F6E74656E743110001A040000000042120A08636F6E74656E743210001A040000000142120A08636F6E74656E743310001A040000000242160A0C6465706C6F796D656E74496410001A040000000342120A08656D706C6F79656510001A0400000004420E0A046E616D6510001A040000000542130A0970726F63657373496410001A040000000642100A06726561736F6E10001A040000000760006A1170726F6365737353746172744576656E746A255F42344537464645372D323634332D343435432D413431372D3038323431353346443346396A255F46304543373944422D453538322D343234462D413638302D3437444338333434344235356A255F39333745424531302D453531422D344131422D414532392D3839353645454232393438456A255F38324539343732352D363835362D343832332D394645352D3134303339413234453239326A255F43443738383441312D353246302D344439382D423835362D41333635413436423343304472290A255F31453430313930302D423934322D344144382D393537422D32394542423044303131354610017A0B70726F63657373546573748001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010235319801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-16 13:42:41', '1', '7');
INSERT INTO `processinstanceinfo` VALUES ('52', '2018-05-16 13:54:01', '2018-05-16 13:54:00', 'src.processTest', 0xACED00057A00000287000852756C65466C6F770A060807100718004A8802080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB901ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000087704000000087400033535357400033535357400033535357400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F547400046A6F686E74000B70726F636573735465737474000F7372632E70726F636573735465737474001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852E7020A0852756C65466C6F7710341A0F7372632E70726F6365737354657374200128023A1B08011007220608011A020855280130FFFFFFFFFFFFFFFFFF01400042120A08636F6E74656E743110001A040000000042120A08636F6E74656E743210001A040000000142120A08636F6E74656E743310001A040000000242160A0C6465706C6F796D656E74496410001A040000000342120A08656D706C6F79656510001A0400000004420E0A046E616D6510001A040000000542130A0970726F63657373496410001A040000000642100A06726561736F6E10001A040000000760006A1170726F6365737353746172744576656E7472290A255F42344537464645372D323634332D343435432D413431372D30383234313533464433463910017A0B70726F63657373546573748001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010235329801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-16 13:54:00', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('53', '2018-05-16 14:15:10', '2018-05-16 14:15:10', 'src.processTest', 0xACED00057A00000347000852756C65466C6F770A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000087704000000087400033636367400033636367400033636367400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F547400036C656574000B70726F636573735465737474000F7372632E70726F636573735465737474001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852A8040A0852756C65466C6F7710351A0F7372632E70726F6365737354657374200128063A1B08041003220608011A020858280130FFFFFFFFFFFFFFFFFF0140003A1F08051006220A08074A060A0408021001280130FFFFFFFFFFFFFFFFFF01400042120A08636F6E74656E743110001A040000000042120A08636F6E74656E743210001A040000000142120A08636F6E74656E743310001A040000000242160A0C6465706C6F796D656E74496410001A040000000342120A08656D706C6F79656510001A0400000004420E0A046E616D6510001A040000000542130A0970726F63657373496410001A040000000642100A06726561736F6E10001A040000000760006A1170726F6365737353746172744576656E746A255F42344537464645372D323634332D343435432D413431372D3038323431353346443346396A255F46304543373944422D453538322D343234462D413638302D3437444338333434344235356A255F39333745424531302D453531422D344131422D414532392D38393536454542323934384572290A255F38324539343732352D363835362D343832332D394645352D313430333941323445323932100172290A255F43443738383441312D353246302D344439382D423835362D41333635413436423343304410017A0B70726F63657373546573748001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010235339801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-16 14:13:39', '1', '5');
INSERT INTO `processinstanceinfo` VALUES ('54', '2018-05-16 14:42:49', '2018-05-16 14:42:48', 'src.processTest', 0xACED00057A000003BF000852756C65466C6F770A060807100718004A8802080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB901ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000087704000000087400033737377400033737377400033737377400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F547400046A6F686E74000B70726F636573735465737474000F7372632E70726F636573735465737474001D596561726C7920706572666F726D616E6365206576616C756174696F6E78529F050A0852756C65466C6F7710361A0F7372632E70726F63657373546573742001280A3A1B0809100A220608011A02085F280130FFFFFFFFFFFFFFFFFF01400042120A08636F6E74656E743110001A040000000042120A08636F6E74656E743210001A040000000142120A08636F6E74656E743310001A040000000242160A0C6465706C6F796D656E74496410001A040000000342120A08656D706C6F79656510001A0400000004420E0A046E616D6510001A040000000542130A0970726F63657373496410001A040000000642100A06726561736F6E10001A040000000760006A1170726F6365737353746172744576656E746A255F42344537464645372D323634332D343435432D413431372D3038323431353346443346396A255F46304543373944422D453538322D343234462D413638302D3437444338333434344235356A255F39333745424531302D453531422D344131422D414532392D3839353645454232393438456A255F38324539343732352D363835362D343832332D394645352D3134303339413234453239326A255F43443738383441312D353246302D344439382D423835362D4133363541343642334330446A255F31453430313930302D423934322D344144382D393537422D3239454242304430313135466A255F45463630344536362D343932302D344638312D383636332D3239424536313845394144326A255F33383930443245412D463732302D343143372D413936372D34364542313237463246334172290A255F35323038353845452D344346372D344543322D383735442D42463946334237434633354110017A0B70726F63657373546573748001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010235349801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-16 14:25:57', '1', '13');
INSERT INTO `processinstanceinfo` VALUES ('55', '2018-05-16 14:50:00', '2018-05-16 14:50:00', 'src.processTest', 0xACED00057A00000286000852756C65466C6F770A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000087704000000087400033131317400033131317400033131317400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F54740003746D7074000B70726F636573735465737474000F7372632E70726F636573735465737474001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852E7020A0852756C65466C6F7710371A0F7372632E70726F6365737354657374200128023A1B08011007220608011A020860280130FFFFFFFFFFFFFFFFFF01400042120A08636F6E74656E743110001A040000000042120A08636F6E74656E743210001A040000000142120A08636F6E74656E743310001A040000000242160A0C6465706C6F796D656E74496410001A040000000342120A08656D706C6F79656510001A0400000004420E0A046E616D6510001A040000000542130A0970726F63657373496410001A040000000642100A06726561736F6E10001A040000000760006A1170726F6365737353746172744576656E7472290A255F42344537464645372D323634332D343435432D413431372D30383234313533464433463910017A0B70726F63657373546573748001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010235359801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-16 14:50:00', '1', '1');
INSERT INTO `processinstanceinfo` VALUES ('57', '2018-05-16 15:06:50', '2018-05-16 15:06:50', 'com.sample.evaluation', 0xACED00057A0000025B000852756C65466C6F770A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000087704000000087400023334740002333474000233347400236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F54740003746D7074000A4576616C756174696F6E740015636F6D2E73616D706C652E6576616C756174696F6E74001D596561726C7920706572666F726D616E6365206576616C756174696F6E7852BA020A0852756C65466C6F7710391A15636F6D2E73616D706C652E6576616C756174696F6E200128023A1B08011002220608011A020868280130FFFFFFFFFFFFFFFFFF01400042120A08636F6E74656E743110001A040000000042120A08636F6E74656E743210001A040000000142120A08636F6E74656E743310001A040000000242160A0C6465706C6F796D656E74496410001A040000000342120A08656D706C6F79656510001A0400000004420E0A046E616D6510001A040000000542130A0970726F63657373496410001A040000000642100A06726561736F6E10001A040000000760006A025F3172060A025F3210017A0A4576616C756174696F6E8001018A01236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5492010235379801FFFFFFFFFFFFFFFFFF01A80100, '2018-05-16 15:06:50', '1', '1');

-- ----------------------------
-- Table structure for processinstancelog
-- ----------------------------
DROP TABLE IF EXISTS `processinstancelog`;
CREATE TABLE `processinstancelog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `correlationKey` varchar(255) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `externalId` varchar(255) DEFAULT NULL,
  `user_identity` varchar(255) DEFAULT NULL,
  `outcome` varchar(255) DEFAULT NULL,
  `parentProcessInstanceId` bigint(20) DEFAULT NULL,
  `processId` varchar(255) DEFAULT NULL,
  `processInstanceDescription` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `processName` varchar(255) DEFAULT NULL,
  `processType` int(11) DEFAULT NULL,
  `processVersion` varchar(255) DEFAULT NULL,
  `slaCompliance` int(11) DEFAULT NULL,
  `sla_due_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of processinstancelog
-- ----------------------------
INSERT INTO `processinstancelog` VALUES ('1', '1', '159', '2018-05-11 21:33:07', 'org.default:artifact:1.0.0-SNAPSHOT', 'anonymousUser', null, '-1', 'hello', 'hello', '1', 'hello', '1', '1.0', '0', null, '2018-05-11 21:33:07', '2');
INSERT INTO `processinstancelog` VALUES ('2', '2', '109', '2018-05-12 19:08:03', 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'hello', 'hello', '2', 'hello', '1', '1.0', '0', null, '2018-05-12 19:08:03', '2');
INSERT INTO `processinstancelog` VALUES ('3', '3', '1050', '2018-05-12 20:04:46', 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'hello', 'hello', '3', 'hello', '1', '1.0', '0', null, '2018-05-12 20:04:45', '2');
INSERT INTO `processinstancelog` VALUES ('4', '4', '104', '2018-05-12 20:23:38', 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'hello', 'hello', '4', 'hello', '1', '1.0', '0', null, '2018-05-12 20:23:37', '2');
INSERT INTO `processinstancelog` VALUES ('5', '5', '109', '2018-05-12 20:32:01', 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'hello', 'hello', '5', 'hello', '1', '1.0', '0', null, '2018-05-12 20:32:01', '2');
INSERT INTO `processinstancelog` VALUES ('6', '6', '19', '2018-05-12 20:34:04', 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'hello', 'hello', '6', 'hello', '1', '1.0', '0', null, '2018-05-12 20:34:04', '2');
INSERT INTO `processinstancelog` VALUES ('7', '7', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'org.jbpm.examples.checklist.sample1', 'SampleChecklistProcess', '7', 'SampleChecklistProcess', '2', '1', '0', null, '2018-05-13 05:54:06', '1');
INSERT INTO `processinstancelog` VALUES ('8', '8', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '8', 'Evaluation', '1', null, '0', null, '2018-05-13 05:56:32', '1');
INSERT INTO `processinstancelog` VALUES ('9', '9', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '9', 'Evaluation', '1', null, '0', null, '2018-05-13 06:31:05', '1');
INSERT INTO `processinstancelog` VALUES ('10', '10', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'org.jbpm.examples.checklist.sample1', 'SampleChecklistProcess', '10', 'SampleChecklistProcess', '2', '1', '0', null, '2018-05-13 06:42:26', '1');
INSERT INTO `processinstancelog` VALUES ('11', '11', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '11', 'Evaluation', '1', null, '0', null, '2018-05-13 09:16:56', '1');
INSERT INTO `processinstancelog` VALUES ('12', '12', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '12', 'Evaluation', '1', null, '0', null, '2018-05-13 09:43:23', '1');
INSERT INTO `processinstancelog` VALUES ('13', '13', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '13', 'Evaluation', '1', null, '0', null, '2018-05-13 10:00:31', '1');
INSERT INTO `processinstancelog` VALUES ('14', '14', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '14', 'Evaluation', '1', null, '0', null, '2018-05-13 12:10:46', '1');
INSERT INTO `processinstancelog` VALUES ('15', '15', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '15', 'Evaluation', '1', null, '0', null, '2018-05-13 12:47:12', '1');
INSERT INTO `processinstancelog` VALUES ('16', '16', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'john', null, '-1', 'mytest.helloworldScriptTask', 'mytest.helloworldScriptTask', '16', 'mytest.helloworldScriptTask', '1', null, '0', null, '2018-05-13 15:01:21', '1');
INSERT INTO `processinstancelog` VALUES ('17', '17', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'mary', null, '-1', 'com.sample.evaluation', 'Evaluation', '17', 'Evaluation', '1', null, '0', null, '2018-05-13 15:15:36', '1');
INSERT INTO `processinstancelog` VALUES ('18', '18', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'john', null, '-1', 'mytest.helloworldScriptTask', 'mytest.helloworldScriptTask', '18', 'mytest.helloworldScriptTask', '1', null, '0', null, '2018-05-13 15:35:25', '1');
INSERT INTO `processinstancelog` VALUES ('19', '19', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '19', 'Evaluation', '1', null, '0', null, '2018-05-13 15:38:14', '1');
INSERT INTO `processinstancelog` VALUES ('20', '20', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'mytest.helloworldScriptTask', 'mytest.helloworldScriptTask', '20', 'mytest.helloworldScriptTask', '1', null, '0', null, '2018-05-13 16:36:19', '1');
INSERT INTO `processinstancelog` VALUES ('21', '21', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '21', 'Evaluation', '1', null, '0', null, '2018-05-13 16:42:33', '1');
INSERT INTO `processinstancelog` VALUES ('22', '22', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '22', 'Evaluation', '1', null, '0', null, '2018-05-13 20:09:08', '1');
INSERT INTO `processinstancelog` VALUES ('23', '23', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '23', 'Evaluation', '1', null, '0', null, '2018-05-13 21:15:46', '1');
INSERT INTO `processinstancelog` VALUES ('25', '25', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '25', 'Evaluation', '1', null, '0', null, '2018-05-13 21:24:29', '1');
INSERT INTO `processinstancelog` VALUES ('26', '26', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '26', 'Evaluation', '1', null, '0', null, '2018-05-13 21:31:45', '1');
INSERT INTO `processinstancelog` VALUES ('28', '28', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '28', 'Evaluation', '1', null, '0', null, '2018-05-13 21:50:14', '1');
INSERT INTO `processinstancelog` VALUES ('29', '29', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '29', 'Evaluation', '1', null, '0', null, '2018-05-13 21:59:26', '1');
INSERT INTO `processinstancelog` VALUES ('30', '30', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '30', 'Evaluation', '1', null, '0', null, '2018-05-13 21:59:55', '1');
INSERT INTO `processinstancelog` VALUES ('31', '31', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '31', 'Evaluation', '1', null, '0', null, '2018-05-13 22:00:29', '1');
INSERT INTO `processinstancelog` VALUES ('32', '32', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '32', 'Evaluation', '1', null, '0', null, '2018-05-14 08:14:19', '1');
INSERT INTO `processinstancelog` VALUES ('33', '33', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'john', null, '-1', 'com.sample.evaluation', 'Evaluation', '33', 'Evaluation', '1', null, '0', null, '2018-05-14 08:18:43', '1');
INSERT INTO `processinstancelog` VALUES ('34', '34', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '34', 'Evaluation', '1', null, '0', null, '2018-05-14 09:39:48', '1');
INSERT INTO `processinstancelog` VALUES ('35', '35', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '35', 'Evaluation', '1', null, '0', null, '2018-05-14 09:41:35', '1');
INSERT INTO `processinstancelog` VALUES ('36', '36', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'admin', null, '-1', 'com.sample.evaluation', 'Evaluation', '36', 'Evaluation', '1', null, '0', null, '2018-05-14 09:44:07', '1');
INSERT INTO `processinstancelog` VALUES ('37', '37', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'john', null, '-1', 'com.sample.evaluation', 'Evaluation', '37', 'Evaluation', '1', null, '0', null, '2018-05-14 09:44:31', '1');
INSERT INTO `processinstancelog` VALUES ('38', '38', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'john', null, '-1', 'com.sample.evaluation', 'Evaluation', '38', 'Evaluation', '1', null, '0', null, '2018-05-14 09:54:38', '1');
INSERT INTO `processinstancelog` VALUES ('39', '39', '12776226', '2018-05-14 13:33:51', 'org.default:artifact:1.0.0-SNAPSHOT', 'tmp', null, '-1', 'com.sample.evaluation', 'Evaluation', '39', 'Evaluation', '1', null, '0', null, '2018-05-14 10:00:55', '2');
INSERT INTO `processinstancelog` VALUES ('40', '40', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'tmp', null, '-1', 'com.sample.evaluation', 'Evaluation', '40', 'Evaluation', '1', null, '0', null, '2018-05-14 13:34:35', '1');
INSERT INTO `processinstancelog` VALUES ('41', '41', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'john', null, '-1', 'mytest.helloworldScriptTask', 'mytest.helloworldScriptTask', '41', 'mytest.helloworldScriptTask', '1', null, '0', null, '2018-05-14 13:38:55', '1');
INSERT INTO `processinstancelog` VALUES ('42', '42', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'allen', null, '-1', 'src.processTest', 'processTest', '42', 'processTest', '1', '1.0', '0', null, '2018-05-14 18:18:31', '1');
INSERT INTO `processinstancelog` VALUES ('43', '43', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'john', null, '-1', 'com.sample.evaluation', 'Evaluation', '43', 'Evaluation', '1', null, '0', null, '2018-05-15 17:41:47', '1');
INSERT INTO `processinstancelog` VALUES ('44', '44', '166993', '2018-05-15 17:45:11', 'org.default:artifact:1.0.0-SNAPSHOT', 'john', null, '-1', 'com.sample.evaluation', 'Evaluation', '44', 'Evaluation', '1', null, '0', null, '2018-05-15 17:42:24', '2');
INSERT INTO `processinstancelog` VALUES ('45', '45', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'lee', null, '-1', 'com.sample.evaluation', 'Evaluation', '45', 'Evaluation', '1', null, '0', null, '2018-05-15 20:27:51', '1');
INSERT INTO `processinstancelog` VALUES ('46', '46', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'lee', null, '-1', 'com.sample.evaluation', 'Evaluation', '46', 'Evaluation', '1', null, '0', null, '2018-05-15 20:31:25', '1');
INSERT INTO `processinstancelog` VALUES ('47', '47', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'lee', null, '-1', 'com.sample.evaluation', 'Evaluation', '47', 'Evaluation', '1', null, '0', null, '2018-05-15 20:50:57', '1');
INSERT INTO `processinstancelog` VALUES ('48', '48', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'lee', null, '-1', 'com.sample.evaluation', 'Evaluation', '48', 'Evaluation', '1', null, '0', null, '2018-05-15 20:58:13', '1');
INSERT INTO `processinstancelog` VALUES ('49', '49', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'john', null, '-1', 'com.sample.evaluation', 'Evaluation', '49', 'Evaluation', '1', null, '0', null, '2018-05-15 21:55:55', '1');
INSERT INTO `processinstancelog` VALUES ('50', '50', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'john', null, '-1', 'com.sample.evaluation', 'Evaluation', '50', 'Evaluation', '1', null, '0', null, '2018-05-15 22:06:29', '1');
INSERT INTO `processinstancelog` VALUES ('51', '51', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'mary', null, '-1', 'src.processTest', 'processTest', '51', 'processTest', '1', '1.0', '0', null, '2018-05-16 13:42:42', '1');
INSERT INTO `processinstancelog` VALUES ('52', '52', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'john', null, '-1', 'src.processTest', 'processTest', '52', 'processTest', '1', '1.0', '0', null, '2018-05-16 13:54:00', '1');
INSERT INTO `processinstancelog` VALUES ('53', '53', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'lee', null, '-1', 'src.processTest', 'processTest', '53', 'processTest', '1', '1.0', '0', null, '2018-05-16 14:13:39', '1');
INSERT INTO `processinstancelog` VALUES ('54', '54', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'john', null, '-1', 'src.processTest', 'processTest', '54', 'processTest', '1', '1.0', '0', null, '2018-05-16 14:25:58', '1');
INSERT INTO `processinstancelog` VALUES ('55', '55', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'tmp', null, '-1', 'src.processTest', 'processTest', '55', 'processTest', '1', '1.0', '0', null, '2018-05-16 14:50:00', '1');
INSERT INTO `processinstancelog` VALUES ('56', '56', '445240', '2018-05-16 15:06:09', 'org.default:artifact:1.0.0-SNAPSHOT', 'tmp', null, '-1', 'src.processTest', 'processTest', '56', 'processTest', '1', '1.0', '0', null, '2018-05-16 14:58:44', '2');
INSERT INTO `processinstancelog` VALUES ('57', '57', null, null, 'org.default:artifact:1.0.0-SNAPSHOT', 'tmp', null, '-1', 'com.sample.evaluation', 'Evaluation', '57', 'Evaluation', '1', null, '0', null, '2018-05-16 15:06:50', '1');

-- ----------------------------
-- Table structure for querydefinitionstore
-- ----------------------------
DROP TABLE IF EXISTS `querydefinitionstore`;
CREATE TABLE `querydefinitionstore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `qExpression` longtext,
  `qName` varchar(255) DEFAULT NULL,
  `qSource` varchar(255) DEFAULT NULL,
  `qTarget` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK1dmy087nhbykucpgjipcnyluv` (`qName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of querydefinitionstore
-- ----------------------------

-- ----------------------------
-- Table structure for reassignment
-- ----------------------------
DROP TABLE IF EXISTS `reassignment`;
CREATE TABLE `reassignment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Escalation_Reassignments_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKessy30safh44b30f1cfoujv2k` (`Escalation_Reassignments_Id`),
  CONSTRAINT `FKessy30safh44b30f1cfoujv2k` FOREIGN KEY (`Escalation_Reassignments_Id`) REFERENCES `escalation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reassignment
-- ----------------------------

-- ----------------------------
-- Table structure for reassignment_potentialowners
-- ----------------------------
DROP TABLE IF EXISTS `reassignment_potentialowners`;
CREATE TABLE `reassignment_potentialowners` (
  `task_id` bigint(20) NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  KEY `FKsqrmpvehlc4qe9i0km22nmkjl` (`entity_id`),
  KEY `FKftegfexshix752bh2jfxf6bnh` (`task_id`),
  CONSTRAINT `FKftegfexshix752bh2jfxf6bnh` FOREIGN KEY (`task_id`) REFERENCES `reassignment` (`id`),
  CONSTRAINT `FKsqrmpvehlc4qe9i0km22nmkjl` FOREIGN KEY (`entity_id`) REFERENCES `organizationalentity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reassignment_potentialowners
-- ----------------------------

-- ----------------------------
-- Table structure for requestinfo
-- ----------------------------
DROP TABLE IF EXISTS `requestinfo`;
CREATE TABLE `requestinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `commandName` varchar(255) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `executions` int(11) NOT NULL,
  `businessKey` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `processInstanceId` bigint(20) DEFAULT NULL,
  `requestData` longblob,
  `responseData` longblob,
  `retries` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of requestinfo
-- ----------------------------

-- ----------------------------
-- Table structure for sessioninfo
-- ----------------------------
DROP TABLE IF EXISTS `sessioninfo`;
CREATE TABLE `sessioninfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lastModificationDate` datetime DEFAULT NULL,
  `rulesByteArray` longblob,
  `startDate` datetime DEFAULT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sessioninfo
-- ----------------------------
INSERT INTO `sessioninfo` VALUES ('1', '2018-05-11 21:33:07', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-11 21:30:17', '2');
INSERT INTO `sessioninfo` VALUES ('2', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 09:32:34', '1');
INSERT INTO `sessioninfo` VALUES ('3', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 09:34:42', '1');
INSERT INTO `sessioninfo` VALUES ('4', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 09:39:25', '1');
INSERT INTO `sessioninfo` VALUES ('5', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 11:25:52', '1');
INSERT INTO `sessioninfo` VALUES ('6', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 11:29:13', '1');
INSERT INTO `sessioninfo` VALUES ('7', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 11:31:03', '1');
INSERT INTO `sessioninfo` VALUES ('8', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 12:04:50', '1');
INSERT INTO `sessioninfo` VALUES ('9', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 12:08:36', '1');
INSERT INTO `sessioninfo` VALUES ('10', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 12:19:14', '1');
INSERT INTO `sessioninfo` VALUES ('11', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 12:22:41', '1');
INSERT INTO `sessioninfo` VALUES ('12', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 12:32:37', '1');
INSERT INTO `sessioninfo` VALUES ('13', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 12:34:35', '1');
INSERT INTO `sessioninfo` VALUES ('14', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 12:38:49', '1');
INSERT INTO `sessioninfo` VALUES ('15', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 12:43:31', '1');
INSERT INTO `sessioninfo` VALUES ('16', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 13:03:19', '1');
INSERT INTO `sessioninfo` VALUES ('17', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 13:37:23', '1');
INSERT INTO `sessioninfo` VALUES ('18', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 14:18:30', '1');
INSERT INTO `sessioninfo` VALUES ('19', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 14:24:46', '1');
INSERT INTO `sessioninfo` VALUES ('20', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 14:27:52', '1');
INSERT INTO `sessioninfo` VALUES ('21', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 14:37:13', '1');
INSERT INTO `sessioninfo` VALUES ('22', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 14:43:56', '1');
INSERT INTO `sessioninfo` VALUES ('23', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 14:53:45', '1');
INSERT INTO `sessioninfo` VALUES ('24', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 15:02:50', '1');
INSERT INTO `sessioninfo` VALUES ('25', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 15:14:37', '1');
INSERT INTO `sessioninfo` VALUES ('26', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 15:22:46', '1');
INSERT INTO `sessioninfo` VALUES ('27', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 15:31:41', '1');
INSERT INTO `sessioninfo` VALUES ('28', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 15:46:20', '1');
INSERT INTO `sessioninfo` VALUES ('29', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 15:49:24', '1');
INSERT INTO `sessioninfo` VALUES ('30', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 15:58:50', '1');
INSERT INTO `sessioninfo` VALUES ('31', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 16:41:56', '1');
INSERT INTO `sessioninfo` VALUES ('32', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 17:02:42', '1');
INSERT INTO `sessioninfo` VALUES ('33', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 17:10:20', '1');
INSERT INTO `sessioninfo` VALUES ('34', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 17:13:37', '1');
INSERT INTO `sessioninfo` VALUES ('35', '2018-05-12 19:08:03', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 19:07:35', '2');
INSERT INTO `sessioninfo` VALUES ('36', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 19:31:04', '1');
INSERT INTO `sessioninfo` VALUES ('37', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 19:42:37', '1');
INSERT INTO `sessioninfo` VALUES ('38', '2018-05-12 20:04:46', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 20:04:07', '2');
INSERT INTO `sessioninfo` VALUES ('39', '2018-05-12 20:23:38', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 20:21:32', '2');
INSERT INTO `sessioninfo` VALUES ('40', '2018-05-12 20:34:04', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 20:29:05', '3');
INSERT INTO `sessioninfo` VALUES ('41', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 20:51:15', '1');
INSERT INTO `sessioninfo` VALUES ('42', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 20:57:44', '1');
INSERT INTO `sessioninfo` VALUES ('43', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 21:04:58', '1');
INSERT INTO `sessioninfo` VALUES ('44', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-12 21:08:50', '1');
INSERT INTO `sessioninfo` VALUES ('45', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 05:17:14', '1');
INSERT INTO `sessioninfo` VALUES ('46', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 05:24:51', '1');
INSERT INTO `sessioninfo` VALUES ('47', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 05:31:31', '1');
INSERT INTO `sessioninfo` VALUES ('48', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 05:39:37', '1');
INSERT INTO `sessioninfo` VALUES ('49', '2018-05-13 05:56:32', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 05:46:38', '3');
INSERT INTO `sessioninfo` VALUES ('50', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 06:03:27', '1');
INSERT INTO `sessioninfo` VALUES ('51', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 06:07:03', '1');
INSERT INTO `sessioninfo` VALUES ('52', '2018-05-13 06:31:06', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 06:25:29', '2');
INSERT INTO `sessioninfo` VALUES ('53', '2018-05-13 06:42:28', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 06:39:57', '2');
INSERT INTO `sessioninfo` VALUES ('54', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 06:49:33', '1');
INSERT INTO `sessioninfo` VALUES ('55', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 07:54:43', '1');
INSERT INTO `sessioninfo` VALUES ('56', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 08:47:04', '1');
INSERT INTO `sessioninfo` VALUES ('57', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 08:49:36', '1');
INSERT INTO `sessioninfo` VALUES ('58', '2018-05-13 09:43:24', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 09:12:41', '3');
INSERT INTO `sessioninfo` VALUES ('59', '2018-05-13 10:00:32', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 09:59:36', '2');
INSERT INTO `sessioninfo` VALUES ('60', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 10:26:34', '1');
INSERT INTO `sessioninfo` VALUES ('61', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 10:41:09', '1');
INSERT INTO `sessioninfo` VALUES ('62', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 10:55:36', '1');
INSERT INTO `sessioninfo` VALUES ('63', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 11:15:45', '1');
INSERT INTO `sessioninfo` VALUES ('64', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 11:46:54', '1');
INSERT INTO `sessioninfo` VALUES ('65', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 11:53:48', '1');
INSERT INTO `sessioninfo` VALUES ('66', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 11:58:53', '1');
INSERT INTO `sessioninfo` VALUES ('67', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 12:01:10', '1');
INSERT INTO `sessioninfo` VALUES ('68', '2018-05-13 12:10:47', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 12:06:48', '2');
INSERT INTO `sessioninfo` VALUES ('69', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 12:25:29', '1');
INSERT INTO `sessioninfo` VALUES ('70', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 12:30:47', '1');
INSERT INTO `sessioninfo` VALUES ('71', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 12:37:13', '1');
INSERT INTO `sessioninfo` VALUES ('72', '2018-05-13 12:47:13', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 12:46:44', '2');
INSERT INTO `sessioninfo` VALUES ('73', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 12:52:26', '1');
INSERT INTO `sessioninfo` VALUES ('74', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 13:19:37', '1');
INSERT INTO `sessioninfo` VALUES ('75', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 13:30:06', '1');
INSERT INTO `sessioninfo` VALUES ('76', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 13:40:24', '1');
INSERT INTO `sessioninfo` VALUES ('77', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 13:53:34', '1');
INSERT INTO `sessioninfo` VALUES ('78', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 13:59:24', '1');
INSERT INTO `sessioninfo` VALUES ('79', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 14:16:52', '1');
INSERT INTO `sessioninfo` VALUES ('80', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 14:22:03', '1');
INSERT INTO `sessioninfo` VALUES ('81', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 14:31:46', '1');
INSERT INTO `sessioninfo` VALUES ('82', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 14:41:09', '1');
INSERT INTO `sessioninfo` VALUES ('83', '2018-05-13 15:01:22', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 15:00:12', '2');
INSERT INTO `sessioninfo` VALUES ('84', '2018-05-13 15:15:37', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 15:11:06', '2');
INSERT INTO `sessioninfo` VALUES ('85', '2018-05-13 15:38:15', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 15:31:43', '3');
INSERT INTO `sessioninfo` VALUES ('86', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 15:59:37', '1');
INSERT INTO `sessioninfo` VALUES ('87', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 16:05:06', '1');
INSERT INTO `sessioninfo` VALUES ('88', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 16:07:54', '1');
INSERT INTO `sessioninfo` VALUES ('89', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 16:09:56', '1');
INSERT INTO `sessioninfo` VALUES ('90', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 16:17:16', '1');
INSERT INTO `sessioninfo` VALUES ('91', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 16:23:10', '1');
INSERT INTO `sessioninfo` VALUES ('92', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 16:29:32', '1');
INSERT INTO `sessioninfo` VALUES ('93', '2018-05-13 16:36:19', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 16:33:58', '2');
INSERT INTO `sessioninfo` VALUES ('94', '2018-05-13 20:09:08', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 16:42:01', '3');
INSERT INTO `sessioninfo` VALUES ('95', '2018-05-13 21:15:46', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 21:14:05', '2');
INSERT INTO `sessioninfo` VALUES ('96', '2018-05-13 21:24:34', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 21:20:15', '2');
INSERT INTO `sessioninfo` VALUES ('97', '2018-05-13 21:32:05', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 21:31:19', '2');
INSERT INTO `sessioninfo` VALUES ('98', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 21:34:13', '1');
INSERT INTO `sessioninfo` VALUES ('99', '2018-05-13 22:00:29', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-13 21:49:48', '5');
INSERT INTO `sessioninfo` VALUES ('100', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 06:42:33', '1');
INSERT INTO `sessioninfo` VALUES ('101', '2018-05-14 08:18:43', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 08:14:05', '3');
INSERT INTO `sessioninfo` VALUES ('102', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 08:54:10', '1');
INSERT INTO `sessioninfo` VALUES ('103', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 09:05:59', '1');
INSERT INTO `sessioninfo` VALUES ('104', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 09:08:25', '1');
INSERT INTO `sessioninfo` VALUES ('105', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 09:17:20', '1');
INSERT INTO `sessioninfo` VALUES ('106', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 09:27:14', '1');
INSERT INTO `sessioninfo` VALUES ('107', '2018-05-14 09:44:31', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 09:38:13', '5');
INSERT INTO `sessioninfo` VALUES ('108', '2018-05-14 09:54:40', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 09:54:29', '2');
INSERT INTO `sessioninfo` VALUES ('109', '2018-05-14 10:00:56', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 09:59:58', '2');
INSERT INTO `sessioninfo` VALUES ('110', '2018-05-14 13:38:55', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 13:30:59', '3');
INSERT INTO `sessioninfo` VALUES ('111', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 13:49:29', '1');
INSERT INTO `sessioninfo` VALUES ('112', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 13:56:37', '1');
INSERT INTO `sessioninfo` VALUES ('113', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 14:10:45', '1');
INSERT INTO `sessioninfo` VALUES ('114', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 14:33:44', '1');
INSERT INTO `sessioninfo` VALUES ('115', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 14:50:11', '1');
INSERT INTO `sessioninfo` VALUES ('116', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 14:53:18', '1');
INSERT INTO `sessioninfo` VALUES ('117', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 15:00:54', '1');
INSERT INTO `sessioninfo` VALUES ('118', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 15:11:49', '1');
INSERT INTO `sessioninfo` VALUES ('119', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 16:29:24', '1');
INSERT INTO `sessioninfo` VALUES ('120', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 16:52:11', '1');
INSERT INTO `sessioninfo` VALUES ('121', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 16:57:21', '1');
INSERT INTO `sessioninfo` VALUES ('122', '2018-05-14 18:18:34', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-14 18:17:51', '2');
INSERT INTO `sessioninfo` VALUES ('123', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 13:43:19', '1');
INSERT INTO `sessioninfo` VALUES ('124', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 14:39:23', '1');
INSERT INTO `sessioninfo` VALUES ('125', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 15:15:47', '1');
INSERT INTO `sessioninfo` VALUES ('126', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 15:21:32', '1');
INSERT INTO `sessioninfo` VALUES ('127', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 15:43:15', '1');
INSERT INTO `sessioninfo` VALUES ('128', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 16:38:04', '1');
INSERT INTO `sessioninfo` VALUES ('129', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 17:07:01', '1');
INSERT INTO `sessioninfo` VALUES ('130', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 17:13:53', '1');
INSERT INTO `sessioninfo` VALUES ('131', '2018-05-15 17:42:24', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 17:30:28', '3');
INSERT INTO `sessioninfo` VALUES ('132', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 20:24:59', '1');
INSERT INTO `sessioninfo` VALUES ('133', '2018-05-15 20:31:26', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 20:27:19', '3');
INSERT INTO `sessioninfo` VALUES ('134', '2018-05-15 20:50:59', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 20:50:33', '2');
INSERT INTO `sessioninfo` VALUES ('135', '2018-05-15 20:58:14', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 20:57:45', '2');
INSERT INTO `sessioninfo` VALUES ('136', '2018-05-15 21:55:56', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 21:55:39', '2');
INSERT INTO `sessioninfo` VALUES ('137', null, 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 22:06:13', '1');
INSERT INTO `sessioninfo` VALUES ('138', '2018-05-15 22:06:30', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-15 22:06:14', '2');
INSERT INTO `sessioninfo` VALUES ('139', '2018-05-16 13:42:43', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-16 13:42:08', '2');
INSERT INTO `sessioninfo` VALUES ('140', '2018-05-16 13:54:01', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-16 13:52:51', '2');
INSERT INTO `sessioninfo` VALUES ('141', '2018-05-16 14:13:40', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-16 14:13:23', '2');
INSERT INTO `sessioninfo` VALUES ('142', '2018-05-16 15:06:50', 0xACED0005777C0A060807100718005272080010001A6818002000320608011000180042231A190A044D41494E10001801200028FFFFFFFFFFFFFFFFFF01400022060A044D41494E52350A0744454641554C54222A0A266F72672E64726F6F6C732E636F72652E726574656F6F2E496E697469616C46616374496D706C100022026800, '2018-05-16 14:22:57', '5');

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `archived` smallint(6) DEFAULT NULL,
  `allowedToDelegate` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `formName` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `subTaskStrategy` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `activationTime` datetime DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `documentAccessType` int(11) DEFAULT NULL,
  `documentContentId` bigint(20) NOT NULL,
  `documentType` varchar(255) DEFAULT NULL,
  `expirationTime` datetime DEFAULT NULL,
  `faultAccessType` int(11) DEFAULT NULL,
  `faultContentId` bigint(20) NOT NULL,
  `faultName` varchar(255) DEFAULT NULL,
  `faultType` varchar(255) DEFAULT NULL,
  `outputAccessType` int(11) DEFAULT NULL,
  `outputContentId` bigint(20) NOT NULL,
  `outputType` varchar(255) DEFAULT NULL,
  `parentId` bigint(20) NOT NULL,
  `previousStatus` int(11) DEFAULT NULL,
  `processId` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `processSessionId` bigint(20) NOT NULL,
  `skipable` bit(1) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `workItemId` bigint(20) NOT NULL,
  `taskType` varchar(255) DEFAULT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  `taskInitiator_id` varchar(255) DEFAULT NULL,
  `actualOwner_id` varchar(255) DEFAULT NULL,
  `createdBy_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK48d1bfgwf0jqow1yk8ku4xcpi` (`taskInitiator_id`),
  KEY `FKpmkxvqq63aed2y2boruu53a0s` (`actualOwner_id`),
  KEY `FKexuboqnbla7jfyyesyo61ucmb` (`createdBy_id`),
  CONSTRAINT `FK48d1bfgwf0jqow1yk8ku4xcpi` FOREIGN KEY (`taskInitiator_id`) REFERENCES `organizationalentity` (`id`),
  CONSTRAINT `FKexuboqnbla7jfyyesyo61ucmb` FOREIGN KEY (`createdBy_id`) REFERENCES `organizationalentity` (`id`),
  CONSTRAINT `FKpmkxvqq63aed2y2boruu53a0s` FOREIGN KEY (`actualOwner_id`) REFERENCES `organizationalentity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('1', '0', null, '1', 'Task1', 'Task1', '0', 'NoAction', '1', '2018-05-13 05:54:06', '2018-05-13 05:54:06', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '1', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '2', 'org.jbpm.examples.checklist.sample1', '7', '49', '\0', 'Ready', '1', null, '1', null, null, null);
INSERT INTO `task` VALUES ('2', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-13 05:56:32', '2018-05-13 05:56:32', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '2', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '8', '49', '\0', 'Created', '2', null, '1', null, null, null);
INSERT INTO `task` VALUES ('3', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-13 06:31:05', '2018-05-13 06:31:05', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '3', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '9', '52', '\0', 'Created', '3', null, '1', null, null, null);
INSERT INTO `task` VALUES ('4', '0', null, '1', 'Task1', 'Task1', '0', 'NoAction', '1', '2018-05-13 06:42:27', '2018-05-13 06:42:27', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '4', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '2', 'org.jbpm.examples.checklist.sample1', '10', '53', '\0', 'Ready', '4', null, '1', null, null, null);
INSERT INTO `task` VALUES ('5', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-13 09:16:56', '2018-05-13 09:16:56', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '5', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '11', '58', '\0', 'Created', '5', null, '1', null, null, null);
INSERT INTO `task` VALUES ('6', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-13 09:43:23', '2018-05-13 09:43:23', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '6', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '12', '58', '\0', 'Created', '6', null, '1', null, null, null);
INSERT INTO `task` VALUES ('7', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-13 10:00:31', '2018-05-13 10:00:31', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '7', 'java.util.HashMap', null, null, '-1', null, null, '0', '8', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '13', '59', '\0', 'Completed', '7', null, '3', null, 'admin', 'admin');
INSERT INTO `task` VALUES ('8', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 11:34:39', '2018-05-13 11:34:39', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '9', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '13', '63', '\0', 'Ready', '8', null, '1', null, null, null);
INSERT INTO `task` VALUES ('9', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 11:34:39', '2018-05-13 11:34:39', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '10', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '1', 'com.sample.evaluation', '13', '63', '\0', 'Reserved', '9', null, '2', null, 'mary', null);
INSERT INTO `task` VALUES ('10', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-13 12:10:46', '2018-05-13 12:10:46', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '11', 'java.util.HashMap', null, null, '-1', null, null, '0', '26', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '14', '68', '\0', 'Completed', '10', null, '3', null, 'admin', 'admin');
INSERT INTO `task` VALUES ('11', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-13 12:47:12', '2018-05-13 12:47:12', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '12', 'java.util.HashMap', null, null, '-1', null, null, '0', '13', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '15', '72', '\0', 'Completed', '11', null, '3', null, 'admin', 'admin');
INSERT INTO `task` VALUES ('12', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 12:53:38', '2018-05-13 12:53:38', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '14', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '15', '73', '\0', 'Ready', '12', null, '1', null, null, null);
INSERT INTO `task` VALUES ('13', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 12:53:39', '2018-05-13 12:53:39', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '15', 'java.util.HashMap', null, null, '-1', null, null, '0', '16', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '15', '73', '\0', 'Completed', '13', null, '4', null, 'john', null);
INSERT INTO `task` VALUES ('14', '0', null, '', null, 'john', '0', 'NoAction', '', '2018-05-13 15:01:21', '2018-05-13 15:01:21', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '17', 'java.util.HashMap', null, null, '-1', null, null, '0', '18', 'java.util.HashMap', '-1', '3', 'mytest.helloworldScriptTask', '16', '83', '', 'Completed', '14', null, '3', null, 'john', 'john');
INSERT INTO `task` VALUES ('15', '0', null, '', null, 'mary', '0', 'NoAction', '', '2018-05-13 15:02:10', '2018-05-13 15:02:10', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '19', 'java.util.HashMap', null, null, '-1', null, null, '0', '20', 'java.util.HashMap', '-1', '3', 'mytest.helloworldScriptTask', '16', '83', '', 'Completed', '15', null, '3', null, 'mary', 'mary');
INSERT INTO `task` VALUES ('16', '0', null, '', null, 'tmp', '0', 'NoAction', '', '2018-05-13 15:14:28', '2018-05-13 15:14:28', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '21', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '2', 'mytest.helloworldScriptTask', '16', '84', '', 'Ready', '16', null, '1', null, null, null);
INSERT INTO `task` VALUES ('17', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-13 15:15:37', '2018-05-13 15:15:37', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '22', 'java.util.HashMap', null, null, '-1', null, null, '0', '23', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '17', '84', '\0', 'Completed', '17', null, '3', null, 'admin', 'admin');
INSERT INTO `task` VALUES ('18', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 15:17:50', '2018-05-13 15:17:50', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '24', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '1', 'com.sample.evaluation', '17', '84', '\0', 'Reserved', '18', null, '2', null, 'john', null);
INSERT INTO `task` VALUES ('19', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 15:17:50', '2018-05-13 15:17:50', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '25', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '17', '84', '\0', 'Ready', '19', null, '1', null, null, null);
INSERT INTO `task` VALUES ('20', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 15:17:55', '2018-05-13 15:17:55', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '27', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '1', 'com.sample.evaluation', '14', '84', '\0', 'Reserved', '20', null, '2', null, 'mary', null);
INSERT INTO `task` VALUES ('21', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 15:17:55', '2018-05-13 15:17:55', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '28', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '14', '84', '\0', 'Ready', '21', null, '1', null, null, null);
INSERT INTO `task` VALUES ('22', '0', null, '', null, 'john', '0', 'NoAction', '', '2018-05-13 15:35:25', '2018-05-13 15:35:25', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '29', 'java.util.HashMap', null, null, '-1', null, null, '0', '30', 'java.util.HashMap', '-1', '3', 'mytest.helloworldScriptTask', '18', '85', '', 'Completed', '22', null, '3', null, 'john', 'john');
INSERT INTO `task` VALUES ('23', '0', null, '', null, 'mary', '0', 'NoAction', '', '2018-05-13 15:35:43', '2018-05-13 15:35:43', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '31', 'java.util.HashMap', null, null, '-1', null, null, '0', '32', 'java.util.HashMap', '-1', '3', 'mytest.helloworldScriptTask', '18', '85', '', 'Completed', '23', null, '3', null, 'mary', 'mary');
INSERT INTO `task` VALUES ('24', '0', null, '', null, 'tmp', '0', 'NoAction', '', '2018-05-13 15:36:21', '2018-05-13 15:36:21', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '33', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '2', 'mytest.helloworldScriptTask', '18', '85', '', 'Ready', '24', null, '1', null, null, null);
INSERT INTO `task` VALUES ('25', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-13 15:38:14', '2018-05-13 15:38:14', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '34', 'java.util.HashMap', null, null, '-1', null, null, '0', '35', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '19', '85', '\0', 'Completed', '25', null, '3', null, 'admin', 'admin');
INSERT INTO `task` VALUES ('26', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 15:38:54', '2018-05-13 15:38:54', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '36', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '19', '85', '\0', 'Ready', '26', null, '1', null, null, null);
INSERT INTO `task` VALUES ('27', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 15:38:54', '2018-05-13 15:38:54', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '37', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '1', 'com.sample.evaluation', '19', '85', '\0', 'Reserved', '27', null, '2', null, 'john', null);
INSERT INTO `task` VALUES ('28', '0', null, '', null, 'john', '0', 'NoAction', '', '2018-05-13 16:36:19', '2018-05-13 16:36:19', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '38', 'java.util.HashMap', null, null, '-1', null, null, '0', '39', 'java.util.HashMap', '-1', '3', 'mytest.helloworldScriptTask', '20', '93', '', 'Completed', '28', null, '3', null, 'john', 'john');
INSERT INTO `task` VALUES ('29', '0', null, '', null, 'mary', '0', 'NoAction', '', '2018-05-13 16:36:48', '2018-05-13 16:36:48', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '40', 'java.util.HashMap', null, null, '-1', null, null, '0', '41', 'java.util.HashMap', '-1', '3', 'mytest.helloworldScriptTask', '20', '93', '', 'Completed', '29', null, '3', null, 'mary', 'mary');
INSERT INTO `task` VALUES ('30', '0', null, '', null, 'tmp', '0', 'NoAction', '', '2018-05-13 16:37:10', '2018-05-13 16:37:10', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '42', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '2', 'mytest.helloworldScriptTask', '20', '93', '', 'Ready', '30', null, '1', null, null, null);
INSERT INTO `task` VALUES ('31', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-13 16:42:33', '2018-05-13 16:42:33', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '43', 'java.util.HashMap', null, null, '-1', null, null, '0', '44', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '21', '94', '\0', 'Completed', '31', null, '3', null, 'admin', 'admin');
INSERT INTO `task` VALUES ('32', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 16:42:46', '2018-05-13 16:42:46', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '45', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '21', '94', '\0', 'Ready', '32', null, '1', null, null, null);
INSERT INTO `task` VALUES ('33', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 16:42:47', '2018-05-13 16:42:47', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '46', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '1', 'com.sample.evaluation', '21', '94', '\0', 'Reserved', '33', null, '2', null, 'john', null);
INSERT INTO `task` VALUES ('34', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-13 20:09:08', '2018-05-13 20:09:08', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '47', 'java.util.HashMap', null, null, '-1', null, null, '0', '48', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '22', '94', '\0', 'Completed', '34', null, '3', null, 'admin', 'admin');
INSERT INTO `task` VALUES ('35', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 20:10:01', '2018-05-13 20:10:01', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '49', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '22', '94', '\0', 'Ready', '35', null, '1', null, null, null);
INSERT INTO `task` VALUES ('36', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-13 20:10:01', '2018-05-13 20:10:01', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '50', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '1', 'com.sample.evaluation', '22', '94', '\0', 'Reserved', '36', null, '2', null, 'mary', null);
INSERT INTO `task` VALUES ('37', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-14 08:14:19', '2018-05-14 08:14:19', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '51', 'java.util.HashMap', null, null, '-1', null, null, '0', '52', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '32', '101', '\0', 'Completed', '46', null, '3', null, 'admin', 'admin');
INSERT INTO `task` VALUES ('38', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-14 08:14:56', '2018-05-14 08:14:56', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '53', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '32', '101', '\0', 'Ready', '47', null, '1', null, null, null);
INSERT INTO `task` VALUES ('39', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-14 08:14:56', '2018-05-14 08:14:56', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '54', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '1', 'com.sample.evaluation', '32', '101', '\0', 'Reserved', '48', null, '2', null, 'john', null);
INSERT INTO `task` VALUES ('40', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-14 08:18:43', '2018-05-14 08:18:43', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '55', 'java.util.HashMap', null, null, '-1', null, null, '0', '56', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '33', '101', '\0', 'Completed', '49', null, '3', null, 'admin', 'admin');
INSERT INTO `task` VALUES ('41', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-14 08:20:10', '2018-05-14 08:20:10', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '57', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '33', '101', '\0', 'Ready', '50', null, '1', null, null, null);
INSERT INTO `task` VALUES ('42', '0', null, 'You need to evaluate admin.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate admin.', '2018-05-14 08:20:10', '2018-05-14 08:20:10', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '58', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '1', 'com.sample.evaluation', '33', '101', '\0', 'Reserved', '51', null, '2', null, 'john', null);
INSERT INTO `task` VALUES ('43', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-14 09:54:38', '2018-05-14 09:54:38', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '59', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '2', 'com.sample.evaluation', '38', '108', '\0', 'Ready', '56', null, '1', null, null, null);
INSERT INTO `task` VALUES ('44', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-14 10:00:55', '2018-05-14 10:00:55', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '60', 'java.util.HashMap', null, null, '-1', null, null, '0', '61', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '39', '109', '\0', 'Completed', '57', null, '3', null, 'tmp', 'tmp');
INSERT INTO `task` VALUES ('45', '0', null, 'You need to evaluate tmp.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate tmp.', '2018-05-14 11:54:47', '2018-05-14 11:54:47', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '62', 'java.util.HashMap', null, null, '-1', null, null, '0', '65', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '39', '109', '\0', 'Completed', '58', null, '4', null, 'mary', null);
INSERT INTO `task` VALUES ('46', '0', null, 'You need to evaluate tmp.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate tmp.', '2018-05-14 11:54:47', '2018-05-14 11:54:47', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '63', 'java.util.HashMap', null, null, '-1', null, null, '0', '64', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '39', '109', '\0', 'Completed', '59', null, '4', null, 'john', null);
INSERT INTO `task` VALUES ('47', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-14 13:34:35', '2018-05-14 13:34:35', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '66', 'java.util.HashMap', null, null, '-1', null, null, '0', '67', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '40', '110', '\0', 'Completed', '60', null, '3', null, 'tmp', 'tmp');
INSERT INTO `task` VALUES ('48', '0', null, 'You need to evaluate tmp.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate tmp.', '2018-05-14 13:34:51', '2018-05-14 13:34:51', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '68', 'java.util.HashMap', null, null, '-1', null, null, '0', '70', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '40', '110', '\0', 'Completed', '61', null, '4', null, 'tmp', null);
INSERT INTO `task` VALUES ('49', '0', null, 'You need to evaluate tmp.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate tmp.', '2018-05-14 13:34:52', '2018-05-14 13:34:52', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '69', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '1', 'com.sample.evaluation', '40', '110', '\0', 'Reserved', '62', null, '2', null, 'john', null);
INSERT INTO `task` VALUES ('50', '0', null, '', null, 'john', '0', 'NoAction', '', '2018-05-14 13:38:55', '2018-05-14 13:38:55', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '71', 'java.util.HashMap', null, null, '-1', null, null, '0', '72', 'java.util.HashMap', '-1', '3', 'mytest.helloworldScriptTask', '41', '110', '', 'Completed', '63', null, '3', null, 'john', 'john');
INSERT INTO `task` VALUES ('51', '0', null, '', null, 'mary', '0', 'NoAction', '', '2018-05-14 13:39:14', '2018-05-14 13:39:14', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '73', 'java.util.HashMap', null, null, '-1', null, null, '0', '74', 'java.util.HashMap', '-1', '3', 'mytest.helloworldScriptTask', '41', '110', '', 'Completed', '64', null, '3', null, 'mary', 'mary');
INSERT INTO `task` VALUES ('52', '0', null, '', null, 'tmp', '0', 'NoAction', '', '2018-05-14 13:39:45', '2018-05-14 13:39:45', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '75', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '2', 'mytest.helloworldScriptTask', '41', '110', '', 'Ready', '65', null, '1', null, null, null);
INSERT INTO `task` VALUES ('53', '0', null, '', '业务部审核', '业务部审核', '0', 'NoAction', '', '2018-05-14 18:18:32', '2018-05-14 18:18:32', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '76', 'java.util.HashMap', null, null, '-1', null, null, '0', '77', 'java.util.HashMap', '-1', '3', 'src.processTest', '42', '122', '', 'Completed', '66', null, '4', null, 'lee', null);
INSERT INTO `task` VALUES ('54', '0', null, '', 'HR审核', 'HR审核', '0', 'NoAction', '', '2018-05-14 18:21:18', '2018-05-14 18:21:18', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '78', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '1', 'src.processTest', '42', '122', '', 'Reserved', '67', null, '2', null, 'mary', null);
INSERT INTO `task` VALUES ('55', '0', null, '', 'PM审核', 'PM 审核', '0', 'NoAction', '', '2018-05-14 18:21:18', '2018-05-14 18:21:18', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '79', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'src.processTest', '42', '122', '', 'Ready', '68', null, '1', null, null, null);
INSERT INTO `task` VALUES ('56', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-15 17:41:48', '2018-05-15 17:41:48', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '80', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '43', '131', '\0', 'Reserved', '69', null, '1', null, 'john', 'john');
INSERT INTO `task` VALUES ('57', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-15 17:42:24', '2018-05-15 17:42:24', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '81', 'java.util.HashMap', null, null, '-1', null, null, '0', '82', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '44', '131', '\0', 'Completed', '70', null, '3', null, 'john', 'john');
INSERT INTO `task` VALUES ('58', '0', null, 'You need to evaluate john.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate john.', '2018-05-15 17:42:38', '2018-05-15 17:42:38', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '83', 'java.util.HashMap', null, null, '-1', null, null, '0', '85', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '44', '131', '\0', 'Completed', '71', null, '4', null, 'mary', null);
INSERT INTO `task` VALUES ('59', '0', null, 'You need to evaluate john.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate john.', '2018-05-15 17:42:38', '2018-05-15 17:42:38', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '84', 'java.util.HashMap', null, null, '-1', null, null, '0', '86', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '44', '131', '\0', 'Completed', '72', null, '4', null, 'john', null);
INSERT INTO `task` VALUES ('60', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-15 20:27:51', '2018-05-15 20:27:51', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '87', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '45', '133', '\0', 'Reserved', '73', null, '1', null, 'lee', 'lee');
INSERT INTO `task` VALUES ('61', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-15 20:31:25', '2018-05-15 20:31:25', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '88', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '46', '133', '\0', 'Reserved', '74', null, '1', null, 'lee', 'lee');
INSERT INTO `task` VALUES ('62', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-15 20:50:57', '2018-05-15 20:50:57', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '89', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '47', '134', '\0', 'Reserved', '75', null, '1', null, 'lee', 'lee');
INSERT INTO `task` VALUES ('63', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-15 20:58:13', '2018-05-15 20:58:13', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '90', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '48', '135', '\0', 'Reserved', '76', null, '1', null, 'lee', 'lee');
INSERT INTO `task` VALUES ('64', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-15 21:55:55', '2018-05-15 21:55:55', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '91', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '49', '136', '\0', 'Reserved', '77', null, '1', null, 'john', 'john');
INSERT INTO `task` VALUES ('65', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-15 22:06:29', '2018-05-15 22:06:29', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '92', 'java.util.HashMap', null, null, '-1', null, null, '0', '93', 'java.util.HashMap', '-1', '3', 'com.sample.evaluation', '50', '138', '\0', 'Completed', '78', null, '3', null, 'john', 'john');
INSERT INTO `task` VALUES ('66', '0', null, 'You need to evaluate john.', 'Performance Evaluation', 'HR Evaluation', '0', 'NoAction', 'You need to evaluate john.', '2018-05-15 22:07:05', '2018-05-15 22:07:05', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '94', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '1', 'com.sample.evaluation', '50', '138', '\0', 'Reserved', '79', null, '2', null, 'mary', null);
INSERT INTO `task` VALUES ('67', '0', null, 'You need to evaluate john.', 'Performance Evaluation', 'PM Evaluation', '0', 'NoAction', 'You need to evaluate john.', '2018-05-15 22:07:05', '2018-05-15 22:07:05', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '95', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '50', '138', '\0', 'Ready', '80', null, '1', null, null, null);
INSERT INTO `task` VALUES ('68', '0', null, '', '业务部审核', '业务部审核', '0', 'NoAction', '', '2018-05-16 13:42:42', '2018-05-16 13:42:42', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '96', 'java.util.HashMap', null, null, '-1', null, null, '0', '97', 'java.util.HashMap', '-1', '3', 'src.processTest', '51', '139', '', 'Completed', '81', null, '4', null, 'lee', null);
INSERT INTO `task` VALUES ('69', '0', null, '', 'HR审核', 'HR审核', '0', 'NoAction', '', '2018-05-16 13:44:28', '2018-05-16 13:44:28', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '98', 'java.util.HashMap', null, null, '-1', null, null, '0', '100', 'java.util.HashMap', '-1', '3', 'src.processTest', '51', '139', '', 'Completed', '82', null, '4', null, 'mary', null);
INSERT INTO `task` VALUES ('70', '0', null, '', 'PM审核', 'PM 审核', '0', 'NoAction', '', '2018-05-16 13:44:28', '2018-05-16 13:44:28', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '99', 'java.util.HashMap', null, null, '-1', null, null, '0', '101', 'java.util.HashMap', '-1', '3', 'src.processTest', '51', '139', '', 'Completed', '83', null, '4', null, 'john', null);
INSERT INTO `task` VALUES ('71', '0', null, '', '风控部门审核', '风控部门审核', '0', 'NoAction', '', '2018-05-16 13:45:44', '2018-05-16 13:45:44', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '102', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'src.processTest', '51', '139', '', 'Ready', '84', null, '1', null, null, null);
INSERT INTO `task` VALUES ('72', '0', null, '', '业务部审核', '业务部审核', '0', 'NoAction', '', '2018-05-16 13:54:00', '2018-05-16 13:54:00', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '103', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'src.processTest', '52', '140', '', 'Ready', '85', null, '1', null, null, null);
INSERT INTO `task` VALUES ('73', '0', null, '', '业务部审核', '业务部审核', '0', 'NoAction', '', '2018-05-16 14:13:39', '2018-05-16 14:13:39', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '104', 'java.util.HashMap', null, null, '-1', null, null, '0', '105', 'java.util.HashMap', '-1', '3', 'src.processTest', '53', '141', '', 'Completed', '86', null, '4', null, 'lee', null);
INSERT INTO `task` VALUES ('74', '0', null, '', 'HR审核', 'HR审核', '0', 'NoAction', '', '2018-05-16 14:14:14', '2018-05-16 14:14:14', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '106', 'java.util.HashMap', null, null, '-1', null, null, '0', '108', 'java.util.HashMap', '-1', '3', 'src.processTest', '53', '141', '', 'Completed', '87', null, '4', null, 'mary', null);
INSERT INTO `task` VALUES ('75', '0', null, '', 'PM审核', 'PM 审核', '0', 'NoAction', '', '2018-05-16 14:14:14', '2018-05-16 14:14:14', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '107', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '1', 'src.processTest', '53', '141', '', 'Reserved', '88', null, '2', null, 'john', null);
INSERT INTO `task` VALUES ('76', '0', null, '', '业务部审核', '业务部审核', '0', 'NoAction', '', '2018-05-16 14:25:58', '2018-05-16 14:25:58', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '109', 'java.util.HashMap', null, null, '-1', null, null, '0', '110', 'java.util.HashMap', '-1', '3', 'src.processTest', '54', '142', '', 'Completed', '89', null, '4', null, 'lee', null);
INSERT INTO `task` VALUES ('77', '0', null, '', 'PM审核', 'PM 审核', '0', 'NoAction', '', '2018-05-16 14:26:25', '2018-05-16 14:26:25', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '111', 'java.util.HashMap', null, null, '-1', null, null, '0', '114', 'java.util.HashMap', '-1', '3', 'src.processTest', '54', '142', '', 'Completed', '90', null, '4', null, 'john', null);
INSERT INTO `task` VALUES ('78', '0', null, '', 'HR审核', 'HR审核', '0', 'NoAction', '', '2018-05-16 14:26:25', '2018-05-16 14:26:25', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '112', 'java.util.HashMap', null, null, '-1', null, null, '0', '113', 'java.util.HashMap', '-1', '3', 'src.processTest', '54', '142', '', 'Completed', '91', null, '4', null, 'mary', null);
INSERT INTO `task` VALUES ('79', '0', null, '', '风控部门审核', '风控部门审核', '0', 'NoAction', '', '2018-05-16 14:28:53', '2018-05-16 14:28:53', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '115', 'java.util.HashMap', null, null, '-1', null, null, '0', '116', 'java.util.HashMap', '-1', '3', 'src.processTest', '54', '142', '', 'Completed', '92', null, '4', null, 'Lars', null);
INSERT INTO `task` VALUES ('80', '0', null, '', '财务部审核', '财务部审核', '0', 'NoAction', '', '2018-05-16 14:32:19', '2018-05-16 14:32:19', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '117', 'java.util.HashMap', null, null, '-1', null, null, '0', '118', 'java.util.HashMap', '-1', '3', 'src.processTest', '54', '142', '', 'Completed', '93', null, '4', null, 'caiwu', null);
INSERT INTO `task` VALUES ('81', '0', null, '', 'CEＯ审核', 'CEＯ审核', '0', 'NoAction', '', '2018-05-16 14:34:29', '2018-05-16 14:34:29', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '119', 'java.util.HashMap', null, null, '-1', null, null, '0', '120', 'java.util.HashMap', '-1', '3', 'src.processTest', '54', '142', '', 'Completed', '94', null, '4', null, 'Baker', null);
INSERT INTO `task` VALUES ('82', '0', null, '', '总裁审核', '总裁审核', '0', 'NoAction', '', '2018-05-16 14:42:48', '2018-05-16 14:42:48', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '121', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '2', 'src.processTest', '54', '142', '', 'Ready', '95', null, '1', null, null, null);
INSERT INTO `task` VALUES ('83', '0', null, '', '业务部审核', '业务部审核', '0', 'NoAction', '', '2018-05-16 14:50:00', '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '122', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'src.processTest', '55', '142', '', 'Ready', '96', null, '1', null, null, null);
INSERT INTO `task` VALUES ('84', '0', null, '', '业务部审核', '业务部审核', '0', 'NoAction', '', '2018-05-16 14:58:44', '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '123', 'java.util.HashMap', null, null, '-1', null, null, '0', '124', 'java.util.HashMap', '-1', '3', 'src.processTest', '56', '142', '', 'Completed', '97', null, '4', null, 'lee', null);
INSERT INTO `task` VALUES ('85', '0', null, '', 'HR审核', 'HR审核', '0', 'NoAction', '', '2018-05-16 15:01:48', '2018-05-16 15:01:48', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '125', 'java.util.HashMap', null, null, '-1', null, null, '0', '127', 'java.util.HashMap', '-1', '3', 'src.processTest', '56', '142', '', 'Completed', '98', null, '4', null, 'mary', null);
INSERT INTO `task` VALUES ('86', '0', null, '', 'PM审核', 'PM 审核', '0', 'NoAction', '', '2018-05-16 15:01:48', '2018-05-16 15:01:48', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '126', 'java.util.HashMap', null, null, '-1', null, null, '0', '128', 'java.util.HashMap', '-1', '3', 'src.processTest', '56', '142', '', 'Completed', '99', null, '4', null, 'john', null);
INSERT INTO `task` VALUES ('87', '0', null, '', '风控部门审核', '风控部门审核', '0', 'NoAction', '', '2018-05-16 15:03:03', '2018-05-16 15:03:03', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '129', 'java.util.HashMap', null, null, '-1', null, null, '0', '130', 'java.util.HashMap', '-1', '3', 'src.processTest', '56', '142', '', 'Completed', '100', null, '4', null, 'Lars', null);
INSERT INTO `task` VALUES ('88', '0', null, '', '财务部审核', '财务部审核', '0', 'NoAction', '', '2018-05-16 15:03:54', '2018-05-16 15:03:54', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '131', 'java.util.HashMap', null, null, '-1', null, null, '0', '132', 'java.util.HashMap', '-1', '3', 'src.processTest', '56', '142', '', 'Completed', '101', null, '4', null, 'caiwu', null);
INSERT INTO `task` VALUES ('89', '0', null, '', 'CEＯ审核', 'CEＯ审核', '0', 'NoAction', '', '2018-05-16 15:04:19', '2018-05-16 15:04:19', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '133', 'java.util.HashMap', null, null, '-1', null, null, '0', '134', 'java.util.HashMap', '-1', '3', 'src.processTest', '56', '142', '', 'Completed', '102', null, '4', null, 'Baker', null);
INSERT INTO `task` VALUES ('90', '0', null, '', '总裁审核', '总裁审核', '0', 'NoAction', '', '2018-05-16 15:05:00', '2018-05-16 15:05:00', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '135', 'java.util.HashMap', null, null, '-1', null, null, '0', '136', 'java.util.HashMap', '-1', '3', 'src.processTest', '56', '142', '', 'Completed', '103', null, '3', null, 'BOSS', 'BOSS');
INSERT INTO `task` VALUES ('91', '0', null, 'Please perform a self-evalutation.', 'Performance Evaluation', 'Self Evaluation', '0', 'NoAction', 'Please perform a self-evalutation.', '2018-05-16 15:06:50', '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', '0', '137', 'java.util.HashMap', null, null, '-1', null, null, null, '-1', null, '-1', '0', 'com.sample.evaluation', '57', '142', '\0', 'Reserved', '104', null, '1', null, 'tmp', 'tmp');

-- ----------------------------
-- Table structure for taskdef
-- ----------------------------
DROP TABLE IF EXISTS `taskdef`;
CREATE TABLE `taskdef` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taskdef
-- ----------------------------

-- ----------------------------
-- Table structure for taskevent
-- ----------------------------
DROP TABLE IF EXISTS `taskevent`;
CREATE TABLE `taskevent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logTime` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) DEFAULT NULL,
  `taskId` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  `workItemId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taskevent
-- ----------------------------
INSERT INTO `taskevent` VALUES ('1', '2018-05-13 05:54:08', null, '7', '1', 'ADDED', 'org.jbpm.examples.checklist.sample1', '0', '1');
INSERT INTO `taskevent` VALUES ('2', '2018-05-13 05:56:32', null, '8', '2', 'ADDED', 'com.sample.evaluation', '0', '2');
INSERT INTO `taskevent` VALUES ('3', '2018-05-13 06:31:06', null, '9', '3', 'ADDED', 'com.sample.evaluation', '0', '3');
INSERT INTO `taskevent` VALUES ('4', '2018-05-13 06:42:28', null, '10', '4', 'ADDED', 'org.jbpm.examples.checklist.sample1', '0', '4');
INSERT INTO `taskevent` VALUES ('5', '2018-05-13 09:16:56', null, '11', '5', 'ADDED', 'com.sample.evaluation', '0', '5');
INSERT INTO `taskevent` VALUES ('7', '2018-05-13 09:43:24', null, '12', '6', 'ADDED', 'com.sample.evaluation', '0', '6');
INSERT INTO `taskevent` VALUES ('8', '2018-05-13 10:00:32', null, '13', '7', 'ADDED', 'com.sample.evaluation', '0', '7');
INSERT INTO `taskevent` VALUES ('9', '2018-05-13 10:01:41', null, '13', '7', 'STARTED', 'admin', '0', '7');
INSERT INTO `taskevent` VALUES ('10', '2018-05-13 11:34:39', 'Task output data updated', '13', '7', 'UPDATED', 'admin', '0', '7');
INSERT INTO `taskevent` VALUES ('11', '2018-05-13 11:34:39', null, '13', '8', 'ADDED', 'com.sample.evaluation', '0', '8');
INSERT INTO `taskevent` VALUES ('12', '2018-05-13 11:34:39', null, '13', '9', 'ADDED', 'com.sample.evaluation', '0', '9');
INSERT INTO `taskevent` VALUES ('13', '2018-05-13 11:34:39', null, '13', '7', 'COMPLETED', 'admin', '0', '7');
INSERT INTO `taskevent` VALUES ('14', '2018-05-13 12:10:47', null, '14', '10', 'ADDED', 'com.sample.evaluation', '0', '10');
INSERT INTO `taskevent` VALUES ('15', '2018-05-13 12:22:12', null, '14', '10', 'STARTED', 'admin', '0', '10');
INSERT INTO `taskevent` VALUES ('16', '2018-05-13 12:47:13', null, '15', '11', 'ADDED', 'com.sample.evaluation', '0', '11');
INSERT INTO `taskevent` VALUES ('17', '2018-05-13 12:53:24', null, '15', '11', 'STARTED', 'admin', '0', '11');
INSERT INTO `taskevent` VALUES ('18', '2018-05-13 12:53:38', 'Task output data updated', '15', '11', 'UPDATED', 'admin', '0', '11');
INSERT INTO `taskevent` VALUES ('19', '2018-05-13 12:53:39', null, '15', '12', 'ADDED', 'com.sample.evaluation', '0', '12');
INSERT INTO `taskevent` VALUES ('20', '2018-05-13 12:53:39', null, '15', '13', 'ADDED', 'com.sample.evaluation', '0', '13');
INSERT INTO `taskevent` VALUES ('21', '2018-05-13 12:53:39', null, '15', '11', 'COMPLETED', 'admin', '0', '11');
INSERT INTO `taskevent` VALUES ('22', '2018-05-13 13:03:11', null, '15', '13', 'CLAIMED', 'john', '0', '13');
INSERT INTO `taskevent` VALUES ('23', '2018-05-13 13:10:33', null, '15', '13', 'STARTED', 'john', '0', '13');
INSERT INTO `taskevent` VALUES ('24', '2018-05-13 13:11:03', 'Task output data updated', '15', '13', 'UPDATED', 'john', '0', '13');
INSERT INTO `taskevent` VALUES ('25', '2018-05-13 13:11:03', null, '15', '13', 'COMPLETED', 'john', '0', '13');
INSERT INTO `taskevent` VALUES ('26', '2018-05-13 15:01:22', null, '16', '14', 'ADDED', 'mytest.helloworldScriptTask', '0', '14');
INSERT INTO `taskevent` VALUES ('27', '2018-05-13 15:01:57', null, '16', '14', 'STARTED', 'john', '0', '14');
INSERT INTO `taskevent` VALUES ('28', '2018-05-13 15:02:09', 'Task output data updated', '16', '14', 'UPDATED', 'john', '0', '14');
INSERT INTO `taskevent` VALUES ('29', '2018-05-13 15:02:11', null, '16', '15', 'ADDED', 'mytest.helloworldScriptTask', '0', '15');
INSERT INTO `taskevent` VALUES ('30', '2018-05-13 15:02:11', null, '16', '14', 'COMPLETED', 'john', '0', '14');
INSERT INTO `taskevent` VALUES ('31', '2018-05-13 15:13:03', null, '13', '9', 'CLAIMED', 'mary', '0', '9');
INSERT INTO `taskevent` VALUES ('32', '2018-05-13 15:14:23', null, '16', '15', 'STARTED', 'mary', '0', '15');
INSERT INTO `taskevent` VALUES ('33', '2018-05-13 15:14:27', 'Task output data updated', '16', '15', 'UPDATED', 'mary', '0', '15');
INSERT INTO `taskevent` VALUES ('34', '2018-05-13 15:14:28', null, '16', '16', 'ADDED', 'mytest.helloworldScriptTask', '0', '16');
INSERT INTO `taskevent` VALUES ('35', '2018-05-13 15:14:28', null, '16', '15', 'COMPLETED', 'mary', '0', '15');
INSERT INTO `taskevent` VALUES ('36', '2018-05-13 15:15:37', null, '17', '17', 'ADDED', 'com.sample.evaluation', '0', '17');
INSERT INTO `taskevent` VALUES ('37', '2018-05-13 15:17:37', null, '17', '17', 'STARTED', 'admin', '0', '17');
INSERT INTO `taskevent` VALUES ('38', '2018-05-13 15:17:50', 'Task output data updated', '17', '17', 'UPDATED', 'admin', '0', '17');
INSERT INTO `taskevent` VALUES ('39', '2018-05-13 15:17:50', null, '17', '18', 'ADDED', 'com.sample.evaluation', '0', '18');
INSERT INTO `taskevent` VALUES ('40', '2018-05-13 15:17:51', null, '17', '19', 'ADDED', 'com.sample.evaluation', '0', '19');
INSERT INTO `taskevent` VALUES ('41', '2018-05-13 15:17:51', null, '17', '17', 'COMPLETED', 'admin', '0', '17');
INSERT INTO `taskevent` VALUES ('42', '2018-05-13 15:17:55', 'Task output data updated', '14', '10', 'UPDATED', 'admin', '0', '10');
INSERT INTO `taskevent` VALUES ('43', '2018-05-13 15:17:55', null, '14', '20', 'ADDED', 'com.sample.evaluation', '0', '20');
INSERT INTO `taskevent` VALUES ('44', '2018-05-13 15:17:55', null, '14', '21', 'ADDED', 'com.sample.evaluation', '0', '21');
INSERT INTO `taskevent` VALUES ('45', '2018-05-13 15:17:56', null, '14', '10', 'COMPLETED', 'admin', '0', '10');
INSERT INTO `taskevent` VALUES ('46', '2018-05-13 15:18:13', null, '17', '18', 'CLAIMED', 'john', '0', '18');
INSERT INTO `taskevent` VALUES ('47', '2018-05-13 15:35:26', null, '18', '22', 'ADDED', 'mytest.helloworldScriptTask', '0', '22');
INSERT INTO `taskevent` VALUES ('48', '2018-05-13 15:35:40', null, '18', '22', 'STARTED', 'john', '0', '22');
INSERT INTO `taskevent` VALUES ('49', '2018-05-13 15:35:43', 'Task output data updated', '18', '22', 'UPDATED', 'john', '0', '22');
INSERT INTO `taskevent` VALUES ('50', '2018-05-13 15:35:43', null, '18', '23', 'ADDED', 'mytest.helloworldScriptTask', '0', '23');
INSERT INTO `taskevent` VALUES ('51', '2018-05-13 15:35:43', null, '18', '22', 'COMPLETED', 'john', '0', '22');
INSERT INTO `taskevent` VALUES ('52', '2018-05-13 15:36:18', null, '18', '23', 'STARTED', 'mary', '0', '23');
INSERT INTO `taskevent` VALUES ('53', '2018-05-13 15:36:21', 'Task output data updated', '18', '23', 'UPDATED', 'mary', '0', '23');
INSERT INTO `taskevent` VALUES ('54', '2018-05-13 15:36:21', null, '18', '24', 'ADDED', 'mytest.helloworldScriptTask', '0', '24');
INSERT INTO `taskevent` VALUES ('55', '2018-05-13 15:36:21', null, '18', '23', 'COMPLETED', 'mary', '0', '23');
INSERT INTO `taskevent` VALUES ('56', '2018-05-13 15:38:15', null, '19', '25', 'ADDED', 'com.sample.evaluation', '0', '25');
INSERT INTO `taskevent` VALUES ('57', '2018-05-13 15:38:51', null, '19', '25', 'STARTED', 'admin', '0', '25');
INSERT INTO `taskevent` VALUES ('58', '2018-05-13 15:38:54', 'Task output data updated', '19', '25', 'UPDATED', 'admin', '0', '25');
INSERT INTO `taskevent` VALUES ('59', '2018-05-13 15:38:54', null, '19', '26', 'ADDED', 'com.sample.evaluation', '0', '26');
INSERT INTO `taskevent` VALUES ('60', '2018-05-13 15:38:54', null, '19', '27', 'ADDED', 'com.sample.evaluation', '0', '27');
INSERT INTO `taskevent` VALUES ('61', '2018-05-13 15:38:54', null, '19', '25', 'COMPLETED', 'admin', '0', '25');
INSERT INTO `taskevent` VALUES ('62', '2018-05-13 16:36:19', null, '20', '28', 'ADDED', 'mytest.helloworldScriptTask', '0', '28');
INSERT INTO `taskevent` VALUES ('63', '2018-05-13 16:36:43', null, '20', '28', 'STARTED', 'john', '0', '28');
INSERT INTO `taskevent` VALUES ('64', '2018-05-13 16:36:48', 'Task output data updated', '20', '28', 'UPDATED', 'john', '0', '28');
INSERT INTO `taskevent` VALUES ('65', '2018-05-13 16:36:49', null, '20', '29', 'ADDED', 'mytest.helloworldScriptTask', '0', '29');
INSERT INTO `taskevent` VALUES ('66', '2018-05-13 16:36:49', null, '20', '28', 'COMPLETED', 'john', '0', '28');
INSERT INTO `taskevent` VALUES ('67', '2018-05-13 16:37:06', null, '20', '29', 'STARTED', 'mary', '0', '29');
INSERT INTO `taskevent` VALUES ('68', '2018-05-13 16:37:10', 'Task output data updated', '20', '29', 'UPDATED', 'mary', '0', '29');
INSERT INTO `taskevent` VALUES ('69', '2018-05-13 16:37:10', null, '20', '30', 'ADDED', 'mytest.helloworldScriptTask', '0', '30');
INSERT INTO `taskevent` VALUES ('70', '2018-05-13 16:37:10', null, '20', '29', 'COMPLETED', 'mary', '0', '29');
INSERT INTO `taskevent` VALUES ('71', '2018-05-13 16:42:34', null, '21', '31', 'ADDED', 'com.sample.evaluation', '0', '31');
INSERT INTO `taskevent` VALUES ('72', '2018-05-13 16:42:43', null, '21', '31', 'STARTED', 'admin', '0', '31');
INSERT INTO `taskevent` VALUES ('73', '2018-05-13 16:42:46', 'Task output data updated', '21', '31', 'UPDATED', 'admin', '0', '31');
INSERT INTO `taskevent` VALUES ('74', '2018-05-13 16:42:47', null, '21', '32', 'ADDED', 'com.sample.evaluation', '0', '32');
INSERT INTO `taskevent` VALUES ('75', '2018-05-13 16:42:47', null, '21', '33', 'ADDED', 'com.sample.evaluation', '0', '33');
INSERT INTO `taskevent` VALUES ('76', '2018-05-13 16:42:47', null, '21', '31', 'COMPLETED', 'admin', '0', '31');
INSERT INTO `taskevent` VALUES ('77', '2018-05-13 16:45:44', null, '21', '33', 'CLAIMED', 'john', '0', '33');
INSERT INTO `taskevent` VALUES ('78', '2018-05-13 16:48:17', null, '19', '27', 'CLAIMED', 'john', '0', '27');
INSERT INTO `taskevent` VALUES ('79', '2018-05-13 20:09:08', null, '22', '34', 'ADDED', 'com.sample.evaluation', '0', '34');
INSERT INTO `taskevent` VALUES ('80', '2018-05-13 20:09:33', null, '22', '34', 'STARTED', 'admin', '0', '34');
INSERT INTO `taskevent` VALUES ('81', '2018-05-13 20:10:01', 'Task output data updated', '22', '34', 'UPDATED', 'admin', '0', '34');
INSERT INTO `taskevent` VALUES ('82', '2018-05-13 20:10:01', null, '22', '35', 'ADDED', 'com.sample.evaluation', '0', '35');
INSERT INTO `taskevent` VALUES ('83', '2018-05-13 20:10:01', null, '22', '36', 'ADDED', 'com.sample.evaluation', '0', '36');
INSERT INTO `taskevent` VALUES ('84', '2018-05-13 20:10:01', null, '22', '34', 'COMPLETED', 'admin', '0', '34');
INSERT INTO `taskevent` VALUES ('85', '2018-05-14 08:14:21', null, '32', '37', 'ADDED', 'com.sample.evaluation', '0', '46');
INSERT INTO `taskevent` VALUES ('86', '2018-05-14 08:14:52', null, '32', '37', 'STARTED', 'admin', '0', '46');
INSERT INTO `taskevent` VALUES ('87', '2018-05-14 08:14:56', 'Task output data updated', '32', '37', 'UPDATED', 'admin', '0', '46');
INSERT INTO `taskevent` VALUES ('88', '2018-05-14 08:14:56', null, '32', '38', 'ADDED', 'com.sample.evaluation', '0', '47');
INSERT INTO `taskevent` VALUES ('89', '2018-05-14 08:14:56', null, '32', '39', 'ADDED', 'com.sample.evaluation', '0', '48');
INSERT INTO `taskevent` VALUES ('90', '2018-05-14 08:14:56', null, '32', '37', 'COMPLETED', 'admin', '0', '46');
INSERT INTO `taskevent` VALUES ('91', '2018-05-14 08:17:27', null, '32', '39', 'CLAIMED', 'john', '0', '48');
INSERT INTO `taskevent` VALUES ('92', '2018-05-14 08:18:43', null, '33', '40', 'ADDED', 'com.sample.evaluation', '0', '49');
INSERT INTO `taskevent` VALUES ('93', '2018-05-14 08:20:06', null, '33', '40', 'STARTED', 'admin', '0', '49');
INSERT INTO `taskevent` VALUES ('94', '2018-05-14 08:20:10', 'Task output data updated', '33', '40', 'UPDATED', 'admin', '0', '49');
INSERT INTO `taskevent` VALUES ('95', '2018-05-14 08:20:10', null, '33', '41', 'ADDED', 'com.sample.evaluation', '0', '50');
INSERT INTO `taskevent` VALUES ('96', '2018-05-14 08:20:10', null, '33', '42', 'ADDED', 'com.sample.evaluation', '0', '51');
INSERT INTO `taskevent` VALUES ('97', '2018-05-14 08:20:10', null, '33', '40', 'COMPLETED', 'admin', '0', '49');
INSERT INTO `taskevent` VALUES ('98', '2018-05-14 08:22:52', null, '33', '42', 'CLAIMED', 'john', '0', '51');
INSERT INTO `taskevent` VALUES ('99', '2018-05-14 09:30:48', null, '22', '36', 'CLAIMED', 'mary', '0', '36');
INSERT INTO `taskevent` VALUES ('100', '2018-05-14 09:54:39', null, '38', '43', 'ADDED', 'com.sample.evaluation', '0', '56');
INSERT INTO `taskevent` VALUES ('101', '2018-05-14 10:00:56', null, '39', '44', 'ADDED', 'com.sample.evaluation', '0', '57');
INSERT INTO `taskevent` VALUES ('102', '2018-05-14 11:54:43', null, '39', '44', 'STARTED', 'tmp', '0', '57');
INSERT INTO `taskevent` VALUES ('103', '2018-05-14 11:54:47', 'Task output data updated', '39', '44', 'UPDATED', 'tmp', '0', '57');
INSERT INTO `taskevent` VALUES ('104', '2018-05-14 11:54:47', null, '39', '45', 'ADDED', 'com.sample.evaluation', '0', '58');
INSERT INTO `taskevent` VALUES ('105', '2018-05-14 11:54:47', null, '39', '46', 'ADDED', 'com.sample.evaluation', '0', '59');
INSERT INTO `taskevent` VALUES ('106', '2018-05-14 11:54:47', null, '39', '44', 'COMPLETED', 'tmp', '0', '57');
INSERT INTO `taskevent` VALUES ('107', '2018-05-14 13:32:58', null, '39', '46', 'CLAIMED', 'john', '0', '59');
INSERT INTO `taskevent` VALUES ('108', '2018-05-14 13:33:11', null, '39', '46', 'STARTED', 'john', '0', '59');
INSERT INTO `taskevent` VALUES ('109', '2018-05-14 13:33:15', 'Task output data updated', '39', '46', 'UPDATED', 'john', '0', '59');
INSERT INTO `taskevent` VALUES ('110', '2018-05-14 13:33:15', null, '39', '46', 'COMPLETED', 'john', '0', '59');
INSERT INTO `taskevent` VALUES ('111', '2018-05-14 13:33:37', null, '39', '45', 'CLAIMED', 'mary', '0', '58');
INSERT INTO `taskevent` VALUES ('112', '2018-05-14 13:33:48', null, '39', '45', 'STARTED', 'mary', '0', '58');
INSERT INTO `taskevent` VALUES ('113', '2018-05-14 13:33:51', 'Task output data updated', '39', '45', 'UPDATED', 'mary', '0', '58');
INSERT INTO `taskevent` VALUES ('114', '2018-05-14 13:33:51', null, '39', '45', 'COMPLETED', 'mary', '0', '58');
INSERT INTO `taskevent` VALUES ('115', '2018-05-14 13:34:35', null, '40', '47', 'ADDED', 'com.sample.evaluation', '0', '60');
INSERT INTO `taskevent` VALUES ('116', '2018-05-14 13:34:48', null, '40', '47', 'STARTED', 'tmp', '0', '60');
INSERT INTO `taskevent` VALUES ('117', '2018-05-14 13:34:51', 'Task output data updated', '40', '47', 'UPDATED', 'tmp', '0', '60');
INSERT INTO `taskevent` VALUES ('118', '2018-05-14 13:34:52', null, '40', '48', 'ADDED', 'com.sample.evaluation', '0', '61');
INSERT INTO `taskevent` VALUES ('119', '2018-05-14 13:34:52', null, '40', '49', 'ADDED', 'com.sample.evaluation', '0', '62');
INSERT INTO `taskevent` VALUES ('120', '2018-05-14 13:34:52', null, '40', '47', 'COMPLETED', 'tmp', '0', '60');
INSERT INTO `taskevent` VALUES ('121', '2018-05-14 13:35:23', null, '40', '48', 'CLAIMED', 'tmp', '0', '61');
INSERT INTO `taskevent` VALUES ('122', '2018-05-14 13:35:29', null, '40', '48', 'STARTED', 'tmp', '0', '61');
INSERT INTO `taskevent` VALUES ('123', '2018-05-14 13:35:32', 'Task output data updated', '40', '48', 'UPDATED', 'tmp', '0', '61');
INSERT INTO `taskevent` VALUES ('124', '2018-05-14 13:35:32', null, '40', '48', 'COMPLETED', 'tmp', '0', '61');
INSERT INTO `taskevent` VALUES ('125', '2018-05-14 13:36:00', null, '40', '49', 'CLAIMED', 'john', '0', '62');
INSERT INTO `taskevent` VALUES ('126', '2018-05-14 13:38:55', null, '41', '50', 'ADDED', 'mytest.helloworldScriptTask', '0', '63');
INSERT INTO `taskevent` VALUES ('127', '2018-05-14 13:39:11', null, '41', '50', 'STARTED', 'john', '0', '63');
INSERT INTO `taskevent` VALUES ('128', '2018-05-14 13:39:14', 'Task output data updated', '41', '50', 'UPDATED', 'john', '0', '63');
INSERT INTO `taskevent` VALUES ('129', '2018-05-14 13:39:14', null, '41', '51', 'ADDED', 'mytest.helloworldScriptTask', '0', '64');
INSERT INTO `taskevent` VALUES ('130', '2018-05-14 13:39:14', null, '41', '50', 'COMPLETED', 'john', '0', '63');
INSERT INTO `taskevent` VALUES ('131', '2018-05-14 13:39:41', null, '41', '51', 'STARTED', 'mary', '0', '64');
INSERT INTO `taskevent` VALUES ('132', '2018-05-14 13:39:45', 'Task output data updated', '41', '51', 'UPDATED', 'mary', '0', '64');
INSERT INTO `taskevent` VALUES ('133', '2018-05-14 13:39:45', null, '41', '52', 'ADDED', 'mytest.helloworldScriptTask', '0', '65');
INSERT INTO `taskevent` VALUES ('134', '2018-05-14 13:39:45', null, '41', '51', 'COMPLETED', 'mary', '0', '64');
INSERT INTO `taskevent` VALUES ('135', '2018-05-14 18:18:34', null, '42', '53', 'ADDED', 'src.processTest', '0', '66');
INSERT INTO `taskevent` VALUES ('136', '2018-05-14 18:20:57', null, '42', '53', 'CLAIMED', 'lee', '0', '66');
INSERT INTO `taskevent` VALUES ('137', '2018-05-14 18:21:15', null, '42', '53', 'STARTED', 'lee', '0', '66');
INSERT INTO `taskevent` VALUES ('138', '2018-05-14 18:21:18', 'Task output data updated', '42', '53', 'UPDATED', 'lee', '0', '66');
INSERT INTO `taskevent` VALUES ('139', '2018-05-14 18:21:18', null, '42', '54', 'ADDED', 'src.processTest', '0', '67');
INSERT INTO `taskevent` VALUES ('140', '2018-05-14 18:21:18', null, '42', '55', 'ADDED', 'src.processTest', '0', '68');
INSERT INTO `taskevent` VALUES ('141', '2018-05-14 18:21:18', null, '42', '53', 'COMPLETED', 'lee', '0', '66');
INSERT INTO `taskevent` VALUES ('142', '2018-05-14 18:21:37', null, '42', '54', 'CLAIMED', 'mary', '0', '67');
INSERT INTO `taskevent` VALUES ('143', '2018-05-15 17:41:51', null, '43', '56', 'ADDED', 'com.sample.evaluation', '0', '69');
INSERT INTO `taskevent` VALUES ('144', '2018-05-15 17:42:24', null, '44', '57', 'ADDED', 'com.sample.evaluation', '0', '70');
INSERT INTO `taskevent` VALUES ('145', '2018-05-15 17:42:36', null, '44', '57', 'STARTED', 'john', '0', '70');
INSERT INTO `taskevent` VALUES ('146', '2018-05-15 17:42:38', 'Task output data updated', '44', '57', 'UPDATED', 'john', '0', '70');
INSERT INTO `taskevent` VALUES ('147', '2018-05-15 17:42:38', null, '44', '58', 'ADDED', 'com.sample.evaluation', '0', '71');
INSERT INTO `taskevent` VALUES ('148', '2018-05-15 17:42:38', null, '44', '59', 'ADDED', 'com.sample.evaluation', '0', '72');
INSERT INTO `taskevent` VALUES ('149', '2018-05-15 17:42:38', null, '44', '57', 'COMPLETED', 'john', '0', '70');
INSERT INTO `taskevent` VALUES ('150', '2018-05-15 17:42:55', null, '44', '58', 'CLAIMED', 'mary', '0', '71');
INSERT INTO `taskevent` VALUES ('151', '2018-05-15 17:43:00', null, '44', '58', 'STARTED', 'mary', '0', '71');
INSERT INTO `taskevent` VALUES ('152', '2018-05-15 17:43:02', 'Task output data updated', '44', '58', 'UPDATED', 'mary', '0', '71');
INSERT INTO `taskevent` VALUES ('153', '2018-05-15 17:43:02', null, '44', '58', 'COMPLETED', 'mary', '0', '71');
INSERT INTO `taskevent` VALUES ('154', '2018-05-15 17:43:50', null, '14', '20', 'CLAIMED', 'mary', '0', '20');
INSERT INTO `taskevent` VALUES ('155', '2018-05-15 17:45:01', null, '44', '59', 'CLAIMED', 'john', '0', '72');
INSERT INTO `taskevent` VALUES ('156', '2018-05-15 17:45:06', null, '44', '59', 'STARTED', 'john', '0', '72');
INSERT INTO `taskevent` VALUES ('157', '2018-05-15 17:45:11', 'Task output data updated', '44', '59', 'UPDATED', 'john', '0', '72');
INSERT INTO `taskevent` VALUES ('158', '2018-05-15 17:45:11', null, '44', '59', 'COMPLETED', 'john', '0', '72');
INSERT INTO `taskevent` VALUES ('159', '2018-05-15 20:27:53', null, '45', '60', 'ADDED', 'com.sample.evaluation', '0', '73');
INSERT INTO `taskevent` VALUES ('160', '2018-05-15 20:31:26', null, '46', '61', 'ADDED', 'com.sample.evaluation', '0', '74');
INSERT INTO `taskevent` VALUES ('161', '2018-05-15 20:50:59', null, '47', '62', 'ADDED', 'com.sample.evaluation', '0', '75');
INSERT INTO `taskevent` VALUES ('162', '2018-05-15 20:58:14', null, '48', '63', 'ADDED', 'com.sample.evaluation', '0', '76');
INSERT INTO `taskevent` VALUES ('163', '2018-05-15 21:55:56', null, '49', '64', 'ADDED', 'com.sample.evaluation', '0', '77');
INSERT INTO `taskevent` VALUES ('164', '2018-05-15 22:06:30', null, '50', '65', 'ADDED', 'com.sample.evaluation', '0', '78');
INSERT INTO `taskevent` VALUES ('165', '2018-05-15 22:06:50', null, '50', '65', 'STARTED', 'john', '0', '78');
INSERT INTO `taskevent` VALUES ('166', '2018-05-15 22:07:05', 'Task output data updated', '50', '65', 'UPDATED', 'john', '0', '78');
INSERT INTO `taskevent` VALUES ('167', '2018-05-15 22:07:05', null, '50', '66', 'ADDED', 'com.sample.evaluation', '0', '79');
INSERT INTO `taskevent` VALUES ('168', '2018-05-15 22:07:05', null, '50', '67', 'ADDED', 'com.sample.evaluation', '0', '80');
INSERT INTO `taskevent` VALUES ('169', '2018-05-15 22:07:05', null, '50', '65', 'COMPLETED', 'john', '0', '78');
INSERT INTO `taskevent` VALUES ('170', '2018-05-15 22:07:28', null, '50', '66', 'CLAIMED', 'mary', '0', '79');
INSERT INTO `taskevent` VALUES ('171', '2018-05-16 13:42:43', null, '51', '68', 'ADDED', 'src.processTest', '0', '81');
INSERT INTO `taskevent` VALUES ('172', '2018-05-16 13:44:17', null, '51', '68', 'CLAIMED', 'lee', '0', '81');
INSERT INTO `taskevent` VALUES ('173', '2018-05-16 13:44:26', null, '51', '68', 'STARTED', 'lee', '0', '81');
INSERT INTO `taskevent` VALUES ('174', '2018-05-16 13:44:28', 'Task output data updated', '51', '68', 'UPDATED', 'lee', '0', '81');
INSERT INTO `taskevent` VALUES ('175', '2018-05-16 13:44:28', null, '51', '69', 'ADDED', 'src.processTest', '0', '82');
INSERT INTO `taskevent` VALUES ('176', '2018-05-16 13:44:28', null, '51', '70', 'ADDED', 'src.processTest', '0', '83');
INSERT INTO `taskevent` VALUES ('177', '2018-05-16 13:44:28', null, '51', '68', 'COMPLETED', 'lee', '0', '81');
INSERT INTO `taskevent` VALUES ('178', '2018-05-16 13:44:51', null, '51', '69', 'CLAIMED', 'mary', '0', '82');
INSERT INTO `taskevent` VALUES ('179', '2018-05-16 13:44:57', null, '51', '69', 'STARTED', 'mary', '0', '82');
INSERT INTO `taskevent` VALUES ('180', '2018-05-16 13:45:00', 'Task output data updated', '51', '69', 'UPDATED', 'mary', '0', '82');
INSERT INTO `taskevent` VALUES ('181', '2018-05-16 13:45:00', null, '51', '69', 'COMPLETED', 'mary', '0', '82');
INSERT INTO `taskevent` VALUES ('182', '2018-05-16 13:45:37', null, '51', '70', 'CLAIMED', 'john', '0', '83');
INSERT INTO `taskevent` VALUES ('183', '2018-05-16 13:45:42', null, '51', '70', 'STARTED', 'john', '0', '83');
INSERT INTO `taskevent` VALUES ('184', '2018-05-16 13:45:44', 'Task output data updated', '51', '70', 'UPDATED', 'john', '0', '83');
INSERT INTO `taskevent` VALUES ('185', '2018-05-16 13:45:45', null, '51', '71', 'ADDED', 'src.processTest', '0', '84');
INSERT INTO `taskevent` VALUES ('186', '2018-05-16 13:45:45', null, '51', '70', 'COMPLETED', 'john', '0', '83');
INSERT INTO `taskevent` VALUES ('187', '2018-05-16 13:54:01', null, '52', '72', 'ADDED', 'src.processTest', '0', '85');
INSERT INTO `taskevent` VALUES ('188', '2018-05-16 14:13:40', null, '53', '73', 'ADDED', 'src.processTest', '0', '86');
INSERT INTO `taskevent` VALUES ('189', '2018-05-16 14:14:03', null, '53', '73', 'CLAIMED', 'lee', '0', '86');
INSERT INTO `taskevent` VALUES ('190', '2018-05-16 14:14:12', null, '53', '73', 'STARTED', 'lee', '0', '86');
INSERT INTO `taskevent` VALUES ('191', '2018-05-16 14:14:14', 'Task output data updated', '53', '73', 'UPDATED', 'lee', '0', '86');
INSERT INTO `taskevent` VALUES ('192', '2018-05-16 14:14:14', null, '53', '74', 'ADDED', 'src.processTest', '0', '87');
INSERT INTO `taskevent` VALUES ('193', '2018-05-16 14:14:14', null, '53', '75', 'ADDED', 'src.processTest', '0', '88');
INSERT INTO `taskevent` VALUES ('194', '2018-05-16 14:14:14', null, '53', '73', 'COMPLETED', 'lee', '0', '86');
INSERT INTO `taskevent` VALUES ('195', '2018-05-16 14:15:03', null, '53', '74', 'CLAIMED', 'mary', '0', '87');
INSERT INTO `taskevent` VALUES ('196', '2018-05-16 14:15:08', null, '53', '74', 'STARTED', 'mary', '0', '87');
INSERT INTO `taskevent` VALUES ('197', '2018-05-16 14:15:10', 'Task output data updated', '53', '74', 'UPDATED', 'mary', '0', '87');
INSERT INTO `taskevent` VALUES ('198', '2018-05-16 14:15:10', null, '53', '74', 'COMPLETED', 'mary', '0', '87');
INSERT INTO `taskevent` VALUES ('199', '2018-05-16 14:16:30', null, '53', '75', 'CLAIMED', 'john', '0', '88');
INSERT INTO `taskevent` VALUES ('200', '2018-05-16 14:25:59', null, '54', '76', 'ADDED', 'src.processTest', '0', '89');
INSERT INTO `taskevent` VALUES ('201', '2018-05-16 14:26:18', null, '54', '76', 'CLAIMED', 'lee', '0', '89');
INSERT INTO `taskevent` VALUES ('202', '2018-05-16 14:26:22', null, '54', '76', 'STARTED', 'lee', '0', '89');
INSERT INTO `taskevent` VALUES ('203', '2018-05-16 14:26:25', 'Task output data updated', '54', '76', 'UPDATED', 'lee', '0', '89');
INSERT INTO `taskevent` VALUES ('204', '2018-05-16 14:26:25', null, '54', '77', 'ADDED', 'src.processTest', '0', '90');
INSERT INTO `taskevent` VALUES ('205', '2018-05-16 14:26:25', null, '54', '78', 'ADDED', 'src.processTest', '0', '91');
INSERT INTO `taskevent` VALUES ('206', '2018-05-16 14:26:25', null, '54', '76', 'COMPLETED', 'lee', '0', '89');
INSERT INTO `taskevent` VALUES ('207', '2018-05-16 14:26:57', null, '54', '78', 'CLAIMED', 'mary', '0', '91');
INSERT INTO `taskevent` VALUES ('208', '2018-05-16 14:27:19', null, '54', '78', 'STARTED', 'mary', '0', '91');
INSERT INTO `taskevent` VALUES ('209', '2018-05-16 14:27:22', 'Task output data updated', '54', '78', 'UPDATED', 'mary', '0', '91');
INSERT INTO `taskevent` VALUES ('210', '2018-05-16 14:27:22', null, '54', '78', 'COMPLETED', 'mary', '0', '91');
INSERT INTO `taskevent` VALUES ('211', '2018-05-16 14:27:46', null, '54', '77', 'CLAIMED', 'john', '0', '90');
INSERT INTO `taskevent` VALUES ('212', '2018-05-16 14:28:51', null, '54', '77', 'STARTED', 'john', '0', '90');
INSERT INTO `taskevent` VALUES ('213', '2018-05-16 14:28:53', 'Task output data updated', '54', '77', 'UPDATED', 'john', '0', '90');
INSERT INTO `taskevent` VALUES ('214', '2018-05-16 14:28:53', null, '54', '79', 'ADDED', 'src.processTest', '0', '92');
INSERT INTO `taskevent` VALUES ('215', '2018-05-16 14:28:53', null, '54', '77', 'COMPLETED', 'john', '0', '90');
INSERT INTO `taskevent` VALUES ('216', '2018-05-16 14:32:10', null, '54', '79', 'CLAIMED', 'Lars', '0', '92');
INSERT INTO `taskevent` VALUES ('217', '2018-05-16 14:32:17', null, '54', '79', 'STARTED', 'Lars', '0', '92');
INSERT INTO `taskevent` VALUES ('218', '2018-05-16 14:32:19', 'Task output data updated', '54', '79', 'UPDATED', 'Lars', '0', '92');
INSERT INTO `taskevent` VALUES ('219', '2018-05-16 14:32:19', null, '54', '80', 'ADDED', 'src.processTest', '0', '93');
INSERT INTO `taskevent` VALUES ('220', '2018-05-16 14:32:19', null, '54', '79', 'COMPLETED', 'Lars', '0', '92');
INSERT INTO `taskevent` VALUES ('221', '2018-05-16 14:34:10', null, '54', '80', 'CLAIMED', 'caiwu', '0', '93');
INSERT INTO `taskevent` VALUES ('222', '2018-05-16 14:34:27', null, '54', '80', 'STARTED', 'caiwu', '0', '93');
INSERT INTO `taskevent` VALUES ('223', '2018-05-16 14:34:29', 'Task output data updated', '54', '80', 'UPDATED', 'caiwu', '0', '93');
INSERT INTO `taskevent` VALUES ('224', '2018-05-16 14:34:30', null, '54', '81', 'ADDED', 'src.processTest', '0', '94');
INSERT INTO `taskevent` VALUES ('225', '2018-05-16 14:34:30', null, '54', '80', 'COMPLETED', 'caiwu', '0', '93');
INSERT INTO `taskevent` VALUES ('226', '2018-05-16 14:42:41', null, '54', '81', 'CLAIMED', 'Baker', '0', '94');
INSERT INTO `taskevent` VALUES ('227', '2018-05-16 14:42:46', null, '54', '81', 'STARTED', 'Baker', '0', '94');
INSERT INTO `taskevent` VALUES ('228', '2018-05-16 14:42:48', 'Task output data updated', '54', '81', 'UPDATED', 'Baker', '0', '94');
INSERT INTO `taskevent` VALUES ('229', '2018-05-16 14:42:49', null, '54', '82', 'ADDED', 'src.processTest', '0', '95');
INSERT INTO `taskevent` VALUES ('230', '2018-05-16 14:42:49', null, '54', '81', 'COMPLETED', 'Baker', '0', '94');
INSERT INTO `taskevent` VALUES ('231', '2018-05-16 14:50:00', null, '55', '83', 'ADDED', 'src.processTest', '0', '96');
INSERT INTO `taskevent` VALUES ('232', '2018-05-16 14:58:44', null, '56', '84', 'ADDED', 'src.processTest', '0', '97');
INSERT INTO `taskevent` VALUES ('233', '2018-05-16 14:59:11', null, '56', '84', 'CLAIMED', 'lee', '0', '97');
INSERT INTO `taskevent` VALUES ('234', '2018-05-16 15:01:46', null, '56', '84', 'STARTED', 'lee', '0', '97');
INSERT INTO `taskevent` VALUES ('235', '2018-05-16 15:01:48', 'Task output data updated', '56', '84', 'UPDATED', 'lee', '0', '97');
INSERT INTO `taskevent` VALUES ('236', '2018-05-16 15:01:48', null, '56', '85', 'ADDED', 'src.processTest', '0', '98');
INSERT INTO `taskevent` VALUES ('237', '2018-05-16 15:01:48', null, '56', '86', 'ADDED', 'src.processTest', '0', '99');
INSERT INTO `taskevent` VALUES ('238', '2018-05-16 15:01:48', null, '56', '84', 'COMPLETED', 'lee', '0', '97');
INSERT INTO `taskevent` VALUES ('239', '2018-05-16 15:02:38', null, '56', '85', 'CLAIMED', 'mary', '0', '98');
INSERT INTO `taskevent` VALUES ('240', '2018-05-16 15:02:41', null, '56', '85', 'STARTED', 'mary', '0', '98');
INSERT INTO `taskevent` VALUES ('241', '2018-05-16 15:02:43', 'Task output data updated', '56', '85', 'UPDATED', 'mary', '0', '98');
INSERT INTO `taskevent` VALUES ('242', '2018-05-16 15:02:43', null, '56', '85', 'COMPLETED', 'mary', '0', '98');
INSERT INTO `taskevent` VALUES ('243', '2018-05-16 15:02:57', null, '56', '86', 'CLAIMED', 'john', '0', '99');
INSERT INTO `taskevent` VALUES ('244', '2018-05-16 15:03:01', null, '56', '86', 'STARTED', 'john', '0', '99');
INSERT INTO `taskevent` VALUES ('245', '2018-05-16 15:03:03', 'Task output data updated', '56', '86', 'UPDATED', 'john', '0', '99');
INSERT INTO `taskevent` VALUES ('246', '2018-05-16 15:03:03', null, '56', '87', 'ADDED', 'src.processTest', '0', '100');
INSERT INTO `taskevent` VALUES ('247', '2018-05-16 15:03:03', null, '56', '86', 'COMPLETED', 'john', '0', '99');
INSERT INTO `taskevent` VALUES ('248', '2018-05-16 15:03:42', null, '56', '87', 'CLAIMED', 'Lars', '0', '100');
INSERT INTO `taskevent` VALUES ('249', '2018-05-16 15:03:52', null, '56', '87', 'STARTED', 'Lars', '0', '100');
INSERT INTO `taskevent` VALUES ('250', '2018-05-16 15:03:54', 'Task output data updated', '56', '87', 'UPDATED', 'Lars', '0', '100');
INSERT INTO `taskevent` VALUES ('251', '2018-05-16 15:03:54', null, '56', '88', 'ADDED', 'src.processTest', '0', '101');
INSERT INTO `taskevent` VALUES ('252', '2018-05-16 15:03:54', null, '56', '87', 'COMPLETED', 'Lars', '0', '100');
INSERT INTO `taskevent` VALUES ('253', '2018-05-16 15:04:14', null, '56', '88', 'CLAIMED', 'caiwu', '0', '101');
INSERT INTO `taskevent` VALUES ('254', '2018-05-16 15:04:17', null, '56', '88', 'STARTED', 'caiwu', '0', '101');
INSERT INTO `taskevent` VALUES ('255', '2018-05-16 15:04:19', 'Task output data updated', '56', '88', 'UPDATED', 'caiwu', '0', '101');
INSERT INTO `taskevent` VALUES ('256', '2018-05-16 15:04:19', null, '56', '89', 'ADDED', 'src.processTest', '0', '102');
INSERT INTO `taskevent` VALUES ('257', '2018-05-16 15:04:19', null, '56', '88', 'COMPLETED', 'caiwu', '0', '101');
INSERT INTO `taskevent` VALUES ('258', '2018-05-16 15:04:55', null, '56', '89', 'CLAIMED', 'Baker', '0', '102');
INSERT INTO `taskevent` VALUES ('259', '2018-05-16 15:04:58', null, '56', '89', 'STARTED', 'Baker', '0', '102');
INSERT INTO `taskevent` VALUES ('260', '2018-05-16 15:05:00', 'Task output data updated', '56', '89', 'UPDATED', 'Baker', '0', '102');
INSERT INTO `taskevent` VALUES ('261', '2018-05-16 15:05:00', null, '56', '90', 'ADDED', 'src.processTest', '0', '103');
INSERT INTO `taskevent` VALUES ('262', '2018-05-16 15:05:00', null, '56', '89', 'COMPLETED', 'Baker', '0', '102');
INSERT INTO `taskevent` VALUES ('263', '2018-05-16 15:06:07', null, '56', '90', 'STARTED', 'BOSS', '0', '103');
INSERT INTO `taskevent` VALUES ('264', '2018-05-16 15:06:09', 'Task output data updated', '56', '90', 'UPDATED', 'BOSS', '0', '103');
INSERT INTO `taskevent` VALUES ('265', '2018-05-16 15:06:09', null, '56', '90', 'COMPLETED', 'BOSS', '0', '103');
INSERT INTO `taskevent` VALUES ('266', '2018-05-16 15:06:50', null, '57', '91', 'ADDED', 'com.sample.evaluation', '0', '104');

-- ----------------------------
-- Table structure for taskvariableimpl
-- ----------------------------
DROP TABLE IF EXISTS `taskvariableimpl`;
CREATE TABLE `taskvariableimpl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `modificationDate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `processId` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) DEFAULT NULL,
  `taskId` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `value` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taskvariableimpl
-- ----------------------------
INSERT INTO `taskvariableimpl` VALUES ('1', '2018-05-13 05:54:08', 'Locale', 'org.jbpm.examples.checklist.sample1', '7', '1', '0', 'en-UK');
INSERT INTO `taskvariableimpl` VALUES ('2', '2018-05-13 05:54:08', 'Comment', 'org.jbpm.examples.checklist.sample1', '7', '1', '0', '1');
INSERT INTO `taskvariableimpl` VALUES ('3', '2018-05-13 05:54:08', 'Skippable', 'org.jbpm.examples.checklist.sample1', '7', '1', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('4', '2018-05-13 05:56:32', 'Comment', 'com.sample.evaluation', '8', '2', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('5', '2018-05-13 05:56:32', 'Skippable', 'com.sample.evaluation', '8', '2', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('6', '2018-05-13 06:31:06', 'Comment', 'com.sample.evaluation', '9', '3', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('7', '2018-05-13 06:31:06', 'Skippable', 'com.sample.evaluation', '9', '3', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('8', '2018-05-13 06:42:27', 'Locale', 'org.jbpm.examples.checklist.sample1', '10', '4', '0', 'en-UK');
INSERT INTO `taskvariableimpl` VALUES ('9', '2018-05-13 06:42:27', 'Comment', 'org.jbpm.examples.checklist.sample1', '10', '4', '0', '1');
INSERT INTO `taskvariableimpl` VALUES ('10', '2018-05-13 06:42:27', 'Skippable', 'org.jbpm.examples.checklist.sample1', '10', '4', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('11', '2018-05-13 09:16:56', 'Comment', 'com.sample.evaluation', '11', '5', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('12', '2018-05-13 09:16:56', 'Skippable', 'com.sample.evaluation', '11', '5', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('13', '2018-05-13 09:43:24', 'Comment', 'com.sample.evaluation', '12', '6', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('14', '2018-05-13 09:43:24', 'Skippable', 'com.sample.evaluation', '12', '6', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('15', '2018-05-13 10:00:32', 'Comment', 'com.sample.evaluation', '13', '7', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('16', '2018-05-13 10:00:32', 'reason', 'com.sample.evaluation', '13', '7', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('17', '2018-05-13 10:00:32', 'Skippable', 'com.sample.evaluation', '13', '7', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('18', '2018-05-13 11:34:39', 'id', 'com.sample.evaluation', '13', '7', '1', '7');
INSERT INTO `taskvariableimpl` VALUES ('19', '2018-05-13 11:34:39', 'Comment', 'com.sample.evaluation', '13', '8', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('20', '2018-05-13 11:34:39', 'reason', 'com.sample.evaluation', '13', '8', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('21', '2018-05-13 11:34:39', 'Skippable', 'com.sample.evaluation', '13', '8', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('22', '2018-05-13 11:34:39', 'GroupId', 'com.sample.evaluation', '13', '8', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('23', '2018-05-13 11:34:39', 'Comment', 'com.sample.evaluation', '13', '9', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('24', '2018-05-13 11:34:39', 'reason', 'com.sample.evaluation', '13', '9', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('25', '2018-05-13 11:34:39', 'Skippable', 'com.sample.evaluation', '13', '9', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('26', '2018-05-13 11:34:39', 'GroupId', 'com.sample.evaluation', '13', '9', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('27', '2018-05-13 12:10:47', 'Comment', 'com.sample.evaluation', '14', '10', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('28', '2018-05-13 12:10:47', 'reason', 'com.sample.evaluation', '14', '10', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('29', '2018-05-13 12:10:47', 'Skippable', 'com.sample.evaluation', '14', '10', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('30', '2018-05-13 12:47:13', 'Comment', 'com.sample.evaluation', '15', '11', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('31', '2018-05-13 12:47:13', 'reason', 'com.sample.evaluation', '15', '11', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('32', '2018-05-13 12:47:13', 'Skippable', 'com.sample.evaluation', '15', '11', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('33', '2018-05-13 12:53:38', 'id', 'com.sample.evaluation', '15', '11', '1', '11');
INSERT INTO `taskvariableimpl` VALUES ('34', '2018-05-13 12:53:39', 'Comment', 'com.sample.evaluation', '15', '12', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('35', '2018-05-13 12:53:39', 'reason', 'com.sample.evaluation', '15', '12', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('36', '2018-05-13 12:53:39', 'Skippable', 'com.sample.evaluation', '15', '12', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('37', '2018-05-13 12:53:39', 'GroupId', 'com.sample.evaluation', '15', '12', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('38', '2018-05-13 12:53:39', 'Comment', 'com.sample.evaluation', '15', '13', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('39', '2018-05-13 12:53:39', 'reason', 'com.sample.evaluation', '15', '13', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('40', '2018-05-13 12:53:39', 'Skippable', 'com.sample.evaluation', '15', '13', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('41', '2018-05-13 12:53:39', 'GroupId', 'com.sample.evaluation', '15', '13', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('42', '2018-05-13 13:11:03', 'id', 'com.sample.evaluation', '15', '13', '1', '13');
INSERT INTO `taskvariableimpl` VALUES ('43', '2018-05-13 15:02:09', 'id', 'mytest.helloworldScriptTask', '16', '14', '1', '14');
INSERT INTO `taskvariableimpl` VALUES ('44', '2018-05-13 15:14:27', 'id', 'mytest.helloworldScriptTask', '16', '15', '1', '15');
INSERT INTO `taskvariableimpl` VALUES ('45', '2018-05-13 15:15:37', 'Comment', 'com.sample.evaluation', '17', '17', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('46', '2018-05-13 15:15:37', 'reason', 'com.sample.evaluation', '17', '17', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('47', '2018-05-13 15:15:37', 'Skippable', 'com.sample.evaluation', '17', '17', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('48', '2018-05-13 15:17:50', 'id', 'com.sample.evaluation', '17', '17', '1', '17');
INSERT INTO `taskvariableimpl` VALUES ('49', '2018-05-13 15:17:50', 'Comment', 'com.sample.evaluation', '17', '18', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('50', '2018-05-13 15:17:50', 'reason', 'com.sample.evaluation', '17', '18', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('51', '2018-05-13 15:17:50', 'Skippable', 'com.sample.evaluation', '17', '18', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('52', '2018-05-13 15:17:50', 'GroupId', 'com.sample.evaluation', '17', '18', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('53', '2018-05-13 15:17:51', 'Comment', 'com.sample.evaluation', '17', '19', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('54', '2018-05-13 15:17:51', 'reason', 'com.sample.evaluation', '17', '19', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('55', '2018-05-13 15:17:51', 'Skippable', 'com.sample.evaluation', '17', '19', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('56', '2018-05-13 15:17:51', 'GroupId', 'com.sample.evaluation', '17', '19', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('57', '2018-05-13 15:17:55', 'id', 'com.sample.evaluation', '14', '10', '1', '10');
INSERT INTO `taskvariableimpl` VALUES ('58', '2018-05-13 15:17:55', 'Comment', 'com.sample.evaluation', '14', '20', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('59', '2018-05-13 15:17:55', 'reason', 'com.sample.evaluation', '14', '20', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('60', '2018-05-13 15:17:55', 'Skippable', 'com.sample.evaluation', '14', '20', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('61', '2018-05-13 15:17:55', 'GroupId', 'com.sample.evaluation', '14', '20', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('62', '2018-05-13 15:17:55', 'Comment', 'com.sample.evaluation', '14', '21', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('63', '2018-05-13 15:17:55', 'reason', 'com.sample.evaluation', '14', '21', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('64', '2018-05-13 15:17:55', 'Skippable', 'com.sample.evaluation', '14', '21', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('65', '2018-05-13 15:17:55', 'GroupId', 'com.sample.evaluation', '14', '21', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('66', '2018-05-13 15:35:43', 'id', 'mytest.helloworldScriptTask', '18', '22', '1', '22');
INSERT INTO `taskvariableimpl` VALUES ('67', '2018-05-13 15:36:21', 'id', 'mytest.helloworldScriptTask', '18', '23', '1', '23');
INSERT INTO `taskvariableimpl` VALUES ('68', '2018-05-13 15:38:15', 'Comment', 'com.sample.evaluation', '19', '25', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('69', '2018-05-13 15:38:15', 'reason', 'com.sample.evaluation', '19', '25', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('70', '2018-05-13 15:38:15', 'Skippable', 'com.sample.evaluation', '19', '25', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('71', '2018-05-13 15:38:54', 'id', 'com.sample.evaluation', '19', '25', '1', '25');
INSERT INTO `taskvariableimpl` VALUES ('72', '2018-05-13 15:38:54', 'Comment', 'com.sample.evaluation', '19', '26', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('73', '2018-05-13 15:38:54', 'reason', 'com.sample.evaluation', '19', '26', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('74', '2018-05-13 15:38:54', 'Skippable', 'com.sample.evaluation', '19', '26', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('75', '2018-05-13 15:38:54', 'GroupId', 'com.sample.evaluation', '19', '26', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('76', '2018-05-13 15:38:54', 'Comment', 'com.sample.evaluation', '19', '27', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('77', '2018-05-13 15:38:54', 'reason', 'com.sample.evaluation', '19', '27', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('78', '2018-05-13 15:38:54', 'Skippable', 'com.sample.evaluation', '19', '27', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('79', '2018-05-13 15:38:54', 'GroupId', 'com.sample.evaluation', '19', '27', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('80', '2018-05-13 16:36:48', 'id', 'mytest.helloworldScriptTask', '20', '28', '1', '28');
INSERT INTO `taskvariableimpl` VALUES ('81', '2018-05-13 16:37:10', 'id', 'mytest.helloworldScriptTask', '20', '29', '1', '29');
INSERT INTO `taskvariableimpl` VALUES ('82', '2018-05-13 16:42:34', 'Comment', 'com.sample.evaluation', '21', '31', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('83', '2018-05-13 16:42:34', 'reason', 'com.sample.evaluation', '21', '31', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('84', '2018-05-13 16:42:34', 'Skippable', 'com.sample.evaluation', '21', '31', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('85', '2018-05-13 16:42:46', 'id', 'com.sample.evaluation', '21', '31', '1', '31');
INSERT INTO `taskvariableimpl` VALUES ('86', '2018-05-13 16:42:47', 'Comment', 'com.sample.evaluation', '21', '32', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('87', '2018-05-13 16:42:47', 'reason', 'com.sample.evaluation', '21', '32', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('88', '2018-05-13 16:42:47', 'Skippable', 'com.sample.evaluation', '21', '32', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('89', '2018-05-13 16:42:47', 'GroupId', 'com.sample.evaluation', '21', '32', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('90', '2018-05-13 16:42:47', 'Comment', 'com.sample.evaluation', '21', '33', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('91', '2018-05-13 16:42:47', 'reason', 'com.sample.evaluation', '21', '33', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('92', '2018-05-13 16:42:47', 'Skippable', 'com.sample.evaluation', '21', '33', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('93', '2018-05-13 16:42:47', 'GroupId', 'com.sample.evaluation', '21', '33', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('94', '2018-05-13 20:09:08', 'Comment', 'com.sample.evaluation', '22', '34', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('95', '2018-05-13 20:09:08', 'reason', 'com.sample.evaluation', '22', '34', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('96', '2018-05-13 20:09:08', 'Skippable', 'com.sample.evaluation', '22', '34', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('97', '2018-05-13 20:10:01', 'id', 'com.sample.evaluation', '22', '34', '1', '34');
INSERT INTO `taskvariableimpl` VALUES ('98', '2018-05-13 20:10:01', 'Comment', 'com.sample.evaluation', '22', '35', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('99', '2018-05-13 20:10:01', 'reason', 'com.sample.evaluation', '22', '35', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('100', '2018-05-13 20:10:01', 'Skippable', 'com.sample.evaluation', '22', '35', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('101', '2018-05-13 20:10:01', 'GroupId', 'com.sample.evaluation', '22', '35', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('102', '2018-05-13 20:10:01', 'Comment', 'com.sample.evaluation', '22', '36', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('103', '2018-05-13 20:10:01', 'reason', 'com.sample.evaluation', '22', '36', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('104', '2018-05-13 20:10:01', 'Skippable', 'com.sample.evaluation', '22', '36', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('105', '2018-05-13 20:10:01', 'GroupId', 'com.sample.evaluation', '22', '36', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('106', '2018-05-14 08:14:21', 'Comment', 'com.sample.evaluation', '32', '37', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('107', '2018-05-14 08:14:21', 'reason', 'com.sample.evaluation', '32', '37', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('108', '2018-05-14 08:14:21', 'Skippable', 'com.sample.evaluation', '32', '37', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('109', '2018-05-14 08:14:56', 'id', 'com.sample.evaluation', '32', '37', '1', '37');
INSERT INTO `taskvariableimpl` VALUES ('110', '2018-05-14 08:14:56', 'Comment', 'com.sample.evaluation', '32', '38', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('111', '2018-05-14 08:14:56', 'reason', 'com.sample.evaluation', '32', '38', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('112', '2018-05-14 08:14:56', 'Skippable', 'com.sample.evaluation', '32', '38', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('113', '2018-05-14 08:14:56', 'GroupId', 'com.sample.evaluation', '32', '38', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('114', '2018-05-14 08:14:56', 'Comment', 'com.sample.evaluation', '32', '39', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('115', '2018-05-14 08:14:56', 'reason', 'com.sample.evaluation', '32', '39', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('116', '2018-05-14 08:14:56', 'Skippable', 'com.sample.evaluation', '32', '39', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('117', '2018-05-14 08:14:56', 'GroupId', 'com.sample.evaluation', '32', '39', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('118', '2018-05-14 08:18:43', 'Comment', 'com.sample.evaluation', '33', '40', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('119', '2018-05-14 08:18:43', 'reason', 'com.sample.evaluation', '33', '40', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('120', '2018-05-14 08:18:43', 'Skippable', 'com.sample.evaluation', '33', '40', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('121', '2018-05-14 08:20:10', 'id', 'com.sample.evaluation', '33', '40', '1', '40');
INSERT INTO `taskvariableimpl` VALUES ('122', '2018-05-14 08:20:10', 'Comment', 'com.sample.evaluation', '33', '41', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('123', '2018-05-14 08:20:10', 'reason', 'com.sample.evaluation', '33', '41', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('124', '2018-05-14 08:20:10', 'Skippable', 'com.sample.evaluation', '33', '41', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('125', '2018-05-14 08:20:10', 'GroupId', 'com.sample.evaluation', '33', '41', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('126', '2018-05-14 08:20:10', 'Comment', 'com.sample.evaluation', '33', '42', '0', 'You need to evaluate admin.');
INSERT INTO `taskvariableimpl` VALUES ('127', '2018-05-14 08:20:10', 'reason', 'com.sample.evaluation', '33', '42', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('128', '2018-05-14 08:20:10', 'Skippable', 'com.sample.evaluation', '33', '42', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('129', '2018-05-14 08:20:10', 'GroupId', 'com.sample.evaluation', '33', '42', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('130', '2018-05-14 09:54:39', 'Comment', 'com.sample.evaluation', '38', '43', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('131', '2018-05-14 09:54:39', 'reason', 'com.sample.evaluation', '38', '43', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('132', '2018-05-14 09:54:39', 'Skippable', 'com.sample.evaluation', '38', '43', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('133', '2018-05-14 10:00:56', 'Comment', 'com.sample.evaluation', '39', '44', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('134', '2018-05-14 10:00:56', 'reason', 'com.sample.evaluation', '39', '44', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('135', '2018-05-14 10:00:56', 'Skippable', 'com.sample.evaluation', '39', '44', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('136', '2018-05-14 11:54:47', 'id', 'com.sample.evaluation', '39', '44', '1', '44');
INSERT INTO `taskvariableimpl` VALUES ('137', '2018-05-14 11:54:47', 'Comment', 'com.sample.evaluation', '39', '45', '0', 'You need to evaluate tmp.');
INSERT INTO `taskvariableimpl` VALUES ('138', '2018-05-14 11:54:47', 'reason', 'com.sample.evaluation', '39', '45', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('139', '2018-05-14 11:54:47', 'Skippable', 'com.sample.evaluation', '39', '45', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('140', '2018-05-14 11:54:47', 'GroupId', 'com.sample.evaluation', '39', '45', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('141', '2018-05-14 11:54:47', 'Comment', 'com.sample.evaluation', '39', '46', '0', 'You need to evaluate tmp.');
INSERT INTO `taskvariableimpl` VALUES ('142', '2018-05-14 11:54:47', 'reason', 'com.sample.evaluation', '39', '46', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('143', '2018-05-14 11:54:47', 'Skippable', 'com.sample.evaluation', '39', '46', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('144', '2018-05-14 11:54:47', 'GroupId', 'com.sample.evaluation', '39', '46', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('145', '2018-05-14 13:33:15', 'id', 'com.sample.evaluation', '39', '46', '1', '46');
INSERT INTO `taskvariableimpl` VALUES ('146', '2018-05-14 13:33:51', 'id', 'com.sample.evaluation', '39', '45', '1', '45');
INSERT INTO `taskvariableimpl` VALUES ('147', '2018-05-14 13:34:35', 'Comment', 'com.sample.evaluation', '40', '47', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('148', '2018-05-14 13:34:35', 'reason', 'com.sample.evaluation', '40', '47', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('149', '2018-05-14 13:34:35', 'Skippable', 'com.sample.evaluation', '40', '47', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('150', '2018-05-14 13:34:51', 'id', 'com.sample.evaluation', '40', '47', '1', '47');
INSERT INTO `taskvariableimpl` VALUES ('151', '2018-05-14 13:34:52', 'Comment', 'com.sample.evaluation', '40', '48', '0', 'You need to evaluate tmp.');
INSERT INTO `taskvariableimpl` VALUES ('152', '2018-05-14 13:34:52', 'reason', 'com.sample.evaluation', '40', '48', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('153', '2018-05-14 13:34:52', 'Skippable', 'com.sample.evaluation', '40', '48', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('154', '2018-05-14 13:34:52', 'GroupId', 'com.sample.evaluation', '40', '48', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('155', '2018-05-14 13:34:52', 'Comment', 'com.sample.evaluation', '40', '49', '0', 'You need to evaluate tmp.');
INSERT INTO `taskvariableimpl` VALUES ('156', '2018-05-14 13:34:52', 'reason', 'com.sample.evaluation', '40', '49', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('157', '2018-05-14 13:34:52', 'Skippable', 'com.sample.evaluation', '40', '49', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('158', '2018-05-14 13:34:52', 'GroupId', 'com.sample.evaluation', '40', '49', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('159', '2018-05-14 13:35:32', 'id', 'com.sample.evaluation', '40', '48', '1', '48');
INSERT INTO `taskvariableimpl` VALUES ('160', '2018-05-14 13:39:14', 'id', 'mytest.helloworldScriptTask', '41', '50', '1', '50');
INSERT INTO `taskvariableimpl` VALUES ('161', '2018-05-14 13:39:45', 'id', 'mytest.helloworldScriptTask', '41', '51', '1', '51');
INSERT INTO `taskvariableimpl` VALUES ('162', '2018-05-14 18:18:34', 'Skippable', 'src.processTest', '42', '53', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('163', '2018-05-14 18:18:34', 'GroupId', 'src.processTest', '42', '53', '0', '业务部');
INSERT INTO `taskvariableimpl` VALUES ('164', '2018-05-14 18:21:18', 'id', 'src.processTest', '42', '53', '1', '53');
INSERT INTO `taskvariableimpl` VALUES ('165', '2018-05-14 18:21:18', 'Skippable', 'src.processTest', '42', '54', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('166', '2018-05-14 18:21:18', 'GroupId', 'src.processTest', '42', '54', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('167', '2018-05-14 18:21:18', 'Skippable', 'src.processTest', '42', '55', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('168', '2018-05-14 18:21:18', 'GroupId', 'src.processTest', '42', '55', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('169', '2018-05-15 17:41:51', 'Comment', 'com.sample.evaluation', '43', '56', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('170', '2018-05-15 17:41:51', 'reason', 'com.sample.evaluation', '43', '56', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('171', '2018-05-15 17:41:51', 'Skippable', 'com.sample.evaluation', '43', '56', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('172', '2018-05-15 17:42:24', 'Comment', 'com.sample.evaluation', '44', '57', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('173', '2018-05-15 17:42:24', 'reason', 'com.sample.evaluation', '44', '57', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('174', '2018-05-15 17:42:24', 'Skippable', 'com.sample.evaluation', '44', '57', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('175', '2018-05-15 17:42:38', 'id', 'com.sample.evaluation', '44', '57', '1', '57');
INSERT INTO `taskvariableimpl` VALUES ('176', '2018-05-15 17:42:38', 'Comment', 'com.sample.evaluation', '44', '58', '0', 'You need to evaluate john.');
INSERT INTO `taskvariableimpl` VALUES ('177', '2018-05-15 17:42:38', 'reason', 'com.sample.evaluation', '44', '58', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('178', '2018-05-15 17:42:38', 'Skippable', 'com.sample.evaluation', '44', '58', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('179', '2018-05-15 17:42:38', 'GroupId', 'com.sample.evaluation', '44', '58', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('180', '2018-05-15 17:42:38', 'Comment', 'com.sample.evaluation', '44', '59', '0', 'You need to evaluate john.');
INSERT INTO `taskvariableimpl` VALUES ('181', '2018-05-15 17:42:38', 'reason', 'com.sample.evaluation', '44', '59', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('182', '2018-05-15 17:42:38', 'Skippable', 'com.sample.evaluation', '44', '59', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('183', '2018-05-15 17:42:38', 'GroupId', 'com.sample.evaluation', '44', '59', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('184', '2018-05-15 17:43:02', 'id', 'com.sample.evaluation', '44', '58', '1', '58');
INSERT INTO `taskvariableimpl` VALUES ('185', '2018-05-15 17:45:11', 'id', 'com.sample.evaluation', '44', '59', '1', '59');
INSERT INTO `taskvariableimpl` VALUES ('186', '2018-05-15 20:27:53', 'Comment', 'com.sample.evaluation', '45', '60', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('187', '2018-05-15 20:27:53', 'reason', 'com.sample.evaluation', '45', '60', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('188', '2018-05-15 20:27:53', 'Skippable', 'com.sample.evaluation', '45', '60', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('189', '2018-05-15 20:31:26', 'Comment', 'com.sample.evaluation', '46', '61', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('190', '2018-05-15 20:31:26', 'reason', 'com.sample.evaluation', '46', '61', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('191', '2018-05-15 20:31:26', 'Skippable', 'com.sample.evaluation', '46', '61', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('192', '2018-05-15 20:50:59', 'Comment', 'com.sample.evaluation', '47', '62', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('193', '2018-05-15 20:50:59', 'reason', 'com.sample.evaluation', '47', '62', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('194', '2018-05-15 20:50:59', 'Skippable', 'com.sample.evaluation', '47', '62', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('195', '2018-05-15 20:58:14', 'Comment', 'com.sample.evaluation', '48', '63', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('196', '2018-05-15 20:58:14', 'reason', 'com.sample.evaluation', '48', '63', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('197', '2018-05-15 20:58:14', 'Skippable', 'com.sample.evaluation', '48', '63', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('198', '2018-05-15 21:55:56', 'Comment', 'com.sample.evaluation', '49', '64', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('199', '2018-05-15 21:55:56', 'reason', 'com.sample.evaluation', '49', '64', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('200', '2018-05-15 21:55:56', 'Skippable', 'com.sample.evaluation', '49', '64', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('201', '2018-05-15 22:06:30', 'Comment', 'com.sample.evaluation', '50', '65', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('202', '2018-05-15 22:06:30', 'reason', 'com.sample.evaluation', '50', '65', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('203', '2018-05-15 22:06:30', 'Skippable', 'com.sample.evaluation', '50', '65', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('204', '2018-05-15 22:07:05', 'pid', 'com.sample.evaluation', '50', '65', '1', '50');
INSERT INTO `taskvariableimpl` VALUES ('205', '2018-05-15 22:07:05', 'id', 'com.sample.evaluation', '50', '65', '1', '65');
INSERT INTO `taskvariableimpl` VALUES ('206', '2018-05-15 22:07:05', 'tid', 'com.sample.evaluation', '50', '65', '1', '65');
INSERT INTO `taskvariableimpl` VALUES ('207', '2018-05-15 22:07:05', 'Comment', 'com.sample.evaluation', '50', '66', '0', 'You need to evaluate john.');
INSERT INTO `taskvariableimpl` VALUES ('208', '2018-05-15 22:07:05', 'reason', 'com.sample.evaluation', '50', '66', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('209', '2018-05-15 22:07:05', 'Skippable', 'com.sample.evaluation', '50', '66', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('210', '2018-05-15 22:07:05', 'GroupId', 'com.sample.evaluation', '50', '66', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('211', '2018-05-15 22:07:05', 'Comment', 'com.sample.evaluation', '50', '67', '0', 'You need to evaluate john.');
INSERT INTO `taskvariableimpl` VALUES ('212', '2018-05-15 22:07:05', 'reason', 'com.sample.evaluation', '50', '67', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('213', '2018-05-15 22:07:05', 'Skippable', 'com.sample.evaluation', '50', '67', '0', 'false');
INSERT INTO `taskvariableimpl` VALUES ('214', '2018-05-15 22:07:05', 'GroupId', 'com.sample.evaluation', '50', '67', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('215', '2018-05-16 13:42:43', 'Skippable', 'src.processTest', '51', '68', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('216', '2018-05-16 13:42:43', 'GroupId', 'src.processTest', '51', '68', '0', '业务部');
INSERT INTO `taskvariableimpl` VALUES ('217', '2018-05-16 13:44:28', 'pid', 'src.processTest', '51', '68', '1', '51');
INSERT INTO `taskvariableimpl` VALUES ('218', '2018-05-16 13:44:28', 'id', 'src.processTest', '51', '68', '1', '68');
INSERT INTO `taskvariableimpl` VALUES ('219', '2018-05-16 13:44:28', 'tid', 'src.processTest', '51', '68', '1', '68');
INSERT INTO `taskvariableimpl` VALUES ('220', '2018-05-16 13:44:28', 'Skippable', 'src.processTest', '51', '69', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('221', '2018-05-16 13:44:28', 'GroupId', 'src.processTest', '51', '69', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('222', '2018-05-16 13:44:28', 'Skippable', 'src.processTest', '51', '70', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('223', '2018-05-16 13:44:28', 'GroupId', 'src.processTest', '51', '70', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('224', '2018-05-16 13:45:00', 'pid', 'src.processTest', '51', '69', '1', '51');
INSERT INTO `taskvariableimpl` VALUES ('225', '2018-05-16 13:45:00', 'id', 'src.processTest', '51', '69', '1', '69');
INSERT INTO `taskvariableimpl` VALUES ('226', '2018-05-16 13:45:00', 'tid', 'src.processTest', '51', '69', '1', '69');
INSERT INTO `taskvariableimpl` VALUES ('227', '2018-05-16 13:45:44', 'pid', 'src.processTest', '51', '70', '1', '51');
INSERT INTO `taskvariableimpl` VALUES ('228', '2018-05-16 13:45:44', 'id', 'src.processTest', '51', '70', '1', '70');
INSERT INTO `taskvariableimpl` VALUES ('229', '2018-05-16 13:45:44', 'tid', 'src.processTest', '51', '70', '1', '70');
INSERT INTO `taskvariableimpl` VALUES ('230', '2018-05-16 13:45:45', 'Skippable', 'src.processTest', '51', '71', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('231', '2018-05-16 13:45:45', 'GroupId', 'src.processTest', '51', '71', '0', '风控部');
INSERT INTO `taskvariableimpl` VALUES ('232', '2018-05-16 13:54:01', 'Skippable', 'src.processTest', '52', '72', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('233', '2018-05-16 13:54:01', 'GroupId', 'src.processTest', '52', '72', '0', '业务部');
INSERT INTO `taskvariableimpl` VALUES ('234', '2018-05-16 14:13:40', 'Skippable', 'src.processTest', '53', '73', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('235', '2018-05-16 14:13:40', 'GroupId', 'src.processTest', '53', '73', '0', '业务部');
INSERT INTO `taskvariableimpl` VALUES ('236', '2018-05-16 14:14:14', 'pid', 'src.processTest', '53', '73', '1', '53');
INSERT INTO `taskvariableimpl` VALUES ('237', '2018-05-16 14:14:14', 'id', 'src.processTest', '53', '73', '1', '73');
INSERT INTO `taskvariableimpl` VALUES ('238', '2018-05-16 14:14:14', 'tid', 'src.processTest', '53', '73', '1', '73');
INSERT INTO `taskvariableimpl` VALUES ('239', '2018-05-16 14:14:14', 'Skippable', 'src.processTest', '53', '74', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('240', '2018-05-16 14:14:14', 'GroupId', 'src.processTest', '53', '74', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('241', '2018-05-16 14:14:14', 'Skippable', 'src.processTest', '53', '75', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('242', '2018-05-16 14:14:14', 'GroupId', 'src.processTest', '53', '75', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('243', '2018-05-16 14:15:10', 'pid', 'src.processTest', '53', '74', '1', '53');
INSERT INTO `taskvariableimpl` VALUES ('244', '2018-05-16 14:15:10', 'id', 'src.processTest', '53', '74', '1', '74');
INSERT INTO `taskvariableimpl` VALUES ('245', '2018-05-16 14:15:10', 'tid', 'src.processTest', '53', '74', '1', '74');
INSERT INTO `taskvariableimpl` VALUES ('246', '2018-05-16 14:25:59', 'Skippable', 'src.processTest', '54', '76', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('247', '2018-05-16 14:25:59', 'GroupId', 'src.processTest', '54', '76', '0', '业务部');
INSERT INTO `taskvariableimpl` VALUES ('248', '2018-05-16 14:26:25', 'pid', 'src.processTest', '54', '76', '1', '54');
INSERT INTO `taskvariableimpl` VALUES ('249', '2018-05-16 14:26:25', 'id', 'src.processTest', '54', '76', '1', '76');
INSERT INTO `taskvariableimpl` VALUES ('250', '2018-05-16 14:26:25', 'tid', 'src.processTest', '54', '76', '1', '76');
INSERT INTO `taskvariableimpl` VALUES ('251', '2018-05-16 14:26:25', 'Skippable', 'src.processTest', '54', '77', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('252', '2018-05-16 14:26:25', 'GroupId', 'src.processTest', '54', '77', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('253', '2018-05-16 14:26:25', 'Skippable', 'src.processTest', '54', '78', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('254', '2018-05-16 14:26:25', 'GroupId', 'src.processTest', '54', '78', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('255', '2018-05-16 14:27:22', 'pid', 'src.processTest', '54', '78', '1', '54');
INSERT INTO `taskvariableimpl` VALUES ('256', '2018-05-16 14:27:22', 'id', 'src.processTest', '54', '78', '1', '78');
INSERT INTO `taskvariableimpl` VALUES ('257', '2018-05-16 14:27:22', 'tid', 'src.processTest', '54', '78', '1', '78');
INSERT INTO `taskvariableimpl` VALUES ('258', '2018-05-16 14:28:53', 'pid', 'src.processTest', '54', '77', '1', '54');
INSERT INTO `taskvariableimpl` VALUES ('259', '2018-05-16 14:28:53', 'id', 'src.processTest', '54', '77', '1', '77');
INSERT INTO `taskvariableimpl` VALUES ('260', '2018-05-16 14:28:53', 'tid', 'src.processTest', '54', '77', '1', '77');
INSERT INTO `taskvariableimpl` VALUES ('261', '2018-05-16 14:28:53', 'Skippable', 'src.processTest', '54', '79', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('262', '2018-05-16 14:28:53', 'GroupId', 'src.processTest', '54', '79', '0', '风控部');
INSERT INTO `taskvariableimpl` VALUES ('263', '2018-05-16 14:32:19', 'pid', 'src.processTest', '54', '79', '1', '54');
INSERT INTO `taskvariableimpl` VALUES ('264', '2018-05-16 14:32:19', 'id', 'src.processTest', '54', '79', '1', '79');
INSERT INTO `taskvariableimpl` VALUES ('265', '2018-05-16 14:32:19', 'tid', 'src.processTest', '54', '79', '1', '79');
INSERT INTO `taskvariableimpl` VALUES ('266', '2018-05-16 14:32:19', 'Skippable', 'src.processTest', '54', '80', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('267', '2018-05-16 14:32:19', 'GroupId', 'src.processTest', '54', '80', '0', '财务部');
INSERT INTO `taskvariableimpl` VALUES ('268', '2018-05-16 14:34:29', 'pid', 'src.processTest', '54', '80', '1', '54');
INSERT INTO `taskvariableimpl` VALUES ('269', '2018-05-16 14:34:29', 'id', 'src.processTest', '54', '80', '1', '80');
INSERT INTO `taskvariableimpl` VALUES ('270', '2018-05-16 14:34:29', 'tid', 'src.processTest', '54', '80', '1', '80');
INSERT INTO `taskvariableimpl` VALUES ('271', '2018-05-16 14:34:30', 'Skippable', 'src.processTest', '54', '81', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('272', '2018-05-16 14:34:30', 'GroupId', 'src.processTest', '54', '81', '0', 'CEO');
INSERT INTO `taskvariableimpl` VALUES ('273', '2018-05-16 14:42:48', 'pid', 'src.processTest', '54', '81', '1', '54');
INSERT INTO `taskvariableimpl` VALUES ('274', '2018-05-16 14:42:48', 'id', 'src.processTest', '54', '81', '1', '81');
INSERT INTO `taskvariableimpl` VALUES ('275', '2018-05-16 14:42:48', 'tid', 'src.processTest', '54', '81', '1', '81');
INSERT INTO `taskvariableimpl` VALUES ('276', '2018-05-16 14:42:49', 'Skippable', 'src.processTest', '54', '82', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('277', '2018-05-16 14:50:00', 'Skippable', 'src.processTest', '55', '83', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('278', '2018-05-16 14:50:00', 'GroupId', 'src.processTest', '55', '83', '0', '业务部');
INSERT INTO `taskvariableimpl` VALUES ('279', '2018-05-16 14:58:44', 'Skippable', 'src.processTest', '56', '84', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('280', '2018-05-16 14:58:44', 'GroupId', 'src.processTest', '56', '84', '0', '业务部');
INSERT INTO `taskvariableimpl` VALUES ('281', '2018-05-16 15:01:48', 'pid', 'src.processTest', '56', '84', '1', '56');
INSERT INTO `taskvariableimpl` VALUES ('282', '2018-05-16 15:01:48', 'id', 'src.processTest', '56', '84', '1', '84');
INSERT INTO `taskvariableimpl` VALUES ('283', '2018-05-16 15:01:48', 'tid', 'src.processTest', '56', '84', '1', '84');
INSERT INTO `taskvariableimpl` VALUES ('284', '2018-05-16 15:01:48', 'Skippable', 'src.processTest', '56', '85', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('285', '2018-05-16 15:01:48', 'GroupId', 'src.processTest', '56', '85', '0', 'HR');
INSERT INTO `taskvariableimpl` VALUES ('286', '2018-05-16 15:01:48', 'Skippable', 'src.processTest', '56', '86', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('287', '2018-05-16 15:01:48', 'GroupId', 'src.processTest', '56', '86', '0', 'PM');
INSERT INTO `taskvariableimpl` VALUES ('288', '2018-05-16 15:02:43', 'pid', 'src.processTest', '56', '85', '1', '56');
INSERT INTO `taskvariableimpl` VALUES ('289', '2018-05-16 15:02:43', 'id', 'src.processTest', '56', '85', '1', '85');
INSERT INTO `taskvariableimpl` VALUES ('290', '2018-05-16 15:02:43', 'tid', 'src.processTest', '56', '85', '1', '85');
INSERT INTO `taskvariableimpl` VALUES ('291', '2018-05-16 15:03:03', 'pid', 'src.processTest', '56', '86', '1', '56');
INSERT INTO `taskvariableimpl` VALUES ('292', '2018-05-16 15:03:03', 'id', 'src.processTest', '56', '86', '1', '86');
INSERT INTO `taskvariableimpl` VALUES ('293', '2018-05-16 15:03:03', 'tid', 'src.processTest', '56', '86', '1', '86');
INSERT INTO `taskvariableimpl` VALUES ('294', '2018-05-16 15:03:03', 'Skippable', 'src.processTest', '56', '87', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('295', '2018-05-16 15:03:03', 'GroupId', 'src.processTest', '56', '87', '0', '风控部');
INSERT INTO `taskvariableimpl` VALUES ('296', '2018-05-16 15:03:54', 'pid', 'src.processTest', '56', '87', '1', '56');
INSERT INTO `taskvariableimpl` VALUES ('297', '2018-05-16 15:03:54', 'id', 'src.processTest', '56', '87', '1', '87');
INSERT INTO `taskvariableimpl` VALUES ('298', '2018-05-16 15:03:54', 'tid', 'src.processTest', '56', '87', '1', '87');
INSERT INTO `taskvariableimpl` VALUES ('299', '2018-05-16 15:03:54', 'Skippable', 'src.processTest', '56', '88', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('300', '2018-05-16 15:03:54', 'GroupId', 'src.processTest', '56', '88', '0', '财务部');
INSERT INTO `taskvariableimpl` VALUES ('301', '2018-05-16 15:04:19', 'pid', 'src.processTest', '56', '88', '1', '56');
INSERT INTO `taskvariableimpl` VALUES ('302', '2018-05-16 15:04:19', 'id', 'src.processTest', '56', '88', '1', '88');
INSERT INTO `taskvariableimpl` VALUES ('303', '2018-05-16 15:04:19', 'tid', 'src.processTest', '56', '88', '1', '88');
INSERT INTO `taskvariableimpl` VALUES ('304', '2018-05-16 15:04:19', 'Skippable', 'src.processTest', '56', '89', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('305', '2018-05-16 15:04:19', 'GroupId', 'src.processTest', '56', '89', '0', 'CEO');
INSERT INTO `taskvariableimpl` VALUES ('306', '2018-05-16 15:05:00', 'pid', 'src.processTest', '56', '89', '1', '56');
INSERT INTO `taskvariableimpl` VALUES ('307', '2018-05-16 15:05:00', 'id', 'src.processTest', '56', '89', '1', '89');
INSERT INTO `taskvariableimpl` VALUES ('308', '2018-05-16 15:05:00', 'tid', 'src.processTest', '56', '89', '1', '89');
INSERT INTO `taskvariableimpl` VALUES ('309', '2018-05-16 15:05:00', 'Skippable', 'src.processTest', '56', '90', '0', 'true');
INSERT INTO `taskvariableimpl` VALUES ('310', '2018-05-16 15:06:09', 'pid', 'src.processTest', '56', '90', '1', '56');
INSERT INTO `taskvariableimpl` VALUES ('311', '2018-05-16 15:06:09', 'id', 'src.processTest', '56', '90', '1', '90');
INSERT INTO `taskvariableimpl` VALUES ('312', '2018-05-16 15:06:09', 'tid', 'src.processTest', '56', '90', '1', '90');
INSERT INTO `taskvariableimpl` VALUES ('313', '2018-05-16 15:06:50', 'Comment', 'com.sample.evaluation', '57', '91', '0', 'Please perform a self-evalutation.');
INSERT INTO `taskvariableimpl` VALUES ('314', '2018-05-16 15:06:50', 'reason', 'com.sample.evaluation', '57', '91', '0', 'Yearly performance evaluation');
INSERT INTO `taskvariableimpl` VALUES ('315', '2018-05-16 15:06:50', 'Skippable', 'com.sample.evaluation', '57', '91', '0', 'false');

-- ----------------------------
-- Table structure for task_comment
-- ----------------------------
DROP TABLE IF EXISTS `task_comment`;
CREATE TABLE `task_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addedAt` datetime DEFAULT NULL,
  `text` longtext,
  `addedBy_id` varchar(255) DEFAULT NULL,
  `TaskData_Comments_Id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqb4mkarf209y9546w7n75lb7a` (`addedBy_id`),
  KEY `FKm2mwc1ukcpdsiqwgkoroy6ise` (`TaskData_Comments_Id`),
  CONSTRAINT `FKm2mwc1ukcpdsiqwgkoroy6ise` FOREIGN KEY (`TaskData_Comments_Id`) REFERENCES `task` (`id`),
  CONSTRAINT `FKqb4mkarf209y9546w7n75lb7a` FOREIGN KEY (`addedBy_id`) REFERENCES `organizationalentity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_comment
-- ----------------------------

-- ----------------------------
-- Table structure for t_business1
-- ----------------------------
DROP TABLE IF EXISTS `t_business1`;
CREATE TABLE `t_business1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content1` varchar(200) DEFAULT NULL,
  `content2` varchar(200) DEFAULT NULL,
  `content3` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='业务表1';

-- ----------------------------
-- Records of t_business1
-- ----------------------------
INSERT INTO `t_business1` VALUES ('2', 'sdf', 'sdfsdf', 'sdfsdf');
INSERT INTO `t_business1` VALUES ('3', '2323', '23', '2323');
INSERT INTO `t_business1` VALUES ('4', '123123', '123123', '123123');
INSERT INTO `t_business1` VALUES ('5', '456456', '456456', '456456');
INSERT INTO `t_business1` VALUES ('6', '43434', '343', '343434');
INSERT INTO `t_business1` VALUES ('7', '555', '555', '555');
INSERT INTO `t_business1` VALUES ('8', '666', '666', '666');
INSERT INTO `t_business1` VALUES ('9', '777', '777', '777');
INSERT INTO `t_business1` VALUES ('10', '111', '111', '111');
INSERT INTO `t_business1` VALUES ('11', '111', '111', '111');
INSERT INTO `t_business1` VALUES ('12', '34', '34', '34');

-- ----------------------------
-- Table structure for t_business1_review_log
-- ----------------------------
DROP TABLE IF EXISTS `t_business1_review_log`;
CREATE TABLE `t_business1_review_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL COMMENT '业务id',
  `pid` int(11) DEFAULT NULL COMMENT '规则实例id',
  `tid` int(11) DEFAULT NULL COMMENT '任务id',
  `reviewTime` datetime DEFAULT NULL COMMENT '审核时间',
  `reviewUsername` varchar(200) DEFAULT NULL COMMENT '审核人',
  `reviewContent` varchar(200) DEFAULT NULL COMMENT '审核内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='业务表1审核记录';

-- ----------------------------
-- Records of t_business1_review_log
-- ----------------------------
INSERT INTO `t_business1_review_log` VALUES ('1', '2', '47', '62', '2018-05-15 20:51:13', 'lee', null);
INSERT INTO `t_business1_review_log` VALUES ('2', '3', '48', '63', '2018-05-15 20:58:30', 'lee', null);
INSERT INTO `t_business1_review_log` VALUES ('3', '4', '49', '64', '2018-05-15 21:56:04', 'john', null);
INSERT INTO `t_business1_review_log` VALUES ('4', '4', null, '49', '2018-05-15 21:56:57', 'john', '默认审核内容：Tue May 15 21:56:58 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('5', '5', '50', '65', '2018-05-15 22:06:30', 'john', null);
INSERT INTO `t_business1_review_log` VALUES ('6', '5', null, '50', '2018-05-15 22:06:49', 'john', '审核内容： 开始审核 时间：Tue May 15 22:06:49 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('7', '5', null, '50', '2018-05-15 22:07:05', 'john', '审核内容： 完成审核 时间：Tue May 15 22:07:04 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('8', '6', '51', '68', '2018-05-16 13:42:44', 'mary', null);
INSERT INTO `t_business1_review_log` VALUES ('9', '6', '51', '68', '2018-05-16 13:44:17', 'lee', '审核内容： 开始审核 时间：Wed May 16 13:44:16 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('10', '6', '51', '68', '2018-05-16 13:44:26', 'lee', '审核内容： 开始审核 时间：Wed May 16 13:44:25 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('11', '6', '51', '68', '2018-05-16 13:44:28', 'lee', '审核内容： 完成审核 时间：Wed May 16 13:44:27 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('12', '7', '52', '72', '2018-05-16 13:54:02', 'john', null);
INSERT INTO `t_business1_review_log` VALUES ('13', '7', '52', '72', '2018-05-16 13:59:00', 'lee', '指派任务lee 时间：Wed May 16 13:59:00 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('14', '7', '52', '72', '2018-05-16 13:59:43', 'lee', '指派任务lee 时间：Wed May 16 13:59:43 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('15', '6', '51', '68', '2018-05-16 14:00:07', 'lee', '审核内容： 开始审核 时间：Wed May 16 14:00:07 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('16', '6', '51', '68', '2018-05-16 14:00:09', 'lee', '审核内容： 完成审核 时间：Wed May 16 14:00:09 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('17', '7', '52', '72', '2018-05-16 14:00:18', 'lee', '指派任务lee 时间：Wed May 16 14:00:18 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('18', '8', '53', '73', '2018-05-16 14:13:40', 'lee', '创建流程实例开始审批流程 时间：Wed May 16 14:13:40 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('19', '8', '53', '73', '2018-05-16 14:14:03', 'lee', '指派任务lee 时间：Wed May 16 14:14:03 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('20', '8', '53', '73', '2018-05-16 14:14:11', 'lee', '审核内容： 开始审核 时间：Wed May 16 14:14:11 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('21', '8', '53', '73', '2018-05-16 14:14:13', 'lee', '审核内容： 完成审核 时间：Wed May 16 14:14:13 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('22', '9', '54', '76', '2018-05-16 14:26:00', 'john', '创建流程实例开始审批流程 时间：Wed May 16 14:26:00 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('23', '9', '54', '76', '2018-05-16 14:26:18', 'lee', '指派任务lee 时间：Wed May 16 14:26:17 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('24', '9', '54', '76', '2018-05-16 14:26:22', 'lee', '审核内容： 开始审核 时间：Wed May 16 14:26:22 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('25', '9', '54', '76', '2018-05-16 14:26:24', 'lee', '审核内容： 完成审核 时间：Wed May 16 14:26:24 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('26', '9', '54', '78', '2018-05-16 14:26:57', 'mary', '指派任务mary 时间：Wed May 16 14:26:57 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('27', '9', '54', '78', '2018-05-16 14:27:19', 'mary', '审核内容： 开始审核 时间：Wed May 16 14:27:19 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('28', '9', '54', '78', '2018-05-16 14:27:21', 'mary', '审核内容： 完成审核 时间：Wed May 16 14:27:21 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('29', '9', '54', '77', '2018-05-16 14:27:46', 'john', '指派任务john 时间：Wed May 16 14:27:45 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('30', '9', '54', '77', '2018-05-16 14:28:51', 'john', '审核内容： 开始审核 时间：Wed May 16 14:28:50 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('31', '9', '54', '77', '2018-05-16 14:28:53', 'john', '审核内容： 完成审核 时间：Wed May 16 14:28:52 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('32', '9', '54', '79', '2018-05-16 14:32:10', 'Lars', '指派任务Lars 时间：Wed May 16 14:32:09 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('33', '9', '54', '79', '2018-05-16 14:32:17', 'Lars', '审核内容： 开始审核 时间：Wed May 16 14:32:17 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('34', '9', '54', '79', '2018-05-16 14:32:19', 'Lars', '审核内容： 完成审核 时间：Wed May 16 14:32:18 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('35', '9', '54', '80', '2018-05-16 14:34:10', 'caiwu', '指派任务caiwu 时间：Wed May 16 14:34:10 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('36', '9', '54', '80', '2018-05-16 14:34:27', 'caiwu', '审核内容： 开始审核 时间：Wed May 16 14:34:26 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('37', '9', '54', '80', '2018-05-16 14:34:29', 'caiwu', '审核内容： 完成审核 时间：Wed May 16 14:34:28 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('38', '9', '54', '81', '2018-05-16 14:39:30', 'Baker', '指派任务CEO 时间：Wed May 16 14:39:30 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('39', '9', '54', '81', '2018-05-16 14:41:21', 'Baker', '指派任务CEO 时间：Wed May 16 14:41:21 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('40', '9', '54', '81', '2018-05-16 14:42:41', 'Baker', '指派任务Baker 时间：Wed May 16 14:42:41 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('41', '9', '54', '81', '2018-05-16 14:42:46', 'Baker', '审核内容： 开始审核 时间：Wed May 16 14:42:45 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('42', '9', '54', '81', '2018-05-16 14:42:48', 'Baker', '审核内容： 完成审核 时间：Wed May 16 14:42:47 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('43', '10', '55', '83', '2018-05-16 14:50:01', 'tmp', '创建流程实例开始审批流程 时间：Wed May 16 14:50:00 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('44', '11', '56', '84', '2018-05-16 14:58:44', 'tmp', '创建流程实例开始审批流程 时间：Wed May 16 14:58:44 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('45', '11', '56', '84', '2018-05-16 14:59:11', 'lee', '指派任务lee 时间：Wed May 16 14:59:10 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('46', '11', '56', '84', '2018-05-16 15:01:46', 'lee', '审核内容： 开始审核 时间：Wed May 16 15:01:45 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('47', '11', '56', '84', '2018-05-16 15:01:48', 'lee', '审核内容： 完成审核 时间：Wed May 16 15:01:47 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('48', '11', '56', '85', '2018-05-16 15:02:37', 'mary', '指派任务mary 时间：Wed May 16 15:02:37 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('49', '11', '56', '85', '2018-05-16 15:02:41', 'mary', '审核内容： 开始审核 时间：Wed May 16 15:02:41 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('50', '11', '56', '85', '2018-05-16 15:02:43', 'mary', '审核内容： 完成审核 时间：Wed May 16 15:02:43 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('51', '11', '56', '86', '2018-05-16 15:02:57', 'john', '指派任务john 时间：Wed May 16 15:02:57 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('52', '11', '56', '86', '2018-05-16 15:03:01', 'john', '审核内容： 开始审核 时间：Wed May 16 15:03:01 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('53', '11', '56', '86', '2018-05-16 15:03:03', 'john', '审核内容： 完成审核 时间：Wed May 16 15:03:02 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('54', '11', '56', '87', '2018-05-16 15:03:42', 'Lars', '指派任务Lars 时间：Wed May 16 15:03:41 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('55', '11', '56', '87', '2018-05-16 15:03:52', 'Lars', '审核内容： 开始审核 时间：Wed May 16 15:03:51 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('56', '11', '56', '87', '2018-05-16 15:03:54', 'Lars', '审核内容： 完成审核 时间：Wed May 16 15:03:53 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('57', '11', '56', '88', '2018-05-16 15:04:14', 'caiwu', '指派任务caiwu 时间：Wed May 16 15:04:13 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('58', '11', '56', '88', '2018-05-16 15:04:17', 'caiwu', '审核内容： 开始审核 时间：Wed May 16 15:04:17 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('59', '11', '56', '88', '2018-05-16 15:04:19', 'caiwu', '审核内容： 完成审核 时间：Wed May 16 15:04:18 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('60', '11', '56', '89', '2018-05-16 15:04:55', 'Baker', '指派任务Baker 时间：Wed May 16 15:04:54 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('61', '11', '56', '89', '2018-05-16 15:04:58', 'Baker', '审核内容： 开始审核 时间：Wed May 16 15:04:57 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('62', '11', '56', '89', '2018-05-16 15:04:59', 'Baker', '审核内容： 完成审核 时间：Wed May 16 15:04:59 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('63', '11', '56', '90', '2018-05-16 15:06:07', 'BOSS', '审核内容： 开始审核 时间：Wed May 16 15:06:06 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('64', '11', '56', '90', '2018-05-16 15:06:09', 'BOSS', '审核内容： 完成审核 时间：Wed May 16 15:06:08 CST 2018');
INSERT INTO `t_business1_review_log` VALUES ('65', '12', '57', '91', '2018-05-16 15:06:50', 'tmp', '创建流程实例开始审批流程 时间：Wed May 16 15:06:50 CST 2018');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `url` varchar(200) DEFAULT NULL COMMENT '地址',
  `pid` int(11) DEFAULT NULL COMMENT '父级ID',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '1', '/task/complete', '0', null, null);
INSERT INTO `t_permission` VALUES ('2', '2', '/task/start', '0', null, null);
INSERT INTO `t_permission` VALUES ('3', '3', '/task/claim', '0', null, null);
INSERT INTO `t_permission` VALUES ('4', '4', '/processdef', null, null, null);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', 'Administrators', null, '0');
INSERT INTO `t_role` VALUES ('2', '财务部', null, '0');
INSERT INTO `t_role` VALUES ('3', '总裁', null, '0');
INSERT INTO `t_role` VALUES ('4', 'CEO', null, '0');
INSERT INTO `t_role` VALUES ('5', '风控部', null, '0');
INSERT INTO `t_role` VALUES ('6', 'PM', null, '0');
INSERT INTO `t_role` VALUES ('7', 'HR', null, '0');
INSERT INTO `t_role` VALUES ('8', '业务部', null, null);

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL COMMENT '角色id',
  `pid` int(11) DEFAULT NULL COMMENT '权限id',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('1', '1', '1', null);
INSERT INTO `t_role_permission` VALUES ('2', '1', '2', null);
INSERT INTO `t_role_permission` VALUES ('3', '1', '3', null);
INSERT INTO `t_role_permission` VALUES ('4', '6', '1', null);
INSERT INTO `t_role_permission` VALUES ('5', '6', '2', null);
INSERT INTO `t_role_permission` VALUES ('6', '6', '3', null);
INSERT INTO `t_role_permission` VALUES ('7', '7', '1', null);
INSERT INTO `t_role_permission` VALUES ('8', '7', '2', null);
INSERT INTO `t_role_permission` VALUES ('9', '7', '3', null);
INSERT INTO `t_role_permission` VALUES ('10', '8', '1', null);
INSERT INTO `t_role_permission` VALUES ('11', '8', '2', null);
INSERT INTO `t_role_permission` VALUES ('12', '8', '3', null);
INSERT INTO `t_role_permission` VALUES ('13', '7', '4', null);
INSERT INTO `t_role_permission` VALUES ('14', '5', '1', null);
INSERT INTO `t_role_permission` VALUES ('15', '5', '2', null);
INSERT INTO `t_role_permission` VALUES ('16', '5', '3', null);
INSERT INTO `t_role_permission` VALUES ('17', '5', '4', null);
INSERT INTO `t_role_permission` VALUES ('18', '2', '1', null);
INSERT INTO `t_role_permission` VALUES ('19', '2', '2', null);
INSERT INTO `t_role_permission` VALUES ('20', '2', '3', null);
INSERT INTO `t_role_permission` VALUES ('21', '2', '4', null);
INSERT INTO `t_role_permission` VALUES ('22', '4', '1', null);
INSERT INTO `t_role_permission` VALUES ('23', '4', '2', null);
INSERT INTO `t_role_permission` VALUES ('24', '4', '3', null);
INSERT INTO `t_role_permission` VALUES ('25', '4', '4', null);
INSERT INTO `t_role_permission` VALUES ('26', '3', '1', null);
INSERT INTO `t_role_permission` VALUES ('27', '3', '2', null);
INSERT INTO `t_role_permission` VALUES ('28', '3', '3', null);
INSERT INTO `t_role_permission` VALUES ('29', '3', '4', null);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `regTime` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'Administrators', '4297f44b13955235245b2497399d7a93', null, null, null);
INSERT INTO `t_user` VALUES ('2', 'mary', '4297f44b13955235245b2497399d7a93', null, null, null);
INSERT INTO `t_user` VALUES ('3', 'john', '4297f44b13955235245b2497399d7a93', null, null, null);
INSERT INTO `t_user` VALUES ('4', 'tmp', '4297f44b13955235245b2497399d7a93', null, null, null);
INSERT INTO `t_user` VALUES ('5', 'allen', '4297f44b13955235245b2497399d7a93', '13816583702', 'zhijun0808@gmail.com', null);
INSERT INTO `t_user` VALUES ('6', 'lee', '4297f44b13955235245b2497399d7a93', null, null, null);
INSERT INTO `t_user` VALUES ('9', 'Lars', '4297f44b13955235245b2497399d7a93', '', '', '2018-05-15 16:26:39');
INSERT INTO `t_user` VALUES ('10', 'hh', '4297f44b13955235245b2497399d7a93', '', '', '2018-05-15 17:43:26');
INSERT INTO `t_user` VALUES ('11', 'caiwu', '4297f44b13955235245b2497399d7a93', '', '', '2018-05-16 14:33:56');
INSERT INTO `t_user` VALUES ('12', 'Baker', '4297f44b13955235245b2497399d7a93', '', '', '2018-05-16 14:36:21');
INSERT INTO `t_user` VALUES ('13', 'BOSS', '4297f44b13955235245b2497399d7a93', '', '', '2018-05-16 14:44:40');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1', '1');
INSERT INTO `t_user_role` VALUES ('2', '1', '2');
INSERT INTO `t_user_role` VALUES ('3', '1', '3');
INSERT INTO `t_user_role` VALUES ('4', '1', '4');
INSERT INTO `t_user_role` VALUES ('5', '1', '5');
INSERT INTO `t_user_role` VALUES ('6', '1', '6');
INSERT INTO `t_user_role` VALUES ('7', '1', '7');
INSERT INTO `t_user_role` VALUES ('8', '2', '7');
INSERT INTO `t_user_role` VALUES ('9', '3', '6');
INSERT INTO `t_user_role` VALUES ('10', '4', '7');
INSERT INTO `t_user_role` VALUES ('12', '6', '8');
INSERT INTO `t_user_role` VALUES ('14', '9', '5');
INSERT INTO `t_user_role` VALUES ('15', '10', '8');
INSERT INTO `t_user_role` VALUES ('16', '11', '2');
INSERT INTO `t_user_role` VALUES ('17', '12', '4');
INSERT INTO `t_user_role` VALUES ('18', '13', '3');

-- ----------------------------
-- Table structure for variableinstancelog
-- ----------------------------
DROP TABLE IF EXISTS `variableinstancelog`;
CREATE TABLE `variableinstancelog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_date` datetime DEFAULT NULL,
  `externalId` varchar(255) DEFAULT NULL,
  `oldValue` varchar(255) DEFAULT NULL,
  `processId` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `variableId` varchar(255) DEFAULT NULL,
  `variableInstanceId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of variableinstancelog
-- ----------------------------
INSERT INTO `variableinstancelog` VALUES ('1', '2018-05-11 21:33:07', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '1', 'hello', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('2', '2018-05-11 21:33:07', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '1', '', '{\"deploymentId\":\"hello\",\"processId\":\"abc\",{\"allRequestParams:\":{\"a\":\"a\"}}}}', '{\"deploymentId\":\"hello\",\"processId\":\"abc\",{\"allRequestParams:\":{\"a\":\"a\"}}}}');
INSERT INTO `variableinstancelog` VALUES ('3', '2018-05-11 21:33:07', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '1', 'hello', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('4', '2018-05-11 21:33:07', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '1', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('5', '2018-05-12 19:08:03', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '2', 'hello', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('6', '2018-05-12 19:08:03', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '2', 'hello', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('7', '2018-05-12 19:08:03', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '2', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('8', '2018-05-12 20:04:44', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '3', 'hello', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('9', '2018-05-12 20:04:45', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '3', 'hello', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('10', '2018-05-12 20:04:45', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '3', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('11', '2018-05-12 20:23:37', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '4', 'hello', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('12', '2018-05-12 20:23:37', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '4', 'hello', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('13', '2018-05-12 20:23:37', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '4', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('14', '2018-05-12 20:32:01', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '5', 'hello', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('15', '2018-05-12 20:32:01', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '5', 'hello', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('16', '2018-05-12 20:32:01', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '5', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('17', '2018-05-12 20:34:04', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '6', 'hello', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('18', '2018-05-12 20:34:04', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '6', 'hello', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('19', '2018-05-12 20:34:04', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'hello', '6', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('20', '2018-05-13 05:54:06', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'org.jbpm.examples.checklist.sample1', '7', 'SampleChecklistProcess', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('21', '2018-05-13 05:54:06', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'org.jbpm.examples.checklist.sample1', '7', 'org.jbpm.examples.checklist.sample1', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('22', '2018-05-13 05:54:06', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'org.jbpm.examples.checklist.sample1', '7', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('23', '2018-05-13 05:56:32', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '8', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('24', '2018-05-13 05:56:32', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '8', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('25', '2018-05-13 05:56:32', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '8', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('26', '2018-05-13 06:31:05', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '9', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('27', '2018-05-13 06:31:05', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '9', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('28', '2018-05-13 06:31:05', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '9', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('29', '2018-05-13 06:42:26', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'org.jbpm.examples.checklist.sample1', '10', 'SampleChecklistProcess', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('30', '2018-05-13 06:42:26', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'org.jbpm.examples.checklist.sample1', '10', 'org.jbpm.examples.checklist.sample1', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('31', '2018-05-13 06:42:26', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'org.jbpm.examples.checklist.sample1', '10', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('32', '2018-05-13 09:16:56', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '11', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('33', '2018-05-13 09:16:56', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '11', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('34', '2018-05-13 09:16:56', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '11', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('35', '2018-05-13 09:43:23', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '12', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('36', '2018-05-13 09:43:23', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '12', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('37', '2018-05-13 09:43:23', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '12', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('38', '2018-05-13 10:00:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '13', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('39', '2018-05-13 10:00:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '13', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('40', '2018-05-13 10:00:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '13', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('41', '2018-05-13 10:00:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '13', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('42', '2018-05-13 10:00:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '13', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('43', '2018-05-13 12:10:46', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '14', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('44', '2018-05-13 12:10:46', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '14', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('45', '2018-05-13 12:10:46', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '14', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('46', '2018-05-13 12:10:46', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '14', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('47', '2018-05-13 12:10:46', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '14', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('48', '2018-05-13 12:47:12', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '15', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('49', '2018-05-13 12:47:12', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '15', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('50', '2018-05-13 12:47:12', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '15', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('51', '2018-05-13 12:47:12', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '15', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('52', '2018-05-13 12:47:12', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '15', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('53', '2018-05-13 15:01:21', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '16', 'mytest.helloworldScriptTask', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('54', '2018-05-13 15:01:21', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '16', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('55', '2018-05-13 15:01:21', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '16', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('56', '2018-05-13 15:01:21', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '16', 'mytest.helloworldScriptTask', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('57', '2018-05-13 15:01:21', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '16', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('58', '2018-05-13 15:01:21', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '16', '{reason=Yearly performance evaluation, performance=null}', 'content', 'content');
INSERT INTO `variableinstancelog` VALUES ('59', '2018-05-13 15:02:10', 'org.default:artifact:1.0.0-SNAPSHOT', '{reason=Yearly performance evaluation, performance=null}', 'mytest.helloworldScriptTask', '16', '{reason=Yearly performance evaluation, performance=null}', 'content', 'content');
INSERT INTO `variableinstancelog` VALUES ('60', '2018-05-13 15:14:28', 'org.default:artifact:1.0.0-SNAPSHOT', '{reason=Yearly performance evaluation, performance=null}', 'mytest.helloworldScriptTask', '16', '{reason=Yearly performance evaluation, performance=null}', 'content', 'content');
INSERT INTO `variableinstancelog` VALUES ('61', '2018-05-13 15:15:36', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '17', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('62', '2018-05-13 15:15:36', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '17', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('63', '2018-05-13 15:15:36', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '17', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('64', '2018-05-13 15:15:36', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '17', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('65', '2018-05-13 15:15:36', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '17', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('66', '2018-05-13 15:35:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '18', 'mytest.helloworldScriptTask', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('67', '2018-05-13 15:35:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '18', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('68', '2018-05-13 15:35:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '18', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('69', '2018-05-13 15:35:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '18', 'mytest.helloworldScriptTask', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('70', '2018-05-13 15:35:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '18', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('71', '2018-05-13 15:35:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '18', '{reason=Yearly performance evaluation, performance=null}', 'content', 'content');
INSERT INTO `variableinstancelog` VALUES ('72', '2018-05-13 15:35:43', 'org.default:artifact:1.0.0-SNAPSHOT', '{reason=Yearly performance evaluation, performance=null}', 'mytest.helloworldScriptTask', '18', '{reason=Yearly performance evaluation, performance=null}', 'content', 'content');
INSERT INTO `variableinstancelog` VALUES ('73', '2018-05-13 15:36:21', 'org.default:artifact:1.0.0-SNAPSHOT', '{reason=Yearly performance evaluation, performance=null}', 'mytest.helloworldScriptTask', '18', '{reason=Yearly performance evaluation, performance=null}', 'content', 'content');
INSERT INTO `variableinstancelog` VALUES ('74', '2018-05-13 15:38:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '19', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('75', '2018-05-13 15:38:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '19', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('76', '2018-05-13 15:38:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '19', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('77', '2018-05-13 15:38:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '19', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('78', '2018-05-13 15:38:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '19', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('79', '2018-05-13 16:36:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '20', 'mytest.helloworldScriptTask', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('80', '2018-05-13 16:36:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '20', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('81', '2018-05-13 16:36:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '20', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('82', '2018-05-13 16:36:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '20', 'mytest.helloworldScriptTask', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('83', '2018-05-13 16:36:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '20', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('84', '2018-05-13 16:36:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '20', '{reason=Yearly performance evaluation, performance=null}', 'content', 'content');
INSERT INTO `variableinstancelog` VALUES ('85', '2018-05-13 16:36:48', 'org.default:artifact:1.0.0-SNAPSHOT', '{reason=Yearly performance evaluation, performance=null}', 'mytest.helloworldScriptTask', '20', '{reason=Yearly performance evaluation, performance=null}', 'content', 'content');
INSERT INTO `variableinstancelog` VALUES ('86', '2018-05-13 16:37:10', 'org.default:artifact:1.0.0-SNAPSHOT', '{reason=Yearly performance evaluation, performance=null}', 'mytest.helloworldScriptTask', '20', '{reason=Yearly performance evaluation, performance=null}', 'content', 'content');
INSERT INTO `variableinstancelog` VALUES ('87', '2018-05-13 16:42:33', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '21', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('88', '2018-05-13 16:42:33', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '21', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('89', '2018-05-13 16:42:33', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '21', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('90', '2018-05-13 16:42:33', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '21', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('91', '2018-05-13 16:42:33', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '21', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('92', '2018-05-13 20:09:08', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '22', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('93', '2018-05-13 20:09:08', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '22', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('94', '2018-05-13 20:09:08', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '22', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('95', '2018-05-13 20:09:08', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '22', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('96', '2018-05-13 20:09:08', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '22', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('97', '2018-05-13 21:15:46', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '23', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('98', '2018-05-13 21:15:46', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '23', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('99', '2018-05-13 21:15:46', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '23', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('100', '2018-05-13 21:15:46', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '23', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('101', '2018-05-13 21:15:46', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '23', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('107', '2018-05-13 21:24:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '25', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('108', '2018-05-13 21:24:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '25', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('109', '2018-05-13 21:24:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '25', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('110', '2018-05-13 21:24:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '25', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('111', '2018-05-13 21:24:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '25', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('112', '2018-05-13 21:31:45', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '26', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('113', '2018-05-13 21:31:45', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '26', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('114', '2018-05-13 21:31:45', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '26', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('115', '2018-05-13 21:31:45', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '26', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('116', '2018-05-13 21:31:45', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '26', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('122', '2018-05-13 21:50:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '28', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('123', '2018-05-13 21:50:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '28', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('124', '2018-05-13 21:50:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '28', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('125', '2018-05-13 21:50:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '28', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('126', '2018-05-13 21:50:14', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '28', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('127', '2018-05-13 21:59:26', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '29', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('128', '2018-05-13 21:59:26', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '29', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('129', '2018-05-13 21:59:26', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '29', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('130', '2018-05-13 21:59:26', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '29', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('131', '2018-05-13 21:59:26', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '29', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('132', '2018-05-13 21:59:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '30', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('133', '2018-05-13 21:59:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '30', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('134', '2018-05-13 21:59:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '30', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('135', '2018-05-13 21:59:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '30', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('136', '2018-05-13 21:59:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '30', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('137', '2018-05-13 22:00:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '31', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('138', '2018-05-13 22:00:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '31', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('139', '2018-05-13 22:00:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '31', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('140', '2018-05-13 22:00:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '31', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('141', '2018-05-13 22:00:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '31', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('142', '2018-05-14 08:14:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '32', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('143', '2018-05-14 08:14:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '32', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('144', '2018-05-14 08:14:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '32', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('145', '2018-05-14 08:14:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '32', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('146', '2018-05-14 08:14:19', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '32', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('147', '2018-05-14 08:18:43', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '33', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('148', '2018-05-14 08:18:43', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '33', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('149', '2018-05-14 08:18:43', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '33', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('150', '2018-05-14 08:18:43', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '33', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('151', '2018-05-14 08:18:43', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '33', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('152', '2018-05-14 09:39:48', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '34', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('153', '2018-05-14 09:39:48', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '34', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('154', '2018-05-14 09:39:48', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '34', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('155', '2018-05-14 09:39:48', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '34', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('156', '2018-05-14 09:39:48', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '34', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('157', '2018-05-14 09:41:35', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '35', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('158', '2018-05-14 09:41:35', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '35', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('159', '2018-05-14 09:41:35', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '35', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('160', '2018-05-14 09:41:35', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '35', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('161', '2018-05-14 09:41:35', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '35', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('162', '2018-05-14 09:44:07', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '36', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('163', '2018-05-14 09:44:07', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '36', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('164', '2018-05-14 09:44:07', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '36', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('165', '2018-05-14 09:44:07', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '36', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('166', '2018-05-14 09:44:07', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '36', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('167', '2018-05-14 09:44:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '37', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('168', '2018-05-14 09:44:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '37', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('169', '2018-05-14 09:44:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '37', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('170', '2018-05-14 09:44:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '37', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('171', '2018-05-14 09:44:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '37', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('172', '2018-05-14 09:54:38', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '38', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('173', '2018-05-14 09:54:38', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '38', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('174', '2018-05-14 09:54:38', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '38', 'admin', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('175', '2018-05-14 09:54:38', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '38', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('176', '2018-05-14 09:54:38', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '38', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('177', '2018-05-14 10:00:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '39', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('178', '2018-05-14 10:00:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '39', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('179', '2018-05-14 10:00:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '39', 'tmp', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('180', '2018-05-14 10:00:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '39', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('181', '2018-05-14 10:00:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '39', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('182', '2018-05-14 13:34:35', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '40', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('183', '2018-05-14 13:34:35', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '40', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('184', '2018-05-14 13:34:35', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '40', 'tmp', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('185', '2018-05-14 13:34:35', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '40', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('186', '2018-05-14 13:34:35', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '40', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('187', '2018-05-14 13:38:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '41', 'mytest.helloworldScriptTask', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('188', '2018-05-14 13:38:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '41', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('189', '2018-05-14 13:38:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '41', 'john', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('190', '2018-05-14 13:38:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '41', 'mytest.helloworldScriptTask', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('191', '2018-05-14 13:38:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '41', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('192', '2018-05-14 13:38:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'mytest.helloworldScriptTask', '41', '{reason=Yearly performance evaluation, performance=null}', 'content', 'content');
INSERT INTO `variableinstancelog` VALUES ('193', '2018-05-14 13:39:14', 'org.default:artifact:1.0.0-SNAPSHOT', '{reason=Yearly performance evaluation, performance=null}', 'mytest.helloworldScriptTask', '41', '{reason=Yearly performance evaluation, performance=null}', 'content', 'content');
INSERT INTO `variableinstancelog` VALUES ('194', '2018-05-14 13:39:45', 'org.default:artifact:1.0.0-SNAPSHOT', '{reason=Yearly performance evaluation, performance=null}', 'mytest.helloworldScriptTask', '41', '{reason=Yearly performance evaluation, performance=null}', 'content', 'content');
INSERT INTO `variableinstancelog` VALUES ('195', '2018-05-14 18:18:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '42', 'processTest', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('196', '2018-05-14 18:18:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '42', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('197', '2018-05-14 18:18:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '42', 'allen', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('198', '2018-05-14 18:18:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '42', 'src.processTest', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('199', '2018-05-14 18:18:31', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '42', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('200', '2018-05-15 17:41:47', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '43', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('201', '2018-05-15 17:41:47', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '43', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('202', '2018-05-15 17:41:47', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '43', 'john', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('203', '2018-05-15 17:41:47', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '43', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('204', '2018-05-15 17:41:47', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '43', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('205', '2018-05-15 17:42:24', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '44', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('206', '2018-05-15 17:42:24', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '44', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('207', '2018-05-15 17:42:24', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '44', 'john', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('208', '2018-05-15 17:42:24', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '44', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('209', '2018-05-15 17:42:24', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '44', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('210', '2018-05-15 20:27:51', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '45', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('211', '2018-05-15 20:27:51', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '45', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('212', '2018-05-15 20:27:51', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '45', 'lee', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('213', '2018-05-15 20:27:51', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '45', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('214', '2018-05-15 20:27:51', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '45', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('215', '2018-05-15 20:31:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '46', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('216', '2018-05-15 20:31:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '46', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('217', '2018-05-15 20:31:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '46', 'lee', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('218', '2018-05-15 20:31:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '46', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('219', '2018-05-15 20:31:25', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '46', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('220', '2018-05-15 20:50:57', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '47', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('221', '2018-05-15 20:50:57', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '47', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('222', '2018-05-15 20:50:57', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '47', 'sdfsdf', 'content3', 'content3');
INSERT INTO `variableinstancelog` VALUES ('223', '2018-05-15 20:50:57', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '47', 'sdfsdf', 'content2', 'content2');
INSERT INTO `variableinstancelog` VALUES ('224', '2018-05-15 20:50:57', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '47', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('225', '2018-05-15 20:50:57', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '47', 'sdf', 'content1', 'content1');
INSERT INTO `variableinstancelog` VALUES ('226', '2018-05-15 20:50:57', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '47', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('227', '2018-05-15 20:50:57', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '47', 'lee', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('228', '2018-05-15 20:58:12', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '48', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('229', '2018-05-15 20:58:12', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '48', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('230', '2018-05-15 20:58:12', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '48', '2323', 'content3', 'content3');
INSERT INTO `variableinstancelog` VALUES ('231', '2018-05-15 20:58:12', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '48', '23', 'content2', 'content2');
INSERT INTO `variableinstancelog` VALUES ('232', '2018-05-15 20:58:12', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '48', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('233', '2018-05-15 20:58:13', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '48', '2323', 'content1', 'content1');
INSERT INTO `variableinstancelog` VALUES ('234', '2018-05-15 20:58:13', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '48', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('235', '2018-05-15 20:58:13', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '48', 'lee', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('236', '2018-05-15 21:55:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '49', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('237', '2018-05-15 21:55:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '49', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('238', '2018-05-15 21:55:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '49', '123123', 'content3', 'content3');
INSERT INTO `variableinstancelog` VALUES ('239', '2018-05-15 21:55:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '49', '123123', 'content2', 'content2');
INSERT INTO `variableinstancelog` VALUES ('240', '2018-05-15 21:55:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '49', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('241', '2018-05-15 21:55:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '49', '123123', 'content1', 'content1');
INSERT INTO `variableinstancelog` VALUES ('242', '2018-05-15 21:55:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '49', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('243', '2018-05-15 21:55:55', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '49', 'john', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('244', '2018-05-15 22:06:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '50', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('245', '2018-05-15 22:06:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '50', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('246', '2018-05-15 22:06:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '50', '456456', 'content3', 'content3');
INSERT INTO `variableinstancelog` VALUES ('247', '2018-05-15 22:06:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '50', '456456', 'content2', 'content2');
INSERT INTO `variableinstancelog` VALUES ('248', '2018-05-15 22:06:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '50', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('249', '2018-05-15 22:06:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '50', '456456', 'content1', 'content1');
INSERT INTO `variableinstancelog` VALUES ('250', '2018-05-15 22:06:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '50', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('251', '2018-05-15 22:06:29', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '50', 'john', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('252', '2018-05-16 13:42:42', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '51', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('253', '2018-05-16 13:42:42', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '51', 'src.processTest', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('254', '2018-05-16 13:42:42', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '51', '343434', 'content3', 'content3');
INSERT INTO `variableinstancelog` VALUES ('255', '2018-05-16 13:42:42', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '51', '343', 'content2', 'content2');
INSERT INTO `variableinstancelog` VALUES ('256', '2018-05-16 13:42:42', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '51', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('257', '2018-05-16 13:42:42', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '51', '43434', 'content1', 'content1');
INSERT INTO `variableinstancelog` VALUES ('258', '2018-05-16 13:42:42', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '51', 'processTest', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('259', '2018-05-16 13:42:42', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '51', 'mary', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('260', '2018-05-16 13:54:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '52', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('261', '2018-05-16 13:54:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '52', 'src.processTest', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('262', '2018-05-16 13:54:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '52', '555', 'content3', 'content3');
INSERT INTO `variableinstancelog` VALUES ('263', '2018-05-16 13:54:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '52', '555', 'content2', 'content2');
INSERT INTO `variableinstancelog` VALUES ('264', '2018-05-16 13:54:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '52', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('265', '2018-05-16 13:54:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '52', '555', 'content1', 'content1');
INSERT INTO `variableinstancelog` VALUES ('266', '2018-05-16 13:54:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '52', 'processTest', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('267', '2018-05-16 13:54:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '52', 'john', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('268', '2018-05-16 14:13:39', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '53', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('269', '2018-05-16 14:13:39', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '53', 'src.processTest', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('270', '2018-05-16 14:13:39', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '53', '666', 'content3', 'content3');
INSERT INTO `variableinstancelog` VALUES ('271', '2018-05-16 14:13:39', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '53', '666', 'content2', 'content2');
INSERT INTO `variableinstancelog` VALUES ('272', '2018-05-16 14:13:39', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '53', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('273', '2018-05-16 14:13:39', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '53', '666', 'content1', 'content1');
INSERT INTO `variableinstancelog` VALUES ('274', '2018-05-16 14:13:39', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '53', 'processTest', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('275', '2018-05-16 14:13:39', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '53', 'lee', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('276', '2018-05-16 14:25:58', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '54', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('277', '2018-05-16 14:25:58', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '54', 'src.processTest', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('278', '2018-05-16 14:25:58', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '54', '777', 'content3', 'content3');
INSERT INTO `variableinstancelog` VALUES ('279', '2018-05-16 14:25:58', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '54', '777', 'content2', 'content2');
INSERT INTO `variableinstancelog` VALUES ('280', '2018-05-16 14:25:58', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '54', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('281', '2018-05-16 14:25:58', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '54', '777', 'content1', 'content1');
INSERT INTO `variableinstancelog` VALUES ('282', '2018-05-16 14:25:58', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '54', 'processTest', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('283', '2018-05-16 14:25:58', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '54', 'john', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('284', '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '55', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('285', '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '55', 'src.processTest', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('286', '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '55', '111', 'content3', 'content3');
INSERT INTO `variableinstancelog` VALUES ('287', '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '55', '111', 'content2', 'content2');
INSERT INTO `variableinstancelog` VALUES ('288', '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '55', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('289', '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '55', '111', 'content1', 'content1');
INSERT INTO `variableinstancelog` VALUES ('290', '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '55', 'processTest', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('291', '2018-05-16 14:50:00', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '55', 'tmp', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('292', '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '56', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('293', '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '56', 'src.processTest', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('294', '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '56', '111', 'content3', 'content3');
INSERT INTO `variableinstancelog` VALUES ('295', '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '56', '111', 'content2', 'content2');
INSERT INTO `variableinstancelog` VALUES ('296', '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '56', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('297', '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '56', '111', 'content1', 'content1');
INSERT INTO `variableinstancelog` VALUES ('298', '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '56', 'processTest', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('299', '2018-05-16 14:58:44', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'src.processTest', '56', 'tmp', 'employee', 'employee');
INSERT INTO `variableinstancelog` VALUES ('300', '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '57', 'Yearly performance evaluation', 'reason', 'reason');
INSERT INTO `variableinstancelog` VALUES ('301', '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '57', 'com.sample.evaluation', 'processId', 'processId');
INSERT INTO `variableinstancelog` VALUES ('302', '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '57', '34', 'content3', 'content3');
INSERT INTO `variableinstancelog` VALUES ('303', '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '57', '34', 'content2', 'content2');
INSERT INTO `variableinstancelog` VALUES ('304', '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '57', 'org.default:artifact:1.0.0-SNAPSHOT', 'deploymentId', 'deploymentId');
INSERT INTO `variableinstancelog` VALUES ('305', '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '57', '34', 'content1', 'content1');
INSERT INTO `variableinstancelog` VALUES ('306', '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '57', 'Evaluation', 'name', 'name');
INSERT INTO `variableinstancelog` VALUES ('307', '2018-05-16 15:06:50', 'org.default:artifact:1.0.0-SNAPSHOT', '', 'com.sample.evaluation', '57', 'tmp', 'employee', 'employee');

-- ----------------------------
-- Table structure for workiteminfo
-- ----------------------------
DROP TABLE IF EXISTS `workiteminfo`;
CREATE TABLE `workiteminfo` (
  `workItemId` bigint(20) NOT NULL AUTO_INCREMENT,
  `creationDate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `processInstanceId` bigint(20) NOT NULL,
  `state` bigint(20) NOT NULL,
  `OPTLOCK` int(11) DEFAULT NULL,
  `workItemByteArray` longblob,
  PRIMARY KEY (`workItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workiteminfo
-- ----------------------------
INSERT INTO `workiteminfo` VALUES ('1', '2018-05-13 05:54:06', 'Human Task', '7', '0', '1', 0xACED00057A000001730A060807100718004AB501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A67ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740005656E2D554B740001317400055461736B317400055461736B3174000566616C73657400066163746F72317852B001080110071A0A48756D616E205461736B20002A100A064C6F63616C6510001A04000000002A110A07436F6D6D656E7410001A04000000012A120A085461736B4E616D6510001A04000000022A120A084E6F64654E616D6510001A04000000032A130A09536B69707061626C6510001A04000000042A110A074163746F72496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('2', '2018-05-13 05:56:32', 'Human Task', '8', '0', '1', 0xACED00057A000001900A060807100718004AE401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9501ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000005770400000005740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C7365740000740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E78529E01080210081A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A110A074163746F72496410001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A040000000432236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('3', '2018-05-13 06:31:05', 'Human Task', '9', '0', '1', 0xACED00057A000001900A060807100718004AE401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9501ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000005770400000005740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C7365740000740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E78529E01080310091A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A110A074163746F72496410001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A040000000432236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('4', '2018-05-13 06:42:27', 'Human Task', '10', '0', '1', 0xACED00057A000001730A060807100718004AB501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A67ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740005656E2D554B740001317400055461736B317400055461736B3174000566616C73657400066163746F72317852B0010804100A1A0A48756D616E205461736B20002A100A064C6F63616C6510001A04000000002A110A07436F6D6D656E7410001A04000000012A120A085461736B4E616D6510001A04000000022A120A084E6F64654E616D6510001A04000000032A130A09536B69707061626C6510001A04000000042A110A074163746F72496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('5', '2018-05-13 09:16:56', 'Human Task', '11', '0', '1', 0xACED00057A000001900A060807100718004AE401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9501ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000005770400000005740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C7365740000740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E78529E010805100B1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A110A074163746F72496410001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A040000000432236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('6', '2018-05-13 09:43:23', 'Human Task', '12', '0', '1', 0xACED00057A000001900A060807100718004AE401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A9501ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000005770400000005740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C7365740000740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E78529E010806100C1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A110A074163746F72496410001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A040000000432236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('8', '2018-05-13 11:34:39', 'Human Task', '13', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E740002504D7852B0010808100D1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034003);
INSERT INTO `workiteminfo` VALUES ('9', '2018-05-13 11:34:39', 'Human Task', '13', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000248527852B0010809100D1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438044004);
INSERT INTO `workiteminfo` VALUES ('12', '2018-05-13 12:53:38', 'Human Task', '15', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E740002504D7852B001080C100F1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034003);
INSERT INTO `workiteminfo` VALUES ('16', '2018-05-13 15:14:28', 'Human Task', '16', '0', '1', 0xACED00057A000001090A060807100718004A9A01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A4CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000002770400000002740003746D7074000973616C65732D726570785262081010101A0A48756D616E205461736B20002A120A084E6F64654E616D6510001A04000000002A110A074163746F72496410001A040000000132236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034004);
INSERT INTO `workiteminfo` VALUES ('18', '2018-05-13 15:17:50', 'Human Task', '17', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000248527852B001081210111A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438044004);
INSERT INTO `workiteminfo` VALUES ('19', '2018-05-13 15:17:50', 'Human Task', '17', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E740002504D7852B001081310111A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034003);
INSERT INTO `workiteminfo` VALUES ('20', '2018-05-13 15:17:55', 'Human Task', '14', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000248527852B0010814100E1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438044004);
INSERT INTO `workiteminfo` VALUES ('21', '2018-05-13 15:17:55', 'Human Task', '14', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E740002504D7852B0010815100E1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034003);
INSERT INTO `workiteminfo` VALUES ('24', '2018-05-13 15:36:21', 'Human Task', '18', '0', '1', 0xACED00057A000001090A060807100718004A9A01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A4CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000002770400000002740003746D7074000973616C65732D726570785262081810121A0A48756D616E205461736B20002A120A084E6F64654E616D6510001A04000000002A110A074163746F72496410001A040000000132236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034004);
INSERT INTO `workiteminfo` VALUES ('26', '2018-05-13 15:38:54', 'Human Task', '19', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E740002504D7852B001081A10131A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034003);
INSERT INTO `workiteminfo` VALUES ('27', '2018-05-13 15:38:54', 'Human Task', '19', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000248527852B001081B10131A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438044004);
INSERT INTO `workiteminfo` VALUES ('30', '2018-05-13 16:37:10', 'Human Task', '20', '0', '1', 0xACED00057A000001090A060807100718004A9A01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A4CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000002770400000002740003746D7074000973616C65732D726570785262081E10141A0A48756D616E205461736B20002A120A084E6F64654E616D6510001A04000000002A110A074163746F72496410001A040000000132236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034004);
INSERT INTO `workiteminfo` VALUES ('32', '2018-05-13 16:42:46', 'Human Task', '21', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E740002504D7852B001082010151A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034003);
INSERT INTO `workiteminfo` VALUES ('33', '2018-05-13 16:42:47', 'Human Task', '21', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000248527852B001082110151A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438044004);
INSERT INTO `workiteminfo` VALUES ('35', '2018-05-13 20:10:01', 'Human Task', '22', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E740002504D7852B001082310161A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034003);
INSERT INTO `workiteminfo` VALUES ('36', '2018-05-13 20:10:01', 'Human Task', '22', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000248527852B001082410161A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438044004);
INSERT INTO `workiteminfo` VALUES ('37', '2018-05-13 21:15:46', 'Human Task', '23', '0', '1', 0xACED00057A000001C70A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000561646D696E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001082510171A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('39', '2018-05-13 21:24:29', 'Human Task', '25', '0', '1', 0xACED00057A000001C70A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000561646D696E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001082710191A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('40', '2018-05-13 21:31:45', 'Human Task', '26', '0', '1', 0xACED00057A000001C70A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000561646D696E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B0010828101A1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('42', '2018-05-13 21:50:15', 'Human Task', '28', '0', '1', 0xACED00057A000001C70A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000561646D696E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001082A101C1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('43', '2018-05-13 21:59:26', 'Human Task', '29', '0', '1', 0xACED00057A000001C70A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000561646D696E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001082B101D1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('44', '2018-05-13 21:59:55', 'Human Task', '30', '0', '1', 0xACED00057A000001C70A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000561646D696E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001082C101E1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('45', '2018-05-13 22:00:29', 'Human Task', '31', '0', '1', 0xACED00057A000001C70A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000561646D696E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001082D101F1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('47', '2018-05-14 08:14:56', 'Human Task', '32', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E740002504D7852B001082F10201A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034003);
INSERT INTO `workiteminfo` VALUES ('48', '2018-05-14 08:14:56', 'Human Task', '32', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000248527852B001083010201A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438044004);
INSERT INTO `workiteminfo` VALUES ('50', '2018-05-14 08:20:10', 'Human Task', '33', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E740002504D7852B001083210211A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034003);
INSERT INTO `workiteminfo` VALUES ('51', '2018-05-14 08:20:10', 'Human Task', '33', '0', '1', 0xACED00057A000001BB0A060807100718004AFD01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAE01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001B596F75206E65656420746F206576616C756174652061646D696E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000248527852B001083310211A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438044004);
INSERT INTO `workiteminfo` VALUES ('52', '2018-05-14 09:39:48', 'Human Task', '34', '0', '1', 0xACED00057A000001C70A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000561646D696E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001083410221A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('53', '2018-05-14 09:41:35', 'Human Task', '35', '0', '1', 0xACED00057A000001C70A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000561646D696E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001083510231A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('54', '2018-05-14 09:44:07', 'Human Task', '36', '0', '1', 0xACED00057A000001C70A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000561646D696E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001083610241A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('55', '2018-05-14 09:44:31', 'Human Task', '37', '0', '1', 0xACED00057A000001C70A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000561646D696E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001083710251A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('56', '2018-05-14 09:54:38', 'Human Task', '38', '0', '1', 0xACED00057A000001C70A060807100718004A8902080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791ABA01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E74000561646D696E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001083810261A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('62', '2018-05-14 13:34:52', 'Human Task', '40', '0', '1', 0xACED00057A000001B90A060807100718004AFB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAC01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740019596F75206E65656420746F206576616C7561746520746D702E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E740002504D7852B001083E10281A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034003);
INSERT INTO `workiteminfo` VALUES ('65', '2018-05-14 13:39:45', 'Human Task', '41', '0', '1', 0xACED00057A000001090A060807100718004A9A01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A4CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000002770400000002740003746D7074000973616C65732D726570785262084110291A0A48756D616E205461736B20002A120A084E6F64654E616D6510001A04000000002A110A074163746F72496410001A040000000132236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034004);
INSERT INTO `workiteminfo` VALUES ('67', '2018-05-14 18:21:18', 'Human Task', '42', '0', '1', 0xACED00057A000001430A060807100718004AAA01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5CACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000004770400000004740004747275657400084852E5AEA1E6A0B87400084852E5AEA1E6A0B8740002485278528B010843102A1A0A48756D616E205461736B20002A130A09536B69707061626C6510001A04000000002A120A085461736B4E616D6510001A04000000012A120A084E6F64654E616D6510001A04000000022A110A0747726F7570496410001A040000000332236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034002);
INSERT INTO `workiteminfo` VALUES ('68', '2018-05-14 18:21:18', 'Human Task', '42', '0', '1', 0xACED00057A000001440A060807100718004AAB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5DACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740008504DE5AEA1E6A0B8740009504D20E5AEA1E6A0B8740002504D78528B010844102A1A0A48756D616E205461736B20002A130A09536B69707061626C6510001A04000000002A120A085461736B4E616D6510001A04000000012A120A084E6F64654E616D6510001A04000000022A110A0747726F7570496410001A040000000332236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438044003);
INSERT INTO `workiteminfo` VALUES ('69', '2018-05-15 17:41:48', 'Human Task', '43', '0', '1', 0xACED00057A000001C60A060807100718004A8802080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB901ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E7400046A6F686E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B0010845102B1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('73', '2018-05-15 20:27:51', 'Human Task', '45', '0', '1', 0xACED00057A000001C50A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E7400036C6565740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B0010849102D1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('74', '2018-05-15 20:31:25', 'Human Task', '46', '0', '1', 0xACED00057A000001C50A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E7400036C6565740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001084A102E1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('75', '2018-05-15 20:50:57', 'Human Task', '47', '0', '1', 0xACED00057A000001C50A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E7400036C6565740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001084B102F1A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('76', '2018-05-15 20:58:13', 'Human Task', '48', '0', '1', 0xACED00057A000001C50A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E7400036C6565740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001084C10301A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('77', '2018-05-15 21:55:55', 'Human Task', '49', '0', '1', 0xACED00057A000001C60A060807100718004A8802080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB901ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E7400046A6F686E740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001084D10311A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
INSERT INTO `workiteminfo` VALUES ('79', '2018-05-15 22:07:05', 'Human Task', '50', '0', '1', 0xACED00057A000001BA0A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001A596F75206E65656420746F206576616C75617465206A6F686E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D4852204576616C756174696F6E74000248527852B001084F10321A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438044004);
INSERT INTO `workiteminfo` VALUES ('80', '2018-05-15 22:07:05', 'Human Task', '50', '0', '1', 0xACED00057A000001BA0A060807100718004AFC01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AAD01ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000677040000000674001A596F75206E65656420746F206576616C75617465206A6F686E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740016506572666F726D616E6365204576616C756174696F6E74000D504D204576616C756174696F6E740002504D7852B001085010321A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A120A085461736B4E616D6510001A04000000032A120A084E6F64654E616D6510001A04000000042A110A0747726F7570496410001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438034003);
INSERT INTO `workiteminfo` VALUES ('84', '2018-05-16 13:45:44', 'Human Task', '51', '0', '1', 0xACED00057A0000015E0A060807100718004AC501080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A77ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740012E9A38EE68EA7E983A8E997A8E5AEA1E6A0B8740012E9A38EE68EA7E983A8E997A8E5AEA1E6A0B8740009E9A38EE68EA7E983A878528B01085410331A0A48756D616E205461736B20002A130A09536B69707061626C6510001A04000000002A120A085461736B4E616D6510001A04000000012A120A084E6F64654E616D6510001A04000000022A110A0747726F7570496410001A040000000332236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438064004);
INSERT INTO `workiteminfo` VALUES ('85', '2018-05-16 13:54:00', 'Human Task', '52', '0', '1', 0xACED00057A000001580A060807100718004ABF01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A71ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000FE4B89AE58AA1E983A8E5AEA1E6A0B874000FE4B89AE58AA1E983A8E5AEA1E6A0B8740009E4B89AE58AA1E983A878528B01085510341A0A48756D616E205461736B20002A130A09536B69707061626C6510001A04000000002A120A085461736B4E616D6510001A04000000012A120A084E6F64654E616D6510001A04000000022A110A0747726F7570496410001A040000000332236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014007);
INSERT INTO `workiteminfo` VALUES ('88', '2018-05-16 14:14:14', 'Human Task', '53', '0', '1', 0xACED00057A000001440A060807100718004AAB01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A5DACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740008504DE5AEA1E6A0B8740009504D20E5AEA1E6A0B8740002504D78528B01085810351A0A48756D616E205461736B20002A130A09536B69707061626C6510001A04000000002A120A085461736B4E616D6510001A04000000012A120A084E6F64654E616D6510001A04000000022A110A0747726F7570496410001A040000000332236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438044003);
INSERT INTO `workiteminfo` VALUES ('95', '2018-05-16 14:42:48', 'Human Task', '54', '0', '1', 0xACED00057A0000014D0A060807100718004AB401080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A66ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A6578700000000477040000000474000474727565740004424F535374000CE680BBE8A381E5AEA1E6A0B874000CE680BBE8A381E5AEA1E6A0B878528B01085F10361A0A48756D616E205461736B20002A130A09536B69707061626C6510001A04000000002A110A074163746F72496410001A04000000012A120A085461736B4E616D6510001A04000000022A120A084E6F64654E616D6510001A040000000332236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F543809400A);
INSERT INTO `workiteminfo` VALUES ('96', '2018-05-16 14:50:00', 'Human Task', '55', '0', '1', 0xACED00057A000001580A060807100718004ABF01080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791A71ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000047704000000047400047472756574000FE4B89AE58AA1E983A8E5AEA1E6A0B874000FE4B89AE58AA1E983A8E5AEA1E6A0B8740009E4B89AE58AA1E983A878528B01086010371A0A48756D616E205461736B20002A130A09536B69707061626C6510001A04000000002A120A085461736B4E616D6510001A04000000012A120A084E6F64654E616D6510001A04000000022A110A0747726F7570496410001A040000000332236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014007);
INSERT INTO `workiteminfo` VALUES ('104', '2018-05-16 15:06:50', 'Human Task', '57', '0', '1', 0xACED00057A000001C50A060807100718004A8702080012486F72672E64726F6F6C732E636F72652E6D61727368616C6C696E672E696D706C2E53657269616C697A61626C65506C616365686F6C6465725265736F6C76657253747261746567791AB801ACED0005737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000006770400000006740022506C6561736520706572666F726D20612073656C662D6576616C75746174696F6E2E74000566616C736574001D596561726C7920706572666F726D616E6365206576616C756174696F6E740003746D70740016506572666F726D616E6365204576616C756174696F6E74000F53656C66204576616C756174696F6E7852B001086810391A0A48756D616E205461736B20002A110A07436F6D6D656E7410001A04000000002A130A09536B69707061626C6510001A04000000012A100A06726561736F6E10001A04000000022A110A074163746F72496410001A04000000032A120A085461736B4E616D6510001A04000000042A120A084E6F64654E616D6510001A040000000532236F72672E64656661756C743A61727469666163743A312E302E302D534E415053484F5438014002);
