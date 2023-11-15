--Сначала выведите имена всех жителей Испании. 
--Затем добавьте по каждому жителю количество совершенных заказов.
-- Сколько заказов совершил Diego Roel? 
--Примечание: задачу можно решить с помощью LEFT JOIN.

Select ContactName, count(OrderID) as count_orders from Customers as t1 left join Orders as t2
on t1.CustomerID = t2.CustomerID where Country = 'Spain' and ContactName = 'Diego Roel' 
group by ContactName