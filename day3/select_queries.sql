-- Task 3: Basic SELECT Queries

-- 1. Select all data from employees table
SELECT *
FROM employees;

-- 2. Select specific columns: first_name, last_name, salary
SELECT first_name, last_name, salary
FROM employees;

-- 3. Use WHERE clause to filter employees with salary > 50000
SELECT *
FROM employees
WHERE salary > 50000;

-- 4. Combine conditions with AND
SELECT *
FROM employees
WHERE department = 'IT' AND salary > 60000;

-- 5. Combine conditions with OR
SELECT *
FROM employees
WHERE department = 'HR' OR department = 'Finance';

-- 6. Search with LIKE (names starting with 'A')
SELECT *
FROM employees
WHERE first_name LIKE 'A%';

-- 7. Filter with BETWEEN (salary between 40000 and 70000)
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 70000;

-- 8. Sort results by salary ascending
SELECT *
FROM employees
ORDER BY salary ASC;

-- 9. Sort results by salary descending
SELECT *
FROM employees
ORDER BY salary DESC;

-- 10. Limit results to top 5 highest-paid employees
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;
