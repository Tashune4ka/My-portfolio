-- 1
SELECT * FROM uni.application
WHERE accepted = 1 AND CourseAppliedFor = 11 AND StudentID = 0;

-- 2
INSERT INTO uni.student(StudentID, CourseID, Forenames, Surname, DateOfBirth, EmailAddress)
SELECT StudentID, CourseAppliedFor, Forenames, Surname, NULL, EmailAddress
FROM uni.application
WHERE accepted = 1 AND CourseAppliedFor = 11 AND StudentID = 0;

-- 3
SELECT * FROM uni.application
WHERE accepted = 0 AND CourseAppliedFor = 11;

-- 4
DELETE FROM uni.application
WHERE accepted = 0 AND CourseAppliedFor = 11;

-- 5
SELECT * FROM uni.application
WHERE accepted = 0 AND CourseAppliedFor = 1 AND DateOfApplication > '2020-03-01';

-- 6
UPDATE uni.application
SET accepted = 1
WHERE accepted = 0 AND CourseAppliedFor = 1 AND DateOfApplication > '2020-03-01';