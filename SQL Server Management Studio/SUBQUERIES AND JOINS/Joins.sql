SELECT * FROM Addresses
	
SELECT * FROM Towns

SELECT * FROM Addresses AS A
	JOIN Towns AS T ON A.TownID = T.TownID

SELECT A.AddressText, T.Name FROM Addresses AS A
	JOIN Towns AS T ON A.TownID = T.TownID

SELECT * FROM Addresses AS A
	LEFT JOIN Towns AS T ON A.TownID = T.TownID

SELECT * FROM Addresses AS A
	FULL OUTER JOIN Towns AS T ON A.TownID = T.TownID

SELECT * FROM Employees
	JOIN Addresses ON Employees.AddressID = Addresses.AddressID
	JOIN Towns ON Addresses.TownID = Towns.TownID
	WHERE [HireDate] > '2000-01-01' 
		AND (JobTitle = 'Tool Designer')

SELECT * FROM Employees
	JOIN Addresses ON Employees.AddressID = Addresses.AddressID
	JOIN Towns ON Addresses.TownID = Towns.TownID
	ORDER BY Salary DESC

SELECT * FROM Employees
	JOIN Addresses ON Employees.AddressID = Addresses.AddressID
	JOIN Towns ON Addresses.TownID = Towns.TownID
	ORDER BY HireDate ASC

CREATE TABLE #Employees( --vremenna tablica i sled spirane na conection izchezva
	Id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL
)

CREATE TABLE ##Employees( --vremenna tablica koyato vsichki vijdat i sled spirane na conection izchezva
	Id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL
)



