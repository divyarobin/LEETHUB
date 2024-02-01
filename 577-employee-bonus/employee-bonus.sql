# Write your MySQL query statement below
SELECT e.name, b.bonus
FROM Employee AS e
LEFT JOIN Bonus AS b
USING(empId)
WHERE b.bonus < 1000 OR b.bonus IS NULL;