USE tienda_zapatillas 

CREATE TABLE Zapatillas (
id_zapatillas INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
modelo VARCHAR(45) NOT NULL,
color VARCHAR(45) NOT NULL
);

CREATE TABLE Clientes (
id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL,
numero_telefono INT(9) NOT NULL,
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR(45),
provincia VARCHAR(45) NOT NULL,
pais VARCHAR(45) NOT NULL,
codigo_postal VARCHAR(45) NOT NULL
);

CREATE TABLE Empleados (
id_empleado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR(45) NOT NULL,
salario INT,
fecha_incorporacion DATE NOT NULL
);

CREATE TABLE Facturas (
id_factura INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
numero_factura VARCHAR(45) NOT NULL,
fecha DATE NOT NULL,
id_zapatillas INT NOT NULL,
id_empleado INT NOT NULL,
id_cliente INT NOT NULL,
CONSTRAINT fk_Facturas_Zapatillas
FOREIGN KEY (id_zapatillas)
REFERENCES Zapatillas (id_zapatillas),
CONSTRAINT fk_Facturas_Empleados
FOREIGN KEY (id_empleado)
REFERENCES Empleados (id_empleado),
CONSTRAINT fk_Facturas_Clientes
FOREIGN KEY (id_cliente)
REFERENCES Clientes (id_cliente)
);