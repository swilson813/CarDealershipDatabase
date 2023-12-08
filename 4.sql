SELECT dealerships.*
FROM dealerships
JOIN vehicles ON dealerships.Dealership_ID = vehicles.Dealership_ID
WHERE vehicles.VIN = 'your_specific_vin';