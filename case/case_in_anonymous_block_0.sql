DECLARE
   vPercent     NUMBER(3);
   vDepartment_id  employees.employee_id%type := 80;
BEGIN
   CASE  vDepartment_id
   WHEN  80 
   THEN 
        vPercent := 10;
   WHEN  20 
   THEN 
         vPercent := 15; 
   WHEN  60 
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