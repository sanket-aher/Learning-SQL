# SQL COMMANDS

Welcome to the SQL COMMANDS repository! This repository provides a comprehensive overview of databases, differences between SQL and NoSQL, the basics of SQL (Structured Query Language), and detailed descriptions of SQL commands for managing databases and tables.

## Table of Contents

1. [What is a Database?](#what-is-a-database)
2. [Use of Databases](#use-of-databases)
3. [Difference Between SQL and NoSQL](#difference-between-sql-and-nosql)
4. [SQL (Structured Query Language)](#sql-structured-query-language)
5. [SQL Commands](#sql-commands)
    - [Database Queries](#database-queries)
    - [Table Queries](#table-queries)
    - [SELECT Queries](#select-queries)
6. [Additional Resources](#additional-resources)

## What is a Database?

A database is an organized collection of structured information, or data, typically stored electronically in a computer system. Databases allow for efficient storage, retrieval, and management of data. They are controlled by a database management system (DBMS), which provides tools for managing the data, ensuring data integrity, and facilitating access.

## Use of Databases

Databases are essential for various applications across multiple domains. They are used to store and manage large volumes of data, support transactions, ensure data security, and provide robust querying capabilities. Common use cases include:

- **Banking and Finance:** For managing customer information, transactions, and account details.
- **E-commerce:** For handling product inventories, customer orders, and sales data.
- **Social Media:** For storing user profiles, posts, and interactions.
- **Healthcare:** For managing patient records, treatment histories, and billing information.
- **Education:** For tracking student enrollments, grades, and schedules.

## Difference Between SQL and NoSQL

**SQL:** Relational databases using structured schemas, ideal for complex queries and transactional integrity. Examples: MySQL, PostgreSQL.

**NoSQL:** Non-relational databases handling unstructured data, designed for scalability and performance. Examples: MongoDB, Cassandra.

## SQL (Structured Query Language)

SQL is a standard programming language specifically designed for managing and manipulating relational databases. It enables users to perform various operations such as querying data, updating records, and managing database structures. SQL is fundamental for interacting with relational database management systems (RDBMS).

## SQL Commands

### Database Queries

- **CREATE DATABASE:** This command is used to create a new database. It helps in setting up a new environment for data storage.
- **USE database_name:** This command selects the database you want to work with. It sets the context for subsequent SQL commands.
- **DROP DATABASE:** This command deletes an existing database along with all its data. It is used for removing databases that are no longer needed.

### Table Queries

- **CREATE TABLE:** Used to create a new table within a database. It defines the structure of the table, including columns and data types.
- **INSERT INTO:** Used to add new records to a table. It allows for the insertion of data into specified columns.
- **UPDATE:** Used to modify existing records in a table. It enables updating of data based on specified conditions.
- **DELETE:** Used to remove records from a table. It deletes data based on given conditions.
- **ALTER TABLE:** Used to modify the structure of an existing table, such as adding, deleting, or modifying columns.
- **TRUNCATE TABLE:** Used to remove all records from a table without deleting the table itself. It is faster than a DELETE command with no conditions.
- **DROP TABLE:** Used to delete a table and all of its data. It removes the table definition and data permanently.

### SELECT Queries

- **SELECT:** Used to retrieve data from one or more tables. It allows for specifying columns and conditions to filter the results.
- **SELECT DISTINCT:** Retrieves unique values from specified columns, eliminating duplicates.
- **SELECT WHERE:** Filters records based on specified conditions, enabling selective retrieval of data.
- **SELECT ORDER BY:** Sorts the result set in ascending or descending order based on specified columns.

## Additional Resources

In this repository, you will find:
- [index.html](https://github.com/sanket-aher/Learning-SQL/blob/main/SQL%20COMMANDS/index.html): A file containing all the information about SQL Commands. You can download it and run it in your browser by double-clicking on the file to view the content.
- [sqlExamples.sql](https://github.com/sanket-aher/Learning-SQL/blob/main/SQL%20COMMANDS/sqlExample.sql): A file with SQL command examples that you can run in your MySQL Workbench to practice your SQL skills.

Happy learning!