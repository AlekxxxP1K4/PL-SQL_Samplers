ACCEPT pemployee_id PROMPT
DECLARE
employee_record   employees%rowtype;
vEmployee_id      employees.employee_id%type := &pemployee_id;
BEGIN
SELECT  * 
INTO    employee_record
FROM    employees
WHERE   employee_id = vEmployee_id;
DBMS_OUTPUT.PUT_LINE(employee_record.employee_id || ' - ' || 
                     employee_record.first_name || ' - ' || 
                     employee_record.last_name || ' - ' || 
                     employee_record.phone_number || ' - ' ||
                     employee_record.job_id);
END;

/*
ACCEPT PEMPLOYEE_ID PROMPT
DECLARE
EMPLOYEE_RECORD   EMPLOYEES%ROWTYPE;
VEMPLOYEE_ID      EMPLOYEES.EMPLOYEE_ID%TYPE := &PEMPLOYEE_ID;
BEGIN
SELECT  * 
INTO    EMPLOYEE_RECORD
FROM    EMPLOYEES
WHERE   EMPLOYEE_ID = VEMPLOYEE_ID;
DBMS_OUTPUT.PUT_LINE(EMPLOYEE_RECORD.EMPLOYEE_ID || ' - ' || 
                     EMPLOYEE_RECORD.FIRST_NAME || ' - ' || 
                     EMPLOYEE_RECORD.LAST_NAME || ' - ' || 
                     EMPLOYEE_RECORD.PHONE_NUMBER || ' - ' ||
                     EMPLOYEE_RECORD.JOB_ID);
END;
*/