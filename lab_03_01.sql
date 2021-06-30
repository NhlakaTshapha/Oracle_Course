select * from employees;
------------1

select last_name,salary
from employees
where salary>12000;


------------2
Select last_name,department_id
from employees
where employee_id=176;

------------3
select last_name,salary
from employees
where salary not between 5000 and 12000;

-----------4
select last_name,job_id,hire_date
from employees
where last_name in ('Matos','Taylor');

-----------5
select last_name,department_id
from employees
where department_id in (20,50)
order by last_name;

-----------6
select last_name,salary
from employees
where salary between 5000 and 12000
and department_id in (20,50);

----------7
select last_name,hire_date
FROM employees
where hire_date between '01-JAN-10' and '01-JAN-11';

---or
select last_name,hire_date
FROM employees
where hire_date >= '01-JAN-10' and hire_date <= '01-JAN-11';

----------8
SELECT  last_name,job_id
FROM Employees
WHERE manager_id  is null;

--------9
select last_name,salary,commission_pct
FROM employees
where commission_pct is not null
order by 2 desc,3 desc;

--------10

SELECT LAST_NAME,SALARY 
FROM EMPLOYEES 
WHERE SALARY > &SAL;

---------11 
SELECT employee_id,last_name,salary,department_id
FROM employees
where manager_id=&manager_id
order by &order_column;

------------12
select last_name
from employees
where last_name like '__a%';

------------13
select last_name
from employees
where last_name like '%a%' and last_name like '%e%';

------------14
SELECT LAST_NAME, JOB_ID,SALARY
FROM EMPLOYEES
WHERE JOB_ID IN ('SA_REP','ST_CLERCK')
AND SALARY NOT IN (2500,3500,7000);

------------15
SELECT  last_name,salary,commission_pct
FROM employees
where commission_pct=.20;













