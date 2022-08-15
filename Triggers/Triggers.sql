-- create trigger for insert event for table CLIENTS
CREATE OR REPLACE TRIGGER TRIGGER_CLIENTS 
BEFORE INSERT ON CLIENTS 
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  INSERT INTO CLIENTS(clientid, fname, lname, age, professional, iban) VALUES (:new.clientid,:new.fname,:new.lname,:new.age,:new.professional,:new.iban);
END;


-- create trigger for insert event for table EMPLOYEES
CREATE OR REPLACE TRIGGER TRIGGER_EMPLOYEES 
AFTER INSERT ON EMPLOYEES 
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW 
BEGIN
  INSERT INTO EMPLOYEES(employeeid, fname, lname, age, position, salary) VALUES (:new.employeeid,:new.fname,:new.lname,:new.age,:new.position,:new.salary);
END;



-- create trigger for insert event for table CREDITS
CREATE OR REPLACE TRIGGER TRIGGER_CREDITS 
BEFORE INSERT ON CREDITS 
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW 
BEGIN
  INSERT INTO CREDITS(creditid, type, syze, term, interest_rate, currencyid, clientid) VALUES (:new.creditid,:new.type,:new.syze,:new.term,:new.interest_rate,:new.currencyid,:new.clientid);
END;




-- create trigger for insert event for table DEPOSITS
CREATE OR REPLACE TRIGGER TRIGGER_DEPOSITS 
AFTER INSERT ON DEPOSITS 
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  INSERT INTO DEPOSITS(depositid, type, syze, term, interest_rate, currencyid, clientid) VALUES (:new.depositid,:new.type,:new.syze,:new.term,:new.interest_rate,:new.currencyid,:new.clientid);
END;




-- create trigger for insert event for table BRANCHES
CREATE OR REPLACE TRIGGER TRIGGER_BRANCHES 
BEFORE INSERT ON BRANCHES 
REFERENCING OLD AS OLD NEW AS NEW 
FOR EACH ROW
BEGIN
  INSERT INTO BRANCHES(brancheid, city, address, employeeid) VALUES (:new.brancheid,:new.city,:new.address,:new.employeeid);
END;




-- create trigger for insert event for table CURRENCY
CREATE OR REPLACE TRIGGER TRIGGER_CURRENCY 
AFTER INSERT ON CURRENCY 
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  INSERT INTO CURRENCY(currencyid, name) VALUES (:new.currencyid,:new.name);
END;




-- create trigger for update event for table CLIENTS
CREATE OR REPLACE TRIGGER TRIGGER_CLIENTS2 
BEFORE UPDATE OF AGE ON CLIENTS 
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  UPDATE CLIENTS
  SET age=:new.age
  WHERE fname=:old.fname;
END;





-- create trigger for update event for table EMPLOYEES
CREATE OR REPLACE TRIGGER TRIGGER_EMPLOYEES2 
AFTER UPDATE OF SALARY ON EMPLOYEES 
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  UPDATE EMPLOYEES
  SET salary=:new.salary
  WHERE position=:old.position;
END;





-- create trigger for delete event for table CREDITS
CREATE OR REPLACE TRIGGER TRIGGER_CREDITS2 
BEFORE DELETE ON CREDITS 
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  DELETE FROM CREDITS
  WHERE type=:old.type; 
END;







-- create trigger for delete event for table DEPOSITS
CREATE OR REPLACE TRIGGER TRIGGER_DEPOSITS2 
AFTER DELETE ON DEPOSITS 
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
BEGIN
  DELETE FROM DEPOSITS
  WHERE syze=:old.size;
END;