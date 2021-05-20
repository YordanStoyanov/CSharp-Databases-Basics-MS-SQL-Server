USE SoftUni

SELECT * FROM SoftUni.dbo.Employees

SELECT *, [FirstName] + ' ' + [LastName] AS [Full name]
	FROM Employees 

SELECT * FROM Towns

SELECT *, LEN([Name]) AS Lenght--vrushta duljinata na silvolniya niz
	FROM Towns

SELECT [Name]
	,SUBSTRING([Name], 1, 1) AS [First letter]
	,LEN([Name]) AS Lenght
	FROM Towns

SELECT *
	,SUBSTRING([Name], 1, 1) AS [First letter]
	,LEN([Name]) AS Lenght
	FROM Towns

SELECT [Name], LEFT(Name, 1) AS [First symbol], SUBSTRING(Name, 1, 1) AS [First symbol]
	FROM Towns
	--WHERE LEFT(Name, 1) = 'S'
	WHERE SUBSTRING(Name, 1, 1) = 's''s'--s's

SELECT * FROM Addresses

SELECT AddressText, [Name]
	FROM Addresses
	JOIN Towns ON Addresses.TownID = Towns.TownID
	--WHERE Name = 'Sofia'

SELECT GETDATE()


SELECT [Name], LEFT(Name, 1) AS [First symbol], SUBSTRING(Name, 1, 1) AS [First symbol]
	FROM Towns
	--WHERE Name = 'Sofia'

SELECT * FROM Addresses

SELECT * FROM Towns

SELECT A.AddressText, T.Name 
	FROM Addresses A
	JOIN Towns T ON T.TownID = A.TownID
		

SELECT * FROM Employees

SELECT DISTINCT JobTitle,--DISTINCT ostavya unikalnite stoynosti 
	(SELECT COUNT(*) FROM Employees AS e2 WHERE e2.JobTitle = e1.JobTitle) AS [Count]
	FROM Employees AS e1

SELECT JobTitle
,COUNT(*) AS [Count]
,MAX(Salary) AS [Max salary]
,MIN(Salary) AS [Min salary]
FROM Employees
GROUP BY JobTitle

SELECT JobTitle
,COUNT(*) AS [Count]
,MAX(Salary) AS [Max salary]
,MIN(Salary) AS [Min salary]
,MAX(Salary) - MIN(Salary) AS [Change]
,AVG(Salary) AS [Average]
FROM Employees
GROUP BY JobTitle


SELECT DISTINCT
	JobTitle
	FROM Employees
	WHERE JobTitle = 'Accountant'
	GROUP BY JobTitle


SELECT [Salary] 
	,COUNT(*) AS [Count]
	FROM [Employees]
	WHERE Salary >= 0 AND Salary <= 1000000
	GROUP BY Salary 

SELECT * 
	FROM Employees
	WHERE FirstName LIKE '%dan'--imeto zapochva s dan


SELECT * 
	FROM Employees
	WHERE FirstName LIKE '%dan%' -- imeto sadurja dan

SELECT * FROM Employees

SELECT Salary FROM Employees
	WHERE Salary != 10000
	GROUP BY Salary
	ORDER BY Salary DESC

SELECT JobTitle FROM Employees
	WHERE JobTitle != 'Product Technical'
	GROUP BY JobTitle

SELECT * FROM Employees

SELECT * 
	FROM Employees
	WHERE 
	(Salary >= 1000 
	AND Salary <= 100000)
	AND JobTitle = 'Production Technician'
	ORDER BY Salary DESC

SELECT * FROM Employees
	WHERE FirstName = 'John' OR LastName = 'Li'