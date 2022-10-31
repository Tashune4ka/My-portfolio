SELECT * FROM uni.student
WHERE CourseID <> 1;

-- or
SELECT * FROM uni.student
WHERE CourseID = != 1;

-- Questions:
-- 1. Can we use both variants? <> or != 
-- 2. Why CourseID = 'NULL' are not included to the result?? (e.g. StudentID 404, 414, 422) How to include them?


-- 2
SELECT Forenames, Surname, DateOfBirth FROM uni.student
WHERE EmailAddress = 'val.bolger@example.com';

-- 3
SELECT ModuleName FROM uni.module
WHERE Subject = 'Economics';

-- 4
SELECT CourseAppliedFor, DateOfApplication FROM uni.application WHERE CourseAppliedFor IN 
(SELECT CourseID FROM uni.module WHERE ModuleID IN 
    (SELECT ClassID FROM uni.class WHERE ClassID IN
        (SELECT ClassID FROM uni.schedule WHERE CDate < '2020-09-21')));