USE SoftUni

SELECT * FROM Employees

SELECT *, CONCAT_WS(' ', FirstName, MiddleName, LastName) AS [Full name]
	FROM Employees
	
CREATE VIEW v_EmployeesWithFullName AS
SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,[MiddleName]
	  , CONCAT_WS (' ', FirstName, MiddleName, LastName) AS [Full name]
      ,[JobTitle]
      ,[DepartmentID]
      ,[ManagerID]
      ,[HireDate]
      ,[Salary]
      ,[AddressID]
  FROM [SoftUni].[dbo].[Employees]

  DROP VIEW v_EmployeesWithFullName

CREATE VIEW v_EmployeesWithAnotherFullName AS
SELECT *, CONCAT_WS(' ', SUBSTRING(FirstName, 1, 1), SUBSTRING(MiddleName, 1, 1), LastName) AS [Full name] 
	FROM Employees

UPDATE Employees SET [JobTitle] = REPLACE([JobTitle], 'Tool Designer', 'Tool draw designer')

UPDATE Employees SET [JobTitle] = REPLACE([JobTitle], 'Tool draw designer', 'Tool Designer')

SELECT * FROM Employees

SELECT *, LEN(FirstName) AS [Lenght]
	,DATALENGTH(FirstName) AS [Data lenght]
	FROM Employees

SELECT LEN('Yordan'), LEN(N'Йордан'), DATALENGTH('Yordan'), DATALENGTH(N'Йордан'), N'Йордан'

SELECT LEN('Yordan'), LEN('Йордан'), DATALENGTH('Yordan'), DATALENGTH('Йордан')

SELECT UPPER('dancho')

SELECT LOWER('DANCHO')

DECLARE @d DATE = GETDATE();

SELECT FORMAT(@d, 'yyyy-mm-dd', 'en-EN') AS 'Date'

SELECT @d


SELECT UPPER(FORMAT(CONVERT(datetime, '2021-05-25'), 'MMMM', 'bg-BG'))

SELECT CHARINDEX('a', 'I am Yordan', 1)

SELECT DATEPART(MONTH, '2021-05-25')

SELECT DATEDIFF(DAY, '2000-01-01', '2021-05-25')

SELECT DATENAME(WEEKDAY, '2000-01-01')

SELECT *, Salary FROM Employees
	GROUP BY Salary

SELECT * FROM Employees
	--WHERE Salary != 10000
	ORDER BY Salary DESC

SELECT * 
	FROM Employees
	WHERE 
	(Salary >= 1000 
	AND Salary <= 100000)
	AND JobTitle Like '%tech%'
	ORDER BY Salary DESC