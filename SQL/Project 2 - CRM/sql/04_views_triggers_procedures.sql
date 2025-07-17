USE crm;

-- View: Customers with ID < 5
CREATE OR REPLACE VIEW idn5 AS
SELECT name FROM customers WHERE id < 5;

-- Trigger: Replace address 'NA' with 'INDIA' before insert
DELIMITER //
CREATE TRIGGER before_address_update_null2 BEFORE INSERT ON customers
FOR EACH ROW
BEGIN
    IF (NEW.address = "NA") THEN
        SET NEW.address = "INDIA";
    END IF;
END;
//
DELIMITER ;

-- Stored Procedure: Get order items with quantity > given value
DELIMITER //
CREATE PROCEDURE getMeQuantity2 (IN quantityByUser INT)
BEGIN
    SELECT * FROM order_items WHERE quantity > quantityByUser;
END;
//
DELIMITER ;
