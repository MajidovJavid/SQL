
---------------------1----------------------

CREATE DATABASE Academy

USE Academy

---------------------2----------------------

CREATE TABLE Groups(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(100)
)



CREATE TABLE Students(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(100),
Surname nvarchar(100),
GroupId int FOREIGN KEY REFERENCES Groups(Id)
)

---------------------3----------------------

ALTER TABLE Students ADD Grade int

ALTER TABLE Students ADD Grupid int

ALTER TABLE Students DROP COLUMN Grupid;

---------------------4----------------------

INSERT INTO Groups VALUES ('P319'),
                          ('P318')

SELECT * FROM Groups

INSERT INTO Students VALUES ('David','Beckham',1,100),
                          ('Barack','Obama',2,70),
						  ('Jennifer','Lopez',2,83),
						  ('Adolf','Hitler',2,65)

SELECT * FROM Students

---------------------5----------------------

SELECT * FROM Students WHERE GroupId = 2

---------------------6----------------------

SELECT s.Name, g.Name 'Grupun adi', s.Surname, s.Grade  FROM Students s
INNER JOIN Groups g ON s.GroupId = g.Id

---------------------7----------------------

---------------------8----------------------

CREATE FUNCTION GetByIdFunc(@Grade int)
RETURNS int
AS
BEGIN
    @DECLARE  @count int
	SELECT  SET @count = Count(*) FROM Students WHERE Grade > @Grade
	RETURN  @count
	END