USE crm;

-- Customers table
CREATE TABLE customers (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY(id)
);

-- Products table
CREATE TABLE products (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id)
);

-- Orders table
CREATE TABLE orders (
    id INT(11) NOT NULL AUTO_INCREMENT,
    customers_id INT(11) NOT NULL,
    order_number VARCHAR(255) NOT NULL UNIQUE,
    ordered_at DATETIME NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT orders_customer_fk FOREIGN KEY (customers_id) REFERENCES customers(id)
);

-- Order Items table
CREATE TABLE order_items (
    id INT(11) NOT NULL AUTO_INCREMENT,
    order_id INT(11) NOT NULL,
    product_id INT(11) NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT order_items_order_fk FOREIGN KEY (order_id) REFERENCES orders(id),
    CONSTRAINT order_items_product_fk FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Add columns to order_items
ALTER TABLE order_items ADD COLUMN price DECIMAL(10,2) NOT NULL;
ALTER TABLE order_items ADD COLUMN quantity INT NOT NULL;

-- Add unique index on order_id + product_id
CREATE UNIQUE INDEX order_items_order_product_uidx ON order_items(order_id, product_id);
