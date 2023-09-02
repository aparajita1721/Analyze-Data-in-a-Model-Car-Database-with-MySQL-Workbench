-- no. of customers and the status of their orders
SELECT status, COUNT(customerNumber) AS number_of_customers 
FROM orders GROUP BY status;
 