--Посчитайте общую выручку, которую принесли товары категории Confections. 
--Ответ округлите до целого числа.

Select round(sum((UnitPrice*Quantity*(1-Discount))),0) as sum_orders
from [Order Details] where ProductID in (
    Select ProductID from Products where CategoryID in 
        (Select CategoryID from Categories where CategoryName = 'Confections')
)
