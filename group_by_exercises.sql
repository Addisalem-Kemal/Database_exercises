use employees;
show tables;

-- # 2 
select distinct title
from titles;

-- # 3 
select distinct last_name
from employees
where last_name like 'E%E'
group by last_name;

-- # 4 
select distinct first_name, last_name
from employees
where last_name like 'E%E';

-- # 5  Chleq, Lindqvist, Qiwen
select distinct last_name
from employees
where last_name like '%q%'
and not last_name like '%qu%';

-- # 6 
select distinct last_name, count(*)
from employees
where last_name like '%q%'
and not last_name like '%qu%'
group by last_name;

-- # 7 
select * from employees limit 10;

select first_name, count(*)
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by first_name;

-- # 8 yes 6 duplicates
select first_name, last_name, birth_date, (lower(
concat(
substr(first_name, 1,1), 
substr(last_name, 1,4), '_', 
substr(birth_date, 6,2), substr(birth_date, 3,2))))
as user_name
from employees;

select distinct first_name, last_name, birth_date, (lower(
concat(
substr(first_name, 1,1), 
substr(last_name, 1,4), '_', 
substr(birth_date, 6,2), substr(birth_date, 3,2))))
as user_name
from employees;



