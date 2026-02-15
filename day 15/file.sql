USE elevateLabs;

SELECT emp_id, name, dept_id, salary,
ROW_NUMBER() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS row_num
FROM employees;

SELECT emp_id, name, dept_id, salary,
RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS rnk,
DENSE_RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS dense_rnk
FROM employees;

SELECT emp_id, name, dept_id, salary,
SUM(salary) OVER (PARTITION BY dept_id ORDER BY emp_id) AS running_total
FROM employees;

SELECT emp_id, name, salary,
LAG(salary) OVER (ORDER BY emp_id) AS prev_salary,
LEAD(salary) OVER (ORDER BY emp_id) AS next_salary
FROM employees;