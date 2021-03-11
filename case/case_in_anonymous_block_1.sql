DECLARE
   vPercent     NUMBER(3);
   vDepartment_id  employees.employee_id%type := 60;
BEGIN
   CASE  
   WHEN  vDepartment_id = 80 
   THEN 
        vPercent := 10;
   WHEN  vDepartment_id = 20 
   THEN 
         vPercent := 15;
   WHEN  vDepartment_id = 60 
   THEN 
         vPercent := 20;
   ELSE 
         vPercent := 5;
   END CASE;
   DBMS_OUTPUT.PUT_LINE('DEP ID: ' || vDepartment_id);   
   DBMS_OUTPUT.PUT_LINE('PERCENT: ' || vPercent );     
   UPDATE employees 
   SET salary = salary * (1 + vPercent / 100)
   WHERE department_id =  &pdepartment_id;
   COMMIT; 
 END;