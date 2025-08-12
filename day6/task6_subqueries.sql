-- Task 6: Subqueries and Nested Queries

-- Sample table creation
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
(3, 'Finance'),
(4, 'Marketing');

-- Sample data for Employees
INSERT INTO Employees (employee_id, first_name, last_name, department_id, salary) VALUES
(101, 'Alice', 'Johnson', 1, 75000),
(102, 'Bob', 'Smith', 1, 50000),
(103, 'Charlie', 'Brown', 2, 60000),
(104, 'David', 'Williams', 3, 90000),
(105, 'Eve', 'Davis', 4, 45000);

-- 1. Subquery in SELECT (find average salary and show difference for each employee)
SELECT first_name, last_name, salary,
       salary - (SELECT AVG(salary) FROM Employees) AS salary_diff
FROM Employees;

-- 2. Subquery in WHERE (employees with salary above average)
SELECT *
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

-- 3. Subquery with IN (employees in IT or Finance)
SELECT first_name, last_name, department_id
FROM Employees
WHERE department_id IN (
    SELECT department_id
    FROM Departments
    WHERE department_name IN ('IT', 'Finance')
);

-- 4. Correlated subquery (employees earning highest salary in their department)
SELECT first_name, last_name, salary, department_id
FROM Employees e
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
    WHERE department_id = e.department_id
);

-- 5. Subquery in FROM (derived table showing department and avg salary)
SELECT department_name, avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM Employees
    GROUP BY department_id
) AS dept_avg
JOIN Departments d ON dept_avg.department_id = d.department_id;
