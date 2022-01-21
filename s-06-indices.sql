--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 04/01/2022
--@Descripción: Se crean índices de forma que agilize de forma eficiente
-- la búsqueda de valores en la base de datos


-- Indexando llaves foráneas
create index mascota_tipo_mascota_ix on mascota(tipo_mascota_id);
create index revision_refugio_empleado_ix on revision_refugio(empleado_id);
create index revision_refugio_refugio_id_ix on revision_refugio(refugio_id);
create index mascota_refugio_id_ix on mascota(refugio_id);
create index solicitud_mascota_cliente_id_ix on solicitud_mascota(cliente_id);
create index solicitud_mascota_mascota_id_ix on solicitud_mascota(mascota_id);
create index donativo_cliente_id_ix on donativo(cliente_id);
create index revision_adopcion_mascota_id_ix on revision_adopcion(mascota_id);
create index revision_adopcion_centro_operativo_id_ix on revision_adopcion(centro_operativo_id);
create index empleado_centro_operativo_id_ix on empleado(centro_operativo_id);
create index refugio_direccion_web_centro_operativo_id_ix on refugio_direccion_web(centro_operativo_id);

-- Creacion de índices Unique
create unique index cliente_username_iuk on cliente(username);

-- Creación de índices basados en funciones
create index mascota_nombre_ix on mascota(lower(nombre));
create index empleado_nombre_ix on empleado(lower(nombre));
create index cliente_nombre_ix on cliente(lower(nombre));