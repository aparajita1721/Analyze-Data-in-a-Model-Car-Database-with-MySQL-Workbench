-- quantity of total sales each year , significant decline in the last year
SELECT YEAR(orders.orderDate) AS Year, SUM(orderdetails.quantityOrdered) AS Total_quantity_sales
FROM orders LEFT JOIN orderdetails ON orders.orderNumber= orderdetails.orderNumber 
GROUP BY YEAR(orders.orderDate);
