--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 18/01/2022 
--@Descripción: Creación de la prueba de la función para generar folios.

set serveroutput on
declare

  v_porcen_refugio donativo.monto_donativo%type;
  v_porcen_oficina donativo.monto_donativo%type;
  v_porcen_clinica donativo.monto_donativo%type;
begin

    v_porcen_refugio := fx_donativo_refugio();
    dbms_output.put_line('El total que le toca a los refugios es: ' 
    || v_porcen_refugio);

  v_porcen_oficina := fx_donativo_oficina();
  dbms_output.put_line('El total que le toca a las oficinas es: ' 
  || v_porcen_oficina);

  v_porcen_clinica := fx_donativo_clinica();
  dbms_output.put_line('El total que le toca a las clinicas es: ' 
  || v_porcen_clinica);

end;
/
show errors