-- KMS INVENTORY--
--Create KMS Database--
CREATE DATABASE [KMS Sql Case Study]

USE [KMS Sql Case Study]

--Data Cleaning--
ALTER TABLE [KMS Sql Case Study]
ALTER COLUMN Sales DECIMAL(10,2)

ALTER TABLE [KMS Sql Case Study]
ALTER COLUMN Discount DECIMAL(10,2)

ALTER TABLE [KMS Sql Case Study]
ALTER COLUMN Profit DECIMAL(10, 2)

ALTER TABLE [KMS Sql Case Study]
ALTER COLUMN Unit_Price DECIMAL(10,2)

ALTER TABLE [KMS Sql Case Study]
ALTER COLUMN Shipping_Cost DECIMAL(10,2)

ALTER TABLE [KMS Sql Case Study]
ALTER COLUMN Sales DECIMAL(10,2)

ALTER TABLE [KMS Sql Case Study]
ALTER COLUMN Product_Base_Margin DECIMAL (10,2)

--ANALYSIS--

-- 1. Which product category had the highest sales? Technology => 5984248.30
SELECT Top 1 Product_Category, SUM(Sales) As Sales
FROM [KMS Sql Case Study]
GROUP By Product_Category
ORDER By SUM(Sales) DESC

/* 
2. What are the Top 3 and Bottom 3 regions in terms of sales?

Top 3
West	=> 3597549.33
Ontario	=> 3063212.55
Prarie	=> 2837304.59
*/
SELECT Top 3 Region, SUM(Sales) As Sales
FROM [KMS Sql Case Study]
GROUP By Region
ORDER By SUM(Sales) DESC

/* 
Bottom 3
Nunavut	116376.47
Northwest Territories	800847.34
Yukon	975867.39
*/
SELECT Top 3 Region, SUM(Sales) As Sales
FROM [KMS Sql Case Study]
GROUP By Region
ORDER By SUM(Sales) ASC

/* 
3. What were the total sales of appliances in Ontario?  
Total Sales => 202346.84
*/
SELECT Region, SUM(Sales) As [Total Sales]
FROM [KMS Sql Case Study]
Where Region = 'Ontario' AND Product_Sub_Category = 'Appliances'
GROUP By Region

-- 4. Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers
SELECT TOP 10 Customer_Name, Product_Name, Region,  SUM(Sales) [Total Revenue], SUM(Profit) [Total Profit], Discount, Shipping_Cost
FROM [KMS Sql Case Study]
GROUP By Customer_Name, Discount, Shipping_Cost, Product_Name, Region
ORDER By [Total Revenue] ASC
--Based on the results from this analysis , i recommend that the management of KMS should: 

-- Give targeted discounts or cashback for repeat purchases.
-- Offer product bundles or kits to increase order size.
-- Provide free delivery for orders above a certain amount.
-- Send personalized emails with promotions on products they previously browsed.
-- Call or survey them to understand their needs better and improve satisfaction.

/*
5. KMS incurred the most shipping cost using which shipping method?
Delivery => Truck	51971.94
*/
SELECT TOP 1 Ship_Mode, SUM(Shipping_Cost) [Total Shipping Cost]
FROM [KMS Sql Case Study]
GROUP  By Ship_Mode
ORDER BY [Total Shipping Cost] DESC

-- Case Scenario II

/* 6. Who are the most valuable customers, and what products or services do they typically
purchase? 
Deborah Brumfield	=> V70
Emily Phan	=> TimeportP7382
Grant Carroll	=> Xerox 213
Roy Skaria	=> Zoom V.92 USB External Faxmodem
Sylvia Foulston	=> SouthWestern Bell FA970 Digital Answering Machine with Time/Day Stamp
*/
SELECT Customer_Name,  MAX(Product_Name) [Product Name]
FROM [KMS Sql Case Study]
WHERE Customer_Name IN (
SELECT TOP 5 Customer_Name
FROM [KMS Sql Case Study]
GROUP By Customer_Name
ORDER By SUM(Sales) DESC )
GROUP BY Customer_Name

/*
7. Which small business customer had the highest sales?
Dennis Kane	75967.59
*/
SELECT TOP 1 Customer_Name, SUM(Sales) Total_Sales
FROM [KMS Sql Case Study]
WHERE Customer_Segment = 'Small Business'
GROUP By Customer_Name
ORDER By SUM(Sales) DESC

/*
8. Which Corporate Customer placed the most number of orders in 2009 – 2012?
Adam Hart	=> 27
*/
SELECT TOP 1 Customer_Name, COUNT(*) [Order Count]
FROM [KMS Sql Case Study]
WHERE Customer_Segment = 'Corporate' AND Order_Date BETWEEN ('2009-01-01') AND ('2012-12-31')
GROUP By Customer_Name
ORDER By [Order Count] DESC

/*
9. Which consumer customer was the most profitable one?
Emily Phan	=> 34005.44
*/
SELECT TOP 1 Customer_Name, SUM(Profit) [Total Profit]
FROM [KMS Sql Case Study]
WHERE Customer_Segment = 'Consumer'
GROUP By Customer_Name
ORDER  By [Total Profit] DESC

-- 10. Which customer returned items, and what segment do they belong to?
SELECT DISTINCT Customer_Name, Customer_Segment
FROM [KMS Sql Case Study] AS k
INNER JOIN Order_Status AS o
ON k.Order_ID = o.Order_ID
WHERE o.Status = 'Returned' 

/*  11. If the delivery truck is the most economical but the slowest shipping method and
Express Air is the fastest but the most expensive one, do you think the company
appropriately spent shipping costs based on the Order Priority? Explain your answer */

SELECT Ship_Mode, COUNT(*) Order_Count, SUM(Shipping_Cost) Total_Shipping_Cost,  AVG(Shipping_Cost) AS Avg_Shipping_Cost
FROM [KMS Sql Case Study]
GROUP BY Ship_Mode
ORDER BY Total_Shipping_Cost DESC;

/* 
The company appears to favor cost saving over speed, which is smart if most products don’t require urgent delivery.

Since Delivery Truck is economical per order, even high total cost might be okay, it's likely driven by volume, not waste.
This could indicate that the company is controlling shipping expenses effectively.
*/