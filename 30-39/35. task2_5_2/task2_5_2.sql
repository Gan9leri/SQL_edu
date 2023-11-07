--Выведите ID клиентов и кол-во заказов, которые совершили клиенты. 
--Оставьте только ID клиентов с количеством заказов более 10. 
--Затем с помощью вложенного запроса посчитайте количество таких клиентов.
--ВАЖНО: задайте Alias-ы для вложенного запроса и столбца, который является 
--результатом применения агрегирующей функции, иначе вложенный запрос не сработает.

Select count(CustomerID) as count_customers from
(Select count(OrderID) as count_orders, CustomerID from Orders 
group by CustomerID having COUNT(OrderID) > 10) as customer_tab