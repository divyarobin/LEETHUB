# Write your MySQL query statement below
/*SELECT query_name, ROUND((rating/position)/ COUNT(*),2) AS quality,
ROUND(COUNT(SELECT * FROM Queries WHERE rating < 3)/COUNT(*),2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;*/

/*WITH ct AS
(
    SELECT query_name, COUNT(query_name) AS cntquery 
    FROM Queries 
    WHERE rating < 3
    GROUP BY query_name
)
SELECT query_name, (SELECT cntquery FROM ct) / COUNT (query_name) AS poor
FROM Queries
GROUP BY query_name;*/

SELECT query_name, 
ROUND(AVG(rating/position),2) AS quality,
ROUND(AVG(CASE WHEN rating < 3 THEN 1 ELSE 0 END) *100,2) AS poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name;
