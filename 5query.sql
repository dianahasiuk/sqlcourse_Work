SELECT 
    Clients.name AS client_name,
    SUM(Services.price) AS total_spent
FROM 
    Orders
JOIN Clients ON Orders.client_id = Clients.id
JOIN Services ON Orders.service_id = Services.id
GROUP BY 
    Clients.name
ORDER BY 
    total_spent DESC;
