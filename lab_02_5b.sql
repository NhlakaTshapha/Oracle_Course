select employee_id,last_name,job_id,hire_date STARTDATE
from employees;

------------------------6
select distinct job_id
from employees;

------------------Task 3
----------7
select employee_id "EMP #",last_name Employee,job_id Job,hire_date "Hire Date"
from employees;

---------8
select last_name ||', '||job_id "Employee and Title"
from employees;