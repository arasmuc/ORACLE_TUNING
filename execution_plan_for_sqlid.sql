-- Shared Pool
select * from table(dbms_xplan.display_cursor('SQL_ID',null,'ALL'));

-- AWR
select * from table(dbms_xplan.display_awr('SQL_ID',null,null,'ALL'));
select * from table(dbms_xplan.display_awr('SQL_ID',null,DBID,'ALL'));
