DROP DATABASE IF EXISTS hotel_gestion;

CREATE DATABASE hotel_gestion
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE hotel_gestion;

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS encuesta;
DROP TABLE IF EXISTS campania;
DROP TABLE IF EXISTS presupuesto;
DROP TABLE IF EXISTS meta_mensual;
DROP TABLE IF EXISTS temporada;
DROP TABLE IF EXISTS hotel;

SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE hotel(

    codigo_hotel VARCHAR(10) PRIMARY KEY,

    nombre_oficial VARCHAR(120) NOT NULL,

    ciudad VARCHAR(80),

    direccion VARCHAR(150),

    telefono VARCHAR(15),

    correo VARCHAR(120),

    categoria INT,

    activo BOOLEAN NOT NULL DEFAULT TRUE

);

CREATE TABLE temporada(

    codigo_temporada VARCHAR(10) PRIMARY KEY,

    nombre VARCHAR(60) NOT NULL,

    fecha_inicio DATE,

    fecha_fin DATE,

    descripcion VARCHAR(200)

);

CREATE TABLE meta_mensual(

    codigo_hotel VARCHAR(10),

    periodo DATE NOT NULL,

    meta_ingresos DECIMAL(12,2),

    meta_ocupacion DECIMAL(5,2),

    PRIMARY KEY(codigo_hotel,periodo),

    FOREIGN KEY(codigo_hotel)
    REFERENCES hotel(codigo_hotel)

);

CREATE TABLE presupuesto(

    codigo_hotel VARCHAR(10),

    periodo DATE NOT NULL,

    presupuesto_operativo DECIMAL(12,2),

    presupuesto_marketing DECIMAL(12,2),

    presupuesto_mantenimiento DECIMAL(12,2),

    PRIMARY KEY(codigo_hotel,periodo),

    FOREIGN KEY(codigo_hotel)
    REFERENCES hotel(codigo_hotel)

);

CREATE TABLE campania(

    codigo_campania VARCHAR(10) PRIMARY KEY,

    codigo_hotel VARCHAR(10),

    codigo_temporada VARCHAR(10),

    nombre VARCHAR(100) NOT NULL,

    fecha_inicio DATE,

    fecha_fin DATE,

    presupuesto DECIMAL(12,2),

    estado VARCHAR(20),

    FOREIGN KEY(codigo_hotel)
    REFERENCES hotel(codigo_hotel),

    FOREIGN KEY(codigo_temporada)
    REFERENCES temporada(codigo_temporada)

);
CREATE TABLE evento(

    codigo_evento VARCHAR(10) PRIMARY KEY,

    codigo_campania VARCHAR(10),

    codigo_hotel VARCHAR(10),

    nombre_evento VARCHAR(120) NOT NULL,

    tipo_evento VARCHAR(50),

    fecha_inicio DATE,

    fecha_fin DATE,

    presupuesto DECIMAL(12,2),

    canal_marketing VARCHAR(50),

    descripcion VARCHAR(250),

    estado VARCHAR(20),

    FOREIGN KEY(codigo_campania)
    REFERENCES campania(codigo_campania),

    FOREIGN KEY(codigo_hotel)
    REFERENCES hotel(codigo_hotel)

);

CREATE TABLE encuesta(

    id_encuesta INT AUTO_INCREMENT PRIMARY KEY,

    fecha DATE NOT NULL,

    codigo_hotel VARCHAR(10),

    documento_cliente VARCHAR(20),

    puntuacion INT,

    tiempo_espera_minutos INT,

    comentario VARCHAR(300),

    FOREIGN KEY(codigo_hotel)
    REFERENCES hotel(codigo_hotel)

);

CREATE INDEX idx_hotel_ciudad
ON hotel(ciudad);

CREATE INDEX idx_meta_periodo
ON meta_mensual(periodo);

CREATE INDEX idx_presupuesto_periodo
ON presupuesto(periodo);

CREATE INDEX idx_encuesta_fecha
ON encuesta(fecha);

CREATE INDEX idx_campania_estado
ON campania(estado);

CREATE INDEX idx_temporada_fechas
ON temporada(fecha_inicio,fecha_fin);

CREATE INDEX idx_evento_fecha
ON evento(fecha_inicio);

CREATE INDEX idx_evento_hotel
ON evento(codigo_hotel);

CREATE INDEX idx_evento_estado
ON evento(estado);