-- # 3
use employees;

-- # 4 departments, dept_emp, dept_manager, employees, salaries, titles
show tables;

-- # 5 int, date, varchar, enum
describe employees;

-- # 6 Which tables do you think contain a numeric type column?
--  employees, salaries, dept_emp

-- #7  which tables do you think contain a string type column?
-- departments, titiles, dept_manager
describe departments;

-- #8 which tables do you think contain a date type column?
-- employees, dept_emp, salaries, titles

describe titles;
-- # 9 what is the relationship between employees and departments?
-- none
select * from departments limit 10;
select * from employees limit 10;

-- # 10
select * from dept_manager limit 5;

