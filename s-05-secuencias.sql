--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 04/01/2022
--@Descripción: Se crean secuencias para insertar registros que requieren 
--valores secuenciales

--connect bvgb_proy_admin/bvgb;


--Secuencia CENTRO_OPERATIVO
create sequence centro_operativo_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;
  
--Secuencia REFUGIO 
create sequence refugio_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia REFUGIO_DIRECCION_WEB 
create sequence refugio_direccion_web_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;
  
--Secuencia CLINICA 
create sequence clinica_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia OFICINA
create sequence oficina_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia EMPLEADO
create sequence empleado_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia GRADO_ACADEMICO 
create sequence grado_academico_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia REVISION_REFUGIO
create sequence revision_refugio_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia CLIENTE 
create sequence cliente_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia DONATIVO 
create sequence donativo_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;


--Secuencia ORIGEN_MASCOTA 
create sequence origen_mascota_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia TIPO_MASCOTA 
create sequence tipo_mascota_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia ESTATUS_MASCOTA 
create sequence estatus_mascota_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia MASCOTA
create sequence mascota_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia HISTORICO_ESTATUS_MASCOTA 
create sequence historico_estatus_mascota_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia SOLICITUD_MASCOTA 
create sequence solicitud_mascota_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia REVISION_ADOPCION 
create sequence revision_adopcion_seq
  start with 2
  increment by 1
  maxvalue 99999 
  minvalue 2
  nocycle;

--Secuencia NUMERO_REVISION_ADOPCION
create sequence numero_revision_adopcion_seq
  start with 1
  increment by 1
  maxvalue 99999 
  minvalue 1
  nocycle;
