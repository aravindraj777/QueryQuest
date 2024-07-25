
--The DROP TABLE statement is a Data Definition Language (DDL) operation 
--that is used to completely remove a table from the database. 

-- It deletes the table structure along with all the data in it 
-- and 
-- remove the table from the database system effectively.

-- Unlike truncate statement which dosen't  remove the assosciated 
-- indexes, constraints and triggers
-- drop table removes the table along with its datas also its assosciated
-- indexes,constraints and triggers also.

--Syntax

  -- DROP TABLE table_name;

-- example :

        DROP TABLE Employees;
        DROP TABLE IF EXISTS Employees; -- if exists then drop

--Considerations: 
   
   -- irreversible action :  once table is dropped , the action cannot be rolled back .
   -- cascading effects : Dropping a table referenced by foreign key is not allowed.
