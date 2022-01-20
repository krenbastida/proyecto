--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 18/01/2022 
--@Descripción: Creación de la prueba de la función para asignar 
--porcentajes del total de las donaciones a los centros_operativos 

create or replace function fx_donativo_oficina
return number is

--v_donativo donativo.monto_donativo%type;
v_co_oficina donativo.monto_donativo%type;


cursor cur_donativo_oficina is
  select  monto_donativo 
  from donativo;


begin
  for i in cur_donativo_oficina loop
    v_co_oficina := (i.monto_donativo * 0.2);
    
  end loop;
  return v_co_oficina;
end;
/
show errors