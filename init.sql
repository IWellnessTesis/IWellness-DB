-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS db_iwellness;
USE db_iwellness;

-- Tabla: Provider_Info
CREATE TABLE Provider_Info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empresa VARCHAR(100),
    coordenadaX VARCHAR(50),
    coordenadaY VARCHAR(50),
    cargoContacto VARCHAR(100),
    telefono VARCHAR(20),
    telefonoEmpresa VARCHAR(20),
    nombre VARCHAR(100)
);

-- Tabla: Service_Location_Info
CREATE TABLE Service_Location_Info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    serviceId VARCHAR(50),
    serviceName VARCHAR(100),
    coordenadaX VARCHAR(50),
    coordenadaY VARCHAR(50),
    estado VARCHAR(50)
);

-- Tabla: Turist_Info
CREATE TABLE Turist_Info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono VARCHAR(20),
    ciudad VARCHAR(100),
    pais VARCHAR(100),
    genero VARCHAR(20),
    estadoCivil VARCHAR(20)
);

-- Tabla: Service_Search_By_UserStatus
CREATE TABLE Service_Search_By_UserStatus (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    estadoCivil VARCHAR(20),
    genero VARCHAR(20),
    intereses TEXT,
    userId VARCHAR(50)
);

-- Tabla: User_Interest_Info
CREATE TABLE User_Interest_Info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pais VARCHAR(100),
    intereses TEXT,
    updated_at DATETIME,
    userID VARCHAR(50)
);


-- Insert opcional (puedes agregar datos de ejemplo si quieres)
-- INSERT INTO Provider_Info (nombre_empresa, coordenadaX, ...) VALUES (...);

