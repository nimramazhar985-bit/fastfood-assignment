-- Select database
USE fastfood_db;

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    City VARCHAR(50),
    TotalAmount DECIMAL(10,2)
);

-- Sample data insert
INSERT INTO Orders (OrderID, OrderDate, City, TotalAmount) VALUES
(1, '2026-01-01', 'Lahore', 500),
(2, '2026-01-02', 'Karachi', 1200),
(3, '2026-01-03', 'Lahore', 700),
(4, '2026-01-04', 'Islamabad', 900),
(5, '2026-01-05', 'Karachi', 300),
(6, '2026-01-06', 'Lahore', 1000),
(7, '2026-01-07', 'Islamabad', 600);

-- Final Query (City wise revenue)
SELECT City, SUM(TotalAmount) AS TotalRevenue
FROM Orders
GROUP BY City
ORDER BY TotalRevenue DESC;