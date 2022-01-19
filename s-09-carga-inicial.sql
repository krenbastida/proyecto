--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 15/01/2022 
--@Descripción: Se realiza la carga de los datos de todas las tablas

--clear screen

--connect bvgb_proy_admin/bvgb;


--CENTRO OPERATIVO
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval, 'AERC4', 'Caridad', 'CALLE. TEOTIHUACAN 18, HIPODROMO , CUAUHTEMOC , DF , C.P.06100', 26112819.82, 41876420.29, 1, 0, 0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'JTIF5', 'Esperanza', 'CARR FEDERAL MEXICO PACHUCA KM 30 LOC 3, LOS PAJARITOS , MEXICO , MEX , C.P.55069', 56675643.69, 63302792.72,1,0,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'LFIT4', 'Cristal', 'CALLE DOCTOR LICEAGA 113, LAS FLORES, MEX , C.P.06700',63562892.65,52051221.59,1,0,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'DLSS3', 'Estrella', 'CALLE MIXTECAS MZ 107 LT 7, AJUSCO , MEXICO , DF , C.P.04300',70722112.96,14415931.76,1,0,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'FFLA1', 'Troncoso', 'CLLE MIGUEL HIDALGO MZA 144 LT1940, SANTA MARIA TOMATLAN , MEXICO , DF , C.P.09870',68105782.17,46511151.46,1,0,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'POSR4', 'Sears', 'CLL DOCTOR NEVA 47, DOCTORES , MEXICO , DF , C.P.06720',25137321.52,34951402.31,1,0,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'HVNW8', 'Hogar', 'AVE TRANSPENINSULAR 32 INT D, FICT LOCALITY , FICTICIO , MEX , C.P.22800',89759388.62,75985700.78,1,0,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'KALO8', 'Amigo', 'JESUS REYES HEROLES 123, LOMAS QUEBRADAS , MEXICO , DF , C.P.10000',60514118.78,79706253.47,1,0,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'AÑLS6', 'Bondad', 'AVE HOMERO 1425 INT 1P, FICT LOCALITY , FICTICIO , MEX , C.P.11540',58032512.74,97400111.35,1,0,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'NMVI6', 'Balbuena', 'AVE JOSE MA IZAZAGA 161 LOC G, FICT LOCALITY , FICTICIO , MEX , C.P.06000',39203980.91,26571537.28,1,0,0);

insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'IUFJ6','Salud','PRL ZARCO 6, SAN SIMON TOLNAHUAC , MEXICO , DF , C.P.06920',54315308.18,67704208.22,0,1,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'OSNF2','Digna','CRT MONTERREY SALTILLO 7, FICT LOCALITY , FICTICIO , MEX , C.P.66350',89686826.79,37991413.38,0,1,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'LOCN9','Bienestar','CRT MONTERREY SALTILLO 7, FICT LOCALITY , FICTICIO , MEX , C.P.66350',67627418.06,76279620.31,0,1,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'KIDJ7','Fifi','CRT TEZOYUCA 101, FICT LOCALITY , FICTICIO , MEX , C.P.62760',14905915.01,55901862.65,0,1,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'NVHR5','Banamex','CLL MAÑANITAS 268, FICT LOCALITY , FICTICIO , MEX , C.P.04000',80129648.27,12825475.38,0,1,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'SXNE4','BBVA','CLL JOAQUIN M GTEZ 9, JUAN ESCUTIA , MEXICO , DF , C.P.09100',47414248.74,77221684.54,0,1,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'QERT4','Buena','CRT A NAVOLATO 9, FICT LOCALITY , FICTICIO , MEX , C.P.80129',56597794.56,39358375.73,0,1,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'NDJC6','Health','CLL 300 315, FICT LOCALITY , FICTICIO , MEX , C.P.85180',71204716.99,53098589.80,0,1,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'BWRA7','Good Dog','CRT FEDERAL TLAXCALA SN MARTIN 30, FICT LOCALITY , FICTICIO , MEX , C.P.90140',80751435.52,72039233.50,0,1,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'TNVB2','Good Pet','CLL 20 DE NOV 340, FICT LOCALITY , FICTICIO , MEX , C.P.63300',15012130.15,50615825.08,0,1,0);

insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'OMNB8','Vacia','AVE ACUEDUCTO 1017 LOC A, SAN RAFAEL TICOMAN , MEXICO , DF , C.P.07359',80998813.66,95303778.14,0,0,1);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'CVSR4','Llena','CLL LUIS G VIEYRA 76, SAN MIGUEL CHAPULTEPEC I SECCION , MEXICO , DF , C.P.11850',17814868.38,61936781.34,0,0,1);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'LSME7','Abierta','CLLE AGUSTIN YAÑEZ 1352, ESCUADRON 201 , MEXICO , DF , C.P.09060',35852224.14,76481539.23,0,1,0);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'LNCB5','Administración','CLL GABRIEL MANCERA 1721, FICT LOCALITY , FICTICIO , MEX , C.P.03100',14782153.12,80358141.60,0,0,1);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'BOEF0','Romeritos','PRL DIV DEL NTE 5031, FICT LOCALITY , FICTICIO , MEX , C.P.16010',35472760.86,34064199.76,0,0,1);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'CFAD6','Gutierritos','AV. BAJA VELOCIDAD 54, CASA BLANCA , METEPEC , MEX , C.P.52175',26620645.09,70208805.67,0,0,1);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'LLLF7','Burritos','LEONA VICARIO 201, BARRIO COAXUSTENCO , METEPEC , MEX , C.P.52140',48790087.35,37417756.30,0,0,1);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'CCRW3','Taquitos','LAGUNA DE TIXTLA 114, VICENTE GUERRERO , TOLUCA , MEX , C.P.50110',41851079.08,61559231.50,0,0,1);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'LMCR1','Tortitas','CALLE. TEOTIHUACAN 18, HIPODROMO , CUAUHTEMOC , DF , C.P.06100',59143572.41,34296764.09,0,0,1);
insert into centro_operativo (centro_operativo_id, codigo, nombre, direccion, longitud, latitud, es_clinica, es_refugio, es_oficina) values (centro_operativo_seq.nextval,'LMCT3','Dinerito','PROL. PLUTARCO ELIAS CALLES 2510, DR. ALFONSO ORTIZ TIRADO , IZTAPALAPA , DF , C.P.09020',58405352.17,75302138.79,0,0,1);

-- REFUGIOS
INSERT INTO REFUGIO(centro_operativo_id,numero_registro,capacidad,logo,lema,refugio_alterno_id) values (11, 'EMCLKDAU', 5000, empty_blob(),'CUIDANDO CACHORROS', null);  
INSERT INTO REFUGIO(centro_operativo_id,numero_registro,capacidad,logo,lema,refugio_alterno_id) values (2, 'CSAMLOQA', 2000, empty_blob(),'CUIDAR ANIMALES ES MI PASION',null); 
INSERT INTO REFUGIO(centro_operativo_id,numero_registro,capacidad,logo,lema,refugio_alterno_id) values (3, 'LÑQAZXCT', 6000, empty_blob(),'EL MEJOR TRATAMIENTO PARA MASCOTAS', null); 
INSERT INTO REFUGIO(centro_operativo_id,numero_registro,capacidad,logo,lema,refugio_alterno_id) values (4, 'IEKMCXZG', 15000, empty_blob(),'ARRIESGANDO MI VIDA POR ELLOS', null); 
INSERT INTO REFUGIO(centro_operativo_id,numero_registro,capacidad,logo,lema,refugio_alterno_id) values (5, 'MVNCÑLSA', 10000, empty_blob(),'DAR EL MEJOR SERVICIO', null); 
INSERT INTO REFUGIO(centro_operativo_id,numero_registro,capacidad,logo,lema,refugio_alterno_id) values (6, 'QSZFSALK', 1000, empty_blob(),'UNA MASCOTA SIN HAMBRE, ES UNA MASCOTA FELIZ', null); 
INSERT INTO REFUGIO(centro_operativo_id,numero_registro,capacidad,logo,lema,refugio_alterno_id) values (7, 'PQZFCXEW', 500, empty_blob(),'SI LO QUIERES, ADOPTA', null); 
INSERT INTO REFUGIO(centro_operativo_id,numero_registro,capacidad,logo,lema,refugio_alterno_id) values (8, 'LCDQAZMB', 2500, empty_blob(),'ADOPTAR TE HACE MEJOR PERSONA', null); 
INSERT INTO REFUGIO(centro_operativo_id,numero_registro,capacidad,logo,lema,refugio_alterno_id) values (9, 'ÑLDWAZVC', 2999, empty_blob(),'EL CARIÑO HACIA UNA MASCOTA ES LO MEJOR QUE TE PUEDE PASAR', null); 
INSERT INTO REFUGIO(centro_operativo_id,numero_registro,capacidad,logo,lema,refugio_alterno_id) values (10, 'MQAGFDSI', 1000, empty_blob(),'DESPUES DE LOS GRANDES MOMENTOS QUEDAN INOLVIDABLES RECUERDOS', null);


-- CLINICAS
INSERT INTO CLINICA(centro_operativo_id,hora_inicio,hora_fin,telefono_atencion_clientes,telefono_emergencia) VALUES (clinica_seq.nextval, to_date('07:00:00','hh24:mi:ss'), to_date('18:00:00','hh24:mi:ss'), 5531908754, 5577190293); 
INSERT INTO CLINICA(centro_operativo_id,hora_inicio,hora_fin,telefono_atencion_clientes,telefono_emergencia) VALUES (clinica_seq.nextval, to_date('08:00:00','hh24:mi:ss'), to_date('19:00:00','hh24:mi:ss'), 5572365668, 5531444611);
INSERT INTO CLINICA(centro_operativo_id,hora_inicio,hora_fin,telefono_atencion_clientes,telefono_emergencia) VALUES (clinica_seq.nextval, to_date('09:00:00','hh24:mi:ss'), to_date('20:00:00','hh24:mi:ss'), 5513490334, 5516545389);
INSERT INTO CLINICA(centro_operativo_id,hora_inicio,hora_fin,telefono_atencion_clientes,telefono_emergencia) VALUES (clinica_seq.nextval, to_date('10:00:00','hh24:mi:ss'), to_date('21:00:00','hh24:mi:ss'), 5569839291, 5552381629);
INSERT INTO CLINICA(centro_operativo_id,hora_inicio,hora_fin,telefono_atencion_clientes,telefono_emergencia) VALUES (clinica_seq.nextval, to_date('11:00:00','hh24:mi:ss'), to_date('22:00:00','hh24:mi:ss'), 5559931116, 551004452);
INSERT INTO CLINICA(centro_operativo_id,hora_inicio,hora_fin,telefono_atencion_clientes,telefono_emergencia) VALUES (clinica_seq.nextval, to_date('07:00:00','hh24:mi:ss'), to_date('18:00:00','hh24:mi:ss'), 5583996515, 5514150652);
INSERT INTO CLINICA(centro_operativo_id,hora_inicio,hora_fin,telefono_atencion_clientes,telefono_emergencia) VALUES (clinica_seq.nextval, to_date('08:00:00','hh24:mi:ss'), to_date('19:00:00','hh24:mi:ss'), 5567600725, 5575482965);
INSERT INTO CLINICA(centro_operativo_id,hora_inicio,hora_fin,telefono_atencion_clientes,telefono_emergencia) VALUES (clinica_seq.nextval, to_date('09:00:00','hh24:mi:ss'), to_date('20:00:00','hh24:mi:ss'), 5567187087, 5512878770);
INSERT INTO CLINICA(centro_operativo_id,hora_inicio,hora_fin,telefono_atencion_clientes,telefono_emergencia) VALUES (clinica_seq.nextval, to_date('10:00:00','hh24:mi:ss'), to_date('21:00:00','hh24:mi:ss'), 5548622610, 5521008231);
INSERT INTO CLINICA(centro_operativo_id,hora_inicio,hora_fin,telefono_atencion_clientes,telefono_emergencia) VALUES (clinica_seq.nextval, to_date('11:00:00','hh24:mi:ss'), to_date('22:00:00','hh24:mi:ss'), 5575543903, 5526638188);


-- OFICINA
INSERT INTO OFICINA(centro_operativo_id,rfc,firma_electronica,nombre,apellido_paterno,apellido_materno) VALUES (oficina_seq.nextval, 'SAMJ580305QU2', empty_blob(), 'Juan Luis', 'San', 'Martin');
INSERT INTO OFICINA(centro_operativo_id,rfc,firma_electronica,nombre,apellido_paterno,apellido_materno) VALUES (oficina_seq.nextval, 'CATE800618T17', empty_blob(), 'Esperanza Jennifer', 'Catalá', 'Téllez');
INSERT INTO OFICINA(centro_operativo_id,rfc,firma_electronica,nombre,apellido_paterno,apellido_materno) VALUES (oficina_seq.nextval, 'SABL961221IQ2', empty_blob(), 'León', 'Sánchez', 'Bastida');
INSERT INTO OFICINA(centro_operativo_id,rfc,firma_electronica,nombre,apellido_paterno,apellido_materno) VALUES (oficina_seq.nextval, 'PEOE720911GR1', empty_blob(), 'Elvira', 'Peñalver', 'Ortiz');
INSERT INTO OFICINA(centro_operativo_id,rfc,firma_electronica,nombre,apellido_paterno,apellido_materno) VALUES (oficina_seq.nextval, 'FEAS900311SS7', empty_blob(), 'Sandra', 'Ferrándiz', 'Araujo');
INSERT INTO OFICINA(centro_operativo_id,rfc,firma_electronica,nombre,apellido_paterno,apellido_materno) VALUES (oficina_seq.nextval, 'LATF730130EW0', empty_blob(), 'Feliciano', 'Llabrés', 'Torrecilla');
INSERT INTO OFICINA(centro_operativo_id,rfc,firma_electronica,nombre,apellido_paterno,apellido_materno) VALUES (oficina_seq.nextval, 'MOPL000502Q10', empty_blob(), 'Leonel', 'Molins', 'Polo');
INSERT INTO OFICINA(centro_operativo_id,rfc,firma_electronica,nombre,apellido_paterno,apellido_materno) VALUES (oficina_seq.nextval, 'AABE8906111Z6', empty_blob(), 'Eustaquio', 'Aragón', 'Buendía');
INSERT INTO OFICINA(centro_operativo_id,rfc,firma_electronica,nombre,apellido_paterno,apellido_materno) VALUES (oficina_seq.nextval, 'VABH950963H10', empty_blob(), 'Hortensia', 'Valenciano', 'Borrell');
INSERT INTO OFICINA(centro_operativo_id,rfc,firma_electronica,nombre,apellido_paterno,apellido_materno) VALUES (oficina_seq.nextval, 'BOPA931031RS9', empty_blob(), 'Paulina', 'de Borrell', null);

--EMPLEADO
insert into empleado (empleado_id, curp, fecha_ingreso, email, nombre, apellido_paterno, apellido_materno, sueldo_mensual, es_administrador, es_veterinario, es_gerente, centro_operativo_id) values (empleado_seq.nextval,'VELG770826HBCGPB87',to_date('06/15/2020','mm/dd/yyyy'),'gabo@mail.com','Garbiel','Vega','Lopez',25000.00,1,0,0,4);
insert into empleado (empleado_id, curp, fecha_ingreso, email, nombre, apellido_paterno, apellido_materno, sueldo_mensual, es_administrador, es_veterinario, es_gerente, centro_operativo_id) values (empleado_seq.nextval,'VASR770826MCHLNS27',to_date('08/24/2008','mm/dd/yyyy'),'rosita@mail.com','Rosa','Sanchez','Valdez',28000.00 ,1,0,0,11);
insert into empleado (empleado_id, curp, fecha_ingreso, email, nombre, apellido_paterno, apellido_materno, sueldo_mensual, es_administrador, es_veterinario, es_gerente, centro_operativo_id) values (empleado_seq.nextval,'SOSA770826HTLTLN29',to_date('08/10/2012','mm/dd/yyyy'),'mary@mail.com','Ana María', 'Soto', 'Salazar',30000.00,1,0,0,21);
insert into empleado (empleado_id, curp, fecha_ingreso, email, nombre, apellido_paterno, apellido_materno, sueldo_mensual, es_administrador, es_veterinario, es_gerente, centro_operativo_id) values (empleado_seq.nextval,'HERS770826HTCRML69', to_date('12/12/2018','mm/dd/yyyy'), 'silvia@mail.com','Silvia', 'Hernandez', 'Ramirez', 20000.00, 0,1,0,2);
insert into empleado (empleado_id, curp, fecha_ingreso, email, nombre, apellido_paterno, apellido_materno, sueldo_mensual, es_administrador, es_veterinario, es_gerente, centro_operativo_id) values (empleado_seq.nextval, 'EIGS770826MHGSRN66',to_date('01/30/2019','mm/dd/yyyy'),'santi@mail.com', 'Santiago', 'Espinoza', 'Garza', 22000.00, 0,1,0,12);
insert into empleado (empleado_id, curp, fecha_ingreso, email, nombre, apellido_paterno, apellido_materno, sueldo_mensual, es_administrador, es_veterinario, es_gerente, centro_operativo_id) values (empleado_seq.nextval,'PEPR770826MSLRNS74',to_date('05/02/2019','mm/dd/yyyy'),'rosa@mail.com', 'Rosa','Perez','Peña', 22000.00,0,1,0,22);
insert into empleado (empleado_id, curp, fecha_ingreso, email, nombre, apellido_paterno, apellido_materno, sueldo_mensual, es_administrador, es_veterinario, es_gerente, centro_operativo_id) values (empleado_seq.nextval,'GOHA770826MDFNRR59',to_date('05/02/2019','mm/dd/yyyy'),'ara@mail.com','Araceli','Gonzales','Hierra',15000.00,0,0,1,3);
insert into empleado (empleado_id, curp, fecha_ingreso, email, nombre, apellido_paterno, apellido_materno, sueldo_mensual, es_administrador, es_veterinario, es_gerente, centro_operativo_id) values (empleado_seq.nextval,'MECR770826MCHNSB33',to_date('06/14/2013','mm/dd/yyyy'),'roberto@mail.com','Roberto','Mendoza','Castro',13000.00,0,0,1,13);
insert into empleado (empleado_id, curp, fecha_ingreso, email, nombre, apellido_paterno, apellido_materno, sueldo_mensual, es_administrador, es_veterinario, es_gerente, centro_operativo_id) values (empleado_seq.nextval,'VAFP770826HCCRRT38',to_date('10/22/2010','mm/dd/yyyy'),'paty@mail.com','Patricia', 'Fernandez','Vazquez',15000.00,0,0,1,23);
insert into empleado (empleado_id, curp, fecha_ingreso, email, nombre, apellido_paterno, apellido_materno, sueldo_mensual, es_administrador, es_veterinario, es_gerente, centro_operativo_id) values (empleado_seq.nextval,'RIVM770826HCHVRG84',to_date('06/13/2009','mm/dd/yyyy'),'miguel@mail.com','Miguel', 'Rivera','Vargas',14000.00,0,0,1,10);

-- GRADO_ACADEMICO
INSERT INTO GRADO_ACADEMICO(empleado_id,cedula_profesional,titulo,fecha_titulacion) VALUES (grado_academico_seq.nextval, 24113185, empty_blob(), to_date('06/15/2020','mm/dd/yyyy'));
INSERT INTO GRADO_ACADEMICO(empleado_id,cedula_profesional,titulo,fecha_titulacion) VALUES (grado_academico_seq.nextval, 72948230, empty_blob(), to_date('04/14/2021','mm/dd/yyyy'));
INSERT INTO GRADO_ACADEMICO(empleado_id,cedula_profesional,titulo,fecha_titulacion) VALUES (grado_academico_seq.nextval, 94238153, empty_blob(), to_date('05/18/2020','mm/dd/yyyy'));
INSERT INTO GRADO_ACADEMICO(empleado_id,cedula_profesional,titulo,fecha_titulacion) VALUES (grado_academico_seq.nextval, 51814921, empty_blob(), to_date('09/15/2020','mm/dd/yyyy'));
INSERT INTO GRADO_ACADEMICO(empleado_id,cedula_profesional,titulo,fecha_titulacion) VALUES (grado_academico_seq.nextval, 60756473, empty_blob(), to_date('09/08/2021','mm/dd/yyyy'));
INSERT INTO GRADO_ACADEMICO(empleado_id,cedula_profesional,titulo,fecha_titulacion) VALUES (grado_academico_seq.nextval, 90585715, empty_blob(), to_date('07/28/2020','mm/dd/yyyy'));
INSERT INTO GRADO_ACADEMICO(empleado_id,cedula_profesional,titulo,fecha_titulacion) VALUES (grado_academico_seq.nextval, 58889071, empty_blob(), to_date('01/23/2021','mm/dd/yyyy'));
INSERT INTO GRADO_ACADEMICO(empleado_id,cedula_profesional,titulo,fecha_titulacion) VALUES (grado_academico_seq.nextval, 72087399, empty_blob(), to_date('09/03/2021','mm/dd/yyyy'));
INSERT INTO GRADO_ACADEMICO(empleado_id,cedula_profesional,titulo,fecha_titulacion) VALUES (grado_academico_seq.nextval, 25858747, empty_blob(), to_date('09/10/2020','mm/dd/yyyy'));
INSERT INTO GRADO_ACADEMICO(empleado_id,cedula_profesional,titulo,fecha_titulacion) VALUES (grado_academico_seq.nextval, 82150164, empty_blob(), to_date('06/01/2021','mm/dd/yyyy'));

-- REVISION REFUGIO
INSERT INTO REVISION_REFUGIO(revision_refugio_id,diagnostico,foto,refugio_id,empleado_id) VALUES (revision_refugio_seq.nextval, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla scelerisque, diam pharetra faucibus, dui risus egestas metus, id semper enim sapien at neque. Ut ac ullamcorper arcu, et molestie libero', empty_blob(), 11, 11);
INSERT INTO REVISION_REFUGIO(revision_refugio_id,diagnostico,foto,refugio_id,empleado_id) VALUES (revision_refugio_seq.nextval, 'Sed sapien sem, posuere nec libero vel, aliquam finibus urna. Quisque pellentesque vel orci at dapibus. Proin eu velit nec nibh consectetur dictum. Nam sed vestibulum sem.', empty_blob(), 2, 2);
INSERT INTO REVISION_REFUGIO(revision_refugio_id,diagnostico,foto,refugio_id,empleado_id) VALUES (revision_refugio_seq.nextval, 'Duis pretium lectus id ex rutrum vehicula. Vivamus congue nunc ex, at auctor lectus interdum id. Proin faucibus leo ut arcu sollicitudin consectetur.', empty_blob(), 3,3);
INSERT INTO REVISION_REFUGIO(revision_refugio_id,diagnostico,foto,refugio_id,empleado_id) VALUES (revision_refugio_seq.nextval, 'Vestibulum blandit, dui sed iaculis iaculis, magna arcu mattis urna, at tincidunt ipsum turpis et quam. Pellentesque eget urna magna. Nunc pharetra nunc ut mi porttitor pharetra. ', empty_blob(), 4, 4);
INSERT INTO REVISION_REFUGIO(revision_refugio_id,diagnostico,foto,refugio_id,empleado_id) VALUES (revision_refugio_seq.nextval, 'Suspendisse luctus, arcu placerat pellentesque luctus, ipsum quam scelerisque erat, id accumsan diam justo at velit. Praesent facilisis nec lacus eu luctus.', empty_blob(), 5, 5);
INSERT INTO REVISION_REFUGIO(revision_refugio_id,diagnostico,foto,refugio_id,empleado_id) VALUES (revision_refugio_seq.nextval, 'Fusce mattis congue nibh, eget congue nibh convallis quis. Duis efficitur dapibus leo accumsan finibus. Curabitur vitae lectus felis.', empty_blob(), 6, 6);
INSERT INTO REVISION_REFUGIO(revision_refugio_id,diagnostico,foto,refugio_id,empleado_id) VALUES (revision_refugio_seq.nextval, 'Duis ultricies, purus sit amet mollis lacinia, mi nibh cursus purus, mattis venenatis felis nulla eget nisi. Morbi convallis enim ac velit posuere, vitae fringilla purus convallis.', empty_blob(), 7, 7);
INSERT INTO REVISION_REFUGIO(revision_refugio_id,diagnostico,foto,refugio_id,empleado_id) VALUES (revision_refugio_seq.nextval, 'Sed vitae ligula ac lorem sodales ullamcorper. Etiam accumsan, felis quis vestibulum sagittis, nisi tortor consectetur mi, et vulputate enim leo a dui.', empty_blob(), 8, 8);
INSERT INTO REVISION_REFUGIO(revision_refugio_id,diagnostico,foto,refugio_id,empleado_id) VALUES (revision_refugio_seq.nextval, 'Nulla. Donec quis justo elit. Nam eget congue augue. Curabitur ultrices eros vel dignissim commodo. Ut augue lorem, auctor ut lacus et, maximus dignissim odio. Ut vel nisl ut ex posuere ultricies.', empty_blob(), 9, 9);
INSERT INTO REVISION_REFUGIO(revision_refugio_id,diagnostico,foto,refugio_id,empleado_id) VALUES (revision_refugio_seq.nextval, 'Pellentesque aliquam mauris vel urna cursus tincidunt. Fusce euismod fringilla felis, vestibulum porttitor lorem blandit sit amet. Vivamus quis libero eget mauris bibendum mollis.', empty_blob(), 10, 10);


-- CLIENTE 
INSERT INTO CLIENTE(cliente_id,nombre,apellido_paterno,apellido_materno,direccion,ocupacion,username,password) VALUES (cliente_seq.nextval, 'Glauco', 'Roselló', 'Bermejo', ' FELIX PARRA 68 LOC B, SAN JOSE INSURGENTES , BENITO JUAREZ , DF , C.P.03900 ', 'Guardespaldas', 'Glauc098', 'contraseña');
INSERT INTO CLIENTE(cliente_id,nombre,apellido_paterno,apellido_materno,direccion,ocupacion,username,password) VALUES (cliente_seq.nextval, 'Adelaida', 'Carlos', 'Jimenez', ' MANUEL VILLALONGIN 160, CUAUHTEMOC , CUAUHTEMOC , DF , C.P.06500 ', 'Administrador', 'Carlitos123', '123');
INSERT INTO CLIENTE(cliente_id,nombre,apellido_paterno,apellido_materno,direccion,ocupacion,username,password) VALUES (cliente_seq.nextval, 'Clemente', 'Orozco', 'Barbero', ' CALZADA DE GUADALUPE 711, EL CERRITO , CUAUTITLAN , MEX , C.P.54879 ', 'Ama de casa', 'Clementitos098', 'clementina');
INSERT INTO CLIENTE(cliente_id,nombre,apellido_paterno,apellido_materno,direccion,ocupacion,username,password) VALUES (cliente_seq.nextval, 'Aránzazu', 'Valero', 'Céspedes', ' AV. BAJA CALIFORNIA 274 PISO 2 B, HIPODROMO , CUAUHTEMOC , DF , C.P.06100 ', 'Maestro de Universidad', 'Valerio4356', '12345');
INSERT INTO CLIENTE(cliente_id,nombre,apellido_paterno,apellido_materno,direccion,ocupacion,username,password) VALUES (cliente_seq.nextval, 'Ileana', 'Barba', 'Casanovas', 'SUR 111, SECTOR POPULAR , DF , C.P.', 'Cantante', 'Barbara7234', 'barbarita09');
INSERT INTO CLIENTE(cliente_id,nombre,apellido_paterno,apellido_materno,direccion,ocupacion,username,password) VALUES (cliente_seq.nextval, 'Áurea', 'Barragán', 'Bayona', ' PERALVILLO 95, MORELOS , CUAUHTEMOC , DF , C.P.06200 ', 'Escritor', 'barraganes1', 'barreira');
INSERT INTO CLIENTE(cliente_id,nombre,apellido_paterno,apellido_materno,direccion,ocupacion,username,password) VALUES (cliente_seq.nextval, 'Irene', 'Gallardo', 'Arroyo', ' VIA MORELOS 377, PRO REVOLUCION , ECATEPEC DE MORELOS , MEX , C.P.55100 ', 'Bomberos', 'irene11', 'irenitas32');
INSERT INTO CLIENTE(cliente_id,nombre,apellido_paterno,apellido_materno,direccion,ocupacion,username,password) VALUES (cliente_seq.nextval, 'Álvaro', 'Santana', 'Ballesteros', ' 623 229, SAN JUAN DE ARAGON IV SECCION , GUSTAVO A. MADERO , DF , C.P.07979 ', 'Ladrón', '098Santanita', 'satanas');
INSERT INTO CLIENTE(cliente_id,nombre,apellido_paterno,apellido_materno,direccion,ocupacion,username,password) VALUES (cliente_seq.nextval, 'Ámbar', 'Vergara', 'Cañizares', ' DEL MAZO ESQ COVARRUBIAS MZ 101 LT 3, NIÑOS HEROES I SECCION , VALLE DE CHALCO SOLIDARIDAD , MEX , C.P.56610 ', 'Oficinista', 'ambar13', 'notengoContraseña123');
INSERT INTO CLIENTE(cliente_id,nombre,apellido_paterno,apellido_materno,direccion,ocupacion,username,password) VALUES (cliente_seq.nextval, 'Belén', 'Olivares', 'Daza', ' AVE IGNACIO MORONES PRIETO 27, BUENOS AIRES , CUAUHTEMOC , DF , C.P.06720 ', 'Recepcionista', 'Belenitas', 'campanasDeBelen01');
--trigger
INSERT INTO CLIENTE(cliente_id,nombre,apellido_paterno,apellido_materno,direccion,ocupacion,username,password) VALUES (cliente_seq.nextval, 'Marcos', 'Olivares', 'Hernandez', ' AVE IGNACIO MORONES PRIETO 29, VALLE DEL SUR , CUAUHTEMOC , DF , C.P.06720 ', 'ING. COMPUTACION', 'marquitos', 'campanasDeBelen04');
--DONATIVO
insert into donativo (donativo_id, monto_donativo, fecha_donativo, cliente_id) values (donativo_seq.nextval,10701.20,to_date('22-12-2018','dd/mm/yyyy'), 3);
insert into donativo (donativo_id, monto_donativo, fecha_donativo, cliente_id) values (donativo_seq.nextval,8355.50,to_date('02-12-2020','dd/mm/yyyy'),5);
insert into donativo (donativo_id, monto_donativo, fecha_donativo, cliente_id) values (donativo_seq.nextval,7694.85,to_date('22-11-2018','dd/mm/yyyy'),3);
insert into donativo (donativo_id, monto_donativo, fecha_donativo, cliente_id) values (donativo_seq.nextval,5000.00,to_date('23-01-2018','dd/mm/yyyy'),2);
insert into donativo (donativo_id, monto_donativo, fecha_donativo, cliente_id) values (donativo_seq.nextval,150.00,to_date('08-11-2021','dd/mm/yyyy'),2);
insert into donativo (donativo_id, monto_donativo, fecha_donativo, cliente_id) values (donativo_seq.nextval,850.66,to_date('04-08-2017','dd/mm/yyyy'),9);
insert into donativo (donativo_id, monto_donativo, fecha_donativo, cliente_id) values (donativo_seq.nextval,4500.00,to_date('25-04-2018','dd/mm/yyyy'),6);
insert into donativo (donativo_id, monto_donativo, fecha_donativo, cliente_id) values (donativo_seq.nextval,1503.63,to_date('19-07-2013','dd/mm/yyyy'),4);
insert into donativo (donativo_id, monto_donativo, fecha_donativo, cliente_id) values (donativo_seq.nextval,7586.35,to_date('05-04-2020','dd/mm/yyyy'),8);
insert into donativo (donativo_id, monto_donativo, fecha_donativo, cliente_id) values (donativo_seq.nextval,15000.75,to_date('14-07-2014','dd/mm/yyyy'),7);

--ORIGEN_MASCOTA
insert into origen_mascota (origen_mascota_id, nombre_origen) values (origen_mascota_seq.nextval, 'NACIDA_EN_CAUTIVERIO');
insert into origen_mascota (origen_mascota_id, nombre_origen) values (origen_mascota_seq.nextval, 'DONADA');
insert into origen_mascota (origen_mascota_id, nombre_origen) values (origen_mascota_seq.nextval, 'ABANDONADA');

--TIPO_MASCOTA
insert into tipo_mascota (tipo_mascota_id, nombre_tipo, nivel_cuidado,subcategoria) values (tipo_mascota_seq.nextval,'ave',3,'canario');
insert into tipo_mascota (tipo_mascota_id, nombre_tipo, nivel_cuidado,subcategoria) values (tipo_mascota_seq.nextval,'perro',2,'salchicha');
insert into tipo_mascota (tipo_mascota_id, nombre_tipo, nivel_cuidado,subcategoria) values (tipo_mascota_seq.nextval,'perro',4,'gran danés');
insert into tipo_mascota (tipo_mascota_id, nombre_tipo, nivel_cuidado,subcategoria) values (tipo_mascota_seq.nextval,'gato',3,'ocicat');
insert into tipo_mascota (tipo_mascota_id, nombre_tipo, nivel_cuidado,subcategoria) values (tipo_mascota_seq.nextval,'ave',1,'perico');
insert into tipo_mascota (tipo_mascota_id, nombre_tipo, nivel_cuidado,subcategoria) values (tipo_mascota_seq.nextval,'gato',4,'egipcio');
insert into tipo_mascota (tipo_mascota_id, nombre_tipo, nivel_cuidado,subcategoria) values (tipo_mascota_seq.nextval,'perro',2,'chihuahua');
insert into tipo_mascota (tipo_mascota_id, nombre_tipo, nivel_cuidado,subcategoria) values (tipo_mascota_seq.nextval,'perro',1,'poodle');
insert into tipo_mascota (tipo_mascota_id, nombre_tipo, nivel_cuidado,subcategoria) values (tipo_mascota_seq.nextval,'pez',5,'beta');
insert into tipo_mascota (tipo_mascota_id, nombre_tipo, nivel_cuidado,subcategoria) values (tipo_mascota_seq.nextval,'conejo',2,'belier');

-- ESTATUS MASCOTA
INSERT INTO ESTATUS_MASCOTA(estatus_mascota_id,descripcion) VALUES (estatus_mascota_seq.nextval, 'EN_REFUGIO');
INSERT INTO ESTATUS_MASCOTA(estatus_mascota_id,descripcion) VALUES (estatus_mascota_seq.nextval, 'DISPONIBLE_PARA_ADOPCION');
INSERT INTO ESTATUS_MASCOTA(estatus_mascota_id,descripcion) VALUES (estatus_mascota_seq.nextval, 'SOLICITADA_PARA_ADOPCION');
INSERT INTO ESTATUS_MASCOTA(estatus_mascota_id,descripcion) VALUES (estatus_mascota_seq.nextval, 'ADOPTADA');
INSERT INTO ESTATUS_MASCOTA(estatus_mascota_id,descripcion) VALUES (estatus_mascota_seq.nextval, 'ENFERMA');
INSERT INTO ESTATUS_MASCOTA(estatus_mascota_id,descripcion) VALUES (estatus_mascota_seq.nextval, 'FALLECIDA_EN_REFUGIO');
INSERT INTO ESTATUS_MASCOTA(estatus_mascota_id,descripcion) VALUES (estatus_mascota_seq.nextval, 'FALLECIDA_EN_HOGAR');


--MASCOTA
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Kiko', 'QEHD4132',to_date('04/20/2013','mm/dd/yyyy'), to_date('04/08/2010','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,null,null,null,11,2,2,11,null);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Milo', 'KSIR5743',to_date('12/02/2019','mm/dd/yyyy'), to_date('10/29/2018','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,null,null,null,2,3,5,2,5);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Brutus', 'NVIR4532',to_date('12/28/2020','mm/dd/yyyy'), to_date('01/08/2020','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,null,null,null,3,4,3,3,null);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Herbie', 'UNDF8367',to_date('04/08/2017','mm/dd/yyyy'), to_date('05/18/2016','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,null,null,null,4,2,5,4,9);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Talkie', 'POFI9305',to_date('09/10/2012','mm/dd/yyyy'), to_date('04/10/2010','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,null,null,null,5,2,4,4,null);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Mohammad','KGIR8364',to_date('02/05/2021','mm/dd/yyyy'), to_date('03/22/2021','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,null,null,null,6,3,4,6,null);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Loki', 'BSTE2341',to_date('05/06/2019','mm/dd/yyyy'), to_date('09/28/2009','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,null,null,null,7,4,2,7,null);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Dever', 'FHRU9285',to_date('07/16/2013','mm/dd/yyyy'), to_date('11/12/2010','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,null,null,null,8,2,2,8,null);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Alpha', 'BNVY8288',to_date('08/08/2018','mm/dd/yyyy'), to_date('07/07/2017','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,null,null,null,9,3,2,9,null);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Bad Bunny', 'QKGN1978',to_date('06/20/2012','mm/dd/yyyy'), to_date('04/08/2010','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,null,null,null,10,4,2,10,null);
--trigger

insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Bad Bunny', 'QKGN1910',to_date('06/20/2012','mm/dd/yyyy'), to_date('06/20/2012','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,sysdate,null,null,10,4,5,10,null);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Good Bunny', 'QKGN1911',to_date('06/20/2012','mm/dd/yyyy'), to_date('06/20/2012','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,sysdate,null,null,10,4,5,10,null);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Balvin', 'QKGN1912',to_date('06/20/2012','mm/dd/yyyy'), to_date('06/20/2012','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,sysdate,null,null,10,4,5,10,null);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Rosa', 'QKGN1913',to_date('06/20/2012','mm/dd/yyyy'), to_date('06/20/2012','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,sysdate,null,null,10,4,5,10,null);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Raw', 'QKGN1914',to_date('06/20/2012','mm/dd/yyyy'), to_date('06/20/2012','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,sysdate,null,null,10,4,5,10,null);
insert into mascota (mascota_id,nombre,folio,fecha_ingreso,fecha_nacimiento,fecha_status,descripcion_muerte,fecha_adopcion,mascota_padre,mascota_madre,tipo_mascota_id,origen_mascota_id,estatus_mascota_id, refugio_id,cliente_donacion_id) 
  values (mascota_seq.nextval, 'Sesh', 'QKGN1915',to_date('06/20/2012','mm/dd/yyyy'), to_date('06/20/2012','mm/dd/yyyy'), to_date('01/15/2022','mm/dd/yyyy'),null,sysdate,null,null,10,4,5,10,null);

-- HISTORICO ESTATUS MASCOTA
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('04/16/2021','mm/dd/yyyy'), 5, 2);
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('05/30/2021','mm/dd/yyyy'), 4, 2);
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('06/28/2021','mm/dd/yyyy'), 2, 2);
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('06/29/2021','mm/dd/yyyy'), 3, 2);
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('11/21/2021','mm/dd/yyyy'), 3, 4);
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('07/02/2021','mm/dd/yyyy'), 2, 11);
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('03/18/2021','mm/dd/yyyy'), 2, 3);
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('09/26/2021','mm/dd/yyyy'), 2, 5);
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('02/27/2021','mm/dd/yyyy'), 2, 6);
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('11/21/2021','mm/dd/yyyy'), 2, 7);
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('11/10/2021','mm/dd/yyyy'), 2, 8);
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('11/09/2021','mm/dd/yyyy'), 2, 9);
INSERT INTO HISTORICO_ESTATUS_MASCOTA(historico_estatus_mascota_id,fecha_status,estatus_mascota_id,mascota_id) VALUES (historico_estatus_mascota_seq.nextval, to_date('11/10/2021','mm/dd/yyyy'), 2, 10);

-- SOLICITUD DE MASCOTA 
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('10/07/2021','mm/dd/yyyy'), 'NO tiene una casa propia, por lo que no se puede adoptar la mascota', 0, 11, 2);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('10/30/2021','mm/dd/yyyy'), 'Tiene muchas mascotas en casa, no es posible adoptar una más', 0, 2, 2);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('10/21/2021','mm/dd/yyyy'), 'Al ser su primera mascota es muy dificil que le proporciones una para adoptar', 0, 3, 2);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('10/08/2021','mm/dd/yyyy'), 'No tiene el espacio requerido para adoptar esta mascota', 0, 4, 2);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('10/23/2021','mm/dd/yyyy'), null, 1, 5, 2);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('01/05/2022','mm/dd/yyyy'), 'Usted ya adoptó una mascota, solo es posible tener por vivienda', 0, 5, 4);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('01/22/2022','mm/dd/yyyy'), 'Cuenta con un numero de exceso de niños y mascotas, no es posible adoptar otra mas', 0, 6, 4);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('01/02/2022','mm/dd/yyyy'), 'Usted tiene un historial criminal acerca del trato de mascotas, no puedo adoptar', 0, 7, 4);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('01/20/2022','mm/dd/yyyy'), 'NO tiene una casa propia, por lo que no se puede adoptar la mascota', 0, 8, 4);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('01/07/2022','mm/dd/yyyy'), null, 1, 9, 4);
--trigger
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('12/07/2021','mm/dd/yyyy'), null, 1, 12, 12);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('12/07/2021','mm/dd/yyyy'), null, 1, 12, 13);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('12/07/2021','mm/dd/yyyy'), null, 1, 12, 14);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('12/07/2021','mm/dd/yyyy'), null, 1, 12, 15);
INSERT INTO SOLICITUD_MASCOTA(solicitud_mascota_id,fecha_solicitud,descripcion_rechazo,solicitud_ganadora,cliente_id,mascota_id) VALUES(solicitud_mascota_seq.nextval, to_date('12/07/2021','mm/dd/yyyy'), null, 1, 12, 16);


-- REVISION ADOPCION
INSERT INTO REVISION_ADOPCION(numero_revision,mascota_id,fecha_revision,observaciones,calificacion,costo,centro_operativo_id) VALUES(revision_adopcion_seq.nextval, 11, to_date('06/06/2020','mm/dd/yyyy'), 'La mascota cuenta con un estado de salud delicado debido a su edad', 6, 2500.50, 11);
INSERT INTO REVISION_ADOPCION(numero_revision,mascota_id,fecha_revision,observaciones,calificacion,costo,centro_operativo_id) VALUES(revision_adopcion_seq.nextval, 2, to_date('03/22/2021','mm/dd/yyyy'), 'La mascota cuenta con un estado de salud muy bueno', 10, 500.00, 2);
INSERT INTO REVISION_ADOPCION(numero_revision,mascota_id,fecha_revision,observaciones,calificacion,costo,centro_operativo_id) VALUES(revision_adopcion_seq.nextval, 3, to_date('07/30/2020','mm/dd/yyyy'), 'La mascota cuenta con una contractura en la pata izquierda', 8, 14500.23, 3);
INSERT INTO REVISION_ADOPCION(numero_revision,mascota_id,fecha_revision,observaciones,calificacion,costo,centro_operativo_id) VALUES(revision_adopcion_seq.nextval, 4, to_date('01/23/2021','mm/dd/yyyy'), 'La mascota presenta malestar en el estomago', 8, 900.50, 4);
INSERT INTO REVISION_ADOPCION(numero_revision,mascota_id,fecha_revision,observaciones,calificacion,costo,centro_operativo_id) VALUES(revision_adopcion_seq.nextval, 5, to_date('11/25/2021','mm/dd/yyyy'), 'La mascota no presenta ningun problema', 10, 400.00, 5);
INSERT INTO REVISION_ADOPCION(numero_revision,mascota_id,fecha_revision,observaciones,calificacion,costo,centro_operativo_id) VALUES(revision_adopcion_seq.nextval, 6, to_date('07/30/2020','mm/dd/yyyy'), 'La mascota no ve bien, debido a su edad. Se enviará tratamiento en casa', 2, 10500.50, 6);
INSERT INTO REVISION_ADOPCION(numero_revision,mascota_id,fecha_revision,observaciones,calificacion,costo,centro_operativo_id) VALUES(revision_adopcion_seq.nextval, 7, to_date('12/15/2020','mm/dd/yyyy'), 'No comer croquetas durante 3 días, guardar reposo', 7, 900.09, 7);
INSERT INTO REVISION_ADOPCION(numero_revision,mascota_id,fecha_revision,observaciones,calificacion,costo,centro_operativo_id) VALUES(revision_adopcion_seq.nextval, 8, to_date('06/12/2020','mm/dd/yyyy'), 'La mascota no presenta ningún malestar', 10, 199.99, 8);
INSERT INTO REVISION_ADOPCION(numero_revision,mascota_id,fecha_revision,observaciones,calificacion,costo,centro_operativo_id) VALUES(revision_adopcion_seq.nextval, 9, to_date('05/18/2020','mm/dd/yyyy'), 'Tomar gentamecino de 100ml para perro por diez días.',6, 15000.00, 9);
INSERT INTO REVISION_ADOPCION(numero_revision,mascota_id,fecha_revision,observaciones,calificacion,costo,centro_operativo_id) VALUES(revision_adopcion_seq.nextval, 10, to_date('08/05/2021','mm/dd/yyyy'), 'Aplicar refuerzo de vacuna contra covid para perro en dos meses', 10, 4999.29, 10);
