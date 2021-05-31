USE SoftUni

SELECT * FROM Employees

SELECT FirstName, HireDate From Employees
	WHERE DepartmentID = 3 OR DepartmentID = 10 AND HireDate IN (1995, 2005)


SELECT FirstName From Employees
	WHERE 
	DepartmentID IN (3, 10) AND 
	(HireDate) BETWEEN 1995 AND 2005

SELECT FirstName, LastName FROM Employees
	WHERE JobTitle != 'engineer'

SELECT * FROM Towns

SELECT [Name] FROM Towns
	WHERE LEN([Name]) IN (5, 6) 
	ORDER BY [Name] ASC

SELECT TownID, [Name] FROM Towns
	WHERE [Name] LIKE 'M%'
	OR [Name] LIKE 'K%' 
	OR [Name] LIKE 'B%'
	OR [Name] LIKE 'E%'
	ORDER BY [Name] ASC

SELECT TownID, [Name] FROM Towns
	WHERE [Name] NOT LIKE 'R%' 
	AND [Name] NOT LIKE 'B%'
	AND [Name] NOT LIKE 'D%'
	ORDER BY [Name] ASC

SELECT TownID, [Name] FROM Towns
	WHERE [Name] NOT LIKE 'B%'
	ORDER BY [Name] ASC

CREATE VIEW V_EmployeesHiredAfter2000 AS
SELECT FirstName, LastName FROM Employees
	WHERE HireDate > '2000'

SELECT FirstName, LastName FROM Employees
	WHERE LEN([LastName]) = 5 AND [LastName] LIKE 'B%'

