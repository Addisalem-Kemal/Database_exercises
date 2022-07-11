use employees;

-- # 2 
select first_name, last_name, concat(first_name, ' ', last_name) as full_name 
from employees
where last_name like 'E%E';

-- # 3 
select first_name, last_name, upper(concat(first_name, ' ', last_name)) as full_name
from employees
where last_name like 'E%E';

-- # 4 
select datediff(now(), hire_date) as days_worked, first_name, last_name, birth_date, hire_date
from employees
where birth_date like '%12-25'
and hire_date like '199%';

select * from salaries limit 100;
-- # 5 
select min(salary), max(salary)
from salaries
where to_date >= curdate();

-- # 6
select first_name, last_name, birth_date, (lower(
concat(
substr(first_name, 1,1), 
substr(last_name, 1,4), '_', 
substr(birth_date, 6,2), substr(birth_date, 3,2))))
as user_name
from employees;


