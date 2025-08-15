-- Task 8: Stored Procedures and Functions
-- Note: MySQL supports Stored Procedures & Functions; SQLite does not.

-- Drop existing objects if they exist
DROP PROCEDURE IF EXISTS GetEmployeesByDept;
DROP FUNCTION IF EXISTS GetAnnualSalary;

-- Sample tables for demonstration
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2)
);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Sample data
INSERT INTO Departments (department_id, department_name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

INSERT INTO Employees (employee_id, first_name, last_name, department_id, salary) VALUES
(101, 'Alice', 'Johnson', 1, 75000),
(102, 'Bob', 'Smith', 1, 50000),
(103, 'Charlie', 'Brown', 2, 60000),
(104, 'David', 'Williams', 3, 90000);

-- =========================================
-- 1. Stored Procedure Example
-- =========================================
DELIMITER $$

CREATE PROCEDURE GetEmployeesByDept(IN dept_name VARCHAR(50))
BEGIN
    SELECT e.employee_id, e.first_name, e.last_name, d.department_name, e.salary
    FROM Employees e
    JOIN Departments d ON e.department_id = d.department_id
    WHERE d.department_name = dept_name;
END$$

DELIMITER ;

-- Call the stored procedure
CALL GetEmployeesByDept('IT');

-- =========================================
-- 2. Function Example
-- =========================================
DELIMITER $$

CREATE FUNCTION GetAnnualSalary(monthly_salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN monthly_salary * 12;
END$$

DELIMITER ;

-- Use the function in a SELECT statement
SELECT first_name, last_name, GetAnnualSalary(salary / 12) AS annual_salary
FROM Employees;
