/* a major client seemed to have cancelled their order as they recieved a better offer, 
depending on the offer given by our competitor, we could bring down the pricing of each of the products by 5%*/
SELECT orders.status, orders.customerNumber, orderdetails.quantityOrdered,
orderdetails.priceEach, orders.comments 
FROM orders JOIN orderdetails ON orders.orderNumber= orderdetails.orderNumber 
WHERE orders.status="Cancelled" AND orders.customerNumber=141;
