create table empleados(
  documento char(8),
  nombre varchar(20),
  apellido varchar(20),
  sueldo decimal(5,2),
  hijos int,
  seccion varchar(2),
  primary key(documento)
 );
  insert into empleados values("11111111","valentina","var",300,0,"a");
 insert into empleados values("22222222","natalia","mar",300,3,"a");
 insert into empleados values ("33333333","paulo","barrios",500,0,"c");
 insert into empleados values("44444444","matias","barrios",400,1,"b");
 insert into empleados values( "22666666","walter", "vargas",400,2,"b") 
 


 delimiter //
 create procedure empleados_sueldo(
   in p_sueldo decimal(5,2))
 begin
   select nombre,apellido,sueldo
     from empleados
     where sueldo>=p_sueldo;
 end //
 delimiter ;
 call empleados_sueldo(300);
 
 delimiter //
 create procedure empleados_actualizar_sueldo
   (in p_sueldoanterior decimal(5,2),
    in p_sueldonuevo decimal(5,2))
 begin
   update empleados set sueldo=p_sueldonuevo
     where sueldo=p_sueldoanterior;
 end //
 delimiter ;
 
  call empleados_actualizar_sueldo(300, 350);
  
  
 select * from empleados;
