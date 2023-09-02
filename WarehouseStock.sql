-- details on warehouses
SELECT * FROM warehouses;

# quantity of stock in each warehouse

SELECT  warehouseCode, SUM(quantityInStock) AS stock FROM products GROUP BY warehouseCode;
