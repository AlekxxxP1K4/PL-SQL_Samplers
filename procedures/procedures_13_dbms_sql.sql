CREATE OR REPLACE PROCEDURE PRC_UPDATE_SALARY_EMPLOYEE
  (pemployee_id        IN employees.employee_id%TYPE,
   ppercentual         IN NUMBER)
IS
  vcursor_id       INTEGER;
  vrows_processed  INTEGER;
BEGIN

  vcursor_id  := DBMS_SQL.OPEN_CURSOR;
  
  DBMS_SQL.PARSE(vcursor_id, 'UPDATE employees
                              SET    salary = salary * (1 + (:gpercentual/100))
                              WHERE  employee_id = :gemployee_id', DBMS_SQL.NATIVE);

 
  DBMS_SQL.BIND_VARIABLE(vcursor_id, ':gpercentual', ppercentual);
  DBMS_SQL.BIND_VARIABLE(vcursor_id, ':gemployee_id', pemployee_id);
  
 
  vrows_processed := DBMS_SQL.EXECUTE(vcursor_id);
  
  
  DBMS_SQL.CLOSE_CURSOR(vcursor_id);
  
  COMMIT;
  
EXCEPTION
   WHEN OTHERS THEN 
       RAISE_APPLICATION_ERROR(-20001,'Erro Oracle ' || SQLCODE || SQLERRM);
END;