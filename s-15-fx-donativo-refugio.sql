--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 18/01/2022 
--@Descripción: Creación de la prueba de la función para asignar 
--porcentajes del total de las donaciones a los centros_operativos 

create or replace function fx_donativo_refugio
return number is


v_donativo donativo.monto_donativo%type;
v_co_refugio donativo.monto_donativo%type;


cursor cur_donativo_refugio is
  select  monto_donativo 
  from donativo;

begin
  for i in cur_donativo_refugio loop
    v_co_refugio := (i.monto_donativo * 0.4);
    
  end loop;
  return v_co_refugio;
end;
/
show errors