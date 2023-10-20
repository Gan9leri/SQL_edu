--Раскройте список таблиц нашей базы данных. Сколько их?

Select count(*) as Count_tables from INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA = 'dbo' 
and TABLE_TYPE = 'BASE TABLE' and TABLE_NAME <> 'sysdiagrams'