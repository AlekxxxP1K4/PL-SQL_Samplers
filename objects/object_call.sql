DECLARE
guru_emp_det emp_object;
BEGIN
guru_emp_det:=emp_object(1005,'RRR',20000,1000);
guru_emp_det.display_records;
guru_emp_det.insert_records;
COMMIT;
END;