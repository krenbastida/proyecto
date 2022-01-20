--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 04/01/2022
--@Descripción: Este script contiene los sinonimos para el proyecto
--clear screen

--rollback;

--connect bvgb_proy_admin/bvgb;

-- Creacion de sinónimos públicos
create or replace public synonym animal for mascota;
create or replace public synonym seleccion for solicitud_mascota;
create or replace public synonym donacion for donativo;

--Tablas con prefijo para software, bloque anonimo y cursor

declare

cursor cur_tablas is
  select table_name
  from user_tables;
  

begin 
  for a in cur_tablas loop
    execute immediate 
    'create or replace synonym PH_'||a.table_name||' for '||a.table_name;
  end loop;
end;
/




connect sys/system as sysdba;
-- Otorgando permisos de lectura a invitado
grant select on bvgb_proy_admin.empleado to bvgb_proy_invitado;
grant select on bvgb_proy_admin.centro_operativo to bvgb_proy_invitado;
grant select on bvgb_proy_admin.refugio to bvgb_proy_invitado;

grant create synonym to bvgb_proy_invitado;

connect bvgb_proy_invitado/bvgb;

-- Creando sinónimos privados
create or replace synonym empleado for bvgb_proy_admin.empleado;
create or replace synonym centro_operativo
for bvgb_proy_admin.centro_operativo;
create or replace synonym refugio for bvgb_proy_admin.refugio;


connect bvgb_proy_admin/bvgb;
