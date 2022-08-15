-- Index for table 'CLIENTS' with columns 'fname' and 'lname'.
CREATE UNIQUE INDEX CLIENTS_NAME_I 
ON CLIENTS (FNAME ASC, LNAME ASC);




-- Show indexes from table 'CLIENTS'.
SELECT
index_name,
index_type,
visibility,
status
FROM
all_indexes
WHERE
table_name='CLIENTS';




-- Explain plan for table 'CLIENTS'
EXPLAIN PLAN FOR
SELECT *
FROM clients
WHERE fname LIKE '%T1' AND lname LIKE '%T1';




-- Show the content from table 'CLIENTS'.
SELECT 
PLAN_TABLE_OUTPUT
FROM
TABLE(DBMS_XPLAN.DISPLAY());




-- Index for table 'EMPLOYEES' with columns 'fname' and 'lname'.
CREATE UNIQUE INDEX EMPLOYEE_NAME_I 
ON EMPLOYEES (FNAME ASC, LNAME ASC);




-- Show indexes from table 'EMPLOYEES'.
SELECT
index_name,
index_type,
visibility,
status
FROM
all_indexes
WHERE
table_name='EMPLOYEES';




-- Explain plan for table 'EMPLOYEES'
EXPLAIN PLAN FOR
SELECT *
FROM employees
WHERE fname LIKE '%E1' AND lname LIKE '%E1';




-- Show the content from table 'EMPLOYEES'.
SELECT 
PLAN_TABLE_OUTPUT
FROM
TABLE(DBMS_XPLAN.DISPLAY());