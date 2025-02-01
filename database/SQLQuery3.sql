--1 TOtal nummber of customers
SELECT count(*) AS total_customers
FROM Customers

--2 TOtal nummber of Orders
SELECT count(*) AS total_Orders
FROM Orders



--3 Total Revenue
SELECT sum(totalamount) AS Total_Revenue
FROM Orders


--4 Average Order Value
SELECT AVG(totalamount) AS Average_Value
FROM Orders



--5 Total Number of Products
SELECT COUNT(*) AS Total_Products
FROM Products


--6 Total Products Sold
SELECT sum(quantity) AS Total_Products_Sold
FROM OrderDetails


--7 Most Expensive Product
SELECT Top 1 ProductName 
FROM Products
order by Products.Price DESC

--8SELECT Top 1 ProductName 
SELECT Top 1 ProductName 
FROM Products
order by Products.Price ASC


--9 Number of Orders Per  Customer
SELECT Customerid
 ,count (OrderID) as number_of_orders  from Orders
group by CustomerID 
order by number_of_orders desc


--10 total stock quantity
select ProductID , Quantity from OrderDetails as total_staock_quantity

-- 11 product out of stock 

select count(*) from Products
where StockQuantity=0


--12 total_orders
SELECT OrderID as product_in_exact_day
from Orders
where OrderDate = '2024-04-12'


-- 13 most recent order
select Top 1 *
from Orders
order by OrderDate desc


--14 number of order by month 
select Month (orderdate) as order_date, 
count(*) as number_of_orders
from Orders  group by MONTH (OrderDate)     


--15
select productname,price 
from products 
where price<50


--16
select top 1 StockQuantity
from Products
order by StockQuantity desc


--17
select count(*) from Products
where StockQuantity=0

--18

select datename (weekday,orderdate) as day_of_week,
count(*) as numberoforders
from orders 
group by datename(weekday,orderdate) 

order by  numberoforders desc 

--19
select CustomerID ,avg(totalamount) as a 
from Orders
group by CustomerID


--20
select productname, Price 

from Products
where price>(select avg(price) from Products) 