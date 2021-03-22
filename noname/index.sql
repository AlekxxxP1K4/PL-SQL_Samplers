-- 1 Create
CREATE UNIQUE INDEX employee_id_idx ON employee(id);

--2 Create
CREATE INDEX employee_first_last_name_idx ON
    employee (first_name, last_name);

--Drop
DROP INDEX employee_last_name_idx;