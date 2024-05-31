CREATE DATABASE un;

USE un;

-- Ex - Comman Example Query

CREATE TABLE customer (
     customer_id INT PRIMARY KEY,
     customerName VARCHAR(50),
     Age INT
);

INSERT INTO customer(customer_id,customerName,Age)
VALUES
(1,'Shubham',23),
(2,'Aman',21),
(3,'Riya',22),
(4,'Rahul',22),
(5,'Mayank',22),
(6,'Ankit',22);

select * from customer;

-- Examples of UNION Operator

-- Ex1 - Twice Fetch and Combine Record for employees whose CustomerID lie between 1 and 4.

select * from customer
where customer_id between 1 and 4
UNION
select * from customer
where customer_id between 1 and 4;

-- Example 2: Fetch and Combine Record for Employees Whose CustomerID lie between 1 to 4 and 3 to 6.

select * from customer
where customer_id between 1 and 4
UNION
select * from customer
where customer_id between 3 and 6;

-- Examples of UNION ALL Operator

-- Example 1: Twice Fetch and Combine Record for employees whose CustomerID lie between 1 and 4.

select * from customer
where customer_id between 1 and 4
UNION ALL
select * from customer
where customer_id between 1 and 4;

-- Example 2: Fetch and Combine Record for Employees Whose CustomerID lie between 1 to 4 and 3 to 6.

select * from customer
where customer_id between 1 and 4
UNION ALL
select * from customer
where customer_id between 3 and 6;