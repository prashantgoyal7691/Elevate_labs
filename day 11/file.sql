USE elevateLabs;

EXPLAIN
SELECT * FROM employees
WHERE name = 'Rahul';

CREATE INDEX idx_emp_name
ON employees(name);

EXPLAIN
SELECT * FROM employees
WHERE name = 'Rahul';

CREATE INDEX idx_dept_id
ON employees(dept_id);

EXPLAIN
SELECT * FROM employees
WHERE dept_id = 1;

SHOW INDEX FROM employees;