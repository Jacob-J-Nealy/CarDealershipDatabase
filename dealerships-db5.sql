-- 5. Find all Dealerships that have a certain car type (i.e. Red Ford Mustang)
SELECT Name, v.VIN, Color, Make, Model
FROM Dealerships d
JOIN Inventory i
	ON d.dealership_id = i.dealership_id
JOIN Vehicles v
	ON v.VIN = i.VIN
WHERE Color = 'Red' 
    AND Make = 'Ford' 
    AND Model = 'Mustang';