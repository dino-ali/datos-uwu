''' taller 1'''

create table pelicula(
codigo int,
titulo varchar(30) not null,
estudio int,
ano int,
duracion int,
genero varchar(30),
presupuesto numeric(10, 2),
primary key(codigo));
