-- Drop table if exists
DROP TABLE titles

-- Create new table
CREATE TABLE titles (
	emp_no INT,
	title VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR
);

ALTER TABLE employees
ADD COLUMN id SERIAL PRIMARY KEY;

-- View table columns and datatypes
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;
