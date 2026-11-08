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
![Northwind Sales Dasboard](./Image/Northwind%20Dashboard.png)

## Key Findings

1. Sales Performance Over Time

| Year | Total Orders | Total Revenue |
|------|-------------:|--------------:|
| 2013 | 130 | 227025.3990 |
| 2014 | 359 | 565445.8520 |
| 2015 | 211 | 338643.6055 |
   
The analysis shows that both orders and revenue increased from 2013 to 2014,
reaching their highest point in 2014. However, both declined in 2015.

2. Best and Worst Performing Products

Best-performing products (Top 5)
| Product | Quantity Sold |
|---|---:|
| Raclette Courdavault | 1,368 |
| Gorgonzola Telino | 1,347 |
| Camembert Pierrot | 1,191 |
| Gnocchi di nonna Alice | 1,114 |
| Rhönbräu Klosterbier | 1,055 |

Worst-performing products (Bottom 5)
| Product | Quantity Sold |
|---|---:|
| Genen Shouyu | 72 |
| Mishi Kobe Niku | 79 |
| Laughing Lumberjack Lager | 94 |
| Chocolade | 123 |
| Gravad lax | 125 |

Raclette Courdavault recorded the highest sales quantity, with 1,368 units sold, while Genen Shouyu had the lowest, with 72 units sold among the five lowest-performing products.

3. Customer Purchasing Patterns

Top 5 Customers by Revenue and Orders 
| Customer ID | Total Revenue | Total Orders |
|---|---:|---:|
| SAVEA | 94,063.7910 | 26 |
| ERNSH | 85,630.7885 | 24 |
| QUICK | 71,210.2650 | 22 |
| RATTC | 52,798.5300 | 15 |
| HUNGO | 40,375.2450 | 15 |

SAVEA generated the highest revenue of 94,063.7910 from 26 orders, followed by ERNSH with 85,630.7885 from 24 orders. This shows that a small group of customers contributed significantly to the company's revenue.

4. Shipping Cost Analysis

Average Shipping Cost by Provider
| Shipping Provider | Total Orders | Average Shipping Cost | Minimum Cost | Maximum Cost |
|---|---:|---:|---:|---:|
| United Package | 276 | 81.43 | 0.02 | 890.78 |
| Speedy Express | 206 | 64.95 | 0.12 | 458.78 |
| Federal Shipping | 218 | 82.74 | 0.40 | 1007.64 |

Speedy Express had the lowest average shipping cost of 64.95, while Federal Shipping had the highest average cost of 82.74. United Package handled the highest number of orders, with 276 orders.


5. Delivery Efficiency (on time vs late Deliveries)

| Delivery Status | Number of Orders |
|---|---:|
| On-time | 668 |
| Late | 32 |
| **Total** | **700** |

Out of 700 orders, 668 (95.43%) were delivered on time, while 32 (4.57%) were delivered late. This indicates that the majority of orders were delivered on time.


## conclusion

Working on this project helped me understand how to use SQL and Power BI to analyse data and get useful information from it. I was able to look at Northwind’s sales performance, identify the best- and worst-performing products, understand customer purchases, compare shipping costs, and check delivery efficiency.

I also learned how to use SQL queries to answer business questions and present my findings in a Power BI dashboard.

Overall, this project gave me more practical experience in data analysis and improved my skills in SQL and Power BI.



   
        
