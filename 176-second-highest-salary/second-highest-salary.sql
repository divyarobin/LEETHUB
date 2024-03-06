# Write your MySQL query statement below
SELECT CASE WHEN COUNT(RankVal <> 1) THEN salary ELSE null END AS SecondHighestSalary
FROM (SELECT id, salary, DENSE_RANK() OVER(ORDER BY salary DESC) AS RankVal FROM Employee) AS a
WHERE RankVal = 2;