--Выведите клиентов, чей номер телефона (Phone) содержит "5555". 
--Сколько их? Четыре символа (пятерки) подряд могут быть в начале номера, 
-- в середине или в конце.
Select count(CustomerID) as Count_customers from Customers where Phone like '%5555%'