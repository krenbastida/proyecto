--@Autor(es): Karen Mariel Bastida Vargas, Luis Aldo Gomez Bolaños 
--@Fecha creación: 04/01/2022
--@Descripción: Script para crear vistas.}

set serveroutput on
connect sys/system as sysdba 
prompt Creando el directorio /tmp/bases en caso de no existir
!mkdir -p /tmp/bases

prompt Copiando las fotos a /tmp/bases
!cp -r /media/karen/PROYS/unam-clases/bd-basicas/proyecto/fotos /tmp/bases
prompt Cambiando permisos
!chmod 777 /tmp/bases/fotos 

Prompt Creando directorio para guardar imagenes
create or replace directory tmp_fotos_dir as '/tmp/bases/fotos';
grant read, write on directory tmp_fotos_dir to BVGB_PROY_ADMIN;

connect bvgb_proy_admin/bvgb

-- Se crea el procedimiento para insertar el logo en los refugios
create or replace procedure logo_refugio(
  v_index in varchar2
) is

  --Referencia/puntero al archivop
  v_bfile bfile;
  v_foto blob;

  --Se requieren porque le procedimiento necesita la salida
  v_src_offset number;
  v_dest_offset number;
  v_src_length number;
  v_blob_length number;
  v_dest_length number;
  v_nombre_imagen varchar2(50);

  
begin
  
  v_nombre_imagen := 'logo-refugio-' || v_index || '.png';
  dbms_output.put_line('Subiendo el logo ' 
  || v_nombre_imagen 
  || ' a refugio');


  v_bfile :=bfilename('TMP_FOTOS_DIR', v_nombre_imagen);

  -- Se valida si el archivo existe o está abierto
  if dbms_lob.fileexists(v_bfile) = 0 then
    raise_application_error(-20009, 'La imagen con nombre: '
    || v_nombre_imagen
    || ' no existe. Favor de verificarlo'  );
  end if;

  if dbms_lob.isopen(v_bfile) = 1 then
    raise_application_error(-20010, 'La imagen '
    || v_nombre_imagen
    || ' está abierto. Favor de cerrarlo');
  end if;

  -- Abriendo el archivo
  dbms_lob.open(v_bfile, dbms_lob.lob_readonly);

  select logo into v_foto
  from refugio 
  where centro_operativo_id = v_index
  for update;

  v_src_offset:= 1;
  v_dest_offset:= 1;
  dbms_lob.loadblobfromfile(
      dest_lob     => v_foto,
      src_bfile    => v_bfile,
      amount       => dbms_lob.getlength(v_bfile),
      dest_offset  => v_dest_offset,
      src_offset   => v_src_offset
  );

  -- Cerrando el archivo
  dbms_lob.close(v_bfile);

  -- Validando la carga
  v_src_length := dbms_lob.getlength(v_bfile);
  v_dest_length := dbms_lob.getlength(v_foto);

  if v_dest_length <> v_src_length then
    raise_application_error(-20008, 'El archivo ' || v_nombre_imagen 
    || ' no se cargó correctamente');
  end if;
end;
/
show errors