# SQL Joins

Welcome to the SQL Joins repository! This repository is dedicated to helping you understand the different types of joins in SQL databases. Joins are crucial for combining data from multiple tables based on related columns, enabling complex queries and insightful data analysis.

## Table of Contents

1. [Introduction](#introduction)
2. [Types of SQL Joins](#types-of-sql-joins)
    - [INNER JOIN / JOIN](#inner-join--join)
    - [LEFT JOIN / LEFT OUTER JOIN](#left-join--left-outer-join)
    - [RIGHT JOIN / RIGHT OUTER JOIN](#right-join--right-outer-join)
    - [FULL JOIN / FULL OUTER JOIN](#full-join--full-outer-join)
    - [LEFT EXCLUSIVE JOIN](#left-exclusive-join)
    - [RIGHT EXCLUSIVE JOIN](#right-exclusive-join)
    - [FULL EXCLUSIVE JOIN](#full-exclusive-join)
    - [SELF JOIN](#self-join)
3. [Files Included](#files-included)
4. [Contributing](#contributing)

## Introduction

SQL joins are used to combine rows from two or more tables based on a related column between them. Understanding joins is essential for querying relational databases effectively and for ensuring that you can retrieve and analyze data efficiently.

## Types of SQL Joins

### INNER JOIN / JOIN

The INNER JOIN, also known simply as JOIN, returns records that have matching values in both tables. It only includes rows where there is a match in both tables.

### LEFT JOIN / LEFT OUTER JOIN

The LEFT JOIN, or LEFT OUTER JOIN, returns all records from the left table and the matched records from the right table. If no match is found, NULL values are returned for columns from the right table.

### RIGHT JOIN / RIGHT OUTER JOIN

The RIGHT JOIN, or RIGHT OUTER JOIN, returns all records from the right table and the matched records from the left table. If no match is found, NULL values are returned for columns from the left table.

### FULL JOIN / FULL OUTER JOIN

The FULL JOIN, or FULL OUTER JOIN, returns all records when there is a match in either left or right table. Records from both tables are included, and if no match is found, NULL values are returned for non-matching rows from both tables.

### LEFT EXCLUSIVE JOIN

The LEFT EXCLUSIVE JOIN returns only the rows from the left table that do not have a matching row in the right table.

### RIGHT EXCLUSIVE JOIN

The RIGHT EXCLUSIVE JOIN returns only the rows from the right table that do not have a matching row in the left table.

### FULL EXCLUSIVE JOIN

The FULL EXCLUSIVE JOIN returns all rows from both tables that do not have a match. It is essentially the opposite of the INNER JOIN.

### SELF JOIN

A SELF JOIN is a regular join, but the table is joined with itself. It is useful for querying hierarchical data or comparing rows within the same table.

## Files Included

- **[index.html](https://github.com/sanket-aher/Learning-SQL/blob/main/03.SQL%20JOINS/index.html):** A file containing all the information about SQL joins. You can download it and run it in your browser by double-clicking on the file to view the content.
- **[sqlJOINS.sql](https://github.com/sanket-aher/Learning-SQL/blob/main/03.SQL%20JOINS/sqlJOINS.sql):** A file with SQL Joins command examples that you can run in your MySQL Workbench to practice your SQL join skills.

## Contributing

We welcome contributions from the community! If you have an improvement or an additional explanation to add, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-name`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Open a pull request.

Happy learning!