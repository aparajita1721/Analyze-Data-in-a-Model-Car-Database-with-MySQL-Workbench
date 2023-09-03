/* a major client seemed to have cancelled their order as they recieved a better offer, 
depending on the offer given by our competitor, we could bring down the pricing of each of the products by 5%*/
-- finding the product codes
SELECT orderdetails.productCode, orderdetails.quantityOrdered, orderdetails.priceEach  
FROM orders JOIN orderdetails ON orders.orderNumber= orderdetails.orderNumber 
WHERE orders.status="Cancelled" AND orders.customerNumber=141;

-- products names based on product codes that were cancelled and price difference between selling price and buy price  
SELECT products.productName, products.buyPrice, orderdetails.priceEach, 
(orderdetails.priceEach - products.buyPrice) AS price_difference, 
(orderdetails.priceEach*0.95) AS Price_reduction
FROM products LEFT JOIN orderdetails 
ON products.productCode= orderdetails.productCode 
WHERE orderdetails.productCode 
IN( 'S18_1662',
    'S18_3029',
    'S18_3856',
    'S24_1785',
    'S24_2841',
    'S24_3420',
    'S24_3816',
    'S24_3949',
    'S32_4289',
    'S50_1341',
    'S700_1691',
    'S700_2047',
    'S700_2466',
    'S700_3167',
    'S700_4002',
    'S72_1253'
) GROUP BY products.productName;
