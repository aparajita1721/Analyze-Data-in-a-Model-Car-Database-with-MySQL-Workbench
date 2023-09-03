# needs to be restocked on an urgent basis
SELECT
    products.productName,
    products.productVendor,
    products.quantityInStock,
    SUM(orderdetails.quantityOrdered) AS totalQuantityOrdered,
    (products.quantityInStock - COALESCE(SUM(orderdetails.quantityOrdered), 0)) AS difference
FROM products
LEFT JOIN orderdetails
ON products.productCode = orderdetails.productCode
GROUP BY products.productName, products.quantityInStock
HAVING (products.quantityInStock - COALESCE(SUM(orderdetails.quantityOrdered), 0)) < 0
ORDER BY totalQuantityOrdered DESC;
