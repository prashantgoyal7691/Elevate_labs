USE elevateLabs;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary INT,
    email VARCHAR(100) UNIQUE
);
-- create
INSERT INTO employees VALUES
(1, 'Prashant Goyal', 'IT', 45000, 'Prashant@company.com'),
(2, 'Alok Shukla', 'HR', 40000, 'Alok@company.com'),
(3, 'Vishnu Narayan Tripathi', 'Finance', 50000, 'Vishnu@company.com'),
(4, 'Raushan Prince', 'IT', 48000, 'Raushan@company.com'),
(5, 'Vishal Godara', 'Sales', 42000, 'Vishal@company.com');

-- read
SELECT * FROM employees;
SELECT * FROM employees WHERE department = 'IT';
SELECT * FROM employees WHERE salary > 45000;

-- update
UPDATE employees SET salary = salary + 5000 WHERE department = 'IT';
SELECT * FROM employees;

-- delete
DELETE FROM employees WHERE department = 'Sales';
SELECT * FROM employees WHERE salary < 42000;
DELETE FROM employees WHERE salary < 42000;

START TRANSACTION;

DELETE FROM employees
WHERE emp_id = 3;

ROLLBACK;

COMMIT;