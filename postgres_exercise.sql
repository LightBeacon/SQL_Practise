/* SQL Exercise
====================================================================
We will be working with database northwind.db we have set up and connected to in the activity Connect to Remote PostgreSQL Database earlier.


-- MAKE YOURSELF FAIMLIAR WITH THE DATABASE AND TABLES HERE
*/SELECT * FROM orders LIMIT 10

SELECT ProductName, QuantityPerUnit From Products



--==================================================================
/* TASK I
-- Q1. Write a query to get Product name and quantity/unit.
*/SELECT ProductName, QuantityPerUnit From Products


/* TASK II
Q2. Write a query to get most expense and least expensive Product list (name and unit price)
*/SELECT ProductName, MAX(UnitPrice), MIN(UnitPrice) From Products


/* TASK III
Q3. Write a query to count current and discontinued products.
*/SELECT ProductName, UnitsInStock, Discontinued From Products


/* TASK IV
Q4. Select all product names and their category names (77 rows)
*/SELECT ProductName, CategoryName From Products, Categories


/* TASK V
Q5. Select all product names, unit price and the supplier region that don't have suppliers from USA region. (26 rows)
*/SELECT Product.ProductName, Product.UnitPrice, Suppliers.Region From Products
    JOIN Suppliers
    ON Products.id = Suppliers.Product.id
    WHERE Region NOT IN ("USA")


/* TASK VI
Q6. Get the total quantity of orders sold.( 51317)
*/SELECT Product.ProductName, Product
SELECT Quantity From OrderDetails


/* TASK VII
Q7. Get the total quantity of orders sold for each order.(830 rows)
*/SELECT Product.ProductName, Product


/* TASK VIII
Q8. Get the number of employees who have been working more than 5 year in the company. (9 rows)
*/SELECT HireDate, EmployeeID AS number_of_employee FROM Employees
    WHERE HireDate > 5 year
