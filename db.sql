CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(500),
  price DECIMAL(10,2),
  image_url VARCHAR(255)
);

INSERT INTO products (name, description, price, image_url) 
VALUES 
('Laptop', 'Powerful gaming laptop', 75000, 'laptop.jpg'),
('Phone', 'Latest smartphone', 30000, 'phone.jpg');