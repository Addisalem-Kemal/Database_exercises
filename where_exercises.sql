use employees;
select * 
from employees limit 10;

-- # 2 709 rows
select first_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya');

-- # 3 
select first_name
from employees
where first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya';

-- # 4 619 rows
select first_name
from employees
where first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya'
and gender = 'M';

-- # 5 7330 rows
select last_name
from employees
where last_name like 'E%';

-- # 6 30723 rows starts or ends with E
select last_name
from employees
where last_name like 'E%'
or last_name like '%E';
-- 23393 rows ends with 'E' but does not start with 'E'
select last_name 
from employees
where last_name like '%E'
and last_name not like 'E%';

-- # 7 899 rows start and end with 'E'
select last_name
from employees
where last_name like 'E%E';
-- 24292 rowsnend with 'E'
select last_name 
from employees
where last_name like '%E';

-- # 8 135214 rows
select hire_date 
from employees
where hire_date like '199%';

-- # 9 842 rows
select birth_date 
from employees
where birth_date like '%12-25';

-- # 10 362 rows
select birth_date, hire_date
from employees
where hire_date between '1990-01-01' and '1999-12-31'
and birth_date like '%12-25';

-- # 11 1873 rows
select first_name, last_name
from employees
where last_name like '%q%';

-- # 12 547 rows
select last_name 
from employees
where last_name like '%q%'
and last_name not like '%qu%';
