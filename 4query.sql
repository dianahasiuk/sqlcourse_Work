SELECT 
    Clients.name AS client_name,
    Clients.phone AS client_phone,
    Services.name AS service_name
FROM 
    Orders
JOIN Clients ON Orders.client_id = Clients.id
JOIN Services ON Orders.service_id = Services.id
WHERE 
    Services.name = 'Миття вікон';
