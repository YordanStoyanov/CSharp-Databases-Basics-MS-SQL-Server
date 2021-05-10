USE SoftUni

SELECT * FROM Employees

SELECT [FirstName], [LastName], [Salary] FROM Employees

SELECT [FirstName],[MiddleName], [LastName] FROM Employees

SELECT * FROM Addresses

SELECT * FROM EmployeesProjects

SELECT (FirstName + '.' + LastName + '@softuni.bg') 
AS [Email] FROM Employees

SELECT CONCAT(FirstName, '.', LastName, '@', 'softuni.bg') AS [Email] FROM Employees

SELECT DISTINCT([Salary])  FROM Employees

SELECT * FROM Employees
WHERE JobTitle = 'Sales Representative'

SELECT [FirstName], [LastName], [JobTitle] FROM Employees
WHERE Salary >= 20000 AND Salary <= 30000

SELECT * FROM Employees

SELECT ([FirstName] + ' ' + [MiddleName] + ' ' + [LastName]) AS [Full Name] FROM Employees 
WHERE Salary = 25000 OR Salary = 14000 OR Salary = 12500 or Salary = 23600
--Salary IN (25000, 14000, 12500, 23600)

SELECT * FROM Employees

SELECT [FirstName], [LastName] FROM Employees
WHERE ManagerID IS NULL

SELECT [FirstName], [LastName], [Salary] FROM Employees
WHERE (Salary > 50000)
ORDER BY Salary DESC

SELECT * FROM Employees
ORDER BY Salary DESC

SELECT TOP (5) [FirstName], [LastName] FROM Employees
ORDER BY Salary DESC

SELECT * FROM Employees
WHERE JobTitle = 'Except Marketing'

SELECT * FROM Employees
ORDER BY Salary DESC, FirstName ASC, LastName Desc, MiddleName ASC

GO

--CREATE VIEW V_EmployeesSalaries1
--AS(
--	SELECT [FirstName], [LastName], [Salary]
--		FROM Employees
--)

SELECT TOP (10) * FROM Projects
ORDER BY [StartDate] ASC, [Name] ASC

SELECT * FROM Departments

SELECT * FROM Employees

UPDATE Employees
SET Salary += Salary * 0.12
WHERE DepartmentID IN (1, 2, 4, 11)

SELECT Salary FROM Employees

SELECT * FROM Towns