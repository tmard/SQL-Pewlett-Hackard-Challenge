# SQL-Pewlett-Hackard-Challenge
Performing data modeling, data engineering and data analysis.



## Background


As a new data engineer at Pewlett Hackard, the first major task is to complete a research project about people whom the company employed during the 1980s and 1990s. Only six CSV files remain of the employee database. 



## Objective


For this project, tables to hold the data from CSV files were designed, CSV files were imported into a SQL database and questions were answered regarding the data. The task consisted of:

    1. Data Modeling
    2. Data Engineering
    3. Data Analysis



## Method


### Data Modeling


Each CSV file was inspected and then an Entity Relationship Diagram of the tables were sketched. The sketch was completed with QuickDBD. This can be viewed in the Employee_ERD.png file. 



### Data Engineering


Table schemas for each of the six CSV files were created, while the following was considered:
* Data types, primary keys, foreign keys and other constraints were specified
* For the primary keys, the column was verified to be unique. If no unique column, a composite key was created. 
* Tables were created in the correct order to handle the foreign keys


Each CSV file was imported into its corresponding SQL table.



### Data Analysis 


1. List the employee number, last name, first name, sex and salary of each employee. 
2. List the first name, last name and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, emplyee number, last name and first name. 
4. List the department number for each employee along with the employee's employee number, last name, first name and department name. 
5. List first name, last name and sex of each employee whose first name is Hercules and whose last name begins with the letter B. 
6. List each employee in the Sales department, including their employee number, last name and first name. 
7. List each employee in the Sales and Development departments, including their employee number, last name, first name and department name. 
8. List the frequency counts, in descending order, of all the employee last names. 



## References
* Dataset provided by edX UofT Data Analytics, which had been generated by Trilogy Education Services, LLC. 


- - -
