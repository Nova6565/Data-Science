create view vw_employee_details as select employees.first_name, employees.last_name, departments.department_name from employees join departments 
on departments.department_id = employees.department_id; 

create or replace view vw_work_hrs asselect employees.fname, empoyees.lname, projects.pname, work.hours
from employees join work on employees.employee_id = work.employee_id join projects
on work.project_id = projects.project_id where employees.department_id = 5;

create view vw_high_status_suppliers as * from supplierswhere status > 15 with check option;
