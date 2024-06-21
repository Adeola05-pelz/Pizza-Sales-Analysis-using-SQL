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

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/fd78fba6-681e-4991-8f9d-436203006317)


# Data Model #

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/50db17fc-6a28-4287-b0ab-897aa17ce715)


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

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/d8e478fb-11dd-4917-be50-621ebd256e2c)

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/92663f83-8048-4f62-a610-7245b0acc2fc)


The different categories of each pizza are shown in the table above. The Big Meat pizza is the most ordered pizza, as seen in the table above


# Strategic Analysis #


1. Rank pizza types based on their popularity using window functions.

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/a75b1d85-383c-4a8d-a0c7-930f7f047232)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/63d1c8b1-e743-45bd-b9bb-16e934635977)


The Classic Deluxe Pizza is the most popular pizza type based on orders.


2. Identify the first pizza ordered in each order session.

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/f40876d0-a476-4953-acca-197b4c764542)

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/a0c8899f-b838-462f-a657-01c25d449d5d)



3. Segment customers into quartiles based on the number of orders they have placed.


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/6cd2f16c-e3a6-4ef9-a46a-2b65638d9a8d)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/2c0dc02b-1010-47a8-bbff-e59d9bb3e416)


4. Categorize each order day into Weekday or Weekend and analyze the sales volume.

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/986000a8-a94c-4aad-8ec2-07845894888e)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/a908bf2a-915c-4267-bf22-987675bafa42)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/e8b97827-4488-4414-85d8-379794c651c2)


The sales volume on the Weekday is 36,046, and Weekend is 13,528.


5. Calculate the total sales for each month and categorize them into Low, Medium, and High sales quarters.

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/39682843-2d4b-4257-81f4-28a78cc1e6bc)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/0d9acdfe-d758-4bf5-a538-1616a5590ffe)


6. Categorize the day of each order into seasons and calculate total sales per season.

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/8b536b1b-656b-470a-8783-c62efa1e66f6)

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/5ff8c0bc-c3b5-4cdf-be9a-3533eb0985fb)


7. For each pizza category, how many pizzas were sold monthly?

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/b4136525-e25d-497c-8520-c916724a3970)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/ab75155a-6ee1-4879-bd8c-e824020784d0)

![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/b62227ab-50e1-4eb4-a3a9-37c193ba85d6)


The table above shows the number of pizzas sold monthly per category.

8. What are the highest selling pizza categories for each month?


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/41a42847-c0bf-4aa9-bf34-fee3d24e7793)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/06e90b25-471b-468b-93c0-7fae723dc32a)


9. For each pizza type, calculate the total revenue and classify them into above and below average based on their comparison to the overall average.


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/0f1ed0f1-dd3a-4889-9538-832f8df39917)


![image](https://github.com/Adeola05-pelz/Pizza-Sales-Analysis-using-SQL/assets/111251042/59c13ad8-c1c3-441a-81ad-64d069ce5ad9)


The table above shows the class of each pizza type based on the comparison of the total revenue to the overall average revenue.

# Recommendations: #

# Advanced Insight Analysis Recommendations: #

   · The company should focus more on Large-sized pizzas as they are the most ordered pizzas.

# Strategic Analysis Recommendations: #

   · Introducing variations or promotional offers around Classic Deluxe Pizza can further boost its sales due to its popularity among customers

   · Introducing limited-time offers to cater to the Brie Carrie Pizza audience to level up its demand and sales.

   · Given the sales volume on Weekdays, the company might consider staffing adjustments and promotional offers on weekends to balance the demand.


The company is built on a solid foundation. By utilizing the insights from the data and implementing the recommendations provided, there is significant potential to optimize operations and improve customer satisfaction.
