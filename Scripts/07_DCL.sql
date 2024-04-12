-- DATA CONTROL LANGUAJE


-- Se crea un usuario de CODER, solo con permisos de lectura
CREATE USER IF NOT EXISTS 'coder@localhost' IDENTIFIED BY 'coderhouse';

-- Se le dan permisos solo para ver las tablas de la DB
GRANT SELECT ON seguros.* TO 'coderhouse@localhost';

-- Se crea un usuario personal para manejo de la DB
CREATE USER IF NOT EXISTS'mchristello@localhost' IDENTIFIED BY 'christello';

-- Se le otorgan permisos de SELECT, INSERT, y UPDATE
GRANT SELECT, INSERT, UPDATE ON shenxinglin.* TO 'escalante@localhost';


-- Verificar si las operaciones anteriores quedaron correctas en la tabla mysql.user
SELECT * FROM mysql.user;

-- Visualizar los permisos de los dos usuarios creados
SHOW GRANTS FOR 'escalante@localhost';
SHOW GRANTS FOR 'coderhouse@localhost';