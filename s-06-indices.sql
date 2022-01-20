--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 04/01/2022
--@Descripción: Se crean índices de forma que agilize de forma eficiente
-- la búsqueda de valores en la base de datos
--clear screen
--connect bvgb_proy_admin/bvgb;

-- Creacion de índices Non Unique
create index empleado_email_ix on empleado(email);

-- Indexando llaves foráneas
create index mascota_tipo_mascota_ix on mascota(tipo_mascota_id);
create index revision_refugio_empleado_ix on revision_refugio(empleado_id);

-- Creacion de índices Unique
create unique index cliente_username_iuk on cliente(username);
--create unique index refugio_numero_registro_iuk on refugio(numero_registro);
--create unique index centro_operativo_codigo_iuk on centro_operativo(codigo);

-- Creación de índices unique compuestos
create unique index solicitud_mascota_cliente_mascota_iuk 
on solicitud_mascota(cliente_id, mascota_id);

-- Creación de índices basados en funciones
create index mascota_nombre_ix on mascota(lower(nombre));
create index grado_academico_titulo_ix on grado_academico(lower(titulo));


