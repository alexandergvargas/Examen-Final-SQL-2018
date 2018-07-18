

Create database Empresa


CREATE TABLE Apoderados (
    id_apo int  NOT NULL,
    nom_apo varchar(50)  NOT NULL,
    ape_apo varchar(50)  NOT NULL,
    dni_apo char(8)  NOT NULL,
    direccion_apo varchar(50)  NOT NULL,
    asigestu_apo varchar(50)  NOT NULL,
    edad_apo char(2)  NOT NULL,
    Estudiante_id_estu int  NOT NULL,
    CONSTRAINT Apoderados_pk PRIMARY KEY (id_apo)
);

-- Table: EmpresaBenito
CREATE TABLE EmpresaBenito (
    id_bus int  NOT NULL,
    tipo_bus varchar(20)  NOT NULL,
    colo_bus varchar(20)  NOT NULL,
    cant_bus varchar(50)  NOT NULL,
    numchof_bus char(99)  NOT NULL,
    numasis_bus char(99)  NOT NULL,
    dnichof_bus char(8)  NOT NULL,
    dniasis_bus char(8)  NOT NULL,
    tiempservicio_bus varchar(50)  NOT NULL,
    costviaje_bus varchar(20)  NOT NULL,
    Apoderados_id_apo int  NOT NULL,
    Estudiante_id_estu int  NOT NULL,
    CONSTRAINT EmpresaBenito_pk PRIMARY KEY (id_bus)
);

-- Table: Estudiante
CREATE TABLE Estudiante (
    id_estu int  NOT NULL,
    nom_estu varchar(50)  NOT NULL,
    ape_estu varchar(50)  NOT NULL,
    dni_estu char(8)  NOT NULL,
    eda_estu char(2)  NOT NULL,
    fecnac_estu date  NOT NULL,
    nombarrio_estu varchar(30)  NOT NULL,
    nomcolegi_estu varchar(50)  NOT NULL,
    tipomodalidad_estu varchar(50)  NOT NULL,
    CONSTRAINT Estudiante_pk PRIMARY KEY (id_estu)
);

-- foreign keys
-- Reference: Apoderados_Estudiante (table: Apoderados)
ALTER TABLE Apoderados ADD CONSTRAINT Apoderados_Estudiante
    FOREIGN KEY (Estudiante_id_estu)
    REFERENCES Estudiante (id_estu)  


;

-- Reference: EmpresaBenito_Apoderados (table: EmpresaBenito)
ALTER TABLE EmpresaBenito ADD CONSTRAINT EmpresaBenito_Apoderados
    FOREIGN KEY (Apoderados_id_apo)
    REFERENCES Apoderados (id_apo)  
 

;

-- Reference: EmpresaBenito_Estudiante (table: EmpresaBenito)
ALTER TABLE EmpresaBenito ADD CONSTRAINT EmpresaBenito_Estudiante
    FOREIGN KEY (Estudiante_id_estu)
    REFERENCES Estudiante (id_estu)  

;
select * from Estudiante

INSERT INTO Estudiante (id_estu,nom_estu,ape_estu,dni_estu,eda_estu,fecnac_estu,nombarrio_estu,nomcolegi_estu,tipomodalidad_estu) 
VALUES

('1','Josue Daniel','Robles Venancio','99516401','12','01/02/2000','lima','San Juan de Barcelona','Mañana y medio dia'),
('2','Brayan Yorbil','Baltazar Pio','98682023','14','01/02/2000','Mala','Circumbalizacion Sur Mz B2 lt17','Mañana'),
('3','Nicol Alexandra','Valeriano Camacho','92328921','10','01/02/2000','San vicente','Calle. Los Cedros Mz E lt11 A.H San Antonio','tarde'),
('4','Juan Altair','Arias Cervantes','96484479','10','01/02/2000','mala','Calle Conquistadores Mz G lt24','medio dia'),
('5','Rolando Edu','Soriano Trujillo','95067831','10','01/02/2000','mala','Avima Mz B lt3_Mala','Mañana'),
('6','Steven Omar','Gutierrez Alarcon','99563993','10','01/02/2000','mala','Calle Juaquin Retes lt23','Mañana'),
('7','Angela','Arias Salinas','98889537','10','01/02/2000','mala','Prolongacion Swayne S/N Mala','Mañana y medio dia'),
('8','Melisa Fernanda','Reina Tomas','96471661','10','01/02/2000','mala','Jiron Real 343','Mañana y medio dia'),
('9','Juan Manuel','Vega Cjuno','96528442','10','01/02/2000','mala','Las Begoñas Mz lt7 Avima-Mala','Mañana y medio dia'),
('10','Hilary Norma','Garridos Riveros','71343300','10','01/02/2000','mala','Jiron Real 561','Mañana y mdeio dia'),
('11','Daysi Giulianna','Figueroa Quispe','93877592','10','01/02/2000','mala','AA.HH Santa Rosa Calle Progreso','Mañana y medio dia'),
('12','Cynthia Vanessa','Colan Torres','96800912','12','01/02/2000','mala','Jiron Real 471','Tarde'),
('13','Jonathan Frank','Valdiglesias Castillon','98997483','11','01/02/2000','mala','Panamericana Antigua','Mañana'),
('14','Ruth Esteffany','Valeriano Arias','99001520','10','01/02/2000','mala','Calle 5 de Diciembre_Dignidad Nacional','Mañana y medio dia'),
('15','Alexandro Diego','Prado Castillo','93644575','10','01/02/2000','mala','Jiron Swayne S/N DPTO E','Mañana'),
('16','Alexsief Maykol','Vivas Sorianio','97883249','11','01/02/2000','mala','Calle las Begoñas Mz J lt17 Avima_Mala','Mañana'),
('17','Ana Cristina','Huaman Huaman','92549311','14','01/02/2000','mala','Calle los Laureles','Mañana y medio dia')
go

select * from Estudiante
select * from Apoderados


INSERT INTO Apoderados(id_apo,nom_apo,ape_apo,dni_apo,direccion_apo,asigestu_apo,edad_apo,Estudiante_id_estu) 
VALUES

('2','Brayan Yorbil','Baltazar Pio','9868203','Mala','alex','50','1'),
('3','Juan Altair','Arias Cervantes','96484479','Mala','alex','50','2')
go


select * from EmpresaBenito
INSERT INTO EmpresaBenito(id_bus,tipo_bus,colo_bus,cant_bus,numchof_bus,numasis_bus,dnichof_bus,dniasis_bus,tiempservicio_bus,costviaje_bus) 
VALUES

('1','Bus','amarillo','2','felix huapaya','sergio peña','72252571','72252570','1mes','100')
go

select * from estudiante
select * from Apoderados


/*traer data de los estudainte nombre, apellido */
create view vw_Estudiante
 as
select 
nom_estu,ape_estu from Estudiante

select * from vw_Estudiante

/*traer data de los estudainte nombre, apellido y dni*/

create view vw_Estudiant
 as
select 
nom_estu,ape_estu,dni_estu from Estudiante 

select * from vw_Estudiant

/*traer data de los apoderados nombre, apellido, dni , edad y el  id del estudainte asigando  */
create view vw_Apoderado
 as
select 
nom_apo,ape_apo,dni_apo,Estudiante_id_estu from Apoderados
select * from vw_Apoderado

/*traer data de los estudainte nombre, apellido, dni, edad, tipo de modalidad*/

create view vw_Estu
 as
select 
nom_estu,ape_estu,dni_estu, eda_estu,tipomodalidad_estu from Estudiante 

select * from vw_Estu

/*traer data de los estudainte nombre, apellido, nombre de barrioo, tipo de modalidad*/


create view vw_Estudin
 as
select 
nom_estu,ape_estu,nombarrio_estu,tipomodalidad_estu from Estudiante 

select * from vw_Estudin
