--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 18/01/2022 
--@Descripción: Creación de la prueba de la función para asignar 
--porcentajes del total de las donaciones a los centros_operativos 

create or replace function fx_donativo_clinica
return number is

--v_donativo donativo.monto_donativo%type;
v_co_clinica donativo.monto_donativo%type;


cursor cur_donativo_clinica is
  select  monto_donativo 
  from donativo;


begin
  for i in cur_donativo_clinica loop
    v_co_clinica := (i.monto_donativo * 0.4);
    
  end loop;
  return v_co_clinica;
end;
/
show errors