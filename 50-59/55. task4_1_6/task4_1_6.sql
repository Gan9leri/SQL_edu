-- осчитайте количество заказов, 
-- которые не были доставлены (столбец ShippedDate не заполнен)?

Select count(OrderID) as count_orders from Orders
where ShippedDate is null