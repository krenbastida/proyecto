--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 15/01/2022 
--@Descripción: Creación de trigger no permite adoptar mas de cinco mascotas
--clear screen
--connect bvgb_proy_admin/bvgb;

set serveroutput on 
create or replace trigger tr_maximo_mascotas
before insert on solicitud_mascota
for each row
declare
  v_cliente_id solicitud_mascota.cliente_id%type;
  v_mascota_id solicitud_mascota.mascota_id%type;
  v_solicitud_ganadora number(1);
  v_count number(1);
begin
  v_cliente_id := :old.cliente_id;

  select count(*) into v_count 
  from solicitud_mascota sm
  where sm.cliente_id = v_cliente_id
  and v_solicitud_ganadora = 1;

  if v_count > 4 then
    raise_application_error(-20001, 'El cliente: ' 
    ||v_cliente_id 
    ||'ya adoptó más cinco mascotas no es posible adoptar mas de lo permitido');
    
  end if;
end;
/
show errors