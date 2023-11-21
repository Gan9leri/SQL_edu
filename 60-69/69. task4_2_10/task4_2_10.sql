--Выведите 3 столбца: год, название категории и выручку. 
--Какова выручка по категории Condiments в 1996 году? 
--Округлите ответ до целого числа.

Select year(OrderDate) as year_order, CategoryName, 
round(sum(Quantity*t2.UnitPrice*(1-Discount)),0) as Ravenue 
from Orders as t1 join [Order Details] as t2 on t1.OrderID = t2.OrderID
join Products as t3 on t2.ProductID = t3.ProductID
join Categories as t4 on t3.CategoryID = t4.CategoryID
where CategoryName = 'Condiments' and year(OrderDate) = '1996' 
group by year(OrderDate), CategoryName