--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 17/01/2022 
--@Descripción: Creación de función para generar folios.

set serveroutput on
create or replace function folio
return varchar2 is


v_folio_mascota varchar2(8);
v_alpha varchar2(4);
v_numeric number(4,0);


begin

  v_alpha := dbms_random.string('U', 4); 
  v_numeric := dbms_random.value(1111,9999);
  v_folio_mascota := v_alpha || v_numeric;
--DBMS_RANDOM.TERMINATE;  This procedure is deprecated. Although currently supported, 
--it should not be used. It would be called when the user is finished with the package.  

  return v_folio_mascota;
end;
/
show errors
