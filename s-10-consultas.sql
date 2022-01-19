--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 15/01/2022 
--@Descripción: Se realiza las consultas más eficientes para la base.

--clear screen
--connect bvgb_proy_admin/bvgb;

-- CONSULTA 1 (Join, group by, subconsulta y having, subconsulta)
-- Nos devuelve todos los usuarios que han donado mas de 5000 en los refugios
select nombre, apellido_paterno, apellido_materno, ocupacion 
from cliente c 
  join (select cliente_id, sum(monto_donativo) as monto_total
    from donativo
    group by cliente_id
    having sum(monto_donativo) > 5000
    ) q1
  on q1.cliente_id = c.cliente_id;

-- CONSULTA 2 (Algebra relacional y joins)
-- Nos devuelve todas las mascotas que han sido adoptadas y que estan como
-- estatus solicitadas para adoptar

select m.mascota_id, m.nombre, m.folio, m.fecha_ingreso, m.fecha_nacimiento,
m.fecha_status, m.tipo_mascota_id, m.origen_mascota_id, m.estatus_mascota_id 
from mascota m
join estatus_mascota em
on em.estatus_mascota_id = m.estatus_mascota_id
where em.estatus_mascota_id = 5
UNION 
select m.mascota_id, m.nombre, m.folio, m.fecha_ingreso, m.fecha_nacimiento,
m.fecha_status, m.tipo_mascota_id, m.origen_mascota_id, m.estatus_mascota_id 
from mascota m
where m.estatus_mascota_id = 4;
/*
-- CONSULTA 3 (Tabla externa)
-- Nos devuelve informacion acerca de aquellos centros operativos prospectos con 
-- un valor menor o igual a 1 melon
select direccion, longitud, latitud, precio
from centro_operativo_prospecto cop
where cop.precio <= 1000000;
*/


-- CONSULTA 4 (Se usa vistas y joins)
-- Se hace una consulta con la vista empleado donde se muestra aquellos que 
-- tienen una fecha de titulacion después del 2020.
select nombre, apellido_paterno, email
from v_empleado ve
join grado_academico ga
on ve.empleado_id = ga.empleado_id
where fecha_titulacion >= to_date('01/01/2021', 'dd/mm/yyyy');

--CONSULTA 5 (Se usan sinonimos y join)
--Esta consulta nos muestra los donativos mayores a 5000 y la mascota que fue
--adoptada gracias a esa donacion
select * from animal a
join donacion d
  on d.cliente_id = a.cliente_donacion_id
where d.monto_donativo >= 5000;

