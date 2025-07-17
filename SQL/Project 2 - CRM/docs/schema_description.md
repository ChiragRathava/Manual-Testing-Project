# 📘 Schema Description – CRM SQL Project

This document provides a complete overview of the tables, columns, and relationships used in the CRM SQL Project.

---

## 📦 Tables Overview

### 1. 🧍‍♂️ `customers`
| Column Name | Data Type     | Description                         |
|-------------|---------------|-------------------------------------|
| id          | int(11)       | Primary Key, auto-incremented       |
| name        | varchar(64)   | Customer name                       |
| address     | text(100)     | Customer address                    |

---

### 2. 📦 `products`
| Column Name | Data Type     | Description                         |
|-------------|---------------|-------------------------------------|
| id          | int(11)       | Primary Key, auto-incremented       |
| name        | varchar(255)  | Product name (unique)               |
| price       | decimal(10,2) | Price of the product                |

---

### 3. 🧾 `orders`
| Column Name   | Data Type     | Description                                   |
|---------------|---------------|-----------------------------------------------|
| id            | int(11)       | Primary Key, auto-incremented                 |
| customers_id  | int(11)       | Foreign Key → `customers(id)`                 |
| order_number  | varchar(255)  | Unique order reference number                 |
| ordered_at    | datetime      | Timestamp when the order was placed           |

---

### 4. 📦 `order_items`
| Column Name | Data Type     | Description                               |
|-------------|---------------|-------------------------------------------|
| id          | int(11)       | Primary Key, auto-incremented             |
| order_id    | int(11)       | Foreign Key → `orders(id)`                |
| product_id  | int(11)       | Foreign Key → `products(id)`              |
| price       | decimal(10,2) | Price of the product at time of ordering  |
| quantity    | int           | Quantity of the product ordered           |

---

## 🔁 Relationships

- **customers → orders**: One-to-many (a customer can place multiple orders)
- **orders → order_items**: One-to-many (an order contains multiple products)
- **products → order_items**: One-to-many (a product appears in multiple orders)

---

## ⚙️ Procedures, Triggers, Views

### 🔧 Stored Procedure

#### `getMeQuantity2(IN quantityByUser INT)`
Returns order items where quantity is greater than the user-specified value.

```sql
CALL getMeQuantity2(2);
````

---

### 🚨 Trigger

#### `before_address_update_null2`

Ensures any customer inserted with `"NA"` as address has it changed to `"INDIA"`.

```sql
DELIMITER //
CREATE TRIGGER before_address_update_null2
BEFORE INSERT ON customers
FOR EACH ROW
BEGIN
    IF (NEW.address = "NA") THEN
        SET NEW.address = "INDIA";
    END IF;
END //
DELIMITER ;
```

---

### 👁️ View

#### `idn5`

Displays names of customers where the ID is less than 5.

```sql
CREATE OR REPLACE VIEW idn5 AS
SELECT name FROM customers WHERE id < 5;
```
---

## 🖼️ ER Diagram

![ER Diagram](docs/er_diagram.png)

---

Let me know if you’d also like:
- A **text-based ER diagram**
- An **updated image-based diagram**
- Or inclusion of **example queries** per table

I can include those next if needed.