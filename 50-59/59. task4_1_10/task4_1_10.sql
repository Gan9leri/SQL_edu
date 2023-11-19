-- Найдите заказ (OrderID), стоимость которого составила 2900.
Select OrderID, sum(UnitPrice*Quantity*(1-Discount)) as sum_order from [Order Details]
group by OrderID having sum(UnitPrice*Quantity*(1-Discount)) = 2900