# Write your MySQL query statement below
#SELECT *
#FROM Students AS s
#LEFT OUTER JOIN Examinations AS e
#ON s.student_id = e.student_id
#RIGHT OUTER JOIN Subjects AS sub
#ON e.subject_name = sub.subject_name
#ORDER BY s.student_id#, sub.subject_name;

#s.student_id AS student_id, s.student_name AS student_name, sub.subject_name AS subject_name, COUNT(*) AS attended_exams

SELECT s.student_id, s.student_name, sub.subject_name,
COUNT(e.subject_name) AS attended_exams
FROM Students AS s
JOIN Subjects AS sub
LEFT JOIN Examinations AS e
ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY s.student_id, sub.subject_name
ORDER BY student_id, subject_name;