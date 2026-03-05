# 🛒 E-Commerce Funnel Analysis (SQL + Power BI)

## 📌 Executive Summary

This project analyzes user behavior in an e-commerce platform using **Funnel Analysis**. The objective is to understand how users move through different stages of the purchasing journey and identify where users drop off before completing a purchase.

The analysis was performed using **SQL for data analysis** and **Power BI for visualization**.

The funnel analysis revealed that a large number of users browse products, but a significant drop occurs before the checkout and purchase stages. Identifying these drop-offs helps businesses improve the customer journey and increase conversion rates.

---

# 🎯 Project Objectives

- Analyze user progression through the purchase funnel
- Identify drop-off points between funnel stages
- Measure bounce behavior
- Evaluate performance across devices and marketing channels
- Build a business dashboard for insights

---

# 🧰 Tools & Technologies

- **SQL (MySQL)** – Data cleaning and analysis  
- **Python** – Synthetic dataset generation  
- **Power BI** – Dashboard creation and visualization  
- **GitHub** – Project documentation  

---

# 📊 Funnel Stages

The dataset tracks user activity across the following stages:

1. Browse  
2. Add to Cart  
3. Checkout  
4. Purchase  

These stages represent the typical customer journey in an e-commerce platform.

---

# 📂 Dataset Description

The dataset contains simulated user interaction events.

| Column | Description |
|------|------|
| User_ID | Unique identifier for each user |
| Session_ID | Unique identifier for each session |
| Event | User action in the funnel |
| Timestamp | Time when the event occurred |
| Device | Device used by the user |
| Region | User location |
| Channel | Marketing source |
| Product_Category | Category of product viewed or purchased |
| Revenue | Revenue generated from purchases |
| Bounce_Flag | Indicates whether the user left the session early |

---

# 🧹 Data Cleaning

Several preprocessing steps were performed before analysis:

- Converted timestamp values into proper datetime format
- Removed extra characters and spaces from categorical columns
- Standardized event names
- Cleaned bounce flag values

These steps ensured the dataset was ready for accurate analysis.

---

# 📊 Power BI Dashboard

A Power BI dashboard was created to visualize key business insights.

The dashboard includes:

- Funnel stage distribution
- Conversion analysis
- Bounce rate overview
- Device usage distribution
- Marketing channel performance
- Revenue insights

---

# 🔍 Key Insights

- A large number of users enter the funnel through the **Browse stage**
- A noticeable drop occurs between **Add to Cart and Checkout**
- Only a small percentage of users complete the **Purchase stage**
- Some sessions bounce without interacting further
- Device type and marketing channel influence user behavior

---

# 💡 Business Recommendations

- Improve the checkout process to reduce drop-offs
- Optimize the mobile browsing experience
- Focus marketing efforts on high-performing channels
- Reduce friction in the purchase journey
- Improve website engagement to reduce bounce rate

---

