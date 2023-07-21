-- Crear la base de datos
CREATE DATABASE bitcoin;

-- Seleccionar la base de datos
USE bitcoin;

-- Tabla de usuarios
CREATE TABLE users (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          username VARCHAR(50) NOT NULL,
                          email VARCHAR(100) NOT NULL,
                          password VARCHAR(255) NOT NULL
);

-- Tabla de reportes
CREATE TABLE reports (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          user_id INT NOT NULL,
                          bitcoin_amount DECIMAL(10, 2) NOT NULL,
                          date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);