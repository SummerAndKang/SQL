--inner join
SELECT * 
FROM dbo.Customers

SELECT *
FROM dbo.Orders

SELECT dbo.Orders.OrderID
, dbo.Orders.CustomerID CustomerID_left
, dbo.Customers.CustomerID CustomerID_right
, dbo.Customers.Postcode
FROM dbo.Orders
INNER JOIN dbo.Customers
ON dbo.Orders.CustomerID = dbo.Customers.CustomerID

SELECT a.OrderID
, a.CustomerID CustomerID_left
, b.CustomerID CustomerID_right
, b.Postcode
FROM dbo.Orders a
INNER JOIN dbo.Customers b
ON a.CustomerID = b.CustomerID


--left join
SELECT a.OrderID
, a.CustomerID CustomerID_left
, b.CustomerID CustomerID_right
, b.Postcode
FROM dbo.Orders a
LEFT JOIN dbo.Customers b
ON a.CustomerID = b.CustomerID

--right join
SELECT a.OrderID
, a.CustomerID CustomerID_left
, b.CustomerID CustomerID_right
, b.Postcode
FROM dbo.Orders a
RIGHT JOIN dbo.Customers b
ON a.CustomerID = b.CustomerID

--full outer join
SELECT a.OrderID
, a.CustomerID CustomerID_left
, b.CustomerID CustomerID_right
, b.Postcode
FROM dbo.Orders a
FULL OUTER JOIN dbo.Customers b
ON a.CustomerID = b.CustomerID

--join
SELECT a.OrderID
, a.CustomerID CustomerID_left
, b.CustomerID CustomerID_right
, b.Postcode
FROM dbo.Orders a
JOIN dbo.Customers b
ON a.CustomerID = b.CustomerID


--cross join
SELECT DISTINCT OrderDate
INTO DistinctOrderDate
FROM dbo.Orders

SELECT a.OrderDate
, b.CustomerID
FROM DistinctOrderDate a
CROSS JOIN DistinctCustomerID b


--self join
SELECT a.ContactName Name1
, b.ContactName Name2
, b.City
FROM dbo.Customers a
, dbo.Customers b
WHERE a.ContactName != b.ContactName
AND a.City = b.	City
ORDER BY City


SELECT a.ContactName Name1
, b.ContactName Name2
, b.City
FROM dbo.Customers a
, dbo.Customers b
WHERE a.City = b.City
ORDER BY City
