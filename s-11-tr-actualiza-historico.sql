--@autor:Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños
--@Fecha creación: 19/01/2022
--@Descripción:En este trigger se insertan los estatus en la tabla historico_estatus_mascota


create or replace trigger tr_actualiza_historico
  after insert or update of estatus_mascota_id on mascota
  for each row
  declare
    v_historico_estatus_mascota_id historico_estatus_mascota.historico_estatus_mascota_id%type;
    v_estatus_mascota_id mascota.estatus_mascota_id%type;
    v_fecha_status historico_estatus_mascota.fecha_status%type;
    v_mascota_id mascota.mascota_id%type;

begin
  select historico_estatus_mascota_seq.nextval into v_historico_estatus_mascota_id from dual;

  v_estatus_mascota_id := :new.estatus_mascota_id;
  v_fecha_status := :new.fecha_status;
  v_mascota_id := :new.mascota_id;

  insert into historico_estatus_mascota values(v_historico_estatus_mascota_id, v_fecha_status, v_estatus_mascota_id,v_mascota_id);
end;
/
show errors;