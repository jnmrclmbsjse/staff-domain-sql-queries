-- Q1. List all customers from the United Kingdom, showing the newest sign-ups first. --
SELECT * FROM customers WHERE country = 'UK' ORDER BY created_at DESC;

--
-- Q2. For each customer, display:
-- • Name
-- • Email
-- • Total amount spent on completed orders
-- Sort the results by highest spenders first.
--
SELECT
    customers.name, customers.email, SUM(orders.total_amount) AS total_spent
FROM
    customers
JOIN
    orders ON customers.id = orders.customer_id
WHERE
    orders.status = 'completed'
GROUP BY
    customers.id
ORDER BY
    total_spent
    DESC;

--
-- Q3. Find every product that has sold more than 100 units in total (across all orders).
-- Display:
-- • Product name
-- • Total units sold
--
SELECT
    products.name,
    SUM(order_items.quantity) AS total_sold
FROM
    products
JOIN
    order_items ON products.id = order_items.product_id
GROUP BY
    products.id
HAVING
    SUM(order_items.quantity) >= 100
;

-- Q4. Find all customers who have never placed a completed order. This should include customers who have never placed any orders.
SELECT
    customers.*
FROM
    customers
        LEFT JOIN
    orders ON customers.id = orders.customer_id OR orders.customer_id IS NULL
WHERE
    (
        SELECT
            COUNT(orders.id)
        FROM
            orders
        WHERE
            orders.customer_id = customers.id
          AND
            orders.status = 'completed'
    ) = 0
;

--
-- Q5. Produce a monthly revenue report (completed orders only) for the last 12 months,
-- showing:
-- • Month
-- • Total revenue
--
SELECT
    DATE_PART('month', orders.created_at) AS month ,SUM(orders.total_amount)
FROM
    orders
WHERE
    orders.created_at >= '2020-01-01 00:00:00'
  AND
    orders.created_at <= '2020-12-31 11:59:59'
  AND
    orders.status = 'completed'
GROUP BY
    month
;