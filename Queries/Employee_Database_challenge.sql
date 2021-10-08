-- DELIVERY 1.1
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
 ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')

-- DELIVERY 1.2
SELECT DISTINCT ON(rt.emp_no)
	rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date DESC;

--DELIVERY 1.3
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY(ut.title)
ORDER BY ut.count DESC;