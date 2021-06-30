-------------------------1
SELECT Location_id,street_address,city,state_province,Country_name
from locations natural join countries;

-------------------------2
SELECT e.last_name,e.Department_id,d.Department_name
FROM employees e
join departments d on e.department_id=d.department_id;

-------------------------3
select last_name,job_id,e.department_id,department_name
from employees e
join departments d on e.department_id=d.department_id
join Locations l on d.location_id=l.location_id
where l.city='Toronto';

-------------------------4

SELECT E.LAST_NAME "eMPLOYEE", E.EMPLOYEE_ID "EMP#",m.Last_name "Manager", m.employee_id "Mgr#"
from employees e
join employees m
on (e.manager_id=m.employee_id);

select * from employees;
-------------------------5
SELECT E.LAST_NAME "EMPLOYEE", E.EMPLOYEE_ID "EMP#",m.Last_name "Manager", m.employee_id "Mgr#"
from employees e
Left outer join employees m
on e.manager_id=m.employee_id
order by 2;


-------------------------6
select e.department_id Department,e.last_name Employee,c.last_name Colleague
from employees e
join employees c
on e.department_id=c.department_id
where e.employee_id<>c.employee_id
order by e.department_id,e.last_name,c.last_name;


--------------------------7
SELECT e.last_name,e.job_id,department_name,salary,j.job_title
from employees e
join departments d on (e.department_id=d.department_id)
join Jobs j on e.job_id=j.job_id;


--------------8
select e.last_name, e.hire_date
from employees e
Join employees d
on d.last_name='Davies'
where d.hire_date<e.hire_date;

-----------------9
select e.last_name,e.hire_date,m.last_name Manager,m.hire_date "Manager hire date"
from employees e
join employees m 
on (e.manager_id=m.employee_id)
where e.hire_date<m.hire_date;

-----------------
