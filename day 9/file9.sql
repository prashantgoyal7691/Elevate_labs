USE elevateLabs;

SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

SELECT *
FROM (
    SELECT name, salary
    FROM employees
    WHERE salary > 45000
) AS high_salary;

SELECT name,
       salary,
       (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;

SELECT name, salary
FROM employees e1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees e2
    WHERE e1.dept_id = e2.dept_id
);

SELECT e.name, e.salary
FROM employees e
JOIN (
    SELECT AVG(salary) AS avg_sal FROM employees
) a
ON e.salary > a.avg_sal;