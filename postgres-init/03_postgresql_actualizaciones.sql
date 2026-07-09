SET search_path TO operaciones, public;

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

UPDATE huesped
SET nombres='José'
WHERE documento='1777766655';

UPDATE huesped
SET nombres='María'
WHERE documento='1711122233';

UPDATE huesped
SET nombres='Mónica'
WHERE documento='1710808080';

UPDATE huesped
SET ciudad='Santo Domingo'
WHERE documento='1744455566';

UPDATE reserva
SET estado='FINALIZADA'
WHERE codigo_reserva='RES015';

UPDATE factura
SET metodo_pago='EFECTIVO'
WHERE codigo_factura='FAC015';