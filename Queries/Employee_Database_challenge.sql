---Deliverable 1: The Number of Retiring Employees by Title----
drop table Retirement_Titles;
select e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date, e.birth_date
INTO Retirement_Titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no= ti.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
order by emp_no;


SELECT * from employees;
SELECT * from titles;
SELECT * from Retirement_Titles;


-- Table: Unique_Titles -------Use Dictinct with Orderby to remove duplicate rows
drop table Unique_Titles ;
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO Unique_Titles 
FROM Retirement_Titles
ORDER BY emp_no, to_date DESC;

select * from Unique_Titles;

-----Table:Retiring_Titles------Find the number of employees by their most recent job title who are about to retire.
select count(title),title 
INTO Retiring_Titles
from  Unique_Titles 
group by title
order by COUNT DESC;

SELECT * FROM Retiring_Titles;

-----------Deliverable 2: The Employees Eligible for the Mentorship Program-------
SELECT e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date,ti.title
INTO Mentorship_Eligibility
FROM employees as e
inner join dept_emp as de
on e.emp_no=de.emp_no
inner join titles as ti
on e.emp_no=ti.emp_no;

select * from  Mentorship_Eligibility;

select DISTINCT ON (emp_no) emp_no, first_name, last_name, birth_date, from_date, to_date,title
from Mentorship_Eligibility
WHERE birth_date BETWEEN '1965-01-01' AND '1965-12-31'
order by emp_no;