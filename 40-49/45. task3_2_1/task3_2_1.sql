--Посчитайте общую выручку по всем заказам, которые были оформлены в 1996 году.
-- C помощью функции Round() округлите ответ до целого числа.

Select round(sum(Quantity * UnitPrice * (1-Discount)), 0) as sum_price 
from [Order Details] as t1 join Orders as t2
on t1.OrderID = t2.OrderID
where OrderDate BETWEEN '1996-01-01' and '1996-12-31'