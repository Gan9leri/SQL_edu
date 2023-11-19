--Посчитайте выручку по каждой неделе 1998-го года. 
--Какова максимальная недельная выручка? Ответ округлите до целого числа.

Select top(1) datepart(week, OrderDate) as week_of_year, round(sum(Quantity*UnitPrice*(1-Discount)),0) as sum_week 
from [Order Details] as t1 join Orders as t2
on t1.OrderID = t2.OrderID where OrderDate BETWEEN '1998-01-01' and '1998-12-31'
group by datepart(week, OrderDate) order by sum_week desc 

