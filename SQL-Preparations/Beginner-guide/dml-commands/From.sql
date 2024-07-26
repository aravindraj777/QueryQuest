--The 'FROM' clause in SQL specifies the tables from which the retreival 
--should be made.

-- Example 1 - Simple Usage

-- If you’ve a table called employees, you can select all employees’ data like this:

    SELECT * FROM employees;

--Example 2 - FROM with multiple tables

    --multiple tables,  Employees and Departments

     -- retrieve employee name from employees table and 
     -- his department_name from departments table 

    SELECT employee.name,departments.department_name
    FROM employees,departments
    WHERE employee.department_id = departments.department_id;

-- Example 3 - FROM with Aliases

    SELECT e.name, d.department 
    FROM employees AS e, departments AS d
    WHERE e.dept_id = d.dept_id;