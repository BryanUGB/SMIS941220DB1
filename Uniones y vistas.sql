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



