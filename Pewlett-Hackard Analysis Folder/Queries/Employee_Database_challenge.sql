-- Create retirement titles table
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
	FROM employees as e
	JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Create unique titles table
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date

-- Create retiring titles table
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Create mentorship eligibility table
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
FROM employees as e
LEFT JOIN dept_employees as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles as t
ON (de.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
	AND de.to_date = '9999-01-01'
ORDER BY emp_no;

-- Expanding mentorship eligibility
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO expanded_mentors
FROM employees as e
LEFT JOIN dept_employees as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles as t
ON (de.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1964-01-01' AND '1969-12-31'
	AND de.to_date = '9999-01-01'
ORDER BY emp_no;

-- Grouping potential mentors by title
SELECT COUNT(title), title
FROM expanded_mentors
GROUP BY title
ORDER BY count DESC;