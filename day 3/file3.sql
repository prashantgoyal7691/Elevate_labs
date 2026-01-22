use elevateLabs;

INSERT INTO students (id, name, email, age, mobile_number) VALUES
(3, 'Mohit Singh', 'mohit@gmail.com', 19, '9876543210'),
(4, 'Pooja Patel', 'pooja@gmail.com', 22, NULL),
(5, 'Aman Kumar', 'aman@gmail.com', 20, '9123456789');

SELECT * FROM students WHERE age > 20;

SELECT * FROM students WHERE age > 18 AND age < 22;

SELECT * FROM students WHERE age = 19 OR age = 22;

SELECT * FROM students WHERE name LIKE 'A%';

SELECT * FROM students WHERE name LIKE '%oo%';

SELECT * FROM students WHERE age IN (19, 20, 22);

SELECT * FROM students WHERE age BETWEEN 18 AND 21;

SELECT * FROM students WHERE mobile_number IS NULL;

SELECT name AS student_name,email AS student_email
FROM students
WHERE age >= 20;

SELECT * FROM students WHERE email LIKE '%gmail.com';