update employees 
set salary =1000;
/
select salary  from employees;
/
create table emp_test87
as select * from employees;

/
update emp_test87
set salary =salary+1200;

select * from emp_test87;


create  MATERIALIZED view pp8_view
as
select  department_id,avg(salary)
from emp_test87
group by department_id; 


select * from pp8_view;


execute dbms_mview.refresh('pp8_view');







