--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 16/01/2022 
--@Descripción: Creación de trigger que actualiza el status de la mascota a
-- adoptada una vez que es elegido un cliente candidato

create or replace trigger actualiza_status_mascota
  after insert on mascota
  for each row 
  declare 
  v_mascota_estado_id solicitud_mascota.mascota_id%type;
  begin
    select estatus_mascota_id into v_mascota_estado_id
    from solicitud_mascota
    where mascota_id = :new.mascota_id;

    if v_mascota_estado_id = 4 then 
      update mascota set estatus_mascota_id = 5, fecha_status = :new.actualizacion_estado
      where mascota_id = :new.mascota_id;
    else 
    raise_application_error(-20011, 'No se puede actualizar el estado de la mascota, 
    actualmente tiene el estatus: '||v_mascota_estado_id);
    end if;
  end;
  /
  show errors