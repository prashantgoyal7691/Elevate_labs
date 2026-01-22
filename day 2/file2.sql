use elevateLabs;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    dob DATE,
    age INT NOT NULL
);

INSERT INTO students VALUES
(1, 'Rahul Sharma', 'rahul@gmail.com', '2004-05-12', 20),
(2, 'Anita Verma', 'anita@gmail.com', '2003-08-21', 21);


ALTER TABLE students
ADD phone VARCHAR(15);

ALTER TABLE students
RENAME COLUMN phone TO mobile_number;

ALTER TABLE students
DROP COLUMN dob;

DESC students;
