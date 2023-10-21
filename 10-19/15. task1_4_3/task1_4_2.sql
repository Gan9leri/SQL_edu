--Выведите минимальную, среднюю и максимальную стоимость продуктов, 
--которые входят в категорию (CategoryID) №3. Какова максимальная 
--стоимость продуктов в этой категории? Ответ округлите до целого числа. 
--Присвойте итоговым столбцам новые имена: min_price, avg_price, max_price.

Select min(UnitPrice) as min_price, avg(UnitPrice) as avg_price, 
max(UnitPrice) as max_price from Products where CategoryID = 3

