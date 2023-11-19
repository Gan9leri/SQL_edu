--Посчитайте по месяцам количество заказов, которые совершили клиенты из США. 
--Сколько заказов было сделано в декабре 1996 года?

Select count(OrderID) as count_orders from Orders as t1 join Customers as t2
on t1.CustomerID = t2.CustomerID where t2.Country = 'USA' and 
datepart(month, OrderDate) = '12' and datepart(year, OrderDate) = '1996'