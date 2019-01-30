use employees;

select * from employees
where first_name = 'Irena'
  and
      gender = 'M'
  or
      first_name = 'Vidya'
  and
      gender = 'M'
  or
      first_name = 'Maya'
  and
      gender = 'M'
  order by last_name, first_name desc;


select * from employees
where last_name like concat('e%', '%e')
and
first_name like concat('e%', '%e')
-- or last_name like ('e%')
order by emp_no desc;

select concat(first_name,' ',last_name) as first_last
from employees
where last_name like ('e%')
and first_name like ('e%');


select * from employees
where hire_date
between '1990-01-01' and '1999-12-31';

select * from employees
where birth_date like '%-12-25';

select * from employees
where last_name like '%q%';

select * from employees
where hire_date like '199%'
and birth_date like '%12-25'
order by birth_date asc, hire_date desc;


select emp_no, concat(first_name,' ',last_name) as first_last,
DATEDIFF(CURDATE(), hire_date) as days_employed from employees
where hire_date like '199%'
and birth_date like '%12-25'
order by days_employed desc;


select * from employees where last_name like '%q%'
and last_name  not like '%qu%';