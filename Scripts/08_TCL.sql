USE seguros;
-- TRANSACTION CONTROL LANGUAJE


-- Consulta para ver como se encuentra la tabla con la que voy a trabajar
SELECT * FROM vehicles;


SELECT @@autocommit;
-- Setear variable de autocommit
SET autocommit = 0;

-- Inicio de transacción
START TRANSACTION;

SAVEPOINT SP_vehicles_01;

INSERT INTO vehicles (brand, model, year, value)
VALUES
	('Volkswagen', 'Gol Trend Trendline', 2020, 11900000),
  ('Renault', 'Sandero 1.6 GT Line', 2018, 11200000),
  ('Chevrolet', 'Onix 1.0T LTZ AT', 2021, 16300000),
  ('Ford', 'Ka 1.6 Pulse', 2014, 6400000),
  ('Fiat', '500 1.4 Sport', 2018, 14300000),
  ('Peugeot', '208 1.2 Like 5p', 2023, 16000000),
  ('Toyota', 'Etios 1.5 XLS', 2020, 14400000),
  ('Citroën', 'C3 1.6 MI', 2021, 19200000),
  ('Honda', 'Fit 1.5', 2017, 14800000),
  ('Nissan', 'March 1.6 Active PD', 2021, 11900000),
  ('Volkswagen', 'Vento 2.5 Luxury TIP', 2017, 18400000),
  ('Renault', 'Kwid 1.0 Intense', 2022, 11300000),
  ('Ford', 'EcoSport 2.0 XLS', 2012, 12500000),
  ('Chevrolet', 'Tracker 1.2 LT', 2022, 20000000),
  ('Peugeot', '2008 Allure 1.6', 2020, 17900000),
  ('Toyota', 'Yaris LTZ 5p', 2019, 23000000),
  ('Fiat', 'Toro 1.8MPI Freedom 4x2', 2021, 25500000),
  ('Jeep', 'Renegade 1.8 Sport 4x2', 2022, 21700000),
  ('Citroën', 'C4 Cactus 1.6 VTI Feel PK', 2018, 16700000),
  ('Honda', 'HR-V 1.8 EX CVT', 2020, 24600000),
  ('Volkswagen', 'T-Cross 1.0 TSI Highline', 2024, 28100000),
  ('Renault', 'Duster 1.6 4x2 Dynamic', 2016, 13300000),
  ('Chevrolet', 'S10 D/C 4x2 Turbo', 2013, 15000000);
  
SAVEPOINT SP_vehicles_02;

INSERT INTO vehicles (brand, model, year, value)
VALUES
  ('Ford', 'Ranger 2.2 D/C 4x4', 2016, 18400000),
  ('Toyota', 'Hilux 2.8 D/C 4x2 SRV', 2020, 31400000),
  ('Fiat', 'Strada 1.9 D', 2009, 5900000),
  ('Nissan', 'Frontier 2.3 D/C 4x2', 2022, 27500000),
  ('Volkswagen', 'Amarok V6 3.0 4x4 TDI', 2021, 39000000),
  ('Peugeot', '3008 2.0 HDI Feline Tip.', 2018, 15700000),
  ('Jeep', 'Compass 2.0 TD 350 Trailhawk', 2024, 53700000),
  ('Citroën', 'C4 Lounge 1.6 HDI Tendance', 2015, 10300000),
  ('Honda', 'Civic 1.8 EXS', 2011, 10500000),
  ('Toyota', 'Corolla 1.8 SEG CVT', 2020, 21700000),
  ('Chevrolet', 'Cruze 1.4 LTZ AUT', 2021, 22150000),
  ('Ford', 'Focus 2.0 Titanium', 2019, 15100000),
  ('Volkswagen', 'Sirocco 2.0 TSI', 2015, 27000000),
  ('Renault', 'Mégane 2.0 Privilege', 2015, 8150000),
  ('Peugeot', '408 1.6 HDI Allure Pack', 2022, 17400000),
  ('Citroën', 'C-Elysée VTI Feel', 2019, 11050000),
  ('Fiat', 'Qubo Dynamic', 2016, 10000000);
  

-- Prueba de Rollback en caso de error
ROLLBACK TO SP_vehicles_01; 
ROLLBACK TO SP_vehicles_02;

-- Se confirman los inserts
COMMIT;

-- Select para verificar cambios
SELECT * FROM vehicles;
