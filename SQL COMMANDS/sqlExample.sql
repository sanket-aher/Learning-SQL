-- CREATE DATABSE Commands
CREATE DATABASE college;
-- OR
CREATE DATABASE IF NOT EXISTS instagram;

-- DROP DATABSE Commands
DROP DATABASE college;
-- OR
DROP DATABASE IF EXISTS college;

-- SHOW DATABSES Command
SHOW DATABASES;

-- SHOW TABLES Command
SHOW TABLES;

-- USE Which Database Command
USE instagram;

-- Ex1
CREATE DATABASE college;
CREATE DATABASE xyz;
DROP DATABASE xyz;
USE college;

-- Ex2
CREATE DATABASE stud;
CREATE DATABASE IF NOT EXISTS instagram;
DROP DATABASE IF EXISTS stud;
SHOW DATABASES;
USE instagram;
SHOW TABLES;

-- TABLE Queries : 1)CREATE 2)INSERT 3)UPDATE 4)ALTER 5)TRUNCATE 6)DELETE 7)DROP

-- 1)CREATE TABLE Command :
-- Ex3
CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT,
age INT,
name VARCHAR(30),
email VARCHAR(50),
followers INT,
following INT
);

-- Ex4 with constraints
CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

-- Ex5 with PRIMARY KEY AND FOREIGN KEY Constraints
CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

CREATE TABLE post(
id INT PRIMARY KEY,
content VARCHAR(100),
user_id INT,
FOREIGN KEY (user_id) REFERENCES user(id)
);

-- 2)INSERT INTO Command :
-- Ex6
CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306);

 -- SELECT Commands :
 -- 1] SELECT 
 -- Ex7
 CREATE DATABASE IF NOT EXISTS instagram;
 USE instagram;

	CREATE TABLE  user(
	id INT PRIMARY KEY,
	age INT,
	name VARCHAR(30) NOT NULL,
	email VARCHAR(50) UNIQUE,
	followers INT DEFAULT 0,
	following INT,
	CONSTRAINT CHECK (age >= 13) 
	);

	INSERT INTO user(id,age,name,email,followers,following)
	 VALUES 
	 (1,14,"adam","adam@yahoo.in",123,145),
	 (2,15,"bob","bob@gmail.com",200,200),
	 (3,16,"casey","casey@email.com",300,306);

	 select id,name,age from user;
	 select * from user;
 
 -- 2] SELECT DISTINCT :
 -- EX8
 CREATE DATABASE IF NOT EXISTS instagram;
 USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,15,"adam","adam@gmail.com",500,600),
 (5,16,"casey","c@gmail.com",700,800);

 select distinct age from user;
 select distinct age,name from user;
 
 -- 3] WHERE Clause :
 -- EX9
 CREATE DATABASE IF NOT EXISTS instagram;
 USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);

select * from user where followers >=200; 

-- Ex10 : Frequently used operators AND,OR,BETWEEN,IN,NOT.
CREATE DATABASE IF NOT EXISTS instagram;
 USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
select name,age,followers from user where age > 15 and followers > 200; 

select name,age,followers from user where age > 15 OR followers > 200;

select name,age,followers from user where age between 15 and 17;

select name,age,followers,email from user where email in ("donald@gmail.com","bob@gmail.com","abc@gmail.com");

select name,age from user where age in (14,16);

select name,age from user where age not in (14,16);

-- 4] LIMIT Clause :
-- Ex11

CREATE DATABASE IF NOT EXISTS instagram;
 USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
 select name,age from user where age>14;
 
 select name,age from user where age > 14 limit 2;
 
 select name,age from user limit 3;
 
 -- 5] ORDER BY Clause :
 -- Ex12 
 
 CREATE DATABASE IF NOT EXISTS instagram;
 USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
 select name,followers from user order by followers asc;
 
 select name,followers from user order by followers desc;
 
 select name,followers from user order by followers ; -- By default in ascending order if not mention
 
 -- 6] Aggregate Functions : MAX,MIN,SUM,AVG,COUNT
 -- Ex13
 
 CREATE DATABASE IF NOT EXISTS instagram;
 USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
 select max(followers) from user;
 
 select count(age) from user;
 
 select min(age) from user;
 
 select avg(age) from user;
 
 select sum(followers) from user;
 
 -- 7] GROUP BY Clause :
 -- Ex14
 
 CREATE DATABASE IF NOT EXISTS instagram;
 USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
 -- Q1 Find the number of count in each age?
 select age,count(id) from user group by age;
 
 -- Q2 Find the maximum number of followers in each age?
 select age,max(followers) from user group by age;

-- 8] HAVING clause :
-- Ex15

CREATE DATABASE IF NOT EXISTS instagram;
 USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
 -- Q.Find the maximum number of followers of each age having followers greater than 200?
 select age,max(followers) from user group by age having max(followers) > 200;
 
 -- General Order 
 -- Ex16

CREATE DATABASE IF NOT EXISTS instagram;
 USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
 -- Q.Find the maximum number of followers of each age in descending order having followers greater than 200?
 select age,max(followers) from user group by age having max(followers) > 200 order by age desc;
 
 -- TABLE QUERIES
 -- 3) UPDATE Table :
 -- Note : On SQL Workbench for update command there will be error sometimes so use before update command => SET  SQL_SAFE_UPDATES = 0;

-- Ex17 

CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
 update user set followers=600 where age=16;
 
 select * from user;
 
 -- 4) DELETE Table :
 -- Note : On SQL Workbench for delete command there will be error sometimes so use before update command => SET  SQL_SAFE_UPDATES = 0;

-- Ex18 

CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
delete from user where age=14;
select * from user;
 
delete from user;
select * from user;

-- 4) ALTER Table : i)ADD COLUMN, ii)DROP COLUMN  , iii)RENAME Table , iv)CHANGE COLUMN and v)MODIFY Column 
-- i)ADD COLUMN
-- Ex19 

CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
ALTER TABLE user ADD COLUMN city VARCHAR(25) DEFAULT "DELHI";
select name,city from user;
 
-- ii)DROP COLUMN 
-- Ex20

CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
ALTER TABLE user DROP COLUMN age;
select * from user;

-- iii) RENAME Table :

-- Ex21 

CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
ALTER TABLE user RENAME TO instauser;
select * from instauser;

-- iv) CHANGE COLUMN :

-- Ex22 

CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
ALTER TABLE user CHANGE COLUMN followers subs INT DEFAULT 0;
select * from user;

-- v) MODIFY Column :
-- Ex23 

CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
ALTER TABLE user MODIFY followers INT DEFAULT 5;

INSERT INTO user(id,age,name,email,following)
 VALUES 
 (7,20,"adam","adam@gmail.com",145);

select * from user;

-- 6) TRUNCATE TABLE :
-- Ex24

CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
TRUNCATE TABLE user;
select * from user;

-- 7) DROP TABLE :
-- Ex25 

CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE  user(
id INT PRIMARY KEY,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >= 13) 
);

INSERT INTO user(id,age,name,email,followers,following)
 VALUES 
 (1,14,"adam","adam@yahoo.in",123,145),
 (2,15,"bob","bob@gmail.com",200,200),
 (3,16,"casey","casey@email.com",300,306),
 (4,17,"donald","donald@gmail.com",200,105),
 (5,14,"eve","eve@yahoo.in",400,145),
 (6,16,"farah","farah@gmail.com",10000,1000);
 
DROP TABLE user;
SHOW TABLES;