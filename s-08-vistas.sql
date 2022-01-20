--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 04/01/2022
--@Descripción: Script para crear vistas.

--clear screen
--rollback;
--connect bvgb_proy_admin/bvgb;

-- Esta vista es generada para poder acceder a ver las mascotas. Ocultamos 
-- columnas que por lo regular no es necesario conocer.
create or replace view v_mascota(
  mascota_id, nombre, fecha_nacimiento, nombre_tipo, nivel_cuidado, subcategoria
) as select mascota_id, nombre, fecha_nacimiento, nombre_tipo, nivel_cuidado, subcategoria
from mascota m, tipo_mascota tm
where tm.tipo_mascota_id = m.tipo_mascota_id;

-- Esta vista es generada para saber en que centro operativo está trabajando
-- así como ver a que se dedica
create or replace view v_empleado(
  empleado_id, nombre, apellido_paterno, email, codigo, direccion
) as select empleado_id, e.nombre, apellido_paterno, email, codigo, direccion
from empleado e, centro_operativo co
where e.centro_operativo_id = co.centro_operativo_id;

-- Esta vista es generada para quitar el username y password del cliente 
create or replace view v_cliente(
  cliente_id, nombre, direccion, ocupacion
)as select cliente_id, nombre, direccion, ocupacion
from cliente c;

connect sys/system as sysdba;

grant select on bvgb_proy_admin.v_cliente to bvgb_proy_invitado;

connect bvgb_proy_admin/bvgb;


