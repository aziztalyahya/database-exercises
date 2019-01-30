use employees;

select distinct title
from titles;

select last_name
from employees
where last_name like 'e%e'
group by last_name;

select concat(first_name,' ',last_name) as first_last
from employees
where last_name like 'e%e'
group by first_last, last_name;

select last_name, count(last_name)
from employees
where last_name like '%q%'
and last_name not like '%qu%'
group by last_name
order by last_name;


select count(*), gender
from employees
where first_name = 'Irena'
or first_name = 'Vidya'
or first_name = 'Maya'
group by gender;