CREATE OR REPLACE TYPE BODY emp_object AS
    CONSTRUCTOR FUNCTION emp_object(p_emp_no NUMBER,p_emp_name VARCHAR2, p_salary NUMBER)
    RETURN SELF AS RESULT IS
    BEGIN
        Dbms_output.put_line('Constructor fired..');
        SELF.emp_no:=p_emp_no;
        SELF.emp_name:=p_emp_name;
        SELF.salary:=p_salary;
        SELF.managerial:=1001;
    RETURN;
    END;
    MEMBER PROCEDURE insert_records IS
    BEGIN
        INSERT INTO emp VALUES(emp_noemp_name,salary,manager);
    END;
    MEMBER PROCEDURE display_records IS
    BEGIN
        Dbms_output.put_line('Employee Name:'||emp_name);
        Dbms_output.put_line('Employee Number:'||emp_no);
        Dbms_output.put_line('Salary:'||salary);
        Dbms_output.put_line('Manager:'||manager);
    END;
END;