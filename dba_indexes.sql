set echo off
set scan on
set lines 150
set pages 100
set verify off
set feedback off
set termout off
set arraysize 200

column INDEX_NAME heading "Index|Name" format a30
column UNIQUENESS heading "Unique" format a9
column BLEV heading "B|Tree|Level" format 90
column LEAF_BLOCKS heading "Leaf|Blks" format 999,999,990
column DISTINCT_KEYS heading "Distinct|Keys" format 9,999,999,990
column AVG_LEAF_BLOCKS_PER_KEY heading "Average|Leaf Blocks|Per Key" format 9,999,990
column AVG_DATA_BLOCKS_PER_KEY heading "Average|Data Blocks|Per Key" format 9,999,990
column CLUSTERING_FACTOR heading "Cluster|Factor" format 999,999,999,990
column COLUMN_POSITION heading "Col|Pos" format 990
column col heading "Column|Details" format a24
column COLUMN_LENGTH heading "Col|Len" format 9,990
column GLOBAL_STATS heading "Global|Stats" format a6
column USER_STATS heading "User|Stats" format a6
column SAMPLE_SIZE heading "Sample|Size" format 9,999,999,990
column to_char(t.last_analyzed,'MM-DD-YYYY') heading "Date|MM-DD-YYYY" format a10

select INDEX_NAME, UNIQUENESS, BLEVEL BLev, LEAF_BLOCKS, DISTINCT_KEYS, NUM_ROWS, AVG_LEAF_BLOCKS_PER_KEY, AVG_DATA_BLOCKS_PER_KEY,
CLUSTERING_FACTOR, GLOBAL_STATS, USER_STATS, SAMPLE_SIZE, to_char(t.last_analyzed,'MM-DD-YYYY')
from dba_indexes t
where table_name = upper('&Table_name')
and table_owner = upper(nvl('&Owner',user));
