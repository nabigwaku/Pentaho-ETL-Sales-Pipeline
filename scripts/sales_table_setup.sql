/*
Sales Table Set up:
*/
-- 1. Set the sales table 
Create table Sales (
 Order_Line int primary key,
 Order_ID varchar,
 Order_Date date,
 Ship_Date date,
 Ship_Mode varchar,
 Customer_ID varchar,
 Product_ID varchar,
 Sales numeric,
 Quantity int,
 Discount numeric,
 Profit numeric
 );

--2. Import data and populate sales table from csv file 
--Note: You can change the location as per your installation directory

COPY sales from 'C:\Program Files\PostgreSQL\12\data\dataset\SalesforSQL.csv' delimiter ',' csv header;

--3. Check to see that data exists
 SELECT * FROM sales;




