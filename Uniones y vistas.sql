USE Northwind;

SELECT 
      p.ProductName producto,
	  c.CategoryName categoria
FROM
	Products p
INNER JOIN	Categories C
ON p.CategoryID= c.CategoryID;

--Crear una vista que muestre el nombre del producto 
--categoria  y proveedor  ordenados por nombre de categoria


CREATE VIEW Listaproducto AS 
SELECT
	p.ProductName producto,
	c.CategoryName categoria,
	u.ContactName proveedor

FROM Products p
INNER JOIN Categories C
ON p.CategoryID= c.CategoryID
INNER JOIN Customers u
ON CustomerID= u.CustomerID

--modificar la vista anterior de tal manera que muestre los nombres que estan incluido o no
--en las ordenes
ALTER VIEW Listaproducto AS
SELECT
     p.ProductName PRODUCTOS,
     c.CategoryName CATEGORIAS,
     Orde.OrderID  ID_ORDEN
FROM Products p
LEFT JOIN [Order Details] Orde
ON p.ProductID= Orde.ProductID
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID;

SELECT * FROM Listaproducto


---Modificamos el ejercicio anterior usando un FULL JOIN

ALTER VIEW Listaproducto AS
SELECT
     p.ProductName PRODUCTOS,
     c.CategoryName CATEGORIAS,
     Orde.OrderID  ID_ORDEN
FROM Products p
FULL JOIN [Order Details] Orde
ON p.ProductID= Orde.ProductID
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID;

SELECT * FROM Listaproducto






