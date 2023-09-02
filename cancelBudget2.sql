-- hard to please customer
SELECT orders.status, orders.customerNumber, orderdetails.quantityOrdered, orderdetails.priceEach, orders.comments 
FROM orders JOIN orderdetails ON orders.orderNumber= orderdetails.orderNumber 
WHERE orders.status="Cancelled" AND orders.customerNumber=201;

