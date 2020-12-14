--1 each employee: employee number, 
--last name, first name, sex, and salary.

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries as s on e.emp_no=s.emp_no


--2 List first name, last name, 
--and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date from employees
where hire_date >= '1986-01-01' and hire_date < '1987-01-01'


--3 List the manager of each department with the following information: 
--department number, department name, 
--the manager's employee number, last name, first name.

select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from departments as d
inner join dept_manager as dm on dm.dept_no = d.dept_no
inner join employees as e on dm.emp_no=e.emp_no


--4 List the department of each employee with the following information: 
--employee number, 
--last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de on e.emp_no=de.emp_no
inner join departments as d on d.dept_no=de.dept_no 


--5  List first name, last name, and sex for employees whose
--first name is 
--"Hercules" and last names begin with "B."

select first_name, last_name, sex from employees 
where first_name = 'Hercules'
and last_name like 'B%'


--6 ist all employees in the Sales department, including their
--employee number,
--last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de on de.emp_no=e.emp_no
inner join departments as d on de.dept_no=d.dept_no
where dept_name = 'Sales'


--7 List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
inner join dept_emp as de on de.emp_no=e.emp_no
inner join departments as d on d.dept_no=de.dept_no
where dept_name = 'Sales' or dept_name = 'Development'


--8 
 --In descending order, list the frequency count of employee last names, i.e., 
 --how many employees share each last name.

select last_name, count(last_name) as "counts" from employees
group by last_name
order by "counts" desc
