--- Customers_Orders_Products --- Project 1----------
--1. Customers Table
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(50),
  Email VARCHAR(100));

--2. INSERT INTO Customers (CustomerID, Name, Email) VALUES
insert into Customers values   (1, 'John Doe', 'johndoe@example.com'),
  (2, 'Jane Smith', 'janesmith@example.com'),
  (3, 'Robert Johnson', 'robertjohnson@example.com'),
  (4, 'Emily Brown', 'emilybrown@example.com'),
  (5, 'Michael Davis', 'michaeldavis@example.com'),
  (6, 'Sarah Wilson', 'sarahwilson@example.com'),
  (7, 'David Thompson', 'davidthompson@example.com'),
  (8, 'Jessica Lee', 'jessicalee@example.com'),
  (9, 'William Turner', 'williamturner@example.com'),
  (10, 'Olivia Martinez', 'oliviamartinez@example.com'),
  (11, 'Alex Brown', 'alexbrown@example.com'),
  (12, 'Sophie Turner', 'sophieturner@example.com'),
  (13, 'Charlie Miller', 'charliemiller@example.com'),
  (14, 'Ava Wilson', 'avawilson@example.com'),
  (15, 'Daniel Harris', 'danielharris@example.com'),
  (16, 'Emma Davis', 'emmadavis@example.com'),
  (17, 'James White', 'jameswhite@example.com'),
  (18, 'Lily Martin', 'lilymartin@example.com'),
  (19, 'Benjamin Johnson', 'benjaminjohnson@example.com'),
  (20, 'Zoe Anderson', 'zoeanderson@example.com'),
  (21, 'Jackson Moore', 'jacksonmoore@example.com'),
  (22, 'Victoria Lewis', 'victorialewis@example.com'),
  (23, 'Ethan Garcia', 'ethangarcia@example.com'),
  (24, 'Grace Taylor', 'gracetaylor@example.com'),
  (25, 'Christopher Hall', 'christopherhall@example.com');
  select * from Customers

------------------------------------------------------------------------
--2. Orders Table

  CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  ProductName VARCHAR(50),
  OrderDate DATE,
  Quantity INT)
select * from Orders
--INSERT INTO Orders (OrderID, CustomerID, ProductName, OrderDate, Quantity) VALUES
insert into orders values   (1, 1, 'Product A', '2023-07-01', 5),
  (2, 2, 'Product B', '2023-07-02', 3),
  (3, 3, 'Product C', '2023-07-03', 2),
  (4, 4, 'Product A', '2023-07-04', 1),
  (5, 5, 'Product B', '2023-07-05', 4),
  (6, 6, 'Product C', '2023-07-06', 2),
  (7, 7, 'Product A', '2023-07-07', 3),
  (8, 8, 'Product B', '2023-07-08', 2),
  (9, 9, 'Product C', '2023-07-09', 5),
  (10, 10, 'Product A', '2023-07-10', 1),
  (11, 11, 'Product D', '2023-07-11', 2),
  (12, 12, 'Product E', '2023-07-12', 3),
  (13, 13, 'Product F', '2023-07-13', 4),
  (14, 14, 'Product G', '2023-07-14', 1),
  (15, 15, 'Product H', '2023-07-15', 5),
  (16, 16, 'Product I', '2023-07-16', 2),
  (17, 17, 'Product J', '2023-07-17', 3),
  (18, 18, 'Product A', '2023-07-18', 4),
  (19, 19, 'Product B', '2023-07-19', 2),
  (20, 20, 'Product C', '2023-07-20', 1),
  (21, 21, 'Product D', '2023-07-21', 3),
  (22, 22, 'Product E', '2023-07-22', 5),
  (23, 23, 'Product F', '2023-07-23', 2),
  (24, 24, 'Product G', '2023-07-24', 1),
  (25, 25, 'Product H', '2023-07-25', 4);
  -------------------------------------------------------
  -- 3. Products Table
  CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(50),
  Price DECIMAL(10, 2))
--INSERT INTO Products (ProductID, ProductName, Price) VALUES
insert into Products values (1, 'Product A', 10.99),
  (2, 'Product B', 8.99),
  (3, 'Product C', 5.99),
  (4, 'Product D', 12.99),
  (5, 'Product E', 7.99),
  (6, 'Product F', 6.99),
  (7, 'Product G', 9.99),
  (8, 'Product H', 11.99),
  (9, 'Product I', 14.99),
  (10, 'Product J', 4.99),
  (11, 'Product K', 15.99),
  (12, 'Product L', 9.99),
  (13, 'Product M', 6.49),
  (14, 'Product N', 11.49),
  (15, 'Product O', 8.99),
  (16, 'Product P', 7.49),
  (17, 'Product Q', 10.99),
  (18, 'Product R', 13.99),
  (19, 'Product S', 16.49),
  (20, 'Product T', 5.49),
  (21, 'Product U', 14.99),
  (22, 'Product V', 8.49),
  (23, 'Product W', 9.99),
  (24, 'Product X', 12.49),
  (25, 'Product Y', 4.99)
  select * from Products
  -----------------------------------------------------
  select * from Products
  select * from Orders
  select * from Customers
------------------------------------------------------------
--Task 1 :-
--1. 1.	Write a query to retrieve all records from the Customers table..
  select * from Customers
  ------------------------------------------------------------
--2.	Write a query to retrieve the names and email addresses of customers whose names start with 'J'.
select Name from customers where name like 'J%'
  ------------------------------------------------------------
--3.	Write a query to retrieve the order details (OrderID, ProductName, Quantity) for all orders..
select orderID, ProductName, Quantity from Orders
  ------------------------------------------------------------
--4.	Write a query to calculate the total quantity of products ordered.
select * from Orders
select sum(quantity) from Orders
  ------------------------------------------------------------
--5.	Write a query to retrieve the names of customers who have placed an order.
select * from Customers
select * from Orders
select Customers.Name, Orders.OrderDate from Customers left join Orders
on Customers.CustomerID=Orders.CustomerID
  ------------------------------------------------------------
--6.	Write a query to retrieve the products with a price greater than $10.00.
select * from Products where Price >10.00
  ------------------------------------------------------------
--7.	Write a query to retrieve the customer name and order date for all orders placed on or after '2023-07-05'.
select * from Customers
select * from Orders
select Customers.Name, Orders.OrderDate from Customers left join Orders
on Customers.CustomerID=Orders.CustomerID where OrderDate>= '2023-07-05'
  ------------------------------------------------------------
--8.	Write a query to calculate the average price of all products.
select productname, AVG(price) as 'AveragePrice' from Products group by ProductName
  ------------------------------------------------------------
--9.	Write a query to retrieve the customer names along with the total quantity of products they have ordered.
select Customers.Name, Orders.Quantity as 'TotalQuantity' from Customers inner join Orders
on Customers.CustomerID=Orders.OrderID
  ------------------------------------------------------------
--10.	Write a query to retrieve the products that have not been ordered.
select * from Products
select * from Orders
select Products.ProductID, Products.ProductName, Orders.OrderID as 'NonOrdered' from Products left join Orders
on Products.ProductName=Orders.ProductName where Orders.ProductName is null
  ------------------------------------------------------------
--Task 2 :-
--1.	Write a query to retrieve the top 5 customers who have placed the highest total quantity of orders.
select Customers.CustomerID, Customers.Name, Orders.Quantity from Customers inner join Orders
on Customers.CustomerID=Orders.CustomerID order by Orders.Quantity desc 
offset 0 rows fetch next 5 rows only
  ------------------------------------------------------------
--2.	Write a query to calculate the average price of products for each product category.
select * from Products
select productname, AVG(price) as 'AveragePrice' from Products group by ProductName
  ------------------------------------------------------------
--3.	Write a query to retrieve the customers who have not placed any orders.
select * from Customers
select * from Orders
select Customers.Name, Customers.CustomerID, Orders. ProductName from Customers full join Orders
on Customers.CustomerID=Orders.CustomerID where Orders.CustomerID is  null
  ------------------------------------------------------------
--4.	Write a query to retrieve the order details (OrderID, ProductName, Quantity) for orders placed by customers whose names start with 'M'.
select * from Customers
select * from Orders
Select orders.OrderID, orders.ProductName, orders.Quantity, Customers.Name from Orders left join Customers
on Orders.CustomerID=Customers.CustomerID
where customers.Name like 'M%'
  ------------------------------------------------------------
--5.	Write a query to calculate the total revenue generated from all orders.
select * from Products
select * from Orders
select  sum(Orders.Quantity*Products.Price) as 'TotalRevenue' from Orders join Products
on Orders.ProductName=Products.ProductName
  ------------------------------------------------------------
--6.	Write a query to retrieve the customer names along with the total revenue generated from their orders.
select * from Products
select * from Orders
select * from Customers
select Customers.name, sum(Orders.Quantity*Products.Price) as 'TotalRevenue' from customers join orders 
on customers.customerid=orders.customerid 
inner join products on orders.productname=products.productname 
group by Customers.Name
  ------------------------------------------------------------
--7.7.	Write a query to retrieve the customers who have placed at least one order for each product category.
SELECT Customers.CustomerID, Customers.Name, Products.ProductName
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN Products ON Products.ProductName = Orders.ProductName
ORDER BY Customers.CustomerID, Products.ProductName;
  ------------------------------------------------------------
--8.	Write a query to retrieve the customers who have placed orders on consecutive days.
select * from Orders
select * from Customers
select distinct o1.CustomerID from orders o1 full join Orders o2
on o1.CustomerID=o2.CustomerID and DATEDIFF(DAY, o1.OrderDate, o2.OrderDate) =1
order by o1.CustomerID
  ------------------------------------------------------------
  --9.	Write a query to retrieve the top 3 products with the highest average quantity ordered.
  select * from Orders
select * from Products
select orderid, productname, AVG(Quantity) as 'HighAvgQuantity' from Orders
group by OrderID, ProductName order by HighAvgQuantity desc 
OFFSET 3 ROWS FETCH NEXT 3 ROW ONLY
  ------------------------------------------------------------
--10.	Write a query to calculate the percentage of orders that have a quantity greater than the average quantity.
WITH AverageQuantityCTE AS (SELECT AVG(Quantity) AS AvgQuantity FROM Orders),
TotalOrdersCTE AS (SELECT COUNT(*) AS TotalOrders FROM Orders),
OrdersAboveAverageCTE AS (SELECT COUNT(*) AS OrdersAboveAverage FROM Orders
    WHERE Quantity > (SELECT AvgQuantity FROM AverageQuantityCTE))
SELECT (CAST(OrdersAboveAverageCTE.OrdersAboveAverage AS FLOAT) / TotalOrdersCTE.TotalOrders) * 100 AS PercentageAboveAverage
FROM OrdersAboveAverageCTE, TotalOrdersCTE;
  ------------------------------------------------------------
--Task 3:-
--1.	Write a query to retrieve the customers who have placed orders for all products.
select * from Orders
select * from Customers
SELECT Customers.CustomerID, Customers.Name FROM Customers JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID, Customers.Name
HAVING COUNT(DISTINCT Orders.ProductName) = (SELECT COUNT(*) FROM Products);
  ------------------------------------------------------------
--2.	Write a query to retrieve the products that have been ordered by all customers.
select Products.ProductID, Products.ProductName from Products  join Orders
on Products.ProductName=Orders.ProductName group by Products.ProductName, Products.ProductID
having COUNT(distinct Orders.CustomerID) = (select count(*) from Customers)
--------------------------------------------------------------------------------------
--3.	Write a query to calculate the total revenue generated from orders placed in each month.
select * from Orders
select YEAR(orderdate) as orderyear, MONTH(orderdate) as ordermonth, sum(Orders.Quantity*Products.Price) as 'TotalRevenueGen' 
from Orders join Products
on Orders.ProductName=Products.ProductName group by YEAR(OrderDate), MONTH(OrderDate)
order by orderyear, ordermonth
--------------------------------------------------------------------------------------
--4.	Write a query to retrieve the products that have been ordered by more than 
--50% of the customers.
select * from Orders
select * from Customers
select * from Products
select productname,  COUNT(distinct customerID) as 'orderedcustomers' from Orders
group by ProductName 
where productname > (orderedcustomers/2)
--------------------------------------------------------------------------------------
--5.Write a query to retrieve the top 5 customers who have spent the highest amount of money on orders.
select Top 5 Customers.CustomerID, Customers.Name, sum(Products.price * Orders.Quantity) as TotalASpent
from Customers join Orders on Customers.CustomerID=Orders.CustomerID
join Products on Orders.ProductName=Products.ProductName
group by Customers.CustomerID, Customers.Name
order by TotalASpent desc
--------------------------------------------------------------------------------------
--6.	Write a query to calculate the running total of order quantities for each customer.
select Orders.CustomerID, Orders.OrderID,Orders.OrderDate,Orders.Quantity, SUM(Orders.Quantity)
over(partition by orders.customerid order by orders.orderdate, orders.orderid) as RunningtotalQuantity
from Orders join Customers on Orders.CustomerID=Customers.CustomerID 
order by Orders.CustomerID, Orders.OrderID,Orders.OrderDate
--------------------------------------------------------------------------------------
--7.	Write a query to retrieve the top 3 most recent orders for each customer.    
select Top 3 Customers.CustomerID, Customers.Name, sum(Products.price * Orders.Quantity) as TotalASpent
from Customers join Orders on Customers.CustomerID=Orders.CustomerID
join Products on Orders.ProductName=Products.ProductName
group by Customers.CustomerID, Customers.Name
order by TotalASpent desc
--------------------------------------------------------------------------------------
--8.	Write a query to calculate the total revenue generated by each customer 
--in the last 30 days.
select Customers.CustomerID, Customers.Name, SUM(products.price*Orders.Quantity) as totalrevenue
from Customers join orders on Customers.CustomerID=Orders.CustomerID
join Products on Orders.ProductName=Orders.ProductName
where Orders.OrderDate>=DATEADD(day, -30, getdate())
group by Customers.CustomerID, Customers.Name
order by totalrevenue desc
--------------------------------------------------------------------------------------
--9.	Write a query to retrieve the customers who have placed orders for 
---at least two different product categories.
select Customers.CustomerID, Customers.Name from Customers 
join orders on Customers.CustomerID=Orders.CustomerID
join Products on Orders.ProductName=Orders.ProductName
GROUP BY Customers.CustomerID, Customers.Name
HAVING  COUNT(DISTINCT Products.ProductID) >= 2;
--------------------------------------------------------------------------------------
--10.	Write a query to calculate the average revenue per order for each customer.
select Customers.CustomerID, Customers.Name, Avg(Orders.Quantity*Products.Price) as AverageRevenue from Customers 
join orders on Customers.CustomerID=Orders.CustomerID
join Products on Orders.ProductName=Orders.ProductName
GROUP BY Customers.CustomerID, Customers.Name
--------------------------------------------------------------------------------------
--11.	Write a query to retrieve the customers who have placed orders for every month of 
--a specific year.
select YEAR(orderdate) as orderyear, MONTH(orderdate) as ordermonth from Orders join Products
on Orders.ProductName=Products.ProductName group by YEAR(OrderDate), MONTH(OrderDate)
order by orderyear, ordermonth
--------------------------------------------------------------------------------------
--12.	Write a query to retrieve the customers who have placed orders for a specific 
--product in consecutive months.
select distinct o1.CustomerID from orders o1 full join Orders o2
on o1.CustomerID=o2.CustomerID and DATEDIFF(MONTH, o1.OrderDate, o2.OrderDate) =1
order by o1.ProductName
--------------------------------------------------------------------------------------
--13.	Write a query to retrieve the products that have been ordered by a specific 
--customer at least twice.
select Customers.CustomerID, Customers.Name from Customers 
join orders on Customers.CustomerID=Orders.CustomerID
join Products on Orders.ProductName=Orders.ProductName
GROUP BY Customers.CustomerID, Customers.Name
HAVING  COUNT(DISTINCT Products.ProductID)= 2;
--------------------------------------------------------------------------------------

