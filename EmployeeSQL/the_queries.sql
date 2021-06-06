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

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT Deparment_Manager.dept_no, 
Departments.dept_name,
Department_Manager.emp_no,
Employees.last_name, 
Employees.first_name,
Department_Manager.from_date,
Department_Manager.to_date
FROM Department_Manager
LEFT JOIN Departments
ON Department_Manager.dept_no = Departments.dept_no
LEFT JOIN Employees 
ON Department_Manager.emp_no = Employees.emp_no
ORDER BY emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
Employees.emp_no,
Employees.last_name,
Employees.first_name,
Department_Manager.dept_no,
Departments.dept_name
FROM employees 
LEFT JOIN Department_Manager ON Employees.emp_no=Department_Manager.emp_no
LEFT JOIN Departments ON Departments.dept_no=Department_Manager.dept_no
order by emp_no;
