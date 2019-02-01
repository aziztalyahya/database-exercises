use employess;

select first_name, last_name, hire_date
from employees
where hire_date in (
  select hire_date
  from employees
  where emp_no = 101010
);

select * from employees


select title, count(*) from titles as t
where t.emp_no in (
    SELECT emp_no
    from employees
    where first_name = 'Aamod'

)
group by t.title;


select d.dept_name from departments as d
where d.dept_no in (
    select e.emp_no
    from employees as e
    where e.gender = 'F'
);


select d.dept_name from departments as d
where d.emp_no in (
    select dm.emp_no
    from dept_manager as dm
    where dm.emp_no in (
      select
    )
);



select first_name, last_name
from employees as e
where e.emp_no in (
  select dm.emp_no
  from dept_manager as dm
  where e.gender = 'F'
   and dm.to_date = '9999-01-01'
)

select * from dept_manager
