CREATE DATABASE Minions

USE Minions

CREATE TABLE Minions(
	Id INT PRIMARY KEY NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	Age INT
)

CREATE TABLE Towns(
	Id INT PRIMARY KEY NOT NULL,
	[Name] NVARCHAR(50) NOT NULL
)

ALTER TABLE Minions
ADD TownId INT FOREIGN KEY REFERENCES Towns(Id)

INSERT INTO Towns(Id, [Name])
		VALUES
			(1, 'Sofia'),
			(2, 'Plovdiv'),
			(3, 'Varna')

SELECT Id, [Name] FROM Towns


SELECT * FROM Towns

INSERT INTO Minions(Id, [Name], Age, TownId)
		VALUES
			(1, 'Kevin', 22, 1),
			(2, 'Bob', 15, 3),
			(3, 'Steward', null, 2)

SELECT * FROM Minions

SELECT * FROM Towns

DELETE FROM Minions

TRUNCATE TABLE Minions

DELETE FROM Towns

DROP TABLE Minions

DROP TABLE Towns

USE Minions

CREATE TABLE Users(
		Id BIGINT PRIMARY KEY IDENTITY NOT NULL,
		Username NVARCHAR(30) UNIQUE NOT NULL,
		[Password] NVARCHAR(26) NOT NULL,
		ProfilePicture VARBINARY (max) 
		CHECK(DATALENGTH(ProfilePicture) <= 900 * 1024),
		LastLoginTime DATETIME2 NOT NULL,
		IsDeleted BIT NOT NULL
)

INSERT INTO Users(Username, [Password], LastLoginTime, IsDeleted)
		VALUES
			('Pesho', '1234', '2021-4-23', 0),
			('Gosho', '1234', '2021-4-23', 0),
			('Kolio', '1234', '2021-4-23', 0),
			('Niko', '1234', '2021-4-23', 1),
			('Danio', '1234', '2021-4-23', 0)

SELECT * FROM Users

DELETE FROM Users WHERE Id = 5

UPDATE Users 
SET Username = 'Dido', [Password] = '1234', LastLoginTime = '2021-4-23', IsDeleted = 0
WHERE Id = 5

INSERT INTO Users
VALUES ('Danio', '1234', '2021-4-23', 0)

INSERT INTO Users(Username, [Password], LastLoginTime, IsDeleted) 
VALUES ('Dido', '1234', '2021-4-23', 0)

