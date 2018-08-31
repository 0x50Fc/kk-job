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
#工作项
CREATE TABLE IF NOT EXISTS `job_job_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`title` VARCHAR(255) DEFAULT ''	#[字段] 说明
	,`uid` BIGINT DEFAULT 0	#[字段] 用户ID
	,`jobId` BIGINT DEFAULT 0	#[字段] 工作ID
	,`slaveId` BIGINT DEFAULT 0	#[字段] 工作机ID
	,`version` INT DEFAULT 0	#[字段] 版本号
	,`options` TEXT	#[字段] 其他数据
	,`status` INT DEFAULT 0	#[字段] 状态
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
	,INDEX `uid` (`uid` asc)	#[索引] 用户ID
	,INDEX `jobId` (`jobId` asc)	#[索引] 工作ID
	,INDEX `slaveId` (`slaveId` asc)	#[索引] 工作机ID
	,INDEX `status` (`status` asc)	#[索引] 状态
 ) AUTO_INCREMENT = 1;
#工作日志
CREATE TABLE IF NOT EXISTS `job_job_log` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 工作项ID
	,`message` TEXT	#[字段] 日志
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 工作项ID
 ) AUTO_INCREMENT = 1;
