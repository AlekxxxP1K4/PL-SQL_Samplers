--1
ALTER VIEW myview
    DROP CONSTRAINT my_view_read_only;

--2
ALTER VIEW customer_ro
    COMPILE; 

--drop
DROP VIEW myView;

--
CREATE VIEW my_view AS
    SELECT *
    FROM employee
    WHERE id < 5;

--
	CREATE VIEW myView AS
		SELECT *
		FROM employee
		WHERE id < 5
		WITH CHECK OPTION CONSTRAINT myView;
