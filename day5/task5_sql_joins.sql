-- Task 5: SQL Joins (Inner, Left, Right, Full)

-- Sample table creation
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Sample data for Customers
INSERT INTO Customers (customer_id, customer_name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'David', 'Houston');

-- Sample data for Orders
INSERT INTO Orders (order_id, customer_id, product_name, order_date) VALUES
(101, 1, 'Laptop', '2025-08-01'),
(102, 1, 'Mouse', '2025-08-05'),
(103, 2, 'Keyboard', '2025-08-03'),
(104, 5, 'Monitor', '2025-08-07'); -- customer_id 5 doesn't exist in Customers

-- 1. INNER JOIN: Customers with matching orders
SELECT Customers.customer_id, customer_name, product_name, order_date
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- 2. LEFT JOIN: All customers with their orders (if any)
SELECT Customers.customer_id, customer_name, product_name, order_date
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- 3. RIGHT JOIN: All orders with customer info (if any)
SELECT Customers.customer_id, customer_name, product_name, order_date
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

-- 4. FULL OUTER JOIN: All customers and all orders
-- MySQL does not directly support FULL OUTER JOIN, use UNION of LEFT and RIGHT
SELECT Customers.customer_id, customer_name, product_name, order_date
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
UNION
SELECT Customers.customer_id, customer_name, product_name, order_date
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;
