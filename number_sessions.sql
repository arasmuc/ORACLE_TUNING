SELECT COUNT(*)   FROM v$session;
SELECT name, value FROM v$parameter WHERE name = 'sessions';

