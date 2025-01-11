CREATE DATABASE CleaningCompany;
USE CleaningCompany;

CREATE TABLE Clients (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(15),
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);

CREATE TABLE Services (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2)
);

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    client_id INT,
    employee_id INT,
    service_id INT,
    order_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (client_id) REFERENCES Clients(id),
    FOREIGN KEY (employee_id) REFERENCES Employees(id),
    FOREIGN KEY (service_id) REFERENCES Services(id)
);

CREATE TABLE Payments (
    id INT PRIMARY KEY,
    order_id INT,
    amount DECIMAL(10, 2),
    payment_date DATE,
    method VARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);

CREATE TABLE Schedules (
    id INT PRIMARY KEY,
    employee_id INT,
    work_date DATE,
    shift VARCHAR(50),
    FOREIGN KEY (employee_id) REFERENCES Employees(id)
);

CREATE TABLE Feedback (
    id INT PRIMARY KEY,
    client_id INT,
    order_id INT,
    feedback_text TEXT,
    rating INT,
    FOREIGN KEY (client_id) REFERENCES Clients(id),
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);

CREATE TABLE Materials (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    quantity INT,
    price_per_unit DECIMAL(10, 2)
);

CREATE TABLE MaterialUsage (
    id INT PRIMARY KEY,
    material_id INT,
    order_id INT,
    quantity_used INT,
    FOREIGN KEY (material_id) REFERENCES Materials(id),
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);

CREATE TABLE Branches (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(255),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES Employees(id)
);

CREATE TABLE Promotions (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    discount_percentage DECIMAL(5, 2),
    start_date DATE,
    end_date DATE
);

CREATE TABLE ClientPromotions (
    id INT PRIMARY KEY,
    client_id INT,
    promotion_id INT,
    FOREIGN KEY (client_id) REFERENCES Clients(id),
    FOREIGN KEY (promotion_id) REFERENCES Promotions(id)
);

CREATE TABLE EmployeePerformance (
    id INT PRIMARY KEY,
    employee_id INT,
    completed_orders INT,
    average_rating DECIMAL(3, 2),
    FOREIGN KEY (employee_id) REFERENCES Employees(id)
);

CREATE TABLE Equipment (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    conditions VARCHAR(50),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES Branches(id)
);

CREATE TABLE EquipmentUsage (
    id INT PRIMARY KEY,
    equipment_id INT,
    order_id INT,
    usage_hours DECIMAL(5, 2),
    FOREIGN KEY (equipment_id) REFERENCES Equipment(id),
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);
