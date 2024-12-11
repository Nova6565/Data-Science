select * from employees where hire_date >= current_date - interval 30 day;


create procedure sp_get_employee_hours(emp_id int)
begin
  select e.fname, e.lname, sum(w.hours) as total_hours 
  from employees e join works_on w on e.ssn = w.essn 
  where e.ssn = emp_id group by e.fname, e.lname;
end;


create procedure sp_department_employee_count()
begin
  select d.department_id, d.department_name, count(e.ssn) as employee_count 
  from departments d 
  join employees e on d.department_id = e.department_id 
  group by d.department_id, d.department_name 
  having count(e.ssn) > 5;
end;
