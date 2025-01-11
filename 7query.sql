SELECT 
    Employees.name AS employee_name,
    Services.name AS service_name,
    Services.price
FROM 
    Orders
JOIN Employees ON Orders.employee_id = Employees.id
JOIN Services ON Orders.service_id = Services.id
WHERE 
    Services.price > 2000;


