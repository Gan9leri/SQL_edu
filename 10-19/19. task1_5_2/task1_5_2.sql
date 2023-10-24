--Из таблицы Products выведите ID категорий (СategoryID) 
--и среднюю стоимость товаров в категориях. В какой категории (CategoryID) 
--самая высокая средняя стоимость товаров?

Select CategoryID, avg(UnitPrice) as avg_price from Products group by CategoryID 
ORDER by avg(UnitPrice) DESC