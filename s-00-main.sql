--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 04/01/2022
--@Descripción: Este script contiene la ejecucion inicial de todos los scripts

--whenever sqlerror exit rollback;

connect sys/system as sysdba;

prompt Creando usuarios
@s-01-usuarios.sql

Prompt Conectando al usuario administrador
connect bvgb_proy_admin/bvgb;

prompt Creando las tablas
@s-02-entidades.sql

prompt Creando tablas temporales
@s-03-tablas-temporales.sql

prompt Creando secuencias
@s-05-secuencias.sql

prompt Creando tabla externa
@s-04-tablas-externas.sql

prompt Creando indices
@s-06-indices.sql

prompt Creando sinonimos
@s-07-sinonimos.sql

promp Creando vistas
@s-08-vistas.sql

prompt Poblando la base
@s-09-carga-inicial.sql

Prompt consultas
@s-10-consultas.sql

Prompt Creando trigger
--@s-11-tr-maximo-mascotas.sql

Prompt Prueba trigger
--@s-12-maximo-mascotas-prueba.sql

Prompt Creando trigger
@s-11-tr-actualiza-historico.sql

Prompt Prueba trigger
@s-12-tr-actualiza-historico-prueba.sql

Prompt Creando trigger
@s-11-tr-consistencia-fechas.sql

Prompt Prueba trigger
@s-12-tr-consistencia-fechas-prueba.sql

Prompt Creando procedimiento
@s-13-p-refugio.sql

Prompt Probando procedimiento
@s-14-p-refugio-prueba.sql

Prompt Creando funcion folio
@s-15-fx-folio.sql

Prompt Prueba función folio
@s-16-fx-folio-prueba.sql

Prompt Creando funcion 
@s-15-fx-revision-adopcion.sql

Prompt Prueba función 
@s-16-fx-revision-adopcion-prueba.sql

Prompt Creando funcion
@s-15-fx-donativo-clinica.sql

Prompt Creando funcion
@s-15-fx-donativo-refugio.sql

Prompt Creando funcion
@s-15-fx-donativo-oficina.sql

Prompt Probando funcion
@s-16-fx-donativo-prueba.sql

Prompt Creando procedimiento
@s-13-p-centro.sql

Prompt Probando procedimiento
@s-14-p-centro-prueba.sql

Prompt Validador
@resultados-proyecto-final.sql