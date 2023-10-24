--Из таблицы Order Details выведите уникальные номера заказов (OrderID) 
--и стоимость (выручку) заказов. Учитывайте кол-во штук товара и размер скидки.
--Сколько заказов стоит больше 10 000?

Select count(*) as count_out from (
Select OrderID, sum(Quantity*UnitPrice*(1-Discount)) as sum_q from [Order Details] 
group by OrderID having sum(Quantity*UnitPrice*(1-Discount)) > 10000) 
my_tab
