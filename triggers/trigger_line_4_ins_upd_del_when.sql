CREATE OR REPLACE TRIGGER A_IUD_EMPLOYESS_R_TRG
  AFTER INSERT OR UPDATE OF SALARY OR DELETE 
  ON EMPLOYEES
  FOR EACH ROW
  WHEN (NEW.JOB_ID <> 'AD_PRES')
DECLARE
	VEVENT       EMPLOYEES_LOG.EVENT%TYPE;
	VEMPLOYEE_ID  EMPLOYEES_LOG.EMPLOYEE_ID%TYPE;
BEGIN
	CASE
		WHEN INSERTING 
        THEN
			VEVENT      := 'I';
			VEMPLOYEE_ID := :NEW.EMPLOYEE_ID;
		WHEN UPDATING 
        THEN
			VEVENT      := 'U';
			VEMPLOYEE_ID := :NEW.EMPLOYEE_ID;
		ELSE
			VEVENT      := 'D';
			VEMPLOYEE_ID := :OLD.EMPLOYEE_ID;
	END CASE;
	INSERT INTO EMPLOYEES_LOG
		(EMPLOYEES_LOG_ID, 
         DT_LOG, 
         USERS, 
         EVENT, 
         EMPLOYEE_ID, 
         SALARY_OLD, 
         SALARY_NEW)
	VALUES
		(EMPLOYEES_LOG_SEQ.NEXTVAL,
		 SYSDATE,
		 USER,
		 VEVENT,
		 VEMPLOYEE_ID,
		 :OLD.SALARY,
		 :NEW.SALARY);
END A_IUD_EMPLOYESS_R_TRG;