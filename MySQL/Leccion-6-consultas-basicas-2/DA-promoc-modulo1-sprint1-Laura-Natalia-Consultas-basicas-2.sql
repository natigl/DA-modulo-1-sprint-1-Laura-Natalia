USE northwind;

/* 1. Conociendo el tipo de productos que vendemos en Northwind:
Crea una consulta que muestre los primeros 10 productos según su ID y que nos indique el nombre de 
dichos productos y sus precios. */ 

SELECT product_name, unit_price
FROM products
ORDER BY product_id 
LIMIT 10;

/* 2. Ordenando los resultados 
Ahora realiza la misma consulta pero que nos muestre los últimos 10 productos según su ID 
de manera descendiente. */ 

SELECT product_name, unit_price
FROM products
WHERE product_id
ORDER BY product_id DESC 
LIMIT 10;

/* 3. Pedidos de nuestra BBDD */ 

SELECT DISTINCT order_id
FROM order_details;

/* 4. Los dos primeros pedidos de nuestra BBDD:*/ 

SELECT DISTINCT order_id
FROM order_details
LIMIT 2;

#5 Pedidos que mas han gastado

SELECT order_id, unit_price AS ImporteTotal 
FROM order_details
ORDER BY unit_price DESC 
LIMIT 3;

#6 Pedidos entre posicion 5 y 10 de nuestro ranking 

SELECT order_id
FROM order_details
ORDER BY unit_price DESC
LIMIT 5
OFFSET 5;

#7 Categorías de nuestra BBDD

SELECT category_name AS Nombredecategoria
FROM categories;

#8 Seleccion envíos con retraso

SELECT date_add(shipped_date, INTERVAL 5 DAY) AS FechaRetrasada
FROM orders;

#9 PRODUCTOS MAS RENTABLES

SELECT *
FROM products
WHERE unit_price BETWEEN 15 AND 50;

#10 Seleccion de productos con unos precios dados:

SELECT *
FROM products
WHERE unit_price IN (18, 19, 20);