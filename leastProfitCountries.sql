-- Least profits earned in which countries
SELECT  customers.country, SUM(payments.amount) AS Amount FROM customers 
LEFT JOIN payments ON customers.customerNumber= payments.customerNumber 
GROUP BY customers.country ORDER BY SUM(payments.amount) ASC LIMIT 10;
