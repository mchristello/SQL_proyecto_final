USE seguros;
-- CREACION DE TRIGGERS


-- TRIGGER PARA ACTUALIZAR EL REGISTRO LUEGO DE ACTUALIZAR LOS DATOS DE UN CLIENTE
DELIMITER //
CREATE TRIGGER TRG_clients_update_log AFTER UPDATE ON clients
FOR EACH ROW
BEGIN
    INSERT INTO seguros.clients_register_log (timestamp, modified_id, user) 
    VALUES (NOW(), OLD.client_id, USER());
END //
DELIMITER ;

-- PRUEBA DE TRIGGER
/* SELECT * FROM clients;
UPDATE clients SET email = 'juancitoPerez@email.com' WHERE client_id = 1;
SELECT * from clients_register_log; */


-- TRIGGER QUE SE ACTIVA CUANDO SE INSERTA UNA NUEVA LINEA EN LA TABLA PAYMENTS
DELIMITER //
CREATE TRIGGER TRG_insert_new_payment
AFTER INSERT ON payments
FOR EACH ROW
BEGIN
	DECLARE current_amount DECIMAL(14, 2);
    
	SELECT total_paid INTO current_amount FROM total_amount_paid LIMIT 1;
    
    IF current_amount IS NULL THEN
		SET current_amount = NEW.amount;
		INSERT INTO total_amount_paid (total_paid) VALUES (current_amount);
    ELSE
		UPDATE total_amount_paid SET total_paid = total_paid + NEW.amount LIMIT 1;
	END IF;
END //
DELIMITER ;

-- VERIFICO LA INFORMACIÓN DE LA TABLA PAYMENTS
-- SELECT * FROM PAYMENTS;
-- INSERT UN NUEVO VALOR EN LA TABLA
-- INSERT INTO payments (payment_date, amount, policy_number, claim_id)
-- VALUE ('2024-01-02', 215000.00, 1, 1);
-- VERIFICO SI SE EL TRIGGER REALIZÓ LA ACTUALIZACIÓN EN LA TABLA TOTAL_AMOUNT_PAID
-- SELECT * FROM total_amount_paid;




-- TRIGERS QUE MANEJAN LA TABLA MEASSURE_DATA
DELIMITER //
CREATE TRIGGER TRG_meassure_data_clients
AFTER INSERT ON clients
FOR EACH ROW
BEGIN
	UPDATE meassure_data
    SET total_clients = total_clients + 1;
END //

CREATE TRIGGER TRG_meassure_data_policies
AFTER INSERT ON policies
FOR EACH ROW
BEGIN
	UPDATE meassure_data
    SET total_policies = total_policies + 1,
		total_fees = total_fees + NEW.fee;
END //
DELIMITER ;