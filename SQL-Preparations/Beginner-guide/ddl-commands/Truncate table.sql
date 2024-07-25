-- The TRUNCATE TABLE statement is a 
-- Data Definition Language (DDL) operation that is 
-- used to mark the extents of a table for deallocation (empty for reuse). 

--It effectively eliminates all records in a table, but not the table itself. 
-- Unlike the DELETE statement, TRUNCATE TABLE does not generate individual row delete statements,
-- so the usual overhead for logging or locking does not apply.

-- Syntax

-- TRUNCATE TABLE table_name;

eg: TRUNCATE TABLE employees;

    --important note

    --  - While Truncate table the data cannot be rolled back .
    --  - We cannot truncate a table that is referenced by a foreign key.

