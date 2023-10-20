--Выведите продукты, которые стоят больше 100 долларов или называются Chai. 
--Столбцы для вывода: название продукта и цена продукта. Сколько продуктов вывел запрос?
select count(*) as Count_out from 
(Select ProductName, UnitPrice from Products where UnitPrice > 100 or ProductName = 'Chai') 
as Data_out


