--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 18/01/2022 
--@Descripción: Creación de la prueba de la función para generar folios.

set serveroutput on
declare

  v_folio_aleatorio mascota.folio%type;


begin

  v_folio_aleatorio := folio();
  dbms_output.put_line('El folio de la mascota que llegó al refugio es: ' 
  || v_folio_aleatorio);

end;
/
show errors