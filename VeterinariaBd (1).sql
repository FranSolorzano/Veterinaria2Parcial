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
FechaIngreso int foreign key references FechaIngreso(IdFechaIngreso) not null,
Observaciones varchar (255) not null
);

create table FechaIngreso(
IdFechaIngreso int primary key identity (1,1) not null,
Dia int not null,
Mes int not null,
Año int not null
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
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' kobe',' Figueroa', 'Veterinario');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' Luchy',' Sandoval', 'Veterinario');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' nini',' Valdivieso', 'Veterinario');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' Firulay',' Solorzano', 'Veterinario');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' Copito',' Valdivieso', 'Veterinario');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' tinti',' Solorzano', 'Veterinario');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' Fredy',' Figueroa', 'Veterinario');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' Luciana',' Sandoval', 'Veterinario');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' Rene',' Valdivieso', 'Veterinario');
insert into Mascota(Nombre,tipoMascota, peso, raza) values (' Franklin',' Solorzano', 'Veterinario');

