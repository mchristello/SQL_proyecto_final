USE seguros;


-- CREACION DE FUNCIONES



-- FUNCION QUE TOMA COMO PARAMETRO EL NUMERO DE PRODUCTOR, Y DEVULEVE NOMBRE Y PORCENTAJE COMISIONES 
DROP FUNCTION IF EXISTS fn_producer_info;

DELIMITER //
CREATE FUNCTION fn_producer_info (param INT)
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
	DECLARE producerInfo VARCHAR(255);
    DECLARE producerName VARCHAR(100);
    DECLARE comissionPercentage DECIMAL(4, 2);
    
    SELECT name, commision_percentage INTO producerName, comissionPercentage
    FROM producers
    WHERE producer_number = param;
    
    SET producerInfo = CONCAT('Name: ', producerName, ', Comission Percentage: ', comissionPercentage, '%');
    
    RETURN producerInfo;
END //
DELIMITER ;

SELECT fn_producer_info(7039); -- (NUMEROS PARA PRUEBAS: 809, 370, 7039, 1058, 12651, 689)


-- FUNCION PARA OBTENER LA UBICACION DE UNA OFICINA A TRAVES DEL ID
DROP FUNCTION IF EXISTS fn_get_location;
DELIMITER //

CREATE FUNCTION fn_get_location (param INT)
RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
	DECLARE office_location VARCHAR(100);
    
    SET office_location = (SELECT location FROM offices WHERE office_id = param);
    RETURN office_location;
END //

DELIMITER ;

SELECT fn_get_location(2);
    