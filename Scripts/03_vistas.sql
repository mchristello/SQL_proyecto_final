USE seguros;

-- CREACION DE VISTAS


-- SE CREA UNA VISTA QUE MUESTRA LOS DATOS DE CLIENTE, VEHÍCULO Y POLIZA, SOLO DE LAS QUE TENGAN COBERTURA TYPO 'D3'
CREATE OR REPLACE VIEW policy_consult AS
SELECT c.last_name AS client, v.brand, v.model, p.policy_number, cov.coverage_id AS coverage
FROM policies p
JOIN clients c ON c.client_id = p.client
JOIN vehicles v ON v.vehicle_id = p.vehicle_id
JOIN coverage cov ON cov.coverage_id = p.coverage_id
WHERE cov.type = 'D3';


-- SE CREA UNA VISTA QUE MUESTRA SOLO LOS RECLAMOS QUE NO HAN SIDO PAGADOS, Y LOS RESPECTIVOS IMPORTES
CREATE OR REPLACE VIEW unpaid_claims AS
SELECT c.claim_id, c.policy_number, p.amount
FROM payments p
JOIN claims c ON c.claim_id = p.claim_id
WHERE c.payment_made = false;


-- SE CREA UNA VISTA QUE MUESTRA LOS VEHICULOS ORDENADOS POR VALOR 
CREATE OR REPLACE VIEW vehicles_order AS
SELECT * FROM vehicles
ORDER BY value desc;


-- VISTA PARA MOSTRAR LA CANTIDAD DE EMPLEADOS POR OFICINA
CREATE OR REPLACE VIEW count_employees AS
SELECT 
	o.office_id, 
    COUNT(*) as number_of_employees
FROM offices o 
JOIN employees e ON o.office_id = e.office_id
GROUP BY o.office_id;


-- VISTA PARA VER LA CANTIDAD DE POLIZAS DE CADA PRODUCTOR.
CREATE OR REPLACE VIEW count_policies AS
SELECT 
	producers.producer_number, 
    COUNT(*) AS producer_total_policies
FROM policies p
JOIN producers ON p.producer_number = producers.producer_number
GROUP BY producers.producer_number; 


-- VISTA QUE MUESTRA LAS POLIZAS QUE FINALIZAN DENTRO DE LOS 60 DIAS POSTERIORES A LA CONSULTA
CREATE OR REPLACE VIEW policy_ending_dates AS
SELECT
    P.policy_number,
    P.ending_date,
    C.email AS client_email,
    V.brand AS vehicle_brand,
    V.model AS vehicle_model,
    V.value AS vehicle_value
FROM policies p
JOIN Clients C ON P.client = C.client_id
JOIN Vehicles V ON P.vehicle_id = V.vehicle_id
WHERE P.ending_date <= CURDATE() + INTERVAL 60 DAY;

SELECT * FROM policy_ending_dates;