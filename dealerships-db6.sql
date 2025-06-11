-- 6. Get all sales information for a specific dealer for a specific date range
SELECT Name AS Dealership, contract_id, s.VIN, sales_date, price
FROM Dealerships d
JOIN Inventory i 
	ON d.dealership_id = i.dealership_id
JOIN Sales_Contract s 
	ON s.VIN = i.VIN
WHERE Name = 'Auto Planet'
AND sales_date 
	BETWEEN '2024-01-01' AND '2024-12-31';
