-- Question 6) roduce a table that lists the most popular service (or services).
-- That is, give the name of the service that has the most subscribers.

SELECT MAX(services.service) AS service
FROM service_subscribers
INNER JOIN services ON service_subscribers.service = services.scode;

--TEST OUTPUT:
-- service
-- --------------
-- Message Answer
