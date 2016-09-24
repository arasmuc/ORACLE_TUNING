-- If you find out significant event “db file sequential read” – check number of indexes per table, maybe too many created:

select owner, table_name, index_count from (
select owner, table_name, count(index_name) index_count
from dba_indexes
where owner not in ('SYS', 'SYSTEM', 'XDB', 'OLAPSYS', 'SYSMAN', 'MDSYS')
group by owner, table_name
order by count(index_name) desc)
where index_count > 7;
