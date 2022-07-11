use employees;
show tables;

-- # 2 Zykh, Zyda, Zwicker, Zweizig, Zumaque, Zultner, Zucker, Zuberek, Zschoche, Zongker
select distinct last_name
from employees 
order by last_name desc limit 10;

-- # 3 Alselem Cappello, Utz Mandell, Bouchung Schreiter, Boacai Kushner, Petter Stroustrup
select first_name, last_name, birth_date, hire_date
from employees
where birth_date like '%12-25'
and hire_date like '199%'
order by hire_date limit 5;

-- # 4 Pranay Narweker, Marjo Farrow, Ennio Karcich, Dines Lubachevsky, Ipke Fontan
select first_name, last_name, birth_date, hire_date
from employees
where birth_date like '%12-25'
and hire_date like '199%'
order by hire_date limit 5 offset 45;

