CREATE TABLE `bbs` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `account_idx` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `readcount` varchar(100) NOT NULL,
  `regdate` datetime NOT NULL DEFAULT current_timestamp(),
  `modifydate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idx`),
  KEY `bbs_FK` (`account_idx`),
  CONSTRAINT `bbs_FK` FOREIGN KEY (`account_idx`) REFERENCES `account` (`idx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8