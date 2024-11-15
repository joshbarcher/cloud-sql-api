CREATE DATABASE IF NOT EXISTS icecream_parlor;

USE icecream_parlor;

-- Table: flavors
CREATE TABLE flavors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    price DECIMAL(5, 2) NOT NULL
);

-- Table: sizes
CREATE TABLE sizes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    size_name VARCHAR(20) NOT NULL,
    price_multiplier DECIMAL(3, 2) NOT NULL
);

-- Table: orders
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    flavor_id INT,
    size_id INT,
    quantity INT NOT NULL,
    total_price DECIMAL(7, 2) NOT NULL,
    FOREIGN KEY (flavor_id) REFERENCES flavors(id),
    FOREIGN KEY (size_id) REFERENCES sizes(id)
);

-- Insert into flavors
INSERT INTO flavors (name, description, price) VALUES 
('Vanilla', 'Classic vanilla flavor', 3.00),
('Chocolate', 'Rich chocolate flavor', 3.50),
('Strawberry', 'Sweet strawberry flavor', 3.25),
('Mint Chocolate Chip', 'Cool mint with chocolate chips', 3.75),
('Cookie Dough', 'Vanilla ice cream with cookie dough chunks', 4.00),
('Salted Caramel', 'Sweet and salty caramel flavor', 3.80),
('Pistachio', 'Nutty pistachio flavor', 4.00),
('Cookies and Cream', 'Vanilla with chocolate cookies', 4.00),
('Mango', 'Tropical mango flavor', 3.50),
('Coffee', 'Bold coffee flavor', 3.75);

-- Insert into sizes
INSERT INTO sizes (size_name, price_multiplier) VALUES 
('Small', 1.00),
('Medium', 1.50),
('Large', 2.00);

-- Insert into orders
INSERT INTO orders (customer_name, flavor_id, size_id, quantity, total_price) VALUES
('Alice', 1, 2, 2, 9.00),
('Bob', 2, 1, 1, 3.50),
('Carol', 3, 3, 1, 6.50),
('Dave', 4, 2, 3, 16.88),
('Eve', 5, 1, 2, 8.00),
('Frank', 6, 3, 2, 15.20),
('Grace', 7, 2, 1, 6.00),
('Heidi', 8, 1, 3, 12.00),
('Ivan', 9, 3, 1, 7.00),
('Judy', 10, 2, 2, 11.25);