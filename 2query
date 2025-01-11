SELECT 
    Orders.id AS order_id,
    Clients.name AS client_name,
    Employees.name AS employee_name,
    Services.name AS service_name,
    Orders.date,
    Orders.status
FROM 
    Orders
JOIN Clients ON Orders.client_id = Clients.id
JOIN Employees ON Orders.employee_id = Employees.id
JOIN Services ON Orders.service_id = Services.id;
