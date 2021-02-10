


----Creating tables for PH-EmployeeDB
--1)
DROP TABLE IF EXISTS departments;
create table departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(40) NOT NULL,
	primary key (dept_no)
);
DROP TABLE IF EXISTS employees;
---2)
CREATE TABLE employees (
	 emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
	primary key (emp_no)
);

---3)
DROP TABLE IF EXISTS dept_manager;
Create table dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no ),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

----4)
DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no )
);

----5)
DROP TABLE IF EXISTS titles;
CREATE TABLE titles (
  emp_no INT NOT NULL,
  title VARCHAR NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  PRIMARY KEY (emp_no, title, from_date),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
  );

---6
DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no, dept_no)
);



---get CSV files
----1)
SELECT * FROM departments;

---2)
SELECT * FROM employees;
---3)
SELECT * FROM dept_manager;
----4)
SELECT * FROM salaries;
---5)
SELECT * FROM dept_emp;
---6)
SELECT * FROM titles;

