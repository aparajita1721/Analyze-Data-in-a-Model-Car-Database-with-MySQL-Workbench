-- most no. of clients in which country
SELECT country, COUNT(customerNumber) AS Count_customers 
FROM customers 
GROUP BY country;

