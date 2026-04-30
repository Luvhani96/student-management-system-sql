SELECT * FROM students;

SELECT * FROM departments;

SELECT * FROM courses;

SELECT * FROM enrollments;

SELECT * FROM marks;

-- Student with thier departments
SELECT s.first_name, s.last_name, d.department_name
FROM students s
JOIN departments d ON s.department_id = d.department_id;

-- Courses with lecturers
SELECT c.course_name, l.lecturer_name
FROM courses c
JOIN lecturers l ON c.lecturer_id = l.lecturer_id;

-- Student enrolled in courses
SELECT s.first_name, c.course_name, e.enroll_date
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

-- Students marks with courses names
SELECT s.first_name, c.course_name, m.marks
FROM marks m
JOIN students s ON m.student_id = s.student_id
JOIN courses c ON m.course_id = c.course_id;

-- Average marks per student 
SELECT student_id, AVG(marks) AS average_marks
FROM marks
GROUP BY student_id;

-- Total marks per student
SELECT student_id, SUM(marks) AS total_marks
FROM marks
GROUP BY student_id;

-- Highest marks per course
SELECT course_id, MAX(marks) AS highest_mark
FROM marks
GROUP BY course_id;

-- Lowest marks per course
SELECT course_id, MIN(marks) AS lowest_mark
FROM marks
GROUP BY course_id;

-- Student who scored above > 75
SELECT * FROM marks
WHERE marks > 75;

-- Students who failed < 50
SELECT * FROM marks
WHERE marks < 50;

-- Attendance report 
SELECT s.first_name, a.attendance_date, a.status
FROM attendance a
JOIN students s ON a.student_id = s.student_id;

-- Count attendance per student 
SELECT student_id, COUNT(*) AS total_classes
FROM attendance
GROUP BY student_id;

-- Total fees paid per student
SELECT student_id, SUM(amount) AS total_paid
FROM fees
GROUP BY student_id;

-- Student who paid > 5000
SELECT * FROM fees
WHERE amount > 5000;

-- Student who paid < 5000
-- Student who paid > 5000
SELECT * FROM fees
WHERE amount < 5000;

-- Full student report
SELECT 
s.first_name,
s.last_name,
d.department_name,
c.course_name,
m.marks
FROM students s
JOIN departments d ON s.department_id = d.department_id
JOIN marks m ON s.student_id = m.student_id
JOIN courses c ON m.course_id = c.course_id;
