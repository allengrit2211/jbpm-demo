/*
Navicat MySQL Data Transfer

Source Server         : localhsot
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : jbpm

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-05-10 09:08:15
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audittaskimpl
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of correlationkeyinfo
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of correlationpropertyinfo
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deploymentstore
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of executionerrorinfo
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of i18ntext
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nodeinstancelog
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of processinstanceinfo
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of processinstancelog
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sessioninfo
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taskevent
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of taskvariableimpl
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of variableinstancelog
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workiteminfo
-- ----------------------------
