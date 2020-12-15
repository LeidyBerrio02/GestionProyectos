create database pruebafinal;
use pruebafinal;

create table usuario (
  idUser int not null primary key auto_increment,
  username varchar(45),
  password varchar(225),
  estado boolean);
  

create table rol (
  idRol int not null primary key auto_increment,
  nombre varchar(45),
  id_usuario int,
  foreign key (id_usuario) references usuario (idUser)
);

create table proyecto (
  idProyecto int not null primary key auto_increment,
  nombreProyecto varchar(100),
  area varchar(45),
  presupuesto double,
  responsable varchar(45),
  duracion varchar(20) ,
  fechaCreacion date,
  fechaInicio date,
  fechaFin date,
  usuarioCreador varchar(45)  ,
  estado varchar(45));
  
  create table proyectoeliminado (
  idProyecto int not null primary key auto_increment,
  nombreProyecto varchar(100),
  area varchar(45),
  presupuesto double,
  responsable varchar(45),
  duracion varchar(20) ,
  fechaCreacion date,
  fechaInicio date,
  fechaFin date,
  usuarioCreador varchar(45)  ,
  estado varchar(45)
  );
  
  create table proyectoactualizado (
  idProyecto int not null primary key auto_increment,
  nombreProyecto varchar(100),
  area varchar(45),
  presupuesto double,
  responsable varchar(45),
  duracion varchar(20) ,
  fechaCreacion date,
  fechaInicio date,
  fechaFin date,
  usuarioCreador varchar(45)  ,
  estado varchar(45)
  );
  
  select * from usuario;
  
insert into usuario values (1,"admin","123",1);
insert into usuario values (2,"user","321",1);
insert into usuario values (3,"leidy","123",0);

select * from rol;

insert into rol values (1,"ROLE_ADMIN",1);
insert into rol values (2,"ROLE_USER",1);
insert into rol values (3,"ROLE_USER",2);
  
select * from proyecto;

insert into proyecto values (1,"Mueve Sural","Desarrollo",4567800,"Carlos Andres Quintana","2 Meses","2019-02-01","2019-03-01","2019-05-01","Juliana Betancur Acurrao","Creado");
insert into proyecto values (2,"Muevete Bank","Base de datos",7645324,"Carlos Andres Quintana","5 Meses","2020-02-01","2020-03-01","2020-05-01","Ana Maria Quintero","Finalizado");
insert into proyecto values (3,"Proyecto Q.A","Diseño",6000000,"Mara Bermudez Jimnez","1 Meses","2019-02-01","2019-03-01","2019-03-01","Juliana Betancur Acurrao","Cancelado");
insert into proyecto values (4,"Somos M.A","Testing",4560000,"Ana Maria Quintero","8 Meses","2019-02-01","2019-03-01","2019-01-01","Ana Maria Quintero","Creado");
insert into proyecto values (5,"Proyecto A.A.A","Fabrica de Software",5670000,"Carlos Andres Quintana","3 Semanas","2020-12-01","2020-12-10","2021-01-08","Jose Julian Muñoz","En proceso");
insert into proyecto values (6,"Proyecto A.A.A","Fabrica de Software",5670000,"Carlos Andres Quintana","3 Semanas","2020-12-01","2020-12-10","2021-01-08","Jose Julian Muñoz","En proceso");
insert into proyecto values (12,"Mueve Sural","Desarrollo",4567800,"Carlos Andres Quintana","2 Meses","2019-02-01","2019-03-01","2019-05-01","Juliana Betancur Acurrao","Creado");

select * from usuario;
select * from rol;
select * from proyecto;
select * from proyectoeliminado;
select * from proyectoactualizado;
alter table proyectoeliminado add column fechaModificacion Date;
alter table proyectoactualizado add column fechaModificacion Date;
delete from proyecto where idProyecto = 20;
select * from proyectoactualizado;

update proyecto set nombreProyecto="Proyecto A.B.C" where idProyecto=5;

drop trigger eliminandoproyecto;

DELIMITER $$
CREATE TRIGGER eliminandoproyecto BEFORE DELETE ON proyecto for each row
BEGIN
INSERT INTO proyectoeliminado (idProyecto,nombreProyecto,area,presupuesto,responsable,duracion,fechaCreacion,fechaInicio,fechaFin,usuarioCreador,estado)
  SELECT idProyecto,nombreProyecto,area,presupuesto,responsable,duracion,fechaCreacion,fechaInicio,fechaFin,usuarioCreador,estado FROM proyecto WHERE idProyecto = old.idProyecto;
UPDATE proyectoeliminado set fechaModificacion = now() WHERE idProyecto = old.idProyecto;
END $$
DELIMITER $$

DROP trigger actualizandoproyecto;

DELIMITER $$
CREATE TRIGGER actualizandoproyecto BEFORE UPDATE ON proyecto for each row
BEGIN
INSERT INTO proyectoactualizado (idProyecto,nombreProyecto,area,presupuesto,responsable,duracion,fechaCreacion,fechaInicio,fechaFin,usuarioCreador,estado)
  SELECT idProyecto,nombreProyecto,area,presupuesto,responsable,duracion,fechaCreacion,fechaInicio,fechaFin,usuarioCreador,estado FROM proyecto WHERE idProyecto = old.idProyecto;
UPDATE proyectoactualizado set fechaModificacion = now() WHERE idProyecto = old.idProyecto;
  
END $$
DELIMITER $$


/*
DELIMITER $$
CREATE TRIGGER eliminandoproyecto BEFORE DELETE ON proyecto for each row
BEGIN
INSERT INTO proyectoeliminado select * from proyecto WHERE idProyecto= old.idProyecto;
END $$
DELIMITER $$

*/
/*
drop trigger fecha;

DELIMITER $$
CREATE TRIGGER fecha BEFORE DELETE ON proyecto for each row
BEGIN
  UPDATE proyectoeliminado set fechaModificacion = now() WHERE idProyecto = old.idProyecto;
END $$
DELIMITER $$

/*
drop trigger fecha;

CREATE TRIGGER fecha BEFORE DELETE ON proyecto for each row
BEGIN
INSERT INTO proyectoeliminado (fechaModificacion) VALUES (now());
END $$
DELIMITER $$

DELIMITER $$
CREATE TRIGGER eliminandoproyecto BEFORE DELETE ON proyecto for each row
BEGIN
INSERT INTO proyectoeliminado (idProyecto,nombreProyecto,area,presupuesto,responsable,duracion,fechaCreacion,fechaInicio,fechaFin,usuarioCreador,estado)
  SELECT idProyecto,nombreProyecto,area,presupuesto,responsable,duracion,fechaCreacion,fechaInicio,fechaFin,usuarioCreador,estado FROM proyecto WHERE idProyecto = old.idProyecto;
END $$
DELIMITER $$

*/