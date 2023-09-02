-- displaying top 10 Product names and product lines that were ordered the least and their stock availability
SELECT products.productName, products.productLine, 
products.quantityInStock, SUM(orderdetails.quantityOrdered) AS quantity_ordered 
FROM products LEFT JOIN orderdetails ON products.productCode= orderdetails.productCode 
GROUP BY products.productName ORDER BY SUM(orderdetails.quantityOrdered) ASC LIMIT 10;

