USE seguros;

-- INSERTAR VALORES EN TABLA CLIENTES - un mínimo de 15 registros por tabla.
INSERT INTO clients (first_name, last_name, email)
VALUES
  ('Juan', 'Pérez', 'juan.perez@example.com'),
  ('María', 'García', 'maria.garcia@example.com'),
  ('Pedro', 'González', 'pedro.gonzalez@example.com'),
  ('Ana', 'López', 'ana.lopez@example.com'),
  ('José', 'Romero', 'jose.romero@example.com'),
  ('Isabel', 'Flores', 'isabel.flores@example.com'),
  ('David', 'Blanco', 'david.blanco@example.com'),
  ('Marta', 'Martínez', 'marta.martinez@example.com'),
  ('Javier', 'Sánchez', 'javier.sanchez@example.com'),
  ('Cristina', 'Rodríguez', 'cristina.rodriguez@mail.com'),
  ("Hanna","Waters","ipsum@google.edu"),
  ("Grace","Oneal","dolor.sit@google.net"),
  ("Jerry","Spears","ridi.mus@icloud.ca"),
  ("Drew","Hinton","libero.donec@google.ca"),
  ("Kyla","Wilson","in@icloud.com"),
  ("Fritz","Sharp","purus.duis@icloud.edu"),
  ("Aspen","Good","varius.ultrices@google.com"),
  ("Cyrus","Price","montes.rius@icloud.couk"),
  ("Jescie","Tyler","enim@google.org"),
  ("Kristen","Church","euismod.enim@icloud.net");
  
INSERT INTO clients (first_name, last_name, email)
VALUES
  ("Austin","Nunez","pharetra@icloud.edu"),
  ("Brett","Fischer","quisque@google.ca"),
  ("Hyatt","Yates","vestibulum.massa@google.com"),
  ("Leila","Black","arcu@hotmail.ca"),
  ("Ciaran","Stout","eget.volutpat@icloud.edu");  
  
-- INSERTAR VALORES EN TABLA departmets
INSERT INTO departments (name)
VALUES
  ('Ventas'),
  ('Marketing'),
  ('Contaduria'),
  ('Tecnologia'),
  ('Legales'),
  ('Siniestros'),
  ('Recursos Humanos'),
  ('Administracion'),
  ('Suscripciones'),
  ('Peritaje'),
  ('Soporte Tecnico'),
  ('Capacitaciones'),
  ('Atencion Productores'),
  ('Comercial'),
  ('Pagos');


-- INSERTAR VALORES EN LA TABLA officies
INSERT INTO offices (location, department_id)
VALUES
	('Colon 756, Mendoza', 1),
  ('Pebro B Palacios 2650, Mendoza', 5),
  ('Pebro B Palacios 2650, Mendoza', 4),
  ('Complejo Plaza Carrodilla, Mendoza', 1),
  ('Corrientes 403, CABA', 3),
  ('Cerro de las Rosas, Cordoba', 6),
  ('9 de Julio 801, CABA', 8),
  ('Av Velez Sarfield 1050, Cordoba', 7),
  ('Calle Rivadavia 105, Neuquen', 15),
  ('Agustin Alvarez 607, Mendoza', 12),
  ('Corrientes 403, CABA', 9),
  ('Corrientes 403, CABA', 15),
  ('Corrientes 403, CABA', 12),
  ('Corrientes 403, CABA', 13),
  ('Corrientes 403, CABA', 2),
  ('Colon 756, Mendoza', 13),
  ('Complejo Plaza Carrodilla, Mendoza', 6),
  ('Complejo Plaza Carrodilla, Mendoza', 15),
  ('Calle Rivadavia 105, Neuquen', 13),
  ('Cerro de las Rosas, Cordoba', 13),
  ('Av San Martin 501, Mendoza', 3),
  ('Av San Martin 501, Mendoza', 11),
  ('Av San Martin 501, Mendoza', 3),
  ('Av San Martin 501, Mendoza', 7),
  ('Av San Martin 501, Mendoza', 9),
  ('Av San Martin 501, Mendoza', 3),
  ('Jose Ingenieros 678, Chubut', 1),
  ('Jose Ingenieros 678, Chubut', 6),
  ('Jose Ingenieros 678, Chubut', 10),
  ('Av Circunvalación 1060, Santa Fe', 1),
  ('Av Circunvalación 1060, Santa Fe', 10),
  ('Av Circunvalación 1060, Santa Fe', 15),
  ('Granaderos 608, San Luis', 5),
  ('Granaderos 608, San Luis', 14),
  ('Granaderos 608, San Luis', 6),
  ('Nicolas Avellaneda 318, Santa Cruz', 1),
  ('Nicolas Avellaneda 318, Santa Cruz', 12),
  ('Perito Moreno 950, Salta', 11),
  ('Perito Moreno 950, Salta', 4),
  ('Rawson 809, Jujuy', 2),
  ('Rawson 809, Jujuy', 9);


-- INSERTAR VALORES EN TABLA PRODUCERS
INSERT INTO producers (producer_number, name, commision_percentage, office_id)
VALUES
	(7039, 'Matias Christello', 14.5, 1),
    (809, 'Diego Mathiot', 14.5, 1),
  (370, 'Andres Setien', 16.0, 1),
  (12651, 'Alvaro Perez', 12.0, 3),
  (1058, 'Eduardo Gonzalez', 12.0, 1),
  (689, 'Fabiana Sosa', 14.0, 6),
  (6669, 'Alfredo Gonzalez', 12.0, 15),
  (450, 'Roberto Gomez', 12.5, 15),
  (10650, 'Mauro Ramirez', 14.0, 3),
  (9876, 'Federico Alvarez', 12.0, 5),
  (1050, 'Jose Gutierrez', 12.0, 2),
  (1836, 'Esteban Alarcon', 14.0, 1),
  (4059, 'Nicolas Estevez', 16.0, 5),
  (6577, 'Susana Gomez', 17.0, 5),
  (12312, 'Diana Charmentia', 12.0, 15),
  (14560, 'Julieta Albertengo', 14.0, 1);
  
    
-- INSERTAR VALORES EN LA TABLA VEHICLES
START TRANSACTION;
INSERT INTO vehicles (brand, model, year, value)
VALUES
  ('Toyota', 'Corolla 2.0 XLI CVT', 2023, 26000000),
  ('Honda', 'CRV 1.5 4x2 EX', 2022, 53000000),
  ('Ford', 'F-150 4.6 XLT Space', 1999, 19100000),
  ('Chevrolet', 'Blazer 2.8 DLX TDI 4x4', 2010, 10600000),
  ('Nissan', 'Sentra 2.0 SR CVT', 2020, 27250000),
  ('Volkswagen', 'Golf VII 1.6 FSI Trendline', 2018, 16750000),
  ('Hyundai', 'Elantra 1.8 Full Seg Premium', 2016, 13000000),
  ('Volkswagen', 'Polo 1.6 Comf', 2016, 11800000),
  ('Peugeot', '208 1.6 Allure', 2015, 10400000),
  ('Peugeot', '3008 1.6 Roland Garros', 2014, 12700000),
  ('Volkswagen', 'Gol Trend 1.6 Highline', 2020, 11600000),
  ('Chevrolet', 'Agile 1.4 LTZ Spirit', 2012, 7500000),
  ('Ford', 'Ka 1.0 Fly', 2011, 5300000),
  ('Fiat', 'Argo 1.3 GSE Drive', 2017, 11500000),
  ('Fiat', 'Cronos 1.3 Attractive', 2022, 12100000),
  ('Chevrolet', 'Classic 1.4 LS Pack', 2016, 6500000),
  ('Renault', 'Koleos', 2020, 22400000);



  
-- INSERTAR VALORES EN LA TABLA employes
INSERT INTO employees (name, position, office_id)
VALUES
  ('Juan Pérez', 'Gerente de Ventas', 1),
  ('María García', 'Contadora', 5),
  ('Pedro González', 'Analista de Marketing', 2),
  ('Ana López', 'Desarrolladora de Software', 3),
  ('José Romero', 'Diseñador UI', 15),
  ('Isabel Flores', 'Asistente de Recursos Humanos', 2),
  ('David Blanco', 'Representante de Atención al Cliente', 1),
  ('Axel Galesi', 'Jefe de Servicio', 8),	
  ('Paula Albarracin', 'Jefe de Servicio', 8),	
  ('Jeronimo Gonzalez', 'Jefe de Servicio', 8),	
  ('Alex Ruiz', 'Jefe de Servicio', 10),	
  ('Alejandro Galan', 'Capacitador', 12),	
  ('Juan Garcia', 'Jefe de Servicio', 14),	
  ('Lorenzo Arancibia', 'Jefe de Servicio', 13),	
  ('Pablo Fernandez', 'Jefe de Servicio', 11),	
  ('Fernanda Lorenzetti', 'Jefe de Servicio', 7),	
  ('Julio DiLorenzo', 'Jefe de Servicio', 25),	
  ('Lucia Fernandez', 'Secretaria', 35),
  ("Jordan Henson","Empleado",29),
  ("Courtney Tyler","Empleado",16),
  ("Garth Goff","Empleado",40),
  ("Jaden Atkins","Empleado",16),
  ("Avram Whitney","Empleado",33),
  ("Bernard Williamson","Empleado",15),
  ("Katelyn Santos","Empleado",33),
  ("Deirdre Goodwin","Empleado",23),
  ("Xenos Lopez","Empleado",22),
  ("Yetta Ortiz","Empleado",30),
  ("Samuel Whitley","Empleados",29),
  ("Illiana Brennan","Empleado",15),
  ("Jason Mcmillan","Empleado",41),
  ("Eliana Eaton","Empleado",31),
  ("Lana Guerra","Empleadon",21),
  ("Pascale Munoz","Empleado",23),
  ("Willa Kline","Empleado",20),
  ("Tatyana Hawkins","Empleado",30),
  ("Janna Dodson","Empleado",22),
  ("Leigh Huff","Empleado",15);
  

  

-- INSERTAR VALORES EN COVERAGE
INSERT INTO COVERAGE (description, type)
VALUES
	('Responsabilidad Civil contra Terceros', 'A'),
	('Responsabilidad Civil, Robo/Hurto Total e Incendio total', 'B1'),
  ('Responsabilidad Civil, Robo/Hurto Total y Parcial e Incendio total y parcial', 'C1'),
  ('Responsabilidad Civil, Robo/Hurto Total y Parcial e Incendio total y parcial, Destrucción total por accidente, Cristales y Granizo', 'C7'),
  ('Responsabilidad Civil, Robo/Hurto Total y Parcial e Incendio total y parcial, Destrucción total por accidente, Daños parciales sin franquicia, Cristales y Granizo', 'D'),
  ('Responsabilidad Civil, Robo/Hurto Total y Parcial e Incendio total y parcial, Destrucción total por accidente, Daños parciales con franquicia variable Cristales y Granizo', 'D3');

    
-- INSERTAR VALORES EN POLICIES
INSERT INTO POLICIES (policy_number, producer_number, start_date, ending_date, coverage_id, fee, client, vehicle_id)
VALUES
	(1, 7039, '2023-10-20', DATE_ADD(start_date, INTERVAL 1 YEAR), 6, 987.75, 1, 1),
	(2, 7039, '2024-03-05', DATE_ADD(start_date, INTERVAL 1 YEAR), 5, 1100.00, 2, 4),
	(3, 370, '2023-09-01', DATE_ADD(start_date, INTERVAL 1 YEAR), 1, 725.10, 3, 10),
	(4, 12651, '2024-04-10', DATE_ADD(start_date, INTERVAL 1 YEAR), 2, 1350.00, 4, 6),
	(5, 689, '2023-11-15', DATE_ADD(start_date, INTERVAL 1 YEAR), 3, 689.95, 5, 8),
	(6, 14560, '2024-05-01', DATE_ADD(start_date, INTERVAL 1 YEAR), 4, 1025.75, 1, 14),
	(7, 9876, '2023-10-23', DATE_ADD(start_date, INTERVAL 1 YEAR), 2, 825.75, 20, 12),
	(8, 809, '2023-05-01', DATE_ADD(start_date, INTERVAL 1 YEAR), 1, 750, 1, 11),
	(9, 12312, '2023-10-01', DATE_ADD(start_date, INTERVAL 1 YEAR), 3, 890, 18, 5),
	(10, 1836, '2023-12-10', DATE_ADD(start_date, INTERVAL 1 YEAR), 1, 750, 12, 11),
	(11, 6669, '2023-08-15', DATE_ADD(start_date, INTERVAL 1 YEAR), 4, 2200.50, 16, 15),
	(12, 6577, '2023-09-22', DATE_ADD(start_date, INTERVAL 1 YEAR), 5, 3670, 11, 16),
	(13, 12651, '2023-07-6', DATE_ADD(start_date, INTERVAL 1 YEAR), 3, 1020, 19, 7),
	(14, 4059, '2023-12-15', DATE_ADD(start_date, INTERVAL 1 YEAR), 2, 950, 17, 6),
	(15, 1050, '2023-11-28', DATE_ADD(start_date, INTERVAL 1 YEAR), 6, 5000, 14, 17),
	(16, 10650, '2023-12-25', DATE_ADD(start_date, INTERVAL 1 YEAR), 5, 4560, 9, 9),
	(17, 7039, '2024-08-19', DATE_ADD(start_date, INTERVAL 1 YEAR), 1, 750, 10, 13),
	(18, 809, '2024-08-15', DATE_ADD(start_date, INTERVAL 1 YEAR), 5, 6570, 14, 6),
	(19, 1058, '2024-10-16', DATE_ADD(start_date, INTERVAL 1 YEAR), 6, 7214, 13, 1),
	(20, 450, '2023-12-25', DATE_ADD(start_date, INTERVAL 1 YEAR), 3, 875.40, 10, 5);

-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`seguros`.`policies`, CONSTRAINT `policies_ibfk_1` FOREIGN KEY (`client`) REFERENCES `clients` (`client_id`))


-- INSERTAR VALORES EN CALIMS
INSERT INTO claims (claim_date, client_id, policy_number, payment_made, description)
VALUES
	('2024-02-10', 2, 2, 0, 'Parabrisas'),
  ('2024-03-15', 4, 4, 0, 'Robo Total'),
  ('2024-01-20', 3, 3, 0, 'Choque, asegurado no culpable'),
  ('2024-04-01', 1, 6, 1, 'Robo rueda delantera derecha'),
	('2024-03-20', 1, 1, 1, 'Caida de arbol'),
	('2024-04-10', 2, 2, 1, 'Robo bateria'),
	('2024-01-06', 14, 15, 1, 'Cristal delantero, lateral derecho'),
	('2023-12-25', 10, 20, 0, 'Robo rueda de auxilio'),
	('2024-04-10', 10, 17, 0, 'Choque. Asegurado culpable'),
	('2024-04-08', 9, 16, 1, 'Robo 4 ruedas de posición'),
	('2024-04-04', 16, 11, 1, 'Luneta'),
	('2024-04-01', 11, 12, 1, 'Parabrisas'),
	('2024-04-08', 14, 18, 0, 'Granizo'),
	('2024-04-05', 13, 19, 1, 'Granizo'),
  ('2023-11-14', 5, 5, 0, 'Robo rueda');

-- INSERTAR VALORES EN PAYMENT
INSERT INTO payments (payment_date, amount, policy_number, claim_id)
VALUES
	('2024-04-20', 250000.00, 6, 4),
  ('2024-03-01', 550000.00, 1, 5),
  ('2024-03-01', 178000.00, 2, 1),
  ('2024-04-11', 450000.00, 4, 2),
  ('2024-04-11', 150000.00, 2, 6),
  ('2024-04-11', 185000.00, 15, 7),
  ('2024-04-11', 1400000.00, 16, 10),
  ('2024-04-11', 350000.00, 11, 11),
  ('2024-04-11', 385000.00, 12, 12),
  ('2024-04-11', 750000.00, 19, 14),
  ('2024-04-11', 340000.00, 5, 15),
  ('2024-04-11', 475000.00, 18, 13),
  ('2024-04-11', 1350000.00, 17, 9),
  ('2024-04-11', 190000.00, 20, 8),
  ('2024-06-10', 00.00, 3, 3);
