use employees;

-- # 1 
select hire_date
from employees
where emp_no = 101010;

select *
from employees
join dept_emp
using(emp_no)
where hire_date = (
	select hire_date
	from employees
	where emp_no = 101010)
and to_date > now();
  
-- # 2 
select emp_no
from employees 
join dept_emp
using(emp_no)
where first_name = 'Aamod'
and to_date >= now();
;


select title, count(*)
from employees
join titles
using(emp_no)
where emp_no  = (select emp_no
		from employees 
		join dept_emp
		using(emp_no)
		where first_name = 'Aamod'
		and to_date >= now())
group by title 
        ;
        
-- # 3 214916
select emp_no
from dept_emp
where to_date < now();
        
select count(*)
from employees
where emp_no not in (
		select emp_no
		from dept_emp
		where to_date < now());
        
-- # 4
select emp_no
from dept_manger 
where to_date > now();

select first_name, last_name
from employees
where emp_no in (select emp_no
			from dept_manager 
			where to_date > now())
and gender = 'F';

-- # 5 154543
select avg(salary)
from salaries;

select count(*)
from employees
join salaries 
using(emp_no)
where salary > (select avg(salary)
			from salaries)
and to_date > now()
;

-- # 6 
select max(salary)
from salaries
where to_date > now();

select stddev(salary)
from salaries
where to_date > now();

select count(*)
from salaries
where salary > (select max(salary)
		from salaries
		where to_date > now())
        -
        (select stddev(salary)
		from salaries
		where to_date > now());

	