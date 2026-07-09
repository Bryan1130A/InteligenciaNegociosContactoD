SET search_path TO operaciones, public;

-- HOTELES

SELECT *
FROM hotel;

-- TIPOS DE HABITACIÓN

SELECT *
FROM tipo_habitacion;

-- HABITACIONES

SELECT *
FROM habitacion;

-- HUÉSPEDES

SELECT *
FROM huesped;

-- RESERVAS

SELECT *
FROM reserva
ORDER BY fecha_reserva;

-- FACTURAS

SELECT *
FROM factura
ORDER BY fecha;

-- HABITACIONES POR HOTEL

SELECT

h.nombre_oficial,

ha.codigo_habitacion,

th.nombre AS tipo_habitacion,

ha.numero,

ha.piso,

ha.estado

FROM habitacion ha

INNER JOIN hotel h
ON ha.codigo_hotel=h.codigo_hotel

INNER JOIN tipo_habitacion th
ON ha.codigo_tipo=th.codigo_tipo

ORDER BY h.nombre_oficial;

-- RESERVAS

SELECT

r.codigo_reserva,

hu.nombres,

hu.apellidos,

h.nombre_oficial,

ha.numero,

r.fecha_ingreso,

r.fecha_salida,

r.estado

FROM reserva r

INNER JOIN huesped hu
ON r.documento_cliente=hu.documento

INNER JOIN habitacion ha
ON r.codigo_habitacion=ha.codigo_habitacion

INNER JOIN hotel h
ON ha.codigo_hotel=h.codigo_hotel;

-- FACTURAS

SELECT

f.codigo_factura,

hu.nombres,

hu.apellidos,

h.nombre_oficial,

f.fecha,

f.total,

f.metodo_pago

FROM factura f

INNER JOIN reserva r
ON f.codigo_reserva=r.codigo_reserva

INNER JOIN huesped hu
ON r.documento_cliente=hu.documento

INNER JOIN habitacion ha
ON r.codigo_habitacion=ha.codigo_habitacion

INNER JOIN hotel h
ON ha.codigo_hotel=h.codigo_hotel;

-- TOTAL FACTURADO

SELECT

SUM(total) AS total_facturado

FROM factura;

-- PROMEDIO DE FACTURA

SELECT

ROUND(AVG(total),2) AS promedio_factura

FROM factura;

-- RESERVAS POR HOTEL

SELECT

h.nombre_oficial,

COUNT(*) AS total_reservas

FROM reserva r

INNER JOIN habitacion ha
ON r.codigo_habitacion=ha.codigo_habitacion

INNER JOIN hotel h
ON ha.codigo_hotel=h.codigo_hotel

GROUP BY h.nombre_oficial

ORDER BY total_reservas DESC;

-- INGRESOS POR HOTEL

SELECT

h.nombre_oficial,

SUM(f.total) AS ingresos

FROM factura f

INNER JOIN reserva r
ON f.codigo_reserva=r.codigo_reserva

INNER JOIN habitacion ha
ON r.codigo_habitacion=ha.codigo_habitacion

INNER JOIN hotel h
ON ha.codigo_hotel=h.codigo_hotel

GROUP BY h.nombre_oficial

ORDER BY ingresos DESC;

-- RESERVAS POR MES

SELECT

DATE_TRUNC('month',fecha_reserva) AS periodo,

COUNT(*) AS total_reservas

FROM reserva

GROUP BY DATE_TRUNC('month',fecha_reserva)

ORDER BY periodo;

-- INGRESOS POR MES

SELECT

DATE_TRUNC('month',fecha) AS periodo,

SUM(total) AS ingresos

FROM factura

GROUP BY DATE_TRUNC('month',fecha)

ORDER BY periodo;

-- MÉTODOS DE PAGO

SELECT

metodo_pago,

COUNT(*) AS cantidad

FROM factura

GROUP BY metodo_pago;

-- HABITACIONES POR ESTADO

SELECT

estado,

COUNT(*) AS total

FROM habitacion

GROUP BY estado;