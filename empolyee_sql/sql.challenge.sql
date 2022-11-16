


CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);
Drop table dept_emp
CREATE TABLE "dept_emp" (
    "emp_no" VARCHAR   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_saleries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);
 
 select * from departments

--List the employee number, 
--last name, first name, sex, 
--and salary of each employee

SELECT employees.emp_no, employees.last_name, employees.first_name,
employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;

--List the first name, last name, 
--and hire date for the employees who were hired in 1986

SELECT employees.last_name, employees.first_name,
employees.hire_date
FROM employees
WHERE hire_date between '01/01/1986' and '12/31/1986';

--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.

Select 

--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.

Select dept_manager.emp_no,  dept_manager.dept_no, 
departments.dept_name, employees.last_name, employees.first_name
From departments
from employees
INNER JOIN dept_manager ON emp_no

--List first name, last name, and sex of each 
--employee whose first name is Hercules and 
--whose last name begins with the letter B.

Select employees.first_name, employees.last_name, employees.sex
from employees
where first_name = "Hercules" and last_name includes "b"


--List each employee in the Sales department, 
--including their employee number, last name, and first name.

Select employee.emp_no, employee.last_name, employee.first_name
	if dept_no = "d007"
	
--List each employee in the Sales and 
--Development departments, including their employee number,
--last name, first name, and department name.

Select employee.emp_no, employee.last_name, employee.first_name, departments.dept_name
	if dept_no = "d007" or "d005"
	
--List the frequency counts, in descending order, 
--of all the employee last names 
--(that is, how many employees share each last name).



