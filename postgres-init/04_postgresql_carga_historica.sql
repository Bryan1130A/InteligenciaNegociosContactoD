SET search_path TO operaciones, public;

-- ==========================
-- HOTELES
-- ==========================

SELECT *
FROM hotel;

-- ==========================
-- TIPOS DE HABITACIÓN
-- ==========================

SELECT *
FROM tipo_habitacion;

-- ==========================
-- HABITACIONES
-- ==========================

SELECT *
FROM habitacion;

-- ==========================
-- HUÉSPEDES
-- ==========================

SELECT *
FROM huesped;

-- ==========================
-- RESERVAS
-- ==========================

SELECT *
FROM reserva
ORDER BY fecha_reserva;

-- ==========================
-- FACTURAS
-- ==========================

SELECT *
FROM factura
ORDER BY fecha;

-- ==========================
-- EVENTOS
-- ==========================

SELECT *
FROM evento
ORDER BY fecha_inicio;

-- ==========================
-- HABITACIONES POR HOTEL
-- ==========================

SELECT

h.nombre_oficial,

ha.codigo_habitacion,

th.nombre AS tipo_habitacion,

ha.numero,

ha.piso,

ha.estado

FROM habitacion ha

INNER JOIN hotel h
ON ha.codigo_hotel = h.codigo_hotel

INNER JOIN tipo_habitacion th
ON ha.codigo_tipo = th.codigo_tipo

ORDER BY h.nombre_oficial;

-- ==========================
-- RESERVAS
-- ==========================

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
ON r.documento_cliente = hu.documento

INNER JOIN habitacion ha
ON r.codigo_habitacion = ha.codigo_habitacion

INNER JOIN hotel h
ON ha.codigo_hotel = h.codigo_hotel;

-- ==========================
-- FACTURAS
-- ==========================

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
ON f.codigo_reserva = r.codigo_reserva

INNER JOIN huesped hu
ON r.documento_cliente = hu.documento

INNER JOIN habitacion ha
ON r.codigo_habitacion = ha.codigo_habitacion

INNER JOIN hotel h
ON ha.codigo_hotel = h.codigo_hotel;

-- ==========================
-- EVENTOS POR HOTEL
-- ==========================

SELECT

h.nombre_oficial,

e.codigo_evento,

e.nombre_evento,

e.tipo_evento,

e.fecha_inicio,

e.fecha_fin,

e.presupuesto,

e.canal_marketing,

e.estado

FROM evento e

INNER JOIN hotel h
ON e.codigo_hotel = h.codigo_hotel

ORDER BY h.nombre_oficial;

-- ==========================
-- TOTAL FACTURADO
-- ==========================

SELECT

SUM(total) AS total_facturado

FROM factura;

-- ==========================
-- PROMEDIO DE FACTURA
-- ==========================

SELECT

ROUND(AVG(total),2) AS promedio_factura

FROM factura;

-- ==========================
-- RESERVAS POR HOTEL
-- ==========================

SELECT

h.nombre_oficial,

COUNT(*) AS total_reservas

FROM reserva r

INNER JOIN habitacion ha
ON r.codigo_habitacion = ha.codigo_habitacion

INNER JOIN hotel h
ON ha.codigo_hotel = h.codigo_hotel

GROUP BY h.nombre_oficial

ORDER BY total_reservas DESC;

-- ==========================
-- INGRESOS POR HOTEL
-- ==========================

SELECT

h.nombre_oficial,

SUM(f.total) AS ingresos

FROM factura f

INNER JOIN reserva r
ON f.codigo_reserva = r.codigo_reserva

INNER JOIN habitacion ha
ON r.codigo_habitacion = ha.codigo_habitacion

INNER JOIN hotel h
ON ha.codigo_hotel = h.codigo_hotel

GROUP BY h.nombre_oficial

ORDER BY ingresos DESC;

-- ==========================
-- RESERVAS POR MES
-- ==========================

SELECT

DATE_TRUNC('month',fecha_reserva) AS periodo,

COUNT(*) AS total_reservas

FROM reserva

GROUP BY DATE_TRUNC('month',fecha_reserva)

ORDER BY periodo;

-- ==========================
-- INGRESOS POR MES
-- ==========================

SELECT

DATE_TRUNC('month',fecha) AS periodo,

SUM(total) AS ingresos

FROM factura

GROUP BY DATE_TRUNC('month',fecha)

ORDER BY periodo;

-- ==========================
-- MÉTODOS DE PAGO
-- ==========================

SELECT

metodo_pago,

COUNT(*) AS cantidad

FROM factura

GROUP BY metodo_pago

ORDER BY cantidad DESC;

-- ==========================
-- HABITACIONES POR ESTADO
-- ==========================

SELECT

estado,

COUNT(*) AS total

FROM habitacion

GROUP BY estado

ORDER BY total DESC;

-- ==========================
-- EVENTOS POR TIPO
-- ==========================

SELECT

tipo_evento,

COUNT(*) AS total_eventos

FROM evento

GROUP BY tipo_evento

ORDER BY total_eventos DESC;

-- ==========================
-- EVENTOS POR ESTADO
-- ==========================

SELECT

estado,

COUNT(*) AS cantidad

FROM evento

GROUP BY estado

ORDER BY cantidad DESC;

-- ==========================
-- EVENTOS POR CANAL
-- ==========================

SELECT

canal_marketing,

COUNT(*) AS total_eventos

FROM evento

GROUP BY canal_marketing

ORDER BY total_eventos DESC;

-- ==========================
-- PRESUPUESTO POR HOTEL
-- ==========================

SELECT

h.nombre_oficial,

SUM(e.presupuesto) AS presupuesto_total

FROM evento e

INNER JOIN hotel h
ON e.codigo_hotel = h.codigo_hotel

GROUP BY h.nombre_oficial

ORDER BY presupuesto_total DESC;

-- ==========================
-- PRESUPUESTO POR CANAL
-- ==========================

SELECT

canal_marketing,

SUM(presupuesto) AS presupuesto

FROM evento

GROUP BY canal_marketing

ORDER BY presupuesto DESC;

-- ==========================
-- CANTIDAD DE EVENTOS POR HOTEL
-- ==========================

SELECT

h.nombre_oficial,

COUNT(e.codigo_evento) AS total_eventos

FROM hotel h

INNER JOIN evento e
ON h.codigo_hotel = e.codigo_hotel

GROUP BY h.nombre_oficial

ORDER BY total_eventos DESC;

-- ==========================
-- INGRESOS GENERADOS DURANTE EVENTOS
-- ==========================

SELECT

e.nombre_evento,

SUM(f.total) AS ingresos

FROM evento e

INNER JOIN hotel h
ON e.codigo_hotel = h.codigo_hotel

INNER JOIN habitacion ha
ON ha.codigo_hotel = h.codigo_hotel

INNER JOIN reserva r
ON r.codigo_habitacion = ha.codigo_habitacion

INNER JOIN factura f
ON f.codigo_reserva = r.codigo_reserva

WHERE r.fecha_reserva
BETWEEN e.fecha_inicio AND e.fecha_fin

GROUP BY e.nombre_evento

ORDER BY ingresos DESC;