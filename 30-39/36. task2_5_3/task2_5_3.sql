--Выведите товары, которые относятся к CategoryID =1. 
--Используйте этот SQL-запрос как подзапрос для того, 
--чтобы посчитать общую выручку по товарам, которые относятся к CategoryID = 1. 
--Ответ округлите до целого числа.
--Примечание:  Задачу решайте по примеру №2 из обучающего видео.

Select round(sum((UnitPrice*Quantity*(1-Discount))), 0) as sum_order 
from [Order Details] where ProductID in
(Select ProductID from Products where CategoryID = 1)