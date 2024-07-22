--Stored procedure = is prepared SQL code that you can save 
--                    great if there's a query that you write often


--example one 

--Table name : Employee
-- +--------+-----------+----------+-------------------------+-------------+
-- | UserID | FirstName | LastName | Email                   | DateOfBirth |
-- +--------+-----------+----------+-------------------------+-------------+
-- | 1      | John      | Doe      | john.doe@example.com    | 1990-01-01  |
-- | 2      | Jane      | Smith    | jane.smith@example.com  | 1985-05-23  |
-- | 3      | Alice     | Johnson  | alice.johnson@example.com | 1992-11-15|
-- +--------+-----------+----------+-------------------------+-------------+



--create a procedure
DELIMITER $$
CREATE PROCEDURE get_employees()
BEGIN
    SELECT * FROM Employee;
END $$
DELIMITER ;

--call a procedure
CALL get_employees();
    --result
    -- +--------+-----------+----------+-------------------------+-------------+
-- | UserID | FirstName | LastName | Email                   | DateOfBirth |
-- +--------+-----------+----------+-------------------------+-------------+
-- | 1      | John      | Doe      | john.doe@example.com    | 1990-01-01  |
-- | 2      | Jane      | Smith    | jane.smith@example.com  | 1985-05-23  |
-- | 3      | Alice     | Johnson  | alice.johnson@example.com | 1992-11-15|
-- +--------+-----------+----------+-------------------------+-------------+


--drop procedure
DROP PROCEDURE get_employees;


--Example: Passing Parameters to a Stored Procedure
--Objective: Create a stored procedure that takes an id parameter to find an employee by their UserID.

DELIMITER $$
CREATE PROCEDURE find_employee(IN id INT )
BEGIN
    SELECT * FROM Employee
    WHERE UserID = id;
END $$
DELIMITER   

--call find_employee()

call find_employee(2)

    --output
-- +--------+-----------+----------+-------------------------+-------------+
-- | UserID | FirstName | LastName | Email                   | DateOfBirth |
-- +--------+-----------+----------+-------------------------+-------------+
-- | 2      | Jane      | Smith    | jane.smith@example.com  | 1985-05-23  |
-- +--------+-----------+----------+-------------------------+-------------+


--Example: Passing multiple Parameters to a Stored Procedure
--Objective: Create a stored procedure that takes FIRSTNAME and LASTNAME AS  parameter to find an employee by their FIRSTNAME and LASTNAME.

--Solution

DELIMITER $$
CREATE PROCEDURE findByFirstAndLastName(
		IN f_name VARCHAR(50),
        IN l_name VARCHAR(50)
      )
   BEGIN
     SELECT * FROM employee
     WHERE 
     first_name = f_name
     AND 
     last_name = l_name;
   END $$
DELIMITER  

--call findByFirstAndLastName(f_name,l_name)

    CALL findByFirstAndLastName("John","Doe");

    --Result 

 -- +--------+-----------+----------+-------------------------+-------------+
-- | UserID | FirstName | LastName | Email                   | DateOfBirth |
-- +--------+-----------+----------+-------------------------+-------------+
-- | 1      | John      | Doe      | john.doe@example.com    | 1990-01-01  |
-- +--------+-----------+----------+-------------------------+-------------+