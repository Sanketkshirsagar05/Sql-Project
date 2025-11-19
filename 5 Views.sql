/*
===============================
Views
===============================

	Views are virtual tables that represent the result of a query. 
	They can simplify complex queries and enhance security by restricting access to specific data.

*/

-- View for Product Details: A view combining product details with category names.
CREATE VIEW vw_ProductDeails AS
SELECT p.ProductID, p.ProductName, p.Price, p.Stock, c.CategoryName
FROM Products p INNER JOIN Categories c
ON p.CategoryID = c.CategoryID;
GO

-- Display product details with category names using view
SELECT * FROM vw_ProductDeails;

-- View for Customer Orders : A view to get a summary of orders placed by each customer.
CREATE VIEW vw_CustomerOrders 
AS
SELECT c.CustomerID, c.FirstName, c.LastName, COUNT(o.OrderID) AS TotalOrders,
SUM(oi.Quantity * p.Price) as TotalAmount
FROM Customers c 
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN OrderItems oi ON o.OrderID = oi.OrderID
INNER JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY c.CustomerID, c.FirstName, c.LastName;
GO


-- View for Recent Orders: A view to display orders placed in the last 30 days.
CREATE VIEW vw_RecentOrders 
AS
SELECT o.OrderID, o.OrderDate, c.CustomerID, c.FirstName, c.LastName,
SUM(oi.Quantity * oi.Price) as OrderAmount
FROM Customers c 
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN OrderItems oi ON o.OrderID = oi.OrderID
GROUP BY o.OrderID, o.OrderDate, c.CustomerID, c.FirstName, c.LastName;
GO