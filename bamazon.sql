CREATE DATABASE bamazon_db;
 
USE bamazon_db;

DROP TABLE IF EXISTS products;
 
CREATE TABLE products (
item_id INTEGER  NOT NULL AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL,
department_name VARCHAR(50) NOT NULL,
price DECIMAL (9,2) UNSIGNED NOT NULL ,
stock_quantity INTEGER(10),
 primary key(item_id)
 );
 

SELECT * FROM products;

SELECT * FROM products;
ALTER TABLE products
ADD COLUMN  item_no INTEGER  NOT NULL AUTO_INCREMENT;

ALTER TABLE products
ADD COLUMN   product_sales DECIMAL (9,2) UNSIGNED NOT NULL DEFAULT 0 AFTER stock_quantity;

 
CREATE TABLE departments (
department_id INTEGER  NOT NULL AUTO_INCREMENT,
department_name VARCHAR(50) NOT NULL,
over_head_costs DECIMAL (9,2) UNSIGNED NOT NULL ,
primary key(department_id)
);
 
 SELECT * FROM departments;
 INSERT INTO departments(department_name, over_head_costs)
 VALUES ("Jewelry", 5000.00),
 ("Furniture", 6000.00),
 ("China", 4000.00),OT NULL AUTO_INCREMENT;

ALTER TABLE products
ADD COLUMN   product_sales VARCHAR(15) AFTER stock_quantity;
 
 
CREATE TABLE departments (
department_id INTEGER  NOT NULL AUTO_INCREMENT,
department_name VARCHAR(50) NOT NULL,
over_head_costs DECIMAL (9,2) UNSIGNED NOT NULL ,
primary key(department_id)
);
 
 SELECT * FROM departments;
 INSERT INTO departments(department_name, over_head_costs)
 VALUES ("Electronics", 5000.00),
 ("Video Games", 6000.00),
 ("Foods", 4000.00);
 
 SELECT * FROM products;
 INSERT INTO products (product_name, department_name, price, stock_quantity)
 VALUES ("Xbox One","Electronics",299.00, 10),
("Nintendo Switch", "Electronics",  299.99, 10),
("Super Smash Bros Ultimate", "Video Games", 79.99, 9),
("Call  of Duty", "Video Games", 69.99, 3),
("Elder Scrolls: Skyrim", "Video Games", 39.99, 2),
("PlayStation 4", "Electronics",  39.99, 22),
("Nintendo 3DS", "Electronics", 199.99, 15),
("Gears of Wars 4", "Video Games", 79.99, 40),
("Tales of Symphonia - ReMastered", "Video Games", 129.99, 25),
("Banjo Tooie - ReMastered", "Video Games", 32.00, 50);
("Just Cause 4", "Video Games", 39.99, 100);


SELECT department_name, SUM(product_sales) AS department_sales
FROM products 
GROUP BY department_name;

SELECT  SUM(products.product_sales) - departments.over_head_costs as total_profit
FROM	departments  INNER JOIN products ON  products.department_name  = departments.department_name  
GROUP BY department_id;

SELECT departments.department_id, departments.department_name, departments.over_head_costs, SUM(products.product_sales) as department_sales, SUM(products.product_sales) - departments.over_head_costs as total_profit	
FROM	departments  INNER JOIN products ON  products.department_name  = departments.department_name  
GROUP BY department_id;