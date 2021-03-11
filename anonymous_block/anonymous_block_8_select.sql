DECLARE
   vFirst_name  employees.first_name%type;
   vLast_name   employees.last_name%type;
   vSalary      employees.salary%type;
   vEmployee_id employees.employee_id%type := 121;
BEGIN
   SELECT first_name, last_name, salary
   INTO   vfirst_name, vlast_name, vsalary
   FROM   employees
   WHERE  employee_id = vEmployee_id;
   DBMS_OUTPUT.PUT_LINE('Employee Id: ' || vEmployee_id);
   DBMS_OUTPUT.PUT_LINE('Fist Name: ' || vFirst_name);
   DBMS_OUTPUT.PUT_LINE('Last Name: ' || vLast_name);
   DBMS_OUTPUT.PUT_LINE('Salary: ' || vSalary);
END;


/*
DECLARE
   VFIRST_NAME  EMPLOYEES.FIRST_NAME%TYPE;
   VLAST_NAME   EMPLOYEES.LAST_NAME%TYPE;
   VSALARY      EMPLOYEES.SALARY%TYPE;
   VEMPLOYEE_ID EMPLOYEES.EMPLOYEE_ID%TYPE := 121;
BEGIN
   SELECT FIRST_NAME, LAST_NAME, SALARY
   INTO   VFIRST_NAME, VLAST_NAME, VSALARY
   FROM   EMPLOYEES
   WHERE  EMPLOYEE_ID = VEMPLOYEE_ID;
   DBMS_OUTPUT.PUT_LINE('Employee Id: ' || VEMPLOYEE_ID);
   DBMS_OUTPUT.PUT_LINE('Fist Name: ' || VFIRST_NAME);
   DBMS_OUTPUT.PUT_LINE('Last Name: ' || VLAST_NAME);
   DBMS_OUTPUT.PUT_LINE('Salary: ' || VSALARY);
END;
*/