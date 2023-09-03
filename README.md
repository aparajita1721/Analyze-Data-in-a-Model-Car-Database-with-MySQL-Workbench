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

### Solution
We started with finding the total sales in each year for all the products. Investigated which countries are the most profitable and which countries have very low scope of sales.
We checked the quantities of the products that were ordered the most(top 10), their stock availabiltity, price for each, buy price, MSRP as well as profit percentage earned in each of the products.
we also checked the amount sales shipped by each of the warehouse
we checked if pricing was an issue with the products that were least popular and if customer service could be factored into it
some major client seemed to have cancelled their order as they found a better offer, another client also had budget issues.

### Insights
