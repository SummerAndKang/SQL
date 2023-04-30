--avg
SELECT AVG(Weight) Avg_weight
FROM dbo.Customers

SELECT Postcode
, AVG(Weight) Avg_weight
FROM dbo.Customers
GROUP BY Postcode

--max
SELECT MAX(ContactName) Max_ContactName
, MAX(DOB) Max_DOB
, MAX(Weight) Max_Weight
FROM dbo.Customers

SELECT Postcode
, MAX(ContactName) Max_ContactName
, MAX(DOB) Max_DOB
, MAX(Weight) Max_Weight
FROM dbo.Customers
GROUP BY Postcode

--min
SELECT MIN(ContactName) Max_ContactName
, MIN(DOB) Max_DOB
, MIN(Weight) Max_Weight
FROM dbo.Customers

SELECT Postcode
, MIN(ContactName) Max_ContactName
, MIN(DOB) Max_DOB
, MIN(Weight) Max_Weight
FROM dbo.Customers
GROUP BY Postcode

--sum
SELECT SUM(Weight) Sum_Weight
FROM dbo.Customers

SELECT Postcode
, SUM(Weight) Sum_Weight
FROM dbo.Customers
GROUP BY Postcode

--count
SELECT COUNT(*) Num
FROM dbo.Customers

SELECT COUNT(Weight) Num
FROM dbo.Customers

SELECT COUNT(Postcode) Num
FROM dbo.Customers

SELECT COUNT(DISTINCT Postcode) Num
FROM dbo.Customers

SELECT Postcode
, COUNT(*) Num
FROM dbo.Customers
GROUP BY Postcode

--having
SELECT Postcode
, COUNT(*) Num
FROM dbo.Customers
GROUP BY Postcode
HAVING COUNT(*) >= 5

SELECT Postcode
, COUNT(*) Num
FROM dbo.Customers
WHERE Postcode != '2150'
GROUP BY Postcode
HAVING COUNT(*) >= 5 
