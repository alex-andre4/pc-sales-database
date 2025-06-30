-- PC Sales Database Queries
-- Level 1: Read-only Queries

-- Query 1: Basic SELECT/FROM/WHERE
-- Purpose: Find all PCs with price less than $1500 and RAM greater than 8GB
-- Status: Works - Returns specific PCs matching price and RAM criteria
SELECT Brand, Model, Price, RAM 
FROM PCs 
WHERE Price < 1500 AND RAM > 8;

-- Query 2: JOIN query
-- Purpose: Display customer details along with their total order amounts and number of orders
-- Status: Works - Joins Customers and Orders tables to show customer purchasing patterns
SELECT 
    c.FirstName,
    c.LastName,
    COUNT(o.OrderID) as NumberOfOrders,
    SUM(o.TotalAmount) as TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName;

-- Query 3: Subquery
-- Purpose: Find all PCs that have a price higher than the average PC price
-- Status: Works - Uses subquery to calculate average price and compare
SELECT Brand, Model, Price
FROM PCs
WHERE Price > (
    SELECT AVG(Price)
    FROM PCs
);

-- Query 4: Aggregate function with GROUP BY
-- Purpose: Show the total inventory value by brand
-- Status: Works - Calculates total value of inventory for each PC brand
SELECT 
    p.Brand,
    SUM(p.Price * i.Quantity) as TotalInventoryValue
FROM PCs p
JOIN Inventory i ON p.PCID = i.PCID
GROUP BY p.Brand;

-- Level 2: Modification Queries

-- Query 5: INSERT query
-- Purpose: Add a new customer record
-- Status: Works - Inserts a new customer into the Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, Zip)
VALUES (101, 'Sarah', 'Wilson', 'sarah.wilson@email.com', '555-0123', '789 Pine St', 'Springfield', 'IL', '62701');

-- Query 6: DELETE query
-- Purpose: Delete orders older than 2022 with total amount less than $1000
-- Status: Works - Removes old, low-value orders
DELETE FROM Orders 
WHERE YEAR(OrderDate) < 2022 
AND TotalAmount < 1000;

-- Query 7: ON UPDATE CASCADE demonstration
-- First, add the constraint (if not already present)
ALTER TABLE OrderItems 
ADD CONSTRAINT fk_orderitems_orders
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
ON UPDATE CASCADE;

-- Then update an OrderID
-- Purpose: Demonstrate how updating an OrderID cascades to OrderItems
-- Status: Works - Updates OrderID in Orders table and cascades to OrderItems
UPDATE Orders
SET OrderID = 1001
WHERE OrderID = 1;

-- Query 8: ON DELETE CASCADE demonstration
-- First, add the constraint (if not already present)
ALTER TABLE SupplierInventory
ADD CONSTRAINT fk_supplierinventory_suppliers
FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
ON DELETE CASCADE;

-- Then delete a supplier
-- Purpose: Demonstrate how deleting a supplier cascades to SupplierInventory
-- Status: Works - Deletes supplier and all related inventory records
DELETE FROM Suppliers
WHERE SupplierID = 1;