CREATE TABLE `account` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) NOT NULL COMMENT '아이디',
  `pw` varchar(100) NOT NULL COMMENT '비번',
  `platform` varchar(100) NOT NULL DEFAULT 'default' COMMENT '가입방법',
  `token` varchar(100) NOT NULL DEFAULT '' COMMENT '토큰',
  `email` varchar(100) NOT NULL COMMENT '이메일',
  `nickname` varchar(100) NOT NULL COMMENT '닉네임',
  `zipcode` varchar(100) DEFAULT NULL COMMENT '우편번호',
  `address` varchar(100) DEFAULT NULL COMMENT '주소',
  `extraaddress` varchar(100) DEFAULT NULL COMMENT '추가주소',
  `regdate` datetime NOT NULL DEFAULT current_timestamp() COMMENT '가입일',
  `modifydate` datetime NOT NULL DEFAULT current_timestamp() COMMENT '변경일',
  PRIMARY KEY (`idx`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8