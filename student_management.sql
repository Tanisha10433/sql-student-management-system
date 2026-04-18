-- Student Management System SQL Project

CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    marks INT
);

INSERT INTO Students VALUES (1, 'Rahul', 20, 'BCA', 85);
INSERT INTO Students VALUES (2, 'Aman', 21, 'BBA', 78);
INSERT INTO Students VALUES (3, 'Priya', 19, 'BCA', 92);
INSERT INTO Students VALUES (4, 'Neha', 22, 'BCom', 88);

-- Basic Queries
SELECT * FROM Students;

SELECT name, marks FROM Students WHERE marks > 80;

SELECT AVG(marks) AS Average_Marks FROM Students;

SELECT course, COUNT(*) AS Total_Students 
FROM Students 
GROUP BY course;

-- Update Query
UPDATE Students SET marks = 90 WHERE student_id = 2;

-- Delete Query
DELETE FROM Students WHERE student_id = 4;
