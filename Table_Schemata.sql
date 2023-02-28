-- Employee_DB. Create tables and import CSV files into each table. 

--1. Create 'Titles' table
DROP TABLE IF EXISTS Titles;

CREATE TABLE Titles(
	title_id VARCHAR(20) NOT NULL, 
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);

Select * from Titles;


--2. Create 'Departments' table
DROP TABLE IF EXISTS Departments;

CREATE TABLE Departments(
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

Select * from Departments;


--3. Create 'Employees' table
DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees(
	emp_no INT NOT NULL, 
	emp_title_id VARCHAR(20) NOT NULL, 
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL, 
	last_name VARCHAR(30) NOT NULL, 
	sex VARCHAR(1) NOT NULL, 
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

Select * from Employees;


--4. Create 'Department Employee' table
DROP TABLE IF EXISTS Department_Employee;

CREATE TABLE Department_Employee(
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

Select * from Department_Employee;


--5. Create 'Department Manager' table
DROP TABLE IF EXISTS Department_Manager;

CREATE TABLE Department_Manager(
	dept_no VARCHAR(10) NOT NULL, 
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

Select * from Department_Manager;


--6. Create 'Salaries' table
DROP TABLE IF EXISTS Salaries;

CREATE TABLE Salaries(
	emp_no INT NOT NULL, 
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	PRIMARY KEY (emp_no)
);

Select * from Salaries;