# Car Dealership Database

This project contains the SQL scripts to create and populate a relational database for managing car dealerships, vehicles, inventory, sales contracts, and lease contracts.

---

## Database Overview

The database consists of the following tables:

- **dealerships**: Stores dealership information (ID, name, address, phone).
- **Vehicles**: Contains details about vehicles (VIN, make, model, year, color, price, etc.).
- **Inventory**: Associates vehicles with dealerships.
- **Sales_Contract**: Records sales contracts with contract ID, VIN, sale date, and price.
- **Lease_Contract**: Stores lease agreements with contract ID, VIN, lease dates, and monthly payment.

---

## Setup Instructions

1. **Create and Use Database**

   The script will drop the database if it exists, create a new database called `CarDealerships`, and select it for use.

2. **Create Tables**

   The script creates all tables with appropriate primary keys and foreign key constraints.

3. **Insert Sample Data**

   Sample data is inserted for dealerships, vehicles, inventory, sales contracts, and lease contracts.

---

## Sample Queries

- Find all vehicles at a specific dealership (e.g., "Auto Planet").
- Find the dealership where a vehicle with a specific VIN is located.
- Get all sales information for a specific dealership within a date range.

---

## How to Run

1. Load the full SQL script into your MySQL or MariaDB client.
2. Execute the script to create the database, tables, and populate data.
3. Run queries against the `CarDealerships` database as needed.

---

## Example Insert Snippet (Sample Data)

```sql
INSERT INTO dealerships (Name, Address, Phone)
VALUES 
('Auto Planet', '1234 Main St, Tampa, FL', '813-555-1234'),
('DriveTime Motors', '5678 Sunset Blvd, Orlando, FL', '407-555-5678'),
('Fast Lane Cars', '9101 Speed Ave, Miami, FL', '305-555-9101');

INSERT INTO Vehicles (VIN, Make, Model, Year, Sold, Color, vehicleType, odometer, Price)
VALUES
('1HGCM82633A004352', 'Honda', 'Accord', 2020, false, 'Blue', 'Sedan', 15000, 18999.99),
('1FAFP4041WF223344', 'Ford', 'Mustang', 2018, true, 'Red', 'Coupe', 42000, 23999.95),
...;
