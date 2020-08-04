--#1--
SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	e.sex AS "Sex",
	s.salary AS "Salary"
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no
;

--#2--
SELECT
	first_name AS "First Name",
	last_name AS "Last Name",
	hire_date AS "Hire Date"
FROM employees
WHERE EXTRACT (YEAR from hire_date) = '1986'
;

--#3--
SELECT
	dm.dept_no AS "Department Number",
	d.dept_name AS "Department Name",
	dm.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name"
FROM dept_manager dm
JOIN departments d
ON dm.dept_no = d.dept_no
JOIN employees e
ON dm.emp_no = e.emp_no
;

--#4--
SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
;

--#5--
SELECT
	first_name AS "First Name",
	last_name AS "Last Name",
	sex AS "Sex"
FROM employees
WHERE
	first_name = 'Hercules'
	AND last_name LIKE 'B%'
;

--#6--
SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
;

--#7--
SELECT
	e.emp_no AS "Employee Number",
	e.last_name AS "Last Name",
	e.first_name AS "First Name",
	d.dept_name AS "Department Name"
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE
	d.dept_name = 'Sales'
	OR d.dept_name = 'Development'
;

--#8--
SELECT
	last_name AS "Last Name",
	COUNT(last_name) AS "Name Count"
FROM employees
GROUP BY (last_name)
ORDER BY COUNT(last_name) DESC
;


