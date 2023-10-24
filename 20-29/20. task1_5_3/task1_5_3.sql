--Выведите даты заказов (OrderDate) и кол-во заказов, совершенных в марте 1998 года. 
--Оставьте даты, в которые было совершено 4 заказа. Сколько их?
--Примените WHERE и HAVING.

Select count(*) as count_oreders from (Select OrderDate, count(OrderID) as count_orders from [Orders] 
where OrderDate BETWEEN '1998-03-01' and '1998-03-31' group by OrderDate 
Having count(OrderID) = 4) as out