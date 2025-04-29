CREATE DATABASE Problema2RJUL;
use Problema2RJUL;
create table direccion(
	idDireccion int primary key,
    Direccion varchar(45),
    Ciudad varchar(45),
    Pais varchar(45)
);

create table categoria(
	idCategoria int primary key,
    Nombre varchar(45)
);

create table cliente(
	idCliente int primary key,
    Nombre varchar(45),
    Apellido varchar(45),
    Edad int,
    Direccion_idDireccion int,
    foreign key(Direccion_idDireccion) references direccion(idDireccion)
);

create table peliculas(
	idPeliculas int primary key,
    Nombre varchar(45),
    Duracion int,
    Descripcion text,
    Año int,
    Categoria_idCategoria int,
    foreign key(Categoria_idCategoria) references categoria(idCategoria)
);

create table inventario(
	idCopiasPeliculas int primary key,
    Disponible tinyint,
    Peliculas_idPeliculas int,
    foreign key(Peliculas_idPeliculas) references peliculas(idPeliculas)
);

create table renta(
	idRenta int primary key,
    fecha_Renta date,
    fecha_Entrega date,
    Inventario_idCopiasPeliculas int,
    Cliente_idCliente int,
    foreign key(Cliente_idCliente) references cliente(idCliente),
    foreign key(Inventario_idCopiasPeliculas) references inventario(idCopiasPeliculas)
);
CREATE TABLE reseña(
    idReseña INT PRIMARY KEY,
    Calificacion INT,
    Comentario TEXT,
    Cliente_idCliente INT,
    Peliculas_idPeliculas INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES cliente(idCliente),
    FOREIGN KEY (Peliculas_idPeliculas) REFERENCES peliculas(idPeliculas)
);

CREATE TABLE pagos (
    idPago INT PRIMARY KEY,
    Monto DECIMAL(10, 2),
    FechaPago DATE,
    Cliente_idCliente INT,
    Renta_idRenta INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES cliente(idCliente),
    FOREIGN KEY (Renta_idRenta) REFERENCES renta(idRenta)
);









insert into direccion(idDireccion,Direccion,Ciudad,Pais) values
	(1, '213 Acacia Avenue', 'Cleveland', 'Estados Unidos'),
    (2, '20-54 9a Avenida ', 'Buenos Aires', 'Argentina'),
    (3, 'mi casa', '26-73 SMP', 'Guatemala'),
    (4, '367 Las Dalias', 'Monterrey', 'Mexico'),
    (5, '467 San Francisco', 'Manuel Antonio', 'Costa Rica');
  
insert into categoria(idCategoria,Nombre) values
    (1,'Comedia'),
	(2,'Terror'),
    (3,'Romance'),
	(4,'Accion'),
	(5,'Suspenso');

insert into cliente(IdCliente,Nombre,Apellido,Edad,Direccion_idDireccion) values
	(1,'Alan Rey','Thompson','32',1),
    (2,'Sofia Diaz','Rodriguez','28',2),
    (3,'Juliana','Montero','21',3),
    (4,'Lena Dubois','Bernard','21',4),
    (5,'Omar Khan','Abdullah','60',5);
    
insert into peliculas(idPeliculas,Nombre,Duracion,Descripcion,Año,Categoria_idCategoria) values 
	(1,'POKEMON1',97,'Pokemon',2023,2),
	(2,'El Señor de los Anillos',178,'Un hobbit humilde de la Comarca y ocho compañeros emprenden una búsqueda',2001,4),
	(3,' Pulp Fiction',154,'Las vidas de los criminales entrelazadas en Los Ángeles',1994,5),
	(4,'MINECRAFT',162,'Una pelicula del juego de minecraft',2025,1),
	(5,'Parasite ',132,'La codiciosa familia Kim se infiltra en la rica familia Park',2019,1);
    
insert into inventario(idCopiasPeliculas,Disponible,Peliculas_idPeliculas) values
(10, 1, 1), 
(5, 1, 2),   
(3, 1, 3),   
(20, 1, 4),  
(4, 1, 5);   
    
insert into renta(idRenta,fecha_Renta,fecha_Entrega,Inventario_idCopiasPeliculas,Cliente_idCliente) values
	(1,'2025-4-12','2025-5-12',10,1),
    (2,'2025-9-21','2025-12-17',5,2),
    (3,'2025-7-13','2025-9-21',20,3),
    (4,'2025-12-18','2026-1-15',4,4),
    (5,'2025-9-30','2025-11-31',3,5);

    
    INSERT INTO reseña (idReseña, Calificacion, Comentario, Cliente_idCliente, Peliculas_idPeliculas) VALUES
    (1, 5, 'Excelente película, la recomiendo mucho.', 1, 2),
    (2, 4, 'Buena trama, pero un poco larga.', 2, 3),
    (3, 3, 'Pasable, esperaba más acción.', 3, 4),
    (4, 5, '¡Increíble! Mi favorita.', 4, 5),
    (5, 2, 'No fue lo que esperaba, aburrida.', 5, 1);


INSERT INTO pagos (idPago, Monto, FechaPago, Cliente_idCliente, Renta_idRenta) VALUES
    (1, 15.99, '2025-04-25', 1, 1),
    (2, 12.50, '2025-04-26', 2, 2),
    (3, 18.75, '2025-04-27', 3, 3),
    (4, 20.00, '2025-04-28', 4, 4),
    (5, 10.00, '2025-04-29', 5, 5);


SELECT * FROM cliente WHERE Nombre = 'Juliana';
select * from peliculas where Nombre = 'Juliana';
DELETE  FROM peliculas WHERE Nombre = 'POKEMON1';
select * from peliculas order by Categoria_idCategoria asc;
select * from peliculas order by Año desc;
select * from  direccion;
select * from categoria ;
select * from cliente ;
select * from peliculas ;
select * from inventario ;
select * from renta ;
select * from reseña ;
select * from pagos ;