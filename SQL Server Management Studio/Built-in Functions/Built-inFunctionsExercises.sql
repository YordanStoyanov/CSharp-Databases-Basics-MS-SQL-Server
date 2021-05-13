
USE SoftUni

SELECT * FROM Employees

SELECT FirstName, LastName FROM Employees
WHERE FirstName LIKE 'SA%'

SELECT FirstName, LastName FROM Employees
WHERE LastName LIKE '%ei%'

SELECT *, 
	SUBSTRING('SoftUni', 4, 1)
	FROM Employees

SELECT SUBSTRING('SoftUni', 1, 4)

SELECT TOP (10000) [ProjectID]
      ,[Name]
      ,[Description]
      ,[StartDate]
      ,[EndDate]
	  ,GETDATE() AS TimeNow
	  ,DATEPART(DAYOFYEAR, GETDATE()) AS DaysOfYear
	  ,DATEPART(DAYOFYEAR, [StartDate]) AS DaysFromBegining
  FROM [SoftUni].[dbo].[Projects]

  SELECT * FROM Employees

  SELECT *, FirstName + ' '+ MiddleName + ' ' + LastName 
  AS FullName FROM Employees

  SELECT *, CONCAT_WS(' ', FirstName, MiddleName, LastName) 
  AS [Full Name] FROM Employees

  SELECT *, CONCAT(FirstName, ' ', MiddleName, ' ', LastName) 
  AS [Full Name] FROM Employees
  --with CONCAT_WS razdelyaneto neistva po dobre

  
  SELECT *, CONCAT_WS(' ', FirstName, SUBSTRING(MiddleName, 1, 1), LastName) 
  AS [Full Name] FROM Employees


SELECT *, FirstName + MiddleName + LastName
	,LEN([FirstName]) + LEN([LastName]) + LEN([MiddleName]) AS [LEN]
	,DATALENGTH([FirstName]) + DATALENGTH([MiddleName]) + DATALENGTH([LastName]) AS [DATALENGTH]
	FROM Employees

SELECT 
	LEN('Niki'), 
	DATALENGTH(N'Ники'), 
	N'Ники',
	LOWER('NIKI'),
	UPPER('niki'),
	REVERSE('Niki'),
	REVERSE(N'Ники'),
	REPLICATE('N', 100)

SELECT FORMAT(1, 'p')

SELECT FORMAT(GETDATE(), 'MM', 'bg-BG')

SELECT FORMAT(GETDATE(), 'MMMM', 'bg-BG')

SELECT FORMAT(GETDATE(), 'dd MMMM yyyy', 'bg-BG')

SELECT SUBSTRING('SoftUni', -1, 10)

SELECT REPLACE('QWEQWE', 'Q', 'A')

SELECT VALUE 
	FROM STRING_SPLIT('Hi I am Ghon', ' ')

SELECT VALUE, 
	LEN(VALUE) AS LENGHT,
	SUBSTRING(VALUE, 1, 1) AS FIRSTLETTER
	FROM STRING_SPLIT('Hi.I.am.Ghon', '.')

SELECT FORMAT(1.1254, 'F2')

SELECT FORMAT(1.1254, 'P3')

SELECT FORMAT(CAST('2021-01-01' AS DATETIME), 'MMMM', 'bg-BG')

SELECT FORMAT(CONVERT(DATETIME, '2021-01-01'), 'MMMM', 'bg-BG')

DECLARE @SearchWord NVARCHAR(30)  
SET @SearchWord = 'John'  
SELECT [FirstName]
FROM SoftUni.dbo.Employees 
WHERE CONTAINS([FirstName], @SearchWord);  

SELECT * FROM SoftUni.dbo.Employees 

SELECT STUFF('I am Yordan Stoyanov', 6, 0, 'not')

SELECT 1 / 2

SELECT FORMAT((1.0 * 1) / 2, 'F2')

SELECT 5 % 2

SELECT FLOOR(1.1234), CEILING(1.1234), ROUND(1.1234, 2)

SELECT TOP (1000) [ProjectID]
      ,[Name]
      ,[Description]
      ,[StartDate]
      ,[EndDate]
	  ,DATEPART(QUARTER, StartDate) AS [QUARTER]
	  ,DATEPART(YEAR, StartDate) AS [Start year]
	  ,DATEPART(MONTH, StartDate) AS [Month]
	  ,DATEPART(DAY, StartDate) AS [Day]
	  ,DATEDIFF(DAY, StartDate, EndDate) AS [Days]
	  ,DATEDIFF(DAY, StartDate, GETDATE()) AS [Days]
	  ,FORMAT([StartDate], 'yyyy-mmmm-dd (dddd) ', 'bg-BG')
  FROM [SoftUni].[dbo].[Projects]
  ORDER BY [Day] DESC
 
 SELECT CAST('2020-01-01' AS DATETIME)

 USE SoftUni

 SELECT * FROM Employees

 SELECT [FirstName] FROM Employees
	WHERE DepartmentID IN (3, 10) AND 
	DATEPART(YEAR, HireDate) IN (1995, 2005)

SELECT [FirstName] FROM Employees
	WHERE FirstName LIKE '%a%'
