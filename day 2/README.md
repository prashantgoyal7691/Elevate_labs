# SQL Task 2 – Data Types & Constraints

## Objective
To understand SQL data types, constraints, and table modification commands.

## Concepts Used
- PRIMARY KEY
- NOT NULL
- UNIQUE
- ALTER TABLE
- DROP COLUMN
- RENAME COLUMN

## Outcome
Learned how constraints maintain data integrity and how to safely modify table structure.

## Errors:
-Duplicate email (UNIQUE violation)
 -INSERT INTO students VALUES
 -(3, 'Mohit Singh', 'rahul@gmail.com', '2005-01-10', 19);
 Error Code: 1062. Duplicate entry 'rahul@gmail.com' for key 'students.email'

-NULL name (NOT NULL violation)
 -INSERT INTO students VALUES
 -(4, NULL, 'pooja@gmail.com', '2002-06-15', 22);
 Error Code: 1048. Column 'name' cannot be null
