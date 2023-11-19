--C помощью LIKE найдите клиентов с именами, которые начинаются на Mari. Сколько их?

Select count(*) as count_customers from Customers
where ContactName like 'Mari%'