CREATE VIEW viewtest3 AS 
select t.title, round(avg(s.salary), 2) as "Average Salary"
from titles as t
inner join employees as e on t.title_id=e.emp_title
inner join salaries as s on e.emp_no=s.emp_no
group by t.title;

