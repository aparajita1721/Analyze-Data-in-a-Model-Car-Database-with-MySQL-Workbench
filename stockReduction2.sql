-- If we reduce 5% of stocks for each of the products(least popular)
SELECT products.productName, products.productLine, products.quantityInStock,
(products.quantityInStock*0.95) AS reduced_stock, SUM(orderdetails.quantityOrdered) AS quantityOrdered 
FROM products LEFT JOIN orderdetails ON products.productCode= orderdetails.productCode 
GROUP BY products.productName ORDER BY SUM(orderdetails.quantityordered) ASC LIMIT 20;