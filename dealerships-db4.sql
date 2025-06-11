-- 4. Find the dealership where a certain car is located, by VIN (4T1BF1FK7GU263821)
SELECT Name as Dealership_Name, v.VIN, Price
FROM  Dealerships d
JOIN Inventory i
	ON d.dealership_id = i.dealership_id
JOIN Vehicles v
	ON i.VIN = v.VIN
WHERE v.VIN = '4T1BF1FK7GU263821';