# SQL Online Retail Analysis
This project simulates an **Online Retail Company Database** using data generated from **[Mockaroo](https://www.mockaroo.com/)**.  
The dataset contains realistic customer, product, and order information for SQL analysis and query practice.

---

## 📦 Tables and Data Overview

### 🧑‍💼 Customers (200 rows)
Contains customer details such as:
- `CustomerID` (INT, Primary Key, Auto Increment)
- `FirstName`, `LastName`
- `Email`, `Phone`
- `City`, `Country`, `RegistrationDate`

---

### 🏷️ Categories (10 rows)
Defines product categories such as:
- `CategoryID` (INT, Primary Key)
- `CategoryName`
- `Description`

---

### 🛒 Products (150 rows)
Lists available products with pricing and category mapping:
- `ProductID` (INT, Primary Key)
- `ProductName`
- `CategoryID` (Foreign Key → Categories)
- `UnitPrice`
- `StockQuantity`
- `AddedDate`

---

### 📦 Orders (400 rows)
Stores order-level details linked to customers:
- `OrderID` (INT, Primary Key)
- `CustomerID` (Foreign Key → Customers)
- `OrderDate`
- `TotalAmount`
- `PaymentMethod`
- `OrderStatus`

---

### 🧾 OrderItems (1000 rows)
Contains individual order line items:
- `OrderItemID` (INT, Primary Key)
- `OrderID` (Foreign Key → Orders)
- `ProductID` (Foreign Key → Products)
- `Quantity`
- `UnitPrice`
- `Subtotal`

---

