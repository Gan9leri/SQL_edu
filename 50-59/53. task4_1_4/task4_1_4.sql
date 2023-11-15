--Найдите клиента, который проживает в одном городе (City),
--но оформляет доставку в другой город (Shipcity).

Select distinct ContactName from Customers as t1 join Orders as t2
on t1.CustomerID = t2.CustomerID
where t1.City != t2.ShipCity 