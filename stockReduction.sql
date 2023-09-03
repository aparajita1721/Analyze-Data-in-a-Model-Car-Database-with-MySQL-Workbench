#Overstocked products
SELECT
    products.productName,
    products.quantityInStock,
    (products.quantityInStock * 0.7) AS reduction_stock,
    SUM(orderdetails.quantityOrdered) AS totalQuantityOrdered,
    (products.quantityInStock - COALESCE(SUM(orderdetails.quantityOrdered), 0)) AS difference
    FROM products
    LEFT JOIN orderdetails
    ON products.productCode = orderdetails.productCode
    GROUP BY products.productName, products.quantityInStock
    HAVING (products.quantityInStock - COALESCE(SUM(orderdetails.quantityOrdered), 0)) > 3000
    ORDER BY totalQuantityOrdered DESC;


