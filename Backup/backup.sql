-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: seguros
-- ------------------------------------------------------
-- Server version	8.0.34

CREATE DATABASE  IF NOT EXISTS `seguros` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `seguros`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
    `client_id` int NOT NULL AUTO_INCREMENT,
    `first_name` varchar(25) NOT NULL,
    `last_name` varchar(25) NOT NULL,
    `email` varchar(30) NOT NULL,
    PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Juan','Pérez','juancitoPerez@email.com'),(2,'María','García','maria.garcia@example.com'),(3,'Pedro','González','pedro.gonzalez@example.com'),(4,'Ana','López','ana.lopez@example.com'),(5,'José','Romero','jose.romero@example.com'),(6,'Isabel','Flores','isabel.flores@example.com'),(7,'David','Blanco','david.blanco@example.com'),(8,'Marta','Martínez','marta.martinez@example.com'),(9,'Javier','Sánchez','javier.sanchez@example.com'),(10,'Cristina','Rodríguez','cristina.rodriguez@mail.com'),(11,'Hanna','Waters','ipsum@google.edu'),(12,'Grace','Oneal','dolor.sit@google.net'),(13,'Jerry','Spears','ridi.mus@icloud.ca'),(14,'Drew','Hinton','libero.donec@google.ca'),(15,'Kyla','Wilson','in@icloud.com'),(16,'Fritz','Sharp','purus.duis@icloud.edu'),(17,'Aspen','Good','varius.ultrices@google.com'),(18,'Cyrus','Price','montes.rius@icloud.couk'),(19,'Jescie','Tyler','enim@google.org'),(20,'Kristen','Church','euismod.enim@icloud.net'),(21,'Austin','Nunez','pharetra@icloud.edu'),(22,'Brett','Fischer','quisque@google.ca'),(23,'Hyatt','Yates','vestibulum.massa@google.com'),(24,'Leila','Black','arcu@hotmail.ca'),(25,'Ciaran','Stout','eget.volutpat@icloud.edu');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;


--
-- Table structure for table `coverage`
--

DROP TABLE IF EXISTS `coverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coverage` (
    `coverage_id` int NOT NULL AUTO_INCREMENT,
    `description` varchar(255) DEFAULT NULL,
    `type` varchar(20) DEFAULT NULL,
    PRIMARY KEY (`coverage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coverage`
--

LOCK TABLES `coverage` WRITE;
/*!40000 ALTER TABLE `coverage` DISABLE KEYS */;
INSERT INTO `coverage` VALUES (1,'Responsabilidad Civil contra Terceros','A'),(2,'Responsabilidad Civil, Robo/Hurto Total e Incendio total','B1'),(3,'Responsabilidad Civil, Robo/Hurto Total y Parcial e Incendio total y parcial','C1'),(4,'Responsabilidad Civil, Robo/Hurto Total y Parcial e Incendio total y parcial, Destrucción total por accidente, Cristales y Granizo','C7'),(5,'Responsabilidad Civil, Robo/Hurto Total y Parcial e Incendio total y parcial, Destrucción total por accidente, Daños parciales sin franquicia, Cristales y Granizo','D'),(6,'Responsabilidad Civil, Robo/Hurto Total y Parcial e Incendio total y parcial, Destrucción total por accidente, Daños parciales con franquicia variable Cristales y Granizo','D3');
/*!40000 ALTER TABLE `coverage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
    `department_id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Ventas'),(2,'Marketing'),(3,'Contaduria'),(4,'Tecnologia'),(5,'Legales'),(6,'Siniestros'),(7,'Recursos Humanos'),(8,'Administracion'),(9,'Suscripciones'),(10,'Peritaje'),(11,'Soporte Tecnico'),(12,'Capacitaciones'),(13,'Atencion Productores'),(14,'Comercial'),(15,'Pagos');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
    `vehicle_id` int NOT NULL AUTO_INCREMENT,
    `brand` varchar(50) NOT NULL,
    `model` varchar(50) NOT NULL,
    `year` int NOT NULL,
    `value` decimal(14,2) NOT NULL,
    PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'Toyota','Corolla 2.0 XLI CVT',2023,26000000.00),(2,'Honda','CRV 1.5 4x2 EX',2022,53000000.00),(3,'Ford','F-150 4.6 XLT Space',1999,19100000.00),(4,'Chevrolet','Blazer 2.8 DLX TDI 4x4',2010,10600000.00),(5,'Nissan','Sentra 2.0 SR CVT',2020,27250000.00),(6,'Volkswagen','Golf VII 1.6 FSI Trendline',2018,16750000.00),(7,'Hyundai','Elantra 1.8 Full Seg Premium',2016,13000000.00),(8,'Volkswagen','Polo 1.6 Comf',2016,11800000.00),(9,'Peugeot','208 1.6 Allure',2015,10400000.00),(10,'Peugeot','3008 1.6 Roland Garros',2014,12700000.00),(11,'Volkswagen','Gol Trend 1.6 Highline',2020,11600000.00),(12,'Chevrolet','Agile 1.4 LTZ Spirit',2012,7500000.00),(13,'Ford','Ka 1.0 Fly',2011,5300000.00),(14,'Fiat','Argo 1.3 GSE Drive',2017,11500000.00),(15,'Fiat','Cronos 1.3 Attractive',2022,12100000.00),(16,'Chevrolet','Classic 1.4 LS Pack',2016,6500000.00),(17,'Renault','Koleos',2020,22400000.00);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `offices`
--

DROP TABLE IF EXISTS `offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offices` (
    `office_id` int NOT NULL AUTO_INCREMENT,
    `location` varchar(100) NOT NULL,
    `department_id` int NOT NULL,
    PRIMARY KEY (`office_id`),
    KEY `department_id` (`department_id`),
    CONSTRAINT `offices_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offices`
--

LOCK TABLES `offices` WRITE;
/*!40000 ALTER TABLE `offices` DISABLE KEYS */;
INSERT INTO `offices` VALUES (1,'Colon 756, Mendoza',1),(2,'Pebro B Palacios 2650, Mendoza',5),(3,'Pebro B Palacios 2650, Mendoza',4),(4,'Complejo Plaza Carrodilla, Mendoza',1),(5,'Corrientes 403, CABA',3),(6,'Cerro de las Rosas, Cordoba',6),(7,'9 de Julio 801, CABA',8),(8,'Av Velez Sarfield 1050, Cordoba',7),(9,'Calle Rivadavia 105, Neuquen',15),(10,'Agustin Alvarez 607, Mendoza',12),(11,'Corrientes 403, CABA',9),(12,'Corrientes 403, CABA',15),(13,'Corrientes 403, CABA',12),(14,'Corrientes 403, CABA',13),(15,'Corrientes 403, CABA',2),(16,'Colon 756, Mendoza',13),(17,'Complejo Plaza Carrodilla, Mendoza',6),(18,'Complejo Plaza Carrodilla, Mendoza',15),(19,'Calle Rivadavia 105, Neuquen',13),(20,'Cerro de las Rosas, Cordoba',13),(21,'Av San Martin 501, Mendoza',3),(22,'Av San Martin 501, Mendoza',11),(23,'Av San Martin 501, Mendoza',3),(24,'Av San Martin 501, Mendoza',7),(25,'Av San Martin 501, Mendoza',9),(26,'Av San Martin 501, Mendoza',3),(27,'Jose Ingenieros 678, Chubut',1),(28,'Jose Ingenieros 678, Chubut',6),(29,'Jose Ingenieros 678, Chubut',10),(30,'Av Circunvalación 1060, Santa Fe',1),(31,'Av Circunvalación 1060, Santa Fe',10),(32,'Av Circunvalación 1060, Santa Fe',15),(33,'Granaderos 608, San Luis',5),(34,'Granaderos 608, San Luis',14),(35,'Granaderos 608, San Luis',6),(36,'Nicolas Avellaneda 318, Santa Cruz',1),(37,'Nicolas Avellaneda 318, Santa Cruz',12),(38,'Perito Moreno 950, Salta',11),(39,'Perito Moreno 950, Salta',4),(40,'Rawson 809, Jujuy',2),(41,'Rawson 809, Jujuy',9);
/*!40000 ALTER TABLE `offices` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `producers`
--

DROP TABLE IF EXISTS `producers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producers` (
    `producer_number` int NOT NULL,
    `name` varchar(100) NOT NULL,
    `commision_percentage` decimal(4,2) NOT NULL,
    `office_id` int NOT NULL,
    PRIMARY KEY (`producer_number`),
    KEY `office_id` (`office_id`),
    CONSTRAINT `producers_ibfk_1` FOREIGN KEY (`office_id`) REFERENCES `offices` (`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producers`
--

LOCK TABLES `producers` WRITE;
/*!40000 ALTER TABLE `producers` DISABLE KEYS */;
INSERT INTO `producers` VALUES (370,'Andres Setien',16.00,1),(450,'Roberto Gomez',12.50,15),(689,'Fabiana Sosa',14.00,6),(809,'Diego Mathiot',14.50,1),(1050,'Jose Gutierrez',12.00,2),(1058,'Eduardo Gonzalez',12.00,1),(1836,'Esteban Alarcon',14.00,1),(4059,'Nicolas Estevez',16.00,5),(6577,'Susana Gomez',17.00,5),(6669,'Alfredo Gonzalez',12.00,15),(7039,'Matias Christello',14.50,1),(9876,'Federico Alvarez',12.00,5),(10650,'Mauro Ramirez',14.00,3),(12312,'Diana Charmentia',12.00,15),(12651,'Alvaro Perez',12.00,3),(14560,'Julieta Albertengo',14.00,1);
/*!40000 ALTER TABLE `producers` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `policies`
--

DROP TABLE IF EXISTS `policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policies` (
    `policy_number` int NOT NULL,
    `producer_number` int NOT NULL,
    `coverage_id` int NOT NULL,
    `vehicle_id` int NOT NULL,
    `client` int NOT NULL,
    `fee` decimal(10,2) NOT NULL,
    `start_date` date NOT NULL,
    `ending_date` date NOT NULL,
    PRIMARY KEY (`policy_number`),
    KEY `client` (`client`),
    KEY `coverage_id` (`coverage_id`),
    KEY `vehicle_id` (`vehicle_id`),
    KEY `producer_number` (`producer_number`),
    CONSTRAINT `policies_ibfk_1` FOREIGN KEY (`client`) REFERENCES `clients` (`client_id`),
    CONSTRAINT `policies_ibfk_2` FOREIGN KEY (`coverage_id`) REFERENCES `coverage` (`coverage_id`),
    CONSTRAINT `policies_ibfk_3` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`),
    CONSTRAINT `policies_ibfk_4` FOREIGN KEY (`producer_number`) REFERENCES `producers` (`producer_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policies`
--

LOCK TABLES `policies` WRITE;
/*!40000 ALTER TABLE `policies` DISABLE KEYS */;
INSERT INTO `policies` VALUES (1,7039,6,1,1,987.75,'2023-10-20','2024-10-20'),(2,7039,5,4,2,1100.00,'2024-03-05','2025-03-05'),(3,370,1,10,3,725.10,'2023-09-01','2024-09-01'),(4,12651,2,6,4,1350.00,'2024-04-10','2025-04-10'),(5,689,3,8,5,689.95,'2023-11-15','2024-11-15'),(6,14560,4,14,1,1025.75,'2024-05-01','2025-05-01'),(7,9876,2,12,20,825.75,'2023-10-23','2024-10-23'),(8,809,1,11,1,750.00,'2023-05-01','2024-05-01'),(9,12312,3,5,18,890.00,'2023-10-01','2024-10-01'),(10,1836,1,11,12,750.00,'2023-12-10','2024-12-10'),(11,6669,4,15,16,2200.50,'2023-08-15','2024-08-15'),(12,6577,5,16,11,3670.00,'2023-09-22','2024-09-22'),(13,12651,3,7,19,1020.00,'2023-07-06','2024-07-06'),(14,4059,2,6,17,950.00,'2023-12-15','2024-12-15'),(15,1050,6,17,14,5000.00,'2023-11-28','2024-11-28'),(16,10650,5,9,9,4560.00,'2023-12-25','2024-12-25'),(17,7039,1,13,10,750.00,'2024-08-19','2025-08-19'),(18,809,5,6,14,6570.00,'2024-08-15','2025-08-15'),(19,1058,6,1,13,7214.00,'2024-10-16','2025-10-16'),(20,450,3,5,10,875.40,'2023-12-25','2024-12-25');
/*!40000 ALTER TABLE `policies` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `claims`
--

DROP TABLE IF EXISTS `claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claims` (
    `claim_id` int NOT NULL AUTO_INCREMENT,
    `client_id` int NOT NULL,
    `policy_number` int NOT NULL,
    `payment_made` tinyint(1) DEFAULT '0',
    `claim_date` date NOT NULL,
    `description` text,
    PRIMARY KEY (`claim_id`),
    KEY `policy_number` (`policy_number`),
    KEY `client_id` (`client_id`),
    CONSTRAINT `claims_ibfk_1` FOREIGN KEY (`policy_number`) REFERENCES `policies` (`policy_number`),
    CONSTRAINT `claims_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claims`
--

LOCK TABLES `claims` WRITE;
/*!40000 ALTER TABLE `claims` DISABLE KEYS */;
INSERT INTO `claims` VALUES (1,2,2,0,'2024-02-10','Parabrisas'),(2,4,4,0,'2024-03-15','Robo Total'),(3,3,3,0,'2024-01-20','Choque, asegurado no culpable'),(4,1,6,1,'2024-04-01','Robo rueda delantera derecha'),(5,1,1,1,'2024-03-20','Caida de arbol'),(6,2,2,1,'2024-04-10','Robo bateria'),(7,14,15,1,'2024-01-06','Cristal delantero, lateral derecho'),(8,10,20,0,'2023-12-25','Robo rueda de auxilio'),(9,10,17,0,'2024-04-10','Choque. Asegurado culpable'),(10,9,16,1,'2024-04-08','Robo 4 ruedas de posición'),(11,16,11,1,'2024-04-04','Luneta'),(12,11,12,1,'2024-04-01','Parabrisas'),(13,14,18,0,'2024-04-08','Granizo'),(14,13,19,1,'2024-04-05','Granizo'),(15,5,5,0,'2023-11-14','Robo rueda');
/*!40000 ALTER TABLE `claims` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
    `payment_id` int NOT NULL AUTO_INCREMENT,
    `policy_number` int NOT NULL,
    `claim_id` int NOT NULL,
    `amount` decimal(12,2) NOT NULL,
    `payment_date` date DEFAULT NULL,
    PRIMARY KEY (`payment_id`),
    KEY `policy_number` (`policy_number`),
    KEY `claim_id` (`claim_id`),
    CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`policy_number`) REFERENCES `policies` (`policy_number`),
    CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`claim_id`) REFERENCES `claims` (`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,6,4,250000.00,'2024-04-20'),(2,1,5,550000.00,'2024-03-01'),(3,2,1,178000.00,'2024-03-01'),(4,4,2,450000.00,'2024-04-11'),(5,2,6,150000.00,'2024-04-11'),(6,15,7,185000.00,'2024-04-11'),(7,16,10,1400000.00,'2024-04-11'),(8,11,11,350000.00,'2024-04-11'),(9,12,12,385000.00,'2024-04-11'),(10,19,14,750000.00,'2024-04-11'),(11,5,15,340000.00,'2024-04-11'),(12,18,13,475000.00,'2024-04-11'),(13,17,9,1350000.00,'2024-04-11'),(14,20,8,190000.00,'2024-04-11'),(15,3,3,0.00,'2024-06-10'),(16,1,1,215000.00,'2024-01-02');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
    `employee_id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(100) DEFAULT NULL,
    `position` varchar(100) DEFAULT NULL,
    `office_id` int DEFAULT NULL,
    PRIMARY KEY (`employee_id`),
    KEY `office_id` (`office_id`),
    CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`office_id`) REFERENCES `offices` (`office_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Juan Pérez','Gerente de Ventas',1),(2,'María García','Contadora',5),(3,'Pedro González','Analista de Marketing',2),(4,'Ana López','Desarrolladora de Software',3),(5,'José Romero','Diseñador UI',15),(6,'Isabel Flores','Asistente de Recursos Humanos',2),(7,'David Blanco','Representante de Atención al Cliente',1),(8,'Axel Galesi','Jefe de Servicio',8),(9,'Paula Albarracin','Jefe de Servicio',8),(10,'Jeronimo Gonzalez','Jefe de Servicio',8),(11,'Alex Ruiz','Jefe de Servicio',10),(12,'Alejandro Galan','Capacitador',12),(13,'Juan Garcia','Jefe de Servicio',14),(14,'Lorenzo Arancibia','Jefe de Servicio',13),(15,'Pablo Fernandez','Jefe de Servicio',11),(16,'Fernanda Lorenzetti','Jefe de Servicio',7),(17,'Julio DiLorenzo','Jefe de Servicio',25),(18,'Lucia Fernandez','Secretaria',35),(19,'Jordan Henson','Empleado',29),(20,'Courtney Tyler','Empleado',16),(21,'Garth Goff','Empleado',40),(22,'Jaden Atkins','Empleado',16),(23,'Avram Whitney','Empleado',33),(24,'Bernard Williamson','Empleado',15),(25,'Katelyn Santos','Empleado',33),(26,'Deirdre Goodwin','Empleado',23),(27,'Xenos Lopez','Empleado',22),(28,'Yetta Ortiz','Empleado',30),(29,'Samuel Whitley','Empleados',29),(30,'Illiana Brennan','Empleado',15),(31,'Jason Mcmillan','Empleado',41),(32,'Eliana Eaton','Empleado',31),(33,'Lana Guerra','Empleadon',21),(34,'Pascale Munoz','Empleado',23),(35,'Willa Kline','Empleado',20),(36,'Tatyana Hawkins','Empleado',30),(37,'Janna Dodson','Empleado',22),(38,'Leigh Huff','Empleado',15);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `clients_register_log`
--

DROP TABLE IF EXISTS `clients_register_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients_register_log` (
    `log_id` int NOT NULL AUTO_INCREMENT,
    `modified_id` int NOT NULL,
    `user` varchar(100) DEFAULT NULL,
    `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_register_log`
--

LOCK TABLES `clients_register_log` WRITE;
/*!40000 ALTER TABLE `clients_register_log` DISABLE KEYS */;
INSERT INTO `clients_register_log` VALUES (1,1,'root@localhost','2024-04-17 21:26:11');
/*!40000 ALTER TABLE `clients_register_log` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `total_amount_paid`
--

DROP TABLE IF EXISTS `total_amount_paid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_amount_paid` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `total_paid` decimal(14,2) DEFAULT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_amount_paid`
--

LOCK TABLES `total_amount_paid` WRITE;
/*!40000 ALTER TABLE `total_amount_paid` DISABLE KEYS */;
INSERT INTO `total_amount_paid` VALUES (1,215000.00);
/*!40000 ALTER TABLE `total_amount_paid` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `meassure_data`
--

DROP TABLE IF EXISTS `meassure_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meassure_data` (
    `id` int NOT NULL AUTO_INCREMENT,
    `total_policies` int DEFAULT '0',
    `total_fees` decimal(14,2) DEFAULT '0.00',
    `total_clients` int DEFAULT '0',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meassure_data`
--

LOCK TABLES `meassure_data` WRITE;
/*!40000 ALTER TABLE `meassure_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `meassure_data` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-17 18:30:56
