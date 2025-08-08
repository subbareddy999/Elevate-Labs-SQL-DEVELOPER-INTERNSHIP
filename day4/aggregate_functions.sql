-- Task 4: Aggregate Functions and Grouping

-- 1. Total salary of all employees
SELECT SUM(salary) AS total_salary
FROM employees;

-- 2. Average salary of all employees
SELECT AVG(salary) AS average_salary
FROM employees;

-- 3. Count total number of employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 4. Total salary per department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

-- 5. Average salary per department
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- 6. Number of employees in each department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- 7. Departments with total salary greater than 150000
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 150000;

-- 8. Departments with more than 5 employees
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;

-- 9. Highest salary in each department
SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department;

-- 10. Lowest salary in each department
SELECT department, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;
