-- The Car Dealership Database

-- Delete Database (If Exists)
	DROP Database if exists CarDealerships;

-- Create Database
	Create Database CarDealerships;

-- Use Database
	use CarDealerships;

-- Delete Existing Tables (If Exists)
	drop table if exists Vehicles;
	drop table if exists Inventory;
	drop table if exists Sales_Contracts;
	drop table if exists Lease_Contracts;
	drop table if exists dealerships;

-- Create Table of Dealerships
	create table dealerships(
dealership_id int primary key auto_increment not null,
    
-- Other Columns
	Name    varchar(50)   not null,
	Address varchar(50)   not null,
	Phone   varchar(50)   not null);

--  Create Table of Vehicles
	create table Vehicles(
-- Vehicles Primary Keys
VIN         varchar(17) primary key, -- 17 Because VIN Numbers cannot be over 17 digits

-- Other Columns
Make        varchar(50) not null,
Model       varchar(50) not null,
Year        int         not null,
Sold        boolean     not null,
Color       varchar(50) not null,
vehicleType varchar(50),
odometer    int         not null,
Price       double      not null);

-- Create Table of Inventory
	create table Inventory(
dealership_id int not null,
VIN varchar(17),

-- Inventory Foreign Keys
foreign key (dealership_id) references dealerships(dealership_id),
foreign key (VIN)           references Vehicles(VIN));

-- Create Table of Sales Contract
create table Sales_Contract(
-- Sales Contract Primary Key
	contract_id int primary key auto_increment not null,
	VIN varchar(17) not null,
	sales_date date not null,
	price decimal(10,2) not null,

-- Sales Contract Foreign Key
	foreign key (VIN) references Vehicles(VIN)
);

create table Lease_Contract(
	contract_id int primary key auto_increment not null,
    VIN varchar(17) not null,
    lease_start date not null,
    lease_end date not null,
    monthly_payment decimal(10,2),
    
    -- Lease Contract Foreign Key
    foreign key (VIN) references Vehicles(VIN)
);

-- 	Generated Data for Dealership
INSERT INTO dealerships (Name, Address, Phone)
VALUES 
('Auto Planet', '1234 Main St, Tampa, FL', '813-555-1234'),
('DriveTime Motors', '5678 Sunset Blvd, Orlando, FL', '407-555-5678'),
('Fast Lane Cars', '9101 Speed Ave, Miami, FL', '305-555-9101');

-- Generated Data for Vehicles
INSERT INTO Vehicles (VIN, Make, Model, Year, Sold, Color, vehicleType, odometer, Price)
VALUES
('1HGCM82633A004352', 'Honda', 'Accord', 2020, false, 'Blue', 'Sedan', 15000, 18999.99),
('1FAFP4041WF223344', 'Ford', 'Mustang', 2018, true, 'Red', 'Coupe', 42000, 23999.95),
('2C3KA53G76H105789', 'Chrysler', '300', 2019, false, 'Black', 'Sedan', 33000, 20999.00),
('3N1AB7AP8GY276123', 'Nissan', 'Sentra', 2021, false, 'White', 'Sedan', 10000, 17999.49),
('4T1BF1FK7GU263821', 'Toyota', 'Camry', 2016, false, 'Gray', 'Sedan', 50000, 15999.95),
('5YJ3E1EA7KF317852', 'Tesla', 'Model 3', 2020, false, 'White', 'Electric', 12000, 37999.99),
('1C4RJFBG7LC162934', 'Jeep', 'Grand Cherokee', 2020, false, 'Black', 'SUV', 18000, 34999.00),
('WBA8D9G52JNU61239', 'BMW', '3 Series', 2018, false, 'Blue', 'Sedan', 25000, 28999.00);

-- Generated Data for Inventory
INSERT INTO Inventory (dealership_id, VIN) 
VALUES
(1, '1HGCM82633A004352'),
(2, '1FAFP4041WF223344'),
(3, '2C3KA53G76H105789'),
(1, '3N1AB7AP8GY276123'),
(2, '4T1BF1FK7GU263821'),
(3, '5YJ3E1EA7KF317852'),
(1, '1C4RJFBG7LC162934'),
(2, 'WBA8D9G52JNU61239');


-- Generated Data for Sales Contract
INSERT INTO Sales_Contract (VIN, sales_date, price)
VALUES
('1FAFP4041WF223344', '2024-11-20', 23499.99);

-- Generated Data for Lease Contract
INSERT INTO Lease_Contract (VIN, lease_start, lease_end, monthly_payment)
VALUES
('2C3KA53G76H105789', '2025-01-01', '2028-01-01', 399.99);

