-- examples on group by - having
alter session set current_schema = hron;

-- grouping by department and then by job
select department_id, job_id
from employee
group by department_id, job_id;

-- ORA-00979: not a GROUP BY expression
select department_id, job_id, last_name
from employee
group by department_id, job_id;

-- with a join the result set becomes more interesting
select d.name as Department, j.title as "Job Title"
from department d right outer join employee e using (department_id)
	join job j using (job_id)
group by d.name, j.title;

-- average salary for all the employees
select round(avg(salary), 2) as "avg salary"
from employee;

-- average salary for each department
select department_id, round(avg(salary)) as "avg salary"
from employee
group by department_id
order by 2 desc;

-- average salary for each department, only for most junior employees
select d.name, round(avg(e.salary)) as "avg salary"
from employee e left outer join department d using (department_id)
where e.hired >= date'2020-01-01'
group by d.name;
