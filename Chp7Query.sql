--1
INSERT INTO Categories(CategoryName)
VALUES('Brass');
--test
SELECT *
FROM Categories
ORDER BY CategoryID;

--2 --supposed to be categoryname and not productname?
UPDATE Categories
SET CategoryName = 'WoodWinds'
FROM Categories
WHERE CategoryID = 5;
--test
SELECT *
FROM Categories
ORDER BY CategoryID;

--3
DELETE FROM Categories
WHERE CategoryID = 5;
--test
SELECT *
FROM Categories
ORDER BY CategoryID;

--4
INSERT INTO Products
(CategoryID, ProductCode, ProductName, Description, ListPrice, DiscountPercent, DateAdded)
VALUES
(4, 'dgx_640', 'Yamaha DGX 640 88-Key Digital Piano', 'Long description to come.', 799.99, 0, GETDATE())
--test
SELECT *
FROM Products
ORDER BY ProductID;

--5
UPDATE Products
SET DiscountPercent = 35
WHERE ProductID = 11;
--test
SELECT *
FROM Products
ORDER BY ProductID;

--6
DELETE FROM Products
WHERE CategoryID = 4;
DELETE FROM Categories
WHERE CategoryID = 4;
--test
SELECT *
FROM Products;
SELECT *
FROM Categories;

--7
INSERT INTO Customers
(EmailAddress, Password, FirstName, LastName)
VALUES
('rick@raven.com', '', 'Rick', 'Raven');
--test
SELECT *
FROM Customers;

--8
UPDATE Customers
SET Password = 'secret'
WHERE EmailAddress = 'rick@raven.com'
--test
SELECT *
FROM Customers;

--9
UPDATE Customers
SET Password = 'reset';
--test
SELECT *
FROM Customers;

--10
--running reset script