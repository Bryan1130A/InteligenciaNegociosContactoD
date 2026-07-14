SET search_path TO operaciones, public;

-- ==========================
-- HOTEL
-- ==========================

UPDATE hotel
SET nombre_oficial='Grand Stay La Carolina',
    ciudad='Quito',
    correo='carolina@grandstay.com'
WHERE codigo_hotel='HTL002';

UPDATE hotel
SET nombre_oficial='Grand Stay Guayaquil Norte'
WHERE codigo_hotel='HTL003';

UPDATE hotel
SET nombre_oficial='Grand Stay Cuenca Centro',
    ciudad='Cuenca'
WHERE codigo_hotel='HTL004';

UPDATE hotel
SET nombre_oficial='Grand Stay Manta Beach',
    ciudad='Manta'
WHERE codigo_hotel='HTL005';

UPDATE hotel
SET nombre_oficial='Grand Stay Ambato Plaza',
    ciudad='Ambato'
WHERE codigo_hotel='HTL006';

UPDATE hotel
SET nombre_oficial='Grand Stay Loja Premium',
    ciudad='Loja'
WHERE codigo_hotel='HTL007';

UPDATE hotel
SET nombre_oficial='Grand Stay Salinas Resort',
    ciudad='Salinas'
WHERE codigo_hotel='HTL008';

UPDATE hotel
SET ciudad='Santo Domingo'
WHERE codigo_hotel='HTL010';

-- ==========================
-- HABITACIONES
-- ==========================

UPDATE habitacion
SET estado='OCUPADA'
WHERE codigo_habitacion='HAB002';

UPDATE habitacion
SET estado='DISPONIBLE'
WHERE codigo_habitacion='HAB004';

UPDATE habitacion
SET estado='OCUPADA'
WHERE codigo_habitacion='HAB007';

UPDATE habitacion
SET estado='DISPONIBLE'
WHERE codigo_habitacion='HAB009';

UPDATE habitacion
SET estado='OCUPADA'
WHERE codigo_habitacion='HAB015';

-- ==========================
-- HUÉSPEDES
-- ==========================

UPDATE huesped
SET nombres='José'
WHERE documento='1710000003';

UPDATE huesped
SET nombres='María'
WHERE documento='1710000002';

UPDATE huesped
SET nombres='Mónica'
WHERE documento='1710000020';

UPDATE huesped
SET ciudad='Santo Domingo'
WHERE documento='1710000024';

-- ==========================
-- RESERVAS
-- ==========================

UPDATE reserva
SET estado='FINALIZADA'
WHERE codigo_reserva='RES015';

-- ==========================
-- FACTURAS
-- ==========================

UPDATE factura
SET metodo_pago='EFECTIVO'
WHERE codigo_factura='FAC015';

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