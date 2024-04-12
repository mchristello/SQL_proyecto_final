USE seguros;


-- CREACION DE SP


-- SP PARA NUEVO CLIENTE
DELIMITER //

CREATE PROCEDURE sp_NewClient(
	IN clientName VARCHAR(50),
    IN clientLastName VARCHAR(50),
    IN email VARCHAR(100)
)
BEGIN
	INSERT INTO clients (first_name, last_name, email)
    VALUES (clientName, clientLastName, email);
END //

DELIMITER ;

CALL sp_NewClient('Bastian', 'Christello', 'b.christello@gmail.com');



-- PROCEDURE PARA ACTUALIZAR LA TABLA CLAIMS CUANDO SE REALIZO UN PAGO
DELIMITER //
CREATE PROCEDURE sp_UpdateClaim(
	IN c_claim_id INT,
    IN c_payment_update BOOLEAN
)
BEGIN
	UPDATE claims SET payment_made = c_payment_update WHERE claim_id = c_claim_id;
END //

DELIMITER ;

CALL sp_UpdateClaim(1, true);

SELECT * FROM claims;
