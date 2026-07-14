DROP SCHEMA IF EXISTS operaciones CASCADE;

CREATE SCHEMA operaciones;

SET search_path TO operaciones, public;

CREATE TABLE hotel(

    codigo_hotel VARCHAR(10) PRIMARY KEY,

    nombre_oficial VARCHAR(120) NOT NULL,

    ciudad VARCHAR(80),

    direccion VARCHAR(150),

    telefono VARCHAR(15),

    correo VARCHAR(120),

    categoria INTEGER,

    activo BOOLEAN NOT NULL DEFAULT TRUE

);

CREATE TABLE tipo_habitacion(

    codigo_tipo VARCHAR(10) PRIMARY KEY,

    nombre VARCHAR(60) NOT NULL,

    capacidad INTEGER,

    precio_base NUMERIC(10,2)

);

CREATE TABLE habitacion(

    codigo_habitacion VARCHAR(10) PRIMARY KEY,

    codigo_hotel VARCHAR(10)
    REFERENCES hotel(codigo_hotel),

    codigo_tipo VARCHAR(10)
    REFERENCES tipo_habitacion(codigo_tipo),

    numero VARCHAR(10),

    piso INTEGER,

    estado VARCHAR(20)

);

CREATE TABLE huesped(

    documento VARCHAR(20) PRIMARY KEY,

    nombres VARCHAR(120) NOT NULL,

    apellidos VARCHAR(120) NOT NULL,

    telefono VARCHAR(15),

    correo VARCHAR(120),

    ciudad VARCHAR(80),

    fecha_nacimiento DATE

);

CREATE TABLE reserva(

    codigo_reserva VARCHAR(10) PRIMARY KEY,

    documento_cliente VARCHAR(20)
    REFERENCES huesped(documento),

    codigo_habitacion VARCHAR(10)
    REFERENCES habitacion(codigo_habitacion),

    fecha_reserva DATE NOT NULL,

    fecha_ingreso DATE NOT NULL,

    fecha_salida DATE NOT NULL,

    estado VARCHAR(20)

);

CREATE TABLE factura(

    codigo_factura VARCHAR(10) PRIMARY KEY,

    codigo_reserva VARCHAR(10)
    REFERENCES reserva(codigo_reserva),

    fecha DATE NOT NULL,

    subtotal NUMERIC(10,2),

    iva NUMERIC(10,2),

    total NUMERIC(10,2),

    metodo_pago VARCHAR(30)

);

----------------------------------------------------
-- TABLA EVENTO (Marketing)
----------------------------------------------------

CREATE TABLE evento(

    codigo_evento VARCHAR(10) PRIMARY KEY,

    codigo_hotel VARCHAR(10)
    REFERENCES hotel(codigo_hotel),

    nombre_evento VARCHAR(120) NOT NULL,

    tipo_evento VARCHAR(50),

    fecha_inicio DATE NOT NULL,

    fecha_fin DATE NOT NULL,

    presupuesto NUMERIC(12,2),

    canal_marketing VARCHAR(50),

    descripcion VARCHAR(250),

    estado VARCHAR(20)

);

----------------------------------------------------
-- ÍNDICES
----------------------------------------------------

CREATE INDEX idx_huesped_documento
ON huesped(documento);

CREATE INDEX idx_reserva_fecha
ON reserva(fecha_reserva);

CREATE INDEX idx_factura_fecha
ON factura(fecha);

CREATE INDEX idx_habitacion_estado
ON habitacion(estado);

CREATE INDEX idx_evento_fecha_inicio
ON evento(fecha_inicio);

CREATE INDEX idx_evento_hotel
ON evento(codigo_hotel);