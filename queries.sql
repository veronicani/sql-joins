-- Join the two tables so that every column and record appears, regardless of if 
-- there is not an owner_id. Your output should look like this:
-- TODO: include an ORDER BY to explicitly order the return results
SELECT * 
  FROM owners 
  FULL JOIN vehicles 
    ON owners.id = vehicles.owner_id;

-- Count the number of cars for each owner who has a vehicle. 
-- Display the owners first_name and count of vehicles.
-- The first_name should be ordered in ascending order.

SELECT first_name, COUNT(*)
  FROM owners
  JOIN vehicles
    ON owners.id = owner_id
  GROUP BY owners.id
  ORDER BY first_name ASC;


-- Count the number of cars for each owner who has a vehicle and 
-- display the average price for each of the cars as integers. 
-- Display the owners first_name, average price, and count of vehicles. 
-- The first_name should be ordered in descending order. 

SELECT first_name, ROUND(AVG(price)) AS average_price, COUNT(*)
  FROM owners
  JOIN vehicles
    ON owners.id = owner_id
  GROUP BY owners.id
  HAVING ROUND(AVG(price)) > 10000 
    AND COUNT(*) > 1
  ORDER BY first_name DESC;
