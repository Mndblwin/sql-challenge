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



)