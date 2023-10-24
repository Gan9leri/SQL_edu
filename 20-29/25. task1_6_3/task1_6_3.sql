--Выведите максимальную и минимальную стоимость товаров в каждой категории (CategoryID).
-- В какой категории самая большая разница между самой высокой ценой товара и самой низкой ценой?

Select max(UnitPrice) as max_price, min(UnitPrice) as min_price, 
CategoryID from Products group by CategoryID 
order by (max(UnitPrice) - min(UnitPrice)) DESC