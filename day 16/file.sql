USE elevateLabs;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT
);

INSERT INTO customers VALUES
(1, 'Rahul'),
(2, 'Anita'),
(3, 'Aman');

INSERT INTO products VALUES
(101, 'Laptop', 60000),
(102, 'Phone', 20000),
(103, 'Tablet', 30000);

INSERT INTO orders VALUES
(1, 1, 101, '2024-01-10', 1),
(2, 2, 102, '2024-02-15', 2),
(3, 1, 103, '2024-03-01', 1),
(4, 3, 102, '2024-03-10', 3);

SELECT p.product_name, SUM(o.quantity) AS total_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

SELECT MONTH(order_date) AS month,
SUM(quantity * price) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY MONTH(order_date);

SELECT c.name, SUM(o.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC;