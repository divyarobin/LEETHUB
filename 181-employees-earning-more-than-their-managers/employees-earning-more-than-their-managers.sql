# Write your MySQL query statement below
SELECT emp.name AS Employee
FROM Employee AS man
JOIN Employee AS emp
ON man.id = emp.managerId
WHERE emp.salary > man.salary;