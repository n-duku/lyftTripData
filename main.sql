--Task 1
SELECT * FROM trips;

SELECT * FROM riders;

SELECT * FROM cars;

--Task 3
SELECT riders.first,
  riders.last,
  cars.model
FROM riders, cars;

--Task 4
SELECT trips.date, 
   trips.pickup, 
   trips.dropoff, 
   trips.type, 
   trips.cost,
   riders.first, 
   riders.last,
   riders.username
FROM trips
LEFT JOIN riders 
  ON trips.rider_id = riders.id;

--Task 5
SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;

--Task 6
SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

--Task 7
SELECT ROUND(AVG(cost), 2)
FROM trips;

--Task 8
SELECT *
FROM riders
WHERE total_trips < 500;

--Task 9
SELECT COUNT(*)
FROM cars
WHERE status = 'active';

--Task 10
SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;