# Staff Domain - Technical Assessment
## Task C — Database (MySQL)

### Task details
Use the following simplified e-commerce database schema:
customers
- id (INT, PK)
- name (VARCHAR)
- email (VARCHAR)
- country (VARCHAR)
- created_at (DATETIME)

products
- id (INT, PK)
- name (VARCHAR)
- sku (VARCHAR)
- price (DECIMAL(10,2))
- stock_qty (INT)
  orders
- id (INT, PK)
- customer_id (INT, FK → customers.id)
- status (VARCHAR: completed, pending, refunded, cancelled)
- total_amount (DECIMAL(10,2))
- created_at (DATETIME)
  order_items
- id (INT, PK)
- order_id (INT, FK → orders.id)
- product_id (INT, FK → products.id)
- quantity (INT)
- unit_price (DECIMAL(10,2))


  SQL Queries 
- Q1. List all customers from the United Kingdom, showing the newest sign-ups first. 
- Q2. For each customer, display:
  - Name 
  - Email 
  - Total amount spent on completed orders
> Sort the results by highest spenders first.

- Q3. Find every product that has sold more than 100 units in total (across all orders). Display:
  - Product name 
  - Total units sold
- Q4. Find all customers who have never placed a completed order. This should include customers who have never placed any orders. 
- Q5. Produce a monthly revenue report (completed orders only) for the last 12 months, showing:
  - Month 
  - Total revenue

> Note from Junmar: This task is built by hand

### How to run to project and review it
#### Requirements
- Docker
- Docker Compose

#### Steps
1. Clone the repository
2. Run `docker-compose up`
3. Once the container is up, exec into the container `docker compose exec -ti db bash`
4. Run `psql -U staffdomain -d staffdomain -f schema.sql` to create the database schema
5. Run `psql -U staffdomain -d staffdomain -f data.sql` to populate the database with data
6. Run `psql -U staffdomain -d staffdomain -f queries.sql` to run the queries
7. or run it line by line by copying the queries from queries.sql and running them in the command line `psql -U staffdomain -d staffdomain -c "{REPLACE_THIS_WITH_YOUR_QUERY}"`