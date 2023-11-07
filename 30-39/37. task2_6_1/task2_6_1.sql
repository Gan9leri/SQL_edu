--Посчитайте количество заказов, в которых присутствует товар Chocolade.

Select count(OrderID) as count_orders from [Order Details] where ProductID in
(Select ProductID from Products where ProductName = 'Chocolade')