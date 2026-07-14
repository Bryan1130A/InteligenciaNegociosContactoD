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

INSERT INTO evento
(codigo_evento,codigo_campania,codigo_hotel,nombre_evento,tipo_evento,
fecha_inicio,fecha_fin,presupuesto,canal_marketing,descripcion,estado)
VALUES

('EV001','CAM001','HTL001','Black Friday Quito','Promoción',
'2025-01-05','2025-01-15',
5000,'Facebook',
'Descuentos en habitaciones Premium',
'FINALIZADO'),

('EV002','CAM002','HTL002','San Valentín Quito','Temporada',
'2025-02-01','2025-02-14',
3500,'Instagram',
'Paquetes románticos',
'FINALIZADO'),

('EV003','CAM003','HTL003','Congreso Empresarial','Corporativo',
'2025-05-10','2025-05-20',
7000,'LinkedIn',
'Promoción para empresas',
'FINALIZADO'),

('EV004','CAM004','HTL004','Festival Cuenca','Cultural',
'2025-07-05','2025-07-20',
4500,'Google Ads',
'Festival turístico',
'FINALIZADO'),

('EV005','CAM005','HTL005','Vacaciones Manta','Promoción',
'2025-07-15','2025-08-15',
6000,'Facebook',
'Promoción familiar',
'FINALIZADO'),

('EV006','CAM006','HTL006','Navidad Ambato','Temporada',
'2025-12-01','2025-12-31',
8000,'Instagram',
'Campaña navideña',
'FINALIZADO'),

('EV007','CAM007','HTL007','Verano Loja','Promoción',
'2026-01-10','2026-02-15',
5500,'TikTok',
'Promoción de temporada',
'FINALIZADO'),

('EV008','CAM008','HTL008','Resort Salinas','Promoción',
'2026-02-05','2026-03-10',
6200,'Meta Ads',
'Promoción turística',
'FINALIZADO'),

('EV009','CAM009','HTL009','Promo Riobamba','Promoción',
'2026-05-01','2026-06-10',
4800,'Google Ads',
'Descuentos especiales',
'FINALIZADO'),

('EV010','CAM010','HTL010','Vacaciones Santo Domingo','Temporada',
'2026-07-01','2026-08-20',
7100,'Facebook',
'Campaña vacacional',
'ACTIVO');