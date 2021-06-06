--Setting up the SchemaManager

--Create table for employees
DROP TABLE IF EXISTS Employees

CREATE TABLE Employees (
emp_no INT NOT NULL
emp_title_id VARCHAR (50) NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
sex VARCHAR (50) NOT NULL,
hire_date DATE NOT NULL,
PRIMARY KEY (emp_no)
);

SELECT * FROM Employees


--Create table for Departments
DROP TABLE IF EXISTS Departments

CREATE TABLE Departments (
dept_no VARCHAR (50) NOT NULL,
dept_name VARCHAR (50) NOT NULL,
PRIMARY KEY (dept_no)
);

SELECT * FROM Departments

--Create table for Department_Manager
DROP TABLE IF EXISTS Department_Manager

CREATE TABLE Department_Manager (
dept_no VARCHAR (50) NOT NULL,
emp_no VARCHAR (50) NOT NULL,
from_date DATE NOT NULL,
to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

SELECT * FROM Department_Manager

--Create table for Salaries
DROP TABLE IF EXISTS Salaries

CREATE TABLE Salaries (
	emp_no BIGINT NOT NULL,
	salary BIGINT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Salaries




