USE elevateLabs;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    salary INT,
    dept_id INT,

    FOREIGN KEY (dept_id)
    REFERENCES departments(dept_id)
    ON DELETE CASCADE
);

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Sales');

INSERT INTO employees VALUES
(101, 'Rahul', 45000, 1),
(102, 'Anita', 40000, 2),
(103, 'Vikas', 50000, 3),
(104, 'Pooja', 48000, 1),
(105, 'Aman', 42000, 4);

INSERT INTO employees VALUES
(106, 'Rohit', 30000, 10);

DELETE FROM departments
WHERE dept_id = 4;

SELECT * FROM employees;