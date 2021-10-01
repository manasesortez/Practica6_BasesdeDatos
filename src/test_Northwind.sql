USE Northwind;

SELECT * FROM [Order Details];
SELECT * FROM Orders;

/**UNIENDO LA TABLA ORDERS, Y ORDERS DETAILS**/
SELECT [Order Details].OrderID, Orders.CustomerID , Products.ProductName,  [Order Details].UnitPrice, [Order Details].Quantity, [Order Details].Discount
FROM [Order Details]
INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID

/**UNIR PRODUCTS A CATEGORYS, SUPPLIERS **/
SELECT * FROM Products;
SELECT * FROM Categories;

SELECT Products.ProductName AS NOMBRE,
       Suppliers.CompanyName AS DIRECCION,
       Categories.CategoryName AS CATEGORIA,
       Products.QuantityPerUnit AS CANTIDAD,
       Products.UnitPrice AS PRECIO,
       Products.UnitsInStock AS STOCK,
       Products.UnitsOnOrder AS CANTIDAD_ORDEN
       FROM Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID

/** UNIO ENTRE TERRITORIOS Y REGION **/

SELECT
       Territories.TerritoryDescription AS TERRITORIO,
       Region.RegionDescription AS REGION
FROM Territories
INNER JOIN Region ON Territories.RegionID = Region.RegionID
