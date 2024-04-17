USE seguros;


-- CREACION DE SP


-- 1° SP PARA NUEVO CLIENTE
DELIMITER //
CREATE PROCEDURE sp_InsertDelete_Client(
    IN operation VARCHAR(10),
    IN client_name VARCHAR(50),
    IN client_lastName VARCHAR(50),
    IN client_email VARCHAR(100),
    IN id INT
)
BEGIN
    IF operation = 'insert' THEN
        INSERT INTO clients (first_name, last_name, email)
        VALUES (client_name, client_lastName, client_email);
        SELECT 'New Client OK' AS resultado;
    ELSEIF operation = 'delete' THEN
        DELETE FROM clients WHERE client_id = id;
        SELECT 'Client Deleted OK' AS resultado;
    ELSE
        SELECT 'Invalid operation' AS resultado;
    END IF;
END //
DELIMITER ;

-- PRUEBA DEL PROCEDURE
-- CALL sp_InsertDelete_Client ('delete', 'Austin', 'Nunez', 'pharetra@icloud.edu', 27);



-- 2° PROCEDURE PARA ACTUALIZAR LA TABLA CLAIMS CUANDO SE REALIZO UN PAGO
DELIMITER //
CREATE PROCEDURE sp_UpdateClaim(
	IN c_claim_id INT,
    IN c_payment_update BOOLEAN
)
BEGIN
	UPDATE claims SET payment_made = c_payment_update WHERE claim_id = c_claim_id;
END //
DELIMITER ;

-- PRUEBA DEL PROCEDURE
SELECT * FROM claims;
-- CALL sp_UpdateClaim(2, false);