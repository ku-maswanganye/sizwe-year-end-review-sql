# 🌱 Sizwe Coffee Year-End Review
## 📖 Project Overview
Sizwe Coffee (Pty) Ltd is a fictional coffee roastery and wholesale supplier based in Isando, Johannesbury, with second distribution centre in Epping, Cape Town. It roasts green beans and sells to about 1,400 business customers; grocery chains, restaurant groups, independpent cafes, hotels and offices. However, it does not own retail stores of its own.

The financial year ended on 30 June 2025 and the year-end review is in two weeks.

As a junior data analyst, I have been tasked by Nomsa Dlamini, the Financial Director, and Bongani Twala, the National Sales Manager to address the following:

- Task 1: Channel perfomance
- Task 2: Where the profit actually comes from?
- Task 3: The collections problem
- Task 4: The ten accounts that matter most
- Task 5: A commercial gap
- Task 6: Are the sales representatives hitting target?
- Task 7: The shape of the year
- Task 8: Why has the margin moved?

## 🎯 Business Objectives
The project aims to:
- Compare channel revenue across financial years
- Analyse customer and product performance
- Evaluate outstanding invoices and payment collection
- Identify trends in sales performance
- Develop insights for management

## 🛠️ Tools and Technologies
- SQL
- Databricks
- GitHub
- Markdown documentation

## 🗄️ Database Structure
The project uses a sales and invoicing database containing the following tables:

| Tables | Purpose |
| --- | --- |
| customers | Stores customer information |
| products | Stores product information |
| sales_orders | Stores customer, order date, delivery date, channel and sales representative|
| sales_lines | Stores SKU, units, unit price, discount, line revenue, cost of goods |
| ar_ledger | Stores invoice amount, invoice due, invoice date, amount settled, settlement date |
| reps | Stores sales representatives, territory, monthly target  |
| reps_visits | Stores sales representatives customer visit information |
| trade_promotions | Stores promotional information |
| vendors | Stores supplier information |

#### Table Connections
The tables are connected as follows:
- sales_orders.customer_id → customers.customer_id
- sales_orders.order_id → sales_lines.order_id
- sales_lines.sku → products.sku
- sales_orders.rep_id and customers.rep_id → reps.rep_id
- ar_ledger.customer_id → customers.customer_id
- rep_visits.customer_id and trade_promotions.customer_id → customers.customer_id

## 📊 Business Questions
The SQL analysis investigates questions such as:
1. How are the channels performing?
2. Where does the company's profit come from?
3. Are there collection problems?
4. Who are the company's largest customers?
5. Is there a commercial gap?
6. Are the sales representative meeting monthly targets?
7. What is the company's revenue trend in the last 2 years?
8. What has caused the margin to move?

## 🧠 SQL Skills Demonstrated

- SELECT, WHERE and ORDER BY
- JOIN operations
- Aggregate functions and GROUP BY
- CASE WHEN conditional aggregation
- Date filtering and year extraction
- Common Table Expressions (CTEs)
- Subqueries
- NULL handling with COALESCE
- Financial calculations and percentage variance




## 👤 Author
Kutlwano Maswangnaye

This project forms part of my ongoing development in finance, accounting, data analysis, and technology.
