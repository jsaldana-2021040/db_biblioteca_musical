create database biblioteca_musical;
use biblioteca_musical;

create table usuario( id_usuario integer not null,
nombre varchar(50),
apellido varchar(50),
clave varchar(50),
pais varchar(50),
fecha_nacimiento date,
primary key(id_usuario));

create table genero( id_genero integer not null,
tipo_genero varchar(50), 
primary key(id_genero));


create table artista( id_artista integer not null,
nombre varchar(50),
primary key(id_artista));
 
create table albumes( id_albumes integer not null,
nombre varchar(50),
duracion float,
id_artista integer,
primary key(id_albumes),
foreign key(id_artista) references artista(id_artista));

create table tipo_plan( id_tipo_plan integer not null,
tipo_plan varchar(50),
costo float,
duracion varchar(50),
primary key(id_tipo_plan));

create table formas_pago( id_forma_pago integer not null,
formas_pago varchar(50),
primary key(id_forma_pago));

create table sencillo( id_sencillo integer not null,
nombre varchar(50),
duracion float,
id_albumes integer,
primary key(id_sencillo),
foreign key(id_albumes) references albumes(id_albumes));

create table lista_reproduccion( id_lista_reproduccion integer not null,
id_usuario integer,
veces_reproducida integer,
id_sencillo integer,
primary key(id_lista_reproduccion),
foreign key(id_usuario) references usuario(id_usuario),
foreign key(id_sencillo) references sencillo(id_sencillo));

create table asig_gen_sen( id_asig_gen_sen integer not null,
id_genero integer,
id_sencillo integer,
primary key(id_asig_gen_sen),
foreign key(id_genero) references genero(id_genero),
foreign key(id_sencillo) references sencillo(id_sencillo));

create table asig_gen_album( id_asig_gen_album integer not null,
id_genero integer,
id_albumes integer,
primary key(id_asig_gen_album),
foreign key(id_genero) references genero(id_genero),
foreign key(id_albumes) references albumes(id_albumes));

create table asignar(id_asignar integer not null,
id_usuario integer,
id_tipo_plan integer,
id_forma_pago integer,
primary key(id_asignar),
foreign key(id_usuario) references usuario(id_usuario),
foreign key(id_tipo_plan) references tipo_plan(id_tipo_plan),
foreign key(id_forma_pago) references formas_pago(id_forma_pago));

insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(1,'Raul','Alvarez','clave1','Argentina','1998/08/15');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(2,'Josue','Salazar','clave2','Argentina','1986/01/05');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(3,'Jose','Fernandez','clave3','Mexico','2005/12/14');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(4,'Maria','Castillo','clave4','Panama','1996/06/29');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(5,'Esteban','Ramirez','clave5','Brazil','2007/02/21');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(6,'Juan','Garcia','clave6','Guatemala','1992/04/11');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(7,'Sofia','Martinez','clave7','España','1964/10/03');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(8,'Adriana','Diaz','clave8','Colombia','1979/07/30');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(9,'Rene','Arriola','clave9','Canada','1968/09/22');
insert into usuario(id_usuario,nombre,apellido,clave,pais,fecha_nacimiento)
values(10,'Pablo','Mendez','clave10','Portugal','2004/03/01');

insert into genero(id_genero,tipo_genero)
values(1,'Blues');
insert into genero(id_genero,tipo_genero)
values(2,'Jazz');
insert into genero(id_genero,tipo_genero)
values(3,'Rock and Roll');
insert into genero(id_genero,tipo_genero)
values(4,'Disco');
insert into genero(id_genero,tipo_genero)
values(5,'Country');

insert into artista(id_artista,nombre)
values(1,'Love');
insert into artista(id_artista,nombre)
values(2,'The Rolling Stones');
insert into artista(id_artista,nombre)
values(3,'The Beach Boys');
insert into artista(id_artista,nombre)
values(4,'Ramones');
insert into artista(id_artista,nombre)
values(5,'Patti Smith');

insert into albumes(id_albumes,nombre,duracion,id_artista)
values(1,'Forever Changes','5.54',1);
insert into albumes(id_albumes,nombre,duracion,id_artista)
values(2,'Exile On Main','7.59',2);
insert into albumes(id_albumes,nombre,duracion,id_artista)
values(3,'Pet Sounds','10.35',3);
insert into albumes(id_albumes,nombre,duracion,id_artista)
values(4,'Ramones','4.25',4);
insert into albumes(id_albumes,nombre,duracion,id_artista)
values(5,'Horses','6.15',5);

insert into tipo_plan( id_tipo_plan,tipo_plan,costo,duracion)
values(1,'basico',5.25,'1 mes');
insert into tipo_plan( id_tipo_plan,tipo_plan,costo,duracion)
values(2,'premium',29.99,'5 mes');
insert into tipo_plan( id_tipo_plan,tipo_plan,costo,duracion)
values(3,'platino',59.99,'12 mes');
insert into tipo_plan( id_tipo_plan,tipo_plan,costo,duracion)
values(4,'oro',79.99,'24 mes');
insert into tipo_plan( id_tipo_plan,tipo_plan,costo,duracion)
values(5,'diamante',99.99,'48 mes');

insert into formas_pago( id_forma_pago,formas_pago)
values(1,'paypal');
insert into formas_pago( id_forma_pago,formas_pago)
values(2,'tarjeta');
insert into formas_pago( id_forma_pago,formas_pago)
values(3,'bitcoin');
insert into formas_pago( id_forma_pago,formas_pago)
values(4,'transferencia bancaria');
insert into formas_pago( id_forma_pago,formas_pago)
values(5,'cheque');

insert into sencillo(id_sencillo,nombre,duracion,id_albumes)
values(1,'Old Man','2.10',1);
insert into sencillo(id_sencillo,nombre,duracion,id_albumes)
values(2,'You Set The Scene','2.55',1);
insert into sencillo(id_sencillo,nombre,duracion,id_albumes)
values(3,'Rocks Off','2.14',2);
insert into sencillo(id_sencillo,nombre,duracion,id_albumes)
values(4,'Happy','1.59',2);
insert into sencillo(id_sencillo,nombre,duracion,id_albumes)
values(5,'Thats Not Me','2.45',3);
insert into sencillo(id_sencillo,nombre,duracion,id_albumes)
values(6,'God only knows','3.15',3);
insert into sencillo(id_sencillo,nombre,duracion,id_albumes)
values(7,'Blitzkrieg Bop','2.36',4);
insert into sencillo(id_sencillo,nombre,duracion,id_albumes)
values(8,'Pet Sematary','2.45',4);
insert into sencillo(id_sencillo,nombre,duracion,id_albumes)
values(9,'Redondo Beach','2.43',5);
insert into sencillo(id_sencillo,nombre,duracion,id_albumes)
values(10,'Break It Up','1.42',5);

insert into asig_gen_sen(id_asig_gen_sen,id_genero,id_sencillo)
values(1,1,1);
insert into asig_gen_sen(id_asig_gen_sen,id_genero,id_sencillo)
values(2,1,3);
insert into asig_gen_sen(id_asig_gen_sen,id_genero,id_sencillo)
values(3,2,3);
insert into asig_gen_sen(id_asig_gen_sen,id_genero,id_sencillo)
values(4,2,4);
insert into asig_gen_sen(id_asig_gen_sen,id_genero,id_sencillo)
values(5,3,1);
insert into asig_gen_sen(id_asig_gen_sen,id_genero,id_sencillo)
values(6,3,4);
insert into asig_gen_sen(id_asig_gen_sen,id_genero,id_sencillo)
values(7,4,5);
insert into asig_gen_sen(id_asig_gen_sen,id_genero,id_sencillo)
values(8,4,2);
insert into asig_gen_sen(id_asig_gen_sen,id_genero,id_sencillo)
values(9,5,2);
insert into asig_gen_sen(id_asig_gen_sen,id_genero,id_sencillo)
values(10,5,5);

insert into asig_gen_album(id_asig_gen_album,id_genero,id_albumes)
values(1,1,1);
insert into asig_gen_album(id_asig_gen_album,id_genero,id_albumes)
values(2,1,4);
insert into asig_gen_album(id_asig_gen_album,id_genero,id_albumes)
values(3,2,3);
insert into asig_gen_album(id_asig_gen_album,id_genero,id_albumes)
values(4,2,5);
insert into asig_gen_album(id_asig_gen_album,id_genero,id_albumes)
values(5,3,1);
insert into asig_gen_album(id_asig_gen_album,id_genero,id_albumes)
values(6,3,2);
insert into asig_gen_album(id_asig_gen_album,id_genero,id_albumes)
values(7,4,5);
insert into asig_gen_album(id_asig_gen_album,id_genero,id_albumes)
values(8,4,2);
insert into asig_gen_album(id_asig_gen_album,id_genero,id_albumes)
values(9,5,4);
insert into asig_gen_album(id_asig_gen_album,id_genero,id_albumes)
values(10,5,3);

insert into asignar(id_asignar,id_usuario,id_tipo_plan,id_forma_pago)
values(1,5,2,4);
insert into asignar(id_asignar,id_usuario,id_tipo_plan,id_forma_pago)
values(2,9,4,1);
insert into asignar(id_asignar,id_usuario,id_tipo_plan,id_forma_pago)
values(3,4,5,5);
insert into asignar(id_asignar,id_usuario,id_tipo_plan,id_forma_pago)
values(4,8,5,1);
insert into asignar(id_asignar,id_usuario,id_tipo_plan,id_forma_pago)
values(5,2,3,3);
insert into asignar(id_asignar,id_usuario,id_tipo_plan,id_forma_pago)
values(6,7,4,5);
insert into asignar(id_asignar,id_usuario,id_tipo_plan,id_forma_pago)
values(7,10,1,2);
insert into asignar(id_asignar,id_usuario,id_tipo_plan,id_forma_pago)
values(8,3,2,3);
insert into asignar(id_asignar,id_usuario,id_tipo_plan,id_forma_pago)
values(9,6,1,4);
insert into asignar(id_asignar,id_usuario,id_tipo_plan,id_forma_pago)
values(10,1,3,2);

insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(1,1,'15',1);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(2,1,'25',5);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(3,2,'22',3);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(4,2,'42',2);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(5,3,'34',9);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(6,3,'45',4);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(7,4,'63',10);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(8,4,'34',4);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(9,5,'64',6);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(10,5,'85',8);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(11,6,'31',7);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(12,6,'61',6);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(13,7,'46',3);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(14,7,'51',4);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(15,8,'21',10);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(16,8,'75',9);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(17,9,'28',8);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(18,9,'83',2);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(19,10,'39',1);
insert into lista_reproduccion(id_lista_reproduccion,id_usuario,veces_reproducida,id_sencillo)
values(20,10,'58',5);

delimiter $$
create procedure consulta_1(tipo_genero varchar(50))
begin
select genero.tipo_genero,artista.nombre as nombre_artista from artista,genero,asig_gen_album,albumes where asig_gen_album.id_albumes=albumes.id_albumes and albumes.id_artista=artista.id_artista
and asig_gen_album.id_genero=genero.id_genero and genero.tipo_genero=tipo_genero;
end $$
delimiter ;

delimiter $$
create procedure consulta_2(formas_pago varchar(50))
begin
select usuario.nombre,formas_pago.formas_pago from formas_pago,usuario,asignar where asignar.id_usuario=usuario.id_usuario and asignar.id_forma_pago=formas_pago.id_forma_pago
and formas_pago.formas_pago=formas_pago;
end $$
delimiter ;

delimiter $$
create procedure consulta_3(tipo_plan varchar(50))
begin
select usuario.nombre,tipo_plan.tipo_plan from usuario,tipo_plan,asignar where asignar.id_tipo_plan=tipo_plan.id_tipo_plan and asignar.id_usuario=usuario.id_usuario
and tipo_plan.tipo_plan=tipo_plan;
end $$
delimiter ;

delimiter $$
create procedure consulta_4()
begin
select sum(tipo_plan.costo) as suma_plan_basico from tipo_plan,asignar,usuario where asignar.id_tipo_plan=tipo_plan.id_tipo_plan and asignar.id_usuario=usuario.id_usuario 
and tipo_plan.tipo_plan='basico';
end $$
delimiter ;

delimiter $$
create procedure consulta_5()
begin
select usuario.nombre as usuarios_menores_edad from usuario where fecha_nacimiento>'2004/01/01';
end $$
delimiter ;

delimiter $$
create procedure consulta_6(tipo_genero varchar (50))
begin
select count(artista.nombre) as conteo_artista_genero,genero.tipo_genero from artista,genero,asig_gen_album,albumes where asig_gen_album.id_albumes=albumes.id_albumes and albumes.id_artista=artista.id_artista
and asig_gen_album.id_genero=genero.id_genero and genero.tipo_genero=tipo_genero;
end $$
delimiter ;

delimiter $$
create procedure consulta_7(pais varchar(50))
begin
select count(usuario.id_usuario) as numero_usuarios,usuario.pais from usuario where usuario.pais=pais;
end $$
delimiter ;

delimiter $$
create procedure consulta_8()
begin
select usuario.nombre as usuarios_menores_edad from usuario where fecha_nacimiento>'2004/01/01';
end $$
delimiter ;

delimiter $$
create procedure consulta_9(pais varchar(50))
begin
select usuario.nombre,tipo_plan.tipo_plan from usuario,tipo_plan,asignar where usuario.pais=pais and asignar.id_usuario=usuario.id_usuario and asignar.id_tipo_plan=tipo_plan.id_tipo_plan
and tipo_plan.tipo_plan='diamante';
end $$
delimiter ;

delimiter $$
create procedure consulta_10()
begin
select count(usuario.id_usuario)as conteo_usuarios from usuario;
end $$
delimiter ;

call consulta_1('Blues');
call consulta_2('tarjeta');
call consulta_3('diamante');
call consulta_4();
call consulta_5();
call consulta_6('Blues');
call consulta_7('Argentina');
call consulta_8();
call consulta_9('Panama');
call consulta_10();