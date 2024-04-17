DROP SCHEMA IF EXISTS seguros;

CREATE SCHEMA IF NOT EXISTS seguros;
USE seguros;

CREATE TABLE Clients (
	client_id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
	email VARCHAR(30) NOT NULL
);

CREATE TABLE Coverage (
	coverage_id INT PRIMARY KEY AUTO_INCREMENT,
	description VARCHAR(255),
	type VARCHAR(20)
);

CREATE TABLE departments (
	department_id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE Vehicles (
	vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
	brand VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	year INT NOT NULL,
	value DECIMAL(14, 2) NOT NULL
);

CREATE TABLE offices (
	office_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE producers (
	producer_number INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
	commision_percentage DECIMAL(4,2) NOT NULL,
	office_id INT NOT NULL,
    FOREIGN KEY (office_id) REFERENCES offices(office_id)
);

CREATE TABLE Policies (
	policy_number INT PRIMARY KEY NOT NULL,
	producer_number INT NOT NULL,
	coverage_id INT NOT NULL,
	vehicle_id INT NOT NULL,
	client INT NOT NULL,
	fee DECIMAL(10, 2) NOT NULL,
	start_date DATE NOT NULL,
	ending_date DATE NOT NULL,
	FOREIGN KEY (client) REFERENCES Clients(client_id),
	FOREIGN KEY (coverage_id) REFERENCES Coverage(coverage_id),
	FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id),
	FOREIGN KEY (producer_number) REFERENCES producers(producer_number)
);

CREATE TABLE Claims (
	claim_id INT PRIMARY KEY AUTO_INCREMENT,
	client_id INT NOT NULL,
	policy_number INT NOT NULL,
	payment_made BOOLEAN DEFAULT false,
	claim_date DATE NOT NULL,
	description TEXT,
	FOREIGN KEY (policy_number) REFERENCES Policies(policy_number),
	FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE Payments (
	payment_id INT PRIMARY KEY AUTO_INCREMENT,
	policy_number INT NOT NULL,
	claim_id INT NOT NULL,
	amount DECIMAL(12, 2) NOT NULL,
	payment_date DATE, -- YYYY-MM-DD
	FOREIGN KEY (policy_number) REFERENCES Policies(policy_number),
	FOREIGN KEY (claim_id) REFERENCES claims(claim_id)
);


CREATE TABLE employees (
	employee_id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100),
	position VARCHAR(100),
	office_id INT,
	FOREIGN KEY (office_id) REFERENCES offices(office_id)
);


CREATE TABLE Clients_Register_Log (
	log_id INT PRIMARY KEY AUTO_INCREMENT,
    modified_id INT NOT NULL,
    user VARCHAR(100),
	timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE total_amount_paid (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    total_paid DECIMAL(14, 2)
);


CREATE TABLE meassure_data (
	id INT PRIMARY KEY AUTO_INCREMENT,
    total_policies INT DEFAULT 0,
    total_fees DECIMAL(14, 2) DEFAULT 0,
    total_clients INT DEFAULT 0
);
