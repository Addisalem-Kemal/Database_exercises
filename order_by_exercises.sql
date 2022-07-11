use employees;
select * 
from employees limit 10;

-- # 2 Irena Reutenauer and Vidya Simmen
select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name;

-- # 3 Irena Acton and Vidya Zweizig
select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;

-- # 4 Irena Acton and Maya Zyda
select first_name, last_name
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;

-- # 5 899 rows. first emp_no = 10021 Ramzi Erde, last emp_no = 499648 Tadahiro Erde
select emp_no, first_name, last_name
from employees
where last_name like 'E%E'
order by emp_no;

-- # 6 899 rows. newest employee is Teiji Eldridge and oldest employee is Sergi Erde
select emp_no, first_name, last_name, hire_date
from employees
where last_name like 'E%E'
order by hire_date desc;

-- # 7 Oldest employee hired last is Khun Bernini
select first_name, last_name, hire_date, birth_date
from employees
where birth_date like '%12-25'
and hire_date like '199%'
order by birth_date, hire_date desc;

-- youngest empolyees hired first is Douadi Pettis
select first_name, last_name, hire_date, birth_date
from employees
where birth_date like '%12-25'
and hire_date like '199%'
order by birth_date desc, hire_date;
