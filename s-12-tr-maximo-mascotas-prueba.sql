--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 15/01/2022 
--@Descripción: Creación de la prueba que no permite adoptar mas de cinco mascotas

set serveroutput on
declare

  v_solicitud_mascota_id solicitud_mascota.solicitud_mascota_id%type;
  v_fecha_solicitud date := SYSDATE;
  v_descripcion_rechazo varchar2(150) := null;
  v_solicitud_ganadora number(1) := 1;
  v_cliente_id number(5) := 12;
  v_mascota_id number(7) := 17;
  
begin
  select solicitud_mascota_seq.nextval into v_solicitud_mascota_id from dual;

  insert into solicitud_mascota values(v_solicitud_mascota_id,v_fecha_solicitud,
  v_descripcion_rechazo,v_solicitud_ganadora,v_cliente_id,v_mascota_id);

end;
/
show errors