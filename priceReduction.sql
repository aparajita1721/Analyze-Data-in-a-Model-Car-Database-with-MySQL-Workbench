-- price reduction by 5 percent for the products that were sold the least
SELECT products.productName, products.buyPrice, products.MSRP, orderdetails.priceEach, 
(orderdetails.priceEach*0.95) AS Price_Reduction 
FROM products JOIN orderdetails ON orderdetails.productCode=products.productCode 
GROUP BY products.productName 
ORDER BY orderdetails.quantityOrdered ASC LIMIT 10;
