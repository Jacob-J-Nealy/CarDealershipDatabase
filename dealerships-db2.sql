-- 2. Find all Vehicles for a specific Dealership (Auto Planet)
SELECT Name as Dealership, Make, Model, Year
FROM Vehicles v
JOIN Inventory i
	ON v.VIN = i.VIN
JOIN Dealerships d
	ON i.dealership_id = d.dealership_id
WHERE Name = "Auto Planet";
    