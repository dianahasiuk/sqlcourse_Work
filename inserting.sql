INSERT INTO Clients (id, name, phone, email, address) VALUES
(1, 'Олександр Іванов', '+380631111111', 'ivanov@example.com', 'Київ, вул. Зіркова, 5'),
(2, 'Марія Петрівна', '+380671111112', 'maria@example.com', 'Львів, вул. Мистецька, 7'),
(3, 'Андрій Сидоров', '+380991111113', 'andrew@example.com', 'Одеса, вул. Свободи, 1');

-- Employees
INSERT INTO Employees (id, name, phone, position, salary) VALUES
(1, 'Роберт Дауні-молодший', '+380671111111', 'Клінер', 15500),
(2, 'Генрі Кавілл', '+380671111112', 'Менеджер', 16000);

-- Services
INSERT INTO Services (id, name, description, price) VALUES
(1, 'Генеральне прибирання', 'Повне прибирання приміщення', 2500),
(2, 'Миття вікон', 'Миття вікон будь-якого розміру', 500);

-- Orders
INSERT INTO Orders (id, client_id, employee_id, service_id, order_date, status) VALUES
(1, 1, 1, 1, '2025-01-01', 'виконується'),
(2, 2, 2, 2, '2025-01-02', 'завершено');

-- Payments
INSERT INTO Payments (id, order_id, amount, payment_date, method) VALUES
(1, 1, 2500, '2025-01-01', 'Готівка'),
(2, 2, 500, '2025-01-02', 'Картка');

-- Schedules
INSERT INTO Schedules (id, employee_id, work_date, shift) VALUES
(1, 1, '2025-01-01', 'Ранок'),
(2, 2, '2025-01-02', 'День');

-- Feedback
INSERT INTO Feedback (id, client_id, order_id, feedback_text, rating) VALUES
(1, 1, 1, 'Все супер!', 5),
(2, 2, 2, 'Добре, але можна краще.', 4);

-- Materials
INSERT INTO Materials (id, name, quantity, price_per_unit) VALUES
(1, 'Миючий засіб', 100, 50),
(2, 'Серветки', 200, 20);

-- MaterialUsage
INSERT INTO MaterialUsage (id, material_id, order_id, quantity_used) VALUES
(1, 1, 1, 2),
(2, 2, 2, 5);

-- Branches
INSERT INTO Branches (id, name, location, manager_id) VALUES
(1, 'Київська філія', 'Київ, вул. Центральна, 1', 2);

-- Promotions
INSERT INTO Promotions (id, name, description, discount_percentage, start_date, end_date) VALUES
(1, 'Новий клієнт', 'Знижка для нових клієнтів', 10.00, '2025-01-01', '2025-01-31');

-- ClientPromotions
INSERT INTO ClientPromotions (id, client_id, promotion_id) VALUES
(1, 1, 1);

-- EmployeePerformance
INSERT INTO EmployeePerformance (id, employee_id, completed_orders, average_rating) VALUES
(1, 1, 10, 4.5);

-- Equipment
INSERT INTO Equipment (id, name, conditions, branch_id) VALUES
(1, 'Пилосос', 'Добрий', 1);

-- EquipmentUsage
INSERT INTO EquipmentUsage (id, equipment_id, order_id, usage_hours) VALUES
(1, 1, 1, 2.5);
