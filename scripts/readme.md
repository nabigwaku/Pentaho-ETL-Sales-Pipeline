### You shall need to run the scripts in the sequence below: 

1. Run the sales table sql first to create the table.
	- fill the table with data from csv as instructed
	- the data shall then be extracted through a table input step within the productdata transformation

2. Followed by:
	- customer table: > Data shall be loaded into this table from the customerData Transformation 
	- product table: > Data shall be loaded into this table from the productData Transformation 

	Then later their surroget keys shall be needed to be added to the finalsales table

3. Finally create the finalsales table, then load the data or run the salesData transformation after 