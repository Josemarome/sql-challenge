
DROP TABLE departments

CREATE TABLE departments (
  dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
  dept_name VARCHAR(40) NOT NULL
);


DROP TABLE titles

CREATE TABLE titles (
  title_id VARCHAR(10) PRIMARY KEY NOT NULL,
  title VARCHAR(30)
);


DROP TABLE employees

CREATE TABLE employees (
  emp_no INT PRIMARY KEY NOT NULL,
  emp_title_id VARCHAR(10) references titles(title_id),
	birth_date DATE, 
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(5),
	hire_date DATE
);


DROP TABLE dept_emp

CREATE TABLE dept_emp (
  emp_no INT references employees(emp_no),
  dept_no VARCHAR(10) references departments(dept_no)
);


DROP TABLE dept_manager

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) references departments(dept_no),
  	emp_no INT references employees(emp_no)
);


DROP TABLE salaries

CREATE TABLE salaries (
  emp_no INT references employees(emp_no),
  salary INT
);