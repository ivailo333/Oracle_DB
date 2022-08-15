-- Function which check if it exists client by given 'clientid'.
CREATE OR REPLACE FUNCTION IS_CLIENT 
( id_client IN NUMBER ) 
RETURN BOOLEAN 
AS
count_client NUMBER:=0;
is_having_client BOOLEAN:=false;
BEGIN
  SELECT COUNT(*)
  INTO count_client
  FROM clients
  WHERE clientid=id_client;
  
  IF count_client<>0 THEN
  is_having_client:=true;
  ELSE
  is_having_client:=false;
  END IF;
  
  RETURN is_having_client;
  
END IS_CLIENT;


-- Call the function 'IS_CLIENT'.
DECLARE
is_client BOOLEAN;
BEGIN
  is_client:="ivailohal".IS_CLIENT(33);
  IF is_client=true THEN
  dbms_output.put_line('TRUE');
  ELSE
  dbms_output.put_line('FALSE');
  END IF;
--rollback; 
END;


-- Function which check the salary for employee with 'employeeid'.
CREATE OR REPLACE FUNCTION SALARY_EMPLOYEE 
( id_employee IN NUMBER ) 
RETURN NUMBER 
AS 
salary_value NUMBER:=0;
BEGIN
SELECT salary
INTO salary_value
FROM employees
WHERE employeeid=id_employee;

  RETURN salary_value;
END SALARY_EMPLOYEE;



-- Call the function 'SALARY_EMPLOYEE'.
DECLARE
salary NUMBER;
BEGIN
  salary:="ivailohal".SALARY_EMPLOYEE(1);
  dbms_output.put_line('The salary is $' || salary || '.');
--rollback; 
END;


-- Show the smallest credit.
CREATE OR REPLACE FUNCTION MIN_CREDIT 
RETURN NUMBER 
AS
credit_minimum NUMBER:=0;
BEGIN
SELECT MIN(syze)
INTO credit_minimum
FROM credits;

  RETURN credit_minimum;
END MIN_CREDIT;



-- Call the function 'MIN_CREDIT'.
DECLARE
minimum_credit NUMBER;
BEGIN
  minimum_credit:="ivailohal".MIN_CREDIT();
  dbms_output.put_line('The smallest credit is $' || minimum_credit || '.');
--rollback; 
END;



-- Show the biggest deposit.
CREATE OR REPLACE FUNCTION MAX_DEPOSIT 
RETURN NUMBER 
AS 
deposit_maximum NUMBER:=0;
BEGIN
SELECT MAX(syze)
INTO deposit_maximum
FROM deposits;
  RETURN deposit_maximum;
END MAX_DEPOSIT;



-- Call the function 'MAX_DEPOSIT'.
DECLARE
maximum_deposit NUMBER;
BEGIN
  maximum_deposit:="ivailohal".MAX_DEPOSIT();
  dbms_output.put_line('The biggest deposit is $' || maximum_deposit || '.');
--rollback; 
END;




-- Show the branch city.
CREATE OR REPLACE FUNCTION BRANCHE_CITY 
( id_branche IN VARCHAR2 ) 
RETURN VARCHAR2 
AS
city_branche VARCHAR2(30);
BEGIN
SELECT city
INTO city_branche
from branches
where brancheid=id_branche;
  RETURN city_branche;
END BRANCHE_CITY;




-- Call the function 'BRANCHE_CITY'.
DECLARE
branche_city VARCHAR2(30);
BEGIN
  branche_city:="ivailohal".BRANCHE_CITY(1);
  dbms_output.put_line('The branche is located in ' || branche_city || '.');
--rollback; 
END;