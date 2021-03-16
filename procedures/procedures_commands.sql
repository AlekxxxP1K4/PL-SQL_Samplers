--Recompile Procedure

ALTER PROCEDURE PRC_INSERE_EMPREGADO COMPILE;

--Removing procedure

DROP PROCEDURE PRC_CONSULTA_EMPREGADO;

--exec procedure
exec PRC_FETCH_EMPLOYEES_DYNAMIC(pmanager_id => 103, pdepartment_id => 60)

exec PRC_FETCH_EMPLOYEES_DYNAMIC(pmanager_id => 103)

exec PRC_FETCH_EMPLOYEES_DYNAMIC(pdepartment_id => 60)

exec PRC_FETCH_EMPLOYEES_DYNAMIC