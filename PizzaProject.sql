SELECT * FROM order_details
SELECT * FROM pizza_types
SELECT * FROM pizzas;
SELECT * FROM orders;

--BASIC ANALYSIS

--What is the total order count, total revenue, and total quantity for all pizzas ordered?

SELECT 
	COUNT(*) AS total_order_count,
	ROUND(SUM(od.quantity * p. price),2) AS total_revenue,
	SUM(quantity) AS total_quantity
FROM order_details od
	JOIN orders o
ON od.order_id = o.order_id
	JOIN pizzas p
ON od.pizza_id = p.pizza_id;


--What is the average pizza price?

SELECT
	ROUND(AVG(price),2) AS avg_price
FROM pizzas;


--List the `order_id` and time for each order made before 12:00 PM on `01/01/2015`.

SELECT 
	order_id, [time]
FROM orders
WHERE [time] < '12:00:00.0000000' AND [date] = '2015-01-01';


--Show the price of the smallest size available for each pizza type.

SELECT Top 1
	pt.[name], price, 
	MIN(size) AS smallest_size 
FROM pizza_types pt
JOIN pizzas p
ON pt.pizza_type_id = p.pizza_type_id
GROUP BY pt.[name], price;


--Identify the pizza with the highest price.

SELECT Top 1
		pt.[name], 
		ROUND(MAX(price),2) AS highest_price
FROM pizza_types pt
JOIN pizzas p
ON pt.pizza_type_id = p.pizza_type_id
GROUP BY pt.[name]
ORDER BY highest_price DESC;


--ADVANCED INSIGHTS

-- Calculate the total cost of each order by summing the prices of all pizzas in that order.

SELECT  o.order_id,
	   ROUND(SUM(od.quantity * p.price),2) AS total_cost
FROM orders o
JOIN order_details od
ON o.order_id = od.order_id
JOIN pizzas p 
ON od.pizza_id = p.pizza_id
GROUP BY o.order_id
ORDER BY total_cost DESC;


--Group all pizzas by category and find the average price within each category.

SELECT 
	CASE WHEN size = 'S' THEN 'Small'
			 WHEN size = 'L' THEN 'Large'
			 ELSE 'Medium'
		END AS pizza_category,
		ROUND(AVG(price),2) AS average_price
FROM pizzas
GROUP BY
			CASE WHEN size = 'S' THEN 'Small'
			 WHEN size = 'L' THEN 'Large'
			 ELSE 'Medium'
		END
ORDER BY average_price DESC;


--Calculate the total revenue generated in 2015 from all pizza sales.

SELECT 
		DATEPART(YEAR,o.[date]) AS [year],
		ROUND(SUM(p.price * od.quantity),2) AS total_revenue
FROM order_details od
JOIN pizzas p
ON od.pizza_id = p.pizza_id
JOIN orders o
ON od.order_id = o.order_id
WHERE o.[date] BETWEEN '2015-01-01' AND '2015-12-31'
GROUP BY DATEPART(YEAR,o.[date]);


--List all pizzas that have 'Chicken' as an ingredient.

SELECT 
		[name], ingredients
FROM pizza_types
WHERE ingredients LIKE '%Chicken%';


--Determine the most popular pizza size based on the number of orders.

SELECT Top 1
	size,
	COUNT(quantity) AS number_of_orders
FROM order_details od
JOIN pizzas p
ON od.pizza_id = p.pizza_id
GROUP BY size
ORDER BY number_of_orders DESC;


--Categorize pizzas into 'Expensive'(>15) and 'Affordable' based on their price

SELECT
	pt.[name],
	price,
	CASE WHEN price > 15 THEN 'Expensive'
		 ELSE 'Affordable'
	END AS price_category
FROM pizza_types pt
JOIN pizzas p
ON pt.pizza_type_id = p.pizza_type_id;



--STRATEGIC ANALYSIS

--Rank pizza types based on their popularity using window functions.

WITH CTE AS (
		SELECT 
				pt.[name],
				SUM(quantity) AS total_quantity,
				RANK () OVER (ORDER BY SUM(quantity) DESC) AS pizza_rnk
		FROM order_details od
		JOIN pizzas p
		ON od.pizza_id = p.pizza_id
		JOIN pizza_types pt
		ON p.pizza_type_id = pt.pizza_type_id
		GROUP BY pt.[name]
		)

SELECT [name], total_quantity, pizza_rnk
FROM CTE
ORDER BY pizza_rnk;


--Identify the first pizza ordered in each order session.

WITH CTE AS (
				SELECT [name],	
					   o.[date],
					   o.order_id,
						ROW_NUMBER() OVER(PARTITION BY [name] ORDER BY o.[date] ASC) AS pizza_rank
				FROM orders o
				JOIN order_details od
				ON o.order_id = od.order_id
				JOIN pizzas p
				ON od.pizza_id = p.pizza_id
				JOIN pizza_types pt
				ON p.pizza_type_id = pt.pizza_type_id
				GROUP BY [name], [date], o.order_id
			) 

SELECT order_id,
		[name]
FROM CTE
WHERE pizza_rank = 1
ORDER BY [name];


--Segment pizzas based on the number of orders.

WITH CTE AS (
		SELECT 
				[name],
				COUNT(quantity) AS number_of_orders
		FROM order_details od
		JOIN pizzas p
		ON od.pizza_id = p.pizza_id
		JOIN pizza_types pt
		ON p.pizza_type_id = pt.pizza_type_id
		GROUP BY [name]
			),
segment AS (
			SELECT [name], number_of_orders,
				CASE 
					WHEN number_of_orders >= '1501' THEN 'Top Product'
					WHEN number_of_orders >= '1001' AND number_of_orders < '1500' THEN 'Volume Drivers'
					WHEN number_of_orders >= '501' AND number_of_orders < '1000' THEN 'Elite Offering'
					ELSE 'Low Performers'
				END AS product_segment
			FROM CTE
			)

SELECT [name], number_of_orders, product_segment
FROM segment
ORDER BY number_of_orders DESC;


--Categorize each order day into Weekday or Weekend and analyze the sales volume.

SELECT	
		CASE	
			WHEN DATEPART(WEEKDAY,[date]) IN (1,7) THEN 'Weekend'
			ELSE 'Weekday'
		END AS order_day,
		SUM(quantity) AS sales_volume
FROM orders o
JOIN order_details od
ON o.order_id = od.order_id 
GROUP BY CASE	
			WHEN DATEPART(WEEKDAY,[date]) IN (1,7) THEN 'Weekend'
			ELSE 'Weekday'
		END
ORDER BY order_day;



--Calculate the total sales for each month and categorize them into Low, Medium, and High sales quarters.

WITH CTE AS (
		SELECT 
				DATENAME(MONTH,[date]) AS [month],
				ROUND(SUM(p.price * od.quantity),2) AS total_sales
		FROM pizzas p
		JOIN order_details od
		ON p.pizza_id = od.pizza_id
		JOIN orders o
		ON od.order_id = o.order_id
		GROUP BY DATENAME(MONTH,[date])
		),

avg_month AS (
				SELECT  [month], 
						total_sales,
						ROUND(AVG(total_sales) OVER (),2) AS avg_total_sales
				FROM CTE
				GROUP BY [month], 
						total_sales
		)

SELECT 
		[month], 
		total_sales,
		avg_total_sales,
		CASE 
			WHEN total_sales >= 70000 THEN 'High'
			WHEN total_sales <= avg_total_sales THEN 'Low'
			ELSE 'Medium'
		END AS sales_category
FROM avg_month
ORDER BY total_sales DESC;



--Categorize the day of each order into seasons and calculate total sales per season.


WITH CTE AS (
				SELECT	 DATENAME(WEEKDAY, [date]) AS order_day,
						 ROUND(SUM(p.price * od.quantity),2) AS total_sales
				FROM pizzas p
				JOIN order_details od
				ON p.pizza_id = od.pizza_id
				JOIN orders o
				ON od.order_id = o.order_id
				GROUP BY DATENAME(WEEKDAY, [date])
			)

SELECT 
		order_day,
		total_sales,
		CASE 
			 WHEN order_day IN ('Sunday', 'Monday') THEN 'Spring'
			 WHEN order_day IN ('Tuesday', 'Wednesday') THEN 'Summer'
			 WHEN order_day IN ('Thursday', 'Friday') THEN 'Autumn'
			 ELSE 'Winter'
		 END AS season
FROM CTE
ORDER BY total_sales DESC;



-- For each pizza category, how many pizzas were sold monthly?


SELECT category,
	   COUNT(*) AS pizzas_sold,
	   DATEPART(MONTH, [date]) AS [month]
FROM orders o
JOIN order_details od
ON o.order_id = od.order_id
JOIN pizzas p
ON od.pizza_id = p.pizza_id
JOIN pizza_types pt
ON p.pizza_type_id = pt.pizza_type_id
GROUP BY category, DATEPART(MONTH, [date])
ORDER BY category, [month];


--What are the highest-selling month for each pizza categories?


WITH CTE AS (
		SELECT 
				category,
				COUNT(*) AS pizzas_sold,
				DATENAME(MONTH, [date]) AS [month]
		FROM orders o
		JOIN order_details od
		ON o.order_id = od.order_id
		JOIN pizzas p
		ON od.pizza_id = p.pizza_id
		JOIN pizza_types pt
		ON p.pizza_type_id = pt.pizza_type_id
		GROUP BY category, DATENAME(MONTH, [date])
		),

rank_sales AS (
					SELECT 
							category,
							pizzas_sold,
							[month],
							RANK() OVER(PARTITION BY category ORDER BY pizzas_sold DESC) AS pizzas_rank
					FROM CTE
					)

SELECT 
		category,
		pizzas_sold,
		[month]
FROM rank_sales
WHERE pizzas_rank = 1;


--For each pizza type, calculate the total revenue and classify them into above and below average based on their comparison to the overall average.


WITH CTE AS (		
		SELECT 
				[name],
				pt.pizza_type_id,
				ROUND(SUM(p.price * quantity),2) AS total_revenue
		FROM order_details od
		JOIN pizzas p
		ON od.pizza_id = p.pizza_id
		JOIN pizza_types pt
		ON p.pizza_type_id = pt.pizza_type_id
		GROUP BY [name],pt.pizza_type_id
		),

AVERAGE_REVENUE AS (
					SELECT 
							[name],
							pizza_type_id,
							total_revenue,
							AVG(total_revenue) OVER() AS avg_revenue
					FROM CTE
					GROUP BY [name],
							 pizza_type_id,
							 total_revenue
					)

SELECT 
		[name],
		pizza_type_id,
		total_revenue,
		avg_revenue,
		CASE 
			WHEN total_revenue > avg_revenue THEN 'Above'
			ELSE 'Below'
		END AS 'Revenue_class'
FROM AVERAGE_REVENUE
ORDER BY total_revenue DESC;
