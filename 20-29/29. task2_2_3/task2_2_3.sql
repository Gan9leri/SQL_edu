--Посчитайте суммарную выручку (стоимость) по заказам, 
--которые были совершены в 1997 году. Ответ округлите до целого числа.

Select round(sum(UnitPrice*Quantity*(1-Discount)), 0) as rev
from [Order Details] as t1 inner join Orders as t2
on t1.OrderID = t2.OrderID where OrderDate 
BETWEEN '1997-01-01' and '1997-12-31'