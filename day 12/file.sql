USE elevateLabs;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT CHECK (age >= 18 AND age <= 60),
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (user_id, name, age, email)
VALUES
(1, 'Rahul', 25, 'rahul@gmail.com'),
(2, 'Anita', 30, 'anita@gmail.com');

INSERT INTO users (user_id, name, age, email)
VALUES
(3, 'Aman', 15, 'aman@gmail.com');

INSERT INTO users (user_id, name, age, email)
VALUES
(4, 'Pooja', 28, 'rahul@gmail.com');

SELECT * FROM users;