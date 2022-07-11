use employees;
-- # 2 
select * 
from departments limit 10;

select * 
from employees limit 100;

select * 
from dept_manager limit 100;

select * 
from departments;

select first_name, last_name, dept_name
from employees
join dept_manager
using(emp_no)
join departments
using(dept_no)
where to_date >= now()
;

-- # 3 

select first_name, last_name, dept_name
from employees
join dept_manager
using(emp_no)
join departments
using(dept_no)
where to_date >= now()
and gender = 'F';

-- # 4 
select title, count(*)
from dept_emp
join departments
using(dept_no)
join titles
using(emp_no)
where titles.to_date >= now()
and dept_name = 'Customer Service'
group by title;

-- # 5
select dept_name, salary, first_name, last_name
from employees
join dept_manager
using(emp_no)
join departments
using(dept_no)
join salaries
using(emp_no)
where salaries.to_date >= now()
and dept_manager.to_date >= now()
;

-- # 6
select * 
from titles;

select dept_name, count(*)
from employees
join dept_emp
using(emp_no)
join departments
using(dept_no)
where dept_emp. to_date >= now()
group by dept_name;

-- # 7 
select dept_name,avg(salary)
from salaries
join dept_emp
using(emp_no)
join departments
using(dept_no)
where dept_emp.to_date >= now()
and salaries.to_date >= now()
group by dept_name
order by avg(salary) desc limit 1;

-- # 8 
select first_name, last_name, salary, dept_name
from employees
join dept_emp
using(emp_no)
join salaries
using(emp_no)
join departments
using(dept_no)
where dept_name = 'Marketing' 
and dept_emp.to_date >= now()
and salaries.to_date >= now()
order by salary desc limit 1
;

-- # 9 
select first_name, last_name, dept_name, salary
from employees
join dept_manager
using(emp_no)
join departments
using(dept_no)
join salaries
using(emp_no)
where dept_manager.to_date >= now()
and salaries.to_date >= now()
order by salary desc limit 1
;
 -- # 10
 select dept_name, round(avg(salary), 0)
 from dept_emp
 join salaries
 using(emp_no)
 join departments
 using(dept_no)
 group by dept_name;

