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
We used SQL queries on MySQL Workbench to perform exploratory data analysis. To begin with, we with imported the database using the SQL script linked here-     and studied the schema using the EER (Extended Entity-Relationship diagram). Further, we identified the tables and fields that could provide relavent informations to the questions asked above and support our insights.


### Insights and Suggestions
**General Insights-**
- In the initial year of 2003, a total of 36,439 sales transactions were recorded. This figure experienced a decline, reaching 19,590 sales in 2005. 

- The preponderance of clients hailed from the United States, and it is noteworthy that this nation yielded the highest revenue, followed by Spain and France.

- Interestingly, six countries—Poland, Portugal, Netherlands, South Africa, Russia, and Israel—did not contribute to revenue generation, while Hong Kong and Ireland generated the least revenue.

- During this period, six clients canceled their orders, with one prominent client opting for a more favorable offer from a competitor.

- To maintain competitiveness, a 5% price reduction is proposed for select products while ensuring continued profitability.

**Problem-specific Insights**
1. Significantly, the profit percentage exhibited minimal variance between the least and most popular products. 
Inventory primarily resides in warehouses A, B, and C, with warehouses A and B serving as primary shipping hubs, followed by warehouses C and D.

2. To address the significant disparity between available stock and ordered quantities over the past three years, a reduction in stock levels (20%-30%) is suggested for the 68 listed products that may potentially become obsolete with time. However, precise numbers should be discussed with the supplier.

3. Approximately 24 products are maintaining optimal stock levels for received orders, while five products require restocking in the near term, and 11 products demand immediate replenishment to meet market demands. As the demand for stocks of each products is different from the other, it won't be feasible to reduce the stocks for each of the products by 5%.

4. Taking into account that we have to reduce a lot of extra stock and close down one storage place, we can move the orders from warehouse D to warehouse C. This will help us use our space better and close the storage place smoothly.
