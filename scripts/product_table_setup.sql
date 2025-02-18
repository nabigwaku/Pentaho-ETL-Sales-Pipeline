/*
Instructions: 
 1. run the create table command in query tool within your pgAdmin
 2. check if table exists
*/

-- setting default values to N/A so that PDI can fill them later
create table product (
 surr_id int primary key,
 product_id varchar default 'N/A' NOT NULL,
 category varchar default 'N/A' NOT NULL,
 sub_category varchar default 'N/A' NOT NULL,
 product_name varchar default 'N/A' NOT NULL,
 start_date date,
 end_date date,
 version int default 1 NOT NULL,
 current varchar default 'Y' NOT NULL,
 lastupdate date
 );

-- checking if table exists
 select * from product: