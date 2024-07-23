Create database Prueb4
go

Use Prueb4
go

ALTER DATABASE Prueb4 SET OFFLINE WITH ROLLBACK IMMEDIATE
 drop database Prueb4
 go

 drop table Votantes


 Create table Usuarios(
 id_U int Identity Primary Key,
 Usuario Varchar(16) default 'N/A',
 Clave	varchar(32) not null,
 correo varchar(50) unique,
 Nombre Varchar(15)not null,
 pApellido Varchar(15) not null,
 )


CREATE TABLE Votantes
(
Numero int identity ,
Cedula Varchar(20) Unique not null,
nombre Varchar(20) default 'N/A' ,
pApellido Varchar(20)not null,
sApellido Varchar(20)null ,
email Varchar(50) UNIQUe,
telefono Varchar(50)null,
direccion Varchar(100)null,
)


CREATE TABLE Candidatos (
    Candidato int identity,
	nombre Varchar(20)default 'N/A',
	pApellido Varchar(20) ,
	sApellido Varchar(20),
    partido VARCHAR(60)unique,
	infoAdd Varchar(100)
)


CREATE TABLE Elecciones(
    id_E int Identity Primary Key ,
    nombre VARCHAR(100) default 'N/A',
    fecha DATE
)

CREATE TABLE Votos (
    id int Primary Key ,
    votante_id INT,
    candidato_id INT,
    eleccion_id INT,
)  



insert into Usuarios(Usuario,Clave,correo,Nombre,pApellido) values('MpaniaguaAdmin','Admin12345','matthiasp2004@gmail.com','Matthias','Paniagua') 
Select* from Usuarios
select Usuario,CLave FROM Usuarios where Usuario='MpaniaguaAdmin' and clave='Admin12345'

insert into Votantes (Cedula,Nombre,pApellido,sApellido,email,telefono,direccion) values(1,2,3,4,5,6,7)
select *from Votantes Inner JOIN Candidatos ON Votantes.Numero = Candidatos.Candidato