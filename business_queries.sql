-- ==========================================================
-- Retail Business Intelligence Platform
-- Business SQL Queries
-- Author: Keerthana P
-- ==========================================================

-- ==========================================================
-- MODULE 1 : EXECUTIVE KPIs
-- ==========================================================

-- Q1 Total Revenue
SELECT ROUND(SUM(Sales),2) AS Total_Revenue
FROM superstore_sales;

-- Q2 Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore_sales;

-- Q3 Profit Margin
SELECT ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin_Percentage
FROM superstore_sales;

-- Q4 Total Orders
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders
FROM superstore_sales;

-- Q5 Total Customers
SELECT COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM superstore_sales;

-- Q6 Average Order Value
SELECT ROUND(SUM(Sales)/COUNT(DISTINCT Order_ID),2) AS Average_Order_Value
FROM superstore_sales;

-- ==========================================================
-- MODULE 2 : SALES TREND ANALYSIS
-- ==========================================================

-- Q7 Monthly Revenue
SELECT
Year,
Month,
Month_Name,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore_sales
GROUP BY Year, Month, Month_Name
ORDER BY Year, Month;

-- Q8 Quarterly Revenue
SELECT
Year,
Quarter,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore_sales
GROUP BY Year, Quarter
ORDER BY Year, Quarter;

-- Q9 Revenue by Month
SELECT
Month_Name,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore_sales
GROUP BY Month_Name
ORDER BY Revenue DESC;

-- Q10 Yearly Revenue and Profit
SELECT
Year,
ROUND(SUM(Sales),2) AS Revenue,
ROUND(SUM(Profit),2) AS Profit
FROM superstore_sales
GROUP BY Year
ORDER BY Year;

-- ==========================================================
-- MODULE 3 : REGIONAL PERFORMANCE
-- ==========================================================

-- Q11 Revenue by Region
SELECT
Region,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore_sales
GROUP BY Region
ORDER BY Revenue DESC;

-- Q12 Profit by Region
SELECT
Region,
ROUND(SUM(Profit),2) AS Profit
FROM superstore_sales
GROUP BY Region
ORDER BY Profit DESC;

-- Q13 Top 10 States by Revenue
SELECT
State,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore_sales
GROUP BY State
ORDER BY Revenue DESC
LIMIT 10;

-- Q14 Bottom 10 States by Profit
SELECT
State,
ROUND(SUM(Profit),2) AS Profit
FROM superstore_sales
GROUP BY State
ORDER BY Profit ASC
LIMIT 10;

-- Q15 Top 10 Cities by Revenue
SELECT
City,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore_sales
GROUP BY City
ORDER BY Revenue DESC
LIMIT 10;

-- ==========================================================
-- MODULE 4 : CUSTOMER ANALYTICS
-- ==========================================================

-- Q16 Revenue by Customer Segment
SELECT
Segment,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore_sales
GROUP BY Segment
ORDER BY Revenue DESC;

-- Q17 Profit by Customer Segment
SELECT
Segment,
ROUND(SUM(Profit),2) AS Profit
FROM superstore_sales
GROUP BY Segment
ORDER BY Profit DESC;

-- Q18 Top 10 Customers by Revenue
SELECT
Customer_Name,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore_sales
GROUP BY Customer_Name
ORDER BY Revenue DESC
LIMIT 10;

-- Q19 Top 10 Customers by Profit
SELECT
Customer_Name,
ROUND(SUM(Profit),2) AS Profit
FROM superstore_sales
GROUP BY Customer_Name
ORDER BY Profit DESC
LIMIT 10;

-- Q20 Average Customer Revenue
SELECT
ROUND(AVG(CustomerSales),2) AS Average_Customer_Revenue
FROM
(
SELECT
Customer_ID,
SUM(Sales) AS CustomerSales
FROM superstore_sales
GROUP BY Customer_ID
) AS CustomerRevenue;

-- ==========================================================
-- MODULE 5 : PRODUCT PERFORMANCE
-- ==========================================================

-- Q21 Revenue by Category
SELECT
Category,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore_sales
GROUP BY Category
ORDER BY Revenue DESC;

-- Q22 Profit by Category
SELECT
Category,
ROUND(SUM(Profit),2) AS Profit
FROM superstore_sales
GROUP BY Category
ORDER BY Profit DESC;

-- Q23 Revenue by Sub Category
SELECT
Sub_Category,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore_sales
GROUP BY Sub_Category
ORDER BY Revenue DESC;

-- Q24 Top 10 Selling Products
SELECT
Product_Name,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore_sales
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 10;

-- Q25 Least Profitable Products
SELECT
Product_Name,
ROUND(SUM(Profit),2) AS Profit
FROM superstore_sales
GROUP BY Product_Name
ORDER BY Profit ASC
LIMIT 10;

-- ==========================================================
-- MODULE 6 : DISCOUNT & PROFITABILITY
-- ==========================================================

-- Q26 Average Profit by Discount Category
SELECT
Discount_Category,
ROUND(AVG(Profit),2) AS Average_Profit
FROM superstore_sales
GROUP BY Discount_Category;

-- Q27 Revenue by Discount Category
SELECT
Discount_Category,
ROUND(SUM(Sales),2) AS Revenue
FROM superstore_sales
GROUP BY Discount_Category;

-- Q28 Number of Loss Orders
SELECT
Loss_Order,
COUNT(*) AS Orders
FROM superstore_sales
GROUP BY Loss_Order;

-- Q29 Average Profit Margin by Category
SELECT
Category,
ROUND(AVG(Profit_Margin),2) AS Average_Profit_Margin
FROM superstore_sales
GROUP BY Category
ORDER BY Average_Profit_Margin DESC;

-- ==========================================================
-- MODULE 7 : SHIPPING ANALYSIS
-- ==========================================================

-- Q30 Average Shipping Days
SELECT
ROUND(AVG(Shipping_Days),2) AS Average_Shipping_Days
FROM superstore_sales;

-- Q31 Shipping Mode Performance
SELECT
Ship_Mode,
ROUND(AVG(Shipping_Days),2) AS Average_Shipping_Days,
ROUND(SUM(Sales),2) AS Revenue,
ROUND(SUM(Profit),2) AS Profit
FROM superstore_sales
GROUP BY Ship_Mode
ORDER BY Revenue DESC;

-- Q32 Orders by Shipping Mode
SELECT
Ship_Mode,
COUNT(*) AS Total_Orders
FROM superstore_sales
GROUP BY Ship_Mode
ORDER BY Total_Orders DESC;

-- ==========================================================
-- MODULE 8 : ADVANCED SQL
-- ==========================================================

-- Q33 Rank States by Revenue
SELECT
State,
ROUND(SUM(Sales),2) AS Revenue,
RANK() OVER (ORDER BY SUM(Sales) DESC) AS State_Rank
FROM superstore_sales
GROUP BY State;

-- Q34 Running Total of Sales
SELECT
Order_Date,
SUM(Sales) AS Daily_Sales,
SUM(SUM(Sales)) OVER (ORDER BY Order_Date) AS Running_Total
FROM superstore_sales
GROUP BY Order_Date;

-- Q35 Highest Profit Product in Each Category
WITH RankedProducts AS
(
SELECT
Category,
Product_Name,
SUM(Profit) AS Total_Profit,
ROW_NUMBER() OVER
(
PARTITION BY Category
ORDER BY SUM(Profit) DESC
) AS rn
FROM superstore_sales
GROUP BY Category, Product_Name
)

SELECT
Category,
Product_Name,
Total_Profit
FROM RankedProducts
WHERE rn = 1;
DESCRIBE superstore_sales;