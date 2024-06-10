# Pizza-Sales-Analysis-using-SQL #

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/0d26280a-9fcc-4a4e-b732-8179722de0b9)

# Introduction #

The analysis revolves around a comprehensive dataset from a pizza business that captures detailed transactions including orders, pizzas, and their characteristics. The dataset allows for in-depth analysis of sales trends, pricing strategies, and customer preferences. The aim is to extract actionable insights that could help in optimizing product offerings, pricing models, and marketing strategies to boost revenue and enhance customer satisfaction.


# Dataset Information #

**Order Details:** Contains specific information about each order including the order ID, pizza ID, and quantity of pizzas ordered.

**Orders:** Records the order ID, date, and time of each order, providing temporal details of sales.

**Pizza Type:** Lists pizza types along with their names, categories, and ingredients, offering insights into the product range.

**Pizzas:** Includes detailed attributes of pizzas such as pizza ID, type, size, and price, crucial for pricing analysis.


# Data Dictionary #

More information on the data dictionary below:

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/0c9345f2-2ec3-4493-bfc3-c3a250c9a495)


# Objective #

The primary objective of this analysis is to harness actionable insights from our extensive pizza order dataset to inform strategic decision-making within our business operations. We aim to dissect product performance, including sales dynamics and pricing efficiency, to identify opportunities for menu optimization and pricing strategies. By studying detailed sales data and product characteristics, we seek to enhance operational efficiency and drive profitability.


# Basic Analysis #

1. What is the total order count, total revenue, and total quantity for all pizzas ordered?


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/3199a109-e272-4413-9fab-07430978500c)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/31c68608-bd77-4a75-85c6-7f18bc71ffd9)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/a2c0b46d-4e2e-4eb7-8e46-6296bfd29237)


The total number of orders is 48,620, the total revenue is 817,860.05, and the total quantity of pizza ordered is 49,574.


2. What is the average pizza price?

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/c3bc051f-3a98-455b-afd0-e5bbbf91ee89)

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/ab1b5ffa-14b5-4191-a685-3ebaf93c564f)
   
The average pizza price is 16.44.

3. List the `order_id` and time for each order made before 12:00 PM on `01/01/2015`.

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/8611a495-a234-4384-b9a6-4dcee8ee6262)

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/6992cc28-b8ba-433e-a1fe-3165ee175891)


Only two orders were made before 12:00 on 01/01/2015.


4. Show the price of the smallest size available for each pizza type.

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/f8bd0cde-aee0-4ac1-be40-96063db2f91b)

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/4fc98419-572e-4511-b02a-32a3c746e454)

The price of the smallest available pizza size is 9.75.


5. Identify the pizza with the highest price.

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/80523f6f-a7fe-4ff4-ab2f-1e6ae95718d4)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/e2e2759c-54e3-452c-b9c5-afc0b27e91b8)

The pizza with the highest price is The Greek Pizza.


6. List all ingredients used in 'The Barbecue Chicken Pizza'.

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/bdb59b1b-d0b9-4e7a-81ea-ba234dad98f7)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/fb20b435-3a0c-4e16-b173-b1ebf3785443)


The ingredients used in The Barbecue Chicken Pizza are Barbecued Chicken, Red Peppers, Green Peppers, Tomatoes, Red Onions, Barbecue Sauce.




# Advanced Insights #


1. Calculate the total cost of each order by summing the prices of all pizzas in that order.

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/05709c89-5e1e-4750-85ee-d9a5a1424d70)

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/2a06af44-3681-45ba-b601-8e736a4c4d92)


The table above shows the total cost of each order made.


2. Group all pizzas by category and find the average price within each category.


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/cc33303b-d799-4647-b8d5-f727128635e9)

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/44704bfc-09ee-478c-8506-d7aa52409d3f)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/9a8e4c61-a13d-49ca-a618-7aa29d48f78a)


The chart above shows the average price distribution by pizza category


3. Calculate the total revenue generated in 2015 from all pizza sales.


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/252a946a-2d0a-4190-a4b3-5144acedca73)

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/76e3e382-7bd5-4fcb-b045-19c3ad5baad7)


The total revenue generated in 2015 was 817,860.05.


4. List all pizzas that have 'Chicken' as an ingredient.

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/d9569ac7-1159-41a7-99c3-129f83cbadec)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/6aca3b4f-0a5c-4cfb-bda5-be5e93eb095c)


All pizzas with Chicken as an ingredient are listed above.


5. Determine the most popular pizza size based on the number of orders.
 
![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/24141606-7015-467d-9f82-375cfe9abd83)

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/276dbd20-df5e-4e3b-b662-b0a89ed4962e)

The most popular pizza size based on the number of orders is Large, with 18,526 orders.

6. Categorize pizzas into 'Expensive' and 'Affordable' based on their price.

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/fd31b2d0-9e9c-418e-8e72-f24b43cf017f)

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/79b04a14-e3ae-468d-8df5-96bf674899e8)

The different categories of each pizza is shown in the table above.



# Strategic Analysis #


1. Rank pizza types based on their popularity using window functions.




2. Identify the first pizza ordered in each order session.




3. Segment customers into quartiles based on the number of orders they have placed.




4. Categorize each order day into Weekday or Weekend and analyze the sales volume.




5. Calculate the total sales for each month and categorize them into Low, Medium, and High sales quarters.




6. Categorize the day of each order into seasons and calculate total sales per season.




7. For each pizza category, how many pizzas were sold monthly?




8. What are the highest selling pizza categories for each month?




9. For each pizza type, calculate the total revenue and classify them into above and below average based on their comparison to the overall average.





