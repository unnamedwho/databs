CREATE TABLE orders(
    order_id INTEGER,
    order_name VARCHAR(100),
    client_id INTEGER,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)

);
