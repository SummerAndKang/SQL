--Create a new database
CREATE DATABASE Testing_DB
--delete the database
DROP DATABASE Testing_DB

--Create a table
CREATE TABLE Customers (
	CustomerID INT,
	CustomerName VARCHAR(255),
	DOB DATE,
	Postcode CHAR(4),
	City VARCHAR(255),
	Member BIT,
	Weight FLOAT
)

--delete a table
DROP TABLE Customers

--Insert rows into table
INSERT INTO Customers (CustomerID, CustomerName, DOB, Postcode, City, Member, Weight)
VALUES (1, 'Tom', '1990-03-05', '2000', 'Sydney', 1, 68.2);

INSERT INTO Customers (CustomerID, CustomerName, DOB, Postcode, City, Member, Weight)
VALUES (2, 'Jack', '1985-05-08', '2055', 'North Sydney', 1, 76.1),
       (3, 'Kev', '1972-06-30', '2010', 'Surry Hills', 0, 45.7),
	   (4, 'Ben', '1963-08-22', '2019', 'Botany', 0, 89.4),
	   (5, 'Wil', '1998-01-15', '2044', 'St Peters', 1, 56.8);


--Delete rows in table
DELETE FROM Customers WHERE CustomerID = 5;

--Update table
UPDATE Customers
SET CustomerName='James' WHERE CustomerID = 1;

--Truncate table
TRUNCATE TABLE Customers;

--Alter table 
ALTER TABLE Customers
ADD Email CHAR(255);

ALTER TABLE Customers
ALTER COLUMN Email VARCHAR(255);

ALTER TABLE Customers
DROP COLUMN Email;
