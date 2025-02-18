/*
Instructions: 
 1. run the create table command in query tool within your pgAdmin
 2. check if table exists
*/

-- setting default values to N/A so that PDI can fill them later
create table customer (
 surr_id int primary key,
 customer_id varchar default 'N/A' NOT NULL,
 customer_name varchar default 'N/A' NOT NULL,
 segment varchar default 'N/A' NOT NULL,
 age int default '0' NOT NULL,
 city varchar default 'N/A' NOT NULL,
 state_name varchar default 'N/A' NOT NULL,
 country varchar default 'N/A' NOT NULL,
 postal_code varchar default 'N/A' NOT NULL,
 region varchar default 'N/A' NOT NULL
 );

 -- checking if table exists
 select * from customer;