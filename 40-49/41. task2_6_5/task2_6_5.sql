--Выведите города доставки (Shipcity) и кол-во заказов, которые были оформлены 
--в эти города в 1997 году. Оставьте только города с количеством заказов больше 5. 
--Затем с помощью вложенного запроса посчитайте количество найденных городов.

Select count(ShipCity) as count_City from
(Select distinct ShipCity from Orders
where OrderDate BETWEEN '1997-01-01' and '1997-12-31'
GROUP by ShipCity having count(OrderID) > 5
) as City_tab
