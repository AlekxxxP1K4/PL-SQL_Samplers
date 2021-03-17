-- Recompile Package Specification

ALTER PACKAGE PCK_EMPREGADOS COMPILE SPECIFICATION;

-- Recompile Package Body

ALTER PACKAGE PCK_EMPREGADOS COMPILE BODY;

-- Remove Package Body 

DROP PACKAGE BODY PCK_EMPREGADOS;

-- Remove Package Body and Package Specification

DROP PACKAGE PCK_EMPREGADOS;


-- REMOVE PROGRAM

BEGIN
    DBMS_SCHEDULER.DROP_PROGRAM(
        program_name => 'HR.PRC_INSERE_AGENDA',
        force => TRUE);
END;

--Remove Schedule 
 
BEGIN
    DBMS_SCHEDULER.DROP_SCHEDULE (
        schedule_name  => 'SCH_A_CADA_10_SEGUNDOS',
        force    => FALSE
        );
END;

-- Using package
BEGIN
  PCK_EMPREGADOS.PRC_INSERE_EMPREGADO('Bob', 'Dylan','BDYLAN','515.258.4861',SYSDATE,'IT_PROG',20000,NULL,103,60);
  COMMIT;
END;