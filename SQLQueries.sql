/* 1. Show all completed orders: */

SELECT * FROM Orders
WHERE Quantity > 0;

/* 2. Total Sales per Country: */

SELECT Country, SUM(Quantity * UnitPrice) AS TotalSales
FROM Orders
GROUP BY Country
ORDER BY TotalSales DESC;

/* 3. Average Order Value: */

SELECT AVG(Quantity * UnitPrice) AS AvgOrderValue
FROM Orders;

/* 4. Top 5 Customers by Spending: */

SELECT CustomerID, SUM(Quantity * UnitPrice) AS TotalSpent
FROM Orders
GROUP BY CustomerID
ORDER BY TotalSpent DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;
