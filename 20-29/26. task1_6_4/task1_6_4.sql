--Найдите заказ (OrderID) с самым большим количеством штук (Quantity) товаров в чеке. 
--Если в заказе несколько разных товаров, то штуки нужно сложить. Какой OrderID у заказа?

Select sum(Quantity) as sum_q, OrderID from [Order Details] 
group by OrderID order by sum_q desc
