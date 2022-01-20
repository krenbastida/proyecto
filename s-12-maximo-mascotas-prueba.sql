--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 15/01/2022 
--@Descripción: Creación de la prueba que no permite adoptar mas de cinco mascotas


connect bvgb_proy_admin/bvgb;

set serveroutput on
declare
  v_solicitud_mascota_id solicitud_mascota.solicitud_mascota_id%type;
  v_fecha_solicitud date := SYSDATE;
  v_descripcion_rechazo varchar2(150) := null;
  v_solicitud_ganadora number(1) := 1;
  v_cliente_id number(5) := 12;
  v_mascota_id number(7) := 17;
  v_count number(1);
  
begin

  insert into solicitud_mascota values(v_solicitud_mascota_id,v_fecha_solicitud,
  v_descripcion_rechazo,v_solicitud_ganadora,v_cliente_id,v_mascota_id);

exception
when others then
  select count(*) into v_count
  from mascota
  where cliente_donacion_id = 12;

  if(v_count >= 5) then
  dbms_output.put_line('El cliente '
  || v_cliente_id 
  || 'excede el número de mascotas permitido');
  end if;  

end;
/