CREATE OR REPLACE PROCEDURE PRC_FETCH_EMPLOYEES_DYNAMIC_BIND
  (pmanager_id         IN employees.manager_id%TYPE DEFAULT NULL,
   pdepartment_id      IN employees.department_id%TYPE DEFAULT NULL)
AS
  vemployees_record  employees%ROWTYPE;
  vsql               VARCHAR2(600) := 'SELECT *
                                       FROM employees
                                       WHERE 1=1 ';
  TYPE  employees_table_type IS TABLE OF employees%ROWTYPE 
  INDEX BY PLS_INTEGER;
  employees_table            employees_table_type;
  
BEGIN

  IF  pmanager_id IS NOT NULL THEN
      vsql := vsql || ' AND manager_id = :manager_id';
  END IF;
  
  IF  pdepartment_id IS NOT NULL THEN
      vsql := vsql || ' AND department_id = :department_id';
  END IF;
  
  CASE
    WHEN pmanager_id IS NOT NULL AND pdepartment_id IS NOT NULL THEN
         EXECUTE IMMEDIATE vsql BULK COLLECT INTO employees_table USING pmanager_id, pdepartment_id;
    WHEN pmanager_id IS NOT NULL AND pdepartment_id IS NULL THEN
         EXECUTE IMMEDIATE vsql BULK COLLECT INTO employees_table USING pmanager_id;
    WHEN pmanager_id IS NULL AND pdepartment_id IS NOT NULL THEN
         EXECUTE IMMEDIATE vsql BULK COLLECT INTO employees_table USING pdepartment_id;
    ELSE
         EXECUTE IMMEDIATE vsql BULK COLLECT INTO employees_table;
  END CASE;    
  
  FOR i IN 1..employees_table.COUNT  LOOP
  
    DBMS_OUTPUT.PUT_LINE(employees_table(i).employee_id || ' - ' ||
                         employees_table(i).first_name || ' - ' ||
                         employees_table(i).last_name);
    
  END LOOP;
  
EXCEPTION
  WHEN OTHERS THEN 
       RAISE_APPLICATION_ERROR(-20001,'Erro Oracle ' || SQLCODE || SQLERRM);
END;