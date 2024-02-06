# Write your MySQL query statement below
SELECT man.employee_id AS employee_id, man.name AS name, COUNT(*) AS reports_count, ROUND(AVG(emp.age),0) AS average_age
FROM Employees AS man
JOIN Employees AS emp
ON man.employee_id = emp.reports_to
GROUP BY emp.reports_to
ORDER BY man.employee_id;