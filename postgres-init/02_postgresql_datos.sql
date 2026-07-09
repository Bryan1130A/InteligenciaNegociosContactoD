SET search_path TO operaciones, public;

INSERT INTO hotel
(codigo_hotel,nombre_oficial,ciudad,direccion,telefono,correo,categoria,activo)
VALUES

('HTL001','Grand Stay Quito Centro','Quito',
'Av. Amazonas N34-120','022345678',
'quito@grandstay.com',5,TRUE),

('HTL002','Gran Stay la carolina','quito',
'Av. Naciones Unidas','022345679',
'CAROLINA@GRANDSTAY.COM',5,TRUE),

('HTL003','Grand Stai Guayaquil Norte','Guayaquil',
'Av. Francisco de Orellana','042876543',
'gye@grandstay.com',5,TRUE),

('HTL004','Grand Stay Cuenka Centro','CUENKA',
'Calle Larga','072334455',
'cuenca@grandstay.com',4,TRUE),

('HTL005','Grnd Stay Manta Beach','Mnta',
'Malecón Escénico','052665544',
'manta@grandstay.com',5,TRUE),

('HTL006','Grand Stay Ambato Plaza','Ambatto',
'Av. Cevallos','032224466',
'ambato@grandstay.com',4,TRUE),

('HTL007','Grand Stay Loja Premiun','L0ja',
'Av. Universitaria','072556677',
'loja@grandstay.com',4,TRUE),

('HTL008','Grand Stay Salina Resort','Salina',
'Malecón de Salinas','042998877',
'salinas@grandstay.com',5,TRUE),

('HTL009','Riobamba Suites','Riobamba',
'Av. Daniel León Borja','032887766',
'riobamba@grandstay.com',4,TRUE),

('HTL010','Grand Stay Sto Domingo','Sto Domingo',
'Av. Quito','022887711',
'sd@grandstay.com',4,TRUE);

INSERT INTO tipo_habitacion
(codigo_tipo,nombre,capacidad,precio_base)
VALUES

('TIP001','Simple',1,45.00),

('TIP002','Doble',2,70.00),

('TIP003','Matrimonial',2,85.00),

('TIP004','Triple',3,110.00),

('TIP005','Familiar',4,150.00),

('TIP006','Junior Suite',2,180.00),

('TIP007','Suite',2,250.00),

('TIP008','Suite Ejecutiva',2,320.00),

('TIP009','Suite Presidencial',4,550.00),

('TIP010','Accesible',2,80.00);

INSERT INTO habitacion
(codigo_habitacion,codigo_hotel,codigo_tipo,numero,piso,estado)
VALUES

('HAB001','HTL001','TIP001','101',1,'DISPONIBLE'),

('HAB002','HTL001','TIP002','102',1,'ocupada'),

('HAB003','HTL001','TIP003','201',2,'DISPONIBLE'),

('HAB004','HTL002','TIP001','101',1,'Disponible'),

('HAB005','HTL002','TIP004','202',2,'MANTENIMIENTO'),

('HAB006','HTL003','TIP002','103',1,'DISPONIBLE'),

('HAB007','HTL003','TIP005','301',3,'ocupada'),

('HAB008','HTL004','TIP003','204',2,'DISPONIBLE'),

('HAB009','HTL005','TIP006','401',4,'Disponible'),

('HAB010','HTL006','TIP007','501',5,'OCUPADA'),

('HAB011','HTL007','TIP008','601',6,'DISPONIBLE'),

('HAB012','HTL008','TIP009','701',7,'OCUPADA'),

('HAB013','HTL009','TIP010','102',1,'Disponible'),

('HAB014','HTL010','TIP002','201',2,'DISPONIBLE'),

('HAB015','HTL010','TIP003','202',2,'ocupada');

INSERT INTO huesped
(documento,nombres,apellidos,telefono,correo,ciudad,fecha_nacimiento)
VALUES

('1723456789','Carlos','Perez','0998765432',
'carlos@gmail.com','Quito','1995-03-15'),

('1711122233','Maria','Lopez','0988877665',
'maria@hotmail.com','Guayaquil','1992-07-21'),

('1755544433','Juan','Rodriguez','0991122334',
'juan@gmail.com','Cuenca','1990-02-18'),

('1700099988','Ana','Gomez','0978877665',
'ana@hotmail.com','Ambato','1998-06-12'),

('1712345678','Pedro','Mendoza','0999988776',
'pedro@gmail.com','Manta','1989-09-30'),

('1766677788','Luis','Ramirez','0966655443',
'luis@hotmail.com','Loja','1994-05-08'),

('1799988877','Carmen','Aguilar','0955544332',
'carmen@gmail.com','Riobamba','1996-01-11'),

('1788877665','Diana','Paredes','0944433221',
'diana@gmail.com','Salinas','1993-08-16'),

('1777766655','Jose','Ortega','0933322110',
'jose@gmail.com','Quito','1991-04-19'),

('1744455566','Andrea','Torres','0922211009',
'andrea@gmail.com','Santo Domingo','1997-12-01'),

('1710101010','Miguel','Castro','0991111111',
'miguel@gmail.com','Ibarra','1994-04-10'),

('1710202020','Paola','Vera','0982222222',
'paola@gmail.com','Latacunga','1995-10-22'),

('1710303030','Fernando','Cruz','0973333333',
'fernando@gmail.com','Quito','1988-06-14'),

('1710404040','Sofia','Morales','0964444444',
'sofia@gmail.com','Cuenca','1999-02-08'),

('1710505050','Diego','Sanchez','0955555555',
'diego@gmail.com','Loja','1993-11-27'),

('1710606060','Gabriela','Espinoza','0946666666',
'gabriela@gmail.com','Manta','1996-09-15'),

('1710707070','Kevin','Flores','0937777777',
'kevin@gmail.com','Ambato','1992-01-05'),

('1710808080','Monica','Benitez','0928888888',
'monica@gmail.com','Esmeraldas','1997-07-13'),

('1710909090','Ricardo','Salazar','0919999999',
'ricardo@gmail.com','Riobamba','1987-05-20'),

('1711111112','Valeria','Herrera','0991234567',
'valeria@gmail.com','Quito','1998-08-09');


INSERT INTO reserva
(codigo_reserva,documento_cliente,codigo_habitacion,fecha_reserva,fecha_ingreso,fecha_salida,estado)
VALUES

('RES001','1723456789','HAB002','2025-01-05','2025-01-10','2025-01-13','FINALIZADA'),

('RES002','1711122233','HAB004','2025-01-12','2025-01-15','2025-01-18','FINALIZADA'),

('RES003','1755544433','HAB007','2025-02-02','2025-02-08','2025-02-11','FINALIZADA'),

('RES004','1700099988','HAB008','2025-02-10','2025-02-15','2025-02-18','FINALIZADA'),

('RES005','1712345678','HAB010','2025-03-01','2025-03-05','2025-03-09','FINALIZADA'),

('RES006','1766677788','HAB011','2025-03-20','2025-03-25','2025-03-30','FINALIZADA'),

('RES007','1799988877','HAB012','2025-04-05','2025-04-08','2025-04-12','FINALIZADA'),

('RES008','1788877665','HAB013','2025-04-18','2025-04-20','2025-04-22','FINALIZADA'),

('RES009','1777766655','HAB014','2025-05-10','2025-05-15','2025-05-18','FINALIZADA'),

('RES010','1744455566','HAB015','2025-06-01','2025-06-05','2025-06-08','FINALIZADA'),

('RES011','1710101010','HAB001','2025-06-10','2025-06-15','2025-06-18','FINALIZADA'),

('RES012','1710202020','HAB003','2025-07-02','2025-07-05','2025-07-09','FINALIZADA'),

('RES013','1710303030','HAB006','2025-07-15','2025-07-20','2025-07-23','FINALIZADA'),

('RES014','1710404040','HAB009','2025-08-03','2025-08-08','2025-08-11','FINALIZADA'),

('RES015','1710505050','HAB005','2025-08-25','2025-08-28','2025-08-31','CANCELADA'),

('RES016','1710606060','HAB002','2025-09-05','2025-09-10','2025-09-13','FINALIZADA'),

('RES017','1710707070','HAB004','2025-09-20','2025-09-23','2025-09-27','FINALIZADA'),

('RES018','1710808080','HAB007','2025-10-02','2025-10-05','2025-10-08','FINALIZADA'),

('RES019','1710909090','HAB010','2025-10-18','2025-10-21','2025-10-25','FINALIZADA'),

('RES020','1711111112','HAB012','2025-11-08','2025-11-12','2025-11-15','FINALIZADA');


INSERT INTO factura
(codigo_factura,codigo_reserva,fecha,subtotal,iva,total,metodo_pago)
VALUES

('FAC001','RES001','2025-01-13',180.00,27.00,207.00,'EFECTIVO'),

('FAC002','RES002','2025-01-18',240.00,36.00,276.00,'TARJETA'),

('FAC003','RES003','2025-02-11',320.00,48.00,368.00,'TRANSFERENCIA'),

('FAC004','RES004','2025-02-18',280.00,42.00,322.00,'EFECTIVO'),

('FAC005','RES005','2025-03-09',650.00,97.50,747.50,'TARJETA'),

('FAC006','RES006','2025-03-30',900.00,135.00,1035.00,'TRANSFERENCIA'),

('FAC007','RES007','2025-04-12',2200.00,330.00,2530.00,'TARJETA'),

('FAC008','RES008','2025-04-22',255.00,38.25,293.25,'EFECTIVO'),

('FAC009','RES009','2025-05-18',420.00,63.00,483.00,'TRANSFERENCIA'),

('FAC010','RES010','2025-06-08',360.00,54.00,414.00,'EFECTIVO'),

('FAC011','RES011','2025-06-18',135.00,20.25,155.25,'EFECTIVO'),

('FAC012','RES012','2025-07-09',240.00,36.00,276.00,'TARJETA'),

('FAC013','RES013','2025-07-23',210.00,31.50,241.50,'TRANSFERENCIA'),

('FAC014','RES014','2025-08-11',720.00,108.00,828.00,'TARJETA'),

('FAC015','RES015','2025-08-28',0.00,0.00,0.00,'ANULADA'),

('FAC016','RES016','2025-09-13',210.00,31.50,241.50,'EFECTIVO'),

('FAC017','RES017','2025-09-27',280.00,42.00,322.00,'TRANSFERENCIA'),

('FAC018','RES018','2025-10-08',600.00,90.00,690.00,'TARJETA'),

('FAC019','RES019','2025-10-25',1000.00,150.00,1150.00,'EFECTIVO'),

('FAC020','RES020','2025-11-15',1650.00,247.50,1897.50,'TRANSFERENCIA');


INSERT INTO hotel
(codigo_hotel,nombre_oficial,ciudad,direccion,telefono,correo,categoria,activo)
VALUES

('HTL021','Sunset Hotel Tulcán','Tulcán',
'Av. Veintimilla','062112255',
'tulcan@sunset.com',4,TRUE),

('HTL022','Imperial Hotel Quevedo','Quevedo',
'Av. Walter Andrade','052334411',
'quevedo@imperial.com',4,TRUE),

('HTL023','River Palace Macas','Macas',
'Av. Amazonas','072998877',
'macas@riverpalace.com',5,TRUE),

('HTL024','Galaxy Hotel El Coca','El Coca',
'Av. Napo','062887766',
'coca@galaxy.com',4,TRUE),

('HTL025','Royal Suites Zamora','Zamora',
'Av. Héroes de Paquisha','072554433',
'zamora@royalsuites.com',5,TRUE),

('HTL026','Mirador Hotel Guaranda','Guaranda',
'Av. Guayaquil','032889911',
'guaranda@mirador.com',3,TRUE),

('HTL027','Costa Azul Bahía','Bahía de Caráquez',
'Malecón','052667788',
'bahia@costaazul.com',4,TRUE),

('HTL028','Luxury Inn Puyo','Puyo',
'Av. Ceslao Marín','032778822',
'puyo@luxuryinn.com',5,TRUE),

('HTL029','Andes View Azogues','Azogues',
'Av. 24 de Mayo','072223344',
'azogues@andesview.com',4,TRUE),

('HTL030','Premium Hotel Santa Elena','Santa Elena',
'Av. Principal','042112233',
'santaelena@premium.com',5,TRUE);

INSERT INTO tipo_habitacion
(codigo_tipo,nombre,capacidad,precio_base)
VALUES

('TIP011','Suite Familiar Plus',5,320.00),

('TIP012','Suite Ejecutiva Plus',3,380.00),

('TIP013','Penthouse',6,650.00),

('TIP014','Villa',8,950.00),

('TIP015','Bungalow',4,420.00);

INSERT INTO habitacion
(codigo_habitacion,codigo_hotel,codigo_tipo,numero,piso,estado)
VALUES

('HAB016','HTL021','TIP011','301',3,'DISPONIBLE'),

('HAB017','HTL022','TIP012','401',4,'OCUPADA'),

('HAB018','HTL023','TIP013','501',5,'DISPONIBLE'),

('HAB019','HTL024','TIP014','601',6,'MANTENIMIENTO'),

('HAB020','HTL025','TIP015','101',1,'DISPONIBLE'),

('HAB021','HTL026','TIP002','102',1,'OCUPADA'),

('HAB022','HTL027','TIP003','201',2,'DISPONIBLE'),

('HAB023','HTL028','TIP004','202',2,'DISPONIBLE'),

('HAB024','HTL029','TIP005','301',3,'OCUPADA'),

('HAB025','HTL030','TIP006','401',4,'DISPONIBLE');


INSERT INTO huesped
(documento,nombres,apellidos,telefono,correo,ciudad,fecha_nacimiento)
VALUES

('1811111111','Cristian','Alvarez','0991112233',
'cristian.alvarez@gmail.com','Tulcán','1991-03-14'),

('1811111112','Daniela','Mora','0987654321',
'daniela.mora@gmail.com','Quevedo','1996-05-20'),

('1811111113','Jorge','Carrillo','0976543210',
'jorge.carrillo@gmail.com','Macas','1989-11-08'),

('1811111114','Katherine','López','0965432109',
'katherine.lopez@gmail.com','El Coca','1998-02-17'),

('1811111115','Mauricio','Silva','0954321098',
'mauricio.silva@gmail.com','Zamora','1993-07-30'),

('1811111116','Patricia','Vega','0943210987',
'patricia.vega@gmail.com','Guaranda','1995-12-10'),

('1811111117','Esteban','Naranjo','0932109876',
'esteban.naranjo@gmail.com','Bahía de Caráquez','1992-06-06'),

('1811111118','Carolina','Benítez','0921098765',
'carolina.benitez@gmail.com','Puyo','1999-09-15'),

('1811111119','Santiago','León','0919988776',
'santiago.leon@gmail.com','Azogues','1994-01-25'),

('1811111120','Verónica','Cedeño','0999988776',
'veronica.cedeno@gmail.com','Santa Elena','1990-08-19'),

('1811111121','Luis','Ponce','0988877665',
'luis.ponce@gmail.com','Quito','1991-04-28'),

('1811111122','Andrea','Quishpe','0977766554',
'andrea.quishpe@gmail.com','Ibarra','1997-10-03'),

('1811111123','Fernando','Tapia','0966655443',
'fernando.tapia@gmail.com','Latacunga','1988-03-11'),

('1811111124','Mónica','Salazar','0955544332',
'monica.salazar@gmail.com','Manta','1996-09-21'),

('1811111125','Diego','Romero','0944433221',
'diego.romero@gmail.com','Loja','1992-05-07'),

('1811111126','Valentina','Castillo','0933322110',
'valentina.castillo@gmail.com','Ambato','1998-12-18'),

('1811111127','Kevin','Navarrete','0922211009',
'kevin.navarrete@gmail.com','Riobamba','1993-07-05'),

('1811111128','Pamela','Rosero','0992233445',
'pamela.rosero@gmail.com','Cuenca','1994-11-23'),

('1811111129','Gabriel','Maldonado','0983344556',
'gabriel.maldonado@gmail.com','Guayaquil','1990-02-12'),

('1811111130','Nicole','Villacís','0974455667',
'nicole.villacis@gmail.com','Esmeraldas','1999-06-27');

INSERT INTO reserva
(codigo_reserva,documento_cliente,codigo_habitacion,fecha_reserva,fecha_ingreso,fecha_salida,estado)
VALUES

('RES021','1811111111','HAB016','2027-01-02','2027-01-05','2027-01-08','FINALIZADA'),

('RES022','1811111112','HAB017','2027-01-10','2027-01-15','2027-01-18','FINALIZADA'),

('RES023','1811111113','HAB018','2027-02-01','2027-02-06','2027-02-10','FINALIZADA'),

('RES024','1811111114','HAB020','2027-02-15','2027-02-20','2027-02-24','FINALIZADA'),

('RES025','1811111115','HAB021','2027-03-01','2027-03-05','2027-03-09','FINALIZADA'),

('RES026','1811111116','HAB022','2027-03-14','2027-03-18','2027-03-22','FINALIZADA'),

('RES027','1811111117','HAB023','2027-04-03','2027-04-07','2027-04-10','FINALIZADA'),

('RES028','1811111118','HAB024','2027-04-15','2027-04-20','2027-04-24','FINALIZADA'),

('RES029','1811111119','HAB025','2027-05-02','2027-05-06','2027-05-10','FINALIZADA'),

('RES030','1811111120','HAB016','2027-05-18','2027-05-22','2027-05-25','FINALIZADA'),

('RES031','1811111121','HAB017','2027-06-01','2027-06-04','2027-06-08','FINALIZADA'),

('RES032','1811111122','HAB018','2027-06-11','2027-06-15','2027-06-19','FINALIZADA'),

('RES033','1811111123','HAB020','2027-07-01','2027-07-05','2027-07-09','FINALIZADA'),

('RES034','1811111124','HAB021','2027-07-13','2027-07-17','2027-07-21','FINALIZADA'),

('RES035','1811111125','HAB022','2027-08-02','2027-08-06','2027-08-09','FINALIZADA'),

('RES036','1811111126','HAB023','2027-08-15','2027-08-19','2027-08-23','FINALIZADA'),

('RES037','1811111127','HAB024','2027-09-03','2027-09-07','2027-09-11','FINALIZADA'),

('RES038','1811111128','HAB025','2027-09-18','2027-09-22','2027-09-25','FINALIZADA'),

('RES039','1811111129','HAB016','2027-10-02','2027-10-06','2027-10-10','FINALIZADA'),

('RES040','1811111130','HAB017','2027-10-20','2027-10-24','2027-10-28','FINALIZADA'),

('RES041','1811111111','HAB018','2027-11-03','2027-11-07','2027-11-10','FINALIZADA'),

('RES042','1811111112','HAB020','2027-11-14','2027-11-18','2027-11-22','FINALIZADA'),

('RES043','1811111113','HAB021','2027-12-02','2027-12-06','2027-12-10','FINALIZADA'),

('RES044','1811111114','HAB022','2027-12-12','2027-12-16','2027-12-20','FINALIZADA'),

('RES045','1811111115','HAB023','2028-01-05','2028-01-09','2028-01-13','FINALIZADA'),

('RES046','1811111116','HAB024','2028-01-18','2028-01-22','2028-01-26','FINALIZADA'),

('RES047','1811111117','HAB025','2028-02-02','2028-02-06','2028-02-10','FINALIZADA'),

('RES048','1811111118','HAB016','2028-02-15','2028-02-19','2028-02-22','FINALIZADA'),

('RES049','1811111119','HAB017','2028-03-03','2028-03-07','2028-03-11','FINALIZADA'),

('RES050','1811111120','HAB018','2028-03-16','2028-03-20','2028-03-24','FINALIZADA');

INSERT INTO factura
(codigo_factura,codigo_reserva,fecha,subtotal,iva,total,metodo_pago)
VALUES

('FAC021','RES021','2027-01-08',420.00,63.00,483.00,'TARJETA'),

('FAC022','RES022','2027-01-18',680.00,102.00,782.00,'TRANSFERENCIA'),

('FAC023','RES023','2027-02-10',1200.00,180.00,1380.00,'TARJETA'),

('FAC024','RES024','2027-02-24',850.00,127.50,977.50,'EFECTIVO'),

('FAC025','RES025','2027-03-09',510.00,76.50,586.50,'TRANSFERENCIA'),

('FAC026','RES026','2027-03-22',760.00,114.00,874.00,'TARJETA'),

('FAC027','RES027','2027-04-10',940.00,141.00,1081.00,'EFECTIVO'),

('FAC028','RES028','2027-04-24',890.00,133.50,1023.50,'TRANSFERENCIA'),

('FAC029','RES029','2027-05-10',630.00,94.50,724.50,'TARJETA'),

('FAC030','RES030','2027-05-25',470.00,70.50,540.50,'EFECTIVO'),

('FAC031','RES031','2027-06-08',720.00,108.00,828.00,'TRANSFERENCIA'),

('FAC032','RES032','2027-06-19',1180.00,177.00,1357.00,'TARJETA'),

('FAC033','RES033','2027-07-09',540.00,81.00,621.00,'EFECTIVO'),

('FAC034','RES034','2027-07-21',690.00,103.50,793.50,'TRANSFERENCIA'),

('FAC035','RES035','2027-08-09',610.00,91.50,701.50,'TARJETA'),

('FAC036','RES036','2027-08-23',980.00,147.00,1127.00,'EFECTIVO'),

('FAC037','RES037','2027-09-11',860.00,129.00,989.00,'TRANSFERENCIA'),

('FAC038','RES038','2027-09-25',590.00,88.50,678.50,'TARJETA'),

('FAC039','RES039','2027-10-10',440.00,66.00,506.00,'EFECTIVO'),

('FAC040','RES040','2027-10-28',760.00,114.00,874.00,'TRANSFERENCIA'),

('FAC041','RES041','2027-11-10',1240.00,186.00,1426.00,'TARJETA'),

('FAC042','RES042','2027-11-22',830.00,124.50,954.50,'EFECTIVO'),

('FAC043','RES043','2027-12-10',650.00,97.50,747.50,'TRANSFERENCIA'),

('FAC044','RES044','2027-12-20',780.00,117.00,897.00,'TARJETA'),

('FAC045','RES045','2028-01-13',920.00,138.00,1058.00,'EFECTIVO'),

('FAC046','RES046','2028-01-26',880.00,132.00,1012.00,'TRANSFERENCIA'),

('FAC047','RES047','2028-02-10',710.00,106.50,816.50,'TARJETA'),

('FAC048','RES048','2028-02-22',560.00,84.00,644.00,'EFECTIVO'),

('FAC049','RES049','2028-03-11',790.00,118.50,908.50,'TRANSFERENCIA'),

('FAC050','RES050','2028-03-24',1320.00,198.00,1518.00,'TARJETA');

INSERT INTO habitacion
(codigo_habitacion,codigo_hotel,codigo_tipo,numero,piso,estado)
VALUES

('HAB026','HTL001','TIP001','102',1,'DISPONIBLE'),

('HAB027','HTL002','TIP002','103',1,'OCUPADA'),

('HAB028','HTL003','TIP003','201',2,'DISPONIBLE'),

('HAB029','HTL004','TIP004','202',2,'DISPONIBLE'),

('HAB030','HTL005','TIP005','301',3,'MANTENIMIENTO'),

('HAB031','HTL006','TIP006','302',3,'DISPONIBLE'),

('HAB032','HTL007','TIP007','401',4,'OCUPADA'),

('HAB033','HTL008','TIP008','402',4,'DISPONIBLE'),

('HAB034','HTL009','TIP009','501',5,'DISPONIBLE'),

('HAB035','HTL010','TIP010','502',5,'OCUPADA'),

('HAB036','HTL011','TIP011','103',1,'DISPONIBLE'),

('HAB037','HTL012','TIP012','203',2,'DISPONIBLE'),

('HAB038','HTL013','TIP013','303',3,'OCUPADA'),

('HAB039','HTL014','TIP014','403',4,'DISPONIBLE'),

('HAB040','HTL015','TIP015','503',5,'DISPONIBLE'),

('HAB041','HTL016','TIP001','104',1,'OCUPADA'),

('HAB042','HTL017','TIP002','204',2,'DISPONIBLE'),

('HAB043','HTL018','TIP003','304',3,'DISPONIBLE'),

('HAB044','HTL019','TIP004','404',4,'MANTENIMIENTO'),

('HAB045','HTL020','TIP005','504',5,'DISPONIBLE'),

('HAB046','HTL021','TIP006','105',1,'OCUPADA'),

('HAB047','HTL022','TIP007','205',2,'DISPONIBLE'),

('HAB048','HTL023','TIP008','305',3,'DISPONIBLE'),

('HAB049','HTL024','TIP009','405',4,'OCUPADA'),

('HAB050','HTL025','TIP010','505',5,'DISPONIBLE');


INSERT INTO huesped
(documento,nombres,apellidos,telefono,correo,ciudad,fecha_nacimiento)
VALUES

('1811111131','Adrián','Guerrero','0991113001','adrian.guerrero@gmail.com','Quito','1992-01-12'),

('1811111132','Belén','Muñoz','0991113002','belen.munoz@gmail.com','Cuenca','1995-04-18'),

('1811111133','César','Paredes','0991113003','cesar.paredes@gmail.com','Loja','1991-07-09'),

('1811111134','Dayana','Cruz','0991113004','dayana.cruz@gmail.com','Manta','1998-02-25'),

('1811111135','Edgar','Villacís','0991113005','edgar.villacis@gmail.com','Ibarra','1989-11-03'),

('1811111136','Fernanda','Mendoza','0991113006','fernanda.mendoza@gmail.com','Tulcán','1994-09-17'),

('1811111137','Gonzalo','Paz','0991113007','gonzalo.paz@gmail.com','Riobamba','1993-06-10'),

('1811111138','Helen','Sánchez','0991113008','helen.sanchez@gmail.com','Esmeraldas','1997-12-30'),

('1811111139','Iván','Ortega','0991113009','ivan.ortega@gmail.com','Ambato','1990-05-14'),

('1811111140','Jessica','León','0991113010','jessica.leon@gmail.com','Machala','1996-10-08'),

('1811111141','Kevin','Rojas','0991113011','kevin.rojas@gmail.com','Azogues','1993-03-27'),

('1811111142','Lorena','Cárdenas','0991113012','lorena.cardenas@gmail.com','Puyo','1998-08-21'),

('1811111143','Manuel','Salinas','0991113013','manuel.salinas@gmail.com','Guaranda','1992-12-12'),

('1811111144','Natalia','Bravo','0991113014','natalia.bravo@gmail.com','Quevedo','1995-02-15'),

('1811111145','Oscar','López','0991113015','oscar.lopez@gmail.com','Macas','1991-09-09'),

('1811111146','Paula','Suárez','0991113016','paula.suarez@gmail.com','Tena','1999-01-06'),

('1811111147','Renato','Valencia','0991113017','renato.valencia@gmail.com','Otavalo','1988-06-18'),

('1811111148','Silvia','Guamán','0991113018','silvia.guaman@gmail.com','Latacunga','1997-05-05'),

('1811111149','Tomás','Espinoza','0991113019','tomas.espinoza@gmail.com','Baños','1994-11-29'),

('1811111150','Úrsula','Quintero','0991113020','ursula.quintero@gmail.com','Playas','1996-04-02'),

('1811111151','Víctor','Santana','0991113021','victor.santana@gmail.com','Santa Elena','1993-08-13'),

('1811111152','Wendy','Aguirre','0991113022','wendy.aguirre@gmail.com','El Coca','1998-03-20'),

('1811111153','Xavier','Mora','0991113023','xavier.mora@gmail.com','Zamora','1990-10-11'),

('1811111154','Yadira','Pinto','0991113024','yadira.pinto@gmail.com','Bahía de Caráquez','1995-07-01'),

('1811111155','Zamir','Carrera','0991113025','zamir.carrera@gmail.com','Tulcán','1991-12-19'),

('1811111156','Alison','Peralta','0991113026','alison.peralta@gmail.com','Quito','1997-09-15'),

('1811111157','Brayan','Vargas','0991113027','brayan.vargas@gmail.com','Guayaquil','1994-01-28'),

('1811111158','Camila','Núñez','0991113028','camila.nunez@gmail.com','Cuenca','1998-06-09'),

('1811111159','David','Rosero','0991113029','david.rosero@gmail.com','Ibarra','1992-03-04'),

('1811111160','Erika','Flores','0991113030','erika.flores@gmail.com','Loja','1996-10-22'),

('1811111161','Fabricio','Benítez','0991113031','fabricio.benitez@gmail.com','Manta','1993-05-17'),

('1811111162','Gabriela','Herrera','0991113032','gabriela.herrera@gmail.com','Machala','1995-08-28'),

('1811111163','Hugo','Rentería','0991113033','hugo.renteria@gmail.com','Riobamba','1990-02-08'),

('1811111164','Ingrid','Peña','0991113034','ingrid.pena@gmail.com','Esmeraldas','1999-04-16'),

('1811111165','Jonathan','Correa','0991113035','jonathan.correa@gmail.com','Puyo','1992-07-30'),

('1811111166','Karen','Yánez','0991113036','karen.yanez@gmail.com','Latacunga','1997-01-14'),

('1811111167','Leonardo','Arias','0991113037','leonardo.arias@gmail.com','Otavalo','1991-11-25'),

('1811111168','Melissa','Ramos','0991113038','melissa.ramos@gmail.com','Ambato','1998-09-07'),

('1811111169','Nicolás','Cedeño','0991113039','nicolas.cedeno@gmail.com','Santa Elena','1993-12-03'),

('1811111170','Olga','Medina','0991113040','olga.medina@gmail.com','Quevedo','1995-06-26');

INSERT INTO reserva
(codigo_reserva,documento_cliente,codigo_habitacion,fecha_reserva,fecha_ingreso,fecha_salida,estado)
VALUES

('RES051','1811111131','HAB026','2028-04-02','2028-04-05','2028-04-08','FINALIZADA'),

('RES052','1811111132','HAB027','2028-04-06','2028-04-10','2028-04-13','FINALIZADA'),

('RES053','1811111133','HAB028','2028-04-12','2028-04-15','2028-04-19','FINALIZADA'),

('RES054','1811111134','HAB029','2028-04-18','2028-04-21','2028-04-25','FINALIZADA'),

('RES055','1811111135','HAB031','2028-05-01','2028-05-04','2028-05-08','FINALIZADA'),

('RES056','1811111136','HAB032','2028-05-06','2028-05-10','2028-05-14','FINALIZADA'),

('RES057','1811111137','HAB033','2028-05-15','2028-05-18','2028-05-22','FINALIZADA'),

('RES058','1811111138','HAB034','2028-05-22','2028-05-25','2028-05-29','FINALIZADA'),

('RES059','1811111139','HAB035','2028-06-02','2028-06-05','2028-06-09','FINALIZADA'),

('RES060','1811111140','HAB036','2028-06-08','2028-06-11','2028-06-15','FINALIZADA'),

('RES061','1811111141','HAB037','2028-06-18','2028-06-21','2028-06-24','FINALIZADA'),

('RES062','1811111142','HAB038','2028-07-01','2028-07-04','2028-07-08','FINALIZADA'),

('RES063','1811111143','HAB039','2028-07-09','2028-07-12','2028-07-16','FINALIZADA'),

('RES064','1811111144','HAB040','2028-07-18','2028-07-21','2028-07-25','FINALIZADA'),

('RES065','1811111145','HAB041','2028-08-01','2028-08-04','2028-08-07','FINALIZADA'),

('RES066','1811111146','HAB042','2028-08-06','2028-08-09','2028-08-13','FINALIZADA'),

('RES067','1811111147','HAB043','2028-08-14','2028-08-17','2028-08-21','FINALIZADA'),

('RES068','1811111148','HAB044','2028-08-22','2028-08-25','2028-08-29','FINALIZADA'),

('RES069','1811111149','HAB045','2028-09-02','2028-09-05','2028-09-09','FINALIZADA'),

('RES070','1811111150','HAB046','2028-09-08','2028-09-11','2028-09-15','FINALIZADA'),

('RES071','1811111151','HAB047','2028-09-18','2028-09-21','2028-09-24','FINALIZADA'),

('RES072','1811111152','HAB048','2028-10-01','2028-10-04','2028-10-08','FINALIZADA'),

('RES073','1811111153','HAB049','2028-10-10','2028-10-13','2028-10-17','FINALIZADA'),

('RES074','1811111154','HAB050','2028-10-18','2028-10-21','2028-10-25','FINALIZADA'),

('RES075','1811111155','HAB026','2028-11-02','2028-11-05','2028-11-09','FINALIZADA'),

('RES076','1811111156','HAB027','2028-11-10','2028-11-13','2028-11-17','FINALIZADA'),

('RES077','1811111157','HAB028','2028-11-18','2028-11-21','2028-11-25','FINALIZADA'),

('RES078','1811111158','HAB029','2028-12-01','2028-12-04','2028-12-08','FINALIZADA'),

('RES079','1811111159','HAB031','2028-12-10','2028-12-13','2028-12-17','FINALIZADA'),

('RES080','1811111160','HAB032','2028-12-18','2028-12-21','2028-12-25','FINALIZADA');


INSERT INTO factura
(codigo_factura,codigo_reserva,fecha,subtotal,iva,total,metodo_pago)
VALUES

('FAC051','RES051','2028-04-08',580.00,87.00,667.00,'TARJETA'),

('FAC052','RES052','2028-04-13',720.00,108.00,828.00,'EFECTIVO'),

('FAC053','RES053','2028-04-19',1340.00,201.00,1541.00,'TRANSFERENCIA'),

('FAC054','RES054','2028-04-25',910.00,136.50,1046.50,'TARJETA'),

('FAC055','RES055','2028-05-08',640.00,96.00,736.00,'EFECTIVO'),

('FAC056','RES056','2028-05-14',790.00,118.50,908.50,'TRANSFERENCIA'),

('FAC057','RES057','2028-05-22',960.00,144.00,1104.00,'TARJETA'),

('FAC058','RES058','2028-05-29',820.00,123.00,943.00,'EFECTIVO'),

('FAC059','RES059','2028-06-09',710.00,106.50,816.50,'TRANSFERENCIA'),

('FAC060','RES060','2028-06-15',880.00,132.00,1012.00,'TARJETA'),

('FAC061','RES061','2028-06-24',760.00,114.00,874.00,'EFECTIVO'),

('FAC062','RES062','2028-07-08',1450.00,217.50,1667.50,'TRANSFERENCIA'),

('FAC063','RES063','2028-07-16',930.00,139.50,1069.50,'TARJETA'),

('FAC064','RES064','2028-07-25',840.00,126.00,966.00,'EFECTIVO'),

('FAC065','RES065','2028-08-07',620.00,93.00,713.00,'TRANSFERENCIA'),

('FAC066','RES066','2028-08-13',770.00,115.50,885.50,'TARJETA'),

('FAC067','RES067','2028-08-21',980.00,147.00,1127.00,'EFECTIVO'),

('FAC068','RES068','2028-08-29',890.00,133.50,1023.50,'TRANSFERENCIA'),

('FAC069','RES069','2028-09-09',760.00,114.00,874.00,'TARJETA'),

('FAC070','RES070','2028-09-15',950.00,142.50,1092.50,'EFECTIVO'),

('FAC071','RES071','2028-09-24',810.00,121.50,931.50,'TRANSFERENCIA'),

('FAC072','RES072','2028-10-08',920.00,138.00,1058.00,'TARJETA'),

('FAC073','RES073','2028-10-17',870.00,130.50,1000.50,'EFECTIVO'),

('FAC074','RES074','2028-10-25',990.00,148.50,1138.50,'TRANSFERENCIA'),

('FAC075','RES075','2028-11-09',640.00,96.00,736.00,'TARJETA'),

('FAC076','RES076','2028-11-17',730.00,109.50,839.50,'EFECTIVO'),

('FAC077','RES077','2028-11-25',1260.00,189.00,1449.00,'TRANSFERENCIA'),

('FAC078','RES078','2028-12-08',910.00,136.50,1046.50,'TARJETA'),

('FAC079','RES079','2028-12-17',780.00,117.00,897.00,'EFECTIVO'),

('FAC080','RES080','2028-12-25',850.00,127.50,977.50,'TRANSFERENCIA');