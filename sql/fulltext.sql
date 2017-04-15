CREATE TABLE `article` (

  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,

  `title` varchar(200) DEFAULT NULL,

  `content` text,

  PRIMARY KEY (`id`),

  FULLTEXT KEY `title` (`title`,`content`)

) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE article ADD FULLTEXT INDEX fulltext_article(title,content);

SELECT * FROM article WHERE MATCH(title,content) AGAINST (‘查询字符串’);

