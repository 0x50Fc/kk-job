
#工作
CREATE TABLE IF NOT EXISTS `job_job` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`platform` VARCHAR(64) DEFAULT ''	#[字段] 平台
	,`version` INT DEFAULT 0	#[字段] 最新版本号
	,`options` TEXT	#[字段] 其他数据
	,`env` TEXT	#[字段] 环境数据
	,`script` LONGTEXT	#[字段] 脚本
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
 ) AUTO_INCREMENT = 1;
#工作机
CREATE TABLE IF NOT EXISTS `job_slave` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`token` VARCHAR(64) DEFAULT ''	#[字段] TOKEN
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`platform` VARCHAR(64) DEFAULT ''	#[字段] 平台
	,`status` INT DEFAULT 0	#[字段] 状态
	,`options` TEXT	#[字段] 其他数据
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `token` (`token` asc)	#[索引] TOKEN
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `platform` (`platform` asc)	#[索引] 平台
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作队列
CREATE TABLE IF NOT EXISTS `job_job_queue` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`slaveId` BIGINT DEFAULT 0	#[字段] 工作机ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`platform` VARCHAR(64) DEFAULT ''	#[字段] 平台
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `slaveId` (`slaveId` asc)	#[索引] 工作机ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
	,INDEX `platform` (`platform` asc)	#[索引] 平台
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_1_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_1_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_2_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_2_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_3_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_3_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_4_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_4_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_5_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_5_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_6_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_6_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_7_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_7_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_8_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_8_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_9_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_9_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_10_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_10_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_11_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_11_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_12_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_12_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_13_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_13_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_14_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_14_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_15_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_15_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_16_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_16_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_17_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_17_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_18_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_18_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_19_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_19_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_20_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_20_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_21_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_21_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_22_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_22_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_23_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_23_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_24_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_24_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_25_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_25_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_26_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_26_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_27_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_27_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_28_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_28_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_29_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_29_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_30_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_30_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_31_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_31_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_32_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_32_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_33_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_33_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_34_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_34_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_35_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_35_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_36_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_36_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_37_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_37_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_38_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_38_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_39_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_39_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_40_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_40_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_41_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_41_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_42_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_42_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_43_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_43_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_44_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_44_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_45_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_45_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_46_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_46_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_47_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_47_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_48_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_48_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_49_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_49_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_50_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_50_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_51_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_51_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_52_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_52_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_53_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_53_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_54_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_54_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_55_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_55_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_56_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_56_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_57_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_57_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_58_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_58_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_59_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_59_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_60_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_60_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_61_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_61_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_62_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_62_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_63_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_63_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_64_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_64_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_65_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_65_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_66_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_66_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_67_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_67_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_68_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_68_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_69_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_69_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_70_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_70_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_71_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_71_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_72_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_72_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_73_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_73_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_74_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_74_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_75_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_75_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_76_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_76_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_77_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_77_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_78_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_78_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_79_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_79_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_80_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_80_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_81_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_81_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_82_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_82_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_83_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_83_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_84_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_84_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_85_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_85_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_86_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_86_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_87_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_87_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_88_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_88_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_89_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_89_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_90_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_90_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_91_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_91_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_92_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_92_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_93_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_93_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_94_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_94_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_95_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_95_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_96_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_96_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_97_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_97_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_98_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_98_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_99_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_99_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_100_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_100_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_101_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_101_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_102_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_102_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_103_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_103_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_104_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_104_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_105_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_105_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_106_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_106_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_107_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_107_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_108_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_108_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_109_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_109_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_110_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_110_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_111_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_111_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_112_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_112_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_113_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_113_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_114_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_114_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_115_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_115_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_116_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_116_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_117_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_117_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_118_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_118_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_119_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_119_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_120_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_120_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_121_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_121_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_122_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_122_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_123_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_123_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_124_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_124_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_125_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_125_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_126_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_126_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_127_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_127_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
#工作项
CREATE TABLE IF NOT EXISTS `job_128_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_128_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
