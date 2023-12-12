select * from employees;


create or replace view pp_view 
as
select employee_id, first_name,last_name,email
from employees
where first_name='Elliot';

select * from pp_view;


create  view pp1_view
as
select e1.last_name,e2.first_name,d1.department_name
from employees e1,employees e2,departments d1
where e1.manager_id = e2.employee_id and e1.department_id=d1.department_id;


create or replace view pp3_view
as
select e1.last_name,e2.first_name,d1.department_name,d1.location_id,d1.jobs_id
from employees e1,employees e2,departments d1
where e1.manager_id = e2.employee_id and e1.department_id=d1.department_id;

select * from pp3_view;

--parameterized view

create or replace view pp4_view(hire_date)
as
select e1.employee_id,e2.first_name,e1.last_name,d1.department_name,e1.hire_date
from employees e1,employees e2,departments d1
where e1.manager_id =e2.employee_id and e1.department_id=d1.department_id and e1.hire_date=:hire_date;


select * from pp5_view(2023);

create  MATERIALIZED view pp6_view
as
select  department_id,avg(salary)
from employees
group by department_id; 

select * from pp6_view;
/
update employees 
set salary = salary + 1000;
