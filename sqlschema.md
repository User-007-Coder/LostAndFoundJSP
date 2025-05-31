
CREATE DATABASE lost_found;

USE lost_found;

CREATE TABLE items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  description TEXT,
  type ENUM('lost', 'found'),
  location VARCHAR(100),
  date DATE,
  image VARCHAR(255)
);

CREATE TABLE users (
  -- id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) UNIQUE,
  email VARCHAR(100) PRIMARY KEY,
  password VARCHAR(100),
  role ENUM('admin', 'user') DEFAULT 'user'
);
