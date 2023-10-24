--У какого количества клиентов в должности 
--есть слово Sales, а регион не заполнен?

Select count(CustomerID) as count_customer from Customers 
where ContactTitle like '%Sales%' and Region is Null