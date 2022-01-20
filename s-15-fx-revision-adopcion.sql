--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 15/01/2022 
--@Descripción: Creación de una funcion

create or replace function fx_revision_adopcion(
  p_mascota_id number
)return number is

cursor cur_calcula_revision is 
select * from revision_adopcion
where mascota_id = p_mascota_id;

v_numero_revision number (5,0);
v_mascota_id number(7,0);
v_costo number(7,2);
v_count number(1) := 0;

begin

  select costo into v_costo
  from revision_adopcion
  where mascota_id = p_mascota_id
  and numero_revision = 3;

  for c in cur_calcula_revision loop
    v_count := v_count + 1;
    if v_count = 3 then
      v_costo := v_costo - (v_costo * 0.35);
    end if;
  end loop;

  return v_costo;

end;
/
show errors