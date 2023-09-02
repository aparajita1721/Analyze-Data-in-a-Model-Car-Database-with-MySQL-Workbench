-- customers that cancelled their order, their reasons and the quantity of products ordered
SELECT  orders.customerNumber, orders.status, SUM(orderdetails.quantityOrdered) AS Quantity_ordered, orders.comments
FROM orderdetails JOIN orders ON orderdetails.orderNumber=orders.orderNumber 
WHERE orders.status="On Hold" OR orders.status="Cancelled" OR orders.status= "Disputed" OR orders.status="In Process" 
GROUP BY orders.customerNumber ORDER BY SUM(orderdetails.quantityOrdered) DESC;


