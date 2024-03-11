-- Create the 'shop' database if it doesn't exist
CREATE DATABASE shop;

-- Switch to 'shop' database
USE shop;

-- Create 'product_category' table
CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

-- Create 'discount' table
CREATE TABLE discount (
    discount_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    discount_percentage DECIMAL(5, 2) NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT true
);

-- Create 'product' table
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    sku VARCHAR(50),
    category_id INT,
    inventory_id INT,
    price DECIMAL(10, 2) NOT NULL,
    discount_id INT,
    FOREIGN KEY (category_id) REFERENCES product_category(category_id),
    FOREIGN KEY (discount_id) REFERENCES discount(discount_id)
);

-- Insert data into 'product_category' table
INSERT INTO product_category (name, description) VALUES
('Clothing', 'Various clothing items'),
('Accessories', 'Fashion accessories'),
('Footwear', 'Shoes, sandals, etc.');

-- Insert data into 'discount' table
INSERT INTO discount (name, description, discount_percentage, is_active) VALUES
('Summer Sale', 'Get 10% off on selected items', 10.00, true),
('Clearance Sale', 'Up to 50% off on clearance', 50.00, true),
('New Year Special', '20% off on all products', 20.00, false);

-- Insert data into 'product' table
INSERT INTO product (name, description, sku, category_id, inventory_id, price, discount_id) VALUES
('Shirt', 'Comfortable cotton shirt', 'SHRT001', 1, 101, 19.99, 1),
('Pants', 'Stylish denim pants', 'PNTS002', 2, 102, 29.99, NULL),
('Shoes', 'Leather sneakers with cushioned insoles', 'SHS003', 3, 103, 39.99, 2),
('Jacket', 'Waterproof windbreaker jacket', 'JCKT004', 1, 104, 49.99, NULL);
