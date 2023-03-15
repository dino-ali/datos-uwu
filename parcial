group: parcial

Huesped={cedula nombre
5027812, 'Ana Ríos Gómez'
421563, 'María Garcia Robledo'
3112987, 'Amalia Londoño Pérez'
4887449, 'Beatriz Mendieta Afanador'
7234987, 'Luciano Arismendi'
4876123, 'Rodrigo Cadena Linares'
4781239, 'Abelardo Díaz Jiménez'
}

Administrador={cedula nombre profesion salario
9367213, 'Luis Guillermo Hurtado Pérez', 'Contador', 4500000
9966772, 'Lina María Ávila Moreno', 'Abogada', 6100000
}

Hotel={nit nombre direccion telefono numero_habitaciones
44556, 'Sol y Arena', 'Carrera 93 #6B - 55', '3126758724', 24
33221, 'La Orquidea', 'Calle 82 # 11-32', '3154216743', 42
77449, 'El Turista', 'Diagonal 23 # 56-97', '3209176576', 30
}

Reserva={codigo fecha_ingreso hora_ingreso numero_dias total_reserva cedula_huesped cedula_administrador nit_hotel
10, '6/1/2023', '9:25', 3, 5350000, 4887449, 9367213, 77449
11, '11/1/2023', '10:40', 8, 13600000, 4876123, 9966772, 44556
12, '17/1/2023', '15:30', 5, 8500000, 7234987, 9367213, 77449
13, '26/1/2022', '17:20', 10, 23000000, 5027812, 9966772, 33221
}

σ profesion = 'Contador' (Administrador)
π codigo, fecha_ingreso, total_reserva(σ numero_dias > 5 (Reserva))

______________________________________________________________________________________________________

create table huesped(
cedula int,
nombre varchar (30),
primary key (cedula)
)

create table administrador(
cedula int,
nombre varchar(30),
profesion varchar(40),
salario numeric(10, 2),
primary key(cedula)
)

create table hotel(
nit int,
nombre varchar(30) not null,
direccion varchar (40),
telefono varchar(15),
numero_habitaciones int,
primary key (nit)
)

create table reserva(
codigo int,
fecha_ingreso date,
hora_ingreso time,
numero_dias int,
total_reserva numeric (10, 2),
cedula_huesped int,
cedula_administrador int,
nit_hotel int,
primary key (codigo),
foreign key (cedula_huesped) references huesped(cedula),
foreign key (cedula_administrador) references administrador(cedula),
foreign key (nit_hotel) references hotel(nit)
)

'''aaaaaaaaaaaaaa'''
insert into huesped values(5027812, 'Ana Ríos Gómez')
insert into huesped values(421563, 'María Garcia Robledo')
insert into huesped values(3112987, 'Amalia Londoño Pérez')
insert into huesped values(4887449, 'Beatriz Mendieta Afanador')
insert into huesped values(7234987, 'Luciano Arismendi')
insert into huesped values(4876123, 'Rodrigo Cadena Linares')
insert into huesped values(4781239, 'Abelardo Díaz Jiménez')

insert into hotel values(44556, 'Sol y Arena', 'Carrera 93 #6B - 55', '3126758724', 24)
insert into hotel values(33221, 'La Orquidea', 'Calle 82 # 11-32', '3154216743', 42)
insert into hotel values(77449, 'El Turista', 'Diagonal 23 # 56-97', '3209176576', 30)

insert into administrador values(9367213, 'Luis Guillermo Hurtado Pérez', 'Contador', 4500000)
insert into administrador values(9966772, 'Lina María Ávila Moreno', 'Abogada', 6100000)

insert into reserva values(10, '6/1/2023', '9:25', 3, 5350000, 4887449, 9367213, 77449)
insert into reserva values(11, '11/1/2023', '10:40', 8, 13600000, 4876123, 9966772, 44556)
insert into reserva values(12, '17/1/2023', '15:30', 5, 8500000, 7234987, 9367213, 77449)
insert into reserva values(13, '26/1/2022', '17:20', 10, 23000000, 5027812, 9966772, 33221)

select r.codigo
	from reserva as r, administrador as ad
	where r.cedula_administrador = ad.cedula and ad.salario = 4500000

select nombre, direccion
	from hotel
	where numero_habitaciones > 25

(select huesped.*
from reserva, huesped
where reserva.numero_dias < 4)
union
(select huesped.*
from reserva, huesped
where reserva.numero_dias > 7)

select sum(r.total_reserva) as tot_reservas
from reserva as r
where r.cedula_administrador = (select ad.cedula from administrador as ad where ad.cedula = r.cedula_administrador)
group by r.cedula_administrador
						
select ad.nombre
from administrador as ad
where ad.cedula = (select sum(r.total_reserva) as tot_reservas
				   from reserva as r
				   where r.cedula_administrador = ad.cedula)
