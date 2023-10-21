--Посчитайте суммарную стоимость всех продуктов из категорий №4 и №5.

Select sum(UnitPrice) as sum_price from Products 
where CategoryID = 4 or CategoryID = 5