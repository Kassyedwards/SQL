--Perform Data Analysis
--1. List Employee number, first and last names, gender, and salary
SELECT Employee_Information.First_name, Employee_Information.Last_name, Employee_Information.Gender, Salaries.Salary
FROM employee_information
LEFT JOIN salaries ON Employee_Information.Employee_number=Salaries.Employee_number;

--2. List Employees hired in 1986
SELECT First_name, Last_name, Hire_date
From Employee_Information
WHERE Hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY Hire_date ASC; 

--3. List Managers: Dept #, Dept Name, Manager Name, Manager's employee number, first & last name, start & end date
SELECT employee_information.employee_number,employee_information.last_name,employee_information.first_name, employee_information.hire_date, departments.department_name, departments.department_number
FROM employee_information
LEFT JOIN employee_tenure 
ON employee_information.employee_number = employee_tenure.employee_number
LEFT JOIN departments
ON employee_tenure.department_number = departments.department_number;

--4. List the department of each employee with the following information: employee number, 
--last name, first name, and department name
SELECT employee_information.employee_number,employee_information.last_name,employee_information.first_name, departments.department_name
FROM employee_information
LEFT JOIN employee_tenure 
ON employee_information.employee_number = employee_tenure.employee_number
LEFT JOIN departments
ON employee_tenure.department_number = departments.department_number;

--5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT First_name, Last_name, Employee_number
FROM Employee_Information
WHERE First_name = 'Hercules'AND Last_name LIKE 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employee_information.employee_number,employee_information.last_name,employee_information.first_name, departments.department_name
FROM employee_information
LEFT JOIN employee_tenure 
ON employee_information.employee_number = employee_tenure.employee_number
LEFT JOIN departments
ON employee_tenure.department_number = departments.department_number
WHERE department_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employee_information.employee_number,employee_information.last_name,employee_information.first_name, departments.department_name
FROM employee_information
LEFT JOIN employee_tenure 
ON employee_information.employee_number = employee_tenure.employee_number
LEFT JOIN departments
ON employee_tenure.department_number = departments.department_number
WHERE department_name = 'Sales' OR department_name = 'Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name
COUNT (last_name)
FROM Employee_Information
GROUP BY last_name
ORDER BY count DESC;