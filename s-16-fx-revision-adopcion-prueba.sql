--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 18/01/2022 
--@Descripción: Creación de la prueba de la función para asignar 
--porcentajes del total de las donaciones a los centros_operativos 

set serveroutput on
declare 

  v_costo revision_adopcion.costo%type;
  v_mascota_id number(10,0):= 2;
  

begin

  v_costo := fx_revision_adopcion(v_mascota_id);
  dbms_output.put_line('Se obtuvo un descuento, el total a pagar ahora es: '
    || v_costo 
    || ' de la mascota con id: '
    || v_mascota_id );
end;
/