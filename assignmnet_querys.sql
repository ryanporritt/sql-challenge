--List the following details of each employee: employee number, last name, 
--first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, 
employees.gender, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

--List employees who were hired in 1986.
SELECT employees.emp_no, employees.last_name, employees.first_name, 
employees.gender, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE
	employees.hire_date  LIKE '1986%';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.
-- Query the table view created
SELECT * FROM department_managers;
SELECT * FROM complete_department_managers;

-- Drop view --
DROP VIEW department_managers;
DROP VIEW complete_department_managers;

CREATE VIEW department_managers AS
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no
FROM dept_manager
INNER JOIN departments
ON dept_manager.dept_no = departments.dept_no

CREATE VIEW complete_department_managers AS
SELECT department_managers.dept_no, 
department_managers.dept_name, 
department_managers.emp_no, employees.last_name, 
employees.first_name, employees.hire_date
FROM department_managers
INNER JOIN employees
ON department_managers.emp_no = employees.emp_no

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT * FROM department_employees;
SELECT * FROM complete_department_employees;

-- Drop view --
DROP VIEW department_employees;
DROP VIEW complete_department_employees;

CREATE VIEW department_employees AS
SELECT employees.emp_no, employees.last_name, 
employees.first_name, dept_emp.dept_no
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.

CREATE VIEW complete_department_employees AS
SELECT department_employees.emp_no, department_employees.last_name, 
department_employees.first_name, department_employees.dept_no,
departments.dept_name
FROM department_employees
INNER JOIN departments
ON department_employees.dept_no = departments.dept_noemp_no

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE employees.first_name  LIKE 'Hercules'
AND employees.last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT * FROM complete_department_employees
WHERE complete_department_employees.dept_no LIKE 'd007';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT * FROM complete_department_employees
WHERE complete_department_employees.dept_no LIKE 'd007'
OR complete_department_employees.dept_no LIKE 'd005';

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)  AS "name_frequency" FROM employees
GROUP BY last_name
ORDER BY "name_frequency" DESC
