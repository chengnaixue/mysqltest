#创建数据库
DROP DATABASE IF EXISTS Dpro;
CREATE  DATABASE Dpro
CHARACTER SET utf8
;

USE Dpro;

#创建部门表
DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee
(id INT NOT NULL PRIMARY KEY COMMENT '主键',
 name VARCHAR(20) NOT NULL COMMENT '人名',
 depid INT NOT NULL COMMENT '部门id'
);

#插入测试数据
INSERT INTO Employee(id,name,depid) VALUES(1,'陈',100),(2,'王',101),(3,'张',101),(4,'李',102),(5,'郭',103);

#创建存储过程
DROP PROCEDURE IF EXISTS Pro_Employee;
DELIMITER $$
CREATE PROCEDURE Pro_Employee(IN pdepid VARCHAR(20),OUT pcount INT )
READS SQL DATA
SQL SECURITY INVOKER
BEGIN
SELECT COUNT(id) INTO pcount FROM Employee WHERE depid=pdepid;

END$$
DELIMITER ;

#执行存储过程
CALL Pro_Employee(101,@pcount);

SELECT @pcount;

