-- View all students
SELECT * FROM Students;

-- View all courses
SELECT * FROM Courses;

-- View all student-course enrollments
SELECT * FROM StudentCourses;

-- Get all students enrolled in a specific course (e.g., course ID 1)
SELECT s.name AS Student, c.name AS Course
FROM StudentCourses sc
JOIN Students s ON sc.StudentId = s.id
JOIN Courses c ON sc.CourseId = c.id
WHERE sc.CourseId = 1;

-- Get all courses a specific student (e.g., student ID 3) is enrolled in
SELECT s.name AS Student, c.name AS Course
FROM StudentCourses sc
JOIN Students s ON sc.StudentId = s.id
JOIN Courses c ON sc.CourseId = c.id
WHERE sc.StudentId = 3;

-- Get distinct student names
SELECT DISTINCT name FROM Students;

-- Get students where name starts with 'R'
SELECT * FROM Students WHERE name LIKE 'R%';

-- Get students where name contains 'a'
SELECT * FROM Students WHERE name LIKE '%a%';

-- Get students where name end with 'g'
SELECT * FROM Students WHERE name like "%g";

-- Get students where name contains 'p'
SELECT * FROM Students WHERE name like "P_%";

-- Get students by multiple addresses (if address column exists)
-- SELECT * FROM Students WHERE address IN ('Surat', 'Vadodara');

-- Count total students
SELECT COUNT(*) AS total_students FROM Students;

-- Count number of students by age
SELECT age, COUNT(*) AS count FROM Students GROUP BY age;

-- Order students by name ascending
SELECT * FROM Students ORDER BY name ASC;

-- Order students by name descending
SELECT * FROM Students ORDER BY name DESC;

-- Show students with non-null phone numbers
SELECT * FROM Students WHERE phone IS NOT NULL;

-- Show students with null phone numbers (if any exist)
SELECT * FROM Students WHERE phone IS NULL;

-- 🔴 DELETE Queries

-- Delete a specific student by ID
DELETE FROM Students WHERE id = 6;

-- Delete all courses below a certain price
DELETE FROM Courses WHERE price < 8000;

-- Delete a specific enrollment from StudentCourses
DELETE FROM StudentCourses WHERE StudentId = 3 AND CourseId = 2;

-- Delete all enrollments for a student
DELETE FROM StudentCourses WHERE StudentId = 2;
