USE elevateLabs;

CREATE VIEW employee_details AS
SELECT e.emp_id, e.name, e.salary, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;

SELECT * FROM employee_details;

SELECT *
FROM employee_details
WHERE salary > 45000;

SELECT *
FROM employee_details
ORDER BY salary DESC;

DROP VIEW IF EXISTS employee_details;

CREATE VIEW employee_details AS
SELECT e.emp_id, e.name, e.salary, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;