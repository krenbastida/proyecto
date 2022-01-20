--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 03/01/2022
--@Descripción: Se crean tablas temporales para simular una situacion en donde
--se ocupan
--clear screen

set serveroutput on
create or replace procedure pr_centro_operativo (
  p_centro_operativo_id in number, 
  p_codigo in varchar2,
  p_nombre_centro in varchar2,
  p_direccion in varchar2,
  p_longitud in number,
  p_latitud in number,
  p_es_clinica in number,
  p_es_refugio in number,
  p_es_oficina in number,
  --REFUGIO
  --p_centro_operativo_id
  p_numero_registro in varchar2,
  p_capacidad in number,
  p_logo in blob,
  p_lema in varchar2,
  p_refugio_alterno_id in number,
  --REFUGIO_DIRECCION_WEB
  p_refugio_direccion_web_id in number,
  p_direccion_web varchar2,
  --p_centro_operativo_id

  --CLINICA
  --p_centro_operativo_id,
  p_hora_inicio in date,
  p_hora_fin in date,
  p_telefono_atencion_clientes in number,
  p_telefono_emergencia in number,

  --OFINICA
  --p_centro_operativo_id,
  p_rfc in varchar2,
  p_firma_electronica in blob,
  p_nombre in varchar2,
  p_apellido_paterno in varchar2,
  p_apellido_materno in varchar2
) is

begin
  insert into centro_operativo values(p_centro_operativo_id, p_codigo, p_nombre_centro, 
    p_direccion, p_longitud, p_latitud, p_es_clinica, p_es_refugio, p_es_oficina);

--REFUGIO

  if p_es_refugio = 1 then
    insert into refugio values (p_centro_operativo_id, p_numero_registro, p_capacidad, p_logo,
      p_lema, p_refugio_alterno_id);
  end if;

  if p_es_refugio = 1 then
    insert into refugio_direccion_web values (p_refugio_direccion_web_id, p_direccion_web, p_centro_operativo_id);
  end if;

--CLINICA
  if p_es_clinica = 1 then
    insert into clinica values (p_centro_operativo_id, p_hora_inicio, p_hora_fin, p_telefono_atencion_clientes, 
      p_telefono_emergencia);
  end if;
  --OFICINA
  if p_es_oficina = 1 then
    insert into oficina values (p_centro_operativo_id, p_rfc, p_firma_electronica, p_nombre, p_apellido_materno,
      p_apellido_paterno);
  end if;
end;
/
show errors