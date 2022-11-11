USE northwind;

# 1
SELECT MAX(unit_price) AS HighestPrice, 
MIN(unit_price) AS LowestPrice
FROM products;

# 2
SELECT COUNT(product_id),
AVG(unit_price)
FROM products;

# 3
SELECT MAX(freight),
MIN(freight)
FROM orders
WHERE ship_country = ('UK');

# 4
SELECT product_name, unit_price
FROM products
WHERE unit_price > 28.8
ORDER BY unit_price DESC;

# 5
SELECT COUNT(product_name)
FROM products
WHERE discontinued = 1;

# 6
SELECT product_id, product_name
FROM products
WHERE discontinued = 0
ORDER BY product_id DESC
LIMIT 10;
