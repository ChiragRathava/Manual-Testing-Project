USE crm;

-- 🔄 CUSTOMER TABLE UPDATES

-- Rename 'name' column to 'names' and back (for demonstration)
ALTER TABLE customers RENAME COLUMN name TO names;
ALTER TABLE customers RENAME COLUMN names TO name;

-- Modify 'name' column to 64 characters
ALTER TABLE customers MODIFY COLUMN name VARCHAR(64);

-- Add 'address' column if it doesn’t exist
ALTER TABLE customers ADD COLUMN address TEXT(100) NOT NULL;

-- Update identity values for customers
UPDATE customers SET identity = 'TTA001' WHERE id = 1;
UPDATE customers SET identity = 'TTA002' WHERE id = 2;
UPDATE customers SET identity = 'TTA003' WHERE id = 3;
UPDATE customers SET identity = 'Q0' WHERE id = 3;
UPDATE customers SET identity = 'Q1' WHERE id = 5;
UPDATE customers SET identity = 'Q2' WHERE id = 4;

-- Update addresses for specific customers
UPDATE customers SET address = 'Vadodara' WHERE name = 'Chirag';
UPDATE customers SET address = 'Surat' WHERE name = 'Viju';
UPDATE customers SET address = 'PanchMahal' WHERE name = 'Paresh';
UPDATE customers SET address = 'Jetpur' WHERE name = 'Jay';
UPDATE customers SET address = 'Viramgam' WHERE name = 'Rathava';
UPDATE customers SET name = 'Satish' WHERE id = 6;

-- Update price and quantity in order_items
UPDATE order_items SET price = 139.00, quantity = 3 WHERE order_id = 4 AND product_id = 1;
UPDATE order_items SET price = 99.00, quantity = 3 WHERE order_id = 1 AND product_id = 4;
UPDATE order_items SET price = 139.00, quantity = 3 WHERE order_id = 5 AND product_id = 3;

-- More customer address updates
UPDATE customers SET address = "RAJKOT" WHERE id = 11;
UPDATE customers SET address = "VGEC" WHERE id IN (9,10);
