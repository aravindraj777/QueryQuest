-- WHERE clause is used to filter the records.If the condition specified in 
-- where clause satisfies then only it returns the specific value from the table.

--Can use with SELECT,UPDATE,DELETE

-- example: 
        SELECT * FROM Students WHERE age > 10;

        --Retrieves the students who having the age greater than 10;

--example 2 : 
    
    --Update 
        UPDATE employee  SET salary = salary * 1.10 WHERE job_desc = "HR";

        --increase the salary of employees of job role HR to 10%;

--example 3 : 

    --DELETE
        DELETE FROM Employee WHERE job_desc = "HR";

        --DELETE the employees in HR category