/*
CREATE OR REPLACE PROCEDURE PRC_UPDATE_SALARY2
  (PPERCENT IN NUMBER)
AS
  VLIMIT CONSTANT INTEGER(2) := 30;
  TYPE EMPLOYEE_ID_TABLE_TYPE IS TABLE OF EMPLOYEES.EMPLOYEE_ID%TYPE 
  INDEX BY BINARY_INTEGER;
  EMPLOYEE_ID_TABLE  EMPLOYEE_ID_TABLE_TYPE;
  CURSOR EMPLOYEES_CURSOR IS
    SELECT EMPLOYEE_ID 
    FROM EMPLOYEES;
BEGIN

  OPEN EMPLOYEES_CURSOR;
  
  LOOP
    FETCH EMPLOYEES_CURSOR 
    BULK COLLECT INTO EMPLOYEE_ID_TABLE LIMIT VLIMIT;
    
    EXIT WHEN EMPLOYEE_ID_TABLE.COUNT = 0;
    FORALL I IN 1..EMPLOYEE_ID_TABLE.COUNT 
      
      UPDATE EMPLOYEES E
      SET    E.SALARY = E.SALARY * (1 + PPERCENT / 100)
      WHERE  E.EMPLOYEE_ID = EMPLOYEE_ID_TABLE(I);  
    
  END LOOP;
  
  CLOSE EMPLOYEES_CURSOR;
  COMMIT;
END;
*/

CREATE OR REPLACE PROCEDURE PRC_UPDATE_SALARY2
  (ppercentual IN NUMBER)
AS
  vLimit CONSTANT INTEGER(2) := 30;
  TYPE employee_id_table_type IS TABLE OF employees.employee_id%TYPE 
  INDEX BY BINARY_INTEGER;
  employee_id_table  employee_id_table_type;
  CURSOR employees_cursor IS
    SELECT employee_id 
    FROM employees;
BEGIN

  OPEN employees_cursor;
  
  LOOP
    FETCH employees_cursor 
    BULK COLLECT INTO employee_id_table LIMIT vlimit;
    
    EXIT WHEN employee_id_table.COUNT = 0;
    
    DBMS_OUTPUT.PUT_LINE('Linhas recuperadas: ' || employee_id_table.COUNT);
    
    FORALL indice IN 1..employee_id_table.COUNT 
      
      UPDATE employees e
      SET    e.salary = e.salary * (1 + ppercentual / 100)
      WHERE  e.employee_id = employee_id_table(indice);  
    
  END LOOP;
  
  CLOSE employees_cursor;
  
END;