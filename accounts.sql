-- Select database
USE bank_db;

-- Create Accounts table
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Balance DECIMAL(10,2)
);

-- Sample data insert
INSERT INTO Accounts (AccountID, CustomerName, Balance) VALUES
(1, 'Ali', 40000),
(2, 'Ahmed', 60000),
(3, 'Sara', 50000),
(4, 'Usman', 80000),
(5, 'Ayesha', 30000);

-- Final Query (Subquery)
SELECT CustomerName
FROM Accounts
WHERE Balance > (SELECT AVG(Balance) FROM Accounts);