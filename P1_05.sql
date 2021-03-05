-- Question 5) Find the names of all the subscribers who subscribe to at least three services.

SELECT name
FROM service_subscribers
INNER JOIN subscribers ON service_subscribers.portid = subscribers.portid
GROUP BY name HAVING COUNT(service) > 2;

--TEST OUTPUT:
-- name
-- --------------
-- Chris Pronger
-- Frank Thomas
-- Homer Simpson
-- Joe Carter
-- Matt Stajan
-- Michael Jordan
-- Steve Sampras
-- Vince Carter
