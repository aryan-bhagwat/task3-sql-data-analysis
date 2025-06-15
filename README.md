# 📊 Task 3: SQL for Data Analysis – Data Analyst Internship

## 📝 Overview

This task involved analyzing an Ecommerce dataset using SQL Server. The dataset was imported from Kaggle and stored in a SQL Server table. I used SQL queries to extract insights such as total sales, average order value, and top customers.

---

## 🧰 Tools Used

- Microsoft SQL Server 2022
- SQL Server Management Studio (SSMS)
- Dataset: [Ecommerce Data – Kaggle](https://www.kaggle.com/datasets/carrie1/ecommerce-data)

---

## 📦 Dataset Description

The dataset contains online retail transactions from a UK-based store, including:

- `InvoiceNo` – Invoice number
- `StockCode` – Product/item code
- `Description` – Product description
- `Quantity` – Units purchased
- `InvoiceDate` – Date and time of purchase
- `UnitPrice` – Price per unit
- `CustomerID` – Unique customer ID
- `Country` – Country of the customer

---

## 🗂 Files Included

| File Name           | Description                             |
|---------------------|-----------------------------------------|
| `task3_queries.sql` | SQL file containing all the queries     |
| `screenshots/`      | Screenshots of output from SQL queries  |
| `README.md`         | This task explanation file              |

---

## 🧪 SQL Queries Performed

### 1. Show All Completed Orders
SELECT * FROM Orders
WHERE Quantity > 0;

### 2. Total Sales Per Country
SELECT Country, SUM(Quantity * UnitPrice) AS TotalSales
FROM Orders
GROUP BY Country
ORDER BY TotalSales DESC;

### 3. Average Order Value
SELECT AVG(Quantity * UnitPrice) AS AvgOrderValue
FROM Orders;

### 4. Top 5 Customers by Spending
SELECT CustomerID, SUM(Quantity * UnitPrice) AS TotalSpent
FROM Orders
GROUP BY CustomerID
ORDER BY TotalSpent DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;
