Departments
- 
dept_no varchar pk
dept_name varchar

Dept_Emp
-
dept_no varchar pk fk - Departments.dept_no
emp_no varchar pk FK - Employees.emp_no
fr_date date
to_date date

Managers
-
dept_no varchar pk fk - Departments.dept_no
emp_no varchar pk FK - Employees.emp_no
fr_date date
to_date date

Employees
-
emp_no varchar pk FK >- Salaries.emp_no
birth_date date
first_name varchar
last_name varchar
gender varchar
hire_date date

Salaries
-
emp_no varchar pk FK - Dept_Emp.emp_no
salary float
fr_date date
to_date date

Titles
-
emp_no varchar pk fk - Employees.emp_no
title varchar
fr_date date
to_date date