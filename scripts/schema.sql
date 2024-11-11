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