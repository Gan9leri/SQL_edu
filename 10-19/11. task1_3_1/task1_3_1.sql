--Выведите заказы, сделанные в дату (Orderdate) 1998-02-26 00:00:00.000. 
--Отсортируйте заказы по весу (Freight). 
--Какой номер заказа (Order ID) имеет самый большой вес?

Select TOP 1 OrderID from Orders where OrderDate = '1998-02-26 00:00:00.000' order by Freight DESC