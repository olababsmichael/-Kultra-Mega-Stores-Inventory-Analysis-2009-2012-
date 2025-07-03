
# 📦 Kultra Mega Stores Inventory Analysis (2009–2012)

### _A SQL-Powered Business Intelligence Report_

---

## 🏢 Company Overview

**Kultra Mega Stores (KMS)**, headquartered in Lagos, Nigeria, is a retail company specializing in office supplies and furniture. It serves three major customer segments: **Consumers**, **Small Businesses**, and **Corporate Clients** across various regions.

As a **Business Intelligence Analyst**, I was tasked with analyzing order data for the **Abuja Division** between **2009 and 2012** using SQL. This analysis covers two business case scenarios with a focus on product performance, customer value, and shipping strategy.

---

## 🎯 Objectives

- Identify top-performing products and regions
- Evaluate customer profitability and behavior
- Analyze shipping cost effectiveness
- Advise KMS management on revenue growth strategies

---

## 📊 Data Sources

1. `KMS Sql Case Study.csv` – Order data with details like product, sales, profit, customer, and shipping
2. `Order_Status.csv` – Information on returned orders

---

## 🔍 Case Scenario I: Sales & Shipping Performance

### 1. 🏆 **Which product category had the highest sales?**
Using SQL aggregation, `Technology` was found to have the **highest sales revenue** across all categories.
<img src="./Highest Sales Product.png" alt="Highest Sales Product" width="600">

> 💡 _Technology accounted for the largest share of total sales, driven by high-priced products like phones, machines, and computers._

### 2. 🌍 **What are the Top 3 and Bottom 3 regions in terms of sales?**
**Top 3**

<img src="./Top 3.png" alt="Top 3" width="600">

**Bottom 3**

<img src="./Bottom 3.png" alt="Bottom 3" width="600">

> 🔎 _The top regions are densely populated urban markets with a strong business presence, while the bottom regions are sparsely populated._

### 3. 📦 **What were the total sales of appliances in Ontario?**

<img src="./Total Sales Of Appliances In Ontario.png" alt="Total Sales Of Appliances In Ontario" width="600">

### 4. 📉 **Advise KMS on increasing revenue from the bottom 10 customers**

- Based on the results from this analysis , i recommend that the management of KMS should: 
  Give targeted discounts or cashback for repeat purchases.
- Offer product bundles or kits to increase order size.
- Provide free delivery for orders above a certain amount.
- Send personalized emails with promotions on products they previously browsed.
- Call or survey them to understand their needs better and improve satisfaction.

### 5. 🚚 **Which shipping method incurred the most cost for KMS?**

The shipping method with the **highest total shipping cost** was **Delivery Truck**.

<img src="./Most Shipping Cost.png" alt="Most Shipping Cost" width="600">

> 📌 _Despite being the most economical per delivery, the volume of orders made Delivery Truck the most expensive overall._

---

## 🧠 Case Scenario II: Customer Insights

### 6. 💰 **Who are the most valuable customers and what do they purchase?**

<img src="./Most Valuable Customers.png" alt="Most Valuable Customers" width="600">

> 🧾 _Valuable customers tend to purchase high-margin technology and office equipment._

### 7. 🏪 **Which small business customer had the highest sales?**

<img src="./Highest Sales Small Business Customer.png" alt="Highest Sales Small Business Customer" width="600">

### 8. 🏢 **Which Corporate Customer placed the most orders (2009–2012)?**

<img src="./Corporate Customer Highest Order.png" alt="Corporate Customer Highest Order" width="600">

### 9. 🧮 **Which Consumer customer was the most profitable?**

<img src="./Profitable Consumer Customer.png" alt="Profitable Consumer Customer" width="600">


### 10. ⚖️ **Was shipping cost appropriately aligned with Order Priority?**

📌 **Observation**:
- High-priority orders (Critical, High) often used **Express Air** (most expensive)
- Low-priority orders mostly used **Delivery Truck** (slowest and cheapest)

✅ **Conclusion**:  
Yes, KMS **appropriately spent shipping costs** in alignment with **Order Priority**.

> 💡 _They optimized shipping speed for high-value or urgent orders, minimizing cost for low-priority shipments._

---

## 💡 Strategic Recommendations

1. **Strengthen Loyalty Programs** for top and mid-tier customers  
2. **Target Low-Sales Regions** (Yukon, Nunavut) with regional campaigns  
3. **Reduce Return Rates** by improving product descriptions & QA  
4. **Optimize Shipping** by analyzing average cost vs. urgency per product category  
5. **Encourage Repeat Purchases** via bundle offers and upselling

---

## 🛠️ Tools & Technologies Used

- **SQL Server** for querying and aggregating data  
- **Excel** for pivot analysis and filtering   
- **GitHub** for project documentation

---

## 📁 File Structure


📦 KMS-SQL-Project/  
├── 📄 [README.md](./README.md)  
├── 📊 [KMS Sql Case Study.csv](./KMS%20Sql%20Case%20Study.csv)  
├── 🔁 [Order_Status.csv](./Order_Status.csv)  
└── 📁 [KMSQuery.sql](./KMSQuery.sql)



---

## 🙌 Final Note

This project demonstrates how SQL can be used to drive **business decisions** by transforming raw order data into **clear insights** for management.  
Ideal for **analyst portfolios**, **BI roles**, and **data-driven storytelling**.

---
