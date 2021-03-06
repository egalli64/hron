-- examples on null
alter session set current_schema = hron;

-- check null
select employee_id, first_name, last_name, commission
from employee
where last_name = 'King' and commission is null;

-- !!! WRONG - no row is returned !!!
select employee_id, first_name, last_name, commission
from employee
where last_name = 'King' and commission = null; -- !!! WRONG !!!

-- check not null
select employee_id, first_name, last_name, commission
from employee
where last_name = 'King' and commission is not null;

-- !!! WRONG  - no row is returned !!!
select employee_id, first_name, last_name, commission
from employee
where last_name = 'King' and commission != null;

-- null in operations, null is returned
select first_name, last_name, salary * commission
from employee
where last_name = 'King';

-- using nvl() to get rid of null
select employee_id, first_name, last_name, salary * nvl(commission, 0) as "Monthly Commission"
from employee
where last_name = 'King';

-- using nvl2()
select first_name, last_name, nvl2(commission, 'value', 'no value') as commission
from employee
where last_name = 'King';

-- coalesce()
select coalesce(null, null, 42, null)
from dual;
