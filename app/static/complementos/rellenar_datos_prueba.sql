-- llenar la tabla tipo cliente ----

insert into tipo_cliente (TipoCliente) 
values('Empresa'),('Otro');


-- poblar la tabla ciudades ---
INSERT INTO ciudades (Ciudad)
VALUES 
  ('Bogotá'),
  ('Medellín'),
  ('Cali'),
  ('Barranquilla'),
  ('Cartagena'),
  ('Cúcuta'),
  ('Bucaramanga'),
  ('Pereira'),
  ('Santa Marta'),
  ('Ibagué'),
  ('Manizales'),
  ('Villavicencio'),
  ('Pasto'),
  ('Montería'),
  ('Armenia'),
  ('Neiva'),
  ('Valledupar'),
  ('Popayán'),
  ('Sincelejo'),
  ('Tunja');

-- poblar la tabla rol --
insert into roles (Rol) values ('Mecanico');


-- adicionar estado activo inactivo a tabla estado_empleados:---

insert into estado_empleados(estado) values ('ACTIVO'), ('INACTIVO');

-- Poblar tabla marcas 

INSERT INTO marcas (marca) VALUES
('Toyota'),
('Honda'),
('Ford'),
('Chevrolet');

INSERT INTO tipos_carroceria (TipoCarroceria) VALUES
('Sedán'),
('Hatchback'),
('SUV'),
('Coupé'),
('Convertible'),
('Camioneta'),
('Furgoneta'),
('Wagon'),
('Pick-up'),
('Minivan');

-- Poblar la tabla cargos
insert into cargos(Cargo) values ('Mecanico'), ('Secretaria'), ('Administrador');


-- ingresar empleado de prueba
insert into empleados (CC, Nombres, Apellidos, IdCargo, Direccion, Email, Telefono, IdEstado, IdCiudad)
values ('1111', 'Jose Rayo', 'Perez', 1, 'calle 100','joserayo@prueba.com', '12345678', 1, 1);


-- Poblar tabla estado_os
insert into estado_os(EstadoOS) values ('Abierta'), ('Cerrada'), ('Cancelada');