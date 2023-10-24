--Выберите формулу, которая рассчитает в таблице Order Details выручку 
--по конкретному продукту в чеке (выручку по одной строке) 
--с учетом количества штук (quantity) и размера скидки.

Select Quantity*UnitPrice*(1-Discount) from [Order Details]