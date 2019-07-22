/*
Navicat MySQL Data Transfer

Source Server         : 80测试
Source Server Version : 50709
Source Host           : 192.168.4.80:3306
Source Database       : kj_job

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2019-07-22 11:18:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for xxl_job_qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_blob_triggers`;
CREATE TABLE `xxl_job_qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `xxl_job_qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `xxl_job_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_calendars`;
CREATE TABLE `xxl_job_qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_cron_triggers`;
CREATE TABLE `xxl_job_qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `xxl_job_qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `xxl_job_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_cron_triggers
-- ----------------------------
INSERT INTO `xxl_job_qrtz_cron_triggers` VALUES ('DefaultQuartzScheduler', '4', 'DEFAULT', '0 0 0 * * ? *', 'Asia/Shanghai');
INSERT INTO `xxl_job_qrtz_cron_triggers` VALUES ('DefaultQuartzScheduler', '5', 'DEFAULT', '0 10 0 * * ? ', 'Asia/Shanghai');
INSERT INTO `xxl_job_qrtz_cron_triggers` VALUES ('DefaultQuartzScheduler', '6', 'DEFAULT', '0 0 15 * * ?', 'Asia/Shanghai');
INSERT INTO `xxl_job_qrtz_cron_triggers` VALUES ('DefaultQuartzScheduler', '7', 'DEFAULT', '0 0 23 * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for xxl_job_qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_fired_triggers`;
CREATE TABLE `xxl_job_qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_job_details`;
CREATE TABLE `xxl_job_qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_job_details
-- ----------------------------
INSERT INTO `xxl_job_qrtz_job_details` VALUES ('DefaultQuartzScheduler', '4', 'DEFAULT', null, 'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `xxl_job_qrtz_job_details` VALUES ('DefaultQuartzScheduler', '5', 'DEFAULT', null, 'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `xxl_job_qrtz_job_details` VALUES ('DefaultQuartzScheduler', '6', 'DEFAULT', null, 'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);
INSERT INTO `xxl_job_qrtz_job_details` VALUES ('DefaultQuartzScheduler', '7', 'DEFAULT', null, 'com.xxl.job.admin.core.jobbean.RemoteHttpJobBean', '0', '0', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);

-- ----------------------------
-- Table structure for xxl_job_qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_locks`;
CREATE TABLE `xxl_job_qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_locks
-- ----------------------------
INSERT INTO `xxl_job_qrtz_locks` VALUES ('DefaultQuartzScheduler', 'STATE_ACCESS');
INSERT INTO `xxl_job_qrtz_locks` VALUES ('DefaultQuartzScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for xxl_job_qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_paused_trigger_grps`;
CREATE TABLE `xxl_job_qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_scheduler_state`;
CREATE TABLE `xxl_job_qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_scheduler_state
-- ----------------------------
INSERT INTO `xxl_job_qrtz_scheduler_state` VALUES ('DefaultQuartzScheduler', 'DEV0041041557401662943', '1569859730244', '5000');
INSERT INTO `xxl_job_qrtz_scheduler_state` VALUES ('DefaultQuartzScheduler', 'DEV0041041562823563285', '1563765520198', '5000');
INSERT INTO `xxl_job_qrtz_scheduler_state` VALUES ('DefaultQuartzScheduler', 'DEV0041051562824401783', '1563765516880', '5000');

-- ----------------------------
-- Table structure for xxl_job_qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_simple_triggers`;
CREATE TABLE `xxl_job_qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `xxl_job_qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `xxl_job_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_simprop_triggers`;
CREATE TABLE `xxl_job_qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `xxl_job_qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `xxl_job_qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_triggers`;
CREATE TABLE `xxl_job_qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`) USING BTREE,
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  CONSTRAINT `xxl_job_qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `xxl_job_qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_triggers
-- ----------------------------
INSERT INTO `xxl_job_qrtz_triggers` VALUES ('DefaultQuartzScheduler', '4', 'DEFAULT', '4', 'DEFAULT', null, '1577894400000', '1561910400000', '5', 'WAITING', 'CRON', '1558092912000', '0', null, '2', '');
INSERT INTO `xxl_job_qrtz_triggers` VALUES ('DefaultQuartzScheduler', '5', 'DEFAULT', '5', 'DEFAULT', null, '1577808600000', '1561911000000', '5', 'WAITING', 'CRON', '1558092910000', '0', null, '2', '');
INSERT INTO `xxl_job_qrtz_triggers` VALUES ('DefaultQuartzScheduler', '6', 'DEFAULT', '6', 'DEFAULT', null, '1577862000000', '1561964400000', '5', 'WAITING', 'CRON', '1561702061000', '0', null, '2', '');
INSERT INTO `xxl_job_qrtz_triggers` VALUES ('DefaultQuartzScheduler', '7', 'DEFAULT', '7', 'DEFAULT', null, '1563807600000', '1563721200000', '5', 'WAITING', 'CRON', '1563265595000', '0', null, '2', '');

-- ----------------------------
-- Table structure for xxl_job_qrtz_trigger_group
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_trigger_group`;
CREATE TABLE `xxl_job_qrtz_trigger_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(64) NOT NULL COMMENT '执行器AppName',
  `title` varchar(12) NOT NULL COMMENT '执行器名称',
  `order` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `address_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '执行器地址类型：0=自动注册、1=手动录入',
  `address_list` varchar(512) DEFAULT NULL COMMENT '执行器地址列表，多地址逗号分隔',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_trigger_group
-- ----------------------------
INSERT INTO `xxl_job_qrtz_trigger_group` VALUES ('2', 'message', 'message执行器', '1', '0', '192.168.122.1:10003,192.168.4.104:10003,192.168.4.105:10003');
INSERT INTO `xxl_job_qrtz_trigger_group` VALUES ('3', 'admincenter', '代理商执行器', '2', '0', '192.168.4.104:9030,192.168.4.105:9030');
INSERT INTO `xxl_job_qrtz_trigger_group` VALUES ('4', 'item', 'item执行器', '3', '0', null);

-- ----------------------------
-- Table structure for xxl_job_qrtz_trigger_info
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_trigger_info`;
CREATE TABLE `xxl_job_qrtz_trigger_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group` int(11) NOT NULL COMMENT '执行器主键ID',
  `job_cron` varchar(128) NOT NULL COMMENT '任务执行CRON',
  `job_desc` varchar(255) NOT NULL,
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `author` varchar(64) DEFAULT NULL COMMENT '作者',
  `alarm_email` varchar(255) DEFAULT NULL COMMENT '报警邮件',
  `executor_route_strategy` varchar(50) DEFAULT NULL COMMENT '执行器路由策略',
  `executor_handler` varchar(255) DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) DEFAULT NULL COMMENT '执行器任务参数',
  `executor_block_strategy` varchar(50) DEFAULT NULL COMMENT '阻塞处理策略',
  `executor_timeout` int(11) NOT NULL DEFAULT '0' COMMENT '任务执行超时时间，单位秒',
  `executor_fail_retry_count` int(11) NOT NULL DEFAULT '0' COMMENT '失败重试次数',
  `glue_type` varchar(50) NOT NULL COMMENT 'GLUE类型',
  `glue_source` mediumtext COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) DEFAULT NULL COMMENT 'GLUE备注',
  `glue_updatetime` datetime DEFAULT NULL COMMENT 'GLUE更新时间',
  `child_jobid` varchar(255) DEFAULT NULL COMMENT '子任务ID，多个逗号分隔',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_trigger_info
-- ----------------------------
INSERT INTO `xxl_job_qrtz_trigger_info` VALUES ('4', '2', '0 0 0 * * ? *', '短信状态查询', '2019-05-17 19:30:23', '2019-05-17 19:33:40', '金晓杰', '', 'FIRST', 'smsQuerySendDetailsJob', '', 'SERIAL_EXECUTION', '0', '0', 'BEAN', '', 'GLUE代码初始化', '2019-05-17 19:30:23', '');
INSERT INTO `xxl_job_qrtz_trigger_info` VALUES ('5', '2', '0 10 0 * * ? ', '推送状态查询', '2019-05-17 19:30:51', '2019-05-17 19:34:35', '金晓杰', '', 'FIRST', 'appPushStatusQueryJob', '', 'SERIAL_EXECUTION', '0', '0', 'BEAN', '', 'GLUE代码初始化', '2019-05-17 19:30:51', '');
INSERT INTO `xxl_job_qrtz_trigger_info` VALUES ('6', '3', '0 0 15 * * ?', '代理商合同到期前三十天通知负责人', '2019-06-28 14:07:10', '2019-06-28 14:07:10', 'admin', '', 'FIRST', 'agencyJobHandler', '', 'SERIAL_EXECUTION', '0', '0', 'BEAN', '', 'GLUE代码初始化', '2019-06-28 14:07:10', '');
INSERT INTO `xxl_job_qrtz_trigger_info` VALUES ('7', '4', '0 0 23 * * ?', 'summaryStock', '2019-07-16 16:26:28', '2019-07-16 16:26:28', '金晓杰', '', 'FIRST', 'summaryStockJob', '', 'SERIAL_EXECUTION', '0', '0', 'BEAN', '', 'GLUE代码初始化', '2019-07-16 16:26:28', '');

-- ----------------------------
-- Table structure for xxl_job_qrtz_trigger_log
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_trigger_log`;
CREATE TABLE `xxl_job_qrtz_trigger_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group` int(11) NOT NULL COMMENT '执行器主键ID',
  `job_id` int(11) NOT NULL COMMENT '任务，主键ID',
  `executor_address` varchar(255) DEFAULT NULL COMMENT '执行器地址，本次执行的地址',
  `executor_handler` varchar(255) DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) DEFAULT NULL COMMENT '执行器任务参数',
  `executor_sharding_param` varchar(20) DEFAULT NULL COMMENT '执行器任务分片参数，格式如 1/2',
  `executor_fail_retry_count` int(11) NOT NULL DEFAULT '0' COMMENT '失败重试次数',
  `trigger_time` datetime DEFAULT NULL COMMENT '调度-时间',
  `trigger_code` int(11) NOT NULL COMMENT '调度-结果',
  `trigger_msg` text COMMENT '调度-日志',
  `handle_time` datetime DEFAULT NULL COMMENT '执行-时间',
  `handle_code` int(11) NOT NULL COMMENT '执行-状态',
  `handle_msg` text COMMENT '执行-日志',
  `alarm_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '告警状态：0-默认、1-无需告警、2-告警成功、3-告警失败',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `I_trigger_time` (`trigger_time`) USING BTREE,
  KEY `I_handle_code` (`handle_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=780 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_trigger_log
-- ----------------------------
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('656', '2', '4', '192.168.5.141:10003', 'smsQuerySendDetailsJob', 'dd', null, '0', '2019-05-17 11:35:28', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.5.141:10003]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.5.141:10003<br>code：200<br>msg：null', '2019-05-17 11:35:28', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('657', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-17 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('658', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-17 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('659', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-18 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('660', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-18 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('661', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-19 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('662', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-19 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('663', '2', '5', '192.168.5.141:10003', 'appPushStatusQueryJob', '', null, '0', '2019-05-20 10:01:46', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.5.141:10003]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.5.141:10003<br>code：200<br>msg：null', '2019-05-20 10:01:46', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('664', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-20 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('665', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-20 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('666', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-21 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('667', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-21 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('668', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-22 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('669', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-22 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('670', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-23 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('671', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-23 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('672', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-24 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('673', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-24 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('674', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-25 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('675', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-25 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('676', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-26 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('677', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-26 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('678', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-27 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('679', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-27 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('680', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-28 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('681', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-28 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('682', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-29 16:00:02', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('683', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-29 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('684', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-30 16:00:01', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('685', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-30 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('686', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-05-31 16:00:01', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('687', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-05-31 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('688', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-01 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('689', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-01 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('690', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-02 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('691', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-02 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('692', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-03 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('693', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-03 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('694', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-04 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('695', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-04 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('696', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-05 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('697', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-05 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('698', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-06 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('699', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-06 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('700', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-07 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('701', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-07 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('702', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-08 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('703', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-08 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('704', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-09 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('705', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-09 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('706', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-10 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('707', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-10 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('708', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-11 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('709', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-11 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('710', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-12 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('711', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-12 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('712', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-13 16:00:01', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('713', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-13 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('714', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-14 16:00:02', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('715', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-14 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('716', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-15 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('717', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-15 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('718', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-16 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('719', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-16 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('720', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-17 16:00:02', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('721', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-17 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('722', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-18 16:00:01', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('723', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-18 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('724', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-19 16:00:01', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('725', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-19 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('726', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-20 16:00:01', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('727', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-20 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('728', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-21 16:00:02', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('729', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-21 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('730', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-22 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('731', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-22 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('732', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-23 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('733', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-23 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('734', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-24 16:00:01', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('735', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-24 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('736', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-25 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('737', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-25 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('738', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-26 16:00:02', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('739', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-26 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('740', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-27 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('741', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-27 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('742', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-06-28 06:34:12', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-06-28 06:34:14', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('743', '3', '6', null, 'agencyJobHandler', '', null, '0', '2019-06-28 07:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('744', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-06-28 07:03:04', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-06-28 07:03:05', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('745', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-28 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('746', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-28 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('747', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-06-29 07:00:00', '200', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-06-29 07:00:03', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('748', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-29 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('749', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-29 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('750', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-06-30 07:00:00', '200', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-06-30 07:00:00', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('751', '2', '4', null, 'smsQuerySendDetailsJob', '', null, '0', '2019-06-30 16:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('752', '2', '5', null, 'appPushStatusQueryJob', '', null, '0', '2019-06-30 16:10:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('753', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-01 06:19:34', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-01 06:19:34', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('754', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-01 06:24:56', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-01 06:24:56', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('755', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-01 06:25:38', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-01 06:25:38', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('756', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-01 06:55:16', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-01 06:55:17', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('757', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-01 07:00:00', '200', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-01 07:00:05', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('758', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-02 07:02:20', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-02 07:02:21', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('759', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-02 07:03:52', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-02 07:03:52', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('760', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-02 07:09:38', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-02 07:09:39', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('761', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-02 07:11:58', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-02 07:11:58', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('762', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-02 07:13:08', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-02 07:13:13', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('763', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-02 07:14:01', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-02 07:14:01', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('764', '2', '5', '192.168.122.1:10003', 'appPushStatusQueryJob', '', null, '0', '2019-07-09 02:45:13', '500', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:10003, 192.168.4.104:10003, 192.168.4.105:10003]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:10003<br>code：500<br>msg：com.xxl.rpc.util.XxlRpcException: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: /192.168.122.1:10003\n	at com.xxl.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:227)\n	at com.sun.proxy.$Proxy115.run(Unknown Source)\n	at com.xxl.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:188)\n	at com.xxl.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:141)\n	at com.xxl.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:75)\n	at com.xxl.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:77)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\n	at java.lang.Thread.run(Thread.java:748)\nCaused by: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: /192.168.122.1:10003\n	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)\n	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:717)\n	at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:327)\n	at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:340)\n	at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:616)\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:563)\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:480)\n	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:442)\n	at io.netty.util.concurrent.SingleThreadEventExecutor$5.run(SingleThreadEventExecutor.java:884)\n	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)\n	... 1 more\nCaused by: java.net.ConnectException: Connection refused\n	... 11 more\n', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('765', '2', '4', '192.168.122.1:10003', 'smsQuerySendDetailsJob', '', null, '0', '2019-07-09 02:45:55', '500', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:10003, 192.168.4.104:10003, 192.168.4.105:10003]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:10003<br>code：500<br>msg：com.xxl.rpc.util.XxlRpcException: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: /192.168.122.1:10003\n	at com.xxl.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:227)\n	at com.sun.proxy.$Proxy115.run(Unknown Source)\n	at com.xxl.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:188)\n	at com.xxl.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:141)\n	at com.xxl.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:75)\n	at com.xxl.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:77)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\n	at java.lang.Thread.run(Thread.java:748)\nCaused by: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: /192.168.122.1:10003\n	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)\n	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:717)\n	at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:327)\n	at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:340)\n	at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:616)\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:563)\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:480)\n	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:442)\n	at io.netty.util.concurrent.SingleThreadEventExecutor$5.run(SingleThreadEventExecutor.java:884)\n	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)\n	... 1 more\nCaused by: java.net.ConnectException: Connection refused\n	... 11 more\n', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('766', '2', '4', '192.168.4.104:10003', 'smsQuerySendDetailsJob', '', null, '0', '2019-07-09 02:47:13', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：手动录入<br>执行器-地址列表：[192.168.4.104:10003, 192.168.4.105:10003]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:10003<br>code：200<br>msg：null', '2019-07-09 02:47:20', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('767', '2', '5', '192.168.4.104:10003', 'appPushStatusQueryJob', '', null, '0', '2019-07-09 03:00:58', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：手动录入<br>执行器-地址列表：[192.168.4.104:10003, 192.168.4.105:10003]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:10003<br>code：200<br>msg：null', '2019-07-09 03:00:58', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('768', '2', '4', '192.168.4.104:10003', 'smsQuerySendDetailsJob', '', null, '0', '2019-07-09 03:01:01', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：手动录入<br>执行器-地址列表：[192.168.4.104:10003, 192.168.4.105:10003]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:10003<br>code：200<br>msg：null', '2019-07-09 03:01:01', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('769', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-15 06:55:21', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-15 06:55:21', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('770', '3', '6', '192.168.4.104:9030', 'agencyJobHandler', '', null, '0', '2019-07-15 06:58:50', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.4.104:9030, 192.168.4.105:9030]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:9030<br>code：200<br>msg：null', '2019-07-15 06:58:56', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('771', '2', '5', '192.168.122.1:10003', 'appPushStatusQueryJob', '', null, '0', '2019-07-16 08:33:36', '500', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：[192.168.122.1:10003, 192.168.159.89:10003, 192.168.4.104:10003, 192.168.4.105:10003]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.122.1:10003<br>code：500<br>msg：com.xxl.rpc.util.XxlRpcException: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: /192.168.122.1:10003\n	at com.xxl.rpc.remoting.invoker.reference.XxlRpcReferenceBean$1.invoke(XxlRpcReferenceBean.java:227)\n	at com.sun.proxy.$Proxy112.run(Unknown Source)\n	at com.xxl.job.admin.core.trigger.XxlJobTrigger.runExecutor(XxlJobTrigger.java:188)\n	at com.xxl.job.admin.core.trigger.XxlJobTrigger.processTrigger(XxlJobTrigger.java:141)\n	at com.xxl.job.admin.core.trigger.XxlJobTrigger.trigger(XxlJobTrigger.java:75)\n	at com.xxl.job.admin.core.thread.JobTriggerPoolHelper$3.run(JobTriggerPoolHelper.java:77)\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\n	at java.lang.Thread.run(Thread.java:748)\nCaused by: io.netty.channel.AbstractChannel$AnnotatedConnectException: Connection refused: /192.168.122.1:10003\n	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)\n	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:717)\n	at io.netty.channel.socket.nio.NioSocketChannel.doFinishConnect(NioSocketChannel.java:327)\n	at io.netty.channel.nio.AbstractNioChannel$AbstractNioUnsafe.finishConnect(AbstractNioChannel.java:340)\n	at io.netty.channel.nio.NioEventLoop.processSelectedKey(NioEventLoop.java:616)\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeysOptimized(NioEventLoop.java:563)\n	at io.netty.channel.nio.NioEventLoop.processSelectedKeys(NioEventLoop.java:480)\n	at io.netty.channel.nio.NioEventLoop.run(NioEventLoop.java:442)\n	at io.netty.util.concurrent.SingleThreadEventExecutor$5.run(SingleThreadEventExecutor.java:884)\n	at io.netty.util.concurrent.FastThreadLocalRunnable.run(FastThreadLocalRunnable.java:30)\n	... 1 more\nCaused by: java.net.ConnectException: Connection refused\n	... 11 more\n', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('772', '4', '7', null, 'summaryStockJob', '', null, '0', '2019-07-16 08:34:01', '500', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('773', '2', '5', '192.168.4.104:10003', 'appPushStatusQueryJob', '', null, '0', '2019-07-16 08:35:09', '200', '任务触发类型：手动触发<br>调度机器：192.168.4.104<br>执行器-注册方式：手动录入<br>执行器-地址列表：[192.168.4.104:10003, 192.168.4.105:10003]<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>触发调度：<br>address：192.168.4.104:10003<br>code：200<br>msg：null', '2019-07-16 08:35:09', '200', '', '0');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('774', '4', '7', null, 'summaryStockJob', '', null, '0', '2019-07-16 15:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('775', '4', '7', null, 'summaryStockJob', '', null, '0', '2019-07-17 15:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('776', '4', '7', null, 'summaryStockJob', '', null, '0', '2019-07-18 15:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('777', '4', '7', null, 'summaryStockJob', '', null, '0', '2019-07-19 15:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('778', '4', '7', null, 'summaryStockJob', '', null, '0', '2019-07-20 15:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.105<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');
INSERT INTO `xxl_job_qrtz_trigger_log` VALUES ('779', '4', '7', null, 'summaryStockJob', '', null, '0', '2019-07-21 15:00:00', '500', '任务触发类型：Cron触发<br>调度机器：192.168.4.104<br>执行器-注册方式：自动注册<br>执行器-地址列表：null<br>路由策略：第一个<br>阻塞处理策略：单机串行<br>任务超时时间：0<br>失败重试次数：0<br><br><span style=\"color:#00c0ef;\" > >>>>>>>>>>>触发调度<<<<<<<<<<< </span><br>调度失败：执行器地址为空<br><br>', null, '0', null, '1');

-- ----------------------------
-- Table structure for xxl_job_qrtz_trigger_logglue
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_trigger_logglue`;
CREATE TABLE `xxl_job_qrtz_trigger_logglue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL COMMENT '任务，主键ID',
  `glue_type` varchar(50) DEFAULT NULL COMMENT 'GLUE类型',
  `glue_source` mediumtext COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) NOT NULL COMMENT 'GLUE备注',
  `add_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_trigger_logglue
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_qrtz_trigger_registry
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_qrtz_trigger_registry`;
CREATE TABLE `xxl_job_qrtz_trigger_registry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registry_group` varchar(255) NOT NULL,
  `registry_key` varchar(255) NOT NULL,
  `registry_value` varchar(255) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of xxl_job_qrtz_trigger_registry
-- ----------------------------
INSERT INTO `xxl_job_qrtz_trigger_registry` VALUES ('100', 'EXECUTOR', 'message', '192.168.4.104:10003', '2019-07-22 11:18:39');
INSERT INTO `xxl_job_qrtz_trigger_registry` VALUES ('101', 'EXECUTOR', 'message', '192.168.4.105:10003', '2019-07-22 11:18:30');
INSERT INTO `xxl_job_qrtz_trigger_registry` VALUES ('114', 'EXECUTOR', 'admincenter', '192.168.4.104:9030', '2019-07-22 11:18:39');
INSERT INTO `xxl_job_qrtz_trigger_registry` VALUES ('117', 'EXECUTOR', 'admincenter', '192.168.4.105:9030', '2019-07-22 11:18:39');
INSERT INTO `xxl_job_qrtz_trigger_registry` VALUES ('130', 'EXECUTOR', 'message', '192.168.122.1:10003', '2019-07-22 11:18:24');
