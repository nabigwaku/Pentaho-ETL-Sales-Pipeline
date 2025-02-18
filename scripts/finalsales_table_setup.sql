/*
Instructions: 
 1. run the create table command in query tool within your pgAdmin
 2. check if table exists
*/

-- setting default values to N/A so that PDI can fill them later
create table finalsales (
 order_line int primary key,
 order_id varchar default 'N/A' NOT NULL,
 order_date date default '1900-01-01' NOT NULL,
 ship_date date default '1900-01-01' NOT NULL,
 ship_mode varchar default 'N/A' NOT NULL,
 s_cust_id int default '0' NOT NULL,
 s_prod_id int default '0' NOT NULL,
 sales numeric default '0' NOT NULL,
 quantity int default '0' NOT NULL,
 discount numeric default '0' NOT NULL,
 profit numeric default '0' NOT NULL
 );

 -- checking if table exists
 select * from finalsales;