# 🛍️ SQL Online Retail 

This project simulates an **Online Retail Company** using realistic mock data generated from **[Mockaroo](https://www.mockaroo.com/)**.  
The dataset is designed for SQL learning, query practice, and retail analytics using **SQL Server Management Studio (SSMS)**.

---

## 📊 Table Overview
The database includes the following five tables:
1. **Customers** – Customer personal and contact details  
2. **Categories** – Product category information  
3. **Products** – Product catalog with pricing and stock details  
4. **Orders** – Customer order-level records  
5. **OrderItems** – Detailed items within each order  

---

## 📁 Files Included

## 📄 **File 1: Create DB Tables.sql**
- Contains SQL scripts to create the database `RetailDB`
- Defines schema and table structures for all 5 tables
- Includes `PRIMARY KEY`, `FOREIGN KEY`, and `IDENTITY` relationships

## 📄 **File 2 – Questions & Queries.sql**

Contains SQL queries for analysis:
- Total sales and revenue insights  
- Top-selling products  
- Customer purchase analysis  
- Category-wise performance  
- Monthly & yearly sales trends  
- Profit calculations  
- Order & product level deep-dive queries  

## 📄 **File 3 – LOG & Trigger.sql**

To automatically log changes in the database, triggers are used.  
Triggers execute automatically during **INSERT, UPDATE, or DELETE** operations.

### **Step 1: Create Log Table**

A general log table is created to capture Records detail

### **Step 2: Create Triggers for Each Table**

#### **A. Products Table Triggers**
- Trigger for **INSERT** on Products  
- Trigger for **UPDATE** on Products  
- Trigger for **DELETE** on Products  

#### **B. Customers Table Triggers**
- Trigger for **INSERT** on Customers  
- Trigger for **UPDATE** on Customers  
- Trigger for **DELETE** on Customers  

---

## 📄 File 4 – Indexes.sql

This file adds indexes to improve query performance across the database.

### Includes:
- Clustered and non-clustered indexes on **Customers**, **Products**, **Categories**, **Orders**, and **OrderItems** tables  
- Indexes on key columns such as CustomerID, OrderDate, CategoryID, Price, OrderID, and ProductID  
- Temporary dropping and recreating of foreign key constraints where required  

These indexes optimize filtering, sorting, and lookup queries throughout the retail database.
