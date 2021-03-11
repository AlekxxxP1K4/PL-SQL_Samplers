ACCEPT pemployee_id PROMPT
DECLARE
TYPE  employee_record_type IS RECORD 
          (employee_id   employees.employee_id%type,
           first_name    employees.first_name%type,
           last_name     employees.last_name%type,
           email         employees.email%type,
           phone_number  employees.phone_number%type);
employee_record  employee_record_type; 

BEGIN
SELECT  employee_id, first_name, last_name, email, phone_number
INTO    employee_record
FROM    employees
WHERE   employee_id = &pemployee_id;
DBMS_OUTPUT.PUT_LINE(employee_record.employee_id || ' - ' || 
                     employee_record.first_name || ' - ' || 
                     employee_record.last_name || ' - ' || 
                     employee_record.phone_number);
END;

/*

DECLARE
TYPE  EMPLOYEE_RECORD_TYPE IS RECORD 
          (EMPLOYEE_ID   EMPLOYEES.EMPLOYEE_ID%TYPE,
           FIRST_NAME    EMPLOYEES.FIRST_NAME%TYPE,
           LAST_NAME     EMPLOYEES.LAST_NAME%TYPE,
           EMAIL         EMPLOYEES.EMAIL%TYPE,
           PHONE_NUMBER  EMPLOYEES.PHONE_NUMBER%TYPE);
EMPLOYEE_RECORD  EMPLOYEE_RECORD_TYPE; 

BEGIN
SELECT  EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER
INTO    EMPLOYEE_RECORD
FROM    EMPLOYEES
WHERE   EMPLOYEE_ID = 106;
DBMS_OUTPUT.PUT_LINE(EMPLOYEE_RECORD.EMPLOYEE_ID || ' - ' || 
                     EMPLOYEE_RECORD.FIRST_NAME || ' - ' || 
                     EMPLOYEE_RECORD.LAST_NAME || ' - ' || 
                     EMPLOYEE_RECORD.PHONE_NUMBER);
END;
*/