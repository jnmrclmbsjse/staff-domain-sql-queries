-- Start of customers data --
INSERT INTO
    customers (name, email, country, created_at)
VALUES
    ('First UK Customer', 'firstukcustomer@gmail.com', 'UK', '2020-01-01 01:00:00'),
    ('First US Customer', 'firstuscustomer@gmail.com', 'US', '2020-01-01 01:00:00'),
    ('Third UK Customer', 'thirdukcustomer@gmail.com', 'UK', '2025-01-01 01:00:00'),
    ('Second UK Customer', 'secondukcustomer@gmail.com', 'UK', '2021-01-01 01:00:00'),
    ('Fourth UK Customer', 'fourthukcustomer@gmail.com', 'UK', '2022-01-01 01:00:00');
-- End of customers data --

-- Start of products data --
INSERT INTO
    products (name, sku, price, stock_qty)
VALUES
    ('Product 1', 'P1', 100, 100),
    ('Product 2', 'P2', 200, 200),
    ('Product 3', 'P3', 300, 300),
    ('Product 4', 'P4', 1, 1000);
-- End of products data --

-- Start of orders data --
INSERT INTO
    orders (customer_id, status, total_amount, created_at)
VALUES
    (1, 'completed', 1000, '2020-01-01 01:00:00'),
    (1, 'pending', 1000, '2020-01-01 01:00:00'),
    (1, 'refunded', 1000, '2020-01-01 01:00:00'),
    (1, 'cancelled', 1000, '2020-01-01 01:00:00'),
    (1, 'completed', 500, '2020-02-01 01:00:00'),
    (2, 'completed',400, '2020-03-02 01:00:00'),
    (3, 'pending', 900, '2020-03-03 01:00:00'),
    (4, 'completed', 40, '2020-04-03 01:00:00'),
    (4, 'completed', 40, '2020-04-03 01:00:00'),
    (4, 'completed', 40, '2020-05-03 01:00:00'),
    (4, 'completed', 500, '2026-06-03 01:00:00');
-- End of orders data --

-- Start of order_items data --
INSERT INTO
    order_items (order_id, product_id, quantity, unit_price)
VALUES
    (1, 1, 10, 100),
    (2, 1, 10, 100),
    (3, 1, 10, 100),
    (4, 1, 10, 100),
    (5, 1, 10, 100),
    (6, 2, 2, 200),
    (7, 3, 3, 300),
    (8, 4, 40, 1),
    (9, 4, 40, 1),
    (10, 4, 40, 1),
    (11, 1, 1, 100),
    (11, 2, 2, 200);
-- End of order_items data --
