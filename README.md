# Northwind-sales-analysis
Northwind Sales Data Analysis using SQL and Power BI 
## Project Overview.
For this project, I worked on the Northwind sales dataset.

My aim was to help Northwind Traders optimise sales, improve product management, 
enhance shipping efficiency and strengthen customer relationships.

I used SQL and Power BI to explore and analyse the data, create a clearer picture
of the company's sales performance, gain useful insights and provide business recommendations 
based on my findings.

## Project Objective. 
1. To identify sales growth patterns and seasonal trends
2. To identify high performing and underperforming products
3. To recognize valuable customers to improve customer relationship management
4. To identify opportunities to optimize costs and improve shipping efficiency
5. To identify delays and improve customer satisfaction

## Business Questions.
1. How have total orders and revenue changed over time, and are there any noticeable sales trends?
2. Which product are the best-selling and worst-selling based on sales quantity ?
3. Which customers generate the highest number of orders and contribute the most to revenue?
4. Are shipping costs consistent across different shipping providers?
5. How efficient is the delivery process, and how many orders are delivered on time versus late?

## Dataset Description. 
  The dataset used for this project is the Northwind Traders dataset. 
  it contains seven tables: customers, products, categories, shipper, 
  orders, order details and employees.

  I used the dataset to explore the business information and answer the business 
  questions provided for the analysis. 

## Data Cleaning and Preparation.
 Before starting the analysis, I carried out some checks on the dataset to ensure
 it was ready to use.

 My data preparation process involved the following steps:
 
 1. Checked the tables for missing values and blank entries.
 2. Checked for duplicate records.
 3. Added underscores(_) to column names to make them easier to work with.
 4. Saved the seven tables separately to make importing them into my analysis tools easier.

## Tools and Methodology 

1. SQL (PostgreSQL)
I used postgreSQL to create the database tables and import the data from the
Northwind dataset. I then analysed the business questions using SQL queries
to identify the relevant tables needed for my Power BI dashboard.

2. Power BI
I imported the necessary tables, established relationships between them,
and created charts and a dashboard to present my findings.

I also created DAX measures for Total Revenue, Total Orders, Average Order Value and Average Shipping time. Some of these metrics were also calculated in SQL and I compared
the results to ensure consistency.

## Power BI Dashboard Preview
![ Northwind Sales Dasboard] (./Images/Northwind%20Dashboard.png)
