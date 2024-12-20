/*
    Introduction to Relational Database (on MySQL)
    
    https://github.com/egalli64/rdb-intro

    Examples on logical operators
 */
use hron;

select *
from employee
where department_id < 3;

-- use "not" if it is the other way round
select *
from employee
where not department_id > 2;

-- use "and" if both conditions should hold
select *
from employee
where salary < 3000 and manager_id = 124;

-- use "or" if one or the other should holds
select *
from employee
where salary < 2200 or last_name = 'King';
