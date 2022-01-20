--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 03/01/2022
--@Descripción: Se crean tablas temporales para simular una situacion en donde
--se ocupan
--clear screen

--connect bvgb_proy_admin/bvgb;
-- Tabla que nos sirve unicamente para lectura
--commit;
--drop procedure p_consulta_mascota;


set serveroutput on
create global temporary table consulta_mascota(
  mascota_id number(7,0),
  nombre varchar2(15), 
  folio varchar2(8), 
  fecha_nacimiento date,
  nombre_tipo varchar2(20),
  nivel_cuidado number(1,0),
  subcategoria varchar2(20)
) on commit preserve rows;

create or replace procedure p_consulta_mascota (
  folio_consulta_mascota in varchar2
) is

cursor cur_consulta_mascota is
  select m.mascota_id, m.nombre, m.folio, m.fecha_nacimiento, tm.nombre_tipo, 
    tm.nivel_cuidado, tm.subcategoria
  from mascota m
  join tipo_mascota tm on
    m.tipo_mascota_id = tm.tipo_mascota_id
  where m.folio = folio_consulta_mascota;
  
begin
  for i in cur_consulta_mascota loop
    insert into consulta_mascota 
      values (i.mascota_id, i.nombre, i.folio, i.fecha_nacimiento, i.nombre_tipo, 
        i.nivel_cuidado, i.subcategoria);
    dbms_output.put_line('Se llenó la tabla');
  end loop;
end;
/
show errors

--Prueba 
declare 
  v_folio varchar(8) := 'KSIR5743';
begin 
  
  p_consulta_mascota(v_folio);
  
end;
/