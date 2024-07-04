# Write your MySQL query statement below
/*SELECT ROUND(AVG(CASE WHEN ordertype = 'immediate' THEN 1 ELSE 0 END) *100,2) AS immediate_percentage
FROM
(
(SELECT *, 
(CASE WHEN first_order_date = customer_pref_delivery_date THEN 'immediate' ELSE 'scheduled' END) AS ordertype
FROM
(SELECT customer_id, MIN(order_date) AS first_order_date, customer_pref_delivery_date
FROM Delivery
GROUP BY customer_id) AS o1)) AS o2*/

Select 
    round(avg(order_date = customer_pref_delivery_date)*100, 2) as immediate_percentage
from Delivery
where (customer_id, order_date) in (
  Select customer_id, min(order_date) 
  from Delivery
  group by customer_id
);