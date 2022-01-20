--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 19/01/2022 
--@Descripción: Creación de trigger que no permite foner fechas antes de la fecha de nacimiento
--de las mascotas

create or replace trigger tr_consistencia_fechas
before insert or update of fecha_nacimiento, fecha_ingreso on mascota
for each row


begin
  if :new.fecha_nacimiento > :new.fecha_ingreso then
    raise_application_error(-20001, 'Las fechas de nacimiento y de ingreso no son consistentes');
  else
    dbms_output.put_line('Registro ingresado correctamente');
  end if;
end;
/
show errors 

