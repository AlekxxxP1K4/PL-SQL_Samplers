DECLARE
   vEmployee_id    employees.employee_id%type := 150;
   vPercentual     NUMBER(3) := 10;
BEGIN
   UPDATE employees 
   SET    salary = salary * (1 + vPercentual / 100)
   WHERE  employee_id =  vEmployee_id;
   COMMIT;  
END;

/*
DECLARE
   VEMPLOYEE_ID    EMPLOYEES.EMPLOYEE_ID%TYPE := 150;
   VPERCENTUAL     NUMBER(3) := 10;
BEGIN
   UPDATE EMPLOYEES 
   SET    SALARY = SALARY * (1 + VPERCENTUAL / 100)
   WHERE  EMPLOYEE_ID =  VEMPLOYEE_ID;
   COMMIT;  
END;
*/