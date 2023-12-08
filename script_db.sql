DROP DATABASE dealership;

CREATE DATABASE Dealership;

USE Dealership;

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
 FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
 PRIMARY KEY (dealership_id, VIN)
 );
  CREATE TABLE sales_contracts (
 id INT auto_increment PRIMARY KEY,
 customer_name VARCHAR(100),
 sale_date DATE,
 sale_amount DECIMAL(10, 2),
 VIN VARCHAR(17),
 FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
 );
 