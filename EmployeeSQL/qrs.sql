-List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e 
JOIN salaries s
ON e.emp_no = s.emp_no
;


SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE 
		e.hire_date > '1985-12-31' AND 
		e.hire_date < '1987-01-01'
;



SELECT m.dept_no, m.emp_no, d.dept_name, e.last_name, e.first_name
FROM dept_manager m
JOIN employees e
ON m.emp_no = e.emp_no
JOIN departments d
ON d.dept_no = m.dept_no
;




SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e
ON de.emp_no = e.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
;




SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE 
		e.first_name = 'Hercules' AND 
		e.last_name LIKE 'B%'
;



SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
;


SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
;



SELECT e.last_name, COUNT (*)
FROM employees e
GROUP BY e.last_name
ORDER BY COUNT(*) DESC
;