-- profit percent earned from the products that were ordered the least
SELECT orderdetails.priceEach, products.productName, products.buyPrice, products.MSRP, (((orderdetails.priceEach-products.buyPrice)/products.buyPrice)*100) AS profit_percentage, (orderdetails.priceEach-products.buyPrice) AS profit
FROM orderdetails JOIN products ON orderdetails.productCode= products.productCode
GROUP BY products.productName ORDER BY SUM(orderdetails.quantityOrdered) ASC LIMIT 10;
