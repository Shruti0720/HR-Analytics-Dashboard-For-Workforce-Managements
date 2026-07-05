CREATE DATABASE hr_analytics;
USE hr_analytics;

# Retrieve Data
SELECT * 
FROM employee_attrition;

# Total Employee
SELECT COUNT(*) AS Total_Employees
FROM employee_attrition;

# Gender-wise Employees
SELECT Gender, COUNT(*) AS Total
FROM employee_attrition
GROUP BY Gender;

# Department-wise Employees
SELECT Department, COUNT(*) AS Total_Employees
FROM employee_attrition
GROUP BY Department;

# Job Role-wise Employees
SELECT JobRole, COUNT(*) AS Total
FROM employee_attrition
GROUP BY JobRole;

# Attrition Count
SELECT Attrition, COUNT(*) AS Total
FROM employee_attrition
GROUP BY Attrition;

DESCRIBE employee_attrition;

SHOW COLUMNS FROM employee_attrition;

# Average Age
SELECT ROUND(AVG(`ï»¿Age`),2) AS Average_Age
FROM employee_attrition;

SELECT MonthlyIncome
FROM employee_attrition
LIMIT 5;

# Average Salary
SELECT ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM employee_attrition;

# Highest Salary
SELECT MAX(MonthlyIncome) AS Highest_Salary
FROM employee_attrition;

# Lowest Salary
SELECT MIN(MonthlyIncome) AS Lowest_Salary
FROM employee_attrition;

# Department-wise Average Salary
SELECT Department,
       ROUND(AVG(MonthlyIncome),2) AS Average_Salary
FROM employee_attrition
GROUP BY Department;

# Employees Working Overtime
SELECT OverTime, COUNT(*) AS Total_Employees
FROM employee_attrition
GROUP BY OverTime;

# Marital Status Distribution
SELECT MaritalStatus, COUNT(*) AS Total
FROM employee_attrition
GROUP BY MaritalStatus;

# Education Field Distribution
SELECT EducationField, COUNT(*) AS Total
FROM employee_attrition
GROUP BY EducationField;

# Employees with Salary Greater than 10000
SELECT EmployeeNumber, JobRole, MonthlyIncome
FROM employee_attrition
WHERE MonthlyIncome > 10000;

# Top 10 Highest Paid Employees
SELECT EmployeeNumber, JobRole, MonthlyIncome
FROM employee_attrition
ORDER BY MonthlyIncome DESC
LIMIT 10;

# Department-wise Highest Salary
SELECT Department,
       MAX(MonthlyIncome) AS Highest_Salary
FROM employee_attrition
GROUP BY Department;

# Employees Having Attrition = 'Yes'
SELECT EmployeeNumber,
       Department,
       JobRole,
       MonthlyIncome
FROM employee_attrition
WHERE Attrition = 'Yes';