--The CREATE TABLE statement in SQL is a Data Definition Language (DDL) command 
--used to create a new table in the database.


-- CREATE TABLE table_name (
--     column1 datatype,
--     column2 datatype,
--     column3 datatype,
--    ....
-- );


-- table_name is the name of the table that you want to create.
-- column1, column2,... are the columns in the table.
-- datatype is the data type for the column, such as varchar, int, date, etc.

--example:

CREATE TABLE IF NOT EXISTS 
Employee(
    ID INT,
    employee_name VARCHAR(50),
    employee_email VARCHAR(50)
) ;

-- This SQL command creates a new table named 
-- Employee with three columns, named ‘ID’, 
-- ‘employee_name’and ‘employee_email’. 
-- The data types are int for the ‘ID’ varchar(50) for ‘employee_name’, 
-- and varchar(50) for employee_email.


-- SQL CREATE TABLE with NOT NULL

-- The NOT NULL constraint enforces a column to not accept null values.
--  When creating a new table, you can add this constraint.
--   Here is a practical example:

CREATE TABLE Employees(
    ID INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    salary INT,
    department VARCHAR(255)
);