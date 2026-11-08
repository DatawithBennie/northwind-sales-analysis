--creating the customers table
CREATE TABLE customers_data(
   customer_id VARCHAR(20) PRIMARY KEY,
   company_name VARCHAR (50),
   contact_name VARCHAR (30),
   contact_title VARCHAR (50),
   city VARCHAR (20),
   country VARCHAR (20)
);


--creating the categories table
CREATE TABLE category_data(
   category_id INTEGER PRIMARY KEY,
   category_name VARCHAR (20),
   description VARCHAR (100)   
);

--creating the products table
CREATE TABLE product_data(
   product_id INTEGER PRIMARY KEY,
   product_name VARCHAR (50),
   quantity_per_unit VARCHAR (30),
   unit_price NUMERIC (10,2),
   discontinued INTEGER,
   category_id INTEGER REFERENCES category_data(category_id)   
);


--creating the employees table 
CREATE TABLE employee_data(
  employee_id INTEGER PRIMARY KEY,
  employee_name VARCHAR (30),
  title VARCHAR (50),
  city VARCHAR (20),
  country VARCHAR (10),
  reports_to INTEGER
);

--creating the shippers table 
CREATE TABLE shipper_data(
  shipper_id INTEGER PRIMARY KEY,
  company_name VARCHAR (10)
);

--creating the orders table 
CREATE TABLE order_data(
  order_id VARCHAR (15) PRIMARY KEY,
  customer_id VARCHAR (20) REFERENCES customers_data(customer_id),
  employee_id INTEGER REFERENCES employee_data(employee_id),
  order_date DATE,
  required_date DATE,
  shipped_date DATE,
  shipper_id INTEGER REFERENCES shipper_data(shipper_id),
  freight NUMERIC (10,2)  
);

--creating the orders details table 
CREATE TABLE order_details_data(
  order_id VARCHAR (15) REFERENCES order_data(order_id),
  product_id INTEGER REFERENCES product_data(product_id),
  quantity INTEGER,
  discount NUMERIC (10,2) 
);

SELECT*
FROM product_data

TRUNCATE TABLE public.product_data
CASCADE


--KPI 1 

SELECT 
    COUNT(DISTINCT order_id) AS Total_orders
FROM order_data;

--KPI 2

SELECT 
  SUM( unit_price * quantity *(1-discount)) AS Total_revenue
FROM product_data AS p
INNER JOIN order_details_data AS od 
ON p.product_id = od.product_id;


--KPI 3

SELECT
  SUM( unit_price * quantity *(1-discount))
  /COUNT(DISTINCT o.order_id) AS Average_order_value
FROM product_data AS p
INNER JOIN order_details_data AS od 
ON p.product_id = od.product_id
INNER JOIN order_data AS o ON od.order_id = o.order_id;

--KPI 4

SELECT
  AVG(shipped_date - order_date) AS avg_shipping_time
FROM order_data ;
 
  1

SELECT 
    COUNT(DISTINCT o.order_id) AS Total_orders,
	SUM( unit_price * quantity *(1-discount)) AS Total_revenue,
	EXTRACT (YEAR FROM order_date) AS Order_year
	---CASE 
	  -- WHEN order_date <= '2013-12-31' THEN '2013'
	 --WHEN order_date <= '2014-12-31' THEN '2014'
	 --ELSE '2015'
	 --END AS Order_year
FROM product_data AS p 
INNER JOIN order_details_data AS od ON p.product_id = od.product_id
INNER JOIN order_data AS o ON o.order_id = od.order_id
GROUP BY order_year
ORDER BY order_year DESC;


2 

SELECT product_name,
 SUM(quantity) AS total_quantity,
 SUM ( unit_price * quantity *(1-discount)) AS Total_revenue
  FROM product_data AS p 
 INNER JOIN order_details_data AS od
 ON p.product_id = od.product_id
GROUP BY product_name
 ORDER BY total_quantity DESC 
  --ORDER BY total_quantity ASC
   LIMIT 5;

3

 SELECT c.customer_id,
 SUM( unit_price * quantity *(1-discount)) AS Total_revenue,
 COUNT(DISTINCT o.order_id) AS Total_orders
FROM customers_data AS c
INNER JOIN order_data AS o ON c.customer_id = o.customer_id
INNER JOIN order_details_data AS od on o.order_id = od.order_id
INNER JOIN product_data AS p ON od.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY Total_revenue DESC
LIMIT 5;

4


SELECT company_name,
  COUNT (order_id) AS total_orders,
  ROUND (AVG(freight)::numeric,2) AS avg_freight_cost,
  ROUND(MIN(freight)::numeric,2) AS min_freight_cost,
  ROUND(MAX(freight)::numeric,2) AS max_freight_cost
FROM shipper_data AS s 
INNER JOIN order_data AS o ON s.shipper_id = o.shipper_id
GROUP BY company_name;
  

 SELECT *
 

5

SELECT delivery_status,
    COUNT(*) AS total_orders
FROM( SELECT shipped_date, required_date,
    CASE 
	   WHEN shipped_date <= required_date THEN 'On time'
	   ELSE 'Late'
	   END AS delivery_status
FROM order_data) AS delivery_status
GROUP BY delivery_status;

