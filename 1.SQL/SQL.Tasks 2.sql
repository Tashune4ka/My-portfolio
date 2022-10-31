USE uni;

-- Task 1: BETWEEN TWO NULLS

-- 1. Obtain a list of applications where the CourseID is unknown
SELECT * FROM application
WHERE CourseAppliedFor IS NULL;

-- 2. Obtain a list of students where their CourseID is not unknown
SELECT * FROM student
WHERE CourseID IS NOT NULL;

-- 3. Obtain a list of students whom were born in the month of June 2002
SELECT * FROM student
WHERE DateOfBirth >= '2002-06-01' AND DateOfBirth <= '2002-06-30'
-- sorting by DOB
ORDER BY DateOfBirth;

-- 4. Obtain a list of applications where CourseID is unknown and 
-- the applications made between 01/04/2020 and 31/07/2020
SELECT * FROM application
WHERE CourseAppliedFor IS NULL AND DateOfApplication > '2020-04-01' AND DateOfApplication < '2020-07-31'
-- sorting by date
ORDER BY DateOfApplication;



-- Task 2: GROUPING FUNCTIONS

-- 1. Obtain the number of modules which are assigned to each course
SELECT COUNT(ModuleID), CourseID
FROM module
GROUP BY CourseID;

-- 2. Retrieve Information on the number of successful applications per course
SELECT COUNT(applicationID)
FROM application
WHERE accepted = 1
GROUP BY CourseAppliedFor;

-- 3. Find the average Membership Fee of Student Clubs 
-- by the ID of the Staff member (Lecturer) supervising it
SELECT AVG(MembershipFee), SupervisingStaff
FROM club
GROUP BY SupervisingStaff;

-- 4. Find the Sum total of Joining Fees for all active clubs 
-- by Staff Member supervising them
SELECT SUM(JoiningFee), SupervisingStaff
FROM club
WHERE Active = 1
GROUP BY SupervisingStaff;


-- Task 3: ADVANCED JOINS

-- 1. Obtain a list of all modules and the names of any courses they may be taught
-- (include modules without courses)
SELECT module.ModuleName, course.CourseName
FROM module
LEFT JOIN course
ON module.CourseID = course.CourseID;

-- 2. Obtain a list of students along with any related application numbers 
-- if they have them (excluded NULL)
SELECT student.StudentID, student.Forenames, student.Surname, application.applicationID
FROM student
INNER JOIN application
ON student.StudentID = application.StudentID;

-- 3. Obtain the Class ID, Class Date and Feedback score 
-- of the latest class scheduled for each Class ID
SELECT schedule.ClassID, schedule.CDate, schedule.FeedbackScore
FROM schedule
INNER JOIN
(SELECT ClassID, MAX(CDate) as LatestDate FROM schedule GROUP BY ClassID) as sub
ON schedule.ClassID = sub.ClassID AND schedule.CDate = sub.LatestDate;