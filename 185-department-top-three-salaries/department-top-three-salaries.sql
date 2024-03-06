# Write your MySQL query statement below
SELECT Department, Employee, Salary
FROM (SELECT e.name AS Employee, d.name AS Department, e.salary AS Salary, DENSE_RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) AS RankVal
FROM Employee AS e
INNER JOIN Department AS d
ON e.departmentId = d.id) AS a
WHERE RankVal <= 3;