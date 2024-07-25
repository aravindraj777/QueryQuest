--The ALTER TABLE command in sql is used to add, delete/drop, or modify
-- columns in an existing table. It is also useful for adding and dropping 
    -- constraints such as primary key, foreign key etc. 

--ADD COLUMN

  -- Single column can be added using the syntax
  --    ALTER TABLE tableName 
        -- ADD 
            -- columnName datatype;

    -- example:
           ALTER TABLE  Employee ADD Age INT;

-- DROP COLUMN

    -- DROP SINGLE COLUMN
        -- ALTER TABLE tableName
           --- DROP 
                -- COLUMN columnName;
        ALTER TABLE Employee DROP column Age;          

-- MODIFY COLUMN 

    -- Modify the datatype of a colum
             
             -- ALTER TABLE tableName
                -- MODIFY
                 -- COLUMN columnName newDataType;

    --   example : 

            ALTER TABLE Employee
                MODIFY 
            Age VARCHAR(50);               
