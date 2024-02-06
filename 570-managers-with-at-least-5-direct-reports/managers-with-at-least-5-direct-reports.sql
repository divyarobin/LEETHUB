# Write your MySQL query statement below
SELECT man.name AS name
FROM Employee AS man
JOIN Employee AS emp
ON man.id = emp.managerId
GROUP BY emp.managerId
HAVING COUNT(*) >= 5; 