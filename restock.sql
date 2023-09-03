# These products may need to be restocked soon
SELECT
    products.productName,
	products.productVendor,
    products.quantityInStock,
    (products.quantityInStock * 0.7) AS reduction_stock,
    SUM(orderdetails.quantityOrdered) AS totalQuantityOrdered,
    (products.quantityInStock - COALESCE(SUM(orderdetails.quantityOrdered), 0)) AS difference
FROM products
LEFT JOIN orderdetails
ON products.productCode = orderdetails.productCode
GROUP BY products.productName, products.quantityInStock
HAVING (products.quantityInStock - COALESCE(SUM(orderdetails.quantityOrdered), 0)) < 500 AND (products.quantityInStock - COALESCE(SUM(orderdetails.quantityOrdered), 0))>0
ORDER BY totalQuantityOrdered ASC;