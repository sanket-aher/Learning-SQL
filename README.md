# Learning SQL with MySQL

Welcome to the Learning SQL repository! This repository is designed to help you master SQL (Structured Query Language) using MySQL databse, one of the most popular database management systems. Here you'll find exercises and resources to enhance your SQL skills.

## Table of Contents

1. [Introduction](#introduction)
2. [Getting Started](#getting-started)
3. [SQL Commands](#sql-commands)
4. [SQL Relationships](#sql-relationships)
5. [SQL Joins](#sql-joins)
6. [SQL Union and Union All](#sql-union-and-union-all)
7. [SQL Sub Queries](#sql-sub-queries)
8. [Exercises](#exercises)
9. [Resources](#resources)
10. [Contributing](#contributing)

## Introduction

SQL is a standard language for managing and manipulating databases. This repository provides exercises and curated resources to support your learning journey with MySQL.

## Getting Started

To get started with MySQL, you'll need to install the MySQL server and a client tool like MySQL Workbench. Follow the installation guides below based on your operating system:

- **[Install MySQL on Mac](https://www.youtube.com/watch?v=eZMV-fOPNLU)**
- **[Install MySQL on Windows](https://www.youtube.com/watch?v=WuBcTJnIuzo)**

After installation, you can connect to your MySQL server using MySQL Workbench or another SQL client.

## SQL Commands

[SQL COMMANDS](https://github.com/sanket-aher/Learning-SQL/tree/main/01.SQL%20COMMANDS)

Here is an overview of some essential SQL commands you will use frequently:

- **CREATE DATABASE:** Used to create a new database.
- **CREATE TABLE:** Used to create a new table within a database.
- **INSERT INTO:** Used to add new rows of data to a table.
- **SELECT:** Used to retrieve data from one or more tables.
- **UPDATE:** Used to modify existing data within a table.
- **DELETE:** Used to remove data from a table.
- **ALTER TABLE:** Used to modify the structure of an existing table (e.g., adding or deleting columns).
- **DROP TABLE:** Used to delete a table and all of its data.

## SQL Relationships

[SQL Relationships](https://github.com/sanket-aher/Learning-SQL/tree/main/02.SQL%20Relationship)

In a relational database, tables are related to each other through keys. Understanding these relationships is crucial for designing a well-structured database.

- **One-to-One:** Each row in Table A is linked to a single row in Table B.
- **One-to-Many:** Each row in Table A is linked to multiple rows in Table B.
- **Many-to-Many:** Rows in Table A are linked to multiple rows in Table B and vice versa. This is typically handled using a junction table.
- **Self-Referencing:** A table that has a relationship with itself. For example, an employee table where each employee can have a manager, and both employees and managers are stored in the same table.

## SQL Joins

[SQL Joins](https://github.com/sanket-aher/Learning-SQL/tree/main/03.SQL%20JOINS)

Joins are used in SQL to combine rows from two or more tables based on a related column between them. Here are the most common types of joins:

- **INNER JOIN:** Returns records that have matching values in both tables.
- **LEFT JOIN (LEFT OUTER JOIN):** Returns all records from the left table and the matched records from the right table. If no match is found, NULL values are returned for columns from the right table.
- **RIGHT JOIN (RIGHT OUTER JOIN):** Returns all records from the right table and the matched records from the left table. If no match is found, NULL values are returned for columns from the left table.
- **FULL JOIN (FULL OUTER JOIN):** Returns all records when there is a match in either left or right table. Records from both tables are included, and if no match is found, NULL values are returned for non-matching rows from both tables.

## SQL Union and Union All

[SQL Union and Union All](https://github.com/sanket-aher/Learning-SQL/tree/main/04.SQL%20UNION%20and%20UNION%20ALL)

The UNION and UNION ALL operators are used to combine the results of two or more SELECT queries.

- **UNION:** Combines the result sets of two or more SELECT queries and removes duplicate rows.
- **UNION ALL:** Combines the result sets of two or more SELECT queries and includes all duplicate rows.

Both operators require that the number of columns and their data types must be the same in all the SELECT queries being combined.

## SQL Sub Queries

[SQL Sub Queries](https://github.com/sanket-aher/Learning-SQL/tree/main/05.SQL%20Sub%20Queries)

A subquery, or inner query, is a query nested within another SQL query. Subqueries can be used in SELECT, INSERT, UPDATE, or DELETE statements to perform complex operations.

- **Single-row Subquery:** Returns only one row.
- **Multiple-row Subquery:** Returns multiple rows.
- **Multiple-column Subquery:** Returns multiple columns.

Subqueries can be used with the following SQL clauses:
- **WHERE:** To filter results based on the outcome of the subquery.
- **FROM:** To use the subquery as a temporary table.
- **SELECT:** To include a column in the result set based on the subquery.


## Exercises
 [Practise Sets SQL](https://github.com/sanket-aher/Learning-SQL/tree/main/Practise%20Sets%20SQL)

Practice Sets your SQL skills with these exercises:


- **Basic Queries Practise Set**
- **Intermediate Queries Practise Set**

Each set of exercises comes with solutions to help you check your work and understand the correct approach.

## Resources

Explore these additional resources to further your SQL knowledge:

- **Books**
- **Documentation**
- **Community Forums**

## Contributing

We welcome contributions from the community! If you have an exercise or resource to add, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-name`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Open a pull request.

Happy learning!