--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 29/12/2021
--@Descripción: Este archivo contiene la creación de usuarios para 
--el proyecto Pet Home


declare
  v_count number;
begin
  select count(*) into v_count
  from dba_users
  where username = 'BVGB_PROY_ADMIN';

  if v_count > 0 then -- Si ya existe el usuario lo borramos 
    dbms_output.put_line('Eliminando a usuario bvgb_proy_admin');
    execute immediate 'drop user bvgb_proy_admin cascade';
  end if;
  --- Para otros objetos 
end; 
/

declare
  v_count number;
begin
  select count(*) into v_count
  from dba_users
  where username = 'BVGB_PROY_INVITADO';

  if v_count > 0 then -- Si ya existe el usuario lo borramos 
    dbms_output.put_line('Eliminando a usuario bvgb_proy_invitado');
    execute immediate 'drop user bvgb_proy_invitado cascade';
  end if;
  --- Para otros objetos 
end; 
/

Prompt Creando usuarios
create user bvgb_proy_admin identified by bvgb quota unlimited on users;
create user bvgb_proy_invitado identified by bvgb quota unlimited on users;

grant create session to bvgb_proy_invitado;


Prompt Creación de los roles
drop role rol_admin;
drop role rol_invitado;

create role rol_admin;
create role rol_invitado;


Prompt Asignando permisos a los usuarios
grant create session, create table, create view,
  create sequence, create public synonym, create synonym, create procedure, 
  create trigger to rol_admin;

grant create session to rol_invitado;


Prompt Asignando roles
grant rol_admin to bvgb_proy_admin;
grant rol_invitado to bvgb_proy_invitado;

