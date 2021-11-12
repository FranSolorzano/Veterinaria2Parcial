Create database VeterinariaBDD;

use VeterinariaBDD;

/*Dueño*/
create table Municipio(
mumId int primary key identity (1,1) not null,
municipioN varchar(100) not null unique
);

create table Departamento(
depId int primary key identity (1,1) not null,
departamento varchar(50) not null unique,
municipioN int foreign key references  municipio(mumId) not null
);

create table Direccion(
dirId int primary key identity (1,1) not null,
direccion varchar(50) not null,
departamento int foreign key references departamento(depId) not null,
codigoPostal int not null
);

create table Dueñomascota(
dmID int primary key identity (1,1) not null,
NumIdentidad int not null unique,
nombre varchar(50) not null,
apellido varchar(50) not null,
direccion int foreign key references direccion(dirId) not null,
telefono int
);

/*Mascota*/
create table TipoMascota(
tmId int primary key identity (1,1) not null,
tipoMascotaN varchar(50) not null,
);

create table Raza(
razaId int primary key identity (1,1) not null,
razaN varchar(50)
);

create table Mascota(
masId int primary key identity (1,1) not null,
nombre varchar(50) not null,
tipoMascota int not null,
raza int not null,
peso int not null,
Observacion nvarchar(255) not null
);

/*Ingresos*/
create table Ingresos(
Id int primary key identity (1,1) not null,
Motivo varchar(255) not null,
FechaIngreso int not null,
Observaciones varchar (255) not null
);


/*Veterinario*/
create table Veterinario(
IdVeterinario int primary key identity (1,1) not null,
Nombre varchar (255) not null,
Apellidos varchar (255) not null,
Cargo varchar (255) not null
);

/*INSER INTO 4 VETERINARIO*/
insert into Veterinario(Nombre,Apellidos, Cargo) values (' Fredy',' Figueroa', 'Veterinario');
insert into Veterinario(Nombre,Apellidos, Cargo) values (' Luciana',' Sandoval', 'Veterinario');
insert into Veterinario(Nombre,Apellidos, Cargo) values (' Rene',' Valdivieso', 'Veterinario');
insert into Veterinario(Nombre,Apellidos, Cargo) values (' Franklin',' Solorzano', 'Veterinario');

/*INSER INTO 10 MASCOTA*/
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' kobe',' perro',15, 'husky');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' Luchy',' gato',6, 'cola de ardilla');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' nini',' perico',2, 'australiano');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' Firulay',' perro',20, 'doberman');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' Copito',' conejo',5, 'de campo');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' tinti',' gato',10, 'Cola de ardilla');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' nini',' perro',15, 'rotwailer');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' Firulay',' perro',15, 'Labrador');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' Copito',' gato',10, 'cola de ardilla');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' tinti',' gato',10, 'cola de ardilla');


/*INSER INTO 14 INGRESOS*/
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Rabia','25/04/21','Rabioso')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Paracitos','22/04/21','Sin desaparacitar')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Vacuna','29/03/21','Sin la segunda vacuna')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Dolor de pancita','22/06/21','Se comio una mala comida')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Paracitos','12/02/21','Sin desaparacitar')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Dolor de pancita','22/03/21','Se comio un animal venenoso')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Vacuna','25/03/21','Sin la primera vacuna')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Rabia','21/08/21','Rabioso desde hace una semana')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Rabia','22/07/21','Rabioso desde hace dos meses')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Rabia','12/05/21','Rabioso desde hace una semana')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Dolor de patita derecha','22/03/21','Le paso un carro')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Vacuna','10/03/21','Rabioso')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Paracitos','05/03/21','Sin desparacitar')
insert into Ingresos(Motivo,FechaIngreso,Observaciones) Values ('Rabia','15/03/21','Rabioso')


