-- reduction of stocks by 5% percent for each product
SELECT products.productName, products.quantityInStock,
(products.quantityInStock*0.95) AS reduction_stock, SUM(orderdetails.quantityOrdered) AS quantityOrdered 
FROM products LEFT JOIN orderdetails ON products.productCode= orderdetails.productCode 
GROUP BY products.productName ORDER BY SUM(orderdetails.quantityordered) DESC;
