--Какое количество названий стран клиентов состоят более чем из 10 символов?

Select count(Country) as count_country from 
(Select distinct Country from Customers where len(Country) > 10)
country_tab