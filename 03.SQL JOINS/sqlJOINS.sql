CREATE DATABASE JOINS;

USE JOINS;

-- Ex - Comman Example Query

CREATE TABLE student (
     student_id INT PRIMARY KEY,
     name VARCHAR(50)
);
CREATE TABLE course (
     student_id INT UNIQUE,
     course VARCHAR(50)
);


INSERT INTO student(student_id,name)
VALUES
(101,'adam'),
(102,'bob'),
(103,'casey');

INSERT INTO course(student_id,course)
VALUES
(102,'english'),
(105,'math'),
(103,'science'),
(107,'computer');

select * from student;
select * from course;
 
 -- INNER JOIN/JOIN 
 
 -- EX1
 select * from student as s
inner join course as c
on s.student_id = c.student_id;

-- LEFT JOIN/LEFT OUTER JOIN 
 
 -- EX2
select * from student as s
left join course as c
on s.student_id = c.student_id;

-- RIGHT JOIN/RIGHT OUTER JOIN 
 
 -- EX3
select * from student as s
right join course as c
on s.student_id = c.student_id;

-- FULL JOIN/FULL OUTER JOIN

-- EX4
select * from student as s
left join course as c
on s.student_id = c.student_id
union
select * from student as s
right join course as c
on s.student_id = c.student_id;

-- LEFT EXCLUSIVE JOIN 

-- EX5
select * from student as s
left join course as c
on s.student_id = c.student_id
where c.student_id is null;

-- RIGHT EXCLUSIVE JOIN 

-- EX6
select * from student as s
right join course as c
on s.student_id = c.student_id
where s.student_id is null;

-- FULL EXCLUSIVE JOIN 

-- EX7
select * from student as s
left join course as c
on s.student_id = c.student_id
where c.student_id is null
union
select * from student as s
right join course as c
on s.student_id = c.student_id
where s.student_id is null;

-- SELF JOIN

-- EX8
CREATE TABLE employee (
     id INT PRIMARY KEY,
     name VARCHAR(50),
     manager_id INT
);

INSERT INTO employee(id,name,manager_id)
VALUES
(101,'adam',103),
(102,'bob',104),
(103,'casey',null),
(104,'donald',103);

select * from employee;

select a.name as manager_name,b.name
from employee as a
join employee as b
on a.id = b.manager_id;