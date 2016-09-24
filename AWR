--- AWR snapshots

SET LINESIZE 120

COLUMN begin_interval_time FORMAT A30
COLUMN end_interval_time FORMAT A30
COLUMN startup_time FORMAT A30

SELECT snap_id, begin_interval_time, end_interval_time, startup_time
FROM   dba_hist_snapshot
WHERE  begin_interval_time > TRUNC(SYSTIMESTAMP)
ORDER BY snap_id;

@$ORACLE_HOME/rdbms/admin/awrrpt.sql
