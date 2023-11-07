--Посчитайте выручку по каждой категории. 
--Какая категория принесла самую высокую выручку?

with category_tab as(
Select ProductID, t1.CategoryID, CategoryName from 
Products as t1 join Categories as t2  on t1.CategoryID = t2.CategoryID
)
Select sum(UnitPrice*Quantity*(1-Discount)) as sum_orders, CategoryID,CategoryName
from category_tab as t1 join [Order Details] as t2 
on t1.ProductID = t2.ProductID group by CategoryID, CategoryName 
order by sum_orders desc




