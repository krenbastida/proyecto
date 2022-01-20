--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 19/01/2022 
--@Descripción: Creación de la prueba para el trigger que no permite poner fechas 
--anteriores de la fecha de nacimiento de las mascotas

set serveroutput on
declare 

 v_mascota_id mascota.mascota_id%type;
 v_nombre mascota.nombre%type := 'Chapulin';
 v_folio mascota.folio%type := 'DBNJ1345';
 v_fecha_ingreso mascota.fecha_ingreso%type := to_date('02/20/2012','mm/dd/yyyy');
 v_fecha_nacimiento mascota.fecha_nacimiento%type := to_date('06/20/2013','mm/dd/yyyy');
 v_fecha_status mascota.fecha_status%type := sysdate;
 v_descripcion_muerte mascota.descripcion_muerte%type := null;
 v_fecha_adopcion mascota.fecha_adopcion%type := null;
 v_mascota_padre mascota.mascota_padre%type := null;
 v_mascota_madre mascota.mascota_madre%type := null;
 v_tipo_mascota_id mascota.tipo_mascota_id%type := 10;
 v_origen_mascota_id mascota.origen_mascota_id%type := 2;
 v_estatus_mascota_id mascota.estatus_mascota_id%type := 2;
 v_refugio_id mascota.refugio_id%type := 4;
 v_cliente_donacion_id mascota.cliente_donacion_id%type := null;


begin
  select mascota_seq.nextval into v_mascota_id from dual;

  insert into mascota values (v_mascota_id,v_nombre,v_folio,v_fecha_ingreso,v_fecha_nacimiento,v_fecha_status,
    v_descripcion_muerte,v_fecha_adopcion,v_mascota_padre,v_mascota_madre,v_tipo_mascota_id,v_origen_mascota_id,
    v_estatus_mascota_id, v_refugio_id,v_cliente_donacion_id);

end;
/
show errors
