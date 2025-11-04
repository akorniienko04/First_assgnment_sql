USE Assignment_1;


WITH CourseAverage AS (
SELECT c.course_id, c.name AS course_name, AVG(e.grade) AS avg_grade_per_course
FROM Enrollments e
LEFT JOIN Courses c ON e.course_id = c.course_id
GROUP BY c.course_id, c.name
)

SELECT d.cafedra_name AS department_name,
i.name AS instructor_name,
c.name AS course_name,
s.name AS student_name,
s.gpa, e.grade, ca.avg_grade_per_course
FROM Enrollments e
 JOIN Students s ON e.student_id = s.student_id
 JOIN Courses c ON e.course_id = c.course_id
LEFT JOIN Instructors i ON c.instructor_id = i.instructor_id
LEFT JOIN Departments d ON i.department_id = d.department_id
LEFT JOIN CourseAverage ca ON c.course_id = ca.course_id
WHERE s.gpa > 73 AND ca.avg_grade_per_course > (SELECT AVG(grade) FROM Enrollments)
GROUP BY d.cafedra_name, i.name, c.name, s.name, s.gpa, e.grade, ca.avg_grade_per_course
HAVING AVG(e.grade) > 85
ORDER BY AVG(e.grade)
LIMIT 3;






