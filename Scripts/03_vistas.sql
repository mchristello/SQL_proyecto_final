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

SELECT * FROM policy_consult;


-- SE CREA UNA VISTA QUE MUESTRA SOLO LOS RECLAMOS QUE NO HAN SIDO PAGADOS, Y LOS RESPECTIVOS IMPORTES
CREATE OR REPLACE VIEW unpaid_claims AS
SELECT c.claim_id, c.policy_number, p.amount
FROM payments p
JOIN claims c ON c.claim_id = p.claim_id
WHERE c.payment_made = false;

SELECT * FROM unpaid_claims;


-- SE CREA UNA VISTA QUE MUESTRA LOS VEHICULOS ORDENADOS POR VALOR 
CREATE OR REPLACE VIEW vehicles_order AS
SELECT * FROM vehicles
ORDER BY value desc;

SELECT * FROM vehicles_order;


-- VISTA PARA MOSTRAR LA CANTIDAD DE EMPLEADOS POR OFICINA
CREATE OR REPLACE VIEW count_employees AS
SELECT o.office_id, COUNT(*) as number_of_employees
FROM offices o 
JOIN employees e on o.office_id = e.office_id
GROUP BY o.office_id;

SELECT * FROM count_employees;


-- VISTA PARA VER LA CANTIDAD DE POLIZAS DE CADA PRODUCTOR.
CREATE OR REPLACE VIEW count_policies AS
SELECT producers.producer_number, COUNT(*) AS producer_total_policies
FROM policies p
JOIN producers ON p.producer_number = producers.producer_number
GROUP BY producers.producer_number; 

SELECT * FROM count_policies;