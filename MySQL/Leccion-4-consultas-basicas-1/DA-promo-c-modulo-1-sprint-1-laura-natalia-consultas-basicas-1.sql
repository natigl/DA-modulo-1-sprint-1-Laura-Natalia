USE northwind;

# Consultamos la informacion basica de nuestras empleadas en nuestra BBDD:

SELECT employee_id, last_name, first_name
FROM employees;

# Consultamos nuestros productos mas baratos:

SELECT product_id, product_name
FROM products
WHERE unit_price < 5 ;

# Consultamos los productos que tienen un precio exacto de 18, 19 ó 20$:

SELECT product_id, product_name  
FROM products
WHERE unit_price = 18 OR unit_price = 19 OR unit_price = 20 ;

# Consultamos los productos mayores o iguales a 15 pero que tambien sean menores o iguales que 50$:

SELECT product_id, product_name  
FROM products
WHERE unit_price >= 15 AND unit_price <= 50;

# Consultamos los productos que no tienen precio asignado:

SELECT * 
FROM products
WHERE unit_price IS NULL ;

# Consultamos los productos con un precio menor a 15$, pero sólo los que tienen un ID >10:

SELECT *
FROM products
WHERE unit_price < 15 AND product_id < 10;

# Consultamos lo mismo que antes pero con el operador NOT:

SELECT *
FROM products
WHERE NOT unit_price > 15 AND NOT product_id > 10 ;

# Consultamos los paises que hacen pedidos: 

SELECT ship_country
FROM orders;
