USE elevateLabs;

SELECT employees.name, departments.dept_name FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id;

SELECT e.name, d.dept_name FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

SELECT e.name, d.dept_name FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

SELECT e.name, d.dept_name FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id

UNION

SELECT e.name, d.dept_name FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;