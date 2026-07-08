USE ecommerce_db;

SELECT * FROM ecommerce_sales;

SELECT OrderID, Product, Quantity, TotalPrice
FROM ecommerce_sales;

SELECT *
FROM ecommerce_sales
WHERE TotalPrice > 1000;

SELECT *
FROM ecommerce_sales
ORDER BY TotalPrice DESC;

SELECT Product, COUNT(*) AS TotalOrders
FROM ecommerce_sales
GROUP BY Product;

SELECT COUNT(*) AS TotalOrders
FROM ecommerce_sales;

SELECT SUM(TotalPrice) AS TotalSales
FROM ecommerce_sales;

SELECT AVG(TotalPrice) AS AverageOrderValue
FROM ecommerce_sales;

SELECT Product, SUM(TotalPrice) AS TotalSales
FROM ecommerce_sales
GROUP BY Product
ORDER BY TotalSales DESC;

SELECT PaymentMethod, COUNT(*) AS Orders
FROM ecommerce_sales
GROUP BY PaymentMethod;

SELECT OrderStatus, AVG(TotalPrice) AS AverageSales
FROM ecommerce_sales
GROUP BY OrderStatus;

SELECT ReferralSource, COUNT(*) AS Customers
FROM ecommerce_sales
GROUP BY ReferralSource
ORDER BY Customers DESC;