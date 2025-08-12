# Task 6: Subqueries and Nested Queries

## Objective

Learn how to use subqueries within:

- `SELECT` clauses (scalar subqueries)
- `WHERE` clauses (filtering with subqueries)
- `FROM` clauses (derived tables)
- `IN`, `EXISTS`, and correlated subqueries

## Requirements

- MySQL (Workbench) or SQLite (DB Browser)
- Sample tables: **Employees** and **Departments**

## Sample Tables

### Employees

- `employee_id` (INT, PK)
- `first_name` (VARCHAR)
- `last_name` (VARCHAR)
- `department_id` (INT, FK → Departments)
- `salary` (DECIMAL)

### Departments

- `department_id` (INT, PK)
- `department_name` (VARCHAR)

## How to Run

### MySQL (Workbench)

1. Open **MySQL Workbench**.
2. Create or select a database.
3. Paste the content of `task6_subqueries.sql`.
4. Execute all statements.

### SQLite (DB Browser)

1. Open **DB Browser for SQLite**.
2. Open your database or create a new one.
3. Go to the **Execute SQL** tab.
4. Paste the script from `task6_subqueries.sql`.
5. Click **Execute All**.

## Queries Overview

1. **Subquery in SELECT** → Calculate difference from average salary for each employee.
2. **Subquery in WHERE** → Find employees earning above the company average.
3. **IN with Subquery** → Filter employees belonging to specific departments.
4. **Correlated Subquery** → Get top earners per department.
5. **Subquery in FROM** → Create a temporary table of department average salaries and join with department names.

## Notes

- Scalar subqueries return a single value (e.g., `(SELECT AVG(salary) ...)`).
- Correlated subqueries reference columns from the outer query.
- Subqueries in `FROM` act as virtual tables.
