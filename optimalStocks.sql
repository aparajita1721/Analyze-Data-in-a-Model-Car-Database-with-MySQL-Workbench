#optimal stocks
SELECT
    products.productName,
    products.quantityInStock,
    SUM(orderdetails.quantityOrdered) AS totalQuantityOrdered,
    (products.quantityInStock - COALESCE(SUM(orderdetails.quantityOrdered), 0)) AS difference
    FROM products
    LEFT JOIN orderdetails
    ON products.productCode = orderdetails.productCode
    GROUP BY products.productName, products.quantityInStock
    HAVING (products.quantityInStock - COALESCE(SUM(orderdetails.quantityOrdered), 0)) < 3000 
    AND (products.quantityInStock - COALESCE(SUM(orderdetails.quantityOrdered), 0))>500
    ORDER BY totalQuantityOrdered DESC;
