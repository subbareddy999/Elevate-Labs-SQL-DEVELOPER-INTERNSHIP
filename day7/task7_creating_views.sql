-- Task 7: Creating Views

-- Sample tables (Employees & Departments)
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

-- Sample data for Departments
INSERT INTO Departments (department_id, department_name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

-- Sample data for Employees
INSERT INTO Employees (employee_id, first_name, last_name, department_id, salary) VALUES
(101, 'Alice', 'Johnson', 1, 75000),
(102, 'Bob', 'Smith', 1, 50000),
(103, 'Charlie', 'Brown', 2, 60000),
(104, 'David', 'Williams', 3, 90000);

-- 1. Create a view to show employees with department names
CREATE VIEW EmployeeDetails AS
SELECT e.employee_id, e.first_name, e.last_name, d.department_name, e.salary
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

-- 2. Query the view
SELECT * FROM EmployeeDetails;

-- 3. Create a view for high-salary employees (> 60,000)
CREATE VIEW HighSalaryEmployees AS
SELECT first_name, last_name, salary
FROM Employees
WHERE salary > 60000;

-- 4. Query the high salary view
SELECT * FROM HighSalaryEmployees;

-- 5. Create a view showing department average salaries
CREATE VIEW DepartmentSalaryStats AS
SELECT d.department_name, AVG(e.salary) AS average_salary
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- 6. Query department salary stats
SELECT * FROM DepartmentSalaryStats;

-- 7. Drop a view (example)
DROP VIEW IF EXISTS HighSalaryEmployees;
