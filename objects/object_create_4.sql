CREATE TYPE emp_object AS OBJECT(
emp_no NUMBER,
emp_name VARCHAR2(50),
salary NUMBER,
manager NUMBER,
CONSTRUCTOR FUNCTION emp_object(p_emp_no NUMBER, p_emp_name VARCHAR2,
p_salary NUMBER) RETURN SELF AS RESULT),
MEMBER PROCEDURE insert_records,
MEMBER PROCEDURE display_records);