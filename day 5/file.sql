USE elevateLabs;

SELECT COUNT(*) AS total_students FROM students;

SELECT AVG(age) AS average_age FROM students;

SELECT 
    MIN(age) AS youngest,
    MAX(age) AS oldest
FROM students;

SELECT SUM(age) AS total_age FROM students;

SELECT age, COUNT(*) AS students_count FROM students GROUP BY age;

SELECT age, AVG(age) AS avg_age FROM students GROUP BY age;

SELECT age, COUNT(*) AS students_count FROM students
GROUP BY age
HAVING COUNT(*) > 1;

SELECT age, COUNT(*) AS students_count FROM students
WHERE age >= 20
GROUP BY age HAVING COUNT(*) >= 1;

SELECT COUNT(mobile_number) AS mobile_count FROM students;

SELECT age AS category, COUNT(*) AS total_students FROM students
GROUP BY age;