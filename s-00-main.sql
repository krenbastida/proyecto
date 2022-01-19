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

Prompt Creando trigger
@s-11-tr-maximo-mascotas.sql

Prompt Prueba trigger
@s-12-maximo-mascotas-prueba.sql