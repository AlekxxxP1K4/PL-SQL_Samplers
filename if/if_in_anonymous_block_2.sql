DECLARE
   vPercent     NUMBER(3);
   vDepartment_id  employees.employee_id%type := 60;
BEGIN
   IF  vDepartment_id  =  80 
   THEN 
       vPercent := 10;
   ELSIF vDepartment_id  =  20 
   THEN 
       vPercent := 15; 
   ELSIF vDepartment_id  =  60 
   THEN 
       vPercent := 20;
   ELSE
       vPercent := 5;
   END IF;
  
  DBMS_OUTPUT.PUT_LINE('DEP ID: ' || vDepartment_id);   
  DBMS_OUTPUT.PUT_LINE('PERCENT: ' || vPercent );   
  
  UPDATE employees 
  SET    salary = salary * (1 + vPercent / 100)
  WHERE department_id =  vDepartment_id;
  COMMIT;
END;

/*
DECLARE
   VPERCENT     NUMBER(3);
   VDEPARTMENT_ID  EMPLOYEES.EMPLOYEE_ID%TYPE := 60;
BEGIN
   IF  VDEPARTMENT_ID  =  80 
   THEN 
       VPERCENT := 10;
   ELSIF VDEPARTMENT_ID  =  20 
   THEN 
       VPERCENT := 15; 
   ELSIF VDEPARTMENT_ID  =  60 
   THEN 
       VPERCENT := 20;
   ELSE
       VPERCENT := 5;
   END IF;
  
  DBMS_OUTPUT.PUT_LINE('DEP ID: ' || VDEPARTMENT_ID);   
  DBMS_OUTPUT.PUT_LINE('PERCENT: ' || VPERCENT );   
  
  UPDATE EMPLOYEES 
  SET    SALARY = SALARY * (1 + VPERCENT / 100)
  WHERE DEPARTMENT_ID =  VDEPARTMENT_ID;
  COMMIT;
END;
*/