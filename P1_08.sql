-- Question 8) Write an SQL query that would find if the line with phone number
-- (613) 712-0024 is currently available to take a call because its channel is IDLE.
-- Rev 1: That is, select the portid, directory number, and channel state of line (613) 712-0024.

SELECT lines.portid, areacode || '-' || officecode || '-' || stationcode AS directoryNumber, state
FROM lines
INNER JOIN channels ON lines.portid = channels.portid
WHERE areacode = '613'
AND officecode = '712'
AND stationcode = '0024';

--TEST OUTPUT:
-- portid  directoryNumber  state
-- ------  ---------------  -----
-- 24      613-712-0024     BUSY
