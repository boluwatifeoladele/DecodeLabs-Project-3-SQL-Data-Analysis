-- DecodeLabs Project 3: SQL Data Analysis

-- Exercise 1: Select data
SELECT *
FROM sales_datacsv;

-- Exercise 2: Filter data
SELECT Product, Quantity
FROM sales_datacsv;

SELECT *
FROM sales_datacsv
WHERE Product = 'Printer';


-- Exercise 3: Sort data
SELECT *
FROM sales_datacsv
ORDER BY Quantity DESC;

-- Exercise 4: Group and count records
SELECT Product, COUNT(*) AS NumberOfOrders
FROM sales_datacsv
GROUP BY Product;

-- Exercise 5: Count records
SELECT COUNT(*) AS TotalRecords
FROM sales_datacsv;

-- Exercise 6: Calculate a total
SELECT SUM(Quantity) AS TotalQuantity
FROM sales_datacsv;

-- Exercise 7: Calculate an average
SELECT AVG(Quantity) AS AverageQuantity
FROM sales_datacsv;

-- Exercise 8: Calculates sales for each product and ranks the products from highest to lowest sales
SELECT Product,
       SUM("TotalPrice") AS ProductSales
FROM sales_datacsv
GROUP BY Product
ORDER BY ProductSales DESC;

