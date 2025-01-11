SELECT 
    Employees.name AS employee_name,
    COUNT(Orders.id) AS completed_orders
FROM 
    Employees
LEFT JOIN Orders ON Employees.id = Orders.employee_id
WHERE 
    Orders.status = 'завершено'
GROUP BY 
    Employees.name
ORDER BY 
    completed_orders DESC;

