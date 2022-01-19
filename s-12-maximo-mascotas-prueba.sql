--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 16/01/2022 
--@Descripción: Creación de prueba no permite adoptar mas de cinco mascotas

--clear screen
--connect bvgb_proy_admin/bvgb;

set serveroutput on
declare
  v_solicitud_mascota_id solicitud_mascota.solicitud_mascota_id%type;
  v_fecha_solicitud date := SYSDATE;
  v_descripcion_rechazo varchar2(150) := null;
  v_solicitud_ganadora number(1) := 1;
  v_cliente_id number(5) := 12;
  v_mascota_id number(7) := 17;
  v_cuenta number(1);
  
begin
  
  select solicitud_mascota_seq.nextval into v_solicitud_mascota_id from dual;
   dbms_output.put_line('Inserción para verificar que no se puede adoptar más de 5 mascotas por un mismo cliente '
   || v_solicitud_mascota_id ||' ,'
   || v_fecha_solicitud || ' ,'
   || v_descripcion_rechazo || ' ,'
   || v_solicitud_ganadora || ' ,'
   || v_cliente_id || ' ,'
   || v_mascota_id || ' ,');

 exception
    when others then
    
  dbms_output.put_line(v_cuenta);
end;
/