--Какой грузоотправитель исполнил больше всего заказов?
Select top(1) count(OrderID) as count_orders, CompanyName from Orders as t1 join Shippers as t2
on t1.ShipVia = t2.ShipperID group by CompanyName order by count_orders desc
