-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(10) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

-- DROP TABLE departments CASCADE
-- SELECT * FROM departments

CREATE TABLE employees (
     emp_no VARCHAR(10) NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);

-- DROP TABLE employees CASCADE
-- SELECT * FROM employees

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
    emp_no VARCHAR(10) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- DROP TABLE dept_manager
-- SELECT * FROM dept_manager

CREATE TABLE salaries (
  emp_no VARCHAR(10) NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

-- DROP TABLE salaries
-- SELECT * from salaries

CREATE TABLE dept_emp (
  emp_no VARCHAR(10) NOT NULL,
  dept_no VARCHAR(10) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- DROP TABLE dept_emp
-- SELECT * from dept_emp

CREATE TABLE titles (
  emp_no VARCHAR(10) NOT NULL,
  title VARCHAR(40) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL
  --PRIMARY KEY (emp_no)
);

-- DROP TABLE titles
-- SELECT * FROM titles

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM retirement_info;

