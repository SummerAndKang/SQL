--where > < = != <>
SELECT *
FROM dbo.Customers
WHERE Weight > 60

SELECT *
FROM dbo.Customers
WHERE Weight < 80

SELECT *
FROM dbo.Customers
WHERE Postcode = '2067'

SELECT *
FROM dbo.Customers
WHERE Postcode != '2067'

SELECT *
FROM dbo.Customers
WHERE Postcode <> '2067'

--where and or
SELECT *
FROM dbo.Customers
WHERE Weight > 60
AND Weight < 80

SELECT *
FROM dbo.Customers
WHERE Postcode = '2067'
OR Postcode = '2000'

SELECT *
FROM dbo.Customers
WHERE (Postcode = '2067'
OR Postcode = '2000')
AND Weight > 80

--where is null
SELECT *
FROM dbo.Customers
WHERE Email IS NULL

SELECT *
FROM dbo.Customers
WHERE DOB IS NULL

--where between and
SELECT *
FROM dbo.Customers
WHERE Weight BETWEEN 60 AND 80

SELECT *
FROM dbo.Customers
WHERE DOB BETWEEN '1995-01-01' AND '2005-01-01'

--where in
SELECT *
FROM dbo.Customers
WHERE Postcode IN ('2000', '2067')

--where like
SELECT *
FROM dbo.Customers
WHERE ContactName LIKE 'D%'

SELECT *
FROM dbo.Customers
WHERE ContactName LIKE '%D'

SELECT *
FROM dbo.Customers
WHERE ContactName LIKE '%D%'

--where not 
SELECT *
FROM dbo.Customers
WHERE Email IS NOT NULL

SELECT *
FROM dbo.Customers
WHERE NOT Email IS NULL

SELECT *
FROM dbo.Customers
WHERE NOT Postcode ='2067'

SELECT *
FROM dbo.Customers
WHERE NOT ContactName LIKE '%D%'