--Среди всех заказов клиента Jose Pavarotti 
--найдите заказ с наименьшей выручкой. Какова выручка заказа?

Select t2.OrderID, sum(Quantity * UnitPrice * (1-Discount)) as Revenue from Orders as t1 join [Order Details] as t2
on t1.OrderID = t2.OrderID where CustomerID in 
(Select CustomerID from Customers where ContactName = 'Jose Pavarotti')
group by t2.OrderID order by Revenue