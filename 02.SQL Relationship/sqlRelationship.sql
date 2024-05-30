CREATE DATABASE relationship;
use relationship;

-- Ex of One-to-One Relationship

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50)
);
    
CREATE TABLE user_profiles (
    profile_id INT PRIMARY KEY,
    profile_data VARCHAR(255),
    user_id INT UNIQUE,
FOREIGN KEY (user_id) REFERENCES users(user_id)
); 

INSERT INTO users(user_id,username)
VALUES 
(1,'ramesh'),
(2,'riya');

INSERT INTO user_profiles(profile_id,profile_data,user_id)
VALUES
(11,'xyz',1),
(12,'abc',2),
(13,'gfg',null);

select * from users;
select * from user_profiles;

-- Ex of One-to-Many Relationship

CREATE TABLE departments (
	department_id INT PRIMARY KEY,
	department_name VARCHAR(50)
);

CREATE TABLE employees (
	employee_id INT PRIMARY KEY,
	employee_name VARCHAR(50),
	department_id INT,
	FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments(department_id,department_name)
VALUES 
(1,'techical'),
(2,'accounts'),
(3,'pr');

INSERT INTO employees(employee_id,employee_name,department_id)
VALUES
(11,'Ramesh',3),
(12,'Riya',1),
(13,'Neha',2),
(14,'Mayank',1);

select * from departments;
select * from employees;

-- Ex of Many-to-Many Relationship

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);
CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students(student_id,student_name)
VALUES 
(1,'Alice'),
(2,'Bob'),
(3,'Charlie');

INSERT INTO courses(course_id,course_name)
VALUES
(101,'Maths'),
(102,'History'),
(103,'Computer');

INSERT INTO student_courses(student_id,course_id)
VALUES
(1,101),
(1,102),
(2,102);

select * from students;
select * from courses;
select * from student_courses;

-- Ex of Self-Referencing Relationship

CREATE TABLE employeesRecord (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employeesRecord(employee_id)
);

INSERT INTO employeesRecord(employee_id,employee_name,manager_id)
VALUES
(1,'Alice',null),
(2,'Bob',1),
(3,'Charlie',1);

select * from employeesRecord;

