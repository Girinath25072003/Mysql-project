create database Ecommerce;
use Ecommerce;
 CREATE TABLE Customers (
    Customer_id VARCHAR(100) PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Signup_date DATE

);

INSERT INTO Customers (Customer_id, Name, Email, Signup_date) VALUES
('CUST025', 'Alice Johnson', 'alice.johnson@example.com', '2023-01-25'),
('CUST013', 'Bob Smith', 'bob.smith@example.com', '2023-01-13'),
('CUST020', 'Charlie Brown', 'charlie.brown@example.com', '2023-01-20'),
('CUST010', 'Daisy Thomas', 'daisy.thomas@example.com', '2023-01-10'),
('CUST018', 'Eve Davis', 'eve.davis@example.com', '2023-01-18'),
('CUST005', 'Frank Harris', 'frank.harris@example.com', '2023-01-05'),
('CUST023', 'Grace Lewis', 'grace.lewis@example.com', '2023-01-23'),
('CUST001', 'Henry Walker', 'henry.walker@example.com', '2023-01-01'),
('CUST017', 'Ivy Hall', 'ivy.hall@example.com', '2023-01-17'),
('CUST006', 'Jack Young', 'jack.young@example.com', '2023-01-06'),
('CUST021', 'Karen White', 'karen.white@example.com', '2023-01-21'),
('CUST003', 'Liam King', 'liam.king@example.com', '2023-01-03'),
('CUST015', 'Mia Scott', 'mia.scott@example.com', '2023-01-15'),
('CUST012', 'Noah Turner', 'noah.turner@example.com', '2023-01-12'),
('CUST019', 'Olivia Moore', 'olivia.moore@example.com', '2023-01-19'),
('CUST008', 'Paul Taylor', 'paul.taylor@example.com', '2023-01-08'),
('CUST014', 'Quinn Adams', 'quinn.adams@example.com', '2023-01-14'),
('CUST004', 'Ruby Green', 'ruby.green@example.com', '2023-01-04'),
('CUST022', 'Steve Hall', 'steve.hall@example.com', '2023-01-22'),
('CUST007', 'Tina Lee', 'tina.lee@example.com', '2023-01-07'),
('CUST011', 'Uma Brown', 'uma.brown@example.com', '2023-01-11'),
('CUST009', 'Victor Carter', 'victor.carter@example.com', '2023-01-09'),
('CUST024', 'Wendy Wright', 'wendy.wright@example.com', '2023-01-24'),
('CUST016', 'Xander Price', 'xander.price@example.com', '2023-01-16'),
('CUST002', 'Yara Rivera', 'yara.rivera@example.com', '2023-01-02');

SELECT*FROM customers ;

---------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Orders (
    Order_id VARCHAR(100) PRIMARY KEY,
    Customer_id VARCHAR(100),
    Order_date DATE,
    Total_amount INT,
    Status VARCHAR(50),
    Payment_method VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (Order_id, Customer_id, Order_date, Total_amount, Status, Payment_method) 
VALUES
('ORD4821', 'CUST025', '2024-01-01', 250, 'Completed', 'Credit Card'),
('ORD7823', 'CUST013', '2024-01-02', 320, 'Pending', 'PayPal'),
('ORD2564', 'CUST020', '2024-01-03', 120, 'Cancelled', 'Debit Card'),
('ORD9632', 'CUST018', '2024-01-04', 540, 'Completed', 'Net Banking'),
('ORD1947', 'CUST005', '2024-01-05', 60, 'Pending', 'Cash'),
('ORD8573', 'CUST023', '2024-01-06', 470, 'Completed', 'Credit Card'),
('ORD6203', 'CUST001', '2024-01-07', 350, 'Completed', 'PayPal'),
('ORD4802', 'CUST017', '2024-01-08', 200, 'Pending', 'Debit Card'),
('ORD5290', 'CUST006', '2024-01-09', 450, 'Cancelled', 'Net Banking'),
('ORD3719', 'CUST021', '2024-01-10', 290, 'Completed', 'Cash'),
('ORD6142', 'CUST003', '2024-01-11', 370, 'Pending', 'Credit Card'),
('ORD7038', 'CUST015', '2024-01-12', 280, 'Completed', 'PayPal'),
('ORD8320', 'CUST012', '2024-01-13', 120, 'Pending', 'Debit Card'),
('ORD4216', 'CUST019', '2024-01-14', 610, 'Cancelled', 'Net Banking'),
('ORD3692', 'CUST008', '2024-01-15', 85, 'Completed', 'Cash'),
('ORD9876', 'CUST014', '2024-01-16', 670, 'Pending', 'Credit Card'),
('ORD5438', 'CUST004', '2024-01-17', 330, 'Completed', 'PayPal'),
('ORD6201', 'CUST022', '2024-01-18', 400, 'Completed', 'Debit Card'),
('ORD4852', 'CUST007', '2024-01-19', 550, 'Cancelled', 'Net Banking'),
('ORD2918', 'CUST011', '2024-01-20', 420, 'Completed', 'Cash'),
('ORD1403', 'CUST009', '2024-01-21', 160, 'Pending', 'Credit Card'),
('ORD7984', 'CUST024', '2024-01-22', 300, 'Completed', 'PayPal'),
('ORD3962', 'CUST016', '2024-01-23', 140, 'Cancelled', 'Debit Card'),
('ORD5120', 'CUST002', '2024-01-24', 470, 'Completed', 'Net Banking'),
('ORD1842', 'CUST010', '2024-01-25', 200, 'Completed', 'Cash');

SELECT*FROM Orders;

CREATE TABLE Products (
    Product_id VARCHAR(100) PRIMARY KEY,
    Name VARCHAR(100),
    Category VARCHAR(100),
    Price INT,
    Inventory_level VARCHAR(100)
);

INSERT INTO Products (Product_id,  Name , Category, Price, Inventory_level) 
VALUES
('PROD1023', 'Wireless Mouse', 'Electronics', 25, 'High'),
('PROD2094', 'Bluetooth Speaker', 'Electronics', 50, 'Medium'),
('PROD3098', 'Running Shoes', 'Footwear', 80, 'Low'),
('PROD4123', 'Yoga Mat', 'Fitness', 20, 'High'),
('PROD5234', 'Office Chair', 'Furniture', 150, 'Low'),
('PROD6128', 'Laptop Stand', 'Accessories', 30, 'Medium'),
('PROD7231', 'Desk Lamp', 'Home Decor', 40, 'High'),
('PROD8312', 'Water Bottle', 'Fitness', 15, 'High'),
('PROD9023', 'Wireless Keyboard', 'Electronics', 60, 'Medium'),
('PROD1094', 'Sunglasses', 'Fashion', 25, 'Low'),
('PROD2113', 'Backpack', 'Accessories', 70, 'Medium'),
('PROD3127', 'Smart Watch', 'Electronics', 200, 'High'),
('PROD4139', 'T-shirt', 'Clothing', 20, 'Low'),
('PROD5142', 'Jeans', 'Clothing', 40, 'Medium'),
('PROD6153', 'Hiking Boots', 'Footwear', 120, 'Low'),
('PROD7168', 'Blender', 'Appliances', 100, 'High'),
('PROD8172', 'Cookware Set', 'Home & Kitchen', 80, 'Medium'),
('PROD9184', 'Bookshelf', 'Furniture', 200, 'Low'),
('PROD1021', 'Gaming Headset', 'Electronics', 90, 'Medium'),
('PROD2034', 'Winter Jacket', 'Clothing', 150, 'Low'),
('PROD3045', 'Tent', 'Outdoors', 180, 'High'),
('PROD4056', 'Fitness Tracker', 'Fitness', 130, 'Medium'),
('PROD5067', 'Board Game', 'Toys', 35, 'High'),
('PROD6078', 'Action Camera', 'Electronics', 250, 'Low'),
('PROD7089', 'Running Socks', 'Footwear', 15, 'High');

SELECT*FROM products;

---------------------------------------------------------------------------------------------------------------------------------------

Create table Order_items(
Order_id varchar(100),
Product_id varchar(100),
Quantity int,
Price int,
FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);

INSERT INTO Order_items (Order_id, Product_id, Quantity, Price) 
VALUES
('ORD4821', 'PROD1023', 2, 50),
('ORD7823', 'PROD2094', 1, 50),
('ORD2564', 'PROD3098', 3, 240),
('ORD9632', 'PROD4123', 1, 20),
('ORD1947', 'PROD5234', 1, 150),
('ORD8573', 'PROD6128', 2, 60),
('ORD6203', 'PROD7231', 1, 40),
('ORD4802', 'PROD8312', 5, 75),
('ORD5290', 'PROD9023', 1, 60),
('ORD3719', 'PROD1094', 2, 50),
('ORD6142', 'PROD2113', 1, 70),
('ORD7038', 'PROD3127', 1, 200),
('ORD8320', 'PROD4139', 3, 60),
('ORD4216', 'PROD5142', 2, 80),
('ORD3692', 'PROD6153', 1, 120),
('ORD9876', 'PROD7168', 1, 100),
('ORD5438', 'PROD8172', 1, 80),
('ORD6201', 'PROD9184', 1, 200),
('ORD4852', 'PROD1021', 2, 180),
('ORD2918', 'PROD2034', 1, 150),
('ORD1403', 'PROD3045', 1, 180),
('ORD7984', 'PROD4056', 1, 130),
('ORD3962', 'PROD5067', 3, 105),
('ORD5120', 'PROD6078', 1, 250),
('ORD1842', 'PROD7089', 4, 60);

SELECT*FROM Order_items; 

---------------------------------------------------------------------------------------------------------------------------------------

Create table returns (
return_id varchar(100),
Order_id varchar(100),
Return_date date,
Refund_Amount int
);

INSERT INTO Returns (return_id, Order_id, Return_date, Refund_Amount) 
VALUES
('RET101', 'ORD2564', '2024-01-05', 240),
('RET102', 'ORD5290', '2024-01-12', 450),
('RET103', 'ORD1947', '2024-01-06', 150),
('RET104', 'ORD8320', '2024-01-15', 60),
('RET105', 'ORD4216', '2024-01-18', 80),
('RET106', 'ORD1403', '2024-01-25', 180),
('RET107', 'ORD3962', '2024-01-26', 105),
('RET108', 'ORD4852', '2024-01-21', 180),
('RET109', 'ORD7038', '2024-01-17', 200),
('RET110', 'ORD6142', '2024-01-19', 70),
('RET111', 'ORD9876', '2024-01-20', 100),
('RET112', 'ORD2918', '2024-01-22', 150),
('RET113', 'ORD5438', '2024-01-23', 80),
('RET114', 'ORD6203', '2024-01-24', 40),
('RET115', 'ORD8573', '2024-01-25', 60),
('RET116', 'ORD3719', '2024-01-14', 50),
('RET117', 'ORD4802', '2024-01-11', 75),
('RET118', 'ORD6201', '2024-01-13', 200),
('RET119', 'ORD6128', '2024-01-16', 60),
('RET120', 'ORD1021', '2024-01-07', 180),
('RET121', 'ORD7168', '2024-01-10', 100),
('RET122', 'ORD8172', '2024-01-08', 80),
('RET123', 'ORD3098', '2024-01-09', 120),
('RET124', 'ORD2034', '2024-01-05', 150),
('RET125', 'ORD5120', '2024-01-06', 250);

SELECT*FROM Returns;

SELECT 
    DATE(order_date) AS sales_date,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_revenue,
    AVG(total_amount) AS avg_order_value
FROM orders
WHERE status = 'completed'
GROUP BY DATE(order_date)
ORDER BY sales_date DESC;

SELECT 
    p.Name,
    SUM(oi.quantity) AS total_quantity_sold,
    SUM(oi.quantity * p.price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.Name
ORDER BY total_quantity_sold DESC;


SELECT 
    CASE 
        WHEN DATEDIFF(CURDATE(), MIN(order_date)) <= 30 THEN 'New'
        ELSE 'Returning'
    END AS customer_id,
    COUNT(DISTINCT customer_id) AS total_customers
FROM orders
GROUP BY customer_id;

DELIMITER $$

CREATE PROCEDURE GetCustomerOrders(IN customer_id INT)
BEGIN
    SELECT o.order_id, o.order_date, o.total_amount, o.status
    FROM Orders o
    WHERE o.user_id = customer_id;
END $$

DELIMITER ;

CREATE VIEW OrderDetails AS
SELECT o.order_id, o.order_date, o.total_amount, 
       c.name AS customer_name, c.email, 
       p.Name AS product_name, oi.quantity, oi.price
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

SELECT * FROM OrderDetails WHERE order_id = 'ORD9632';