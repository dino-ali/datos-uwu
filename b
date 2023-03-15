''' taller 1'''
create table pelicula(
codigo int,
titulo varchar(30) not null,
estudio int,
ano int,
duracion int,
genero varchar(30),
presupuesto numeric (10, 2),
primary key (codigo)
)

create table actor(
id int,
nombre varchar(30) not null,
genero varchar (10),
fecha_nacimiento date,
primary key (id)
)

create table productor(
codigo int,
nombre varchar(30),
primary key (codigo)
)

create table trailer(
codigo int,
duracion int,
codigo_pelicula int,
primary key (codigo, codigo_pelicula),
foreign key(codigo_pelicula) references pelicula(codigo)
)

create table producir(
codigo_pelicula int,
codigo_productor int,
primary key(codigo_pelicula, codigo_productor),
foreign key(codigo_pelicula) references pelicula(codigo),
foreign key(codigo_productor) references productor(codigo)
)

create table protagonizar(
codigo_pelicula int,
id_actor int,
primary key(codigo_pelicula, id_actor),
foreign key(codigo_pelicula) references pelicula(codigo),
foreign key(id_actor) references actor(id)
)

-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
