-- Queries

-- 1. List employee number, last name, first name, sex, and salary of each employee.
SELECT Employees.emp_no AS "Employee Number", 
	   Employees.last_name AS "Last Name", 
	   Employees.first_name AS "First Name", 
	   Employees.sex AS "Sex", 
	   Salaries.salary AS "Salary"
FROM Employees
JOIN Salaries
ON 	 Employees.emp_no = Salaries.emp_no;


-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name AS "First Name", 
	   last_name AS "Last Name", 
	   hire_date AS "Hire Date"
FROM  Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
	

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT Department_Manager.dept_no AS "Department Number", 
	   Department.dept_name AS "Department Name", 
	   Department_Manager.emp_no AS "Employee Number", 
	   Employees.last_name AS "Last Name", 
	   Employees.first_name AS "First Name"
FROM Department_Manager
JOIN Department
ON 	 Department_Manager.dept_no = Department.dept_no
JOIN Employees
ON 	 Department_Manager.emp_no = Employees.emp_no;


-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT Department_Employee.dept_no AS "Department Number", 
	   Department_Employee.emp_no AS "Employee Number", 
	   Employees.last_name AS "Last Name", 
	   Employees.first_name AS "First Name", 
	   Department.dept_name AS "Department Name"
FROM  Department_Employee
JOIN  Employees
ON 	  Department_Employee.emp_no = Employees.emp_no
JOIN  Department
ON    Department_Employee.dept_no = Department.dept_no
ORDER BY Department_Employee.dept_no;


-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name AS "First Name", 
	   last_name AS "Last Name", 
	   sex AS "Sex"
FROM  Employees
WHERE first_name = 'Hercules'
AND   last_name like 'B%';
	
	
-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT Department_Employee.emp_no AS "Employee Number", 
	   Employees.last_name AS "Last Name", 
	   Employees.first_name AS "First Name", 
	   Department.dept_name AS "Department Name"
FROM  Employees
JOIN  Department_Employee
ON    Department_Employee.emp_no = Employees.emp_no
JOIN  Department
ON 	  Department.dept_no = Department_Employee.dept_no
WHERE dept_name = 'Sales';
	

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT Department_Employee.emp_no AS "Employee Number", 
	   Employees.last_name AS "Last Name", 
	   Employees.first_name AS "First Name", 
	   Department.dept_name AS "Department Name"
FROM  Employees
JOIN  Department_Employee
ON    Department_Employee.emp_no = Employees.emp_no
JOIN  Department
ON 	  Department.dept_no = Department_Employee.dept_no
WHERE dept_name = 'Sales' 
OR 	  dept_name = 'Development';
	

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT   COUNT(last_name) AS "Frequency", 
		 last_name AS "Last Name"
FROM 	 Employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC; 