-- Showing Students with their relevant depts
SELECT s.std_id, s.name, d.dept_id, d.dept_name 
FROM student s, department d 
WHERE s.dept_id = d.dept_id;

-- Showing courses each student taken_course
SELECT s.std_id, s.name, t.course_id, t.year, t.semester, c.title, c.cred_hrs 
FROM student s, taken_course t, course c 
WHERE s.std_id = t.std_id AND t.course_id = c.course_id;

-- Showing Students with Advisors
SELECT s.std_id,  s.name, a.inst_id, i.name 
FROM student s, advisor a, instructor i 
WHERE a.std_id = s.std_id AND a.inst_id = i.inst_id;

-- Showing Grades obtained by students
SELECT s.std_id,  s.name, c.title, t.semester, t.grade 
FROM student s, taken_course t, course c
WHERE s.std_id = t.std_id AND t.course_id = c.course_id;

-- Showing Instructor with relevant depts
SELECT i.inst_id, i.name, i.dept_id, d.dept_name, d.hod 
FROM instructor i, department d
WHERE i.dept_id = d.dept_id;

-- Showing courses taught by instructors
SELECT i.inst_id, i.name, t.course_id, t.semester, c.title 
FROM instructor i, conduct_course t, course c 
WHERE t.inst_id = i.inst_id AND t.course_id = c.course_id;

-- Showing instructors who are also advisors
SELECT a.inst_id, i.name FROM instructor i, advisor a 
WHERE a.inst_id = i.inst_id;

-- Showing Every instructor who is not an advisor
SELECT i.inst_id, i.name FROM instructor i 
MINUS 
SELECT a.inst_id, i.name FROM advisor a, instructor i;

--Showing courses that are not yet assigned to any instructor
SELECT c.course_id, c.title FROM course c 
MINUS 
SELECT t.course_id, c.title FROM conduct_course t, course c;

-- Using INNER JOIN on student and dept table
SELECT * FROM student 
INNER JOIN department 
ON student.dept_id = department.dept_id;

--Finding total number of students in each department
SELECT COUNT(s.std_id) AS Number_Of_Students, d.dept_name FROM student s 
JOIN department d 
ON s.dept_id=d.dept_id 
GROUP BY d.dept_name 
ORDER BY COUNT(s.std_id) DESC;

--Checking if ANY student is in CSE dept
SELECT * FROM student
JOIN department
ON student.dept_id=department.dept_id
WHERE dept_name = ANY(SELECT dept_name FROM department WHERE dept_name='CSE');

-- Creating views so that only specific info of faculty can be shown
CREATE VIEW fac_cse
AS
SELECT inst_id, name FROM instructor;

-- Altering view to enter another tuple
INSERT INTO fac_cse VALUES(7011, 'Ahsan Habib');

SELECT * FROM fac_cse;

GO
-- Showing Instructors with Max salary by making a procedure
CREATE PROCEDURE max_salary
AS
SELECT inst_id, name salary 
FROM instructor 
WHERE salary = (SELECT MAX(salary) FROM instructor);
GO

EXEC max_salary;

GO
-- Showing Instructors with Min salary by making a procedure
CREATE PROCEDURE min_salary
AS
SELECT inst_id, name salary 
FROM instructor 
WHERE salary = (SELECT MIN(salary) FROM instructor);
GO

EXEC min_salary;

GO
--Checking if a student record exists
CREATE or replace PROCEDURE check_record @student_id INT
AS
IF EXISTS(SELECT std_id FROM student WHERE std_id = @student_id)
    BEGIN
        PRINT 'Student Exists'
    END
    ELSE
        BEGIN
        PRINT 'Student doesnt Exist'
    END
GO

EXEC check_record @student_id = 11;