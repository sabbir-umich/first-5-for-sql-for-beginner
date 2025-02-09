-- SQL Basics: Creating Tables, Inserting Data, and Retrieving Data

-- 1. Creating EmployeeDemographics Table
-- This creates a table to store employee demographic information, such as EmployeeID, Name, Age, and Gender.
CREATE TABLE EmployeeDemographics (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(50)
);

-- 2. Creating EmployeeSalary Table
-- This creates a table to store employee salary information, linked to EmployeeDemographics through EmployeeID.
CREATE TABLE EmployeeSalary (
    EmployeeID INT PRIMARY KEY,
    JobTitle VARCHAR(50),
    Salary INT,
    FOREIGN KEY (EmployeeID) REFERENCES EmployeeDemographics(EmployeeID)
);

-- 3. Inserting Sample Data into EmployeeDemographics
-- This inserts sample employee demographic data into the EmployeeDemographics table.
INSERT INTO EmployeeDemographics (EmployeeID, FirstName, LastName, Age, Gender) VALUES
(1001, 'Jim', 'Harper', 30, 'Male'),
(1002, 'Emma', 'Watson', 25, 'Female'),
(1003, 'Michael', 'Scott', 40, 'Male'),
(1004, 'Sarah', 'Johnson', 28, 'Female'),
(1005, 'David', 'Smith', 35, 'Male'),
(1006, 'Laura', 'Brown', 22, 'Female');

-- 4. Inserting Sample Data into EmployeeSalary
-- This inserts sample employee salary data into the EmployeeSalary table.
INSERT INTO EmployeeSalary (EmployeeID, JobTitle, Salary) VALUES
(1001, 'Salesman', 45000),
(1002, 'Manager', 60000),
(1003, 'Engineer', 55000),
(1004, 'Analyst', 52000),
(1005, 'Developer', 48000),
(1006, 'Designer', 47000);

-- SQL Queries for Data Retrieval & Analysis

-- 5. Selecting all data from EmployeeDemographics
-- This query retrieves all data from the EmployeeDemographics table.
SELECT * FROM EmployeeDemographics;

-- 6. Selecting unique genders
-- This query retrieves all unique gender values from the EmployeeDemographics table.
SELECT DISTINCT Gender FROM EmployeeDemographics;

-- 7. Counting the number of employees by gender
-- This query counts how many employees there are for each gender.
SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
GROUP BY Gender;

-- 8. Selecting employees where age is less than or equal to 30 and gender is Male
-- This query retrieves employees whose age is 30 or less and who are male.
SELECT * FROM EmployeeDemographics
WHERE Age <= 30 AND Gender = 'Male';

-- 9. Ordering employees by Age (Descending) and Gender (Ascending)
-- This query sorts employees by age in descending order and gender in ascending order.
SELECT * FROM EmployeeDemographics
ORDER BY Age DESC, Gender ASC;

-- 10. Finding employees whose last name starts with 'S'
-- This query retrieves employees whose last name starts with the letter 'S'.
SELECT * FROM EmployeeDemographics
WHERE LastName LIKE 'S%';

-- 11. Finding employees whose last name contains 'S'
-- This query retrieves employees whose last name contains the letter 'S'.
SELECT * FROM EmployeeDemographics
WHERE LastName LIKE '%S%';

-- 12. Finding employees whose last name ends with 'S'
-- This query retrieves employees whose last name ends with the letter 'S'.
SELECT * FROM EmployeeDemographics
WHERE LastName LIKE '%S';

-- 13. Selecting employees with specific first names
-- This query retrieves employees whose first names are either 'Jim' or 'Michael'.
SELECT * FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael');
