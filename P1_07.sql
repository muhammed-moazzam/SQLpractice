-- Question 7) Write an SQL query that will produce in one table a list of all the
-- acceptable trunks that can be used to route a call to the 416 area code, office
-- code 334. This query should list the trunks in the order of preference.
-- (The answer should list trunks with routes 416,334 then those with 416,000 and
-- then those with 000,000 for example)

SELECT trunks.portid
FROM ( SELECT * FROM (
SELECT trunks.portid, foreign_switch, area, office
FROM (trunks
JOIN trunk_routes ON trunks.portid = trunk_routes.portid))
WHERE area = '000' OR area = '416')
WHERE office = '334' OR office = '000'
ORDER BY area DESC, office DESC;


--TEST OUTPUT
-- portid
-- ------
-- 102
-- 106
-- 107
