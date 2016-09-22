set echo off
set scan on
set lines 150
set pages 100
set verify off
set feedback off
set termout off
set arraysize 200

column TABLE_NAME heading "Table|Name" format a30
column NUM_ROWS heading "Number|of Rows" format 9,999,999,990
column BLOCKS heading "Blocks" format 999,999,990
column EMPTY_BLOCKS heading "Empty|Blocks" format 999,999,990
column AVG_SPACE heading "Average|Space" format 9,990
column CHAIN_CNT heading "Chain|Count" format 999,990
column AVG_ROW_LEN heading "Average|Row Len" format 990
column GLOBAL_STATS heading "Global|Stats" format a6
column USER_STATS heading "User|Stats" format a6
column SAMPLE_SIZE heading "Sample|Size" format 9,999,999,990
column to_char(t.last_analyzed,'MM-DD-YYYY') heading "Date|MM-DD-YYYY" format a10

select TABLE_NAME, NUM_ROWS, BLOCKS, EMPTY_BLOCKS, AVG_SPACE, CHAIN_CNT, AVG_ROW_LEN, GLOBAL_STATS, USER_STATS, SAMPLE_SIZE, to_char(t.last_analyzed,'MM-DD-YYYY')
from dba_tables t
where
owner = upper(nvl('&&Owner',user))
and table_name = upper('&&Table_name');
