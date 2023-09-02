-- orders cancelled due to budgeting issues
SELECT orders.status, orders.customerNumber, orderdetails.quantityOrdered, orderdetails.priceEach, orders.comments 
FROM orders JOIN orderdetails ON orders.orderNumber= orderdetails.orderNumber 
WHERE orders.status="Cancelled" AND orders.customerNumber=496;