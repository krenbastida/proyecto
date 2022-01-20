--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 15/01/2022 
--@Descripción: Creación de trigger no permite adoptar mas de cinco mascotas

set serveroutput on 
create or replace trigger tr_maximo_mascotas
for insert on solicitud_mascota
compound trigger

v_cliente_id number(1,0):= :old.cliente_id;
v_num_adopciones number (1,0);

v_solicitud_ganadora number(1,0);
v_solicitud_mascota_id number(5,0) := :old.solicitud_mascota_id;
v_fecha_solicitud date := :old.fecha_solicitud; 
v_descripcion_rechazo varchar2(150):= :old.descripcion_rechazo; 
v_mascota_id number (7,0):= :old.mascota_id; 


cursor cur_solicitud_mascota is
  select  solicitud_ganadora
  from solicitud_mascota
  where solicitud_ganadora = 1
  and cliente_id = v_cliente_id;

before each row is

begin
  for i in cur_solicitud_mascota loop
    v_num_adopciones := (i.solicitud_ganadora);
  end loop;
 
  if v_num_adopciones >= 5 then
  raise_application_error(-20001,'El cliente con id: '
  || v_cliente_id
  || 'ya no puede adoptar más mascotas');
  end if;
end each row statement;
  
after statement is

begin
  insert into solicitud_mascota values(v_solicitud_mascota_id,v_fecha_solicitud,v_descripcion_rechazo,v_solicitud_ganadora,
    v_cliente_id,v_mascota_id);

end after statement;
end;
/
show errors