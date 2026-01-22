USE elevateLabs;

SELECT * FROM students ORDER BY age;

SELECT * FROM students ORDER BY age DESC;

SELECT * FROM students ORDER BY age ASC, name ASC;

SELECT * FROM students LIMIT 3;

SELECT * FROM students WHERE age >= 20 ORDER BY age DESC;

SELECT * FROM students ORDER BY id LIMIT 2 OFFSET 0;

SELECT * FROM students ORDER BY id LIMIT 2 OFFSET 2;

SELECT * FROM students ORDER BY age DESC LIMIT 5;

SELECT name, age AS student_age FROM students ORDER BY student_age DESC;

SELECT * FROM students ORDER BY age DESC LIMIT 100;