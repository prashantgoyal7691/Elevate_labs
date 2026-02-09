USE elevateLabs;

SELECT * FROM employees;

START TRANSACTION;

UPDATE employees
SET salary = salary + 5000
WHERE emp_id = 101;

DELETE FROM employees
WHERE emp_id = 102;

SELECT * FROM employees;

ROLLBACK;

SELECT * FROM employees;

START TRANSACTION;

UPDATE employees
SET salary = salary + 3000
WHERE emp_id = 103;

COMMIT;

SELECT * FROM employees;