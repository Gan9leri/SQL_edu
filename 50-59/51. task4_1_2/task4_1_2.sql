--Как зовут клиента с наибольшим кол-вом заказов?

Select top(1) ContactName, count(OrderID) as count_orders 
from Customers as t1 join Orders as t2
on t1.CustomerID = t2.CustomerID 
group by ContactName order by count_orders desc 