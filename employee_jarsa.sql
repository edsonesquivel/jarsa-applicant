--CREATE DATABASE employee_employee;
USE employee_employee;

CREATE TABLE employee(
id numeric(10) primary key,
first_name varchar(100) null,
last_name varchar(100) null
);

CREATE TABLE employee_department(
id numeric(10) primary key,
name varchar(100) null,
description varchar(100) null
);

INSERT INTO employee SELECT 1, 'JUAN','PEREZ'
INSERT INTO employee SELECT 2, 'ROBERTO','MARTINEZ'
INSERT INTO employee SELECT 3, 'DAFNE','KEEN'
INSERT INTO employee SELECT 4, 'ALICIA','VIKANDER'

INSERT INTO employee_department SELECT 1, 'RH', 'DEPTO. RECURSOS HUMANOS'
INSERT INTO employee_department SELECT 2, 'TI', 'DEPTO DE INFORMATICA'
INSERT INTO employee_department SELECT 3, 'VENTAS', 'AREA DE VENTAS'
INSERT INTO employee_department SELECT 4, 'COMPRAS', 'AREA DE COMPRAS'
INSERT INTO employee_department SELECT 5, 'FINANZAS', 'CONTABILIDAD/FINANZAS'
INSERT INTO employee_department SELECT 6, 'DIRECCION', 'DIRECCION GRAL'

CREATE TABLE rel_e_d (
id numeric(10) primary key identity(1,1),
id_employee numeric(10),
id_department numeric(10)
)

ALTER TABLE rel_e_d
ADD CONSTRAINT UC_employee UNIQUE (id_employee)

INSERT INTO rel_e_d (id_employee,id_department) VALUES (1,1)
INSERT INTO rel_e_d (id_employee,id_department) VALUES (2,2)
INSERT INTO rel_e_d (id_employee,id_department) VALUES (3,2)
INSERT INTO rel_e_d (id_employee,id_department) VALUES (4,3)
