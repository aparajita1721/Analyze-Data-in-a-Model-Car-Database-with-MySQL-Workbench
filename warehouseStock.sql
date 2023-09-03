# details on warehouses
SELECT * FROM warehouses;

# quantity of stock in each warehouse
SELECT  warehouseCode, SUM(quantityInStock) AS stock FROM products GROUP BY warehouseCode;

# quantity shipped from each warehouse
SELECT products.warehouseCode, SUM(orderdetails.quantityOrdered) 
FROM products LEFT JOIN orderdetails ON orderdetails.productCode= products.productCode
GROUP BY products.warehouseCode;