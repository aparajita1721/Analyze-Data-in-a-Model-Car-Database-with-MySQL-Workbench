# Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench
## Performing exploratory data analysis on the database using SQL queries
### Problem:-
To analyze data in a relational database using SQL queries with the goal of supporting inventory-related business decisions that lead to the closure of a storage facility.
### Questions 

1) Where are items stored and if they were rearranged, could a warehouse be eliminated?
2) How are inventory numbers related to sales figures? Do the inventory counts seem appropriate for each item?
3) Are we storing items that are not moving? Are any items candidates for being dropped from the product line?
4) If we decrease the stocks by 5% for each of the products does it affect the sales?
5) Is price a major factor in popularity of the products?
6) What is profit percentage earned in the products that were sold the most?
7) What is profit percentage earned in the products that were sold the least?

### Method
We used SQL queries on MySQL Workbench to perform exploratory data analysis. To begin with, we with imported the database using the SQL script linked here- [mintclassics db](mintclassics DB.sql) and studied the schema using the EER (Extended Entity-Relationship diagram). Further, we identified the tables and fields that could provide relavent informations to the questions asked above and support our insights. 
We begin this project with analyzing historical sales data, identifying trends, and assessing stock levels. By reallocating orders, optimizing inventory, and considering price adjustments, the aim was to enhance operational efficiency, reduce costs, and maximize profitability while ensuring product availability and customer satisfaction. This approach aligns with modern supply chain principles and business management.


### Insights and Suggestions
**General Insights-**
- In the initial year of 2003, a total of 36,439 sales [transactions](yearlySales.sql) were recorded. This figure experienced a decline, reaching 19,590 sales in 2005.

![Yearly Sales](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/e2830b0e-adff-471d-bc06-2c6fc9d69a5f)


- The preponderance of [clients](clientCount.sql) hailed from the United States, and it is noteworthy that this nation yielded the [highest revenue](profitCountries.sql), followed by Spain and France.

![Revenue](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/a091992e-0556-4038-91a1-21cccf2e576b)


- Interestingly, six countries—Poland, Portugal, Netherlands, South Africa, Russia, and Israel—did not contribute to revenue generation, while Hong Kong and Ireland generated the [least revenue](leastProfitCountries.sql).

![Least revenue](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/c261d86a-5782-45d1-8ca6-e61ac7a43e15)

- During this period, [six clients](cancelledOrders.sql) canceled their orders, with one [prominent client](majorOrder.sql) opting for a more favorable offer from a competitor.

![customer status](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/fd97f953-7a1c-4c33-a589-24dab8dc5ecb)
![cancelled orders](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/8666e062-63d2-4279-b576-199c9850ba96)
![product codes](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/73c43b13-718f-4b94-aba0-3726eb043e7a)

- To maintain competitiveness, a 5% [price reduction](majorOrder.sql) is proposed for select products while ensuring continued profitability.

![suggested pricing](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/6eca04ef-8d1b-4c91-9a71-36007fb9f6fb)

**Problem-specific Insights**
1. Significantly, the profit percentage exhibited minimal variance between the [least](leastOrderedProfit.sql)and [most](mostOrderedProfit.sql) popular products. Price of the product also did not seem to influence the popularity of the product.

![least ordered products' profit percentage](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/d357dd16-9ca9-405f-860f-82264d901122)
![most ordered products' profit percentage](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/6c771de2-0ab6-4ea6-a494-021c108f9830)

2. We also observed that a product named 1985 Toyota Supra (product code- S18_3233) had not been sold at all, On further investigating the product we observed that this product had not been priced yet. So the reason why it didn't sell could be that it's newly launched product or maybe there has been an error with the data entry.

2.  Inventory primarily resides in [warehouses](warehouseStock.sql) A, B, and C, with warehouses A and B serving as primary shipping hubs, followed by warehouses C and D.

![details on warehouse](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/309fe3b0-59af-495f-a057-111c71e46402)
![warehouse stock](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/1a594039-332e-406e-b8af-07cd58585d78)
![stock shipped from each warehouse](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/16f67c1b-714d-40e7-bd45-526fef48a648)

3. To address the significant disparity between available stock and ordered quantities over the past three years, a [reduction in stock](
stockReduction.sql) levels (20%-30%) is suggested for the 68 listed products that may potentially become obsolete with time. However, precise numbers should be discussed with the supplier.

![top 10 overstocked products](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/f546db1a-cc18-40b3-9b1c-2b415572ba35)

4. Approximately 24 products are maintaining [optimal stock](optimalStocks.sql) levels for received orders, while five products require [restocking](restock.sql) in the near term, and 11 products demand [immediate](urgentRestock.sql) replenishment to meet market demands. As the demand for stocks of each products is different from the other, it won't be feasible to reduce the stocks for each and every product by 5%.

![optimum stocks-total 24](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/6decb430-c762-429d-ac7f-ec312d1fb362)
![restock](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/5de55126-8d4e-4845-9420-409dc83cd72c)
![urgent restock](https://github.com/aparajita1721/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/143907878/7b1f0f8e-505a-4fdf-a910-e634de5f37b9)

5. Taking into account that we have to reduce a lot of extra stock and close down one storage place, we can move the orders from warehouse D to warehouse C. This will help us use our space better and close the storage place smoothly.
