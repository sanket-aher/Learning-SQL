CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
	name VARCHAR(50),
	city VARCHAR(50),
	marks INT
);

INSERT INTO student(rollno,name,city,marks)
VALUES
(110,"adam","Delhi",76),
(108,"bob","Mumbai",65),
(124,"casey","Pune",94),
(112,"duke","Pune",80);

-- Sol1 
SELECT * FROM student
WHERE marks > 75;

-- Sol2
-- 1st Way
SELECT DISTINCT city FROM student;

-- 2nd Way
SELECT city FROM student GROUP BY city;

-- Sol3
SELECT max(marks),city
FROM student
GROUP BY city;

-- Sol4
SELECT avg(marks) FROM student;

-- Sol5
ALTER TABLE student 
ADD COLUMN grade VARCHAR(2);

SET SQL_SAFE_UPDATES=0;
UPDATE student SET grade="O" WHERE marks >= 80;
UPDATE student SET grade="A" WHERE marks >= 70 AND marks < 80;
UPDATE student SET grade="B" WHERE marks >= 60 AND marks < 70;

SELECT * FROM student;