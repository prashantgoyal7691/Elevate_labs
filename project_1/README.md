🛒 Online Retail Sales Database Design

📌 Project Overview

This project focuses on designing and implementing a normalized relational database (3NF) for an online retail (e-commerce) platform using MySQL / PostgreSQL.

The database manages customers, products, categories, orders, order items, and payments. It also includes analytical SQL queries using JOIN operations to generate meaningful sales reports.

⸻

🎯 Objective
	•	Design a structured and normalized database schema.
	•	Create an ER diagram.
	•	Implement tables with proper constraints.
	•	Insert sample data.
	•	Generate sales reports using JOIN queries.
	•	Create SQL views for reporting.

⸻

🛠 Tools Used
	•	MySQL / PostgreSQL
	•	dbdiagram.io (for ER diagram design)
	•	SQL (DDL, DML, JOINs, Views)

⸻

🧱 Database Design

📊 Entities

The database consists of the following entities:
	1.	Customers
	2.	Categories
	3.	Products
	4.	Orders
	5.	Order_Items
	6.	Payments

⸻

🔗 Relationships
	•	One Customer → Many Orders
	•	One Order → Many Order Items
	•	One Product → Many Order Items
	•	One Category → Many Products
	•	One Order → One Payment

⸻

🧠 Normalization

The schema is normalized up to Third Normal Form (3NF):

✅ First Normal Form (1NF)
	•	Atomic values
	•	No repeating groups

✅ Second Normal Form (2NF)
	•	No partial dependencies
	•	Many-to-many relationships resolved using order_items

✅ Third Normal Form (3NF)
	•	No transitive dependencies
	•	Category details separated from products
	•	Customer details separated from orders

⸻

🗂 Project Structure
online-retail-sales-db/
│
├── ER_Diagram.png
├── schema.sql
├── sample_data.sql
├── queries.sql
└── README.md

🏗 Database Schema Features
	•	Primary Keys
	•	Foreign Keys
	•	UNIQUE constraints
	•	CHECK constraints
	•	DEFAULT values
	•	AUTO_INCREMENT IDs
	•	Proper referential integrity

⸻

📦 Sample Data

The project includes sample data for:
	•	Multiple customers
	•	Multiple product categories
	•	Products with pricing and stock
	•	Orders with multiple items
	•	Payments with status tracking

⸻

📊 Sales Reports (JOIN Queries)

The following reports are implemented:
	•	Customer Order Report
	•	Detailed Order Breakdown
	•	Product Sales Report
	•	Revenue by Product
	•	Revenue by Category
	•	Payment Status Report
	•	Top Spending Customers

These queries demonstrate:
	•	INNER JOIN
	•	GROUP BY
	•	Aggregate functions (SUM)
	•	Calculated fields
	•	ORDER BY
	•	Business-level reporting

⸻

📈 View Created

sales_summary

A SQL view that provides:
	•	Order ID
	•	Customer Name
	•	Total Sales per Order

This simplifies analytical reporting.

⸻

🚀 How to Run This Project
	1.	Create a new database:
        CREATE DATABASE online_retail;
        USE online_retail;

2.	Run:
	•	schema.sql
	•	sample_data.sql
	•	queries.sql
	3.	Execute queries to generate reports.

⸻

💡 Learning Outcomes

Through this project, I learned:
	•	Database schema design
	•	ER diagram modeling
	•	Database normalization (3NF)
	•	Writing DDL & DML scripts
	•	Implementing constraints
	•	Writing complex JOIN queries
	•	Generating business reports using SQL

⸻

📌 Future Improvements
	•	Add indexes for performance optimization
	•	Implement stored procedures
	•	Add triggers for stock updates after orders
	•	Add monthly sales analytics
	•	Build a backend API on top of this database

⸻

👨‍💻 Author

Prashant Goyal
B.Tech CSE – NIT Srinagar