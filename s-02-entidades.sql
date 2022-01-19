--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 01/01/2022
--@Descripción: Se crea la definición de las tablas del caso de estudio
--con sus restricciones y columnas virtuales

--sclear screen

--connect bvgb_proy_admin/bvgb;

create table centro_operativo (
  centro_operativo_id number(5,0) constraint centro_operativo_pk primary key,
  codigo varchar2(5) not null constraint co_codigo_uk unique,
  nombre varchar2(30) not null,
  direccion varchar2(100) not null,
  longitud number(10,2) not null,
  latitud number(10,2) not null,
  es_clinica number(1,0) default 0 constraint co_es_clinica_chk 
    check (es_clinica in (1, 0)),
  es_refugio number(1,0) default 0 constraint co_es_refugio_chk 
    check (es_refugio in (1, 0)),
  es_oficina number(1,0) default 0 constraint co_es_oficina_chk 
    check (es_oficina in (1, 0))
);

create table refugio (
  centro_operativo_id constraint r_centro_operativo_id_fk 
    references centro_operativo(centro_operativo_id),
  numero_registro varchar2(8) not null constraint r_numero_registro_uk unique,
  capacidad number(5,0) not null,
  logo blob not null,
  lema varchar2(200) not null,
  refugio_alterno_id constraint refugio_alterno_id_fk 
    references refugio(centro_operativo_id),
  constraint refugio_pk primary key (centro_operativo_id)
);

create table refugio_direccion_web (
  refugio_direccion_web_id number(5,0) 
    constraint refugio_direccion_web_pk primary key, 
  direccion_web varchar2(80) not null,
  centro_operativo_id not null,
  constraint rdw_centro_operativo_id_fk foreign key (centro_operativo_id)
    references refugio(centro_operativo_id)
);

create table clinica (
  centro_operativo_id not null,
  hora_inicio date not null,
  hora_fin date not null,
  telefono_atencion_clientes number(10,0) not null,
  telefono_emergencia number(10,0) not null,
  constraint c_centro_operativo_id_fk foreign key (centro_operativo_id)
    references centro_operativo(centro_operativo_id),
  constraint clinica_pk primary key (centro_operativo_id)
);

create table oficina (
  centro_operativo_id not null,
  rfc varchar2(13) not null constraint o_rfc_uk unique,
  firma_electronica blob not null,
  nombre varchar2(20) not null,
  apellido_paterno varchar2(20) not null,
  apellido_materno varchar2(20) null,
  constraint o_centro_operativo_id_fk foreign key (centro_operativo_id)
    references centro_operativo(centro_operativo_id),
  constraint oficina_pk primary key (centro_operativo_id)
);


create table empleado (
  empleado_id number(5,0) constraint empleado_pk primary key,
  curp varchar2(18) not null constraint e_curp_uk unique,
  fecha_ingreso date default sysdate,
  email varchar2(35) not null,
  nombre varchar2(20) not null,
  apellido_paterno varchar2(20) not null,
  apellido_materno varchar2(20) null,
  sueldo_mensual number(8,2) not null,
  sueldo_quincenal generated always as (sueldo_mensual/2) virtual,
  bono_navideño generated always as (sueldo_mensual*2) virtual, 
  --Se les da 2 meses de salario al final del año
  es_administrador number(1,0) default 0,
  es_veterinario number(1,0) default 0,
  es_gerente number(1,0) default 0, 
  constraint e_es_administrador_chk 
    check (es_administrador in (1, 0)),
  constraint e_es_veterinario_chk 
    check (es_veterinario in (1, 0)),
  constraint e_es_gerente_chk 
    check (es_gerente in (1, 0)),
  centro_operativo_id not null constraint centro_operativo_id_fk
    references centro_operativo(centro_operativo_id)
);
    
create table grado_academico (
  empleado_id not null,
  cedula_profesional numeric(8,0) not null 
    constraint ga_cedula_profesional_uk unique,
  titulo blob not null,
  fecha_titulacion date not null,
  constraint ga_empleado_id_fk foreign key (empleado_id)
    references empleado(empleado_id),
  constraint grado_academico_pk primary key (empleado_id)
);
    
create table revision_refugio (
  revision_refugio_id number(5,0) constraint revision_refugio_pk primary key,
  diagnostico varchar2(200) not null,
  foto blob not null,
  refugio_id not null constraint rr_refugio_id_fk
    references refugio(centro_operativo_id),
  empleado_id not null constraint rr_empleado_id_fk
    references empleado(empleado_id)
);
    
create table cliente (
  cliente_id number(5,0) constraint cliente_pk primary key,
  nombre varchar2(25) not null,
  apellido_paterno varchar2(25) not null,
  apellido_materno varchar2(25) null,
  direccion varchar2(150) not null,
  ocupacion varchar2(40) not null,
  username varchar2(25) not null,
  password varchar2(20) not null
);

create table donativo (
  donativo_id number(5,0) constraint donativo_pk primary key,
  monto_donativo number(10,2) not null,
  fecha_donativo date default sysdate,
  cliente_id not null constraint cliente_id_fk
    references cliente(cliente_id)
);
   
create table origen_mascota (
  origen_mascota_id number(1,0) constraint origen_mascota_pk primary key,
  nombre_origen varchar2(25) not null constraint om_nombre_origen_chk 
    check (nombre_origen in ('DONADA','ABANDONADA', 'NACIDA_EN_CAUTIVERIO'))
);

create table tipo_mascota (
  tipo_mascota_id number(5,0) constraint tipo_mascota_pk primary key,
  nombre_tipo varchar2(20) not null,
  nivel_cuidado number(1,0) not null constraint tm_nivel_cuidado_chk
    check (nivel_cuidado in (1, 2, 3, 4, 5)),
  subcategoria varchar2(20) not null
);

create table estatus_mascota (
  estatus_mascota_id number(2,0) constraint estatus_mascota_pk primary key,
  descripcion varchar2(30) not null
);
    
create table mascota(
  mascota_id number(7,0) constraint mascota_pk primary key,
  nombre varchar2(15) not null,
  folio varchar2(8) not null constraint mascota_folio_uk unique,
  fecha_ingreso date default sysdate,
  fecha_nacimiento date not null,
  fecha_status date default sysdate,
  descripcion_muerte varchar2(200),
  fecha_adopcion date null,
  mascota_padre null constraint m_mascota_padre_fk 
    references mascota(mascota_id),
  mascota_madre null constraint m_mascota_madre_fk 
    references mascota(mascota_id),
  tipo_mascota_id not null constraint m_tipo_mascota_id_fk 
    references tipo_mascota(tipo_mascota_id),
  origen_mascota_id not null constraint m_origen_mascota_id_fk
    references origen_mascota(origen_mascota_id),
  estatus_mascota_id not null constraint m_estatus_mascota_id_fk
    references estatus_mascota(estatus_mascota_id),
  refugio_id not null constraint m_refugio_id_fk
    references refugio(centro_operativo_id),
  cliente_donacion_id null constraint m_cliente_donacion_id_fk
    references cliente(cliente_id)
);

create table historico_estatus_mascota (
  historico_estatus_mascota_id number(10,0) 
    constraint historico_estatus_mascota_pk primary key,
  fecha_status date default sysdate,
  estatus_mascota_id not null constraint estatus_mascota_id_fk
    references estatus_mascota(estatus_mascota_id),
  mascota_id not null constraint mascota_id_fk
    references mascota(mascota_id)
);

create table solicitud_mascota (
  solicitud_mascota_id number(10,0) constraint solicitud_mascota_pk primary key,
  fecha_solicitud date default sysdate,
  descripcion_rechazo varchar2(150) null,
  solicitud_ganadora number(1,0) not null constraint sm_solicitud_ganadora_chk 
    check (solicitud_ganadora in (1, 0)),
  cliente_id not null constraint sm_cliente_id_fk
    references cliente(cliente_id),
  mascota_id not null constraint sm_mascota_id_fk
    references mascota(mascota_id)
);

create table revision_adopcion (
  numero_revision number(5,0),
  mascota_id not null,
  fecha_revision date default sysdate,
  observaciones varchar2(200) not null,
  calificacion number(2,0) not null constraint ra_calificacion_chk 
    check (calificacion in (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)),
  costo number (7,2) not null,
  costo_mas_iva  generated always as (costo * 1.16) virtual,
  centro_operativo_id not null constraint ra_centro_operativo_id_fk
    references centro_operativo(centro_operativo_id),
  constraint ra_mascota_id_fk foreign key (mascota_id)
    references mascota(mascota_id),
  constraint revision_adopcion_pk primary key (numero_revision,mascota_id)
);


    
