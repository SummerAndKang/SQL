--select one column
SELECT ContactName
FROM dbo.Customers

SELECT [ContactName]
FROM [dbo].[Customers]

SELECT ContactName
FROM Testing_DB.dbo.Customers

--select multiple columns
SELECT ContactName
, Email
, DOB
FROM dbo.Customers

SELECT ContactName
, DOB
--, Email
FROM dbo.Customers

--select all columns
SELECT *
FROM dbo.Customers

--select distinct value
SELECT DISTINCT Postcode
FROM dbo.Customers

--select top n row
SELECT TOP 10 *
FROM dbo.Customers

--alias
SELECT ContactName Name
FROM dbo.Customers

SELECT ContactName AS Name
FROM dbo.Customers

SELECT ContactName AS "Contact Name"
FROM dbo.Customers

--order by
SELECT ContactName
, Postcode
, Weight
FROM dbo.Customers
ORDER BY Weight

SELECT ContactName
, Postcode
, Weight
FROM dbo.Customers
ORDER BY 3

SELECT ContactName
, Postcode
, Weight
FROM dbo.Customers
ORDER BY Weight ASC

SELECT ContactName
, Postcode
, Weight
FROM dbo.Customers
ORDER BY Weight DESC

SELECT ContactName
, Postcode
, Weight
FROM dbo.Customers
ORDER BY Postcode, Weight

SELECT ContactName
, Postcode
, Weight
FROM dbo.Customers
ORDER BY Weight, Postcode

SELECT ContactName
, Postcode
, Weight
FROM dbo.Customers
ORDER BY Postcode ASC, Weight DESC

SELECT ContactName
, Postcode
, Weight
FROM dbo.Customers
ORDER BY Postcode DESC, Weight ASC

-- + - * / round
SELECT *
, Weight + 2 Weight_add
, Weight - 5 Weight_substration
, Weight * 3 Weight_multiply
, Weight / 4 Weight_divide
, ROUND(Weight, 0) Weight_round
, FLOOR(Weight) Weight_floor
, CEILING(Weight) Weight_ceiling
FROM dbo.Customers

-- select into
SELECT DISTINCT CustomerID
INTO DistinctCustomerID
FROM dbo.Customers

SELECT *
FROM dbo.DistinctCustomerID