SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_title
FROM employees AS e
	INNER JOIN titles AS ti
		ON (e.emp_no = ti.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;


SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC
