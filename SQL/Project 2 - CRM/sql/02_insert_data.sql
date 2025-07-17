USE crm;

-- Customers
INSERT INTO customers(name) VALUES
("Chirag"), ("Rathava"), ("Paresh"), ("Viju"), ("Jay"),
("Ronak", "Kanalava"), ("Rahul", "Surat"),
("Bharat", "NA"), ("Sanjay", "NA"),
("Adity4", "NA");

-- Products
INSERT INTO products(name, price) VALUES
("ATB", 139.00),
("MTB", 99.00),
("APITB", 99.00);

-- Orders
INSERT INTO orders(customers_id, order_number, ordered_at) VALUES
(1, "TTA01", CURRENT_TIMESTAMP),
(4, "TTA02", CURRENT_TIMESTAMP),
(3, "TTA04", CURRENT_TIMESTAMP);

-- Order Items
INSERT INTO order_items(order_id, product_id, price, quantity) VALUES
(4, 1, 139.00, 3),
(1, 4, 99.00, 3),
(5, 3, 139.00, 3);
