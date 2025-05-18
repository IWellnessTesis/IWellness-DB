-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS db_iwellness;
USE db_iwellness;

-- Tabla: Provider_Info
CREATE TABLE Provider_Info (
    id INT AUTO_INCREMENT PRIMARY KEY, -- esto es dentro de la tabla.
    idProveedor BIGINT,
    nombre_empresa VARCHAR(100),
    coordenadaX VARCHAR(100),
    coordenadaY VARCHAR(100),
    cargoContacto VARCHAR(100),
    telefono VARCHAR(100),
    telefonoEmpresa VARCHAR(100),
    nombre VARCHAR(100)
);

-- Tabla: Turist_Info
CREATE TABLE Turist_Info (
    id INT AUTO_INCREMENT PRIMARY KEY, -- esto es dentro de la tabla.
    idTurista BIGINT,
    nombre VARCHAR(100),
    telefono VARCHAR(100),
    ciudad VARCHAR(100),
    pais VARCHAR(100),
    genero VARCHAR(100),
    estadoCivil VARCHAR(100)
);

-- Tabla: Service_Location_Info
CREATE TABLE Service_Location_Info (
    serviceId BIGINT,
    serviceName VARCHAR(100),
    coordenadaX VARCHAR(100),
    coordenadaY VARCHAR(100),
    estado BOOLEAN,
    nombre_empresa VARCHAR(100),
    idProveedor BIGINT,
    idUsuario BIGINT
);

-- Tabla: Book_Service_Info
CREATE TABLE Book_Service_Info (
    _idServicio BIGINT,
    fechaReserva DATE,
    fechaServicio DATE,
    estado VARCHAR(100),
    _idTurista BIGINT
);

-- Tabla: Service_Search_By_UserStatus
CREATE TABLE Service_Search_By_UserStatus (
    ID INT AUTO_INCREMENT PRIMARY KEY, -- esto es dentro de la tabla.
    estadoCivil VARCHAR(100),
    genero VARCHAR(100),
    intereses VARCHAR(100),
    userId BIGINT
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

