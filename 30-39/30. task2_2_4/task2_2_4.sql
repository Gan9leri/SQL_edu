--Выведите названия категорий и кол-во продуктов, которые входят в категории. 
--Сопоставьте названия категорий и кол-во продуктов в категориях.

Select count(ProductID) as count_products, CategoryName from Products as t1 join Categories as t2
on t1.CategoryID = t2.CategoryID where CategoryName = 'Confections' or 
CategoryName = 'Seafood' or CategoryName = 'Meat/Poultry' 
group by CategoryName