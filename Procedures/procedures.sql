-- Show contact information for client with determined 'clientid'.
CREATE OR REPLACE PROCEDURE CONTACT_CLIENT 
(
  id_client IN NUMBER 
) AS 
r_client clients%ROWTYPE;
BEGIN
  SELECT *
  INTO r_client
  FROM clients
  WHERE id_client=clientid;
  
  dbms_output.put_line(r_client.fname || ' ' || r_client.lname || ' ' || r_client.age || ' ' || r_client.professional);
END CONTACT_CLIENT;




-- Show contact information for empployee with determined 'employeeid'.
CREATE OR REPLACE PROCEDURE EMPLOYEE_INFORMATION 
(
  id_employee IN NUMBER 
) AS
r_employee employees%ROWTYPE;
BEGIN
  SELECT *
  into r_employee
  FROM employees
  WHERE id_employee=employeeid;
  
  dbms_output.put_line(r_employee.fname || ' ' || r_employee.lname || ' ' || r_employee.age || ' ' || r_employee.position || ' ' || '$' || r_employee.salary);
END EMPLOYEE_INFORMATION;




-- Show contact information for branche with determined 'brancheid'.
CREATE OR REPLACE PROCEDURE INFO_BRANCHES 
(
  id_branche IN NUMBER 
) AS
r_branche branches%ROWTYPE;
BEGIN
  SELECT *
  INTO r_branche
  FROM branches
  WHERE id_branche=brancheid;
  
  
  dbms_output.put_line(r_branche.city || ' ' || r_branche.address);
END INFO_BRANCHES;





-- Show contact information for credits with determined 'creditid'.
CREATE OR REPLACE  PROCEDURE CREDIT_INFO 
(
  id_credit IN NUMBER
) AS 
r_credit credits%ROWTYPE;
BEGIN
  SELECT *
  INTO r_credit
  FROM credits
  WHERE id_credit=creditid;
  

  dbms_output.put_line('Credit type ' || r_credit.type || ' ' || '$' || r_credit.syze || ' ' || r_credit.term || ' years ' || ' ' || r_credit.interest_rate || '%.');
END CREDIT_INFO;





-- Show contact information for deposits with determined 'depositid'.
CREATE OR REPLACE PROCEDURE DEPOSIT_INFO 
(
  id_deposit IN NUMBER 
) AS 
r_deposit deposits%ROWTYPE;
BEGIN
  SELECT *
  INTO r_deposit
  FROM deposits
  WHERE id_deposit=depositid;
  
  dbms_output.put_line('Deposit type ' || r_deposit.type || ' ' || '$' || r_deposit.syze || ' ' || r_deposit.term || ' years ' || ' ' || r_deposit.interest_rate || '%.');
END DEPOSIT_INFO;