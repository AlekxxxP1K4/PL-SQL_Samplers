ACCEPT pdepartment_id PROMPT 'SET ID TO DEP: '
DECLARE
   vPercent     NUMBER(3);
   vDepartment_id  employees.employee_id%type := &pdepartment_id;
BEGIN
   IF  vDepartment_id  =  80 
   THEN 
       vPercent  := 10;
   ELSE 
       IF  vDepartment_id  =  20 
       THEN 
           vPercent  := 15;
       ELSE
           IF  vDepartment_id  =  60 
           THEN 
               vPercent  := 20;
           ELSE 
               vPercent  := 5;
           END IF;
       END IF;
  END IF;
  
  DBMS_OUTPUT.PUT_LINE('Dep ID: ' || vDepartment_id);   
  DBMS_OUTPUT.PUT_LINE('Percent: ' || vPercent );   
  
  UPDATE employees 
  SET    salary = salary * (1 + vPercent / 100)
  WHERE department_id =  vDepartment_id;
  COMMIT;
END;