--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 04/01/2022
--@Descripción: Script para crear vistas.}

set serveroutput on
declare
  cursor cur_refugio_id is
  select centro_operativo_id
  from refugio;

begin
  for refugio in cur_refugio_id loop
    logo_refugio(refugio.centro_operativo_id);
  end loop;
end;
/