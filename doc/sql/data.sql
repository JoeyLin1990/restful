CREATE DATABASE `data` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `user` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `sid` varchar(7) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`),
  KEY `name` (`name`),
  KEY `pwd` (`pwd`),
  KEY `status` (`status`),
  UNIQUE KEY `idx_UNIQUE` (`idx`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `sid_UNIQUE` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `note` (
  `idx` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `idx_UNIQUE` (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
