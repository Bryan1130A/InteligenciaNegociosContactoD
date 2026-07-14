USE hotel_gestion;

UPDATE hotel
SET nombre_oficial='Grand Stay La Carolina'
WHERE codigo_hotel='HTL002';

UPDATE hotel
SET ciudad='Quito'
WHERE codigo_hotel='HTL002';

UPDATE hotel
SET correo='carolina@grandstay.com'
WHERE codigo_hotel='HTL002';

UPDATE hotel
SET nombre_oficial='Grand Stay Guayaquil Norte'
WHERE codigo_hotel='HTL003';

UPDATE hotel
SET nombre_oficial='Grand Stay Cuenca Centro'
WHERE codigo_hotel='HTL004';

UPDATE hotel
SET ciudad='Cuenca'
WHERE codigo_hotel='HTL004';

UPDATE hotel
SET nombre_oficial='Grand Stay Manta Beach'
WHERE codigo_hotel='HTL005';

UPDATE hotel
SET ciudad='Manta'
WHERE codigo_hotel='HTL005';

UPDATE hotel
SET nombre_oficial='Grand Stay Ambato Plaza'
WHERE codigo_hotel='HTL006';

UPDATE hotel
SET ciudad='Ambato'
WHERE codigo_hotel='HTL006';

UPDATE hotel
SET nombre_oficial='Grand Stay Loja Premium'
WHERE codigo_hotel='HTL007';

UPDATE hotel
SET ciudad='Loja'
WHERE codigo_hotel='HTL007';

UPDATE hotel
SET nombre_oficial='Grand Stay Salinas Resort'
WHERE codigo_hotel='HTL008';

UPDATE hotel
SET ciudad='Salinas'
WHERE codigo_hotel='HTL008';

UPDATE hotel
SET ciudad='Santo Domingo'
WHERE codigo_hotel='HTL010';

UPDATE temporada
SET nombre='Temporada Alta'
WHERE codigo_temporada='TMP005';

UPDATE temporada
SET nombre='Temporada Baja'
WHERE codigo_temporada='TMP006';

UPDATE temporada
SET nombre='Vacaciones Costa'
WHERE codigo_temporada='TMP007';

UPDATE temporada
SET nombre='Fin de Año'
WHERE codigo_temporada='TMP008';

UPDATE campania
SET nombre='Vacaciones Quito'
WHERE codigo_campania='CAM002';

UPDATE campania
SET estado='ACTIVO'
WHERE codigo_campania='CAM002';

UPDATE campania
SET nombre='Descubre Manta Beach'
WHERE codigo_campania='CAM005';

UPDATE campania
SET nombre='Navidad Ambato'
WHERE codigo_campania='CAM006';

UPDATE campania
SET nombre='Salinas Resort'
WHERE codigo_campania='CAM008';

UPDATE campania
SET estado='ACTIVO'
WHERE codigo_campania='CAM008';

UPDATE encuesta
SET comentario='La recepción demoró mucho.'
WHERE id_encuesta=3;

UPDATE encuesta
SET comentario='Aire acondicionado dañado.'
WHERE id_encuesta=6;

UPDATE encuesta
SET comentario='Muy buen servicio.'
WHERE id_encuesta=8;

UPDATE encuesta
SET comentario='Habitación sucia.'
WHERE id_encuesta=12;

UPDATE encuesta
SET comentario='Pésimo servicio.'
WHERE id_encuesta=15;

-- ==========================
-- EVENTOS
-- ==========================

UPDATE evento
SET presupuesto = 5500.00
WHERE codigo_evento = 'EV001';

UPDATE evento
SET canal_marketing = 'Meta Ads'
WHERE codigo_evento = 'EV002';

UPDATE evento
SET estado = 'FINALIZADO'
WHERE codigo_evento = 'EV003';

UPDATE evento
SET presupuesto = 7000.00
WHERE codigo_evento = 'EV004';

UPDATE evento
SET descripcion = 'Promoción familiar con descuentos del 25%'
WHERE codigo_evento = 'EV005';

UPDATE evento
SET estado = 'ACTIVO'
WHERE codigo_evento = 'EV006';

UPDATE evento
SET canal_marketing = 'Google Ads'
WHERE codigo_evento = 'EV007';

UPDATE evento
SET presupuesto = 6500.00
WHERE codigo_evento = 'EV008';

UPDATE evento
SET estado = 'FINALIZADO'
WHERE codigo_evento = 'EV009';

UPDATE evento
SET presupuesto = 12000.00,
    canal_marketing = 'Facebook e Instagram'
WHERE codigo_evento = 'EV010';