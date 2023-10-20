-- Выведите клиентов из Испании. Сколько их?
Select count(CustomerID) as Count_Customer from Customers where Country = 'Spain'