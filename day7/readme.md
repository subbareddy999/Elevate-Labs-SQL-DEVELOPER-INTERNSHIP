# Task 7: Creating Views

## Objective

Learn to create, use, and manage views for:

- Simplifying complex queries
- Providing an abstraction layer
- Improving security by restricting direct table access

## Requirements

- MySQL (Workbench) or SQLite (DB Browser)
- Sample tables: **Employees**, **Departments**

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
3. Paste the content of `task7_creating_views.sql`.
4. Execute all statements.

### SQLite (DB Browser)

1. Open **DB Browser for SQLite**.
2. Open your database or create a new one.
3. Go to the **Execute SQL** tab.
4. Paste the script from `task7_creating_views.sql`.
5. Click **Execute All**.

## Queries Overview

1. **`EmployeeDetails` View** – Shows employees with their department names.
2. **`HighSalaryEmployees` View** – Lists employees with salary > 60,000.
3. **`DepartmentSalaryStats` View** – Shows average salary per department.
4. **Dropping a View** – Demonstrates removing a view using `DROP VIEW`.

## Notes

- Views are stored queries that can be used like tables.
- They help encapsulate business logic and improve query reusability.
- Security: Limit user permissions to specific views instead of raw tables.
