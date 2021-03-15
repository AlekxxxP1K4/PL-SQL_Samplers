CREATE OR REPLACE FUNCTION FNC_GET_EMPOYEES
  (PEMPLOYEE_ID  IN NUMBER)
  RETURN SYS_REFCURSOR
IS
  EMPLOYEES_CURSOR  SYS_REFCURSOR;
BEGIN
  OPEN EMPLOYEES_CURSOR  
  FOR
    SELECT FIRST_NAME, LAST_NAME
    FROM   EMPLOYEES
    WHERE  EMPLOYEE_ID = PEMPLOYEE_ID;
    
  RETURN EMPLOYEES_CURSOR;
  
END FNC_GET_EMPOYEES;