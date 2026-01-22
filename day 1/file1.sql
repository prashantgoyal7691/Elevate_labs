CREATE DATABASE elevateLabs;
use elevateLabs;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    age INT
);

INSERT INTO students VALUES
(1, 'Rahul Sharma', 'rahul@gmail.com', 20),
(2, 'Anita Verma', 'anita@gmail.com', 21),
(3, 'Mohit Singh', 'mohit@gmail.com', 19),
(4, 'Pooja Patel', 'pooja@gmail.com', 22),
(5, 'Aman Khan', 'aman@gmail.com', 20);

SELECT * FROM students;

