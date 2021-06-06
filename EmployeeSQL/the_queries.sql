--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT Employees.emp_no
Employees.last_name,
Employees.first_name,
Employees.gender,
Salaries.salary
FROM Employees
LEFT JOIN Salaries
ON Employees.emp_no = Salaries.emp_no
ORDER BY emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986
SELECT * FROM Employees
WHERE DATE_PART('year',hire_date) = 1986
ORDER BY emp_no;
