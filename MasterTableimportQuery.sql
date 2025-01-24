
--Project status
with Project_status as(
	select project_id,project_name,project_budget,'Upcoming Project' as status from upcoming_projects
	union 
	select project_id,project_name,project_budget,'Completed Project' as status from completed_projects
		)
	select e.employee_id,
		   e.first_name,
		   e.last_name,
		   e.job_title,
		   e.salary,
		   d.Department_Name,
		   d.Department_Budget,
		   d.Department_goals,
		   pa.project_id, 
		   p.project_name,
		   p.project_budget,
		   p.status 
		from employees e inner join departments d on e.department_id=d.Department_ID 
		inner join project_assignments pa on e.employee_id=pa.employee_id
        inner join Project_status p on p.project_id=pa.project_id









