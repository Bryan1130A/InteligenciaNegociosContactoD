SET search_path TO operaciones, public;

INSERT INTO hotel
(codigo_hotel,nombre_oficial,ciudad,direccion,telefono,correo,categoria,activo)
VALUES

('HTL001','Grand Stay Quito Centro','Quito',
'Av. Amazonas N34-120','022345678',
'quito@grandstay.com',5,TRUE),

('HTL002','Grand Stay La Carolina','Quito',
'Av. Naciones Unidas','022345679',
'carolina@grandstay.com',5,TRUE),

('HTL003','Grand Stay Guayaquil Norte','Guayaquil',
'Av. Francisco de Orellana','042876543',
'gye@grandstay.com',5,TRUE),

('HTL004','Grand Stay Cuenca Centro','Cuenca',
'Calle Larga','072334455',
'cuenca@grandstay.com',4,TRUE),

('HTL005','Grand Stay Manta Beach','Manta',
'Malecón Escénico','052665544',
'manta@grandstay.com',5,TRUE),

('HTL006','Grand Stay Ambato Plaza','Ambato',
'Av. Cevallos','032224466',
'ambato@grandstay.com',4,TRUE),

('HTL007','Grand Stay Loja Premium','Loja',
'Av. Universitaria','072556677',
'loja@grandstay.com',4,TRUE),

('HTL008','Grand Stay Salinas Resort','Salinas',
'Malecón de Salinas','042998877',
'salinas@grandstay.com',5,TRUE),

('HTL009','Riobamba Suites','Riobamba',
'Av. Daniel León Borja','032887766',
'riobamba@grandstay.com',4,TRUE),

('HTL010','Grand Stay Santo Domingo','Santo Domingo',
'Av. Quito','022887711',
'sd@grandstay.com',4,TRUE),

('HTL011','Ocean Blue Esmeraldas','Esmeraldas',
'Malecón Las Palmas','062334455',
'esmeraldas@oceanblue.com',4,TRUE),

('HTL012','Amazon River Lodge','Tena',
'Av. Jumandy','062998877',
'tena@amazonriver.com',5,TRUE),

('HTL013','Andes Palace Ibarra','Ibarra',
'Av. Mariano Acosta','062112233',
'ibarra@andespalace.com',4,TRUE),

('HTL014','Laguna Hotel Otavalo','Otavalo',
'Calle Bolívar','062445566',
'otavalo@lagunahotel.com',3,TRUE),

('HTL015','Cloud Forest Lodge','Mindo',
'Vía Mindo','022556677',
'mindo@cloudforest.com',5,TRUE),

('HTL016','Royal Garden Latacunga','Latacunga',
'Av. Eloy Alfaro','032778899',
'latacunga@royalgarden.com',4,TRUE),

('HTL017','Volcano Resort Baños','Baños',
'Av. Amazonas','032445566',
'banios@volcanoresort.com',5,TRUE),

('HTL018','Pacific Dreams Atacames','Atacames',
'Malecón Central','062667788',
'atacames@pacificdreams.com',4,TRUE),

('HTL019','Costa del Sol Playas','Playas',
'Av. Jaime Roldós','042334455',
'playas@costadelsol.com',4,TRUE),

('HTL020','Golden Plaza Machala','Machala',
'Av. 25 de Junio','072998811',
'machala@goldenplaza.com',5,TRUE),

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


SET search_path TO operaciones, public;

INSERT INTO tipo_habitacion
(codigo_tipo,nombre,capacidad,precio_base)
VALUES

('TIP001','Individual',1,45.00),
('TIP002','Doble',2,75.00),
('TIP003','Matrimonial',2,90.00),
('TIP004','Triple',3,120.00),
('TIP005','Familiar',4,160.00),
('TIP006','Suite Junior',2,180.00),
('TIP007','Suite Ejecutiva',2,220.00),
('TIP008','Suite Presidencial',4,450.00),
('TIP009','Deluxe',2,150.00),
('TIP010','Premium',2,200.00);


SET search_path TO operaciones, public;

INSERT INTO habitacion
(codigo_habitacion,codigo_hotel,codigo_tipo,numero,piso,estado)
VALUES

('HAB001','HTL001','TIP001','101',1,'DISPONIBLE'),
('HAB002','HTL002','TIP002','102',1,'OCUPADA'),
('HAB003','HTL003','TIP003','201',2,'DISPONIBLE'),
('HAB004','HTL004','TIP004','202',2,'DISPONIBLE'),
('HAB005','HTL005','TIP005','301',3,'MANTENIMIENTO'),
('HAB006','HTL006','TIP006','302',3,'DISPONIBLE'),
('HAB007','HTL007','TIP007','401',4,'OCUPADA'),
('HAB008','HTL008','TIP008','402',4,'DISPONIBLE'),
('HAB009','HTL009','TIP009','501',5,'DISPONIBLE'),
('HAB010','HTL010','TIP010','502',5,'OCUPADA'),

('HAB011','HTL011','TIP001','101',1,'DISPONIBLE'),
('HAB012','HTL012','TIP002','102',1,'DISPONIBLE'),
('HAB013','HTL013','TIP003','201',2,'OCUPADA'),
('HAB014','HTL014','TIP004','202',2,'DISPONIBLE'),
('HAB015','HTL015','TIP005','301',3,'DISPONIBLE'),
('HAB016','HTL016','TIP006','302',3,'DISPONIBLE'),
('HAB017','HTL017','TIP007','401',4,'OCUPADA'),
('HAB018','HTL018','TIP008','402',4,'DISPONIBLE'),
('HAB019','HTL019','TIP009','501',5,'DISPONIBLE'),
('HAB020','HTL020','TIP010','502',5,'OCUPADA'),

('HAB021','HTL021','TIP001','103',1,'DISPONIBLE'),
('HAB022','HTL022','TIP002','104',1,'OCUPADA'),
('HAB023','HTL023','TIP003','203',2,'DISPONIBLE'),
('HAB024','HTL024','TIP004','204',2,'DISPONIBLE'),
('HAB025','HTL025','TIP005','303',3,'MANTENIMIENTO'),
('HAB026','HTL026','TIP006','304',3,'DISPONIBLE'),
('HAB027','HTL027','TIP007','403',4,'OCUPADA'),
('HAB028','HTL028','TIP008','404',4,'DISPONIBLE'),
('HAB029','HTL029','TIP009','503',5,'DISPONIBLE'),
('HAB030','HTL030','TIP010','504',5,'OCUPADA'),

('HAB031','HTL001','TIP002','105',1,'DISPONIBLE'),
('HAB032','HTL002','TIP003','205',2,'DISPONIBLE'),
('HAB033','HTL003','TIP004','305',3,'OCUPADA'),
('HAB034','HTL004','TIP005','405',4,'DISPONIBLE'),
('HAB035','HTL005','TIP006','505',5,'DISPONIBLE'),
('HAB036','HTL006','TIP007','106',1,'OCUPADA'),
('HAB037','HTL007','TIP008','206',2,'DISPONIBLE'),
('HAB038','HTL008','TIP009','306',3,'DISPONIBLE'),
('HAB039','HTL009','TIP010','406',4,'OCUPADA'),
('HAB040','HTL010','TIP001','506',5,'DISPONIBLE'),

('HAB041','HTL011','TIP002','107',1,'DISPONIBLE'),
('HAB042','HTL012','TIP003','207',2,'OCUPADA'),
('HAB043','HTL013','TIP004','307',3,'DISPONIBLE'),
('HAB044','HTL014','TIP005','407',4,'DISPONIBLE'),
('HAB045','HTL015','TIP006','507',5,'OCUPADA'),
('HAB046','HTL016','TIP007','108',1,'DISPONIBLE'),
('HAB047','HTL017','TIP008','208',2,'DISPONIBLE'),
('HAB048','HTL018','TIP009','308',3,'OCUPADA'),
('HAB049','HTL019','TIP010','408',4,'DISPONIBLE'),
('HAB050','HTL020','TIP001','508',5,'DISPONIBLE');


SET search_path TO operaciones, public;

INSERT INTO huesped
(documento,nombres,apellidos,telefono,correo,ciudad,fecha_nacimiento)
VALUES

('1710000001','Carlos','Pérez','0991110001','carlos.perez@gmail.com','Quito','1990-02-15'),
('1710000002','María','Gómez','0991110002','maria.gomez@gmail.com','Guayaquil','1992-06-18'),
('1710000003','José','López','0991110003','jose.lopez@gmail.com','Cuenca','1988-09-10'),
('1710000004','Ana','Torres','0991110004','ana.torres@gmail.com','Manta','1995-01-22'),
('1710000005','Luis','Vera','0991110005','luis.vera@gmail.com','Loja','1991-04-08'),
('1710000006','Sofía','Castro','0991110006','sofia.castro@gmail.com','Ambato','1996-12-11'),
('1710000007','Miguel','Romero','0991110007','miguel.romero@gmail.com','Riobamba','1989-07-30'),
('1710000008','Valeria','Flores','0991110008','valeria.flores@gmail.com','Salinas','1998-08-05'),
('1710000009','Andrés','Morales','0991110009','andres.morales@gmail.com','Tulcán','1993-05-16'),
('1710000010','Paula','León','0991110010','paula.leon@gmail.com','Quevedo','1994-10-19'),

('1710000011','Cristian','Mendoza','0991110011','cristian@gmail.com','Macas','1990-01-14'),
('1710000012','Daniela','Benítez','0991110012','daniela@gmail.com','El Coca','1997-03-22'),
('1710000013','Fernando','Silva','0991110013','fernando@gmail.com','Zamora','1992-07-18'),
('1710000014','Gabriela','Rojas','0991110014','gabriela@gmail.com','Guaranda','1995-11-02'),
('1710000015','Henry','Núñez','0991110015','henry@gmail.com','Puyo','1988-04-26'),
('1710000016','Isabel','Ortiz','0991110016','isabel@gmail.com','Azogues','1996-06-13'),
('1710000017','Jorge','Herrera','0991110017','jorge@gmail.com','Santa Elena','1991-08-30'),
('1710000018','Karen','Vargas','0991110018','karen@gmail.com','Ibarra','1999-02-01'),
('1710000019','Leonardo','Guamán','0991110019','leo@gmail.com','Otavalo','1993-09-17'),
('1710000020','Mónica','Cevallos','0991110020','monica@gmail.com','Latacunga','1994-12-28'),

('1710000021','Nicolás','Arias','0991110021','nicolas@gmail.com','Baños','1990-10-20'),
('1710000022','Olga','Suárez','0991110022','olga@gmail.com','Playas','1992-01-09'),
('1710000023','Patricio','Salazar','0991110023','patricio@gmail.com','Machala','1987-05-05'),
('1710000024','Rosa','Medina','0991110024','rosa@gmail.com','Esmeraldas','1996-07-14'),
('1710000025','Samuel','Paredes','0991110025','samuel@gmail.com','Tena','1991-11-08'),
('1710000026','Tatiana','Correa','0991110026','tatiana@gmail.com','Tulcán','1995-04-19'),
('1710000027','Ulises','Navarro','0991110027','ulises@gmail.com','Quito','1989-06-01'),
('1710000028','Verónica','Cruz','0991110028','veronica@gmail.com','Guayaquil','1997-08-12'),
('1710000029','William','Mora','0991110029','william@gmail.com','Cuenca','1993-03-25'),
('1710000030','Ximena','Espinoza','0991110030','ximena@gmail.com','Manta','1998-09-06');


SET search_path TO operaciones, public;

INSERT INTO reserva
(codigo_reserva,documento_cliente,codigo_habitacion,fecha_reserva,fecha_ingreso,fecha_salida,estado)
VALUES

('RES001','1710000001','HAB001','2028-01-02','2028-01-05','2028-01-08','FINALIZADA'),
('RES002','1710000002','HAB002','2028-01-06','2028-01-10','2028-01-13','FINALIZADA'),
('RES003','1710000003','HAB003','2028-01-12','2028-01-15','2028-01-19','FINALIZADA'),
('RES004','1710000004','HAB004','2028-01-18','2028-01-21','2028-01-24','FINALIZADA'),
('RES005','1710000005','HAB005','2028-02-01','2028-02-04','2028-02-08','FINALIZADA'),
('RES006','1710000006','HAB006','2028-02-06','2028-02-10','2028-02-13','FINALIZADA'),
('RES007','1710000007','HAB007','2028-02-12','2028-02-15','2028-02-19','FINALIZADA'),
('RES008','1710000008','HAB008','2028-02-18','2028-02-21','2028-02-24','FINALIZADA'),
('RES009','1710000009','HAB009','2028-03-02','2028-03-05','2028-03-09','FINALIZADA'),
('RES010','1710000010','HAB010','2028-03-08','2028-03-11','2028-03-15','FINALIZADA'),

('RES011','1710000011','HAB011','2028-03-14','2028-03-17','2028-03-20','FINALIZADA'),
('RES012','1710000012','HAB012','2028-03-20','2028-03-23','2028-03-27','FINALIZADA'),
('RES013','1710000013','HAB013','2028-04-01','2028-04-04','2028-04-08','FINALIZADA'),
('RES014','1710000014','HAB014','2028-04-07','2028-04-10','2028-04-13','FINALIZADA'),
('RES015','1710000015','HAB015','2028-04-13','2028-04-16','2028-04-20','FINALIZADA'),
('RES016','1710000016','HAB016','2028-04-19','2028-04-22','2028-04-26','FINALIZADA'),
('RES017','1710000017','HAB017','2028-05-02','2028-05-05','2028-05-08','FINALIZADA'),
('RES018','1710000018','HAB018','2028-05-08','2028-05-11','2028-05-15','FINALIZADA'),
('RES019','1710000019','HAB019','2028-05-14','2028-05-17','2028-05-20','FINALIZADA'),
('RES020','1710000020','HAB020','2028-05-20','2028-05-23','2028-05-27','FINALIZADA'),

('RES021','1710000021','HAB021','2028-06-02','2028-06-05','2028-06-09','FINALIZADA'),
('RES022','1710000022','HAB022','2028-06-08','2028-06-11','2028-06-15','FINALIZADA'),
('RES023','1710000023','HAB023','2028-06-14','2028-06-17','2028-06-20','FINALIZADA'),
('RES024','1710000024','HAB024','2028-06-20','2028-06-23','2028-06-27','FINALIZADA'),
('RES025','1710000025','HAB025','2028-07-01','2028-07-04','2028-07-08','FINALIZADA'),
('RES026','1710000026','HAB026','2028-07-06','2028-07-09','2028-07-13','FINALIZADA'),
('RES027','1710000027','HAB027','2028-07-12','2028-07-15','2028-07-18','FINALIZADA'),
('RES028','1710000028','HAB028','2028-07-18','2028-07-21','2028-07-25','FINALIZADA'),
('RES029','1710000029','HAB029','2028-08-02','2028-08-05','2028-08-09','FINALIZADA'),
('RES030','1710000030','HAB030','2028-08-08','2028-08-11','2028-08-15','FINALIZADA');


SET search_path TO operaciones, public;

INSERT INTO factura
(codigo_factura,codigo_reserva,fecha,subtotal,iva,total,metodo_pago)
VALUES

('FAC001','RES001','2028-01-08',420.00,63.00,483.00,'TARJETA'),
('FAC002','RES002','2028-01-13',560.00,84.00,644.00,'EFECTIVO'),
('FAC003','RES003','2028-01-19',780.00,117.00,897.00,'TRANSFERENCIA'),
('FAC004','RES004','2028-01-24',950.00,142.50,1092.50,'TARJETA'),
('FAC005','RES005','2028-02-08',610.00,91.50,701.50,'EFECTIVO'),
('FAC006','RES006','2028-02-13',830.00,124.50,954.50,'TRANSFERENCIA'),
('FAC007','RES007','2028-02-19',1250.00,187.50,1437.50,'TARJETA'),
('FAC008','RES008','2028-02-24',1450.00,217.50,1667.50,'TRANSFERENCIA'),
('FAC009','RES009','2028-03-09',720.00,108.00,828.00,'EFECTIVO'),
('FAC010','RES010','2028-03-15',910.00,136.50,1046.50,'TARJETA'),

('FAC011','RES011','2028-03-20',430.00,64.50,494.50,'EFECTIVO'),
('FAC012','RES012','2028-03-27',580.00,87.00,667.00,'TARJETA'),
('FAC013','RES013','2028-04-08',760.00,114.00,874.00,'TRANSFERENCIA'),
('FAC014','RES014','2028-04-13',890.00,133.50,1023.50,'EFECTIVO'),
('FAC015','RES015','2028-04-20',1020.00,153.00,1173.00,'TARJETA'),
('FAC016','RES016','2028-04-26',1180.00,177.00,1357.00,'TRANSFERENCIA'),
('FAC017','RES017','2028-05-08',650.00,97.50,747.50,'EFECTIVO'),
('FAC018','RES018','2028-05-15',810.00,121.50,931.50,'TARJETA'),
('FAC019','RES019','2028-05-20',970.00,145.50,1115.50,'TRANSFERENCIA'),
('FAC020','RES020','2028-05-27',1150.00,172.50,1322.50,'EFECTIVO'),

('FAC021','RES021','2028-06-09',540.00,81.00,621.00,'TARJETA'),
('FAC022','RES022','2028-06-15',680.00,102.00,782.00,'TRANSFERENCIA'),
('FAC023','RES023','2028-06-20',860.00,129.00,989.00,'EFECTIVO'),
('FAC024','RES024','2028-06-27',980.00,147.00,1127.00,'TARJETA'),
('FAC025','RES025','2028-07-08',1210.00,181.50,1391.50,'TRANSFERENCIA'),
('FAC026','RES026','2028-07-13',790.00,118.50,908.50,'EFECTIVO'),
('FAC027','RES027','2028-07-18',930.00,139.50,1069.50,'TARJETA'),
('FAC028','RES028','2028-07-25',1100.00,165.00,1265.00,'TRANSFERENCIA'),
('FAC029','RES029','2028-08-09',840.00,126.00,966.00,'EFECTIVO'),
('FAC030','RES030','2028-08-15',990.00,148.50,1138.50,'TARJETA');


USE hotel_gestion;

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

INSERT INTO temporada
(codigo_temporada,nombre,fecha_inicio,fecha_fin,descripcion)
VALUES

('TMP001','Temporada Alta',
'2025-01-01','2025-04-30',
'Vacaciones y turismo'),

('TMP002','Temporada Baja',
'2025-05-01','2025-06-30',
'Disminucion de turistas'),

('TMP003','Vacaciones Costa',
'2025-07-01','2025-08-31',
'Incremento de visitantes'),

('TMP004','Fin de Año',
'2025-12-01','2025-12-31',
'Celebraciones'),

('TMP005','temporada alta',
'2026-01-01','2026-04-30',
'Mayor ocupacion'),

('TMP006','Temporada baja',
'2026-05-01','2026-06-30',
'Menor demanda'),

('TMP007','Vacasiones Costa',
'2026-07-01','2026-08-31',
'Turismo nacional'),

('TMP008','FIN DE AÑO',
'2026-12-01','2026-12-31',
'Fiestas de diciembre');

INSERT INTO meta_mensual
(codigo_hotel,periodo,meta_ingresos,meta_ocupacion)
VALUES

('HTL001','2025-01-01',85000,88),

('HTL001','2025-02-01',82000,86),

('HTL002','2025-03-01',76000,82),

('HTL003','2025-04-01',92000,90),

('HTL004','2025-05-01',61000,72),

('HTL005','2025-06-01',58000,69),

('HTL006','2026-01-01',87000,89),

('HTL007','2026-02-01',72000,80),

('HTL008','2026-03-01',96000,93),

('HTL009','2026-04-01',67000,75),

('HTL010','2026-05-01',73000,81),

('HTL005','2026-06-01',64000,74);

INSERT INTO presupuesto
(codigo_hotel,periodo,presupuesto_operativo,presupuesto_marketing,presupuesto_mantenimiento)
VALUES

('HTL001','2025-01-01',250000,42000,28000),

('HTL002','2025-01-01',210000,36000,24000),

('HTL003','2025-01-01',270000,47000,32000),

('HTL004','2025-01-01',185000,28000,18000),

('HTL005','2025-01-01',195000,30000,21000),

('HTL006','2026-01-01',255000,43000,29500),

('HTL007','2026-01-01',220000,35000,25000),

('HTL008','2026-01-01',285000,52000,34000),

('HTL009','2026-01-01',205000,31500,22500),

('HTL010','2026-01-01',215000,33000,24000);

INSERT INTO campania
(codigo_campania,codigo_hotel,codigo_temporada,nombre,fecha_inicio,fecha_fin,presupuesto,estado)
VALUES

('CAM001','HTL001','TMP001',
'Verano Quito',
'2025-01-05',
'2025-02-15',
15000,
'ACTIVO'),

('CAM002','HTL002','TMP001',
'vacaciones QUITO',
'2025-02-01',
'2025-03-10',
12000,
'activo'),

('CAM003','HTL003','TMP002',
'PROMO CORPORATIVA',
'2025-05-05',
'2025-06-20',
18000,
'ACTIVO'),

('CAM004','HTL004','TMP003',
'Descubre Cuenka',
'2025-07-01',
'2025-08-31',
17000,
'ACTIVO'),

('CAM005','HTL005','TMP003',
'Manta Bech',
'2025-07-10',
'2025-08-25',
16500,
'ACTIVO'),

('CAM006','HTL006','TMP004',
'Navidad Ambatto',
'2025-12-01',
'2025-12-31',
14000,
'ACTIVO'),

('CAM007','HTL007','TMP005',
'Verano Loja',
'2026-01-08',
'2026-02-28',
16000,
'ACTIVO'),

('CAM008','HTL008','TMP005',
'Salina Resort',
'2026-02-01',
'2026-03-15',
21000,
'Activo'),

('CAM009','HTL009','TMP006',
'Promo Riobamba',
'2026-05-01',
'2026-06-15',
13000,
'ACTIVO'),

('CAM010','HTL010','TMP007',
'Sto Domingo Vacaciones',
'2026-07-01',
'2026-08-31',
17500,
'ACTIVO');

INSERT INTO encuesta
(fecha,codigo_hotel,documento_cliente,puntuacion,tiempo_espera_minutos,comentario)
VALUES

('2025-01-15','HTL001','1723456789',5,8,
'Excelente servicio'),

('2025-02-11','HTL001','1711122233',4,10,
'Muy buena atencion'),

('2025-03-18','HTL002','1755544433',3,18,
'la recepcion demoro mucho'),

('2025-04-08','HTL003','1700099988',5,5,
'Todo perfecto'),

('2025-05-19','HTL004','1712345678',4,12,
'Instalaciones limpias'),

('2025-06-12','HTL005','1766677788',2,30,
'aire acondicionado dañado'),

('2025-12-24','HTL006','1799988877',5,6,
'Excelente comida'),

('2026-01-20','HTL007','1788877665',5,5,
'MUY BUEN SERVICIO'),

('2026-02-14','HTL008','1777766655',4,9,
'Piscina limpia'),

('2026-03-22','HTL009','1744455566',3,16,
'Mucho ruido'),

('2026-04-30','HTL010','1723456789',5,7,
'Personal amable'),

('2026-05-16','HTL002','1711122233',2,35,
'habitacion sucia'),

('2026-06-18','HTL003','1755544433',4,11,
'Todo bien'),

('2026-07-09','HTL004','1700099988',5,4,
'Volvere pronto'),

('2026-08-27','HTL005','1712345678',1,45,
'pesimo servicio');


INSERT INTO hotel
(codigo_hotel,nombre_oficial,ciudad,direccion,telefono,correo,categoria,activo)
VALUES

('HTL011','Ocean Blue Esmeraldas','Esmeraldas',
'Malecón Las Palmas','062334455',
'esmeraldas@oceanblue.com',4,TRUE),

('HTL012','Amazon River Lodge','Tena',
'Av. Jumandy','062998877',
'tena@amazonriver.com',5,TRUE),

('HTL013','Andes Palace Ibarra','Ibarra',
'Av. Mariano Acosta','062112233',
'ibarra@andespalace.com',4,TRUE),

('HTL014','Laguna Hotel Otavalo','Otavalo',
'Calle Bolívar','062445566',
'otavalo@lagunahotel.com',3,TRUE),

('HTL015','Cloud Forest Lodge','Mindo',
'Vía Mindo','022556677',
'mindo@cloudforest.com',5,TRUE),

('HTL016','Royal Garden Latacunga','Latacunga',
'Av. Eloy Alfaro','032778899',
'latacunga@royalgarden.com',4,TRUE),

('HTL017','Volcano Resort Baños','Baños',
'Av. Amazonas','032445566',
'banios@volcanoresort.com',5,TRUE),

('HTL018','Pacific Dreams Atacames','Atacames',
'Malecón Central','062667788',
'atacames@pacificdreams.com',4,TRUE),

('HTL019','Costa del Sol Playas','Playas',
'Av. Jaime Roldós','042334455',
'playas@costadelsol.com',4,TRUE),

('HTL020','Golden Plaza Machala','Machala',
'Av. 25 de Junio','072998811',
'machala@goldenplaza.com',5,TRUE);

INSERT INTO temporada
(codigo_temporada,nombre,fecha_inicio,fecha_fin,descripcion)
VALUES

('TMP009','Semana Santa',
'2027-04-01',
'2027-04-15',
'Turismo religioso'),

('TMP010','Vacaciones Sierra',
'2027-07-01',
'2027-08-31',
'Vacaciones escolares'),

('TMP011','Black Friday',
'2027-11-20',
'2027-11-30',
'Promociones especiales'),

('TMP012','Navidad',
'2027-12-15',
'2027-12-31',
'Temporada navideña'),

('TMP013','Carnaval',
'2028-02-01',
'2028-02-20',
'Feriado nacional');

INSERT INTO meta_mensual
(codigo_hotel,periodo,meta_ingresos,meta_ocupacion)
VALUES

('HTL011','2027-01-01',78000,84),

('HTL012','2027-02-01',91000,91),

('HTL013','2027-03-01',69000,77),

('HTL014','2027-04-01',55000,70),

('HTL015','2027-05-01',102000,95),

('HTL016','2027-06-01',72000,81),

('HTL017','2027-07-01',98000,93),

('HTL018','2027-08-01',87000,88),

('HTL019','2027-09-01',76000,80),

('HTL020','2027-10-01',93000,92);

INSERT INTO presupuesto
(codigo_hotel,periodo,presupuesto_operativo,presupuesto_marketing,presupuesto_mantenimiento)
VALUES

('HTL011','2027-01-01',220000,35000,22000),

('HTL012','2027-02-01',295000,52000,34000),

('HTL013','2027-03-01',185000,29000,18000),

('HTL014','2027-04-01',170000,25000,16000),

('HTL015','2027-05-01',310000,58000,36000),

('HTL016','2027-06-01',205000,32000,21000),

('HTL017','2027-07-01',285000,49000,33000),

('HTL018','2027-08-01',240000,39000,26000),

('HTL019','2027-09-01',215000,34000,23000),

('HTL020','2027-10-01',305000,55000,37000);


INSERT INTO campania
(codigo_campania,codigo_hotel,codigo_temporada,nombre,fecha_inicio,fecha_fin,presupuesto,estado)
VALUES

('CAM011','HTL011','TMP009',
'Semana Santa Esmeraldas',
'2027-04-01',
'2027-04-15',
16000,
'ACTIVO'),

('CAM012','HTL012','TMP010',
'Descubre la Amazonía',
'2027-07-01',
'2027-08-31',
24000,
'ACTIVO'),

('CAM013','HTL013','TMP011',
'Black Friday Ibarra',
'2027-11-20',
'2027-11-30',
15000,
'ACTIVO'),

('CAM014','HTL014','TMP012',
'Navidad Otavalo',
'2027-12-15',
'2027-12-31',
18000,
'ACTIVO'),

('CAM015','HTL015','TMP013',
'Carnaval Mindo',
'2028-02-01',
'2028-02-20',
22000,
'ACTIVO'),

('CAM016','HTL016','TMP009',
'Semana Santa Latacunga',
'2027-04-01',
'2027-04-15',
14500,
'ACTIVO'),

('CAM017','HTL017','TMP010',
'Vacaciones Baños',
'2027-07-01',
'2027-08-31',
26000,
'ACTIVO'),

('CAM018','HTL018','TMP011',
'Atacames Black',
'2027-11-20',
'2027-11-30',
17000,
'ACTIVO'),

('CAM019','HTL019','TMP012',
'Navidad Playas',
'2027-12-15',
'2027-12-31',
20000,
'ACTIVO'),

('CAM020','HTL020','TMP013',
'Carnaval Machala',
'2028-02-01',
'2028-02-20',
21000,
'ACTIVO');


INSERT INTO encuesta
(fecha,codigo_hotel,documento_cliente,puntuacion,tiempo_espera_minutos,comentario)
VALUES

('2027-01-12','HTL011','1811111111',5,6,'Excelente atención.'),

('2027-02-18','HTL012','1822222222',4,9,'Muy buena experiencia.'),

('2027-03-10','HTL013','1833333333',5,5,'Habitaciones impecables.'),

('2027-04-14','HTL014','1844444444',3,18,'La atención fue lenta.'),

('2027-05-22','HTL015','1855555555',5,4,'Todo excelente.'),

('2027-06-16','HTL016','1866666666',4,10,'Muy recomendable.'),

('2027-07-28','HTL017','1877777777',5,7,'Instalaciones modernas.'),

('2027-08-08','HTL018','1888888888',2,32,'Demasiada espera.'),

('2027-09-19','HTL019','1899999999',4,11,'Buen servicio.'),

('2027-10-27','HTL020','1800000001',5,5,'Excelente ubicación.'),

('2027-11-05','HTL011','1800000002',5,6,'Personal muy amable.'),

('2027-11-18','HTL012','1800000003',4,9,'Desayuno excelente.'),

('2027-12-03','HTL013','1800000004',3,20,'Mucho ruido en la noche.'),

('2027-12-12','HTL014','1800000005',5,5,'Volvería nuevamente.'),

('2028-01-09','HTL015','1800000006',4,8,'Muy limpio.'),

('2028-01-24','HTL016','1800000007',5,6,'Servicio rápido.'),

('2028-02-06','HTL017','1800000008',5,4,'Excelente comida.'),

('2028-02-14','HTL018','1800000009',4,12,'Piscina muy limpia.'),

('2028-02-22','HTL019','1800000010',5,5,'Todo perfecto.'),

('2028-03-01','HTL020','1800000011',5,3,'La mejor experiencia.');

INSERT INTO meta_mensual
(codigo_hotel,periodo,meta_ingresos,meta_ocupacion)
VALUES

('HTL001','2028-01-01',92000,90),

('HTL002','2028-02-01',87000,86),

('HTL003','2028-03-01',98000,92),

('HTL004','2028-04-01',73000,79),

('HTL005','2028-05-01',81000,83),

('HTL006','2028-06-01',85000,85),

('HTL007','2028-07-01',91000,89),

('HTL008','2028-08-01',97000,94),

('HTL009','2028-09-01',76000,78),

('HTL010','2028-10-01',89000,87),

('HTL011','2028-11-01',84000,84),

('HTL012','2028-12-01',101000,96);

INSERT INTO presupuesto
(codigo_hotel,periodo,presupuesto_operativo,presupuesto_marketing,presupuesto_mantenimiento)
VALUES

('HTL001','2028-01-01',265000,45000,30000),

('HTL002','2028-02-01',240000,39000,25000),

('HTL003','2028-03-01',295000,52000,34000),

('HTL004','2028-04-01',205000,33000,22000),

('HTL005','2028-05-01',215000,34000,22500),

('HTL006','2028-06-01',235000,37000,24000),

('HTL007','2028-07-01',245000,39000,25500),

('HTL008','2028-08-01',310000,58000,38000),

('HTL009','2028-09-01',225000,36000,23500),

('HTL010','2028-10-01',255000,41000,27000),

('HTL011','2028-11-01',248000,39500,26000),

('HTL012','2028-12-01',325000,62000,41000);

INSERT INTO campania
(codigo_campania,codigo_hotel,codigo_temporada,nombre,fecha_inicio,fecha_fin,presupuesto,estado)
VALUES

('CAM021','HTL001','TMP009',
'Verano Quito 2028',
'2028-01-05',
'2028-02-10',
18500,
'ACTIVO'),

('CAM022','HTL003','TMP010',
'Guayaquil Vacaciones',
'2028-07-01',
'2028-08-31',
26000,
'ACTIVO'),

('CAM023','HTL005','TMP011',
'Black Friday Manta',
'2028-11-20',
'2028-11-30',
17000,
'ACTIVO'),

('CAM024','HTL007','TMP012',
'Navidad Loja',
'2028-12-15',
'2028-12-31',
19500,
'ACTIVO'),

('CAM025','HTL009','TMP013',
'Carnaval Riobamba',
'2028-02-01',
'2028-02-20',
16000,
'ACTIVO');

INSERT INTO encuesta
(fecha,codigo_hotel,documento_cliente,puntuacion,tiempo_espera_minutos,comentario)
VALUES

('2028-03-12','HTL001','1800000012',5,4,'Excelente recepción.'),

('2028-03-18','HTL002','1800000013',4,9,'Muy buena atención.'),

('2028-04-06','HTL003','1800000014',5,5,'Habitación muy cómoda.'),

('2028-04-22','HTL004','1800000015',3,18,'Mucho tiempo de espera.'),

('2028-05-14','HTL005','1800000016',5,6,'Personal muy amable.'),

('2028-06-08','HTL006','1800000017',4,10,'Todo estuvo bien.'),

('2028-06-25','HTL007','1800000018',5,5,'Excelente servicio.'),

('2028-07-11','HTL008','1800000019',4,8,'Piscina limpia.'),

('2028-07-29','HTL009','1800000020',2,35,'Habitación con ruido.'),

('2028-08-17','HTL010','1800000021',5,4,'Volvería nuevamente.');

SET search_path TO operaciones, public;

INSERT INTO evento
(codigo_evento,codigo_hotel,nombre_evento,tipo_evento,
fecha_inicio,fecha_fin,presupuesto,
canal_marketing,descripcion,estado)
VALUES

('EV001','HTL001','Black Friday','Promoción',
'2028-01-01','2028-01-15',
5000,'Facebook',
'Descuentos en habitaciones Premium',
'FINALIZADO'),

('EV002','HTL002','San Valentín','Temporada',
'2028-02-01','2028-02-14',
3000,'Instagram',
'Paquetes románticos',
'FINALIZADO'),

('EV003','HTL003','Carnaval','Festival',
'2028-02-15','2028-02-28',
4200,'TikTok',
'Promoción de carnaval',
'FINALIZADO'),

('EV004','HTL004','Semana Santa','Temporada',
'2028-03-20','2028-04-05',
6800,'Google Ads',
'Turismo religioso',
'FINALIZADO'),

('EV005','HTL005','Vacaciones Costa','Promoción',
'2028-05-01','2028-05-31',
7200,'Facebook',
'Vacaciones familiares',
'FINALIZADO'),

('EV006','HTL006','Verano 2028','Temporada',
'2028-06-01','2028-06-30',
8000,'Instagram',
'Campaña de verano',
'FINALIZADO'),

('EV007','HTL007','Festival Gastronómico','Evento',
'2028-07-01','2028-07-15',
4500,'Radio',
'Comida típica ecuatoriana',
'FINALIZADO'),

('EV008','HTL008','Fiestas de Independencia','Cultural',
'2028-08-01','2028-08-20',
6000,'Televisión',
'Promoción turística',
'FINALIZADO'),

('EV009','HTL009','Congreso Empresarial','Corporativo',
'2028-09-01','2028-09-10',
9000,'LinkedIn',
'Captación de empresas',
'PROGRAMADO'),

('EV010','HTL010','Navidad Mágica','Temporada',
'2028-12-01','2028-12-31',
10000,'Facebook',
'Promoción navideña',
'PROGRAMADO');