# SQL Relationships

Welcome to the SQL Relationships repository! This repository is dedicated to helping you understand the different types of relationships in SQL databases. Knowing how to manage and utilize these relationships is crucial for effective database design and data integrity.

## Table of Contents

1. [Introduction](#introduction)
2. [Types of Relationships](#types-of-relationships)
    - [One-to-One](#one-to-one)
    - [One-to-Many](#one-to-many)
    - [Many-to-Many](#many-to-many)
    - [Self-Referencing](#self-referencing)
3. [Files Included](#files-included)
4. [Reference](#reference)
5. [Contributing](#contributing)

## Introduction

In SQL, a relationship refers to the connection between tables in a database. These relationships allow for the organization of data in a structured manner, ensuring data integrity and facilitating complex queries.

## Types of Relationships

### One-to-One

A one-to-one relationship occurs when each row in Table A is linked to exactly one row in Table B, and vice versa. This type of relationship is less common and often used for dividing a table for performance or organizational reasons.

### One-to-Many

A one-to-many relationship is the most common type of relationship. It occurs when each row in Table A can be linked to multiple rows in Table B. For example, a single customer can have multiple orders.

### Many-to-Many

A many-to-many relationship occurs when multiple rows in Table A can be linked to multiple rows in Table B. This type of relationship is typically managed using a junction table that holds foreign keys referencing the related rows in both tables. An example is students and courses, where a student can enroll in multiple courses and a course can have multiple students.

### Self-Referencing

A self-referencing relationship (or recursive relationship) occurs when rows within the same table are related. For instance, in an employee table, an employee can be a manager of other employees, creating a hierarchy within the same table.

## Files Included
In this repository, you will find:
- **[index.html](https://github.com/sanket-aher/Learning-SQL/blob/main/02.SQL%20Relationship/index.html):** A file containing all the information about SQL Relationships. You can download it and run it in your browser by double-clicking on the file to view the content.
- **[sqlRelationship.sql](https://github.com/sanket-aher/Learning-SQL/blob/main/02.SQL%20Relationship/sqlRelationship.sql):** A file with SQL Relationship command examples that you can run in your MySQL Workbench to practice your SQL relationship skills.

## Reference

For more detailed information about SQL relationships, you can refer to this comprehensive guide on [GeeksforGeeks](https://www.geeksforgeeks.org/relationships-in-sql-one-to-one-one-to-many-many-to-many/).

## Contributing

We welcome contributions from the community! If you have an improvement or an additional explanation to add, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-name`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Open a pull request.

Happy learning!