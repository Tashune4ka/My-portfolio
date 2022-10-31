-- 1
SELECT * FROM uni.student
WHERE CourseID <> 1;
-- or
SELECT * FROM uni.student
WHERE CourseID != 1;

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
