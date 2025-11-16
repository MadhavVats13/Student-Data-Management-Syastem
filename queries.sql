-- Add students
INSERT INTO Students VALUES (1, 'Rahul Sharma', 'rahul@gmail.com', '9800012345', 'Dehradun');
INSERT INTO Students VALUES (2, 'Priya Singh', 'priya@gmail.com', '9887654321', 'Haridwar');

-- Add courses
INSERT INTO Courses VALUES (101, 'SQL Basics', 3);
INSERT INTO Courses VALUES (102, 'DBMS Fundamentals', 4);

-- Enroll students
INSERT INTO Enrollments VALUES (201, 1, 101);
INSERT INTO Enrollments VALUES (202, 2, 102);

-- Assign grades
INSERT INTO Grades VALUES (301, 201, 'A');
INSERT INTO Grades VALUES (302, 202, 'B');

-- Find all students enrolled in 'SQL Basics'
SELECT Students.name
FROM Students
JOIN Enrollments ON Students.student_id = Enrollments.student_id
JOIN Courses ON Enrollments.course_id = Courses.course_id
WHERE Courses.course_name = 'SQL Basics';

-- Update phone number for Rahul Sharma
UPDATE Students SET phone_number = '9998887777' WHERE student_id = 1;
