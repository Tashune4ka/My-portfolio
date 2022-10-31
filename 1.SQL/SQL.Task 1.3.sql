-- 1
SELECT COUNT(StudentID) as 'Students enrolled'
FROM uni.student;

-- 2
SELECT SUM(FullTimeFee) as 'Sum of full time fees'
FROM uni.fees;

-- 3 
-- Full time courses
SELECT MIN(FullTimeFee) as 'The least expensive course', 
MAX(FullTimeFee) as 'The most expensive course'
FROM uni.fees;

-- 4
SELECT AVG(PartTimeFee) as 'Average of past time fees'
FROM uni.fees;

-- 5
SELECT FullTimeFee - ScholarshipDiscount AS 'Fee after applying the discount'
FROM uni.fees;

-- Extension:
-- 6
SELECT CourseID as 'The cheapest course'
FROM uni.fees
WHERE FullTimeFee = (SELECT MIN(FullTimeFee) FROM uni.fees);

-- 7
SELECT MAX(FullTimeFee - ScholarshipDiscount)
FROM uni.fees;

-- 8
SELECT COUNT(applicationID)
FROM uni.application
WHERE DateOfApplication > '2020-03-01' AND DateOfApplication < '2020-08-30' AND CourseAppliedFor IN
  (SELECT CourseID FROM uni.course WHERE CourseName = 'History');
