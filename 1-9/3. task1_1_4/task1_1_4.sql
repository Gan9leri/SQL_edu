--Сколько столбцов содержится в таблице [Order Details]?
--Примечание: если название таблицы состоит из двух или 
--более слов, то его нужно поместить в квадратные скобки. 

Select count(*) as Count_Columns from INFORMATION_SCHEMA.COLUMNS WHERE 
TABLE_CATALOG = 'Northwind' 
AND TABLE_SCHEMA = 'dbo' 
AND TABLE_NAME = 'Order Details'

