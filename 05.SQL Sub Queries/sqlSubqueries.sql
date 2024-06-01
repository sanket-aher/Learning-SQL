CREATE DATABASE sub;

USE sub;

-- Ex - Comman Example Query

CREATE TABLE student (
     rollno INT PRIMARY KEY,
     name VARCHAR(50),
     marks INT,
     city VARCHAR(50)
);

INSERT INTO student(rollno,name,marks,city)
VALUES
(101,'anil',78,'Pune'),
(102,'bhumika',93,'Mumbai'),
(103,'chetan',85,'Mumbai'),
(104,'dhruv',96,'Delhi'),
(105,'emanuel',92,'Delhi'),
(106,'farah',82,'Delhi');

select * from student;

-- Example of where

-- Ex 1 : Get names of all students who scored more than class average.
-- Step1 :Find the avg of class.
-- Step2 :Find the names of students with marks>avg.

select name,marks from student
where marks > (select avg(marks) from student);

-- Ex 2 : Find the names of all students with even roll numbers.
-- Step1 :Find the even roll numbers.
-- Step2 :Find the names of students with even roll numbers.

select name,rollno from student
where rollno IN (select rollno from student where rollno % 2 = 0);

-- Example of from

-- Ex 1 : Find the max marks from the students of Delhi.
-- Step1 :Find the students of Delhi.
-- Step2 :Find their max marks using the sublist in step1.

select max(marks)
from (select * from student where city="Delhi") As temp;

-- Example of select

-- Ex 1 :

select (select max(marks) from student) as st,name
from student;

