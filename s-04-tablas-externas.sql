--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 2/01/2022
--@Descripción: Este archivo se crean las tablas externas que se usará para 
-- el caso de estudio Pet-Home

prompt Conectando como SYSTEM
connect sys/system as sysdba 

prompt creando directorio tmp_dir
create or replace directory tmp_dir as '/tmp/bases';
--se otorgan permisos para que el usuario BVGB_PROY_ADMIN de la BD pueda leer
--el contenido del directorio
grant read, write on directory tmp_dir to BVGB_PROY_ADMIN;
prompt Contectando con usuario BVGB_PROY_ADMIN para crear la tabla externa
connect bvgb_proy_admin/bvgb

create table centro_operativo_prospecto(
  centro_operativo_id number(10,0),
  direccion varchar2(200),
  longitud number(10,0),
  latitud number (10,0),
  metros_cuadrados number(3,0),
  precio number(10,2)
)organization external(
  type oracle_loader
  default directory tmp_dir
  access parameters(
      records delimited by newline
      badfile tmp_dir:'centro_operativo_prospecto_ext_bad.log'
      logfile tmp_dir:'centro_operativo_prospecto_ext.log'
      fields terminated by ','
      lrtrim
      missing field values are null
      (
        centro_operativo_id, direccion, longitud, latitud,
        metros_cuadrados, precio
      )
  )
  location('tabla_externa.csv')
)reject limit unlimited;


prompt creando el directorio /tmp/bases en caso de no existir
!mkdir -p /tmp/bases

prompt copiando el archivo csv a /tmp/bases
!cp /media/karen/PROYS/unam-clases/bd-basicas/proyecto/tabla_externa.csv /tmp/bases
prompt cambiando permisos
!chmod 777 /tmp/bases

select * from centro_operativo_prospecto;