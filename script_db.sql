DROP DATABASE dealership;

CREATE DATABASE dealership;

USE dealership;

CREATE TABLE dealerships (
 Dealership_ID int auto_increment PRIMARY KEY,
 Name VARCHAR(50),
 Address VARCHAR(50),
 Phone varchar(12)
 );
 CREATE TABLE vehicles (
 VIN VARCHAR(17) PRIMARY KEY,
 make VARCHAR(50),
 model VARCHAR(50),
 year INT,
 color VARCHAR(30),
 mileage INT,
 price DECIMAL(10,2),
 sold BOOLEAN DEFAULT false
 );
 CREATE TABLE inventory (
 dealership_id INT,
 VIN VARCHAR(17),
 FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
 FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
  );
  CREATE TABLE sales_contracts (
 id INT auto_increment PRIMARY KEY,
 customer_name VARCHAR(100),
 sale_date DATE,
 sale_amount DECIMAL(10, 2),
 VIN VARCHAR(17),
 FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
 );
 INSERT INTO dealership (Name, Address, Phone)
 VALUES
 ('123ABD Vehicles', '21258 Parlor Ln', '784-657-5048'),
 ('Wilson Motors', 'Cherry St.', '654-987-5400');
 
 INSERT INTO vehicles (VIN, make, model, year, color, mileage, price, sold)
 VALUES
 ('5GNAZPRECD54172911', 'Honda', 'Pilot', 2020, 'Black', 4000, 30000.00, false),
 ('825KFNIED541787467', 'Chevy', 'Traverse', 2018, 'Red', 19000, 13000.00, false),
 ('M30KSFJD5541706180', 'Cadillac', 'Escalade', 2023, 'White', 42000, 6000.00, true),
 ('MOE003NFI35410547H7', 'Nissan', 'Altima', 2017, 'Black', 60000, 11000.00, true);
 
 INSERT INTO inventory (dealership_id, VIN)
 VALUES
 (1, '5GNAZPRECD54172911'),
 (2, '825KFNIED541787467'),
 (3, 'M30KSFJD5541706180'),
 (4, 'MOE003NFI35410547H7');
 
 INSERT INTO sales_contracts (customer_name, sale_date, sale_amount, VIN)
 VALUES
 ('Sasha Wilson', 2023-08-19, 11000.00, 'MOE003NFI35410547H7'),
 ('Lebron James', 2023-11-11, 6000.00, 'M30KSFJD5541706180');
 
 
 
 
 
 
 