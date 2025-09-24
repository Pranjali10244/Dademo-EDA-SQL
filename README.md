
# 🛒 E-commerce Orders Database Analysis  

This project demonstrates how to analyze an **e-commerce database** using SQL.  
It covers real-world business metrics like revenue, order values, customer insights, and product pricing, along with **SQL functions** for string and date operations.  

---

## 📌 Project Overview  
In an e-commerce business, we deal with multiple entities like **customers, orders, products, and order items**.  
Using SQL, this project answers important questions such as:  

- How many customers and orders exist?  
- What is the **total revenue** generated?  
- Which products are **cheapest and most expensive**?  
- What is the **average order value**?  
- How to manipulate **strings and dates** effectively in SQL?  

---

## 🗄️ Database Structure  

The database `dademo` contains the following tables:  

### **1. Customers**  
- `customer_id` – Unique ID for each customer  
- `full_name` – Customer name  
- `email` – Customer email  
- `signup_date` – Date customer registered  

### **2. Orders**  
- `order_id` – Unique ID for each order  
- `customer_id` – Linked customer  
- `order_date` – Date order was placed  
- `shipped_date` – Date order was shipped  
- `notes` – Extra comments/notes  

### **3. OrderItems**  
- `order_item_id` – Unique ID for each order item  
- `order_id` – Linked order  
- `product_id` – Linked product  
- `quantity` – Number of items ordered  
- `unit_price` – Price per unit  

### **4. Products**  
- `product_id` – Unique ID for each product  
- `product_name` – Product name  
- `category` – Product category  
- `price` – Product price  

---

## 🔎 Key Analysis Areas  

### 📊 Business Insights  
1. **Customer Count** – Total number of customers.  
2. **Shipped Orders** – Orders that have already shipped.  
3. **Total Revenue** – Sum of `(quantity × unit_price)` across all orders.  
4. **Average Order Value (AOV)** – Average revenue per order.  
5. **Product Pricing** – Identify the cheapest and most expensive product.  

### 🔤 String Functions (Data Cleaning & Formatting)  
- Combine name and email as `"Full Name <email>"`.  
- Convert product/category names to **uppercase/lowercase**.  
- Calculate the **length of customer names**.  
- **Trim extra spaces** from notes.  
- Extract the **first 5 characters** of product names.  
- Mask customer emails (`@ → [at]`).  

### 📅 Date & Time Functions  
- Get the **current date and time**.  
- Extract **year, month, and day** from order dates.  
- Calculate **estimated delivery date** (order date + 7 days).  
- Find **days between order and shipping**.  
- List **signup years of customers**.  

---

## 🚀 Outcomes  
By running these SQL queries, we can:  

- Understand **customer base and order volume**.  
- Calculate **business revenue and key metrics** like AOV.  
- Detect **product pricing ranges** for business strategy.  
- Learn **string manipulation** for better reporting.  
- Perform **date/time calculations** useful in logistics and operations.  

---

## 🛠️ Tools & Technologies  
- **SQL (MySQL)** – For querying and analysis  
- **E-commerce Orders Dataset** – (Customers, Orders, OrderItems, Products)  

---

## 📌 How to Use  
1. Import the dataset into MySQL under the database `dademo`.  
2. Run the provided SQL queries in sequence.  
3. Explore and modify queries to generate additional insights.  
