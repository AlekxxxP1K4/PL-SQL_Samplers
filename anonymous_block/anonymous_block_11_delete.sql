SET SERVEROUTPUT ON
DECLARE
   vEmployee_id  employees.employee_id%type := 207;
BEGIN
   DELETE FROM employees 
   WHERE  employee_id =  vEmployee_id;
   COMMIT;  
END;


/*
SET SERVEROUTPUT ON
DECLARE
   VEMPLOYEE_ID  EMPLOYEES.EMPLOYEE_ID%TYPE := 207;
BEGIN
   DELETE FROM EMPLOYEES 
   WHERE  EMPLOYEE_ID =  VEMPLOYEE_ID;
   COMMIT;  
END;
*/