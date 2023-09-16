SELECT event_day AS day, emp_id, SUM(total_time) AS total_time
FROM (
    SELECT emp_id, event_day, SUM(out_time - in_time) AS total_time
    FROM Employees
    GROUP BY emp_id, event_day
) AS subquery
GROUP BY event_day, emp_id
