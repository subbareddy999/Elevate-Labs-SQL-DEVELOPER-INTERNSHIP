# Task 8: Stored Procedures and Functions

## Objective

Understand how to modularize SQL logic using:

- **Stored Procedures**: Predefined SQL code blocks that can be executed with parameters.
- **Functions**: SQL routines that return a value and can be used in queries.

## Requirements

- **MySQL Workbench** (Stored procedures & functions are not supported in SQLite).
- Sample tables: **Employees**, **Departments**.

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
3. Paste the content of `task8_stored_procedures_functions.sql`.
4. Execute all statements.

## Queries Overview

1. **Stored Procedure: `GetEmployeesByDept`**
   - Input: Department name.
   - Output: All employees in that department with salary info.
   - Example:

     ```sql
     CALL GetEmployeesByDept('IT');
     ```

2. **Function: `GetAnnualSalary`**
   - Input: Monthly salary.
   - Output: Annual salary (monthly × 12).
   - Example:

     ```sql
     SELECT first_name, last_name, GetAnnualSalary(salary / 12) AS annual_salary
     FROM Employees;
     ```

## Notes

- Use `DELIMITER` in MySQL to define multi-statement procedures or functions.
- Procedures are called with `CALL procedure_name(...)`.
- Functions can be used inside `SELECT`, `WHERE`, or other SQL expressions.
- Always `DROP` existing objects before creating them to avoid errors.
