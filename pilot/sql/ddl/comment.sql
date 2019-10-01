CREATE TABLE `comment` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `bbs_idx` int(11) NOT NULL,
  `account_idx` int(11) NOT NULL,
  `content` text NOT NULL,
  `regdate` datetime NOT NULL DEFAULT current_timestamp(),
  `modifydate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`idx`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8