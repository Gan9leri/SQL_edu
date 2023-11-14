--Выведите наименования продуктов и их цену. Далее с помощью выражения 
--CASE добавьте столбец с сегментацией по цене. Если цена от 0 до 9.99,  
--то это сегмент '0-9.99'. Если цена от 10 до 29.99, то это сегмент '10-29.99'. 
--Если цена от 30 до 49.99, то это сегмент '30-49.99'. Если цена от 50, то это сегмент '50+'. 
--Затем с помощью вложенного запроса посчитайте кол-во товаров в разрезе каждого сегмента. 
--Сколько товаров в сегменте '50+'?

Select count(ProductName) as count_product, price_segment from 
(Select ProductName, UnitPrice,
case when UnitPrice between 0 and 9.99 then '0-9.99'
     when UnitPrice between 10 and 29.99 then '10-29.99'
     when UnitPrice between 30 and 49.99 then '30-49.99'
     when UnitPrice >= 50 then '50+' 
end as price_segment
from Products) as segment_tab
 group by price_segment
