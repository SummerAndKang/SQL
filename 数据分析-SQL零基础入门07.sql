--CASE WHEN
SELECT *
FROM dbo.Customers

SELECT *
, CASE WHEN Postcode LIKE '20%'
THEN 10
END Price
FROM dbo.Customers

SELECT *
, CASE WHEN Postcode LIKE '20%'
THEN 10
ELSE 20
END Price
FROM dbo.Customers

SELECT *
, CASE WHEN Postcode = '2000'
THEN 0
WHEN Postcode LIKE '20%'
THEN 10
ELSE 20
END Price
FROM dbo.Customers

--ISNULL
SELECT *
FROM dbo.Customers

SELECT *
, CASE WHEN Weight IS NULL
THEN 50
ELSE Weight
END Weight_CASE_WHEN
FROM dbo.Customers

SELECT *
, CASE WHEN Weight IS NULL
THEN 50
ELSE Weight
END Weight_CASE_WHEN
, ISNULL(Weight, 50) Weight_ISNULL
FROM dbo.Customers

--COALESCE
SELECT *
, CASE WHEN Weight IS NULL
THEN 50
ELSE Weight
END Weight_CASE_WHEN
, ISNULL(Weight, 50) Weight_ISNULL
, COALESCE(Weight, 50) Weight_COALESCE
FROM dbo.Customers

SELECT ISNULL(NULL, 50)

SELECT ISNULL(NULL, NULL, 50)

SELECT COALESCE(NULL, 50)

SELECT COALESCE(NULL, NULL, 50)

--case when coalesce
SELECT *
FROM dbo.Customers

SELECT *
, CASE WHEN Gender = 'MALE'
THEN COALESCE(Weight, 80)
WHEN Gender = 'FEMALE'
THEN COALESCE(Weight, 50)
END Weight_COALESCE
FROM dbo.Customers