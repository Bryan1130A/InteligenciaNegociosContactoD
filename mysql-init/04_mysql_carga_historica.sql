USE hotel_gestion;

-- HOTELES

SELECT *
FROM hotel;

-- TEMPORADAS

SELECT *
FROM temporada;

-- METAS MENSUALES

SELECT
codigo_hotel,
periodo,
meta_ingresos,
meta_ocupacion
FROM meta_mensual
ORDER BY periodo;

-- PRESUPUESTOS

SELECT *
FROM presupuesto
ORDER BY periodo;

-- CAMPAÑAS

SELECT
c.codigo_campania,
h.nombre_oficial,
t.nombre AS temporada,
c.nombre,
c.fecha_inicio,
c.fecha_fin,
c.presupuesto,
c.estado
FROM campania c
INNER JOIN hotel h
ON c.codigo_hotel=h.codigo_hotel
INNER JOIN temporada t
ON c.codigo_temporada=t.codigo_temporada;

-- ENCUESTAS

SELECT
h.nombre_oficial,
e.fecha,
e.documento_cliente,
e.puntuacion,
e.tiempo_espera_minutos,
e.comentario
FROM encuesta e
INNER JOIN hotel h
ON e.codigo_hotel=h.codigo_hotel;

-- PROMEDIO DE SATISFACCIÓN

SELECT
ROUND(AVG(puntuacion),2) AS promedio_satisfaccion
FROM encuesta;

-- META DE INGRESOS POR AÑO

SELECT
YEAR(periodo) AS anio,
SUM(meta_ingresos) AS meta_total
FROM meta_mensual
GROUP BY YEAR(periodo);

-- PRESUPUESTO POR HOTEL

SELECT
h.nombre_oficial,
SUM(p.presupuesto_operativo) AS operativo,
SUM(p.presupuesto_marketing) AS marketing,
SUM(p.presupuesto_mantenimiento) AS mantenimiento
FROM presupuesto p
INNER JOIN hotel h
ON p.codigo_hotel=h.codigo_hotel
GROUP BY h.nombre_oficial;

-- CAMPAÑAS ACTIVAS

SELECT *
FROM campania
WHERE estado='ACTIVO';

-- PROMEDIO TIEMPO DE ESPERA

SELECT
ROUND(AVG(tiempo_espera_minutos),2) AS promedio_espera
FROM encuesta;