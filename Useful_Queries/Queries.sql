-- select First name and Last name from table CLIENTS.
SELECT fname, lname 
FROM CLIENTS

-- select First and Last name from table EMPLOYEES where salary is less from 3000 lv. 
SELECT fname, lname 
FROM EMPLOYEES 
WHERE salary<3000

-- select all credits which size less from 4000 lv.
SELECT type,syze,term,interest_rate 
FROM CREDITS 
WHERE syze<4000

-- select all deposits which size is less 3000 and more 2000 lv.
SELECT * 
FROM DEPOSITS 
WHERE syze BETWEEN 2000 and 3000


-- select all currency which they start with letter 'B'
SELECT * 
FROM CURRENCY 
WHERE name LIKE 'B%'


-- count clients from table CLIENTS
SELECT COUNT(*) 
FROM CLIENTS


-- count employees which have salari less 3000lv.
SELECT COUNT(*) 
FROM EMPLOYEES 
WHERE salary<3000


-- show the total salary of the employees from table EMPLOYEES
SELECT SUM(salary) 
FROM EMPLOYEES


-- show the average salary of the employees from table EMPLOYEES
SELECT AVG(salary) 
FROM EMPLOYEES


-- show the minimum interest_rate of the credits
SELECT MIN(interest_rate) 
FROM CREDITS


-- show the maximum size of the credits
SELECT MAX(syze) 
FROM DEPOSITS


-- select client which has credits
SELECT fname, lname, age, type, syze, term, interest_rate 
FROM clients, credits
WHERE clients.clientid=credits.clientid


-- select client which has deposits
SELECT fname, lname, age, type, syze, term, interest_rate 
FROM clients, deposits
WHERE clients.clientid=deposits.clientid


-- select the data FROM two tables CREDITS and CURRENCY
SELECT type, syze, term, interest_rate, name 
FROM credits, currency 
WHERE credits.currencyid=currency.currencyid



-- select the data FROM two tables DEPOSITS and CURRENCY
SELECT type, syze, term, interest_rate, name 
FROM deposits, currency 
WHERE deposits.currencyid=currency.currencyid