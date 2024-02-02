# Write your MySQL query statement below
SELECT customer_id
FROM Customer
#INNER JOIN Product AS p
#ON c.product_key = p.product_key
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product);