 --@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 15/01/2022 
--@Descripción: Creación de trigger no permite adoptar mas de cinco mascotas

set serveroutput on 
create or replace trigger tr_maximo_mascotas
for insert
on mascota
compound trigger


v_count number(1,0);
v_cliente_id number(1,0);
v_cliente_id := :old.cliente_id;

before statement is
v_solicitud_ganadora number(1,0);


begin

  select count(*) into v_count 
  from solicitud_mascota sm
  where sm.cliente_id = v_cliente_id
  and v_solicitud_ganadora = 1;

  dbms_output.put_line(v_count);

end before statement;

before each row is
  begin
    if v_count > 5 then
      raise_application_error(-20001, 'El cliente: ' 
      v_cliente_id 
      'ya adoptó más cinco mascotas no es posible adoptar mas de lo permitido');

    end if;
end before each row;
end;
/
show errors