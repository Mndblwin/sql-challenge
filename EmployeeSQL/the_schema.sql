--Setting up the SchemaManager

--Create table for employees
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

SELECT * FROM employees


--Create table for Departments
DROP TABLE IF EXISTS Departments;

CREATE TABLE Departments (
dept_no VARCHAR,
dept_name VARCHAR,
PRIMARY KEY (dept_no)
);

SELECT * FROM Departments

--Create table for Department_Manager
DROP TABLE IF EXISTS Department_Manager;

CREATE TABLE Department_Manager (
dept_no VARCHAR,
emp_no INT
);

SELECT * FROM Department_Manager


--Create table for Salaries
DROP TABLE IF EXISTS Salaries;

CREATE TABLE Salaries (
emp_no INT,
salary BIGINT

);

SELECT * FROM Salaries

--Create table for Titles
DROP TABLE IF EXISTS Titles;

CREATE TABLE Titles (
title_id VARCHAR,
title VARCHAR

);

SELECT * FROM Titles

--Create table for Department Employees
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR

);

SELECT * FROM dept_emp

