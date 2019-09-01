CREATE TABLE vehicle_types (
	type_id 		serial primary key,
	type_name 		VARCHAR(100),
	creation_date	date
);


CREATE TABLE fuel_types (
	fuel_code VARCHAR(3) primary key,
	fuel_name VARCHAR(100),
	creation_date	date
);

CREATE TABLE vehicles_data (
	data_id 		serial primary key,
	data_year 		int,
	fuel_code 		VARCHAR(3),
	vehicles_count	int,
	weight_class 	VARCHAR(20),
	vehicle_type_id int,
	engine_config	VARCHAR(20),
	creation_date	date,
FOREIGN KEY (fuel_code) REFERENCES fuel_types (fuel_code),
FOREIGN KEY (vehicle_type_id) REFERENCES vehicle_types (type_id)
);
		