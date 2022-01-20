--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 18/01/2022
--@Descripción: Se crea la prueba para el procedimiento para 
--ingresar un centro operativo nuevo

set serveroutput on
declare
  p_centro_operativo_id centro_operativo.centro_operativo_id%type; 
  p_codigo centro_operativo.codigo%type;
  p_nombre_centro centro_operativo.nombre%type; 
  p_direccion centro_operativo.direccion%type;
  p_longitud centro_operativo.longitud%type;
  p_latitud centro_operativo.latitud%type;
  p_es_clinica centro_operativo.es_clinica%type;
  p_es_refugio centro_operativo.es_refugio%type;
  p_es_oficina centro_operativo.es_oficina%type;
  --REFUGIO
  --p_centro_operativo_id
  p_numero_registro refugio.numero_registro%type;
  p_capacidad refugio.capacidad%type;
  p_logo refugio.logo%type;
  p_lema refugio.lema%type;
  p_refugio_alterno_id refugio.refugio_alterno_id%type;
  --REFUGIO_DIRECCION_WEB
  p_refugio_direccion_web_id refugio_direccion_web.refugio_direccion_web_id%type;
  p_direccion_web refugio_direccion_web.direccion_web%type;
  --p_centro_operativo_id

  --CLINICA
  --p_centro_operativo_id,
  p_hora_inicio clinica.hora_inicio%type;
  p_hora_fin clinica.hora_fin%type;
  p_telefono_atencion_clientes clinica.telefono_atencion_clientes%type;
  p_telefono_emergencia clinica.telefono_emergencia%type;

  --OFINICA
  --p_centro_operativo_id,
  p_rfc oficina.rfc%type;
  p_firma_electronica oficina.firma_electronica%type;
  p_nombre oficina.nombre%type;
  p_apellido_paterno oficina.apellido_paterno%type;
  p_apellido_materno oficina.apellido_materno%type;

  v_count_insert number(3,0) := 0;
  v_count_otro number(3,0) := 0;

begin

  select centro_operativo_seq.nextval into p_centro_operativo_id from dual;
  select refugio_direccion_web_seq.nextval into p_refugio_direccion_web_id from dual;
  --CENTRO_OPERATIVO
  p_codigo := 'GUFJ2';
  p_nombre_centro := 'Corazón';
  p_direccion := '72 W 17TH, BAYONNE, NJ, 07002-2675, USA';
  p_longitud := 63562812.64;
  p_latitud := 22021222.60;
  p_es_clinica := 1;
  p_es_refugio := 1;
  p_es_oficina := 0;
  --REFUGIO
  --p_centro_operativo_id
  p_numero_registro := 'ETYLKDAU';
  p_capacidad := 500;
  p_logo := empty_blob();
  p_lema := 'LO MEJOR ES DAR ANTES DE RECIBIR';
  p_refugio_alterno_id := null;
  --REFUGIO_DIRECCION_WEB
  p_direccion_web := 'corazon.refugio@mail.com';
  --p_centro_operativo_id

  --CLINICA
  --p_centro_operativo_id,
  p_hora_inicio := to_date('08:00:00','hh24:mi:ss');
  p_hora_fin := to_date('19:00:00','hh24:mi:ss');
  p_telefono_atencion_clientes := 6574893210;
  p_telefono_emergencia := 9113542378;

  --OFINICA
  --p_centro_operativo_id,
  p_rfc := null;
  p_firma_electronica := null;
  p_nombre := null;
  p_apellido_paterno := null;
  p_apellido_materno := null;

  dbms_output.put_line('Insertando en las tablas'); 
  
  pr_centro_operativo(p_centro_operativo_id, p_codigo, p_nombre_centro,p_direccion,p_longitud,p_latitud,
    p_es_clinica,p_es_refugio,p_es_oficina,p_numero_registro,p_capacidad,p_logo,p_lema,p_refugio_alterno_id,
    p_refugio_direccion_web_id,p_direccion_web,p_hora_inicio,p_hora_fin,p_telefono_atencion_clientes,
    p_telefono_emergencia,p_rfc,p_firma_electronica,p_nombre,p_apellido_paterno,p_apellido_materno);

select count(*) into v_count_insert
  from centro_operativo co
  join refugio r
  on co.centro_operativo_id = r.centro_operativo_id
  join refugio_direccion_web rdw
  on r.centro_operativo_id = rdw.centro_operativo_id
  join clinica c
  on rdw.centro_operativo_id = c.centro_operativo_id
  where co.centro_operativo_id = p_centro_operativo_id;


  if v_count_insert = 1 then
    select count(*) into v_count_otro
    from centro_operativo co
    join oficina o
    on co.centro_operativo_id = o.centro_operativo_id
    where co.centro_operativo_id = p_centro_operativo_id;
  end if;

  if v_count_otro = 0 then
    dbms_output.put_line('El centro operativo fue insertado con éxito con el id: '
    || p_centro_operativo_id);
  else
    dbms_output.put_line('NO SE INSERTO EL CENTRO CORRECTAMENTE');
  end if;
end;
/
show errors