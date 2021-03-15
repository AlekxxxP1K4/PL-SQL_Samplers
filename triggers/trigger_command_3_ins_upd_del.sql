CREATE OR REPLACE TRIGGER B_IUD_VALIDA_HORARIO_EMPLOYEES_S_TRG
BEFORE INSERT OR UPDATE OR DELETE
ON EMPLOYEES
BEGIN
  IF  (TO_CHAR(SYSDATE, 'DAY') IN ('SABADO', 'DOMINGO') OR
       TO_NUMBER(TO_CHAR(SYSDATE,'HH24')) NOT BETWEEN 8 AND 18) 
  THEN
      CASE
        WHEN INSERTING 
        THEN 
             RAISE_APPLICATION_ERROR( -20001,'Only can insert new employee in work hour');
        WHEN DELETING
        THEN 
             RAISE_APPLICATION_ERROR( -20002,'Only can delete employee in work hour');
        ELSE
             RAISE_APPLICATION_ERROR( -20003,'Only can update employee in work hour');
        END CASE;
  END IF;
END;