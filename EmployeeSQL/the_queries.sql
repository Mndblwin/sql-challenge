--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT Employees.emp_no,
Employees.last_name,
Employees.first_name,
Employees.sex,
Salaries.salary
FROM Employees
LEFT JOIN Salaries
ON Employees.emp_no = Salaries.emp_no
ORDER BY emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM Employees
WHERE "hire_date"::text LIKE '1986%';

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT Deparment_Manager.dept_no, 
Departments.dept_name,
Department_Manager.emp_no,
Employees.last_name, 
Employees.first_name
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
dept_emp.dept_no,
Departments.dept_name
FROM Employees 
INNER JOIN Department_Manager ON Employees.emp_no=dept_emp.emp_no
INNER JOIN Departments ON Departments.dept_no=dept_emp.dept_no
order by emp_no;

--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT  
Employees.first_name,
Employees.last_name,
Employees.sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
Employees.emp_no, 
Employees.last_name, 
Employees.first_name,
dept_emp.dept_no
FROM Employees 
LEFT JOIN dept_emp
ON Employees.emp_no=dept_emp.emp_no
INNER JOIN Departments 
ON Departments.dept_no=dept_emp.dept_no
WHERE Departments.dept_name='Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
Employees.emp_no, 
Employees.last_name, 
Employees.first_name,
dept_emp.dept_no
FROM Employees 
LEFT JOIN dept_emp 
ON Employees.emp_no=dept_emp.emp_no
INNER JOIN Departments 
ON Departments.dept_no=dept_emp.dept_no
WHERE Departments.dept_name in ('Sales', 'Development')

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*) AS count_them_up
FROM Employees
GROUP BY last_name
ORDER BY count_them_up DESC;
