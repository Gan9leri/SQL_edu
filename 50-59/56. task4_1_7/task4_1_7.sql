-- В какие города (ShipCity) страны (ShipCountry) Великобритания
-- были оформлены заказы в феврале 1998 года?

Select ShipCity from Orders where ShipCountry = 'UK'
and OrderDate BETWEEN '1998-02-01' and '1998-02-28'