USE crm;

-- 📌 SELECT QUERIES

-- All customers
SELECT * FROM customers;

-- Customer with ID 2
SELECT * FROM customers WHERE id = 2;

-- Customers with name containing "ra"
SELECT * FROM customers WHERE name LIKE "%ra%";

-- Customer name & identity
SELECT * FROM customers WHERE name = 'Chirag' AND identity = 'TTA001';

-- Customers where identity starts with 'Q'
SELECT * FROM customers WHERE identity LIKE 'Q%';

-- Products ordered by name
SELECT name FROM products ORDER BY name ASC;
SELECT name FROM products ORDER BY name DESC;

-- Products ordered by price
SELECT * FROM products ORDER BY price DESC;

-- Most expensive product
SELECT * FROM products ORDER BY price DESC LIMIT 1;

-- Products count
SELECT COUNT(*) FROM products;

-- Products with price > 99
SELECT * FROM products WHERE price > 99;

-- Customers starting with R (limit 2)
SELECT * FROM customers WHERE name LIKE 'R%' ORDER BY name ASC LIMIT 2;

-- Order summary per order
SELECT order_items.order_id, SUM(price * quantity) AS amount_per_order FROM order_items GROUP BY order_id;

-- Final total with join
SELECT
    customers.id AS customers_id,
    customers.name,
    orders.order_number,
    orders.id AS order_id,
    order_totals.amount_per_order
FROM customers
JOIN orders ON orders.customers_id = customers.id
JOIN (
    SELECT order_items.order_id, SUM(price * quantity) AS amount_per_order
    FROM order_items
    GROUP BY order_id
) AS order_totals ON order_totals.order_id = orders.id;

-- Self join (customers from same address)
SELECT A.name AS CustomerName1, B.name AS CustomerName2, A.id, A.address
FROM customers A, customers B
WHERE A.id <> B.id AND A.address = B.address;

-- UNION query
SELECT * FROM customers
UNION ALL
SELECT * FROM customers;

-- Customers with and without orders
SELECT * FROM customers LEFT JOIN orders ON customers.id = orders.customers_id;
SELECT * FROM customers LEFT JOIN orders ON customers.id = orders.customers_id WHERE orders.id IS NULL;

-- Total quantity and sales
SELECT SUM(price), SUM(quantity) FROM order_items;

-- Orders with quantity > 2
SELECT * FROM order_items WHERE quantity > 2;

-- View query
SELECT * FROM idn5;

-- Procedure call
SET @q_value = 1;
CALL getMeQuantity2(@q_value);
