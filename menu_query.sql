-- Database select
USE fastfood_db;

-- Final Query
SELECT ItemName, Price
FROM Menu
WHERE Category = 'Burgers'
  AND Price < 800
  AND IsAvailable = 1
ORDER BY Price ASC;