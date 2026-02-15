USE elevateLabs;

DELIMITER $$

CREATE PROCEDURE AddEmployee(
    IN p_id INT,
    IN p_name VARCHAR(50),
    IN p_salary INT,
    IN p_dept INT
)
BEGIN
    INSERT INTO employees(emp_id, name, salary, dept_id)
    VALUES(p_id, p_name, p_salary, p_dept);
END $$

DELIMITER ;

CALL AddEmployee(201, 'Rohit', 55000, 1);

DELIMITER $$

CREATE FUNCTION CalculateBonus(salary INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN salary * 0.10;
END $$

DELIMITER ;

SELECT name, salary, CalculateBonus(salary) AS bonus
FROM employees;