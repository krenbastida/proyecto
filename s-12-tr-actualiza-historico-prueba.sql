--@autor:Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños
--@Fecha creación: 19/01/2022
--@Descripción:En este trigger se insertan los estatus en la tabla historico_estatus_mascota

set serveroutput on

declare
  v_mascota_id mascota.mascota_id%type := 2;
  v_estatus_new mascota.estatus_mascota_id%type := 6;
    
begin
  dbms_output.put_line('Se actualizará el estado de la mascota con id: '
  || v_mascota_id);

   update mascota set estatus_mascota_id = v_estatus_new
   where mascota_id = v_mascota_id;

  dbms_output.put_line('La mascota se actualizó con éxito');
  
  --select * from historico_estatus_mascota where mascota_id = 2;

  --select estatus_mascota_id from mascota where mascota_id = 2;

end;
/
commit;
show errors