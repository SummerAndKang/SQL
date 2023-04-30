--rank
SELECT *
, RANK() OVER(ORDER BY Weight) rank_weight
FROM dbo.Customers

SELECT *
, RANK() OVER(ORDER BY Weight DESC) rank_weight
FROM dbo.Customers

SELECT *
, RANK() OVER(PARTITION BY Postcode ORDER BY Weight) rank_weight
FROM dbo.Customers

SELECT *
, RANK() OVER(PARTITION BY Postcode ORDER BY Weight) rank_weight
FROM dbo.Customers
WHERE Weight IS NOT NULL

--dense rank
SELECT *
, RANK() OVER(ORDER BY Weight) rank_weight
, DENSE_RANK() OVER(ORDER BY Weight) dense_rank_weight
FROM dbo.Customers

--row number 
SELECT *
, RANK() OVER(ORDER BY Weight) rank_weight
, DENSE_RANK() OVER(ORDER BY Weight) dense_rank_weight
, ROW_NUMBER() OVER(ORDER BY Weight) row_number_weight
FROM dbo.Customers

--lag
SELECT *
, LAG(TotalSales, 1) OVER(PARTITION BY Store ORDER BY Date) lag_1_sales
FROM dbo.Sales

SELECT *
, LAG(TotalSales, 1) OVER(PARTITION BY Store ORDER BY Date) lag_1_sales
, LAG(TotalSales, 2) OVER(PARTITION BY Store ORDER BY Date) lag_2_sales
, LAG(TotalSales, 7) OVER(PARTITION BY Store ORDER BY Date) lag_7_sales
FROM dbo.Sales

--lead
SELECT *
, LEAD(TotalSales, 1) OVER(PARTITION BY Store ORDER BY Date) lead_1_sales
FROM dbo.Sales

SELECT *
, LEAD(TotalSales, 1) OVER(PARTITION BY Store ORDER BY Date) lead_1_sales
, LEAD(TotalSales, 2) OVER(PARTITION BY Store ORDER BY Date) lead_2_sales
, LEAD(TotalSales, 7) OVER(PARTITION BY Store ORDER BY Date) lead_7_sales
FROM dbo.Sales

--sum
SELECT *
, SUM(TotalSales) OVER() sum_sales
FROM dbo.Sales

SELECT *
, SUM(TotalSales) OVER() sum_sales
, SUM(TotalSales) OVER(PARTITION BY Store) sum_sales_by_store
FROM dbo.Sales


SELECT *
, SUM(TotalSales) OVER() sum_sales
, SUM(TotalSales) OVER(PARTITION BY Store) sum_sales_by_store
, SUM(TotalSales) OVER(PARTITION BY Store ORDER BY Date) accu_sum_sales_by_store
FROM dbo.Sales

--count
SELECT *
, COUNT(TotalSales) OVER() count_sales
, COUNT(TotalSales) OVER(PARTITION BY Store) sum_count_by_store
, COUNT(TotalSales) OVER(PARTITION BY Store ORDER BY Date) accu_count_sales_by_store
FROM dbo.Sales
